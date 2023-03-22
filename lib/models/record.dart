import 'package:freezed_annotation/freezed_annotation.dart';
part 'record.freezed.dart';
part 'record.g.dart';

@freezed
class Record with _$Record {


 factory Record({required int weight, required DateTime dateTime, String? note, String? photo}) = _Record ;
factory Record.fromJson(Map<String, dynamic> json) => _$RecordFromJson(json);
}