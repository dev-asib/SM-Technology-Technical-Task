import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class Assignment3Screen extends StatelessWidget {
  Assignment3Screen({super.key});

  final Assignment3Controller _assignment3controller = Get.put(Assignment3Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Assignment3Strings.kAppBarTitle),
      ),
      body: Obx(() {
        if (_assignment3controller.inProgress.value) {
          return const CenteredCircularProgressIndicator();
        }

        if (_assignment3controller.productList.isEmpty) {
          return const Center(
            child: Text("Products not found."),
          );
        }

        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: _assignment3controller.productList.length,
            itemBuilder: (context, index) {
              var product = _assignment3controller.productList[index];
              return ProductCard(
                productImage: product.image ?? '',
                productTitle: product.title ?? 'Unknown',
              );
            },
          ),
        );
      }),
    );
  }
}
