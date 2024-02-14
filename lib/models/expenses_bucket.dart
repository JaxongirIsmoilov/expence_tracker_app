
import 'expenses_model.dart';

class ExpensesBucket{
  final Category category;
  final List<ExpensesModel> expenses;

  ExpensesBucket({required this.category, required this.expenses});

  ExpensesBucket.forCategory(List<ExpensesModel> allExpenses, this.category) : expenses = allExpenses.where((element) => element.category == category).toList();
  double get totalExpenses{
    double sum = 0;
    for(final expense in expenses){
      sum += expense.amount;
    }
    return sum;
  }
}