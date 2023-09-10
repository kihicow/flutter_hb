part of 'book_page_bloc.dart';

@freezed
class BookPageState with _$BookPageState {
  const factory BookPageState({
    required bool loading,
    required BookPageModel bookPageModel,
    required String phone,
    required bool phoneError,
    required String email,
    required bool emailError,
    required List<TouristViewModel> tourists,
  }) = _BookPageState;

  factory BookPageState.initial() => BookPageState(
        loading: true,
        bookPageModel: BookPageModel.initial(),
        phone: '',
        phoneError: false,
        email: '',
        emailError: false,
        tourists: [
          TouristViewModel.initial().copyWith(isExpanded: true),
        ],
      );
}
