class PatientData {
  //required coloumns in the database
  final int patient_id;
  final int age;
  final double? spO2;
  final double? heart_rate;
  final double? temp;
  final DateTime recorded_Time;

  const PatientData({
    required this.patient_id,
    required this.age,
    this.spO2,
    this.heart_rate,
    this.temp,
    required this.recorded_Time,
  });
  Map<String, Object?> toJson() => {
        PatientDatafields.patient_id: patient_id,
        PatientDatafields.age: age,
        PatientDatafields.spO2: spO2,
        PatientDatafields.heart_rate: heart_rate,
        PatientDatafields.temp: temp,
        PatientDatafields.recorded_Time: recorded_Time.toIso8601String(),
      };

  PatientData copy({
    int? patient_id,
    int? age,
    double? spO2,
    double? heart_rate,
    double? temp,
    DateTime? recorded_Time,
  }) =>
      PatientData(
        patient_id: patient_id ?? this.patient_id,
        age: age ?? this.age,
        spO2: spO2 ?? this.spO2,
        heart_rate: heart_rate ?? this.heart_rate,
        temp: temp ?? this.temp,
        recorded_Time: recorded_Time ?? this.recorded_Time,
      );
  static PatientData fromJson(Map<String, Object?> json) => PatientData(
        patient_id: json[PatientDatafields.patient_id] as int,
        age: json[PatientDatafields.age] as int,
        spO2: json[PatientDatafields.spO2] as double?,
        heart_rate: json[PatientDatafields.heart_rate] as double?,
        temp: json[PatientDatafields.temp] as double?,
        recorded_Time:
            DateTime.parse(json[PatientDatafields.recorded_Time] as String),
      );
}

final String table_data = 'patdata'; // fields in the db

class PatientDatafields {
  static final List<String> values = [
    patient_id,
    age,
    spO2,
    heart_rate,
    temp,
    recorded_Time
  ];

  static final String patient_id = '_id';
  static final String age = 'age';
  static final String spO2 = 'spO2';
  static final String heart_rate = 'heart_rate';
  static final String temp = 'temp';
  static final String recorded_Time = 'recorded_Time';
}
