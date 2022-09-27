
/* import 'package:flutter/material.dart';
import 'package:front/models/product.dart';
import 'package:front/screens/home/product_view.dart';
import 'package:front/screens/home/search_here.dart';
import 'package:get/get.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {

 RxList<Widget> searchList = Product.products.map((e) => ProductView(productName: e.productName, oldPrice: e.oldPrice, newPrice: e.newPrice, image: e.image)).toList().obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(onPressed: (){
            Navigator.pop(context);
          }, 
          icon: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Icon(Icons.arrow_back_ios),
          ));
        }
        ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                   Expanded(child: SearchHere()),

                  Container(
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: const Color(0xffF0F2F1)),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.filter_list_outlined,
                      color: Color(0xffBBBBBB),),
                       onPressed: () {  },),
                  )
                ],
              ),

              const Padding(
                padding: EdgeInsets.only(top: 8, bottom: 20),
                child: Text('Search results for "  " ',
                style: TextStyle(
                  color: Color(0xff393F42),
                  fontSize: 14
                ),),
              ),

              
              Obx(
                () {
                  return Expanded(
                    child: GridView.count(
                        crossAxisCount: 2,  
                        crossAxisSpacing: 20,  
                        mainAxisSpacing: 20,
                        childAspectRatio: 0.8,
                        children: searchList,  
                    ),
                  );
                }
              )
            ],
          ),
        ),
      );
  }
} */