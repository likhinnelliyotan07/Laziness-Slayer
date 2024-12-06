import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laziness_slayer/src/bloc/app_bloc/app_bloc.dart';

import '../bloc/user_bloc/user_bloc.dart';

final List<BlocProvider> providers = [
  BlocProvider<UserBloc>(create: (_) => UserBloc()),
  BlocProvider<AppBloc>(create: (_) => AppBloc()),
];
