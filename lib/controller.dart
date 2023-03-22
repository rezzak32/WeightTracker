import 'package:get/get.dart';
import 'package:weight_changer/models/record.dart';

class Controller extends GetxController {
  var records = <Record>[
    
  ].obs;

  void addRecord() {
    records.add(Record(weight: 80, dateTime: DateTime.now(), note: 'XXXX'));
  }

  void deleteRecord(Record record) {
    records.remove(record);
     

  }
}
