import 'package:flutter/material.dart';

import '../models/interest.dart';
import 'interest_card.dart';

class ProfileInterestsScreen extends StatelessWidget {
  const ProfileInterestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 560),
              child: Column(
                children: [
                  const _ProfileCard(),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Expanded(child: Divider()),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          'Interests',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Expanded(child: Divider()),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (var index = 0;
                          index < Interest.items.length;
                          index++) ...[
                        if (index > 0) const SizedBox(width: 12),
                        Expanded(
                          child: InterestCard(
                            title: Interest.items[index].title,
                            subtitle: Interest.items[index].subtitle,
                            imagePath: Interest.items[index].imagePath,
                          ),
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ProfileCard extends StatelessWidget {
  const _ProfileCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ClipOval(
              child: Image.network(
                'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=320&h=320&fit=crop&crop=faces',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
                errorBuilder: _imageErrorBuilder,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'John Doe',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              'Flutter Developer',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 16),
            const Text(
              'Passionate about creating user-friendly and engaing digital experiences.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xFF4B5563)),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Divider(height: 1),
            ),
            const Row(
              children: [
                Icon(Icons.mail, size: 18, color: Color(0xFF374151)),
                SizedBox(width: 10),
                Text('john.doe@example.com'),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Icon(Icons.phone, size: 18, color: Color(0xFF374151)),
                SizedBox(width: 10),
                Text('+123 456 7890'),
              ],
            ),
            const SizedBox(height: 18),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0671DF),
                      foregroundColor: Colors.white,
                      minimumSize: const Size.fromHeight(40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: const Text('Follow'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFF374151),
                      side: const BorderSide(color: Color(0xFFD1D5DB)),
                      minimumSize: const Size.fromHeight(40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: const Text('Message'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _imageErrorBuilder(
  BuildContext context,
  Object error,
  StackTrace? stackTrace,
) {
  return Container(
    color: const Color(0xFFE5E7EB),
    alignment: Alignment.center,
    child: const Icon(Icons.image_not_supported_outlined, color: Colors.grey),
  );
}
