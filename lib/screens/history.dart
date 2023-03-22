import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weight_changer/controller.dart';
import 'package:weight_changer/widgets/record_list.dart';

import '../models/record.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final Controller _controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    List<Record> records = _controller.records;
    return Obx((() => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('History Screen'),
          actions: [
            IconButton(onPressed: _controller.addRecord, icon: Icon(Icons.add))
          ],
        ),
        body: records.isEmpty
            ? Center(
                child: Container(
                  child: Text('Lütfen kayıt ekleyin'),
                ),
              )
            : ListView(
                physics: BouncingScrollPhysics(),
                children: records
                    .map((record) => RecordList(record: record))
                    .toList()))));
  }
}
