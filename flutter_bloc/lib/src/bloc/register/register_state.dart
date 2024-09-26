part of 'register_cubit.dart';

enum FormStatus { invalid, valid, validating, posting }

class RegisterFormState extends Equatable {
  final bool isValid;
  final FormStatus formStatus;
  final Username userName;
  final String email;
  final String password;

  const RegisterFormState({
    this.formStatus = FormStatus.invalid,
    this.isValid = false,
    this.userName = const Username.pure(),
    this.email = '',
    this.password = '',
  });

  RegisterFormState copyWith({
    FormStatus? formStatus,
    bool? isValid,
    Username? userName,
    String? email,
    String? password,
  }) =>
      RegisterFormState(
        formStatus: formStatus ?? this.formStatus,
        isValid: isValid ?? this.isValid,
        userName: userName ?? this.userName,
        email: email ?? this.email,
        password: password ?? this.password,
      );

  @override
  List<Object> get props => [formStatus, isValid, userName, email, password];
}
