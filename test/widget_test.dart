import 'package:flutter_test/flutter_test.dart';
import 'package:profile_interests/main.dart';

void main() {
  testWidgets('shows profile and interests', (tester) async {
    await tester.pumpWidget(const ProfileInterestsApp());

    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('Flutter Developer'), findsOneWidget);
    expect(find.text('Interests'), findsOneWidget);
    expect(find.text('Travel'), findsOneWidget);
    expect(find.text('Photography'), findsOneWidget);
  });
}
