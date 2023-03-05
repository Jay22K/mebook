import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class Header_with_searchbar extends StatelessWidget {
  // const Header_with_searchbar({
  //   required Key key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     String searchString = '';

    return Container(
      //margin: const EdgeInsets.only(bottom: kDefaultPadding * 2),
      height: MediaQuery.of(context).size.height * 0.24,
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              top: 10 + kDefaultPadding,
              left: 5 + kDefaultPadding,
              right: 5 + kDefaultPadding,
              bottom: 80 + kDefaultPadding,
            ),
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                //bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 70),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "The best\nBooks for you!",
                          style: TextStyle(
                              fontSize: 30,
                              color: kBackgroundColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Search your favorites novel, techbook, and storys",
                          style: TextStyle(
                            //fontSize: 19.5,
                            color: kBackgroundColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                // ignore: prefer_const_literals_to_create_immutables
                // boxShadow: [
                //   BoxShadow(
                //     offset: Offset(0, 10),
                //     blurRadius: 80,
                //     color: Color(0xFF000000),
                //   ),
                // ],
              ),
              child: Row(
                children: <Widget>[
                  SvgPicture.asset("assets/imgs/search.svg"),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      controller: TextEditingController()..text = searchString,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black45.withOpacity(0.5),
                      ),
                      onChanged: (value) {
                        searchString = value;
                      },
                      decoration: InputDecoration(
                        hintText: "Search by author, name, books",
                        hintStyle: TextStyle(
                          fontSize: 17,
                          color: Colors.black45.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  //SvgPicture.asset("assets/imgs/search.svg"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
