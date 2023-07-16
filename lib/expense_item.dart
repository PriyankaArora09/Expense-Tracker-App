import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {Key? key}) : super(key: key);

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Text(expense.title, style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.5,

            ),),
            SizedBox(height: 7,),
            Row(
              children: [
                Text('\Rs. ${expense.amount.toStringAsFixed(2)}', style: TextStyle(
                    fontSize: 15,
                    //color: Colors.lightBlue.shade900
                ),),
                Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expense.category], size: 20,),
                    SizedBox(width: 8,),
                    Text(expense.formattedDate,style: TextStyle(
                        fontSize: 15,
                        //color: Colors.lightBlue.shade900
                    ),),
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
