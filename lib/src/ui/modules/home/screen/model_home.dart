import 'package:form_app/src/ui/modules/home/home_data_model.dart';
import 'package:form_app/src/ui/modules/home/intefaces_home.dart';

class ModelHome implements ModelIntefacesHome {
  final Map<String, dynamic> data;
  ModelHome(this.data);

  @override
  HomeDataModel getData() {
    final Map<String, dynamic> homeData = data['home'];
    return HomeDataModel(
        title: homeData['title'],
        formUserButton: homeData['form_user_button'],
        listUserButton: homeData['list_user_button']);
  }
}
