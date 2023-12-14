import 'package:rabelgaming/core/app_export.dart';
import 'package:rabelgaming/presentation/register_screen/models/register_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RegisterScreen.
///
/// This class manages the state of the RegisterScreen, including the
/// current registerModelObj
class RegisterController extends GetxController {
  TextEditingController mobileNumberController = TextEditingController();

  Rx<RegisterModel> registerModelObj = RegisterModel().obs;

  Rx<bool> iCertifyCheckBox = false.obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    mobileNumberController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in registerModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    registerModelObj.value.dropdownItemList.refresh();
  }
}
