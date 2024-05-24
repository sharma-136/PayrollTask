import 'package:flutter/material.dart';
import 'package:food_ordering_app/controllers/navigation_controller.dart';
import 'package:food_ordering_app/screens/dashboard/bag_screen.dart';
import 'package:food_ordering_app/screens/dashboard/home_screen.dart';
import 'package:food_ordering_app/screens/dashboard/order_screen.dart';
import 'package:food_ordering_app/screens/dashboard/profile_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class NavigationPage extends StatelessWidget {
  NavigationPage({super.key});

  final BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController());
  final screenPage = [Home(), BagScreen(), OrderScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: bottomNavigationController.selectedIndex.value,
          children: screenPage,
        ),
      ),
      bottomNavigationBar: Obx(
        () => Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          )),
          child: BottomNavigationBar(
            backgroundColor: Colors.grey.shade700,
            type: BottomNavigationBarType.shifting,
            // selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.blue,
            onTap: (index) {
              bottomNavigationController.changeIndex(index);
            },
            currentIndex: bottomNavigationController.selectedIndex.value,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/home.png',
                    height: 30,
                    width: 30,
                  ),
                  label: 'home'),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/bag.png',
                    height: 30,
                    width: 30,
                  ),
                  label: 'Bag'),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/order.png',
                    height: 30,
                    width: 30,
                  ),
                  label: 'Order',),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/person.png',
                    height: 30,
                    width: 30,
                  ),
                  label: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}
