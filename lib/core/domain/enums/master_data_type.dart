enum MasterDataType {
  auditType,
  contactType,
  gender,
  notificationType,
  otpAction,
  otpStatus,
  otpSendMethod,
  registrationType,
  signInType,
  signOutType,
  title,
  userAction,
  userBranchesType,
  userGroup,
  userPasswordAction,
  userStatus,
  userType,
  weekDay
}

extension ConnectionStatusExtension on MasterDataType {
  String get name {
    switch (this) {
      case MasterDataType.auditType:
        return 'AUDIT-T';
      case MasterDataType.contactType:
        return 'CON-T';
      case MasterDataType.gender:
        return 'GEN';
      case MasterDataType.notificationType:
        return 'NOTIFI-TPE';
      case MasterDataType.otpAction:
        return 'OTP-A';
      case MasterDataType.otpStatus:
        return 'OTP-S';
      case MasterDataType.otpSendMethod:
        return 'OTP-SM';
      case MasterDataType.registrationType:
        return 'REG-T';
      case MasterDataType.signInType:
        return 'SIGNI-T';
      case MasterDataType.signOutType:
        return 'SIGNO-T';
      case MasterDataType.title:
        return 'TITLE';
      case MasterDataType.userAction:
        return 'USR-A';
      case MasterDataType.userBranchesType:
        return 'USR-BT';
      case MasterDataType.userGroup:
        return 'USR-G';
      case MasterDataType.userPasswordAction:
        return 'USR-S';
      case MasterDataType.userStatus:
        return 'USR-T';
      case MasterDataType.userType:
        return 'WEEK-DAY';
      case MasterDataType.weekDay:
        return 'AUDIT-T';
    }
  }
}
