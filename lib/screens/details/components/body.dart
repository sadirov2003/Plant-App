import 'package:flutter/material.dart';

import 'package:flutter_plant_app/constants.dart';
import 'package:flutter_plant_app/screens/details/components/icon_card.dart';
import 'package:flutter_plant_app/screens/details/components/image_and_icons.dart';
import 'package:flutter_plant_app/screens/details/components/title_and_price.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: [
        ImageAndIcons(size: size),
        TitleAndPrice(
          title: 'Angelica',
          country: 'Russia',
          price: 440,
        ),
        const SizedBox(height: kDefaultPadding),
        Row(children: [
          SizedBox(
              width: size.width / 2,
              height: 84,
              child: ElevatedButton(
                
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                  shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
                ),
                ),),
              
                
                onPressed: () {},
                child: const Text(
                  'Buy Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),

                ),
              )),
              SizedBox(
                 width: size.width / 2,
                 height: 84,
                child: ElevatedButton(
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                ),
                ),),
                  onPressed: (){},
                  child: Text('Description',style: TextStyle(color: Colors.black)),
                ),
              ),

        ]),
        const SizedBox(height: kDefaultPadding*2),
      ]),
    );
  }
}
