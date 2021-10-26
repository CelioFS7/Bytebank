import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: ListaTransferencias(),

          appBar: AppBar(
            title: const Text('Transferências'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );

class ListaTransferencias extends StatelessWidget {
  const ListaTransferencias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [

        ItemTransferencia(valor: '100',numeroConta:'548963'),
        ItemTransferencia(valor: '200',numeroConta:'345345'),
        ItemTransferencia(valor: '300',numeroConta:'125332'),

      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {

  final String valor;
  final String numeroConta;

  const ItemTransferencia({Key? key, required this.valor, required this.numeroConta}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Card(
      child: ListTile(
        leading: const Icon(Icons.monetization_on),
        title: Text(valor),
        subtitle: Text(numeroConta),
      ),
    );
  }
}

