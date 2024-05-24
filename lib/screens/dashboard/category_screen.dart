import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Stack(
          children: [
            SizedBox(
              height: 200,
              child: Image.network('https://tse2.mm.bing.net/th?id=OIP.rFHUVRkMM_tHGiTph62rDQHaIM&pid=Api&P=0&h=180'),
            ),
            Positioned(left: 30,
              child: InkWell(
                onTap: (){
                  Get.back();
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                     color: Colors.transparent
                  ),
                  child: const Icon(Icons.arrow_back_outlined,color: Colors.black,),
                ),
              ),)
          ],
        ),
      ),
    );
  }
}
