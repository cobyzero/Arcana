import 'package:arcana_app/domain/repositories/auth_irepository.dart';
import 'package:bloc/bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthIRepository authIRepository;
  AuthBloc(this.authIRepository) : super(AuthInitial()) {
    on<AuthLoginEvent>(_login);
  }

  Future<void> _login(AuthLoginEvent event, Emitter<AuthState> emit) async {
    try {
      emit(AuthLoading());
      final response = await authIRepository.login(
        email: event.email,
        password: event.password,
      );

      if (response.success) {
        final shared = GetStorage();
        shared.write('token', response.data['token']);
        emit(AuthLogged(response.message));
      }

      emit(AuthError(response.message));
    } catch (e) {
      emit(AuthError(e.toString()));
    }
  }
}
