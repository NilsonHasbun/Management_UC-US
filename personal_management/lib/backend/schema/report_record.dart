import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportRecord extends FirestoreRecord {
  ReportRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "horaInicio" field.
  DateTime? _horaInicio;
  DateTime? get horaInicio => _horaInicio;
  bool hasHoraInicio() => _horaInicio != null;

  // "duracion" field.
  int? _duracion;
  int get duracion => _duracion ?? 0;
  bool hasDuracion() => _duracion != null;

  // "calificacion" field.
  double? _calificacion;
  double get calificacion => _calificacion ?? 0.0;
  bool hasCalificacion() => _calificacion != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "cliente" field.
  String? _cliente;
  String get cliente => _cliente ?? '';
  bool hasCliente() => _cliente != null;

  void _initializeFields() {
    _horaInicio = snapshotData['horaInicio'] as DateTime?;
    _duracion = castToType<int>(snapshotData['duracion']);
    _calificacion = castToType<double>(snapshotData['calificacion']);
    _descripcion = snapshotData['descripcion'] as String?;
    _cliente = snapshotData['cliente'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('report');

  static Stream<ReportRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReportRecord.fromSnapshot(s));

  static Future<ReportRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReportRecord.fromSnapshot(s));

  static ReportRecord fromSnapshot(DocumentSnapshot snapshot) => ReportRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReportRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReportRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReportRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReportRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReportRecordData({
  DateTime? horaInicio,
  int? duracion,
  double? calificacion,
  String? descripcion,
  String? cliente,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'horaInicio': horaInicio,
      'duracion': duracion,
      'calificacion': calificacion,
      'descripcion': descripcion,
      'cliente': cliente,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReportRecordDocumentEquality implements Equality<ReportRecord> {
  const ReportRecordDocumentEquality();

  @override
  bool equals(ReportRecord? e1, ReportRecord? e2) {
    return e1?.horaInicio == e2?.horaInicio &&
        e1?.duracion == e2?.duracion &&
        e1?.calificacion == e2?.calificacion &&
        e1?.descripcion == e2?.descripcion &&
        e1?.cliente == e2?.cliente;
  }

  @override
  int hash(ReportRecord? e) => const ListEquality().hash([
        e?.horaInicio,
        e?.duracion,
        e?.calificacion,
        e?.descripcion,
        e?.cliente
      ]);

  @override
  bool isValidKey(Object? o) => o is ReportRecord;
}
