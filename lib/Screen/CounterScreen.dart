import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ttbprovider/Provider/CounterProvider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print(
      "build",
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Counter Apps"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CountProvider>().increment();
        },
        child: const Icon(Icons.add),
      ),
      body: Center(

        child: Consumer<CountProvider>(
          builder: (context, counterProvider, child) {
            print("text build");
            return Text(
              counterProvider.count
                  .toString(),
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            );
          },
        ),
      ),
    );
  }
}
