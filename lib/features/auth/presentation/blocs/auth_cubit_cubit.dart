
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../repo/auth_repo.dart';
part 'auth_cubit_state.dart';

class AuthCubit extends Cubit<AuthCubitState> {
  final AuthRepo _authRepo;
  AuthCubit(this._authRepo) : super(AuthCubitInitial());

  Future<void> login({required String email, required String password}) async {

  }
}
