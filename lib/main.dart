import 'package:elbek_ai/application/models/models_bloc.dart';
import 'package:elbek_ai/domain/di/dependency_manager.dart';
import 'package:elbek_ai/infrastructure/local_storage/local_storage.dart';
import 'package:elbek_ai/presentation/pages/home/home_page.dart';
import 'package:elbek_ai/presentation/style/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'application/chat/chat_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setUpDependencies();
  LocalStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.wait({AppTheme.create}),
        builder: (_, AsyncSnapshot<List<dynamic>> snapshot) {
          AppTheme? theme = snapshot.data?[0];
          return ChangeNotifierProvider(
            create: (context) => theme,
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              home: MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) =>
                        ModelsBloc()..add(ModelsEvent.getLocalModels(context)),
                  ),
                  BlocProvider(
                    create: (context) => ChatBloc(),
                  ),
                ],
                child: const HomePage(),
              ),
            ),
          );
        });
  }
}
