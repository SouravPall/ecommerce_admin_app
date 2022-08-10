class CategoryModel {
  String? catId;
  String? catName;
  bool available;

  CategoryModel({this.catId, this.catName, required this.available});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoryID': catId,
      'categoryName': catName,
      'available': available,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) => CategoryModel(
      catId: map['categoryID'],
      catName: map['categoryName'],
      available: map['available']);
}
