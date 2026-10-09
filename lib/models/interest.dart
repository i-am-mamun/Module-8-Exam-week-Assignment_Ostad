class Interest {
  const Interest({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });

  final String title;
  final String subtitle;
  final String imageUrl;

  static const items = [
    Interest(
      title: 'Travel',
      subtitle: 'Exploring new places around the world',
      imageUrl:
          'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=640&h=360&fit=crop',
    ),
    Interest(
      title: 'Photography',
      subtitle: 'Capturing moments through the lens',
      imageUrl:
          'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=640&h=360&fit=crop',
    ),
  ];
}
