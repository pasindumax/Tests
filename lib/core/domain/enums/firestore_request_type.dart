enum FirestoreRequestType { none, updateLocation, requestForRide }

extension FirestoreRequestTypeExtension on FirestoreRequestType {
  int get id {
    switch (this) {
      case FirestoreRequestType.none:
        return 1;
      case FirestoreRequestType.updateLocation:
        return 2;
      case FirestoreRequestType.requestForRide:
        return 3;
    }
  }

  String get firestoreRequestTypeName {
    switch (this) {
      case FirestoreRequestType.none:
        return 'none';
      case FirestoreRequestType.updateLocation:
        return 'update_location';
      case FirestoreRequestType.requestForRide:
        return 'request_for_ride';
    }
  }

  FirestoreRequestType statusEnum(int value) {
    switch (value) {
      case 1:
        return FirestoreRequestType.none;
      case 2:
        return FirestoreRequestType.updateLocation;
      case 3:
        return FirestoreRequestType.requestForRide;
      default:
        return FirestoreRequestType.none;
    }
  }
}
