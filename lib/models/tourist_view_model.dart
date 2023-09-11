import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tourist_view_model.freezed.dart';

@freezed
class TouristViewModel with _$TouristViewModel {
  const factory TouristViewModel({
    required GlobalKey<FormState> formKey,
    required bool isExpanded,
    required int id,
    required String? firstName,
    required String? lastName,
    required String? birthDate,
    required String? citizenship,
    required String? passportNumber,
    required String? passportDate,
  }) = _TouristViewModel;

  const TouristViewModel._();

  factory TouristViewModel.initial() => TouristViewModel(
        formKey: GlobalKey<FormState>(),
        isExpanded: false,
        id: 0,
        firstName: null,
        lastName: null,
        birthDate: null,
        citizenship: null,
        passportNumber: null,
        passportDate: null,
      );

  bool get firstNameError => firstName != null && firstName!.isEmpty;
  bool get lastNameError => lastName != null && lastName!.isEmpty;
  bool get birthDateError => birthDate != null && birthDate!.isEmpty;
  bool get citizenshipError => citizenship != null && citizenship!.isEmpty;
  bool get passportNumberError =>
      passportNumber != null && passportNumber!.isEmpty;
  bool get passportDateError => passportDate != null && passportDate!.isEmpty;
}
