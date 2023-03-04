// ignore_for_file: invalid_annotation_target, constant_identifier_names
enum Language { ENGLISH, SINHALA, TAMIL }

extension LanguageExtension on Language {
  int get id {
    switch (this) {
      case Language.ENGLISH:
        return 1;
      case Language.SINHALA:
        return 2;
      case Language.TAMIL:
        return 3;
    }
  }

  Language languageById(int? id) {
    switch (id) {
      case 1:
        return Language.ENGLISH;
      case 2:
        return Language.SINHALA;
      case 3:
        return Language.TAMIL;
      default:
      return Language.ENGLISH;
    }
  }
}
