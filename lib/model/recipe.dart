import 'package:cloud_firestore/cloud_firestore.dart';

class Recipe {
  String id;
  String name;
  String category;
  String image;
  List subIngredients = [];
  Timestamp createdAt;
  String steps;
  //Timestamp updatedAt;

  Recipe();

  Recipe.fromMap(Map<String, dynamic> data) {
    id = data['id'];
    name = data['name'];
    category = data['category'];
    image = data['image'];
    subIngredients = data['subIngredients'];
    createdAt = data['createdAt'];
    steps = data['steps'];
    //updatedAt = data['updatedAt'];
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'category': category,
      'image': image,
      'subIngredients': subIngredients,
      'createdAt': createdAt,
      'steps': steps,
      //'updatedAt': updatedAt
    };
  }
}