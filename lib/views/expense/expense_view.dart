import 'package:flutter/material.dart';

class ExpenseView extends StatelessWidget {
  const ExpenseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: buildBody(),
    );
  }

  PreferredSizeWidget buildAppbar() {
    return AppBar(
      title: Text('Expense'),
      centerTitle: true,
    );
  }

  Widget buildBody() {
    return Column();
  }
}