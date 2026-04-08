import '../models/product.dart';
import '../models/user_models.dart';

class MockDatabase {
  static final List<Map<String, dynamic>> categories = [
    {
      'label': 'Dresses',
      'image':
          'https://images.unsplash.com/photo-1585487000160-6ebcfceb0d03?q=80&w=600',
    },
    {
      'label': 'Tops',
      'image':
          'https://images.unsplash.com/photo-1544441893-675973e31985?q=80&w=200',
    },
    {
      'label': 'Denim',
      'image':
          'https://images.unsplash.com/photo-1542272604-787c3835535d?q=80&w=200',
    },
    {
      'label': 'Formal',
      'image':
          'https://images.unsplash.com/photo-1507679799987-c73779587ccf?q=80&w=600',
    },
    {
      'label': 'Sport',
      'image':
          'https://images.unsplash.com/photo-1556906781-9a412961c28c?q=80&w=200',
    },
  ];

  static final List<Product> products = [
    Product(
      id: '1',
      name: 'Velvet Night Blazer',
      price: 249.00,
      badge: 'NEW ARRIVAL',
      badgeType: 'new',
      imageUrl:
          'https://images.unsplash.com/photo-1591047139829-d91aecb6caea?q=80&w=600&auto=format&fit=crop',
      collection: 'Kinetic Series',
      category: 'Tops',
      description:
          'The Velvet Night Blazer redefines the boundaries between architecture and apparel. Crafted from a technical velvet-blend with memory-shape properties, this piece responds to your movement on the urban runway.',
      sizes: ['S', 'M', 'L', 'XL'],
      features: ['Eco-Sourced', 'Thermal Tech'],
    ),
    Product(
      id: '2',
      name: 'Solar Flare Puffer',
      price: 185.00,
      badge: "Winter '24",
      badgeType: 'editorial',
      imageUrl:
          'https://images.unsplash.com/photo-1539533018447-63fcce2678e3?q=80&w=600&auto=format&fit=crop',
      collection: "Winter '24",
      category: 'Active',
      description:
          'The Solar Flare Puffer is engineered for maximum warmth without compromising on style. Its high-altitude insulation keeps you cozy while the bold silhouette commands attention.',
      sizes: ['S', 'M', 'L', 'XL'],
      features: ['Eco-Sourced', 'Thermal Tech'],
    ),
    Product(
      id: '3',
      name: 'Meadow Silk Gown',
      price: 320.00,
      badge: 'Editorial Pick',
      badgeType: 'editorial',
      imageUrl:
          'https://images.unsplash.com/photo-1515372039744-b8f02a3ae446?q=80&w=600&auto=format&fit=crop',
      collection: 'Editorial Pick',
      category: 'Dresses',
      description:
          'The Meadow Silk Gown flows with effortless grace, combining natural silk with cutting-edge dyeing techniques. Each piece is uniquely printed, making every gown one-of-a-kind.',
      sizes: ['XS', 'S', 'M', 'L'],
      features: ['Eco-Sourced', 'Handcrafted'],
    ),
    Product(
      id: '4',
      name: 'Crimson Kinetic Coat',
      price: 410.00,
      badge: 'SOLD OUT SOON',
      badgeType: 'soldout',
      imageUrl:
          'https://images.unsplash.com/photo-1539533018447-63fcce2678e3?q=80&w=600',
      collection: 'Limited Run',
      category: 'Tops',
      description:
          'The Crimson Kinetic Coat is a masterpiece of modern tailoring. Its structural shoulders and fluid body create an iconic silhouette that bridges the gap between fashion and architecture.',
      sizes: ['S', 'M', 'L'],
      features: ['Limited Edition', 'Thermal Tech'],
    ),
    Product(
      id: '5',
      name: 'Kinetic Sculpt Coat',
      price: 420.00,
      badge: 'EDITORIAL COLLECTION',
      badgeType: 'editorial',
      imageUrl:
          'https://images.unsplash.com/photo-1539109136881-3be0616acf4b?q=80&w=600&auto=format&fit=crop',
      collection: 'Editorial Collection',
      category: 'Tops',
      description:
          'The Kinetic Sculpt Coat redefines the boundaries between architecture and apparel. Crafted from a technical wool-blend with memory-shape properties, this piece responds to your movement on the urban runway.',
      sizes: ['S', 'M', 'L', 'XL'],
      features: ['Eco-Sourced', 'Thermal Tech'],
    ),
    Product(
      id: '6',
      name: 'Noir Urban Boots',
      price: 185.00,
      badge: 'LIMITED EDITION',
      badgeType: 'limited',
      imageUrl:
          'https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=600&auto=format&fit=crop',
      collection: 'Footwear',
      category: 'Denim',
      description:
          'Minimalist leather boots designed for the urban explorer. Features a memory foam insole and weather-resistant finish.',
      sizes: ['40', '41', '42', '43', '44'],
      features: ['Premium Leather', 'Orthopedic Insole'],
    ),
    Product(
      id: '7',
      name: 'Ginger Wide-Legs',
      price: 75.00,
      badge: 'ON SALE',
      badgeType: 'sale',
      imageUrl:
          'https://images.unsplash.com/photo-1594633312681-425c7b97ccd1?q=80&w=600&auto=format&fit=crop',
      collection: 'Daily Wear',
      category: 'Denim',
      description:
          'High-waisted wide-leg trousers in a warm ginger hue. Perfect for a sophisticated yet comfortable day look.',
      sizes: ['28', '30', '32', '34'],
      features: ['Breathable Fabric', 'Eco-Dye'],
    ),
    Product(
      id: '8',
      name: 'Arctic Frost Parka',
      price: 310.00,
      badge: 'NEW',
      badgeType: 'new',
      imageUrl:
          'https://images.unsplash.com/photo-1539109136881-3be0616acf4b?q=80&w=600',
      collection: 'Winter 24',
      category: 'Tops',
      description:
          'Heavy-duty protection against the elements with a sleek modern cut.',
      sizes: ['S', 'M', 'L', 'XL'],
      features: ['Waterproof', 'Feather Down'],
    ),
    Product(
      id: '9',
      name: 'Skyline Active Top',
      price: 65.00,
      badge: 'SPORT',
      badgeType: 'editorial',
      imageUrl:
          'https://images.unsplash.com/photo-1518310383802-640c2de311b2?q=80&w=600&auto=format&fit=crop',
      collection: 'Sport',
      category: 'Active',
      description: 'High-performance moisture-wicking fabric for intense runs.',
      sizes: ['XS', 'S', 'M', 'L'],
      features: ['4-Way Stretch', 'Quick-Dry'],
    ),
    Product(
      id: '10',
      name: 'Celestial Silk Dress',
      price: 280.00,
      badge: 'NEW',
      badgeType: 'new',
      imageUrl:
          'https://images.unsplash.com/photo-1566174053879-31528523f8ae?q=80&w=600',
      collection: 'Nova Series',
      category: 'Dresses',
      description: 'A ethereal dress crafted from the finest mulberry silk.',
      sizes: ['XS', 'S', 'M'],
      features: ['100% Silk', 'Breathable'],
    ),
    Product(
      id: '11',
      name: 'Onyx Ribbed Tank',
      price: 45.00,
      badge: 'ESSENTIAL',
      badgeType: '',
      imageUrl:
          'https://images.unsplash.com/photo-1521572267360-ee0c2909d518?q=80&w=600',
      collection: 'Essentials',
      category: 'Tops',
      description: 'A versatile ribbed tank for everyday layering.',
      sizes: ['S', 'M', 'L'],
      features: ['Cotton Blend', 'Stretchy'],
    ),
    Product(
      id: '12',
      name: 'Raw Indigo Straight',
      price: 135.00,
      badge: 'CLASSIC',
      badgeType: '',
      imageUrl:
          'https://images.unsplash.com/photo-1541099649105-f69ad21f3246?q=80&w=600',
      collection: 'Denim Core',
      category: 'Denim',
      description: 'Hand-dyed raw indigo denim with a perfect straight cut.',
      sizes: ['30', '32', '34', '36'],
      features: ['Unwashed', 'Durable'],
    ),
    Product(
      id: '13',
      name: 'Titanium Track Pants',
      price: 95.00,
      badge: 'TECH',
      badgeType: 'editorial',
      imageUrl:
          'https://images.unsplash.com/photo-1552346154-21d32810aba3?q=80&w=600',
      collection: 'Kinetic Active',
      category: 'Active',
      description: 'Water-repellent track pants for all-weather performance.',
      sizes: ['M', 'L', 'XL'],
      features: ['Reflective', 'Quick-Dry'],
    ),
  ];

  static final List<Order> orders = [
    Order(
      id: '#SS-98241',
      items: [
        CartItem(
          product: products[0],
          quantity: 1,
          selectedSize: 'M',
          selectedColor: 'Black',
        ),
      ],
      date: DateTime.now().subtract(const Duration(days: 2)),
      subtotal: 128.00,
      shipping: 0.00,
      tax: 10.24,
      total: 138.24,
      status: 'In Transit',
      estimatedDelivery: DateTime.now().add(const Duration(days: 1)),
    ),
    Order(
      id: '#SS-97103',
      items: [
        CartItem(
          product: products[5],
          quantity: 1,
          selectedSize: '39',
          selectedColor: 'White',
        ),
      ],
      date: DateTime.now().subtract(const Duration(days: 15)),
      subtotal: 245.90,
      shipping: 0.00,
      tax: 19.67,
      total: 265.57,
      status: 'Delivered',
    ),
  ];
}
