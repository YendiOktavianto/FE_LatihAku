import 'package:fe_latihaku/constants/constant_colors.dart';
import 'package:fe_latihaku/constants/constant_text_styles.dart';
import 'package:fe_latihaku/models/booking_place.dart';
import 'package:flutter/material.dart';

class ProductDetailsView extends StatelessWidget {
  ProductDetailsView({Key? key}) : super(key: key);
  //final ProductController productController = Get.put(ProductController());

  final List<SmProduct> smProducts = [
    SmProduct(image: 'assets/images/product-1.png'),
    SmProduct(image: 'assets/images/product-2.png'),
    SmProduct(image: 'assets/images/product-3.png'),
    SmProduct(image: 'assets/images/product-4.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightOrangeColor,
      appBar: AppBar(
        backgroundColor: lightOrangeColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .35,
            padding: const EdgeInsets.only(bottom: 30),
            width: double.infinity,
            child: Image.asset('assets/images/main_image.png'),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 40, right: 14, left: 14),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Chanel',
                          // style: GoogleFonts.poppins(
                          //   fontSize: 15,
                          //   color: Colors.grey,
                          // ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Product Name',
                              // style: GoogleFonts.poppins(
                              //   fontSize: 22,
                              //   fontWeight: FontWeight.w600,
                              // ),
                            ),
                            Text(
                              '\$135.00',
                              style: arvoOrangeBold
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque auctor consectetur tortor vitae interdum.',
                          // style: GoogleFonts.poppins(
                          //   fontSize: 15,
                          //   color: Colors.grey,
                          // ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          'Similar This',
                          // style: GoogleFonts.poppins(
                          //   fontSize: 16,
                          //   fontWeight: FontWeight.w600,
                          // ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 110,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: smProducts.length,
                            itemBuilder: (context, index) => Container(
                              margin: const EdgeInsets.only(right: 6),
                              width: 110,
                              height: 110,
                              decoration: BoxDecoration(
                                color: lightBlueColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Image(
                                  height: 70,
                                  image: AssetImage(smProducts[index].image),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: 50,
                    height: 5,
                    decoration: BoxDecoration(
                      color: greyColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 50,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: greyColor),
              ),
              child: Icon(
                Icons.favorite,
                size: 30,
                color: Colors.grey,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: InkWell(
                onTap: () {
                  //productController.addToCart();
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child
                    //   : Obx(
                    // () => productController.isAddLoading.value
                    //     ? SizedBox(
                    //         width: 20,
                    //         height: 20,
                    //         child: CircularProgressIndicator(
                    //           color: Colors.white,
                    //           strokeWidth: 3,
                    //         ),
                    //       )
                        : Text(
                            '+ Add to Cart',
                            // style: GoogleFonts.poppins(
                            //   fontSize: 15,
                            //   fontWeight: FontWeight.w500,
                            //   color: Colors.white,
                            // ),
                          ),
                  ),
                ),
              ),
           // ),
          ],
        ),
      ),
    );
  }
}
