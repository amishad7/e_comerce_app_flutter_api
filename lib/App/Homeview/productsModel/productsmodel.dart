class product {
  int id;
  String title;
  String decription;
  int price;

  product({
    required this.id,
    required this.title,
    required this.decription,
    required this.price,
  });

  factory product.fromJSONData({required Map data}) {
    return product(
        id: data['id'],
        title: data['title'],
        decription: data['decription'],
        price: data['price']);
  }
}
