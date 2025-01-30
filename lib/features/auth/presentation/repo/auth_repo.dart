import 'package:la8iny/features/auth/data/models/user_model.dart';

abstract class AuthRepo {
  Future<UserModel> login({required String email, required String password});
}