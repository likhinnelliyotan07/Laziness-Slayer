import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laziness_slayer/src/utils/enums.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    /*Fetch user data*/
    on<GetCurrentUserDataEvent>((event, emit) async {
      emit(GetUserDataState(
        status: ProviderStatus.loading,
        routeName: event.routeName,
      ));
      // final result =
      //     await Locator.instance.get<UserRepo>().getUser(event.userId);
      // final UserState state = result.fold((fail) {
      //   return GetUserDataState(
      //     status: ProviderStatus.error,
      //     error: fail,
      //     routeName: event.routeName,
      //   );
      // }, (userData) {
      //   ///assigning to current user
      //   currentUser = userData;
      //   return GetUserDataState(
      //     status: ProviderStatus.success,
      //     user: userData,
      //     routeName: event.routeName,
      //   );
      // });
      emit(state);
    });

    /*create user data*/
    on<CreateUserEvent>((event, emit) async {
      emit(const CreateUserState(status: ProviderStatus.loading));
      // final result =
      //     await Locator.instance.get<UserRepo>().createUser(user: event.user);
      // final UserState state = await result.fold((fail) {
      //   return CreateUserState(
      //     status: ProviderStatus.error,
      //     error: fail,
      //   );
      // }, (userData) {
      //   ///assigning to current user
      //   currentUser = userData;
      //   return CreateUserState(
      //     status: ProviderStatus.success,
      //     user: userData,
      //   );
      // });
      emit(state);
    });

    /*update user data*/
  }
}
