import 'package:ecommerce/configs/app_size/app_size.dart';
import 'package:ecommerce/screens/cart_screen/widgets/single_cart_item.dart';
import 'package:ecommerce/widget/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../configs/app_constanst/constanst.dart';
import '../../provider/provider.dart';
import '../../utils/helper/helper_functions.dart';
import '../cart_item_checkout/cart_item_checkout.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    AppProvider appProvider = Provider.of<AppProvider>(
      context,
    );
    final dark = HelpFunctions.isDarkMode(context);

    return Column(
      children: [
        SizedBox(
          height: appbarHeight,
        ),
        SizedBox(
          height: 180.h,
          child: Padding(
            padding: EdgeInsets.all(12.0.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(
                        fontSize: 18.0.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "\$${appProvider.totalPrice().toString()}",
                      style: TextStyle(
                        fontSize: 18.0.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.0.h,
                ),
                MyButton(
                  dark: dark,
                  name: "Checkout",
                  onPressed: () {
                    appProvider.clearBuyProduct();
                    appProvider.addBuyProductCartList();
                    appProvider.clearCart();
                    if (appProvider.getBuyProductList.isEmpty) {
                      showMessage("Cart is empty");
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CartItemCheckout()));
                    }
                  },
                ),
              ],
            ),
          ),
        ),
        appProvider.getCartProductList.isEmpty
            ? const Center(
                child: Text("Empty"),
              )
            : ListView.builder(
                itemCount: appProvider.getCartProductList.length,
                padding: EdgeInsets.all(12.w),
                itemBuilder: (ctx, index) {
                  return SingleCartItem(
                    singleProduct: appProvider.getCartProductList[index],
                  );
                }),
      ],
    );
    // Scaffold(
    //   // appBar: AppBar(
    //   //   centerTitle: true,
    //   //   // backgroundColor: Colo,
    //   //   title: const Text(
    //   //     "Cart Screen",
    //   //     style: TextStyle(
    //   //       color: Colors.black,
    //   //     ),
    //   //   ),
    //   // ),
    //   body: );
  }
}
