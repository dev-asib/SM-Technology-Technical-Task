import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController _homeController = Get.find<HomeController>();



  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: const HomeAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildSearchAndSettingsSection(),
              const Gap(8),
              _buildCategoriesSectionHeader(context),
              _buildTabRow(textTheme),
              const Gap(16),
              _buildPageView(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoriesSectionHeader(BuildContext context) {
    return SectionHeader(
      sectionTitle: HomeStrings.kCategoriesHeaderText,
      onPressedSeeMore: () => alertMessage(context),
    );
  }

  Widget _buildPageView() {
    return Expanded(
      child: PageView(
        controller: _homeController.pageController.value,
        onPageChanged: _homeController.onPageChanged,
        children: const [
          AllShowView(),
          ActionShowView(),
          AnimeShowView(),
          SciFiShowView(),
          ThrillerShowView(),
        ],
      ),
    );
  }

  Widget _buildTabRow(TextTheme textTheme) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          _homeController.tabTitles.length,
          (index) => Row(
            children: [
              GestureDetector(
                onTap: () => _homeController.onTapTab(index),
                child: Obx(
                  () => TabItem(
                    title: _homeController.tabTitles[index],
                    isSelected: _homeController.selectedIndex.value == index,
                  ),
                ),
              ),
              if (index != _homeController.tabTitles.length - 1) const Gap(12),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchAndSettingsSection() {
    return Row(
      children: [
        Expanded(
          child: SearchForm(
            searchFormKey: _homeController.searchFormKey.value,
            searchTEController: _homeController.searchTEController.value,
          ),
        ),
        const Gap(8),
        const SettingsAdjustSection(),
      ],
    );
  }
}
