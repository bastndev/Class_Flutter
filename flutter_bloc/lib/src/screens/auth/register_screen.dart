import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_project/src/bloc/register/register_cubit.dart';
import 'widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: BlocProvider(
        create: (_) => RegisterCubit(),
        child: const _RegisterView(),
      ),
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

class _RegisterForm extends StatelessWidget {
  const _RegisterForm();

  @override
  Widget build(BuildContext context) {
    final registerCubit = context.watch<RegisterCubit>();
    final userName = registerCubit.state.userName;
    final password = registerCubit.state.password;

    return Form(
      child: Column(
        children: [
          // --- --- --- -- CustomRegisterForm
          const SizedBox(height: 10),
          CustomRegisterForm(
            label: 'Name',
            hint: 'Enter your name',
            onChanged: registerCubit.userNameChanged,
            errorMessage: userName.errorMessage,
          ),
          const SizedBox(height: 10),
          CustomRegisterForm(
            label: 'Email',
            hint: 'Enter your name',
            onChanged: (value) {
              registerCubit.emailChanged(value);
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your name';
              }
              if (value.trim().isEmpty) return 'Please enter your name';
              final emailRegExp = RegExp(
                r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
              );
              if (!emailRegExp.hasMatch(value)) return 'Invalid email';
              return null;
            },
          ),
          const SizedBox(height: 10),
          CustomRegisterForm(
            label: 'Password',
            obscureText: true,
            onChanged: registerCubit.passwordChanged,
            errorMessage: password.errorMessage,
          ),
          const SizedBox(height: 20),
          // --- --- -- CustomSaveButtonSave
          SaveButtonSave(
            onPressed2: () {
              registerCubit.onSubmit();
            },
          ),
        ],
      ),
    );
  }
}
