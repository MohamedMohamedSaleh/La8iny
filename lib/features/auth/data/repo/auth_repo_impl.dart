import 'package:la8iny/features/auth/data/models/user_model.dart';

import '../../presentation/repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  @override
  Future<UserModel> login(
      {required String email, required String password}) async {
    return await Future.delayed(const Duration(seconds: 2),
        () => UserModel(email: email, password: password));
  }
}
