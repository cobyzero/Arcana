import 'package:app_ui/app_ui.dart';
import 'package:arcana_app/features/cart/view/pages/select_address_page.dart';
import 'package:arcana_app/features/cart/view/pages/select_payment_page.dart';
import 'package:arcana_app/features/cart/view/pages/select_summary_page.dart';
import 'package:arcana_app/features/cart/widgets/proccess_status_item.dart';
import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProccessView extends StatefulWidget {
  const ProccessView({super.key});

  @override
  State<ProccessView> createState() => _ProccessViewState();
}

class _ProccessViewState extends State<ProccessView> {
  final PageController pageController = PageController();
  int currentPage = 0;
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Texts.bold(
                'Total: \$100',
                color: Palette.black,
                fontSize: 16,
              ),
            ),
            SizedBox(width: 5.w),
            CustomButton(
              onPressed: () {
                pageController.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              child: Texts.medium(
                currentPage == 2 ? 'Pay Now' : 'Continue',
                color: Palette.white,
              ),
            ),
          ],
        ).symmetric(horizontal: 5.w, vertical: 1.h),
      ),
      appBar: AppBar(
        title: Texts.bold(
          'Proccess',
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: .5.h,
                  color: Palette.primary,
                ).symmetric(horizontal: 5.w),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProccessStatusItem(
                      status: "1",
                      title: "Cart",
                      isActive: true,
                    ),
                    ProccessStatusItem(
                      status: "2",
                      title: "Address",
                      isActive: currentPage >= 1,
                    ),
                    ProccessStatusItem(
                      status: "3",
                      title: "Payment",
                      isActive: currentPage >= 2,
                    ),
                    ProccessStatusItem(
                      status: "4",
                      title: "Summary",
                      isActive: false,
                    ),
                  ],
                ).only(top: 1.3.h),
              ],
            ).only(top: 2.h, bottom: 3.h),
            Expanded(
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                controller: pageController,
                children: [
                  SelectAddressPage(),
                  SelectPaymentPage(),
                  SelectSummaryPage(),
                ],
              ),
            ),
          ],
        ).symmetric(horizontal: 5.w),
      ),
    );
  }
}
