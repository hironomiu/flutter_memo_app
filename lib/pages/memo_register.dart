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
            const Text(
              "タイトル",
              style: TextStyle(fontSize: 30),
            ),
            TextField(
              controller: _title,
            ),
            const Text(
              "詳細",
              style: TextStyle(fontSize: 30),
            ),
            TextField(
              controller: _detail,
              maxLines: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  _title.text.length > 0 && _detail.text.length > 0
                      ? Navigator.of(context)
                          .pop({"title": _title.text, "detail": _detail.text})
                      : null;
                },
                child: const Text("登録"))
          ],
        ),
      ),
    );
  }
}
