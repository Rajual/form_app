import 'package:flutter/material.dart';
import 'package:form_app/src/ui/modules/home/home_data_model.dart';
import 'package:form_app/src/ui/modules/home/intefaces_home.dart';
import 'package:form_app/src/ui/modules/home/screen/presenter_home.dart';

class ViewHome extends StatefulWidget {
  final ModelIntefacesHome model;
  const ViewHome({required this.model, super.key});

  @override
  State<ViewHome> createState() => _ViewHomeState();
}

class _ViewHomeState extends State<ViewHome> implements ViewIntefacesHome {
  late final PresenterHome presenter;
  late final HomeDataModel data;
  @override
  void initState() {
    super.initState();
    presenter = PresenterHome(
      model: widget.model,
      view: this,
    );
    data = presenter.loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        MaterialButton(
          child: Text(data.formUserButton),
          onPressed: () => presenter.goToForm(),
        ),
        MaterialButton(
          child: Text(data.listUserButton),
          onPressed: () {},
        ),
      ]),
    );
  }

  @override
  void cargarView() {
    print('Datos cargados');
  }

  @override
  void navigateToForm() {
    // TODO: implement navigateToForm
  }

  @override
  void navigateToUserListView() {
    // TODO: implement navigateToUserListView
  }

  @override
  void showBanner() {
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Banner deslizado')));
  }
}
