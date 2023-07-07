import 'package:form_app/src/architecture/services/locale_stoage.dart';
import 'package:form_app/src/domain/user/user.dart';
import 'package:form_app/src/domain/user/user_gateway.dart';

class UserDriverAdapter implements UserGateway {
  final LocalStorage localStorage;
  UserDriverAdapter(this.localStorage);
  @override
  Future<User> getUser(String id) async {
    final Map<String, dynamic> user = await localStorage.getData(id: id);
    return User.fromMap(user);
  }

  @override
  Future<String> setUser(User user) async {
    return await localStorage.setData(
      id: user.id,
      data: user.toMap(),
    );
  }
}
