import 'package:arcana_app/core/utils/utils.dart';
import 'package:arcana_app/ui/views/cart/view/cart_view.dart';
import 'package:arcana_app/ui/views/home/views/home_view.dart';
import 'package:arcana_app/ui/views/profile/views/profile_view.dart';
import 'package:arcana_app/ui/views/search/views/search_view.dart';
import 'package:arcana_app/ui/views/wishlist/views/wishlist_view.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class RootView extends StatefulWidget {
  const RootView({super.key});

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  int currentIndex = 0;

  Future<void> changeIndex(int index) async {
    setState(() {
      currentIndex = index;
    });
    await pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.linear,
    );
  }

  final PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Palette.primary,
        onTap: (index) {
          changeIndex(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              IconlyLight.home,
              color: Palette.primary,
            ),
            activeIcon: Icon(
              IconlyBold.home,
              color: Palette.primary,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconlyLight.search,
              color: Palette.primary,
            ),
            activeIcon: Icon(
              IconlyBold.search,
              color: Palette.primary,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconlyLight.heart,
              color: Palette.primary,
            ),
            activeIcon: Icon(
              IconlyBold.heart,
              color: Palette.primary,
            ),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconlyLight.bag,
              color: Palette.primary,
            ),
            activeIcon: Icon(
              IconlyBold.bag,
              color: Palette.primary,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconlyLight.profile,
              color: Palette.primary,
            ),
            activeIcon: Icon(
              IconlyBold.profile,
              color: Palette.primary,
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          HomeView(),
          SearchView(),
          WishlistView(),
          CartView(),
          ProfileView(),
        ],
      ),
    );
  }
}
