import 'package:flutter/material.dart';

class ImportancePage extends StatefulWidget {
  const ImportancePage({super.key});

  @override
  State<ImportancePage> createState() => _ImportancePageState();
}

class _ImportancePageState extends State<ImportancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Importance"),),
    );
  }
}