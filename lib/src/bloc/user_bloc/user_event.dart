part of 'user_bloc.dart';

sealed class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class CheckUserLoginEvent extends UserEvent {}

class GetCurrentUserDataEvent extends UserEvent {
  final String userId;
  final String routeName;

  const GetCurrentUserDataEvent({
    required this.userId,
    required this.routeName,
  });
}

class CreateUserEvent extends UserEvent {
  // final UserSchema user;

  const CreateUserEvent();
}

class UpdateUserEvent extends UserEvent {
  final Map<String, dynamic> userData;
  final String userId;
  final String routeName;

  const UpdateUserEvent({
    required this.userData,
    required this.userId,
    required this.routeName,
  });
}

class DeleteUserEvent extends UserEvent {
  final String? userId;
  final String routeName;

  const DeleteUserEvent({
    this.userId,
    required this.routeName,
  });
}
