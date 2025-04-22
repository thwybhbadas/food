import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/root_controller.dart';

class RootView extends GetView<RootController> {
  const RootView({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex]),
      bottomNavigationBar:Obx(()=> Container(
  height: size.height * .080,
  decoration: BoxDecoration(color: Colors.white),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: List.generate(
      controller.listOfIcons.length,
      (index) {
        final isSelected = controller.selectedIndex == index;
        return InkWell(
          onTap: () => controller.onTap(index),
          borderRadius: BorderRadius.circular(30),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.012,
              horizontal: isSelected ? size.width * 0.045 : 0,
            ),
            decoration: BoxDecoration(
              color:  Colors.white ,
              borderRadius: BorderRadius.circular(30),
              border: isSelected
                  ? Border.all(color: Colors.blue, width: 1.5)
                  : null,
            ),
            child: Row(
              children: [
                Icon(
                  controller.listOfIcons[index],
                  size: size.width * 0.065,
                  color: isSelected ? Colors.blue : Colors.grey,
                ),
                if (isSelected)
                  SizedBox(width: size.width * 0.02), // مسافة بين الأيقونة والنص
                if (isSelected)
                  Text(
                    controller.listOfLabels[index],
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: size.width * 0.035,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    ),
  ),
),)

    //   bottomNavigationBar: Container(
    //     height: size.height * .080,
    //     decoration: BoxDecoration(color: Colors.white),
    //     child: Row(
    //       mainAxisAlignment:
    //           MainAxisAlignment.spaceAround, 
    //       children: List.generate(
    //         controller.screens.length,
    //         (index) => InkWell(
    //           onTap: () {
    //             controller.onTap(index);
    //           },
    //           child: Obx(
    //             () => Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Icon(
    //   controller.listOfIcons[index],
    //   size: size.width * .065,
    //   color: controller.selectedIndex == index ? Colors.blue : Colors.black45,
    // ),
    // SizedBox(height: 6),
    // AnimatedContainer(
    //   duration: Duration(milliseconds: 300),
    //   height:size.height * 0.005,
    //   width: controller.selectedIndex == index ? size.width * 0.06  : 0,
    //   decoration: BoxDecoration(
    //     color: Colors.blue,
    //     borderRadius: BorderRadius.circular(size.width * 0.01),
    //                   ),
    //                 ),

                   
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    );
  }
}
