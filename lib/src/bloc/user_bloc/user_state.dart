part of 'user_bloc.dart';

sealed class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

final class UserInitial extends UserState {}

class GetUserDataState extends UserState {
  final ProviderStatus status;
  // final ErrorModel? error;
  // final UserSchema? user;
  final String routeName;

  const GetUserDataState({
    required this.status,
    // this.user,
    // this.error,
    required this.routeName,
  });

  @override
  List<Object> get props => [status];
}

class CreateUserState extends UserState {
  final ProviderStatus status;
  // final ErrorModel? error;
  // final UserSchema? user;

  const CreateUserState({
    required this.status,
    // this.user,
    // this.error,
  });

  @override
  List<Object> get props => [status];
}

class UpdateUserState extends UserState {
  final ProviderStatus status;
  // final ErrorModel? error;
  // final UserSchema? userData;
  final String routeName;

  const UpdateUserState({
    required this.status,
    // this.userData,
    // this.error,
    required this.routeName,
  });

  @override
  List<Object> get props => [status];
}

class DeleteUserState extends UserState {
  const DeleteUserState({
    required this.status,
    required this.routeName,
    // this.error,
    this.userId,
  });

  final ProviderStatus status;
  // final ErrorModel? error;
  final String? userId;
  final String routeName;

  @override
  List<Object> get props => [status];
}
