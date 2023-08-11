import 'package:flutter/material.dart';
import 'package:personal_expenses/data/transactions_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Despesas pessoais'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              //width: MediaQuery.of(context).size.width,
              child: Card(
                color: Theme.of(context).colorScheme.inversePrimary,
                elevation: 5,
                child: const Center(child: Text('Gráfico')),
              ),
            ),
            Column(
              children: [
                ...TransactionsData.transactions.map(
                  (t) {
                    return Card(
                      child: Text(t.title),
                    );
                  },
                ).toList()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
