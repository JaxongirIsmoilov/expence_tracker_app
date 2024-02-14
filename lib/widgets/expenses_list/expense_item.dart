import 'package:expence_tracker_app/models/expenses_model.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  final ExpensesModel expensesModel;

  const ExpenseItem(
    this.expensesModel, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(expensesModel.title, style: Theme.of(context).textTheme.titleLarge,),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text('\$${expensesModel.amount.toStringAsFixed(2)}'),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expensesModel.category]),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      expensesModel.formattedDate,
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
