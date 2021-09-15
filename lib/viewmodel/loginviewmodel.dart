import 'package:mobx/mobx.dart';
import 'package:validators/validators.dart';

part 'loginviewmodel.g.dart';

class LoginViewModel = _LoginViewModel with _$LoginViewModel;

abstract class _LoginViewModel with Store {
  VendorLoginViewModelErrorState vendorloginViewModelErrorState =
      VendorLoginViewModelErrorState();

  @observable
  bool isLoading = false;

  @observable
  String username = '';

  @observable
  String pass = '';

  List<ReactionDisposer>? _disposers;

  @action
  setUsername(String value) {
    username = value;
  }

  @action
  setPass(String value) {
    pass = value;
  }

  @action
  void setupValidations() {
    _disposers = [
      reaction((_) => username, validateUsername),
      reaction((_) => pass, validatePassowrd),
    ];
  }

  @action
  void disposeValidations() {
    _disposers!.clear();
  }

  @action
  validateUsername(String username) {
    if (isAlpha(username)) {
      vendorloginViewModelErrorState.username = null;
    } else {
      vendorloginViewModelErrorState.username = 'Enter A Valid Number';
    }
  }

  @action
  validatePassowrd(String pass) {
    if (pass.length >= 6) {
      vendorloginViewModelErrorState.pass = null;
    } else {
      vendorloginViewModelErrorState.pass = 'Enter At-lest 6 digits';
    }
  }
}

class VendorLoginViewModelErrorState = _VendorLoginViewModelErrorState
    with _$VendorLoginViewModelErrorState;

abstract class _VendorLoginViewModelErrorState with Store {
  @observable
  String? username;

  @observable
  String? pass;

  @computed
  bool get hasErrors => username != null || pass != null;
}
