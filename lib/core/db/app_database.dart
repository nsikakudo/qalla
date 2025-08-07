import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'app_database.g.dart';

class Events extends Table {
  TextColumn get id => text()();
  TextColumn get title => text()();
  TextColumn get imageUrl => text()();
  TextColumn get image128Url => text()();
  TextColumn get type => text()();
  IntColumn get trades => integer()();
  RealColumn get totalVolume => real().withDefault(const Constant(0.0))();
  DateTimeColumn get endsAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class Markets extends Table {
  TextColumn get id => text()();
  TextColumn get eventId => text().references(Events, #id)();
  TextColumn get title => text()();
  TextColumn get imageUrl => text()();
  RealColumn get yesBuyPrice => real()();
  RealColumn get noBuyPrice => real()();
  RealColumn get yesProfitForEstimate => real().withDefault(const Constant(0.0))();
  RealColumn get noProfitForEstimate => real().withDefault(const Constant(0.0))();
  RealColumn get yesPriceForEstimate => real().withDefault(const Constant(0.0))();
  RealColumn get noPriceForEstimate => real().withDefault(const Constant(0.0))();


  @override
  Set<Column> get primaryKey => {id};
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}


@DriftDatabase(tables: [Events, Markets])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}
