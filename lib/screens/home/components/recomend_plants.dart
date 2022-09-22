import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_plant_app/constants.dart';
import 'package:flutter_plant_app/screens/details/details_screen.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCard(
            image: "assets/images/image_1.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            //press: () {},
          ),
          RecomendPlantCard(
            image: "assets/images/image_2.png",
            title: "Angelica",
            country: "Russia",
            price: 440,
            //press: () {},
          ),
          RecomendPlantCard(
            image: "assets/images/image_3.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            //press: () {
              /*WidgetsBinding.instance.addPostFrameCallback((_) {
                 Navigator.pushNamed(context, '/details');
              });*/
             
            
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  final String image, title, country;
  final int price;
  //final Function press;

  RecomendPlantCard({
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    //required this.press,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(children: [
        Image.asset(image),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, '/details');
          },//press(),
          child: Container(
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ]),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "$title\n".toUpperCase(),
                      style: Theme.of(context).textTheme.button,
                    ),
                    TextSpan(
                      text: "$country".toUpperCase(),
                      style: TextStyle(
                        color: kPrimaryColor.withOpacity(0.5),
                      ),
                    ),
                  ]),
                ),
                const Spacer(),
                Text(
                  '\$$price',
                  style: Theme.of(context)
                      .textTheme
                      .button
                      ?.copyWith(color: kPrimaryColor),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
