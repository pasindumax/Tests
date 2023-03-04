import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:pasindu_sample_app/core/components/bar_button/bar_button.component.dart';
import 'package:pasindu_sample_app/core/components/default_text_field/default_text_field.component.dart';
import 'package:pasindu_sample_app/core/components/loader/loader_helper.dart';
import 'package:pasindu_sample_app/core/components/message/message_helper.dart';
import 'package:pasindu_sample_app/features/auth/signin/presentation/mobx/sign_in.store.dart';
import 'package:pasindu_sample_app/generated/l10n.dart';
import 'package:pasindu_sample_app/injection_container.dart';
import 'package:pasindu_sample_app/store/theme_store/theme.store.dart';
import 'package:pasindu_sample_app/theme/theme_values/base_images.dart';

import 'package:pasindu_sample_app/theme/theme_values/theme_variation_type.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final SignInStore _store = di();
  final MessageHelper messageHelper = di();
  final LoaderHelper loaderHelper = di();
  final ThemeStore ts = di();
  final List<ReactionDisposer> _disposers = [];
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _store.init(context);
    super.initState();

    _disposers.add(reaction((_) => _store.isLoading, (bool? loading) {
      if (loading == true) {
        return loaderHelper.show(
            parentContext: context, loadingTitle: 'Loading');
      }
      loaderHelper.hide(context);
      if (_store.authenticationError != null) {
        messageHelper.show(
            message: '${_store.authenticationError}',
            ts: ts,
            context: context,
            isDismissible: false,
            isDraggable: false,
            themeVariationType: ThemeVariationType.error,
            onTapSubmitCallback: () {});
      }
    }));

    _disposers.add(reaction((_) => _store.getConnectionError, (String? value) {
      if (value != null) {
        messageHelper.show(
            message: '${_store.getConnectionError}',
            context: context,
            title: 'Error Message',
            submitButtonTitle: 'Close App',
            isDismissible: false,
            isDraggable: false,
            themeVariationType: ThemeVariationType.error,
            onTapSubmitCallback: () {
              _store.exitApp(context);
            });
      }
    }));
    WidgetsBinding.instance.addPostFrameCallback((_) => _store.initUI(context));
  }

  @override
  void dispose() {
    for (var disposer in _disposers) {
      disposer();
    }
    _store.destroy(context);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ts = Provider.of<ThemeStore>(context);

    return Scaffold(
      body: _renderBody(context, ts),
    );
  }

  Widget _renderBody(BuildContext context, ThemeStore ts) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(
              width: 100.w,
              height: 30.h,
              child: _renderTopContainer(context, ts),
            ),
            _renderFormContainer(context, ts)
          ],
        ),
      ),
    ));
  }

  Widget _renderTopContainer(BuildContext context, ThemeStore ts) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [_renderLogo(context, ts), _renderBrandTitle(context, ts)],
    );
  }

  Widget _renderLogo(BuildContext context, ThemeStore ts) {
    return Image.asset(
      BaseImages.logo,
      fit: BoxFit.contain,
      width: 40.w,
      height: 12.h,
    );
  }

  Widget _renderBrandTitle(BuildContext context, ThemeStore ts) {
    return Text(
      S.of(context).signinTestApp,
      style: Theme.of(context).primaryTextTheme.headline4,
    );
  }

  Widget _renderFormContainer(BuildContext context, ThemeStore ts) {
    return Container(
      width: 100.w,
      padding: EdgeInsets.only(left: 8.w, right: 8.w, top: 4.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).signinSignInToContinue,
            style: Theme.of(context).primaryTextTheme.headline3,
          ),
          SizedBox(
            height: 4.w,
          ),
          _renderPhoneFieldContainer(context, ts),
          SizedBox(
            height: 4.w,
          ),
          _renderPasswordFieldContainer(context, ts),
          SizedBox(
            height: 4.w,
          ),
          _renderSignInButton(context, ts),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 2.w),
              child: Text(
                S.of(context).signinOR,
                style: Theme.of(context).primaryTextTheme.headline5,
              ),
            ),
          ),
          _renderSignInWithFacebookButton(context, ts),
          _renderForgotPassword(context, ts)
        ],
      ),
    );
  }

  Widget _renderPhoneFieldContainer(BuildContext context, ThemeStore ts) {
    return Observer(
        builder: (_) => DefaultTextField(
              isMandatory: true,
              labelText: S.of(context).signinUserName,
              textInputAction: TextInputAction.done,
              validationMessage: _store.error.mobileNumber,
              setValue: (String? value) => _store.setMobileNumber(value),
            ));
  }

  Widget _renderPasswordFieldContainer(BuildContext context, ThemeStore ts) {
    return Observer(
        builder: (_) => DefaultTextField(
              isMandatory: true,
              labelText: S.of(context).signinPassword,
              textInputAction: TextInputAction.done,
              validationMessage: _store.error.password,
              obscureText: true,
              setValue: (String? value) => _store.setPassword(value),
              onFieldSubmitted: (value) => _store.signIn(context),
            ));
  }

  Widget _renderSignInButton(BuildContext context, ThemeStore ts) {
    return BarButton(
      title: S.of(context).signin,
      height: 12.w,
      onTap: () {
        if (_formKey.currentState!.validate()) {
          _store.signIn(context);
        }
      },
    );
  }

  Widget _renderSignInWithFacebookButton(BuildContext context, ThemeStore ts) {
    return BarButton(
      title: S.of(context).signSignInWithFacebook,
      height: 12.w,
      onTap: () {
        _store.faceBooksignIn(context);
      },
    );
  }

  Widget _renderForgotPassword(BuildContext context, ThemeStore ts) {
    return Align(
      alignment: Alignment.center,
      child: TextButton(
        onPressed: () => {},
        child: Text(
          S.of(context).forgotPassword,
        ),
      ),
    );
  }
}
