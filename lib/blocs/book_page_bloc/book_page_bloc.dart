import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hb/pages/order_paid_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/book_page_model.dart';
import '../../models/rest_client.dart';
import '../../models/tourist_view_model.dart';

part 'book_page_bloc.freezed.dart';
part 'book_page_event.dart';
part 'book_page_state.dart';

class BookPageBloc extends Bloc<BookPageEvent, BookPageState> {
  BookPageBloc() : super(BookPageState.initial()) {
    on<_Started>(_started);
    add(const _Started());

    on<_BackButtonPressed>(_backButtonPressed);
    on<_EmailValidated>(_emailValidated);
    on<_PhoneValidated>(_phoneValidated);
    on<_AddTouristButtonPressed>(_addTouristButtonPressed);
    on<_PayButtonPressed>(_payButtonPressed);
    on<_TouristValidateRequested>(_touristValidateRequested);
    on<_CustomerPhoneUpdated>(_customerPhoneUpdated);
    on<_CustomerEmailUpdated>(_customerEmailUpdated);
    on<_TouristNameUpdated>(_touristNameUpdated);
    on<_TouristLastNameUpdated>(_touristLastNameUpdated);
    on<_TouristBirthDateUpdated>(_touristBirthDateUpdated);
    on<_TouristCitizenshipUpdated>(_touristCitizenshipUpdated);
    on<_TouristPassportNumberUpdated>(_touristPassportNumberUpdated);
    on<_TouristPassportDateUpdated>(_touristPassportDateUpdated);
  }

  final GlobalKey<FormState> customerFormKey = GlobalKey<FormState>();

  final Pattern _emailPattern =
      r"^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$";

  final String _phoneMask = '(***) ***-**-**';

  bool emailValid(String? email) {
    final bool hasMatch =
        RegExp(_emailPattern.toString()).hasMatch(email ?? '');
    add(BookPageEvent.emailValidated(hasMatch));
    return hasMatch;
  }

  bool phoneValid(String? phone) {
    final bool isValid = isPhoneValid('+7 $phone');
    add(BookPageEvent.phoneValidated(isValid));
    return isValid;
  }

  bool touristValid(String? value) {
    if (value == null || value.isEmpty) return false;
    return true;
  }

  FutureOr<void> _started(
    _Started event,
    Emitter<BookPageState> emit,
  ) async {
    final client = RestClient(Modular.get<Dio>());
    final BookPageModel book = await client.getBook();

    emit(state.copyWith(
      bookPageModel: book,
      loading: false,
    ));
  }

  FutureOr<void> _backButtonPressed(
    _BackButtonPressed event,
    Emitter<BookPageState> emit,
  ) {
    Modular.to.pop();
  }

  FutureOr<void> _emailValidated(
    _EmailValidated event,
    Emitter<BookPageState> emit,
  ) {
    emit(state.copyWith(emailError: !event.isValid));
  }

  FutureOr<void> _addTouristButtonPressed(
    _AddTouristButtonPressed event,
    Emitter<BookPageState> emit,
  ) {
    final List<TouristViewModel> tourists = List.from(state.tourists);

    final int length = tourists.length;

    tourists.add(TouristViewModel.initial().copyWith(id: length));

    emit(state.copyWith(tourists: tourists));
  }

  FutureOr<void> _payButtonPressed(
    _PayButtonPressed event,
    Emitter<BookPageState> emit,
  ) {
    final List<TouristViewModel> tourists = List.from(state.tourists);

    final List<TouristViewModel> updatedTourists = tourists.map((e) {
      return e.copyWith(
        firstName: e.firstName ?? '',
        lastName: e.lastName ?? '',
        birthDate: e.birthDate ?? '',
        citizenship: e.citizenship ?? '',
        passportNumber: e.passportNumber ?? '',
        passportDate: e.passportDate ?? '',
      );
    }).toList();

    emit(state.copyWith(tourists: updatedTourists));

    final bool isCustomerValid = customerFormKey.currentState!.validate();

    final List<bool> touristValidations = [];
    for (final element in state.tourists) {
      touristValidations.add(element.formKey.currentState!.validate());
    }

    final Iterable<bool> notValid =
        touristValidations.where((element) => element == false);

    if (notValid.isNotEmpty || !isCustomerValid) return null;

    Modular.to.pushNamed(OrderPaidPage.path);
  }

  FutureOr<void> _phoneValidated(
    _PhoneValidated event,
    Emitter<BookPageState> emit,
  ) {
    emit(state.copyWith(phoneError: !event.isValid));
  }

  FutureOr<void> _touristValidateRequested(
    _TouristValidateRequested event,
    Emitter<BookPageState> emit,
  ) {
    final List<TouristViewModel> tourists = List.from(state.tourists);

    for (final element in tourists) {
      element.formKey.currentState!.validate();
    }

    final List<TouristViewModel> updatedTourists = tourists.map((e) {
      return e.copyWith(
        firstName: e.firstName ?? '',
        lastName: e.lastName ?? '',
        birthDate: e.birthDate ?? '',
        citizenship: e.citizenship ?? '',
        passportNumber: e.passportNumber ?? '',
        passportDate: e.passportDate ?? '',
      );
    }).toList();

    emit(state.copyWith(tourists: updatedTourists));
  }

  FutureOr<void> _touristNameUpdated(
    _TouristNameUpdated event,
    Emitter<BookPageState> emit,
  ) {
    final List<TouristViewModel> tourists = List.from(state.tourists);
    final TouristViewModel tourist = tourists[event.touristId];

    tourists[event.touristId] = tourist.copyWith(firstName: event.text);

    emit(state.copyWith(tourists: tourists));
  }

  FutureOr<void> _touristLastNameUpdated(
    _TouristLastNameUpdated event,
    Emitter<BookPageState> emit,
  ) {
    final List<TouristViewModel> tourists = List.from(state.tourists);
    final TouristViewModel tourist = tourists[event.touristId];

    tourists[event.touristId] = tourist.copyWith(lastName: event.text);

    emit(state.copyWith(tourists: tourists));
  }

  FutureOr<void> _touristBirthDateUpdated(
    _TouristBirthDateUpdated event,
    Emitter<BookPageState> emit,
  ) {
    final List<TouristViewModel> tourists = List.from(state.tourists);
    final TouristViewModel tourist = tourists[event.touristId];

    tourists[event.touristId] = tourist.copyWith(birthDate: event.text);

    emit(state.copyWith(tourists: tourists));
  }

  FutureOr<void> _touristCitizenshipUpdated(
    _TouristCitizenshipUpdated event,
    Emitter<BookPageState> emit,
  ) {
    final List<TouristViewModel> tourists = List.from(state.tourists);
    final TouristViewModel tourist = tourists[event.touristId];

    tourists[event.touristId] = tourist.copyWith(citizenship: event.text);

    emit(state.copyWith(tourists: tourists));
  }

  FutureOr<void> _touristPassportNumberUpdated(
    _TouristPassportNumberUpdated event,
    Emitter<BookPageState> emit,
  ) {
    final List<TouristViewModel> tourists = List.from(state.tourists);
    final TouristViewModel tourist = tourists[event.touristId];

    tourists[event.touristId] = tourist.copyWith(passportNumber: event.text);

    emit(state.copyWith(tourists: tourists));
  }

  FutureOr<void> _touristPassportDateUpdated(
    _TouristPassportDateUpdated event,
    Emitter<BookPageState> emit,
  ) {
    final List<TouristViewModel> tourists = List.from(state.tourists);
    final TouristViewModel tourist = tourists[event.touristId];

    tourists[event.touristId] = tourist.copyWith(passportDate: event.text);

    emit(state.copyWith(tourists: tourists));
  }

  FutureOr<void> _customerPhoneUpdated(
    _CustomerPhoneUpdated event,
    Emitter<BookPageState> emit,
  ) {
    final String text = event.text;

    final String? formatted = formatAsPhoneNumber(text);

    final String phoneMask = _phoneMask.substring(text.length);

    emit(
      state.copyWith(
        phone: text,
        phoneInvisible: formatted!,
        phoneMask: phoneMask,
      ),
    );
  }

  FutureOr<void> _customerEmailUpdated(
    _CustomerEmailUpdated event,
    Emitter<BookPageState> emit,
  ) {
    emit(state.copyWith(email: event.text));
  }
}
