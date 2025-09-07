import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taller 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _title = 'Hola, Flutter'; // variable de estado para el AppBar

  void _toggleTitle() {
    setState(() {
      _title = _title == 'Hola, Flutter' ? '¡Título cambiado!' : 'Hola, Flutter';
    });

    // SnackBar requerido
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Título actualizado')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              // Nombre centrado (requisito)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.indigo.withOpacity(0.06),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.indigo.shade100),
                ),
                child: const Center(
                  child: Text(
                    'jhonatan saldarriaga – Código 230202010',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 12),

              // Row con Image.network + Image.asset (requisito)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Imagen de Internet
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 6),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Image.network(
                        'https://avatars.githubusercontent.com/u/14101776?s=200&v=4', // Flutter org avatar
                        height: 80,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  // Imagen local (asset)
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 6),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Image.asset(
                        'assets/images/logo.png',
                        height: 80,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              // Botón principal con setState (requisito)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: _toggleTitle,
                  icon: const Icon(Icons.refresh),
                  label: const Text('Alternar título (setState)'),
                ),
              ),

              const SizedBox(height: 12),

              // ======= Widgets adicionales (eliges 2+) =======
              // 1) ListView simple con icono + texto (dentro de Expanded)
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('ListView (3–4 items)', style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      Expanded(
                        child: ListView(
                          children: const [
                            ListTile(
                              leading: Icon(Icons.check_circle_outline),
                              title: Text('Item 1: Requisito setState implementado'),
                              subtitle: Text('Alterna título y muestra SnackBar'),
                            ),
                            ListTile(
                              leading: Icon(Icons.image_outlined),
                              title: Text('Item 2: Imágenes'),
                              subtitle: Text('Image.network + Image.asset'),
                            ),
                            ListTile(
                              leading: Icon(Icons.widgets_outlined),
                              title: Text('Item 3: Widgets extra'),
                              subtitle: Text('ListView + GridView + Container'),
                            ),
                            ListTile(
                              leading: Icon(Icons.code),
                              title: Text('Item 4: Buenas prácticas'),
                              subtitle: Text('Column, Padding, SizedBox, estilos'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // 2) GridView (mínimo 4 celdas)
              SizedBox(
                height: 140,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: GridView.count(
                    crossAxisCount: 4,
                    mainAxisSpacing: 6,
                    crossAxisSpacing: 6,
                    children: const [
                      _GridBadge(text: 'A'),
                      _GridBadge(text: 'B'),
                      _GridBadge(text: 'C'),
                      _GridBadge(text: 'D'),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 8),

              // Botones secundarios (OutlinedButton / TextButton)
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.info_outline),
                      label: const Text('OutlinedButton'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('TextButton'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _GridBadge extends StatelessWidget {
  final String text;
  const _GridBadge({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.indigo.shade200),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
