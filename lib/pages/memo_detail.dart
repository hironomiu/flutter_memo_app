import 'package:flutter/material.dart';

class MemoDetail extends StatefulWidget {
  const MemoDetail({Key? key}) : super(key: key);

  @override
  _MemoDetailState createState() => _MemoDetailState();
}

class _MemoDetailState extends State<MemoDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("メモ詳細"),
      ),
    );
  }
}
