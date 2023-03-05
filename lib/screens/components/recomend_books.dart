import 'package:flutter/material.dart';

import '../../constants.dart';

class RecomendsBooks extends StatefulWidget {
  const RecomendsBooks({
    Key? key,
  }) : super(key: key);

  @override
  State<RecomendsBooks> createState() => _RecomendsBooksState();
}

class _RecomendsBooksState extends State<RecomendsBooks> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendBookCards(
            image: "assets/imgs/image_1.png",
            press: () {},
            title: "penttration test",
            author: "georgia weidman",
          ),
          RecomendBookCards(
            image: "assets/imgs/image_2.png",
            press: () {},
            title: "HTML 5",
            author: "O'relly",
          ),
          RecomendBookCards(
            image: "assets/imgs/image_3.png",
            press: () {},
            title: "data science",
            author: "Spreingers",
          ),
          RecomendBookCards(
            image: "assets/imgs/image_4.png",
            press: () {},
            title: "effective python",
            author: "brett sltoil",
          ),
          RecomendBookCards(
            image: "assets/imgs/image_5.png",
            press: () {},
            title: "AI and ML ",
            author: "bng",
          ),
          RecomendBookCards(
            image: "assets/imgs/image_6.png",
            press: () {},
            title: "programming in c",
            author: "thiles edilosan",
          ),
           RecomendBookCards(
            image: "assets/imgs/image_6.png",
            press: () {},
            title: "programming in c",
            author: "thiles edilosan",
          ),
        ],
      ),
    );
  }
}

class RecomendBookCards extends StatefulWidget {
  const RecomendBookCards({
    Key? key,
    required this.image,
    required this.press,
    required this.title,
    required this.author,
  }) : super(key: key);

  final String image, title, author;
  final Function press;

  @override
  State<RecomendBookCards> createState() => _RecomendBookCardsState();
}

class _RecomendBookCardsState extends State<RecomendBookCards> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2),
      width: 124,
      height: 165,
      decoration: BoxDecoration(
        color: Colors.white,
        // boxShadow: [
        //   BoxShadow(
        //       offset: Offset(0, 10),
        //       blurRadius: 50,
        //       color: kPrimaryColor.withOpacity(0.5))
        // ],

        borderRadius: BorderRadius.circular(7),
        image: DecorationImage(
          image: AssetImage(
            widget.image,
          ),
        ),
      ),
      child: Container(),
    );
  }
}
