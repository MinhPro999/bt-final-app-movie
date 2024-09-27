import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'logic_event.dart';
part 'logic_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(InitialLoginState()) {
    on<LoginWithUsernamePassword>((event, emit) async {
      emit(LoadingLoginState());
      await Future.delayed(const Duration(seconds: 5), () {
        final random = Random();
        final isSuccess = random.nextBool();
        if (isSuccess) {
          emit(SuccessfullyLoginState(
              successfulMsg:
                  "Chúc mừng bạn đã login bằng username và password thành công"));
        } else {
          emit(FailedLoginState(
              errorMessage:
                  "Đăng nhập bằng username và password thất bại. Hãy thử lại sau!!!"));
        }
      });
    });

    on<LoginWithThirdParty>((event, emit) {});

    on<ForgotPassword>((event, emit) {});
  }
}
