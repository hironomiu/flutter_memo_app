import 'package:flutter/material.dart';

class MemoRegister extends StatefulWidget {
  const MemoRegister({Key? key}) : super(key: key);

  @override
  _MemoRegisterState createState() => _MemoRegisterState();
}

class _MemoRegisterState extends State<MemoRegister> {
  final _title = TextEditingController();
  final _detail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("メモ登録"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("タイトル"),
            TextField(
              controller: _title,
            ),
            Text("詳細"),
            TextField(
              controller: _detail,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pop({"title": _title.text, "detail": _detail.text});
                },
                child: Text("登録"))
          ],
        ),
      ),
    );
  }
}
