import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/utilities/util.dart';

class BlogsRecord extends FirestoreRecord {
  BlogsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "tags" field.
  List<String>? _tags;
  List<String> get tags => _tags ?? const [];
  bool hasTags() => _tags != null;

  // "github" field.
  String? _github;
  String get github => _github ?? '';
  bool hasGithub() => _github != null;

  // "youtube" field.
  String? _youtube;
  String get youtube => _youtube ?? '';
  bool hasYoutube() => _youtube != null;

  // "figma" field.
  String? _figma;
  String get figma => _figma ?? '';
  bool hasFigma() => _figma != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "ranking" field.
  int? _ranking;
  int get ranking => _ranking ?? 0;
  bool hasRanking() => _ranking != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _tags = getDataList(snapshotData['tags']);
    _github = snapshotData['github'] as String?;
    _youtube = snapshotData['youtube'] as String?;
    _figma = snapshotData['figma'] as String?;
    _type = snapshotData['type'] as String?;
    _ranking = castToType<int>(snapshotData['ranking']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('blogs');

  static Stream<BlogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BlogsRecord.fromSnapshot(s));

  static Future<BlogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BlogsRecord.fromSnapshot(s));

  static BlogsRecord fromSnapshot(DocumentSnapshot snapshot) => BlogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BlogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BlogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BlogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BlogsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBlogsRecordData({
  String? image,
  String? name,
  String? description,
  String? github,
  String? youtube,
  String? figma,
  String? type,
  int? ranking,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'name': name,
      'description': description,
      'github': github,
      'youtube': youtube,
      'figma': figma,
      'type': type,
      'ranking': ranking,
    }.withoutNulls,
  );

  return firestoreData;
}

class BlogsRecordDocumentEquality implements Equality<BlogsRecord> {
  const BlogsRecordDocumentEquality();

  @override
  bool equals(BlogsRecord? e1, BlogsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.image == e2?.image &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        listEquality.equals(e1?.tags, e2?.tags) &&
        e1?.github == e2?.github &&
        e1?.youtube == e2?.youtube &&
        e1?.figma == e2?.figma &&
        e1?.type == e2?.type &&
        e1?.ranking == e2?.ranking;
  }

  @override
  int hash(BlogsRecord? e) => const ListEquality().hash([
        e?.image,
        e?.name,
        e?.description,
        e?.tags,
        e?.github,
        e?.youtube,
        e?.figma,
        e?.type,
        e?.ranking
      ]);

  @override
  bool isValidKey(Object? o) => o is BlogsRecord;
}
