import 'package:flutter/material.dart';
import '../../core/Utils/Constants/app_strings.dart';
import '../widgets/custom_app_bar_widget.dart';
import '../widgets/custom_category_list_view_widget.dart';
import '../widgets/custom_header_text_widget.dart';
import '../widgets/custom_new_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
              child: CustomHeaderText(
                  text: AppStrings.headerText, textAlign: TextAlign.start)),
          SliverToBoxAdapter(child: CustomCategoryListView()),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          const SliverToBoxAdapter(
              child: CustomHeaderText(
                  text: AppStrings.topNews, textAlign: TextAlign.start)),
          const NewsListViewBuilder(category: 'general',),
        ],
      ),
    );
  }
}
