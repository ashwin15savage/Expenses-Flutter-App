// import 'package:flutter/material.dart';
// import './new_transaction.dart';
// import './transaction_list.dart';
// import '../models/transaction.dart';

// class UserTransactions extends StatefulWidget {
//   @override
//   _UserTransactionsState createState() => _UserTransactionsState();
// }

// class _UserTransactionsState extends State<UserTransactions> {
//   // final List<Transaction> _userTransaction = [
//   //   Transaction(
//   //     id: 'T1',
//   //     title: 'New Shoes',
//   //     amount: 1500,
//   //     date: DateTime.now(),
//   //   ),
//   //   Transaction(
//   //     id: 'T2',
//   //     title: 'Speaker',
//   //     amount: 2500,
//   //     date: DateTime.now(),
//   //   ),
//   // ];

//   // void _addNewTransaction(String txtitle, double txamount) {
//   //   //we get these values as input to this method
//   //   final newTx = Transaction(
//   //     title: txtitle,
//   //     amount: txamount,
//   //     date: DateTime.now(),
//   //     id: DateTime.now().toString(),
//   //   );
//   //   // we need to addtx(new transaction) to userTransaction list
//   //   setState(() {
//   //     _userTransaction.add(newTx);//since userTransaction is a final variable we cannot assign a new transaction so we  just manipulate the list with add
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         NewTransaction(_addNewTransaction),
//         //TransactionList(_userTransaction) //here we have to pass the list of transactions so we use _userTransaction
//       ],
//     );
//   }
// }
