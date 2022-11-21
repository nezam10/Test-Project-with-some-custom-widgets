import 'package:get/get.dart';
import 'package:test_project/app/global_widgets/kyc/user_info_model.dart';

class KycInfoProvider extends GetConnect {
  @override
  void onInit() {
    super.onInit();
  }

  static Map<String, String> headerData = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
    //"Authorization": "Bearer ${preferences.getString(AppStrins.keyUserToken)}"
  };

  Future<KycHolder?> createKycUser({required KycHolder holder}) async {
    const String apiUrl = 'api_url';
    try {
      Response response =
          await post(apiUrl, holder.toJson(), headers: headerData);
      print(response.body);
      if (response.statusCode == 200) {
        print("Successfully Created");
        KycHolder model = KycHolder.fromJson(response.body);
        return model;
      } else {
        // Get.snackbar(AppStrins.error, response.body);
        return null;
      }
    } on Exception catch (e) {
      print('1st $e');

      return null;
    } catch (error, s) {
      print(" error massage$error");
      print("error==== $s");

      return null;
    }
    // return null;
  }
}
