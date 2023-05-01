import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserState()) {
    on<UserGetUsersEvent>(_onGetUser);
    on<UserGetUsersJobEvent>(_onGetUserJob);
  }
  _onGetUser(UserGetUsersEvent event,Emitter<UserState> emit) async{
    emit(state.copyWith(isLoading:true));
    await Future.delayed(const Duration(milliseconds:200));
    final users=List.generate(event.count, (index) => User('user name',index.toString()));
    emit(state.copyWith(users:users));
  }
  _onGetUserJob(UserGetUsersJobEvent event,Emitter<UserState> emit) async{
    emit(state.copyWith(isLoading:true));
    await Future.delayed(const Duration(milliseconds:200));
    final job=List.generate(event.count, (index) => Job('Job name',index.toString()));
    emit(state.copyWith(job:job));
  }
}
