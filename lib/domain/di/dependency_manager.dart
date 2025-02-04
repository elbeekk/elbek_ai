import 'package:elbek_ai/domain/interface/ollama.dart';
import 'package:elbek_ai/infrastructure/repositories/ollama_repository.dart';
import 'package:get_it/get_it.dart';

import '../service/http_service.dart';

final GetIt getIt = GetIt.instance;

Future<void> setUpDependencies() async {
  getIt.registerLazySingleton<HttpService>(() => HttpService());
  getIt.registerSingleton<OllamaInterface>(OllamaRepository());
}

final dioHttp = getIt.get<HttpService>();
final ollamaRepository = getIt.get<OllamaInterface>();
