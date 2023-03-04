import 'package:equatable/equatable.dart';


class ValidationConfig extends Equatable{
  final String? customErrorMessage;
  final String? customSuccessMessage;
  final bool? successMessageIsRequired;
  ValidationConfig({this.customErrorMessage,this.customSuccessMessage,this.successMessageIsRequired});
  @override
  List<Object?> get props => [customErrorMessage,customSuccessMessage,successMessageIsRequired];
}