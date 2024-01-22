// ignore_for_file: must_be_immutable

part of 'profile_seetings_bloc.dart';

/// Represents the state of ProfileSeetings in the application.
class ProfileSeetingsState extends Equatable {
  ProfileSeetingsState({
    this.nameController,
    this.emailController,
    this.phoneController,
    this.profileSeetingsModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? emailController;

  TextEditingController? phoneController;

  ProfileSeetingsModel? profileSeetingsModelObj;

  @override
  List<Object?> get props => [
        nameController,
        emailController,
        phoneController,
        profileSeetingsModelObj,
      ];
  ProfileSeetingsState copyWith({
    TextEditingController? nameController,
    TextEditingController? emailController,
    TextEditingController? phoneController,
    ProfileSeetingsModel? profileSeetingsModelObj,
  }) {
    return ProfileSeetingsState(
      nameController: nameController ?? this.nameController,
      emailController: emailController ?? this.emailController,
      phoneController: phoneController ?? this.phoneController,
      profileSeetingsModelObj:
          profileSeetingsModelObj ?? this.profileSeetingsModelObj,
    );
  }
}
