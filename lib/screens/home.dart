import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/appbar.dart';
import 'components/chips.dart';
import 'components/header_with_searchbar.dart';
import 'components/recomend_books.dart';

class HomeScreen extends StatefulWidget {
  //const HomeScreen({required Key key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(// remove Bluish Scroll Glow
        
         behavior: CustomScroll(),
        child: SingleChildScrollView(
          
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              appbar(),
              Header_with_searchbar(),
              chips(),
             RecomendsBooks(),
             RecomendsBooks(),
              
            ],
          ),
        ),
      ),
    );
  }
}
