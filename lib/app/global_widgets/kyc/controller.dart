import 'package:get/get.dart';
import 'package:test_project/app/global_widgets/kyc/service.dart';
import 'package:test_project/app/global_widgets/kyc/user_info_model.dart';
import 'package:connectivity_plus/connectivity_plus.dart' as connectivity;

class AddBeneficiaryController extends GetxController {
  //var pageControll = PageController();
  var selectedPagexNumber = 0.obs;

  // branch
  final isLoadedUserInfo = true.obs;
  final _userInfo = KycHolder().obs;
  KycHolder get customer => _userInfo.value;
  final selectAccType = '0'.obs;

  @override
  void onInit() async {
    super.onInit();
    // pageControll = PageController(initialPage: 0);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void postKycUser() async {
    KycHolder holder = KycHolder(
      userId: "",
      surname: "",
      firstName: "",
      middleName: "",
      lastName: "",
      email: "",
      phone: "",
      nationalIdIssueCountry: "",
      foreignIdType: "",
      foreignId: "",
      dateOfBirth: null,
      gender: "",
      maritalStatus: "",
      residentialPhone: "",
      nationality: "",
      employerName: "",
      employerAddress: "",
      employerTelephone: "",
      occupation: "",
      pmCountry: "",
      pmCity: "",
      pmState: "",
      pmZipCode: "",
      pmAddressLine1: "",
      pmAddressLine2: "",
      pmAddressLine3: "",
      pmAddressProofFileType: "",
      shipCountry: "",
      shipCity: "",
      shipState: "",
      shipZipCode: "",
      shipAddressLine1: "",
      shipAddressLine2: "",
      shipAddressLine3: "",
      idCardDocFrontPage: "",
      idCardDocBackPage: "",
      addressDocPage: "",
    );
    if (await checkInternetConnection()) {
      var response = await KycInfoProvider().createKycUser(
        holder: holder,
      );
      if (response != null) {
        //await progressDialog.hide();
        //Get.offAndToNamed(Routes.HOME);
        print('= ok =');
      } else {
        //progressDialog.hide();
      }
    }
  }

  Future<bool> checkInternetConnection() async {
    final connectivity.ConnectivityResult connectivityResult =
        await connectivity.Connectivity().checkConnectivity();
    if (GetPlatform.isAndroid) {
      if (connectivityResult == connectivity.ConnectivityResult.mobile) {
        return true;
      } else if (connectivityResult == connectivity.ConnectivityResult.wifi) {
        return true;
      } else if (connectivityResult == connectivity.ConnectivityResult.none) {
        return false;
      } else {
        return false;
      }
    } else {
      if (connectivityResult == connectivity.ConnectivityResult.mobile) {
        return true;
      } else if (connectivityResult == connectivity.ConnectivityResult.wifi) {
        return true;
      } else if (connectivityResult == connectivity.ConnectivityResult.none) {
        return false;
      } else {
        return false;
      }
    }
  }
}
