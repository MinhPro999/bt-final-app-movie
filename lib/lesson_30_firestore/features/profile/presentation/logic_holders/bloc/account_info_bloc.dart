import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_learning/lesson_30_firestore/core/enums/status_state.dart';
import 'package:flutter_learning/lesson_30_firestore/features/profile/domain/entities/account_entity.dart';

part 'account_info_event.dart';
part 'account_info_state.dart';

class AccountInfoBloc extends Bloc<AccountInfoEvent, AccountInfoState> {
  AccountInfoBloc() : super(const AccountInfoState()) {
    on<UpdateDob>((event, emit) {
      final localAccountInfo = state.updatedLocalAccountData;
      final updatedInfo = localAccountInfo.copyWith(dob: event.newDob);
      emit(state.copyWith(updatedLocalAccountData: updatedInfo));
    });
    on<UpdateGender>((event, emit) {
      final localAccountInfo = state.updatedLocalAccountData;
      final updatedInfo = localAccountInfo.copyWith(gender: event.newGender);
      emit(state.copyWith(updatedLocalAccountData: updatedInfo));
    });
  }
}
