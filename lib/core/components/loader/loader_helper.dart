import 'package:pasindu_sample_app/core/components/loader/default_loader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class LoaderHelper {
  bool isVisibleCircularProgressBar = false;

  void show(
      {final String? loadingTitle,
      final String? loadingDescription,
      required final BuildContext? parentContext}) {
    if (isVisibleCircularProgressBar) {
      SchedulerBinding.instance.addPostFrameCallback((_) async {
        Navigator.pop(parentContext!);
      });
    }

    isVisibleCircularProgressBar = true;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      showCupertinoModalPopup(
          barrierColor: Colors.white70,
          context: parentContext!,
          builder: (context) {
            return WillPopScope(
                onWillPop: () {
                  return Future.value(false);
                },
                child: DefaultLoader(
                  loadingTitle: loadingTitle ??
                      "SHOULD REPLACED", //S.of(context).defaultLoadingTitle,
                ));
          });
      /*showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: parentContext!,
          isDismissible: false,
          enableDrag: false,
          builder: (BuildContext bc) {
            return WillPopScope(
              onWillPop: () {
                return Future.value(false);
              },
              child: Loader(
                //key: key,
                loadingTitle: loadingTitle,
                loadingDescription: loadingDescription,
              ),
            );
          });*/
    });
  }

  /* void showPress(BuildContext context,String? loadingTitle){
    showCupertinoModalPopup(
        context: context,
        builder: (context){
          return WillPopScope(
              onWillPop: () {
                return Future.value(false);
              },
              child: DefaultLoader(
                loadingTitle: loadingTitle,
              )
          );
    });
  }*/

  void hide(BuildContext parentContext) {
    // WidgetsBinding.instance?.addPostFrameCallback((_) {
    if (isVisibleCircularProgressBar) {
      isVisibleCircularProgressBar = false;
      Navigator.pop(parentContext);
    }
    //});
  }
}
