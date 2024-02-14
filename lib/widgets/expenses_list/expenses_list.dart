import 'package:expence_tracker_app/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

import '../../models/expenses_model.dart';

class ExpensesList extends StatelessWidget {
  final List<ExpensesModel> expenses;
  final void Function(ExpensesModel expensesModel) onExpenceRemoved;

  const ExpensesList(
      {super.key, required this.expenses, required this.onExpenceRemoved});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        onDismissed: (direction) {
          onExpenceRemoved(expenses[index]);
        },
        key: ValueKey(expenses[index]),
        background: Container(
          // color: Theme.of(context).colorScheme.error.withOpacity(0.75),
          margin: EdgeInsets.symmetric(
              horizontal: Theme.of(context).cardTheme.margin!.horizontal),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.error.withOpacity(0.75),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: ExpenseItem(expenses[index]),
      ),
    );
  }
}
