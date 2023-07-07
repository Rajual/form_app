import 'package:hive/hive.dart';

class LocalStorage {
  final CollectionBox<Map<dynamic, dynamic>> box;
  LocalStorage(this.box);

  Future<String> setData(
      {required String id, required Map<String, dynamic> data}) async {
    await box.put(id, data);
    return id;
  }

  Future<Map<String, dynamic>> getData({required String id}) async {
    final data = await box.get(id);
    return data as Map<String, dynamic>;
  }
}
