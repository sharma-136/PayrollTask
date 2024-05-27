import 'package:flutter/material.dart';

import '../../utils/buttons.dart';

class SelectedItemScreen extends StatefulWidget {
  const SelectedItemScreen({super.key});

  @override
  State<SelectedItemScreen> createState() => _SelectedItemScreenState();
}

class _SelectedItemScreenState extends State<SelectedItemScreen> {
  int count=1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Align(
              alignment: Alignment.center,
              child: Text('Productname')),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(child: Text('price')),

            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text('desrciption'),
          Spacer(),
          Buttons(
            onPressed: (){},
            buttonText: 'Add to Bag',
          )
        ],
      ),
    );
  }
}
