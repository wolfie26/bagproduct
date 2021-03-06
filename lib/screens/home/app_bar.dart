import 'package:bag_product/products/products.dart';
import 'package:bag_product/responsiveness/size_config.dart';
import 'package:flutter/material.dart';

import 'components/Detail/components/Icons/cartIcon.dart';

class CustomAppBar extends StatelessWidget {
  final Product products;

  const CustomAppBar({Key key, this.products}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.blockSizeHorizontal * 3.5,
            vertical: SizeConfig.blockSizeVertical * 2.4),
        child: Column(
          children: <Widget>[
            // Padding(
            //   padding: EdgeInsets.only(
            //       top: SizeConfig.safeBlockVertical * 3.2,
            //       left: SizeConfig.safeBlockHorizontal * 0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.menu_rounded,
                  size: SizeConfig.blockSizeHorizontal * 6.5,
                ),
                // ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.search,
                      size: SizeConfig.blockSizeHorizontal * 6.5,
                    ),
                    // IconButton(
                    //     icon: Icon(
                    //       Icons.search,
                    //       size: 30,
                    //     ),
                    //     onPressed: () {}),
                    SizedBox(
                      width: 5,
                    ),
                    CartIcon()
                  ],
                ),
              ],
            ),
            // )
          ],
        ),
      ),
    );
  }
}
