part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthLogged extends AuthState {
  final String message;
  AuthLogged(this.message);
}

final class AuthError extends AuthState {
  final String message;
  AuthError(this.message);
}
