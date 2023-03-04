// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ThemeStore on _ThemeStore, Store {
  final _$tcAtom = Atom(name: '_ThemeStore.tc');

  @override
  BaseThemeConfig get tc {
    _$tcAtom.reportRead();
    return super.tc;
  }

  @override
  set tc(BaseThemeConfig value) {
    _$tcAtom.reportWrite(value, super.tc, () {
      super.tc = value;
    });
  }

  final _$_ThemeStoreActionController = ActionController(name: '_ThemeStore');

  @override
  void setThemeConfig(ThemeType themeType) {
    final _$actionInfo = _$_ThemeStoreActionController.startAction(
        name: '_ThemeStore.setThemeConfig');
    try {
      return super.setThemeConfig(themeType);
    } finally {
      _$_ThemeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tc: ${tc}
    ''';
  }
}
