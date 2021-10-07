import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  //incoming transactions are saved here
  final Function deleteTx;
  TransactionList(this.transactions,this.deleteTx);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 450,
        child: transactions.isEmpty
            ? Column(
                children: <Widget>[
                  Text(
                    'No transactions added yet !',
                    style: Theme.of(context).textTheme.title,
                  ),
                  SizedBox(
                    height:
                        20, //this creates a space between text and the container
                  ),
                  Container(
                      height: 200,
                      child: Image.asset('assets/images/waiting.png',
                          fit: BoxFit.cover)),
                ],
              )
            : ListView.builder(
                //this widget replaces column and singlechildScrollVIew
                //for long lists it is best to use listview.builder
                itemBuilder: (ctx, index) {
                  return Card(
                    elevation: 6,
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 35,
                        child: Padding(
                          padding: EdgeInsets.all(6),
                          child: FittedBox(
                            child: Text(
                              '\₹${transactions[index].amount}',
                            ),
                          ),
                        ),
                      ),
                      title: Text(
                        transactions[index].title,
                        style: Theme.of(context).textTheme.title,
                      ),
                      subtitle: Text(
                          DateFormat.yMMMd().format(transactions[index].date)),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        color: Theme.of(context).errorColor,
                        onPressed: ()=>deleteTx(transactions[index].id),
                      ),
                    ),
                  );
                  //   return  Card(
                  //   child: Row(
                  //     children: <Widget>[
                  //       Container(
                  //         margin: EdgeInsets.symmetric(
                  //           vertical: 10,
                  //           horizontal: 15,
                  //         ),
                  //         decoration: BoxDecoration(
                  //           //BoxDecoration() creates a decoration object which you can configure in many different ways (e.g. border, radius, color) via its constructor arguments.
                  //           border: Border.all(
                  //             //color: Colors.purple, //to use the default we use theme feature from material.dart file
                  //             color:Theme.of(context).primaryColor,

                  //             width: 2,
                  //           ),
                  //         ),
                  //         padding: EdgeInsets.all(10),
                  //         child: Text(
                  //           '₹ ${transactions[index].amount}', //we use $ for string interpolation
                  //           style: TextStyle(
                  //               fontWeight: FontWeight.bold,
                  //               fontSize: 20,
                  //               color: Theme.of(context).primaryColor,
                  //           ),
                  //         ),
                  //       ),
                  //       Column(
                  //           crossAxisAlignment:
                  //               CrossAxisAlignment.start, //adjusting the alignment

                  //           children: <Widget>[
                  //             Text(
                  //               transactions[index].title,
                  //               style: Theme.of(context).textTheme.title
                  //               ),

                  //             Text(DateFormat.yMMMEd().format(transactions[index].date),
                  //                 style: TextStyle(color: Colors.grey)),
                  //           ])
                  //     ],
                  //   ),
                  // );
                },
                itemCount: transactions
                    .length, //defines how many items it should build
                //children: transactions.map((tx) { }).toList(),  this gets replaced by listview.Builder
              ));
  }
}
