// ignore_for_file: use_build_context_synchronously

import 'package:ecommerce/configs/app_size/app_size.dart';
import 'package:ecommerce/screens/navigation_bar_screen/navigation_bar.dart';
import 'package:ecommerce/widget/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../firebase_helper/firebase_firestore/firebase_firestore_helper.dart';
import '../../provider/provider.dart';

class CartItemCheckout extends StatefulWidget {
  const CartItemCheckout({
    super.key,
  });

  @override
  State<CartItemCheckout> createState() => _CartItemCheckoutState();
}

class _CartItemCheckoutState extends State<CartItemCheckout> {
  int groupValue = 1;
  @override
  Widget build(BuildContext context) {
    AppProvider appProvider = Provider.of<AppProvider>(
      context,
    );
    return Padding(
      padding: EdgeInsets.all(8.w),
      child: Column(
        children: [
          SizedBox(
            height: appbarHeight,
          ),
          Container(
            height: 80.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0.r),
                border: Border.all(
                    color: Theme.of(context).primaryColor, width: 3.0.w)),
            width: double.infinity,
            child: Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value!;
                    });
                  },
                ),
                const Icon(Icons.money),
                SizedBox(
                  width: 12.0.w,
                ),
                Text(
                  "Cash on Delivery",
                  style: TextStyle(
                    fontSize: 18.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24.0.h,
          ),
          Container(
            height: 80.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0.r),
                border: Border.all(
                    color: Theme.of(context).primaryColor, width: 3.0.w)),
            width: double.infinity,
            child: Row(
              children: [
                Radio(
                  value: 2,
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value!;
                    });
                  },
                ),
                const Icon(Icons.money),
                SizedBox(
                  width: 12.0.w,
                ),
                Text(
                  "Pay Online",
                  style: TextStyle(
                    fontSize: 18.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24.0.h,
          ),
          MyButton(
            dark: true,
            name: "Continues",
            onPressed: () async {
              if (groupValue == 1) {
                bool value = await FirebaseFirestoreHelper.instance
                    .uploadOrderedProductFirebase(appProvider.getBuyProductList,
                        context, "Cash on delivery");

                appProvider.clearBuyProduct();
                if (value) {
                  Future.delayed(const Duration(seconds: 2), () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavBar()));
                  });
                }
              } else {
                // int value = double.parse(
                //         appProvider.totalPriceBuyProductList().toString())
                //     .round()
                //     .toInt();
                // String totalPrice = (value * 100).toString();
                // await StripeHelper.instance
                //     .makePayment(totalPrice.toString(), context);
              }
            },
          )
        ],
      ),
    );
    // Scaffold(
    // // appBar: AppBar(
    // //   backgroundColor: Colors.white,
    // //   centerTitle: true,
    // //   title: const Text(
    // //     "CartItemCheckout",
    // //     style: TextStyle(
    // //       color: Colors.black,
    // //     ),
    // //   ),
    // // ),
    // body: ,
    // );
  }
}
