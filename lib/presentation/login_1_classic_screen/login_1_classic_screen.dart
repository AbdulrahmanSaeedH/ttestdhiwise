import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/login_1_classic_bloc.dart';
import 'models/login_1_classic_model.dart';

class Login1ClassicScreen extends StatelessWidget {
  const Login1ClassicScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Login1ClassicBloc>(
      create: (context) => Login1ClassicBloc(Login1ClassicState(
        login1ClassicModelObj: Login1ClassicModel(),
      ))
        ..add(Login1ClassicInitialEvent()),
      child: Login1ClassicScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildLoginColumn(context),
              Container(
                padding: EdgeInsets.symmetric(vertical: 40.v),
                child: Column(
                  children: [
                    _buildTelevisionRow(context),
                    SizedBox(height: 32.v),
                    _buildUsernameEditText(context),
                    SizedBox(height: 26.v),
                    _buildCodeEditText(context),
                    SizedBox(height: 26.v),
                    _buildPasswordEditText(context),
                    SizedBox(height: 32.v),
                    _buildLoginButton(context),
                    SizedBox(height: 9.v),
                    Text(
                      "lbl7".tr,
                      style: theme.textTheme.bodySmall!.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    SizedBox(height: 5.v)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.v),
      decoration: AppDecoration.fillIndigo,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomAppBar(
            actions: [
              Container(
                height: 15.000002.v,
                width: 17.380005.h,
                margin: EdgeInsets.fromLTRB(19.h, 4.v, 19.h, 5.v),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgVector,
                      height: 1.v,
                      width: 17.h,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(
                        top: 7.v,
                        bottom: 6.v,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorWhiteA700,
                      height: 15.v,
                      width: 8.h,
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(left: 9.h),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(right: 25.h),
            child: Text(
              "lbl".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 28.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTelevisionRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 100.h),
      decoration: AppDecoration.outlineBlack,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: 3.v,
                right: 12.h,
              ),
              child: _buildSettingsColumn(
                context,
                settingsImage: ImageConstant.imgTelevision,
                titleText: "lbl2".tr,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: _buildSettingsColumn(
                context,
                settingsImage: ImageConstant.imgSettings,
                titleText: "lbl3".tr,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUsernameEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: BlocSelector<Login1ClassicBloc, Login1ClassicState,
          TextEditingController?>(
        selector: (state) => state.usernameEditTextController,
        builder: (context, usernameEditTextController) {
          return CustomTextFormField(
            controller: usernameEditTextController,
            hintText: "lbl4".tr,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(16.h, 16.v, 30.h, 16.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgInbox,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 56.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCodeEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: BlocSelector<Login1ClassicBloc, Login1ClassicState,
          TextEditingController?>(
        selector: (state) => state.codeEditTextController,
        builder: (context, codeEditTextController) {
          return CustomTextFormField(
            controller: codeEditTextController,
            hintText: "lbl5".tr,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(16.h, 16.v, 30.h, 16.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgInbox,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 56.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: BlocSelector<Login1ClassicBloc, Login1ClassicState,
          TextEditingController?>(
        selector: (state) => state.passwordEditTextController,
        builder: (context, passwordEditTextController) {
          return CustomTextFormField(
            controller: passwordEditTextController,
            hintText: "lbl6".tr,
            textInputAction: TextInputAction.done,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(16.h, 16.v, 30.h, 16.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgCheckmark,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 56.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
      width: 142.h,
      text: "lbl".tr,
      buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
    );
  }

  /// Common widget
  Widget _buildSettingsColumn(
    BuildContext context, {
    required String settingsImage,
    required String titleText,
  }) {
    return Column(
      children: [
        Container(
          height: 75.adaptSize,
          width: 75.adaptSize,
          padding: EdgeInsets.all(12.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder37,
          ),
          child: CustomImageView(
            imagePath: settingsImage,
            height: 50.adaptSize,
            width: 50.adaptSize,
            alignment: Alignment.center,
          ),
        ),
        SizedBox(height: 13.v),
        Text(
          titleText,
          style: theme.textTheme.titleMedium!.copyWith(
            color: appTheme.black900,
          ),
        )
      ],
    );
  }
}
