import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:hospicare_app/model/db_model.dart';

class HospiDb {
  static final HospiDb instance = HospiDb._init();
  static Database? _database;
  HospiDb._init();

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initDB('hospi.db');
    return _database!;
  }

  Future<Database> _initDB(String filepath) async {
    final dbpath = await getDatabasesPath();
    final path = join(dbpath, filepath);

    return await openDatabase(path, version: 1, onCreate: _createdb);
  }

  Future _createdb(Database db, int version) async {
    final IdType = 'PRIMARY KEY';
    final IntType = 'INTEGER NOT NULL';
    final RealType = 'REAL';
    final TimeType = 'TEXT NOT NULL';

    await db.execute('''
CREATE TABLE $table_data(
  ${PatientDatafields.patient_id} $IdType,
  ${PatientDatafields.age} $IntType,
  ${PatientDatafields.spO2} $RealType,
  ${PatientDatafields.heart_rate} $RealType,
  ${PatientDatafields.temp} $RealType,
  ${PatientDatafields.recorded_Time} $TimeType
)
    ''');
  }

  Future<PatientData> create(PatientData data) async {
    final db = await instance.database;
    final id = await db.insert(table_data, data.toJson());
    return data.copy(patient_id: id);
  }

  Future<PatientData> readData(int id) async {
    final db = await instance.database;
    final maps = await db.query(table_data,
        columns: PatientDatafields.values,
        where: '${PatientDatafields.patient_id} = ?',
        whereArgs: [id]);
    if (maps.isNotEmpty) {
      return PatientData.fromJson(maps.first);
    } else {
      throw Exception('ID $id not found');
    }
  }

  Future<List<PatientData>> readAllData() async {
    final db = await instance.database;
    final orderBy = '${PatientDatafields.recorded_Time} ASC';
    final result = await db.query(table_data, orderBy: orderBy);

    return result.map((json) => PatientData.fromJson(json)).toList();
  }

  Future<int> delete(int id) async {
    final db = await instance.database;

    return await db.delete(
      table_data,
      where: '${PatientDatafields.patient_id} = ?',
      whereArgs: [id],
    );
  }

  Future closedb() async {
    final db = await instance.database;
    db.close();
  }
}
