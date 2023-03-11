import 'package:flutter/material.dart';

class SelfDefencePage extends StatefulWidget {
  const SelfDefencePage({super.key});

  @override
  State<SelfDefencePage> createState() => _SelfDefencePageState();
}

class _SelfDefencePageState extends State<SelfDefencePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Self Defence"),),
    );
  }
}