import 'package:app_ui/app_ui.dart';
import 'package:arcana_app/features/search/widgets/search_banner.dart';
import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView>
    with SingleTickerProviderStateMixin {
  final FocusNode focusNode = FocusNode();

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    focusNode.requestFocus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              CustomSearch(focusNode: focusNode).symmetric(
                horizontal: 5.w,
                vertical: 2.h,
              ),
              TabBar(
                tabs: [
                  Tab(
                    text: 'Men',
                  ),
                  Tab(
                    text: 'Women',
                  ),
                  Tab(
                    text: 'Kids',
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Scaffold(
                      body: ListView.separated(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.w,
                          vertical: 4.h,
                        ),
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 2.h);
                        },
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return SearchBanner();
                        },
                      ),
                    ),
                    Scaffold(
                      body: ListView.separated(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.w,
                          vertical: 4.h,
                        ),
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 2.h);
                        },
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return SearchBanner();
                        },
                      ),
                    ),
                    Scaffold(
                      body: ListView.separated(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.w,
                          vertical: 4.h,
                        ),
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 2.h);
                        },
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return SearchBanner();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
