import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app_koko/models/cart_model.dart';
import 'package:provider/provider.dart';

import '../components/grocery_item_tile.dart';
import '../theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/cartPage");
        },
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.shopping_bag,
          color: Apptheme.colorWhite,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: Apptheme.paddingAllMedium,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: Apptheme.sizedBoxHeightSmall,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Good morning"),
                  Text(
                    "Let's order some fresh groceries",
                    style: GoogleFonts.notoSerif(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: Apptheme.sizedBoxHeight30,
                  )
                ],
              ),
              const Divider(
                thickness: 1,
              ),
              Padding(
                padding: Apptheme.paddingSymmetricVerticalDefault,
                child: Text(
                  "Fresh Items",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[750]),
                ),
              ),
              Consumer<CartModel>(builder: (context, value, child) {
                return Expanded(
                  child: GridView.builder(
                      itemCount: value.shopItems.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, childAspectRatio: 1 / 1.2),
                      itemBuilder: (context, index) {
                        return GroceryItemTile(
                            itemName: value.shopItems[index][0],
                            itemPrice: value.shopItems[index][1],
                            imagePath: value.shopItems[index][2],
                            tileColor: value.shopItems[index][3],
                            onPressed: () {
                              Provider.of<CartModel>(context, listen: false)
                                  .addItemToCart(index);
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                backgroundColor:Apptheme.colorOliveGreen,
                                  content: (Text(
                                      "${value.shopItems[index][0]} has been added to cart",textAlign: TextAlign.center,))));
                              print(value.cartItems);
                            });
                      }),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
