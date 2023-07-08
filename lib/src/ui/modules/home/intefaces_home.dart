import 'package:form_app/src/ui/modules/home/home_data_model.dart';

abstract class PresenterIntefacesHome {
  HomeDataModel loadData();
  void goToForm();
}

abstract class ModelIntefacesHome {
  HomeDataModel getData();
}

abstract class ViewIntefacesHome {
  void cargarView();
  void navigateToUserListView();
  void navigateToForm();
  void showBanner();
}
