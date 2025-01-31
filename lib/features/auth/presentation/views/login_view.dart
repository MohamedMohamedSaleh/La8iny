import 'package:flutter/material.dart';
import 'package:la8iny/core/constants/app_images.dart';
import 'package:la8iny/core/theme/app_colors.dart';
import 'package:la8iny/core/widgets/app_image.dart';

import '../../../../core/widgets/custom_app_input.dart';
import '../../../../core/widgets/custom_filled_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
                child: Form(
              // key: cubit.formKey,
              // autovalidateMode: cubit.autovalidateMode,
              // hello mohameed
              child: Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  const AppImage(Assets.imagesLoginIcon1, height: 120),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Login To Continue',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Text(
                    "La8iny",
                    style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomAppInput(
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Please Enter Valid Email';
                      }
                      return null;
                    },
                    // controller: cubit.userNameController,
                    labelText: 'Email',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomAppInput(
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Please Enter Password';
                      }
                      return null;
                    },
                    labelText: 'Password',
                    isPassword: true,
                    // controller: cubit.passwordController,
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  CustomFilledButton(
                      // isLoading: state is LoginLoadingState,
                      title: 'Login',
                      onPressed: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                      }),
                  const SizedBox(height: 16),
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}
