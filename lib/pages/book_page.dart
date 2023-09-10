import 'package:expansion_widget/expansion_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hb/app_style.dart';
import 'package:flutter_hb/widgets/module_widget.dart';
import 'package:flutter_hb/widgets/rating_pane.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

import '../blocs/book_page_bloc/book_page_bloc.dart';
import '../models/tourist_view_model.dart';
import '../widgets/bottom_button.dart';

class BookPage extends StatelessWidget {
  const BookPage({super.key});

  static const String path = '/book';

  static Widget route(BuildContext context) => const BookPage();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Modular.get<BookPageBloc>(),
      child: const _View(),
    );
  }
}

BookPageBloc _read(BuildContext context) =>
    ReadContext(context).read<BookPageBloc>();

BookPageBloc _watch(BuildContext context) =>
    WatchContext(context).watch<BookPageBloc>();

class _View extends StatelessWidget {
  const _View();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Бронирование'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            _read(context).add(const BookPageEvent.backButtonPressed());
          },
        ),
      ),
      body: _watch(context).state.loading ? Container() : const _Body(),
      bottomNavigationBar: _watch(context).state.loading
          ? Container()
          : const _BottomNavigationBar(),
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  const _BottomNavigationBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      foregroundDecoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: AppStyle.dividerColor,
          ),
        ),
      ),
      color: AppStyle.moduleColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BottomButton(
          title: 'Оплатить ${toCurrencyString(
            _read(context).state.bookPageModel.finalPrice.toString(),
            mantissaLength: 0,
            thousandSeparator: ThousandSeparator.Space,
          )} ₽',
          onPressed: () {
            _read(context).add(const BookPageEvent.payButtonPressed());
          },
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      children: const [
        _HotelDescription(),
        SizedBox(height: 8.0),
        _Table(),
        SizedBox(height: 8.0),
        _CustomerInfo(),
        _Tourists(),
        SizedBox(height: 8.0),
        _AddTouristModule(),
        SizedBox(height: 8.0),
        _PriceModule(),
      ],
    );
  }
}

class _AddTouristModule extends StatelessWidget {
  const _AddTouristModule();

  @override
  Widget build(BuildContext context) {
    return ModuleWidget(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Добавить туриста',
            style: AppStyle.titleTextStyle,
          ),
          InkWell(
            onTap: () {
              _read(context).add(const BookPageEvent.addTouristButtonPressed());
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: AppStyle.addTouristPaneColor,
              ),
              height: 32,
              width: 32,
              child: const Icon(
                Icons.add,
                color: AppStyle.addTouristIconColor,
              ),
            ),
          )
        ],
      )
    ]);
  }
}

class _PriceModule extends StatelessWidget {
  const _PriceModule();

  @override
  Widget build(BuildContext context) {
    return ModuleWidget(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        children: [
          Table(
            children: [
              _priceTableRow(
                title: 'Тур',
                value: '${toCurrencyString(
                  _read(context).state.bookPageModel.tourPrice.toString(),
                  mantissaLength: 0,
                  thousandSeparator: ThousandSeparator.Space,
                )} ₽',
              ),
              _priceTableRow(
                title: 'Топливный сбор',
                value: '${toCurrencyString(
                  _read(context).state.bookPageModel.fuelCharge.toString(),
                  mantissaLength: 0,
                  thousandSeparator: ThousandSeparator.Space,
                )} ₽',
              ),
              _priceTableRow(
                title: 'Сервисный сбор',
                value: '${toCurrencyString(
                  _read(context).state.bookPageModel.serviceCharge.toString(),
                  mantissaLength: 0,
                  thousandSeparator: ThousandSeparator.Space,
                )} ₽',
              ),
              _priceTableRow(
                title: 'К оплате',
                value: '${toCurrencyString(
                  _read(context).state.bookPageModel.finalPrice.toString(),
                  mantissaLength: 0,
                  thousandSeparator: ThousandSeparator.Space,
                )} ₽',
                color: AppStyle.addressButtonColor,
              ),
            ],
          )
        ]);
  }
}

class _Tourists extends StatelessWidget {
  const _Tourists();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        _watch(context).state.tourists.length,
        (index) {
          final TouristViewModel tourist = _read(context).state.tourists[index];

          return Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: _TouristModule(tourist),
          );
        },
      ),
    );
  }
}

class _TouristModule extends StatelessWidget {
  const _TouristModule(this.tourist);

  final TouristViewModel tourist;

  @override
  Widget build(BuildContext context) {
    return ModuleWidget(
      children: [
        ExpansionWidget(
          initiallyExpanded: true,
          titleBuilder:
              (animationValue, easeInValue, isExpanded, toggleFunction) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Турист № ${tourist.id + 1}',
                  style: AppStyle.titleTextStyle,
                ),
                InkWell(
                  onTap: () {
                    toggleFunction();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: AppStyle.showHidePaneColor,
                    ),
                    height: 32,
                    width: 32,
                    child: isExpanded
                        ? const Icon(
                            Icons.keyboard_arrow_up_rounded,
                            color: AppStyle.showHideArrowColor,
                          )
                        : const Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: AppStyle.showHideArrowColor,
                          ),
                  ),
                ),
              ],
            );
          },
          content: Form(
            key: tourist.formKey,
            child: Column(
              children: [
                const SizedBox(height: 8.0),
                _TouristTextField(
                  labelText: 'Имя',
                  isError: tourist.firstNameError,
                  touristId: tourist.id,
                  onChanged: (text) {
                    _read(context).add(
                      BookPageEvent.touristNameUpdated(
                        touristId: tourist.id,
                        text: text,
                      ),
                    );
                  },
                ),
                _TouristTextField(
                  labelText: 'Фамилия',
                  isError: tourist.lastNameError,
                  touristId: tourist.id,
                  onChanged: (text) {
                    _read(context).add(
                      BookPageEvent.touristLastNameUpdated(
                        touristId: tourist.id,
                        text: text,
                      ),
                    );
                  },
                ),
                _TouristTextField(
                  labelText: 'Дата рождения',
                  isError: tourist.birthDateError,
                  touristId: tourist.id,
                  onChanged: (text) {
                    _read(context).add(
                      BookPageEvent.touristBirthDateUpdated(
                        touristId: tourist.id,
                        text: text,
                      ),
                    );
                  },
                ),
                _TouristTextField(
                  labelText: 'Гражданство',
                  isError: tourist.citizenshipError,
                  touristId: tourist.id,
                  onChanged: (text) {
                    _read(context).add(
                      BookPageEvent.touristCitizenshipUpdated(
                        touristId: tourist.id,
                        text: text,
                      ),
                    );
                  },
                ),
                _TouristTextField(
                  labelText: 'Номер загранпаспорта',
                  isError: tourist.passportNumberError,
                  touristId: tourist.id,
                  onChanged: (text) {
                    _read(context).add(
                      BookPageEvent.touristPassportNumberUpdated(
                        touristId: tourist.id,
                        text: text,
                      ),
                    );
                  },
                ),
                _TouristTextField(
                  textInputAction: TextInputAction.done,
                  needSubmit: true,
                  labelText: 'Срок действия загранпаспорта',
                  isError: tourist.passportDateError,
                  touristId: tourist.id,
                  onChanged: (text) {
                    _read(context).add(
                      BookPageEvent.touristPassportDateUpdated(
                        touristId: tourist.id,
                        text: text,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _TouristTextField extends StatelessWidget {
  const _TouristTextField({
    required this.labelText,
    required this.isError,
    required this.touristId,
    required this.onChanged,
    this.textInputAction = TextInputAction.next,
    this.needSubmit = false,
  });

  final String labelText;
  final bool isError;
  final int touristId;
  final ValueChanged<String> onChanged;
  final TextInputAction textInputAction;
  final bool needSubmit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: TextFormField(
        textInputAction: textInputAction,
        textCapitalization: TextCapitalization.sentences,
        style: AppStyle.textFieldTextStyle,
        autovalidateMode: isError ? AutovalidateMode.onUserInteraction : null,
        decoration: AppStyle.textFieldDecoration.copyWith(
          labelText: labelText,
          fillColor: isError
              ? AppStyle.errorColor
              : AppStyle.textFieldDecoration.fillColor,
        ),
        validator: (value) {
          if (_read(context).touristValid(value)) {
            return null;
          }
          return '';
        },
        onChanged: (value) {
          onChanged(value);
        },
        onEditingComplete: () {
          FocusScope.of(context).nextFocus();
        },
        onFieldSubmitted: (value) {
          if (!needSubmit) return;
          _read(context).add(BookPageEvent.touristValidateRequested(touristId));
        },
      ),
    );
  }
}

class _CustomerInfo extends StatelessWidget {
  const _CustomerInfo();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _read(context).customerFormKey,
      child: ModuleWidget(
        children: [
          const Text(
            'Информация о покупателе',
            style: AppStyle.titleTextStyle,
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            textInputAction: TextInputAction.next,
            style: AppStyle.textFieldTextStyle,
            decoration: AppStyle.textFieldDecoration.copyWith(
              prefixText: '+7',
              labelText: 'Номер телефона',
              hintText: '(***) ***-**-**',
              fillColor: _watch(context).state.phoneError
                  ? AppStyle.errorColor
                  : AppStyle.textFieldDecoration.fillColor,
            ),
            inputFormatters: [
              PhoneInputFormatter(defaultCountryCode: 'ru'),
            ],
            autovalidateMode: _watch(context).state.phoneError
                ? AutovalidateMode.onUserInteraction
                : null,
            onEditingComplete: () {
              FocusScope.of(context).nextFocus();
            },
            validator: (value) {
              if (_read(context).phoneValid(value)) {
                return null;
              }
              return '';
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              style: AppStyle.textFieldTextStyle,
              decoration: AppStyle.textFieldDecoration.copyWith(
                labelText: 'Почта',
                fillColor: _watch(context).state.emailError
                    ? AppStyle.errorColor
                    : AppStyle.textFieldDecoration.fillColor,
              ),
              autovalidateMode: _watch(context).state.emailError
                  ? AutovalidateMode.onUserInteraction
                  : null,
              onEditingComplete: () {
                _read(context).customerFormKey.currentState!.validate();
                FocusScope.of(context).unfocus();
              },
              validator: (value) {
                if (_read(context).emailValid(value)) {
                  return null;
                }
                return '';
              },
            ),
          ),
          const SizedBox(height: 8.0),
          const Text(
            'Эти данные никому не передаются. После оплаты мы вышлем чек на указанные вами номер и почту.',
            style: AppStyle.smallTextStyle,
          )
        ],
      ),
    );
  }
}

TableRow _priceTableRow({
  required String title,
  required String value,
  Color? color,
}) {
  return TableRow(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          title,
          style: AppStyle.subtitleTextStyle,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          value,
          style: color == null
              ? AppStyle.bodyTextStyle
              : AppStyle.bodyTextStyle.copyWith(color: color),
          textAlign: TextAlign.end,
        ),
      ),
    ],
  );
}

TableRow _descriptionTableRow({
  required String title,
  required String value,
}) {
  return TableRow(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          title,
          style: AppStyle.subtitleTextStyle,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          value,
          style: AppStyle.bodyTextStyle,
        ),
      ),
    ],
  );
}

class _Table extends StatelessWidget {
  const _Table();

  @override
  Widget build(BuildContext context) {
    return ModuleWidget(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      children: [
        Table(
          children: [
            _descriptionTableRow(
              title: 'Вылет из',
              value: _read(context).state.bookPageModel.departure,
            ),
            _descriptionTableRow(
              title: 'Страна, город',
              value: _read(context).state.bookPageModel.arrivalCountry,
            ),
            _descriptionTableRow(
              title: 'Даты',
              value:
                  '${_read(context).state.bookPageModel.tourDateStart} - ${_read(context).state.bookPageModel.tourDateStop}',
            ),
            _descriptionTableRow(
              title: 'Кол-во ночей',
              value:
                  '${_read(context).state.bookPageModel.numberOfNights} ночей',
            ),
            _descriptionTableRow(
              title: 'Отель',
              value: _read(context).state.bookPageModel.hotelName,
            ),
            _descriptionTableRow(
              title: 'Номер',
              value: _read(context).state.bookPageModel.room,
            ),
            _descriptionTableRow(
              title: 'Питание',
              value: _read(context).state.bookPageModel.nutrition,
            ),
          ],
        )
      ],
    );
  }
}

class _HotelDescription extends StatelessWidget {
  const _HotelDescription();

  @override
  Widget build(BuildContext context) {
    return ModuleWidget(
      children: [
        RatingPane(
          rating: _read(context).state.bookPageModel.hotelRating,
          ratingName: _read(context).state.bookPageModel.ratingName,
        ),
        const SizedBox(height: 8.0),
        Text(
          _read(context).state.bookPageModel.hotelName,
          style: AppStyle.titleTextStyle,
        ),
        const SizedBox(height: 8.0),
        InkWell(
          onTap: () {},
          child: Text(
            _read(context).state.bookPageModel.hotelAddress,
            style: AppStyle.addressButtonTextStyle,
          ),
        )
      ],
    );
  }
}
