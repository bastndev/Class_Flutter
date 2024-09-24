import 'package:flutter/material.dart';
import 'widgets/widgets.dart';

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
              _RegisterForm(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class _RegisterForm extends StatefulWidget {
  const _RegisterForm();

  @override
  State<_RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<_RegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String userName = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          // --- --- --- -- CustomRegisterForm
          const SizedBox(height: 10),
          CustomRegisterForm(
            label: 'Name',
            hint: 'Enter your name',
            onChanged: (value) => userName = value,
          ),
          const SizedBox(height: 10),
          CustomRegisterForm(
            label: 'Email',
            hint: 'Enter your name',
            onChanged: (value) => email = value,
          ),
          const SizedBox(height: 10),
          CustomRegisterForm(
            label: 'Password',
            obscureText: true,
            onChanged: (value) => password = value,
          ),
          const SizedBox(height: 20),
          // --- --- -- CustomSaveButtonSave
          SaveButtonSave(
            onPressed2: () {
              print('$userName $email $password');
            },
          ),
        ],
      ),
    );
  }
}
