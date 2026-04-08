class Product {
  final String id;
  final String name;
  final double price;
  final double? originalPrice;
  final String badge;
  final String
  badgeType; // 'new', 'sale', 'soldout', 'editorial', 'limited', ''
  final String imageUrl;
  final String collection;
  final String description;
  final List<String> sizes;
  final List<String> features;
  final String category;
  final bool isFavorite;

  Product({
    required this.id,
    required this.name,
    required this.price,
    this.originalPrice,
    this.badge = '',
    this.badgeType = '',
    required this.imageUrl,
    required this.collection,
    required this.category,
    required this.description,
    required this.sizes,
    required this.features,
    this.isFavorite = false,
  });

  Product copyWith({bool? isFavorite}) {
    return Product(
      id: id,
      name: name,
      price: price,
      originalPrice: originalPrice,
      badge: badge,
      badgeType: badgeType,
      imageUrl: imageUrl,
      collection: collection,
      category: category,
      description: description,
      sizes: sizes,
      features: features,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
