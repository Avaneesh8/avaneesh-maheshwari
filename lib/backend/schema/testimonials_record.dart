import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/utilities/util.dart';

class TestimonialsRecord extends FirestoreRecord {
  TestimonialsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "company_name" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  bool hasPosition() => _position != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _companyName = snapshotData['company_name'] as String?;
    _image = snapshotData['image'] as String?;
    _description = snapshotData['description'] as String?;
    _position = snapshotData['position'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('testimonials');

  static Stream<TestimonialsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TestimonialsRecord.fromSnapshot(s));

  static Future<TestimonialsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TestimonialsRecord.fromSnapshot(s));

  static TestimonialsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TestimonialsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TestimonialsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TestimonialsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TestimonialsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TestimonialsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTestimonialsRecordData({
  String? name,
  String? companyName,
  String? image,
  String? description,
  String? position,
  double? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'company_name': companyName,
      'image': image,
      'description': description,
      'position': position,
      'rating': rating,
    }.withoutNulls,
  );

  return firestoreData;
}

class TestimonialsRecordDocumentEquality
    implements Equality<TestimonialsRecord> {
  const TestimonialsRecordDocumentEquality();

  @override
  bool equals(TestimonialsRecord? e1, TestimonialsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.companyName == e2?.companyName &&
        e1?.image == e2?.image &&
        e1?.description == e2?.description &&
        e1?.position == e2?.position &&
        e1?.rating == e2?.rating;
  }

  @override
  int hash(TestimonialsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.companyName,
        e?.image,
        e?.description,
        e?.position,
        e?.rating
      ]);

  @override
  bool isValidKey(Object? o) => o is TestimonialsRecord;
}
