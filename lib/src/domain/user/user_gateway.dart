import 'package:form_app/src/domain/user/user.dart';

abstract class UserGateway {
  Future<User> getUser(String id);
  Future<String> setUser(User user);
}
