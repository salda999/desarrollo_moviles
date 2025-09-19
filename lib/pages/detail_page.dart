import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.id, this.name});

  final String id;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detalle')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ID (path param): $id', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text('Nombre (extra): ${name ?? '(no provisto)'}'),
            const SizedBox(height: 16),
            const Text('Navegación de ejemplo:'),
            const Text('context.go(\'/detail/42\', extra: {\'name\': \'Item 42\'})'),
          ],
        ),
      ),
    );
  }
}