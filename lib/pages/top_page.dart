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
      ),
      body: ListView.builder(
          itemCount: memoList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MemoDetail()));
              },
              child: SizedBox(
                height: 20,
                child: Text(memoList[index].title),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var ret = await Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MemoRegister()));
          setState(() {
            memoList
                .add(Memo(id: 2, title: ret["title"], detail: ret["detail"]));
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
