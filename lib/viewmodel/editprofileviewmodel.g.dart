// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editprofileviewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EditProfileViewModel on _EditProfileViewModel, Store {
  final _$isLoadingAtom = Atom(name: '_EditProfileViewModel.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$nameAtom = Atom(name: '_EditProfileViewModel.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$addressAtom = Atom(name: '_EditProfileViewModel.address');

  @override
  String get address {
    _$addressAtom.reportRead();
    return super.address;
  }

  @override
  set address(String value) {
    _$addressAtom.reportWrite(value, super.address, () {
      super.address = value;
    });
  }

  final _$cityAtom = Atom(name: '_EditProfileViewModel.city');

  @override
  String get city {
    _$cityAtom.reportRead();
    return super.city;
  }

  @override
  set city(String value) {
    _$cityAtom.reportWrite(value, super.city, () {
      super.city = value;
    });
  }

  final _$genderAtom = Atom(name: '_EditProfileViewModel.gender');

  @override
  String get gender {
    _$genderAtom.reportRead();
    return super.gender;
  }

  @override
  set gender(String value) {
    _$genderAtom.reportWrite(value, super.gender, () {
      super.gender = value;
    });
  }

  final _$emailAtom = Atom(name: '_EditProfileViewModel.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$mobileAtom = Atom(name: '_EditProfileViewModel.mobile');

  @override
  String get mobile {
    _$mobileAtom.reportRead();
    return super.mobile;
  }

  @override
  set mobile(String value) {
    _$mobileAtom.reportWrite(value, super.mobile, () {
      super.mobile = value;
    });
  }

  final _$_EditProfileViewModelActionController =
      ActionController(name: '_EditProfileViewModel');

  @override
  dynamic setName(String value) {
    final _$actionInfo = _$_EditProfileViewModelActionController.startAction(
        name: '_EditProfileViewModel.setName');
    try {
      return super.setName(value);
    } finally {
      _$_EditProfileViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setAddress(String value) {
    final _$actionInfo = _$_EditProfileViewModelActionController.startAction(
        name: '_EditProfileViewModel.setAddress');
    try {
      return super.setAddress(value);
    } finally {
      _$_EditProfileViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setMobile(String value) {
    final _$actionInfo = _$_EditProfileViewModelActionController.startAction(
        name: '_EditProfileViewModel.setMobile');
    try {
      return super.setMobile(value);
    } finally {
      _$_EditProfileViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCity(String value) {
    final _$actionInfo = _$_EditProfileViewModelActionController.startAction(
        name: '_EditProfileViewModel.setCity');
    try {
      return super.setCity(value);
    } finally {
      _$_EditProfileViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setGender(String value) {
    final _$actionInfo = _$_EditProfileViewModelActionController.startAction(
        name: '_EditProfileViewModel.setGender');
    try {
      return super.setGender(value);
    } finally {
      _$_EditProfileViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setEmail(String value) {
    final _$actionInfo = _$_EditProfileViewModelActionController.startAction(
        name: '_EditProfileViewModel.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_EditProfileViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setupValidations() {
    final _$actionInfo = _$_EditProfileViewModelActionController.startAction(
        name: '_EditProfileViewModel.setupValidations');
    try {
      return super.setupValidations();
    } finally {
      _$_EditProfileViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void disposeValidations() {
    final _$actionInfo = _$_EditProfileViewModelActionController.startAction(
        name: '_EditProfileViewModel.disposeValidations');
    try {
      return super.disposeValidations();
    } finally {
      _$_EditProfileViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic validateName(String name) {
    final _$actionInfo = _$_EditProfileViewModelActionController.startAction(
        name: '_EditProfileViewModel.validateName');
    try {
      return super.validateName(name);
    } finally {
      _$_EditProfileViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic validateMobile(String mobile) {
    final _$actionInfo = _$_EditProfileViewModelActionController.startAction(
        name: '_EditProfileViewModel.validateMobile');
    try {
      return super.validateMobile(mobile);
    } finally {
      _$_EditProfileViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
name: ${name},
address: ${address},
city: ${city},
gender: ${gender},
email: ${email},
mobile: ${mobile}
    ''';
  }
}

mixin _$EditProfileViewModelErrorState
    on _EditProfileViewModelErrorState, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_EditProfileViewModelErrorState.hasErrors'))
          .value;

  final _$nameAtom = Atom(name: '_EditProfileViewModelErrorState.name');

  @override
  String? get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String? value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$addressAtom = Atom(name: '_EditProfileViewModelErrorState.address');

  @override
  String? get address {
    _$addressAtom.reportRead();
    return super.address;
  }

  @override
  set address(String? value) {
    _$addressAtom.reportWrite(value, super.address, () {
      super.address = value;
    });
  }

  final _$cityAtom = Atom(name: '_EditProfileViewModelErrorState.city');

  @override
  String? get city {
    _$cityAtom.reportRead();
    return super.city;
  }

  @override
  set city(String? value) {
    _$cityAtom.reportWrite(value, super.city, () {
      super.city = value;
    });
  }

  final _$genderAtom = Atom(name: '_EditProfileViewModelErrorState.gender');

  @override
  String? get gender {
    _$genderAtom.reportRead();
    return super.gender;
  }

  @override
  set gender(String? value) {
    _$genderAtom.reportWrite(value, super.gender, () {
      super.gender = value;
    });
  }

  final _$emailAtom = Atom(name: '_EditProfileViewModelErrorState.email');

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$mobileAtom = Atom(name: '_EditProfileViewModelErrorState.mobile');

  @override
  String? get mobile {
    _$mobileAtom.reportRead();
    return super.mobile;
  }

  @override
  set mobile(String? value) {
    _$mobileAtom.reportWrite(value, super.mobile, () {
      super.mobile = value;
    });
  }

  @override
  String toString() {
    return '''
name: ${name},
address: ${address},
city: ${city},
gender: ${gender},
email: ${email},
mobile: ${mobile},
hasErrors: ${hasErrors}
    ''';
  }
}
