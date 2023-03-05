import 'package:flutter/material.dart';

import '../../constants.dart';

class appbar extends StatelessWidget {
  const appbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      title: const Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text("Hello, Jayesh..!", style: TextStyle(fontSize: 12),),
      ),
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: kPrimaryColor,
      actions: [
        
        SizedBox(
          width: 100,
          child: Image.asset(
            'assets/imgs/user.png', 
          ),
          
        ),
      ],
    );
  }
}
