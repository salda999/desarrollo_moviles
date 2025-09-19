import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(10, (index) => index + 1);

    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: ListView.separated(
        itemCount: items.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, i) {
          final id = items[i];
          return ListTile(
            title: Text('Item $id'),
            subtitle: const Text('Tap para ver detalle'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              context.go('/detail/$id', extra: {
                'name': 'Item $id',
                'timestamp': DateTime.now().toIso8601String(),
              });
            },
          );
        },
      ),
    );
  }
}