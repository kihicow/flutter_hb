part of 'order_paid_page_bloc.dart';

@freezed
class OrderPaidPageEvent with _$OrderPaidPageEvent {
  const factory OrderPaidPageEvent.started() = _Started;

  const factory OrderPaidPageEvent.backButtonPressed() = _BackButtonPressed;

  const factory OrderPaidPageEvent.superButtonPressed() = _SuperButtonPressed;
}
