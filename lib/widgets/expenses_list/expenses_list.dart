import 'package:flutter/material.dart';
import 'package:expenses/models/expense.dart';
import 'package:expenses/widgets/expenses_list/expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.onLeftSwap});

  final List<Expense> expenses;
  final void Function(Expense expense) onLeftSwap;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
          key: ValueKey(expenses[index]),
          onDismissed: (direction) {
            onLeftSwap(expenses[index]);
          },
          child: ExpenseItem(expenses[index])),
    );
  }
}
