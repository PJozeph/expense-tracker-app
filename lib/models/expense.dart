import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final uuid = const Uuid();
final formatter = DateFormat.yMd();

enum ExpenseCategory { food, travel, leisure, work }

const categoryIcons = {
  ExpenseCategory.food: Icons.fastfood,
  ExpenseCategory.travel: Icons.flight,
  ExpenseCategory.leisure: Icons.movie,
  ExpenseCategory.work: Icons.work,
};

class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final ExpenseCategory category;

  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();


  String get formatedDate {
    return formatter.format(date);
  }
}
