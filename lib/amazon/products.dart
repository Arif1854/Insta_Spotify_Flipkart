import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:spotifyy/amazon/front_page.dart';



class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {


  int currentIndex = 0;

  List a = [
    'assets/image1.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          shadowColor: Colors.black12,
          leading: TextButton(
              onPressed: () {

                setState(() {
                  Navigator.pop(context,[const FrontPage()]);
                });

              },
              child:const Icon(Icons.arrow_back)),
          title: Container(
            height: 50,
            width: 280,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10)
            ),
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.search,color: Colors.black38,),
                ),
                SizedBox(width: 10,),
                Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: Text('Search for products'),
                ),
                SizedBox(width: 15,),
                Icon(Icons.mic_none_rounded,color: Colors.black38,)
              ],
            )
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Icon(Icons.shopping_cart_outlined),
            ),
          ],
        ),
        body: Stack(
          children: [
            ListView(
                children:[
                  const SizedBox(height: 50,),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      children: [
                        Stack(
                            alignment: Alignment.topRight,
                            children: [
                              CarouselSlider.builder(
                                itemCount: a.length,
                                itemBuilder:(BuildContext context,int index,int pageIndex){

                                  return Container(
                                      height: 100,
                                      width: double.infinity,
                                      color: Colors.white,
                                      child: Image(
                                        image: AssetImage(a[index]),
                                        fit: BoxFit.fill,
                                      )
                                  );

                                },
                                options:  CarouselOptions(

                                  height: 400,
                                  aspectRatio: 20/5,
                                  viewportFraction: 1,
                                  initialPage: 0,
                                  enableInfiniteScroll: false,
                                  reverse: false,
                                  autoPlay: false,
                                  autoPlayInterval: const Duration(seconds: 1),
                                  autoPlayAnimationDuration: const Duration(milliseconds: 900),
                                  autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                                  enlargeCenterPage: true,
                                  enlargeFactor: 0.0,
                                  scrollDirection: Axis.horizontal,
                                  onPageChanged: (index, reason){

                                    setState(() {
                                      currentIndex = index;
                                    });

                                  }

                                ),

                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 430,right: 150,),
                                child: DotsIndicator(
                                  decorator:  const DotsDecorator(
                                    size: Size(10,20),
                                  ),
                                  reversed: false,
                                  axis: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  dotsCount: a.length,
                                  position: currentIndex,

                                ),
                              ),

                              const Column(
                                children: [
                                  Icon(Icons.favorite_border,size: 40,color: Colors.black45,),
                                  SizedBox(height: 15,),
                                  Icon(Icons.share_outlined,size: 40,color: Colors.black45,),
                                ],
                              ),

                            ]
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 130.0),
                          child: Text('Combo Offer For Every Appliances',style: TextStyle(fontSize: 17),),
                        ),
                        const Divider(height: 5,indent: 20,endIndent: 20,thickness:1,),
                        const SizedBox(height: 20,),
                        const Padding(
                          padding: EdgeInsets.only(right:180.0),
                          child: Text('Minimum Order Quantity : 2',style: TextStyle(fontSize: 16),),
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            const SizedBox(width: 10,),
                            RatingBar.builder(
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 30,
                                itemBuilder:(context, _) =>
                                const Icon(Icons.star,color: Colors.green,),
                                onRatingUpdate:(rating) {
                                  // print(rating);
                                } ),
                            // RatingStars(
                            //   value: value,
                            //   onValueChanged: (v) {
                            //     //
                            //     setState(() {
                            //       value = v;
                            //     });
                            //   },
                            //   starBuilder: (index, color) => Icon(
                            //     Icons.ac_unit_outlined,
                            //     color: color,
                            //   ),
                            //   starCount: 5,
                            //   starSize: 20,
                            //   valueLabelColor: const Color(0xff9b9b9b),
                            //   valueLabelTextStyle: const TextStyle(
                            //       color: Colors.white,
                            //       fontWeight: FontWeight.w400,
                            //       fontStyle: FontStyle.normal,
                            //       fontSize: 12.0),
                            //   valueLabelRadius: 10,
                            //   maxValue: 5,
                            //   starSpacing: 2,
                            //   maxValueVisibility: true,
                            //   valueLabelVisibility: true,
                            //   animationDuration: Duration(milliseconds: 1000),
                            //   valueLabelPadding:
                            //   const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
                            //   valueLabelMargin: const EdgeInsets.only(right: 8),
                            //   starOffColor: const Color(0xffe7e8ea),
                            //   starColor: Colors.green,
                            // ),
                            const SizedBox(width: 10,),
                            const Text('375 ratings',style: TextStyle(color: Colors.blue),)
                          ],
                        ),
                        const SizedBox(height: 5,),
                        const Row(children: [
                          SizedBox(width: 10,),
                          Icon(Icons.arrow_downward,color: Colors.green,size:35,),
                          Text('70%',style: TextStyle(fontSize: 30,color: Colors.green),),
                          SizedBox(width: 10,),
                          Text('12000',style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontSize: 20,
                            color: Colors.black54
                          ),),
                          SizedBox(width: 10,),
                          Text('10999',style: TextStyle(
                            fontSize: 20,
                          ),),
                        ],
                        ),
                        const Divider(height: 5,thickness:1,),
                        Row(
                          children: [
                            const SizedBox(height: 60,width: 10,),
                            const Text('Find a seller that delivers to you'),
                            const SizedBox(width: 50,),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black26)
                              ),
                              height: 35,
                              width: 140,

                              child: const Center(child: Text('Enter Pincode')),
                            )
                          ],
                        ),
                        const Divider(height: 5,thickness:5,color: Colors.black12,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 10,height: 50,),
                            Icon(Icons.fire_truck),
                            Text('FREE Delivery',style: TextStyle(color: Colors.green,fontSize: 17),),
                            Text('|'),
                            Text('Delivery by 8 Feb, Thursday'),
                            Icon(Icons.chevron_right)
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Row(
                    children: [
                      SizedBox(width: 60,),
                      Text('If ordered within',style: TextStyle(fontSize: 17),),
                      Text('28m 46s')
                    ],
                  ),
                  const Divider(height: 5,thickness:5,color: Colors.black12,),
                  Container(
                    height: 100,width: double.infinity,
                    color: Colors.white,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.orange,
                              child: Icon(Icons.restart_alt,color: Colors.white,size: 30,),
                            ),
                            Text('7 Days Replacement')
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.currency_rupee,color: Colors.green,size: 30,),
                            Text('Cash on Delivery')
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(height: 5,thickness:5,color: Colors.black12,),
                  const SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text('All Offers & Coupons',style: TextStyle(fontSize: 15),),
                        Icon(Icons.keyboard_arrow_right)
                      ],
                    ),
                  ),
                  const Divider(height: 5,thickness:5,color: Colors.black12,),
                  const SizedBox(
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.stars_sharp,color: Colors.teal,size: 40,),
                        Text('See bestsellers in Home - Appliances',style: TextStyle(
                            fontSize: 18
                        ),),
                        Icon(Icons.keyboard_arrow_right)
                      ],
                    ),
                  ),
                  const Divider(height: 5,thickness:5,color: Colors.black12,),
                ]
            ),
          ]
        ),
    );
  }
}
