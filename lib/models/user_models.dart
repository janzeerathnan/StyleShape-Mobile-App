import 'product.dart';

class CartItem {
  final Product product;
  int quantity;
  final String selectedSize;
  final String selectedColor;

  CartItem({
    required this.product,
    this.quantity = 1,
    required this.selectedSize,
    required this.selectedColor,
  });

  double get totalPrice => product.price * quantity;

  Map<String, dynamic> toMap() {
    return {
      'productId': product.id,
      'productName': product.name,
      'price': product.price,
      'quantity': quantity,
      'selectedSize': selectedSize,
      'selectedColor': selectedColor,
      'imageUrl': product.imageUrl,
    };
  }

  factory CartItem.fromMap(Map<String, dynamic> map) {
    return CartItem(
      product: Product(
        id: map['productId'] ?? '',
        name: map['productName'] ?? '',
        price: (map['price'] ?? 0).toDouble(),
        imageUrl: map['imageUrl'] ?? '',
        collection: '',
        category: '',
        description: '',
        sizes: [],
        features: [],
      ),
      quantity: map['quantity'] ?? 1,
      selectedSize: map['selectedSize'] ?? '',
      selectedColor: map['selectedColor'] ?? '',
    );
  }
}

class Address {
  final String id;
  final String label;
  final String street;
  final String city;
  final String state;
  final String zipCode;
  final String country;
  final bool isDefault;

  Address({
    required this.id,
    required this.label,
    required this.street,
    required this.city,
    required this.state,
    required this.zipCode,
    required this.country,
    this.isDefault = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'label': label,
      'street': street,
      'city': city,
      'state': state,
      'zipCode': zipCode,
      'country': country,
      'isDefault': isDefault,
    };
  }

  factory Address.fromMap(Map<String, dynamic> map, String id) {
    return Address(
      id: id,
      label: map['label'] ?? '',
      street: map['street'] ?? '',
      city: map['city'] ?? '',
      state: map['state'] ?? '',
      zipCode: map['zipCode'] ?? '',
      country: map['country'] ?? '',
      isDefault: map['isDefault'] ?? false,
    );
  }
}

class Order {
  final String id;
  final List<CartItem> items;
  final DateTime date;
  final double subtotal;
  final double shipping;
  final double tax;
  final double total;
  final String status; // 'Processing', 'Shipped', 'Delivered'
  final DateTime? estimatedDelivery;

  Order({
    required this.id,
    required this.items,
    required this.date,
    required this.subtotal,
    required this.shipping,
    required this.tax,
    required this.total,
    required this.status,
    this.estimatedDelivery,
  });

  Map<String, dynamic> toMap() {
    return {
      'items': items.map((i) => i.toMap()).toList(),
      'date': date,
      'subtotal': subtotal,
      'shipping': shipping,
      'tax': tax,
      'total': total,
      'status': status,
      'estimatedDelivery': estimatedDelivery,
    };
  }

  factory Order.fromMap(Map<String, dynamic> map, String id) {
    return Order(
      id: id,
      items:
          (map['items'] as List?)?.map((i) => CartItem.fromMap(i)).toList() ??
          [],
      date: (map['date'] as dynamic)?.toDate() ?? DateTime.now(),
      subtotal: (map['subtotal'] ?? 0).toDouble(),
      shipping: (map['shipping'] ?? 0).toDouble(),
      tax: (map['tax'] ?? 0).toDouble(),
      total: (map['total'] ?? 0).toDouble(),
      status: map['status'] ?? 'Processing',
      estimatedDelivery: (map['estimatedDelivery'] as dynamic)?.toDate(),
    );
  }
}

enum PaymentType { applePay, creditCard, cashOnDelivery }

class PaymentMethod {
  final String id;
  final PaymentType type;
  final String? lastFour;
  final String? cardType; // Visa, Mastercard, etc.
  final bool isDefault;

  PaymentMethod({
    required this.id,
    required this.type,
    this.lastFour,
    this.cardType,
    this.isDefault = false,
  });
}
