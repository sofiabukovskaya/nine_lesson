import 'package:flutter/material.dart';
import 'package:lecture_9/screens/provider_screen/counter_model.dart';
import 'package:provider/provider.dart';

class ProviderScreen extends StatelessWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Ми натискали кнопку стільки разів:',
            ),
            // Використання Consumer для відображення лічильника
            Consumer<CounterModel>(
              builder: (context, provider, _) {
                return Text(
                  '${provider.counter}',
                  style: Theme.of(context).textTheme.bodyLarge,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Provider.of<CounterModel>(context, listen: false).increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

