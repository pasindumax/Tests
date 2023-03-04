enum DeliveryMethod { sameDay, standard, express }

extension DeliveryMethodExtension on DeliveryMethod {
  int get id {
    switch (this) {
      case DeliveryMethod.sameDay:
        return 1;
      case DeliveryMethod.standard:
        return 2;
      case DeliveryMethod.express:
        return 3;
    }
  }

  String get deliveryMethoNname {
    switch (this) {
      case DeliveryMethod.sameDay:
        return 'Same Day';
      case DeliveryMethod.standard:
        return 'Standard';
      case DeliveryMethod.express:
        return 'Express';
    }
  }

  DeliveryMethod statusEnum(int value) {
    switch (value) {
      case 1:
        return DeliveryMethod.sameDay;
      case 2:
        return DeliveryMethod.standard;
      case 3:
        return DeliveryMethod.express;
      default:
        return DeliveryMethod.sameDay;
    }
  }
}
