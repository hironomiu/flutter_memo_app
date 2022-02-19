import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_memo_app/models/memo.dart';
import 'package:flutter_memo_app/pages/memo_detail.dart';
import 'memo_register.dart';
import 'memo_detail.dart';

class TopPage extends StatefulWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  _TopPageState createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  List<Memo> memoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("メモ帳"),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: memoList.length,
            itemBuilder: (context, index) {
              return Column(
                // 左寄せ
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MemoDetail(memo: memoList[index])));
                    },
                    child: SizedBox(
                      // 幅一杯でどこでもClickされても認識
                      width: double.infinity,
                      height: 40,
                      child: Text(
                        memoList[index].title,
                        style: const TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                  )
                ],
              );
            }),
      ),
      floatingActionButton: Theme(
        data: ThemeData(
            colorScheme: ColorScheme.fromSwatch(accentColor: Colors.green)),
        child: FloatingActionButton(
          onPressed: () async {
            var ret = await Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MemoRegister()));
            setState(() {
              var id = memoList.isEmpty
                  ? 1
                  : memoList.map((e) => e.id).reduce(max) + 1;

              debugPrint(id.toString());
              debugPrint("ret: -- $ret");
              if (ret != null) {
                memoList.add(
                    Memo(id: id, title: ret["title"], detail: ret["detail"]));
              }
            });
          },
          child: const Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}
