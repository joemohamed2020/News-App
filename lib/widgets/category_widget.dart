import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';

class CategoryWidget extends StatelessWidget {
   CategoryWidget({super.key,required this.categoryModel});
  CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
          height: 130,
          width: 230,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image:  DecorationImage(
                  image: AssetImage(categoryModel.photo),
                  fit: BoxFit.fill
              )
          ),
          child: Center(
            child: Text(categoryModel.name,style: const TextStyle(
                color: Colors.white,
                fontSize: 18,fontWeight: FontWeight.bold
            ),),
          )
      ),
    );
  }
}
