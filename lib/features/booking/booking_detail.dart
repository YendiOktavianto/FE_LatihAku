import 'package:carousel_slider/carousel_slider.dart';
import 'package:fe_latihaku/configurations/size_config.dart';
import 'package:fe_latihaku/constants/constant_button.dart';
import 'package:fe_latihaku/constants/constant_colors.dart';
import 'package:fe_latihaku/constants/constant_text_styles.dart';
import 'package:fe_latihaku/models/booking_place.dart';
import 'package:fe_latihaku/utils/bottom_navbar.dart';
import 'package:fe_latihaku/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:like_button/like_button.dart';

class ProductDetailsView extends StatefulWidget {
  ProductDetailsView({Key? key}) : super(key: key);

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  //final ProductController productController = Get.put(ProductController());
  int _current = 0;
  bool isLiked = false;

  Future<bool> onTapX(isLiked) async {
    this.isLiked = !isLiked;
    return !isLiked;
  }

  final CarouselController _controller = CarouselController();

  final List<SmProduct> smProducts = [
    SmProduct(image: 'assets/product-1.png'),
    SmProduct(image: 'assets/product-1.png'),
    SmProduct(image: 'assets/product-1.png'),
    SmProduct(image: 'assets/product-1.png'),
    SmProduct(image: 'assets/product-1.png'),
    SmProduct(image: 'assets/product-1.png'),
    SmProduct(image: 'assets/product-1.png'),
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
            child: CarouselSlider(
              items: smProducts.map((item) => Image.asset(item.image)).toList(),
              options: CarouselOptions(
                  height: 400,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),

            //Image.asset('assets/product-1.png'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: smProducts.map(
              (image) {
                int index = smProducts.indexOf(image);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index
                          ? const Color.fromRGBO(0, 0, 0, 0.9)
                          : const Color.fromRGBO(0, 0, 0, 0.4)),
                );
              },
            ).toList(), // this was the part the I had to add
          ),
          Expanded(
            child:
                // Stack(
                //   children: [
                Container(
              height: 200,
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
                    RatingBarIndicator(
                      rating: 2.75,
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 30.0,
                      //direction: Axis.vertical,
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'Lapangan Chandra Wijaya',
                      style: arvoDarkOrangeBookingDetail,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '08:00 - 20:00',
                          style: arvoOrangeBookingDetail,
                          textAlign: TextAlign.center,
                        ),
                        Text('\$135.00', style: arvoOrangeBold),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque auctor consectetur tortor vitae interdum.',
                      style: ubuntuOrangeOriginalBookingDetail,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.white,
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            likeButton(isLiked, onTapX),
            const SizedBox(width: 20),
            Expanded(
              child: SizedBox(
                width: getProportionateScreenWidth(300),
                height: getProportionateScreenHeight(50),
                child: ElevatedBtnApp(
                    shapex: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    colorx: lightOrangeColor,
                    childx: const Text(
                      "Add To Cart",
                      style: arvoDarkOrangeBookingDetail,
                    ),
                    // ),
                    onPressedx: () {
                      changeScreen(context, BottomNavbar());
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
