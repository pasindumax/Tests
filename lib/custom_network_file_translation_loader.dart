import 'package:flutter/widgets.dart';
import 'package:flutter_i18n/loaders/decoders/json_decode_strategy.dart';
import 'package:flutter_i18n/loaders/network_file_translation_loader.dart';

class CustomNetworkFileTranslationLoader extends NetworkFileTranslationLoader {
  CustomNetworkFileTranslationLoader({required baseUri})
      : super(
            baseUri: baseUri,
            decodeStrategies: [JsonDecodeStrategy()],
            useCountryCode: false,
            fallbackFile: "en",
            forcedLocale: const Locale('en'));

  @override
  Uri resolveUri(final String fileName, final String extension) {
    return baseUri;
  }
}
