import 'package:elbek_ai/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../domain/model/local_models_response.dart';

abstract class LocalStorage {
  LocalStorage._();

  static SharedPreferences? local;

  static Future init() async {
    local = await SharedPreferences.getInstance();
  }

  static Future<bool?> setSelectedModel(Model? model) async {
    if (model != null) {
      return await local?.setString(
          AppConstants.keySelectedModel, model.toRawJson());
    }
    return local?.remove(AppConstants.keySelectedModel);
  }

  static Model? getSelectedModel() {
    final resString = local?.getString(AppConstants.keySelectedModel);
    if (resString == null) {
      return null;
    }

    return Model.fromRawJson(resString);
  }
}
