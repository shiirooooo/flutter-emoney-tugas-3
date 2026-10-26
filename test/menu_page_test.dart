import 'package:e_money/main.dart';
import 'package:e_money/menu_page.dart';
import 'package:e_money/pages/air_page.dart';
import 'package:e_money/pages/bpjs_page.dart';
import 'package:e_money/pages/internet_page.dart';
import 'package:e_money/pages/listrik_page.dart';
import 'package:e_money/pages/paket_data_page.dart';
import 'package:e_money/pages/pulsa_page.dart';
import 'package:e_money/pages/tarik_tunai_page.dart';
import 'package:e_money/pages/top_up_page.dart';
import 'package:e_money/pages/transfer_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Semua menu membuka halaman yang sesuai dan bisa kembali', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(360, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(const EMoneyApp());

    final halaman = <String, Type>{
      'Top Up': TopUpPage,
      'Transfer': TransferPage,
      'Tarik Tunai': TarikTunaiPage,
      'Pulsa': PulsaPage,
      'Paket Data': PaketDataPage,
      'Listrik': ListrikPage,
      'Air': AirPage,
      'Internet': InternetPage,
      'BPJS': BpjsPage,
    };

    for (final menu in halaman.entries) {
      await tester.ensureVisible(find.text(menu.key));
      await tester.tap(find.text(menu.key));
      await tester.pumpAndSettle();

      expect(find.byType(menu.value), findsOneWidget);
      expect(find.widgetWithText(AppBar, menu.key), findsOneWidget);
      expect(find.text('Halaman ${menu.key}'), findsOneWidget);
      expect(find.byType(MenuPage), findsNothing);
      expect(tester.takeException(), isNull);

      await tester.tap(find.byType(BackButton));
      await tester.pumpAndSettle();
      expect(find.byType(MenuPage), findsOneWidget);
    }
  });

  testWidgets('Menu bisa dipakai di layar kecil dengan tulisan diperbesar', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(320, 480);
    tester.view.devicePixelRatio = 1;
    tester.platformDispatcher.textScaleFactorTestValue = 1.5;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(tester.platformDispatcher.clearTextScaleFactorTestValue);
    await tester.pumpWidget(const EMoneyApp());
    expect(tester.takeException(), isNull);

    await tester.ensureVisible(find.text('BPJS'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('BPJS'));
    await tester.pumpAndSettle();

    expect(find.byType(BpjsPage), findsOneWidget);
    expect(tester.takeException(), isNull);
    await tester.tap(find.byType(BackButton));
    await tester.pumpAndSettle();
    expect(find.byType(MenuPage), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
