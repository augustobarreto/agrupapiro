import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'enum/rotas.dart';
import 'view/activity_page.dart';
import 'view/group_page.dart';
import 'view/home_page.dart';
import 'view/login_page.dart';
import 'package:agrupapiro/view/cadastro_page.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agrupapiro',
      initialRoute: '/',
      routes: {
        Routes.HOME: (_) => HomePage(),
        Routes.LOGIN: (_) => LoginPage(),
        Routes.CADASTRO: (_) => CadastroPage(),
        Routes.GRUPO: (_) => GroupPage(),
        Routes.ATIVIDADES: (_) => ActivityPage(),
      },
    );
  }
}
