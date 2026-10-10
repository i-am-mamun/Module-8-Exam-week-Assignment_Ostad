class Interest {
  const Interest({
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });

  final String title;
  final String subtitle;
  final String imagePath;

  static const items = [
    Interest(
      title: 'Travel',
      subtitle: 'Exploring new places around the world',
      imagePath: 'assets/images/travel.jpg',
    ),
    Interest(
      title: 'Photography',
      subtitle: 'Capturing moments through the lens',
      imagePath: 'assets/images/photography.jpg',
    ),
  ];
}
