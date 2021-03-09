import 'package:omelet/app/config/export/model.dart';
import 'package:omelet/app/repository/record_repository.dart';
import 'package:omelet/common/sembast/sembast_repository_base.dart';

class RecordRepositorySembast extends SembastRepositoryBase<Record>
    implements RecordRepository {
  RecordRepositorySembast() : super('record', (e) => Record.fromMap(e));
}
