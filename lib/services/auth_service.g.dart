// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_service.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthService on _AuthService, Store {
  final _$tokenAtom = Atom(name: '_AuthService.token');

  @override
  String get token {
    _$tokenAtom.context.enforceReadPolicy(_$tokenAtom);
    _$tokenAtom.reportObserved();
    return super.token;
  }

  @override
  set token(String value) {
    _$tokenAtom.context.conditionallyRunInAction(() {
      super.token = value;
      _$tokenAtom.reportChanged();
    }, _$tokenAtom, name: '${_$tokenAtom.name}_set');
  }

  final _$logedInUserAtom = Atom(name: '_AuthService.logedInUser');

  @override
  User get logedInUser {
    _$logedInUserAtom.context.enforceReadPolicy(_$logedInUserAtom);
    _$logedInUserAtom.reportObserved();
    return super.logedInUser;
  }

  @override
  set logedInUser(User value) {
    _$logedInUserAtom.context.conditionallyRunInAction(() {
      super.logedInUser = value;
      _$logedInUserAtom.reportChanged();
    }, _$logedInUserAtom, name: '${_$logedInUserAtom.name}_set');
  }

  final _$loginAsyncAction = AsyncAction('login');

  @override
  Future<LoginResponse> login(dynamic username, dynamic password) {
    return _$loginAsyncAction.run(() => super.login(username, password));
  }

  @override
  String toString() {
    final string =
        'token: ${token.toString()},logedInUser: ${logedInUser.toString()}';
    return '{$string}';
  }
}
