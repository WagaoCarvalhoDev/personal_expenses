import 'package:flutter/material.dart';
import 'package:personal_expenses/components/transaction_user.dart';

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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                child: Card(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  elevation: 5,
                  child: const Center(child: Text('Gráfico')),
                ),
              ),
              const TransactionUser(),
            ],
          ),
        ),
      ),
    );
  }
}
