part of 'book_page_bloc.dart';

@freezed
class BookPageEvent with _$BookPageEvent {
  const factory BookPageEvent.started() = _Started;

  const factory BookPageEvent.backButtonPressed() = _BackButtonPressed;

  const factory BookPageEvent.emailValidated(
    bool isValid,
  ) = _EmailValidated;

  const factory BookPageEvent.phoneValidated(
    bool isValid,
  ) = _PhoneValidated;

  const factory BookPageEvent.addTouristButtonPressed() =
      _AddTouristButtonPressed;

  const factory BookPageEvent.payButtonPressed() = _PayButtonPressed;

  const factory BookPageEvent.touristValidateRequested(
    int touristId,
  ) = _TouristValidateRequested;

  const factory BookPageEvent.customerPhoneUpdated({
    required String text,
  }) = _CustomerPhoneUpdated;

  const factory BookPageEvent.customerEmailUpdated({
    required String text,
  }) = _CustomerEmailUpdated;

  const factory BookPageEvent.touristNameUpdated({
    required int touristId,
    required String text,
  }) = _TouristNameUpdated;

  const factory BookPageEvent.touristLastNameUpdated({
    required int touristId,
    required String text,
  }) = _TouristLastNameUpdated;

  const factory BookPageEvent.touristBirthDateUpdated({
    required int touristId,
    required String text,
  }) = _TouristBirthDateUpdated;

  const factory BookPageEvent.touristCitizenshipUpdated({
    required int touristId,
    required String text,
  }) = _TouristCitizenshipUpdated;

  const factory BookPageEvent.touristPassportNumberUpdated({
    required int touristId,
    required String text,
  }) = _TouristPassportNumberUpdated;

  const factory BookPageEvent.touristPassportDateUpdated({
    required int touristId,
    required String text,
  }) = _TouristPassportDateUpdated;
}
