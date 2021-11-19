import 'dart:io';

void main(List<String> args) {
  var shop = Shop("Ariet", 45);
  var producer = ProducerTextile("Ariet2", 23, "China", "Guanjou");
  var textile = Yarn("Arw", 12, "compound", 123);
  // shop.getData();
  // producer.getData();
  // producer.printData();
  textile.getData();
}

class Shop {
  String? name;
  double? price;

  Shop(this.name, this.price);

  void getData() {
    print("Enter your name and  price");
    var a = stdin.readLineSync();
    name = a;
    var b = stdin.readLineSync()!;
    double pricee = double.parse(b);
    price = pricee;
    print("Name of the shop is $name");
    print("Price is $pricee");
  }
}

class ProducerTextile extends Shop {
  String? producer;
  String? place;

  ProducerTextile(String? name, double? price, this.producer, this.place)
      : super(name, price);

  void getData() {
    print("Enter name, price, producer, place");
    var a = stdin.readLineSync()!;
    name = a;
    var b = stdin.readLineSync()!;
    double pricee = double.parse(b);
    price = pricee;
    var c = stdin.readLineSync()!;
    producer = c;
    var d = stdin.readLineSync();
    place = d;
    // print("Name is $name, price is $pricee, producer is $c, place is $d");
  }

  void printData() {
    print(
        "Name is $name, price is $price, producer is $producer, place is $place");
  }
}

class Yarn extends Shop {
  String? compound;
  double? length;

  Yarn(String? name, double? price, this.compound, this.length)
      : super(name, price);

  void getData() {
    print("Enter name, price, compound, length");
    var a = stdin.readLineSync()!;
    name = a;
    var b = stdin.readLineSync()!;
    double pricee = double.parse(b);
    price = pricee;
    var c = stdin.readLineSync()!;
    compound = c;
    String d = stdin.readLineSync()!;
    double lengthh = double.parse(d);
    length = lengthh;

    print(
        "Name is $name, price is $price, compound is $compound, length is $length");
  }
}
