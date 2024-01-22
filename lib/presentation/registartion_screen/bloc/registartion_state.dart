// ignore_for_file: must_be_immutable

part of 'registartion_bloc.dart';

/// Represents the state of Registartion in the application.
class RegistartionState extends Equatable {
  RegistartionState({
    this.fullNameController,
    this.emailController,
    this.passwordController,
    this.passwordController1,
    this.registartionModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  TextEditingController? passwordController1;

  RegistartionModel? registartionModelObj;

  @override
  List<Object?> get props => [
        fullNameController,
        emailController,
        passwordController,
        passwordController1,
        registartionModelObj,
      ];
  RegistartionState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    TextEditingController? passwordController1,
    RegistartionModel? registartionModelObj,
  }) {
    return RegistartionState(
      fullNameController: fullNameController ?? this.fullNameController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      passwordController1: passwordController1 ?? this.passwordController1,
      registartionModelObj: registartionModelObj ?? this.registartionModelObj,
    );
  }
}
