import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileInterestsApp());
}

class ProfileInterestsApp extends StatelessWidget {
  const ProfileInterestsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0671DF)),
        scaffoldBackgroundColor: const Color(0xFFF8F9FA),
        cardTheme: const CardThemeData(
          color: Colors.white,
          elevation: 1,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 560),
                child: Column(
                  children: [
                    Card(
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
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
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
                                Icon(Icons.mail,
                                    size: 18, color: Color(0xFF374151)),
                                SizedBox(width: 10),
                                Text('john.doe@example.com'),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Row(
                              children: [
                                Icon(Icons.phone,
                                    size: 18, color: Color(0xFF374151)),
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
                                      side: const BorderSide(
                                        color: Color(0xFFD1D5DB),
                                      ),
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
                    ),
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
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: _InterestCard(
                            title: 'Travel',
                            subtitle: 'Exploring new places around the world',
                            imageUrl:
                                'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=640&h=360&fit=crop',
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: _InterestCard(
                            title: 'Photography',
                            subtitle: 'Capturing moments through the lens',
                            imageUrl:
                                'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=640&h=360&fit=crop',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _InterestCard extends StatelessWidget {
  const _InterestCard({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });

  final String title;
  final String subtitle;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            width: double.infinity,
            height: 100,
            fit: BoxFit.cover,
            errorBuilder: _imageErrorBuilder,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 6),
                Text(
                  subtitle,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFFF1F2F4),
                      foregroundColor: const Color(0xFF0671DF),
                      minimumSize: const Size.fromHeight(36),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: const Text('View More'),
                  ),
                ),
              ],
            ),
          ),
        ],
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
