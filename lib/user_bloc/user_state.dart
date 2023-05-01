part of 'user_bloc.dart';

class UserState {
  final List<User> users;
  final List<Job> job;
  final bool isLoading;

  UserState({
    this.users = const [],
    this.job = const [],
    this.isLoading = false,
  });

  UserState copyWith({
    List<User>? users,
    List<Job>? job,
    bool isLoading = false,
  }) {
    return UserState(
      users: users ?? this.users,
      job: job ?? this.job,
      isLoading: isLoading,
    );
  }
}

class Job {
  final String name;
  final String id;

  Job(this.name, this.id);
}

class User {
  final String name;
  final String id;

  User(this.name, this.id);
}
