import 'controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:rabelgaming/core/app_export.dart';
import 'package:rabelgaming/core/utils/validation_functions.dart';
import 'package:rabelgaming/widgets/custom_checkbox_button.dart';
import 'package:rabelgaming/widgets/custom_drop_down.dart';
import 'package:rabelgaming/widgets/custom_icon_button.dart';
import 'package:rabelgaming/widgets/custom_outlined_button.dart';
import 'package:rabelgaming/widgets/custom_text_form_field.dart';
import 'package:rabelgaming/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends GetWidget<RegisterController> {
  RegisterScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    height: 843.v,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.topCenter, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgGroup1,
                          height: 373.v,
                          width: 412.h,
                          alignment: Alignment.topCenter),
                      Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                              height: 504.v,
                              width: double.maxFinite,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                CustomImageView(
                                    imagePath: ImageConstant.img2r2a61501,
                                    height: 504.v,
                                    width: 412.h,
                                    alignment: Alignment.center),
                                Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                        height: 504.v,
                                        width: double.maxFinite,
                                        child: Stack(
                                            alignment: Alignment.centerLeft,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .img2r2a63091,
                                                  height: 460.v,
                                                  width: 178.h,
                                                  alignment:
                                                      Alignment.bottomRight),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .img2r2a63371,
                                                  height: 504.v,
                                                  width: 336.h,
                                                  alignment:
                                                      Alignment.centerLeft),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .img2r2a61111,
                                                  height: 469.v,
                                                  width: 320.h,
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  margin: EdgeInsets.only(
                                                      left: 31.h))
                                            ])))
                              ]))),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.h, vertical: 26.v),
                              decoration: AppDecoration.outlineErrorContainer
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL40),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Opacity(
                                            opacity: 0.8,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 4.h),
                                                child: Text(
                                                    "msg_enter_mobile_number"
                                                        .tr,
                                                    style: theme.textTheme
                                                        .bodyLarge)))),
                                    SizedBox(height: 15.v),
                                    _buildMobileNumberRow(),
                                    SizedBox(height: 15.v),
                                    _buildICertifyCheckBox(),
                                    SizedBox(height: 18.v),
                                    CustomOutlinedButton(
                                        text: "lbl_register".tr,
                                        buttonStyle: CustomButtonStyles.none,
                                        decoration: CustomButtonStyles
                                            .gradientOnErrorToPrimaryDecoration),
                                    SizedBox(height: 15.v),
                                    Opacity(
                                        opacity: 0.3,
                                        child: Text("msg_or_continue_with".tr,
                                            style: theme.textTheme.labelLarge)),
                                    SizedBox(height: 10.v),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 2.v),
                                              child: CustomIconButton(
                                                  height: 34.adaptSize,
                                                  width: 34.adaptSize,
                                                  padding: EdgeInsets.all(8.h),
                                                  onTap: () {
                                                    onTapBtnGoogle();
                                                  },
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgGoogle))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgFacebook1,
                                              height: 38.adaptSize,
                                              width: 38.adaptSize,
                                              margin:
                                                  EdgeInsets.only(left: 30.h)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 30.h,
                                                  top: 2.v,
                                                  bottom: 2.v),
                                              child: CustomIconButton(
                                                  height: 34.adaptSize,
                                                  width: 34.adaptSize,
                                                  padding: EdgeInsets.all(5.h),
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgDiscord11)))
                                        ]),
                                    SizedBox(height: 20.v),
                                    RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "msg_already_have_an2".tr,
                                              style:
                                                  theme.textTheme.titleSmall),
                                          TextSpan(
                                              text: "lbl_login_here".tr,
                                              style: theme.textTheme.titleSmall!
                                                  .copyWith(
                                                      decoration: TextDecoration
                                                          .underline))
                                        ]),
                                        textAlign: TextAlign.left),
                                    SizedBox(height: 18.v),
                                    Text("msg_have_a_referral".tr,
                                        style:
                                            CustomTextStyles.titleSmallOnError),
                                    SizedBox(height: 20.v),
                                    RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "msg_by_registering2".tr,
                                              style:
                                                  theme.textTheme.labelMedium),
                                          TextSpan(
                                              text: "lbl_t_cs".tr,
                                              style: theme
                                                  .textTheme.labelMedium!
                                                  .copyWith(
                                                      decoration: TextDecoration
                                                          .underline))
                                        ]),
                                        textAlign: TextAlign.left),
                                    SizedBox(height: 3.v)
                                  ])))
                    ])))));
  }

  /// Section Widget
  Widget _buildMobileNumberRow() {
    return Container(
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder7),
        child: Row(children: [
          CustomDropDown(
              width: 170.h,
              icon: Container(
                  margin: EdgeInsets.fromLTRB(2.h, 18.v, 10.h, 14.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowDown,
                      height: 23.adaptSize,
                      width: 23.adaptSize)),
              hintText: "lbl_91".tr,
              items: controller.registerModelObj.value.dropdownItemList.value,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(15.h, 22.v, 8.h, 19.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIndia1,
                      height: 14.v,
                      width: 23.h)),
              prefixConstraints: BoxConstraints(maxHeight: 55.v),
              onChanged: (value) {
                controller.onSelected(value);
              }),
          Padding(
              padding: EdgeInsets.only(left: 15.h, top: 18.v, bottom: 16.v),
              child: CustomTextFormField(
                  width: 164.h,
                  controller: controller.mobileNumberController,
                  hintText: "msg_enter_your_mobile".tr,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.phone,
                  validator: (value) {
                    if (!isValidPhone(value)) {
                      return "err_msg_please_enter_valid_phone_number".tr;
                    }
                    return null;
                  },
                  contentPadding: EdgeInsets.symmetric(horizontal: -67.h)))
        ]));
  }

  /// Section Widget
  Widget _buildICertifyCheckBox() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Obx(() => CustomCheckboxButton(
            alignment: Alignment.centerLeft,
            text: "msg_i_certify_that_i".tr,
            value: controller.iCertifyCheckBox.value,
            onChange: (value) {
              controller.iCertifyCheckBox.value = value;
            })));
  }

  onTapBtnGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
