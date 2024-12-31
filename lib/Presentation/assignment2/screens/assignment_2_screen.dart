import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class Assignment2Screen extends StatelessWidget {
  Assignment2Screen({super.key});

  final Assignment2Controller _assignment2controller =
      Get.find<Assignment2Controller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Assignment2Strings.kAppBarTitle),
      ),
      body: Obx(() {
        if (_assignment2controller.inProgress.value) {
          return const CenteredCircularProgressIndicator();
        }

        if (_assignment2controller.productList.isEmpty) {
          return const WarningMessage(
            warningMessage: 'Product not found',
          );
        }

        if (_assignment2controller.errorMessage.isNotEmpty) {
          return WarningMessage(
              warningMessage: 'Error: ${_assignment2controller.errorMessage}');
        }
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: _assignment2controller.productList.length,
            itemBuilder: (context, index) {
              final product = _assignment2controller.productList[index];
              return ProductCard(
                productImage: product.image ??
                    'https://cdn.pixabay.com/photo/2023/11/19/20/25/bubble-8399795_1280.jpg',
                productTitle: product.title ?? 'Unknown',
              );
            },
          ),
        );
      }),
    );
  }
}
