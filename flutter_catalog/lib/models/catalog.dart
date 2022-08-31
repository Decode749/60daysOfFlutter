

class Item{
  final String id;
  final String name;
  final String dsc;
  final num price ;
  final String color;
  final String image;

  Item({this.id, this.name, this.dsc, this.price, this.color, this.image});

  final products = [
     Item(
      id: "codepur001",
      name: "Iphone 12 por max",
      dsc: "Apple processor of 12th generation",
      price: 99000,
      color: "#33505a",
      image: "https://you.com/proxy?url=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.0Zmhx7WD3-cWazGgqVYKdQHaHa%26w%3D690%26c%3D7%26pid%3DApi%26p%3D0"
     )
  ];
}