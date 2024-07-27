import 'package:flutter/material.dart';


class Summary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(7)),
      child: Column(
        children:[
          SummaryRow(title: 'Subtotal', amount: 278.78),
          SummaryRow(title: 'Shipping Cost', amount: 20.00),
          SummaryRow(title: 'Taxes', amount: 15.00),
          Divider(),
          SummaryRow(title: 'Total', amount: 308.78, isTotal: true),
        ],
      ),
    );
  }
}


class SummaryRow extends StatelessWidget {
  final String title;
  final double amount;
  final bool isTotal;

  SummaryRow({required this.title, required this.amount, this.isTotal = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style:TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
          Text('\$${amount.toStringAsFixed(2)}', style:TextStyle(fontSize: 17)),
        ],
      ),
    );
  }
}