class Shoes{
  Shoes(
      this.model,
      this.Price,
      this.images,
      this.modelNumber
      );
  final String model;
  final double Price;
  final List<String> images;
  final int modelNumber;
}


final shoes = <Shoes>[
  Shoes('model', 1, 'assets/images/profile.jpeg', 12),
];