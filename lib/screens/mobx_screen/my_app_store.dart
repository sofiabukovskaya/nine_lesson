import 'package:mobx/mobx.dart';

part 'my_app_store.g.dart';

class MyAppStore = BaseMyAppStore with _$MyAppStore;

abstract class BaseMyAppStore with Store {

  @observable
  String name = '';

}