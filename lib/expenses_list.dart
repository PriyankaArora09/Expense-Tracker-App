import 'package:expense_tracker/expense_item.dart';
import 'package:flutter/cupertino.dart';

import 'model/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({Key? key, required this.expenses, required this.onRemoveExpense}) : super(key: key);
  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (ctx, index) => Dismissible(
          onDismissed: (direction){
            onRemoveExpense(expenses[index]);
          },
            key: ValueKey(expenses[index]),
            child: ExpenseItem(expenses[index]),
        ),
    );
  }
}
