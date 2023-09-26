import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hb/blocs/hotel_page_bloc/hotel_page_bloc.dart';
import 'package:flutter_hb/models/hotel_page_model.dart';
import 'package:flutter_hb/pages/hotel_page.dart';
import 'package:flutter_hb/widgets/image_carousel_widget.dart';
import 'package:flutter_hb/widgets/peculiarities_widget.dart';
import 'package:flutter_hb/widgets/rating_pane.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:network_image_mock/network_image_mock.dart';

class MockHotelPageBloc extends MockBloc<HotelPageEvent, HotelPageState>
    implements HotelPageBloc {}

void main() {
  group('HotelPage', () {
    late final HotelPageBloc hotelPageBloc;

    setUp(() {
      hotelPageBloc = MockHotelPageBloc();
    });

    testWidgets('Design', (tester) async {
      when(() => hotelPageBloc.state).thenReturn(
        HotelPageState(
          loading: false,
          imageIndex: 0,
          hotel: HotelPageModel.mock(),
        ),
      );

      await mockNetworkImagesFor(
        () => tester.pumpWidget(
          MaterialApp(
            home: BlocProvider(
              create: (context) => hotelPageBloc,
              lazy: false,
              child: const HotelView(),
            ),
          ),
        ),
      );

      expect(find.text('Отель'), findsOneWidget);
      expect(find.byType(ImageCarouselWidget), findsOneWidget);
      expect(find.byType(RatingPane), findsOneWidget);
      expect(find.textContaining('Лучший пятизвездочный'), findsOneWidget);
      expect(find.textContaining('Madinat'), findsOneWidget);
      expect(find.textContaining('от 134'), findsOneWidget);
      expect(find.textContaining('За тур'), findsOneWidget);
      expect(find.text('Об отеле', skipOffstage: false), findsOneWidget);
      expect(
        find.byType(PeculiaritiesList, skipOffstage: false),
        findsOneWidget,
      );
      expect(
        find.textContaining('Отель VIP-класса', skipOffstage: false),
        findsOneWidget,
      );
      expect(find.text('Удобства', skipOffstage: false), findsOneWidget);
      expect(find.text('Что включено', skipOffstage: false), findsOneWidget);
      expect(find.text('Что не включено', skipOffstage: false), findsOneWidget);
      expect(find.text('К выбору номера', skipOffstage: false), findsOneWidget);
    });
  });
}
