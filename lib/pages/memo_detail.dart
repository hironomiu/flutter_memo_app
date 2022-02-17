import 'package:flutter/material.dart';
import 'package:flutter_memo_app/models/memo.dart';

class MemoDetail extends StatefulWidget {
  const MemoDetail({Key? key, required this.memo}) : super(key: key);
  final Memo memo;

  @override
  _MemoDetailState createState() => _MemoDetailState();
}

class _MemoDetailState extends State<MemoDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.memo.title),
      ),
      body: Text(widget.memo.detail),
    );
  }
}
