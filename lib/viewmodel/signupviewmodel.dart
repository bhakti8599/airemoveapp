import 'package:mobx/mobx.dart';
import 'package:validators/validators.dart';

part 'signupviewmodel.g.dart';

class SignUPViewModel = _SignUPViewModel with _$SignUPViewModel;

abstract class _SignUPViewModel with Store {
  SignUPViewModelErrorState signUPViewModelErrorState =
      SignUPViewModelErrorState();

  @observable
  bool isLoading = false;

  @observable
  String username = '';

  @observable
  String pass = '';
  @observable
  String confirmpass = '';
  @observable
  String mobile = '';

  List<ReactionDisposer>? _disposers;

  @action
  setUsername(String value) {
    username = value;
  }

  @action
  setMobile(String value) {
    mobile = value;
  }

  @action
  setPass(String value) {
    pass = value;
  }

  @action
  setconfirmpass(String value) {
    confirmpass = value;
  }

  @action
  void setupValidations() {
    _disposers = [
      reaction((_) => username, validateUsername),
      reaction((_) => mobile, validateMobile),
      reaction((_) => pass, validatePassowrd),
      reaction((_) => confirmpass, validateConfirmPassowrd),
    ];
  }

  @action
  void disposeValidations() {
    _disposers!.clear();
  }

  @action
  validateUsername(String username) {
    if (isAlpha(username)) {
      signUPViewModelErrorState.username = null;
    } else {
      signUPViewModelErrorState.username = 'Enter A Valid Number';
    }
  }

  @action
  validateMobile(String mobile) {
    if (isNumeric(mobile)) {
      signUPViewModelErrorState.mobile = null;
    } else {
      signUPViewModelErrorState.mobile = 'Enter A Valid Number';
    }
  }

  @action
  validatePassowrd(String pass) {
    if (pass.length >= 6) {
      signUPViewModelErrorState.pass = null;
    } else {
      signUPViewModelErrorState.pass = 'Enter At-lest 6 digits';
    }
  }

  @action
  validateConfirmPassowrd(String confirmpass) {
    if (confirmpass.length >= 6) {
      signUPViewModelErrorState.confirmpass = null;
    } else {
      signUPViewModelErrorState.confirmpass = 'Enter At-lest 6 digits';
    }
  }
}

class SignUPViewModelErrorState = _SignUPViewModelErrorState
    with _$SignUPViewModelErrorState;

abstract class _SignUPViewModelErrorState with Store {
  @observable
  String? username;
  @observable
  String? mobile;
  @observable
  String? pass;
  @observable
  String? confirmpass;

  @computed
  bool get hasErrors =>
      username != null || pass != null || mobile != null || confirmpass != null;
}
