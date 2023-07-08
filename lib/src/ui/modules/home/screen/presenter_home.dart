import 'package:form_app/src/ui/modules/home/home_data_model.dart';
import 'package:form_app/src/ui/modules/home/intefaces_home.dart';

class PresenterHome implements PresenterIntefacesHome {
  final ModelIntefacesHome model;
  final ViewIntefacesHome view;
  const PresenterHome({required this.model, required this.view});

  @override
  HomeDataModel loadData() {
    view.cargarView();
    return model.getData();
  }

  @override
  void goToForm() {
    view.showBanner();
    view.navigateToForm();
  }
}
