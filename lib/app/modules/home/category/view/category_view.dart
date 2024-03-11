import 'package:flutter/material.dart';

import '../../../../mixins/utility_mixins.dart';
import '../../../../themes/app_colors.dart';
import '../controllers/category_controller.dart';
import 'package:get/get.dart';


class CategoryView extends GetView<CategoryController> with UtilityMixin {
  CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              isBack(context);
            }),
             title: const Text('Category'),
        centerTitle: true,
        backgroundColor: AppColors.whiteColor,
      ),
     );
  }
}