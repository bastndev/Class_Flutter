import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_project/infrastructure/inputs/inputs.dart';
import 'package:formz/formz.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterFormState> {
  RegisterCubit() : super(const RegisterFormState());
  void onSubmit() {
    emit(state.copyWith(
        formStatus: FormStatus.validating,
        userName: Username.dirty(value: state.userName.value),
        email: Email.dirty(value: state.email.value),
        password: Password.dirty(value: state.password.value),
        
        isValid: Formz.validate([
          state.userName,
          state.password,
          // :TODO: add email validation
        ])));

    print('Cubit Submit $state');
  }

  void userNameChanged(String value) {
    final username = Username.dirty(value: value);
    emit(
      state.copyWith(
        userName: username,
        isValid: Formz.validate([username, state.password, state.email]),
      ),
    );
  }

  void emailChanged(String value) {
    final email = Email.dirty(value: value);
    emit(state.copyWith(
      email: email,
      isValid: Formz.validate([email, state.password, state.userName]),
    ));
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value: value);
    emit(state.copyWith(
      password: password,
      isValid: Formz.validate([password, state.userName, state.email]),
    ));
  }
}
