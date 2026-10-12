import 'package:flutter/material.dart'
    show Card, ElevatedButton, Image, OutlinedButton, Size, TextButton;
import 'package:flutter_test/flutter_test.dart';
import 'package:profile_interests/main.dart';
import 'package:profile_interests/screens/interest_card.dart';

void main() {
  testWidgets('shows profile and interests', (tester) async {
    await tester.pumpWidget(const ProfileInterestsApp());

    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('Flutter Developer'), findsOneWidget);
    expect(find.text('Interests'), findsOneWidget);
    expect(find.text('Travel'), findsOneWidget);
    expect(find.text('Photography'), findsOneWidget);
  });

  testWidgets('matches reference card proportions at phone width',
      (tester) async {
    tester.view.physicalSize = const Size(446, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const ProfileInterestsApp());

    final profileCard = tester.getRect(
      find.ancestor(
        of: find.text('John Doe'),
        matching: find.byType(Card),
      ),
    );
    final travelCard = tester.getRect(find.byType(InterestCard).first);
    final photographyCard = tester.getRect(find.byType(InterestCard).last);

    expect(profileCard.left, closeTo(16, 1));
    expect(profileCard.width, closeTo(414, 1));
    expect(travelCard.left - profileCard.left, closeTo(12, 1));
    expect(travelCard.width, closeTo(191, 2));
    expect(photographyCard.width, closeTo(191, 2));
    expect(photographyCard.left - travelCard.right, closeTo(8, 1));
    expect(
      tester.getRect(find.widgetWithText(ElevatedButton, 'Follow')).height,
      30,
    );
    expect(
      tester.getRect(find.widgetWithText(OutlinedButton, 'Message')).height,
      30,
    );
    expect(
      tester.getRect(find.widgetWithText(TextButton, 'View More').first).height,
      28,
    );
    final travelImage = tester.getRect(
      find.descendant(
        of: find.byType(InterestCard).first,
        matching: find.byType(Image),
      ),
    );
    expect(travelImage.height, 82);
    expect(photographyCard.top, closeTo(travelCard.top, 1));
    expect(tester.takeException(), isNull);
  });

  testWidgets('stacks interest cards on very narrow screens', (tester) async {
    tester.view.physicalSize = const Size(360, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const ProfileInterestsApp());

    final travelCard = tester.getRect(find.byType(InterestCard).first);
    final photographyCard = tester.getRect(find.byType(InterestCard).last);

    expect(photographyCard.top, greaterThan(travelCard.bottom));
    expect(tester.takeException(), isNull);
  });
}
