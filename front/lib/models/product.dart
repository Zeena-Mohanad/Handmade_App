
import 'package:get/get.dart';

class Product{
  final String productName;
  final String oldPrice;
  final String newPrice;
  final String image;

  Product(this.productName, this.oldPrice, this.newPrice, this.image);

  static RxList<Product> products = <Product>[
    Product('Cotton Tshirt', '23,750 IQD', '14,750 IQD','assets/images/tshirt.jpg'),
    Product('Cotton Tshirt', '23,750 IQD', '14,750 IQD','assets/images/tshirt.jpg'),
    Product('Cotton Tshirt', '23,750 IQD', '14,750 IQD','assets/images/tshirt.jpg'),
    Product('hsdh', '23,750 IQD', '14,750 IQD','assets/images/tshirt.jpg'),
    Product('hthmhjbnb', '23,750 IQD', '14,750 IQD','assets/images/tshirt.jpg'),
    Product('raefng', '23,750 IQD', '14,750 IQD','assets/images/tshirt.jpg'),
  ].obs;

  static RxList<Product> foundProduct = <Product>[
    Product('Cotton Tshirt', '23,750 IQD', '14,750 IQD','assets/images/tshirt.jpg'),
    Product('Cotton Tshirt', '23,750 IQD', '14,750 IQD','assets/images/tshirt.jpg'),
    Product('Cotton Tshirt', '23,750 IQD', '14,750 IQD','assets/images/tshirt.jpg'),
    Product('hsdh', '23,750 IQD', '14,750 IQD','assets/images/tshirt.jpg'),
    Product('hthmhjbnb', '23,750 IQD', '14,750 IQD','assets/images/tshirt.jpg'),
    Product('raefng', '23,750 IQD', '14,750 IQD','assets/images/tshirt.jpg'),
  ].obs;

  static void filterList (String value){
    List<Product> result = [];

    if (value.isEmpty){
      result = products;
    }
    else {
      result = foundProduct.where((element) => element.productName.toLowerCase().contains(value.toLowerCase())).toList();
      
    }

    foundProduct.value = result;
    
  }
}