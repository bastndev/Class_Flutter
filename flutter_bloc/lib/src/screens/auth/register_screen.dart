import 'package:flutter/material.dart';
import 'package:flutter_bloc_project/src/screens/auth/widget/button_save.dart';
import 'package:flutter_bloc_project/src/screens/auth/widget/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: const _RegisterView(),
    );
  }
}

class _RegisterView extends StatelessWidget {
  const _RegisterView();

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 20),
              FlutterLogo(size: 150),
              RegisterForm(),
              SizedBox(height: 20),
              ButtonSave(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
