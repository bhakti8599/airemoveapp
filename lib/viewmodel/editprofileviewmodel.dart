import 'package:mobx/mobx.dart';
import 'package:validators/validators.dart';

part 'editprofileviewmodel.g.dart';

class EditProfileViewModel = _EditProfileViewModel with _$EditProfileViewModel;

abstract class _EditProfileViewModel with Store {
  EditProfileViewModelErrorState editProfileViewModelErrorState =
      EditProfileViewModelErrorState();

  @observable
  bool isLoading = false;

  @observable
  String name = '';

  @observable
  String address = '';
  @observable
  String city = '';
  @observable
  String gender = '';
  @observable
  String email = '';
  @observable
  String mobile = '';

  List<ReactionDisposer>? _disposers;

  @action
  setName(String value) {
    name = value;
  }

  @action
  setAddress(String value) {
    address = value;
  }

  @action
  setMobile(String value) {
    mobile = value;
  }

  @action
  setCity(String value) {
    city = value;
  }

  @action
  setGender(String value) {
    gender = value;
  }

  @action
  setEmail(String value) {
    email = value;
  }

  @action
  void setupValidations() {
    _disposers = [
      reaction((_) => name, validateName),
      reaction((_) => mobile, validateMobile),
      // reaction((_) => pass, validatePassowrd),
      // reaction((_) => confirmpass, validateConfirmPassowrd),
    ];
  }

  @action
  void disposeValidations() {
    _disposers!.clear();
  }

  @action
  validateName(String name) {
    if (isAlpha(name)) {
      editProfileViewModelErrorState.name = null;
    } else {
      editProfileViewModelErrorState.name = 'Enter A Valid Name';
    }
  }

  @action
  validateMobile(String mobile) {
    if (isNumeric(mobile)) {
      editProfileViewModelErrorState.mobile = null;
    } else {
      editProfileViewModelErrorState.mobile = 'Enter A Valid Number';
    }
  }
  //
  // @action
  // validateAddress(String address) {
  //   if (pass.length >= 6) {
  //     signUPViewModelErrorState.pass = null;
  //   } else {
  //     signUPViewModelErrorState.pass = 'Enter At-lest 6 digits';
  //   }
  // }

//   @action
//   validateConfirmPassowrd(String confirmpass) {
//     if (confirmpass.length >= 6) {
//       signUPViewModelErrorState.confirmpass = null;
//     } else {
//       signUPViewModelErrorState.confirmpass = 'Enter At-lest 6 digits';
//     }
  // }
}

class EditProfileViewModelErrorState = _EditProfileViewModelErrorState
    with _$EditProfileViewModelErrorState;

abstract class _EditProfileViewModelErrorState with Store {
  @observable
  String? name;
  @observable
  String? address;
  @observable
  String? city;
  @observable
  String? gender;
  @observable
  String? email;
  @observable
  String? mobile;

  @computed
  bool get hasErrors =>
      name != null ||
      address != null ||
      mobile != null ||
      city != null ||
      gender != null ||
      email != null;
}
