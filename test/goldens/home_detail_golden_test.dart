import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

// Importaciones relativas para no depender del nombre del paquete en pubspec.yaml
import '../../lib/pages/home_page.dart';
import '../../lib/pages/detail_page.dart';

GoRouter _buildRouter({String initialLocation = '/'}) {
  return GoRouter(
    initialLocation: initialLocation,
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const HomePage(),
        routes: <RouteBase>[
          GoRoute(
            path: 'detail/:id',
            name: 'detail',
            builder: (context, state) {
              final id = state.pathParameters['id'] ?? '';
              final extra = state.extra as Map<String, dynamic>?;
              final name = (extra != null ? extra['name'] : null) as String?;
              return DetailPage(id: id, name: name);
            },
          ),
        ],
      ),
    ],
  );
}

Future<void> _pumpApp(WidgetTester tester, {String initialLocation = '/'}) async {
  final router = _buildRouter(initialLocation: initialLocation);
  await tester.binding.setSurfaceSize(const Size(390, 844)); // iPhone-like
  await tester.pumpWidget(MaterialApp.router(
    title: 'Taller: go_router - Paso de parámetros',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      useMaterial3: true,
    ),
    routerConfig: router,
  ));
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('Golden: Home', (tester) async {
    await _pumpApp(tester);
    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/Home.png'),
    );
  });

  testWidgets('Golden: Detail navegando con extra desde Home', (tester) async {
    await _pumpApp(tester);
    // Toca el ítem "Item 7" que debería hacer context.go('/detail/7', extra: {...})
    final item7 = find.text('Item 7');
    expect(item7, findsOneWidget);
    await tester.tap(item7);
    await tester.pumpAndSettle();

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/Detail.png'),
    );
  });
}