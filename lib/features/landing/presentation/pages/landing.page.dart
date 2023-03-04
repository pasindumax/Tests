import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pasindu_sample_app/core/components/avatar/avatar.component.dart';
import 'package:pasindu_sample_app/core/components/bar_button/bar_button.component.dart';
import 'package:pasindu_sample_app/core/components/base_app_bar/base_app_bar.component.dart';
import 'package:pasindu_sample_app/core/components/loader/loader_helper.dart';
import 'package:pasindu_sample_app/core/components/message/message_helper.dart';
import 'package:pasindu_sample_app/features/landing/presentation/components/list_card/card_item.component.dart';
import 'package:pasindu_sample_app/features/landing/presentation/mobx/landing.store.dart';
import 'package:pasindu_sample_app/generated/l10n.dart';

import 'package:pasindu_sample_app/injection_container.dart';
import 'package:mobx/mobx.dart';
import 'package:pasindu_sample_app/store/theme_store/theme.store.dart';
import 'package:pasindu_sample_app/theme/theme_values/theme_variation_type.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final LandingStore _store = di();
  final List<ReactionDisposer> _disposers = [];
  final MessageHelper messageHelper = di();
  final ThemeStore ts = di();
  final LoaderHelper loaderHelper = di();

  @override
  void initState() {
    _disposers.add(reaction((_) => _store.isLoading, (bool? loading) {
      if (loading == true) {
        return loaderHelper.show(
            parentContext: context, loadingTitle: 'Loading');
      }
      loaderHelper.hide(context);
      if (_store.commonError != null) {
        messageHelper.show(
            message: '${_store.commonError}',
            ts: ts,
            context: context,
            isDismissible: false,
            isDraggable: false,
            themeVariationType: ThemeVariationType.error,
            onTapSubmitCallback: () {});
      }
    }));

    _store.init(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: 'List',
      ),
      body: SingleChildScrollView(
        child: _renderLIstContainer(
          context,
        ),
      ),
    );
  }

  Widget _renderLIstContainer(
    BuildContext context,
  ) {
    return Observer(
      builder: (_) => RefreshIndicator(
        onRefresh: () => _store.getNews(),
        child: Column(
          children: [
            _renderProfileDetails(),
            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _store.newstList?.length,
              itemBuilder: (context, index) {
                return ListItem(
                  news: _store.newstList?[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _renderProfileDetails() {
    return Column(
      children: [
        _renderProfileImage(),
        _renderProfileName(),
        _renderProfileEmail(),
        _renderSignInWithFacebookButton()
      ],
    );
  }

  Widget _renderProfileImage() {
    return Padding(
      padding: EdgeInsets.all(2.w),
      child: Avatar(
        size: 40.w,
        source: _store.facebook?.picture?.data?.url,
      ),
    );
  }

  Widget _renderProfileName() {
    return Container(
      alignment: Alignment.center,
      child: AutoSizeText(
        _store.facebook?.name ?? '',
        style: Theme.of(context).primaryTextTheme.headline4,
      ),
    );
  }

  Widget _renderProfileEmail() {
    return Container(
      alignment: Alignment.center,
      child: AutoSizeText(
        _store.facebook?.email ?? '',
        style: Theme.of(context).primaryTextTheme.bodyText2,
      ),
    );
  }

  Widget _renderSignInWithFacebookButton() {
    return Padding(
      padding: EdgeInsets.all(2.w),
      child: BarButton(
        title: S.of(context).landingLogout,
        height: 12.w,
        onTap: () {
          _store.getFBLogout(context);
        },
      ),
    );
  }
}
