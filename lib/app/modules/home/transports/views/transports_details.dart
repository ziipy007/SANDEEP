import 'package:flutter/material.dart';
import 'package:zippy_user/app/modules/home/transports/controller/transports_details_controllers.dart';
import 'package:get/get.dart';
import 'package:zippy_user/app/themes/app_colors.dart';

import '../../../../mixins/utility_mixins.dart';

class TransportsDetailsView extends GetView<TransportsDetailsController>
    with UtilityMixin {
  TransportsDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              isBack(context);
            }),
             title: const Text('Transports Details'),
        centerTitle: true,
        backgroundColor: AppColors.whiteColor,
      ),
    );
  }
}
