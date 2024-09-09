import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app_koko/models/cart_model.dart';
import 'package:provider/provider.dart';

import '../theme.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart Page",
          style: GoogleFonts.roboto(
              color: Apptheme.colorOliveGreen,
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
        backgroundColor: Apptheme.colorWhite,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(
          Icons.arrow_back_outlined,
          color: Colors.grey[800],
          size: 30,
        ),),
        shadowColor: Colors.black,
        elevation: 1,
        centerTitle: true,
      ),

      body: Column(
        children: [
        const  SizedBox(height: Apptheme.sizedBoxHeightSmall,),
          Consumer<CartModel>(builder: (context, value, child) {
            return Expanded(
              child: ListView.builder(
                  itemCount: value.cartItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        tileColor: Colors.grey[300],
                        title: Text(value.cartItems[index][0],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            "\$${value.cartItems[index][1]}",style: TextStyle(color: Colors.grey[700], fontSize: 16),
                          ),
                        ),
                        leading: Image.asset(value.cartItems[index][2]),
                        trailing: IconButton(
                            onPressed: () {
                              Provider.of<CartModel>(context, listen: false).removeCartItem(index);
                            },
                            icon:const  Icon(
                              Icons.cancel,
                            )),
                      ),
                    );
                  }),
            );
          }),
        ],
      ),
    );
  }
}
