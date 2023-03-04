enum FirestoreRequestActions { none, locationUpdated, accept, reject }

extension FirestoreRequestTypeExtension on FirestoreRequestActions {
  int get id {
    switch (this) {
      case FirestoreRequestActions.none:
        return 1;
      case FirestoreRequestActions.locationUpdated:
        return 2;
      case FirestoreRequestActions.accept:
        return 3;
      case FirestoreRequestActions.reject:
        return 4;
    }
  }

  String get firestoreRequestActionsName {
    switch (this) {
      case FirestoreRequestActions.none:
        return 'none';
      case FirestoreRequestActions.locationUpdated:
        return 'location_updated';
      case FirestoreRequestActions.accept:
        return 'accept';
      case FirestoreRequestActions.reject:
        return 'reject';
    }
  }

  FirestoreRequestActions statusEnum(int value) {
    switch (value) {
      case 1:
        return FirestoreRequestActions.none;
      case 2:
        return FirestoreRequestActions.locationUpdated;
      case 3:
        return FirestoreRequestActions.accept;
      case 4:
        return FirestoreRequestActions.reject;
      default:
        return FirestoreRequestActions.none;
    }
  }
}
