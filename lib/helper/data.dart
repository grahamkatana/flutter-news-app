import 'package:newsapp/models/category_model.dart';

List<Category> getCategories() {
  List<Category> myCategories = [];
  Category categoryModel;

  categoryModel = new Category();
  categoryModel.categoryName = "Business";
  categoryModel.image =
      "https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80";
  myCategories.add(categoryModel);

  categoryModel = new Category();
  categoryModel.categoryName = "Entertainment";
  categoryModel.image =
      "https://images.unsplash.com/photo-1499364615650-ec38552f4f34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=772&q=80";
  myCategories.add(categoryModel);

  categoryModel = new Category();
  categoryModel.categoryName = "Technology";
  categoryModel.image =
      "https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80";
  myCategories.add(categoryModel);

  categoryModel = new Category();
  categoryModel.categoryName = "Health";
  categoryModel.image =
      "https://images.unsplash.com/photo-1532938911079-1b06ac7ceec7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80";
  myCategories.add(categoryModel);

  categoryModel = new Category();
  categoryModel.categoryName = "Sports";
  categoryModel.image =
      "https://images.unsplash.com/photo-1518611012118-696072aa579a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80";
  myCategories.add(categoryModel);

  return myCategories;
}
