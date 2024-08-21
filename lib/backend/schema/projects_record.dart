import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/utilities/util.dart';

class ProjectsRecord extends FirestoreRecord {
  ProjectsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "image1" field.
  String? _image1;
  String get image1 => _image1 ?? '';
  bool hasImage1() => _image1 != null;

  // "image2" field.
  String? _image2;
  String get image2 => _image2 ?? '';
  bool hasImage2() => _image2 != null;

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

  // "figma" field.
  String? _figma;
  String get figma => _figma ?? '';
  bool hasFigma() => _figma != null;

  // "youtube" field.
  String? _youtube;
  String get youtube => _youtube ?? '';
  bool hasYoutube() => _youtube != null;

  // "ranking" field.
  int? _ranking;
  int get ranking => _ranking ?? 0;
  bool hasRanking() => _ranking != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "playstore" field.
  String? _playstore;
  String get playstore => _playstore ?? '';
  bool hasPlaystore() => _playstore != null;

  // "appstore" field.
  String? _appstore;
  String get appstore => _appstore ?? '';
  bool hasAppstore() => _appstore != null;

  void _initializeFields() {
    _image1 = snapshotData['image1'] as String?;
    _image2 = snapshotData['image2'] as String?;
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _tags = getDataList(snapshotData['tags']);
    _github = snapshotData['github'] as String?;
    _figma = snapshotData['figma'] as String?;
    _youtube = snapshotData['youtube'] as String?;
    _ranking = castToType<int>(snapshotData['ranking']);
    _type = snapshotData['type'] as String?;
    _website = snapshotData['website'] as String?;
    _playstore = snapshotData['playstore'] as String?;
    _appstore = snapshotData['appstore'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('projects');

  static Stream<ProjectsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProjectsRecord.fromSnapshot(s));

  static Future<ProjectsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProjectsRecord.fromSnapshot(s));

  static ProjectsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProjectsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProjectsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProjectsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProjectsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProjectsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProjectsRecordData({
  String? image1,
  String? image2,
  String? name,
  String? description,
  String? github,
  String? figma,
  String? youtube,
  int? ranking,
  String? type,
  String? website,
  String? playstore,
  String? appstore,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image1': image1,
      'image2': image2,
      'name': name,
      'description': description,
      'github': github,
      'figma': figma,
      'youtube': youtube,
      'ranking': ranking,
      'type': type,
      'website': website,
      'playstore': playstore,
      'appstore': appstore,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProjectsRecordDocumentEquality implements Equality<ProjectsRecord> {
  const ProjectsRecordDocumentEquality();

  @override
  bool equals(ProjectsRecord? e1, ProjectsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.image1 == e2?.image1 &&
        e1?.image2 == e2?.image2 &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        listEquality.equals(e1?.tags, e2?.tags) &&
        e1?.github == e2?.github &&
        e1?.figma == e2?.figma &&
        e1?.youtube == e2?.youtube &&
        e1?.ranking == e2?.ranking &&
        e1?.type == e2?.type &&
        e1?.website == e2?.website &&
        e1?.playstore == e2?.playstore &&
        e1?.appstore == e2?.appstore;
  }

  @override
  int hash(ProjectsRecord? e) => const ListEquality().hash([
        e?.image1,
        e?.image2,
        e?.name,
        e?.description,
        e?.tags,
        e?.github,
        e?.figma,
        e?.youtube,
        e?.ranking,
        e?.type,
        e?.website,
        e?.playstore,
        e?.appstore
      ]);

  @override
  bool isValidKey(Object? o) => o is ProjectsRecord;
}
