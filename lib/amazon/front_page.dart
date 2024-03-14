import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:spotifyy/amazon/products.dart';
class FrontPage extends StatefulWidget {
  const FrontPage({super.key});

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {


  List items = [
   'watches',
    'tv',
    'mobiles',
    'laptops'

  ];

  int currentIndex = 0;

  List item4 = [
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image3.jpg',
    'assets/images/image2.jpg',
  ];

  List item2 = [
    'assets/image1.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image2.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image2.jpg',
    'assets/image1.jpg',
  ];

  List item3 = [
    'assets/clothe.jpeg',
    'assets/lap.jpeg',
    'assets/mob.jpeg',
    'assets/tv.jpeg',
    'assets/gadget.jpeg',
    'assets/clothe.jpeg',
    'assets/lap.jpeg',
    'assets/mob.jpeg',
    'assets/tv.jpeg',
    'assets/gadget.jpeg',
  ];


  bool icon = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [ Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Image(image: AssetImage('assets/fkart.png'),width: 50,),
                      const SizedBox(width: 15,),
                      Text('Flipkart',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.blue.shade700),)
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,),
                      child: Column(
                        children: [


                          const Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text('Brand Mall'),
                          ),
                          Container(
                            width: 20,
                            child: Transform.scale(
                              scaleX: 1,
                              scaleY: 0.8,
                              child: Switch(value: icon,
                                  activeColor: Colors.black26,
                                  onChanged:(value) {
                                setState(() {
                                  icon = value;
                                });
                                  } ),
                            ),
                          ),
                          // ToggleButtons(
                          //   isSelected: selectedIcons,
                          //   direction:vertical ? Axis.vertical : Axis.horizontal,
                          //   onPressed: (index) {
                          //     setState(() {
                          //       for (int i = 0; i < selectedIcons.length; i++) {
                          //          selectedIcons[i] = i == index;
                          //     }
                          //   });
                          // },
                          //   children: texts.cast()
                          // )
                        ],
                      ),
                    ),
                    const SizedBox(width: 15,),
                    Container(
                      height: 45,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 10,),
                          const Icon(Icons.search,color: Colors.black38,),
                          const SizedBox(width: 10,),


                          SizedBox(width: 180,
                          child: CarouselSlider.builder(

                            itemCount: items.length,
                            itemBuilder: (BuildContext context,int index,int pageIndex){

                              return Text(items[index],style: const TextStyle(fontSize: 15),);
                            },

                            options: CarouselOptions(

                              height: 200,
                              aspectRatio: 8/9,
                              viewportFraction: 1,
                              initialPage: 0,
                              enableInfiniteScroll: true,
                              reverse: false,
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 2),
                              autoPlayAnimationDuration: const Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
                              enlargeFactor: 0.3,

                              scrollDirection: Axis.vertical,

                            ),
                          ),
                          ),



                          const Icon(Icons.multitrack_audio,color: Colors.black38,),
                          const SizedBox(width: 10,),
                          const Icon(Icons.camera_alt_outlined,color: Colors.black38,)
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Container(
                  color: Colors.white,
                  height: 200,
                  width: double.infinity,
                  child: Stack(
                    children: [CarouselSlider.builder(
                      itemCount: items.length,
                      itemBuilder: (BuildContext context,int index,int pageIndex){

                        return Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage(item2[index]),
                                  fit: BoxFit.cover)
                          ),
                        );

                      },

                      options: CarouselOptions(

                        height: 200,
                        aspectRatio: 8/9,
                        viewportFraction: 1,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 2),
                        autoPlayAnimationDuration: const Duration(milliseconds: 400),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,

                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        }
                      ),
                    ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Center(
                            child: DotsIndicator(
                              decorator: DotsDecorator(
                                size: Size(10,20),
                              ),
                              reversed: false,
                              axis: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.center,
                              dotsCount: item4.length,
                              position: currentIndex,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),

                Container(
                  height: 120,
                  width: double.infinity,
                  color: Colors.white,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children:  [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/tv.jpeg'),
                                  backgroundColor: Colors.black12,
                                  radius: 40,
                                ),
                                SizedBox(height: 10,),
                                Text('T.V')
                              ],
                            ),
                            SizedBox(width: 20,),
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(context,
                                      MaterialPageRoute(builder:(context) =>  Details()));
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage('assets/mob.jpeg'),
                                    backgroundColor: Colors.black12,
                                    radius: 40,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('Mobiles')
                              ],
                            ),
                            SizedBox(width: 20,),
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/gadget.jpeg'),
                                  backgroundColor: Colors.black12,
                                  radius: 40,
                                ),
                                SizedBox(height: 10,),
                                Text('Gadgets')
                              ],
                            ),
                            SizedBox(width: 20,),
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/clothe.jpeg'),
                                  backgroundColor: Colors.black12,
                                  radius: 40,
                                ),
                                SizedBox(height: 10,),
                                Text('Offers')
                              ],
                            ),
                            SizedBox(width: 20,),
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/lap.jpeg'),
                                  backgroundColor: Colors.black12,
                                  radius: 40,
                                ),
                                SizedBox(height: 10,),
                                Text('Laptops'),
                              ],
                            ),
                            SizedBox(width: 20,),
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/tv.jpeg'),
                                  backgroundColor: Colors.black12,
                                  radius: 40,
                                ),
                                SizedBox(height: 10,),
                                Text('Game Zone'),
                              ],
                            ),
                            SizedBox(width: 20,),
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/mob.jpeg'),
                                  backgroundColor: Colors.black12,
                                  radius: 40,
                                ),
                                SizedBox(height: 10,),
                                Text('Game Zone'),
                              ],
                            ),
                            SizedBox(width: 20,),
                          ],
                        ),
                      ]
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 500,
                  width: double.infinity,
                  color: Colors.white,
                  child: GridView.builder(
                      itemCount: item3.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 2,
                          childAspectRatio: 1
                      ),
                      itemBuilder: (BuildContext buildContext, index) {
                        return
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage(item3[index]),
                                    fit: BoxFit.fill)
                            ),
                          );
                      } ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 120,
                  width: double.infinity,
                  color: Colors.white,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/mob.jpeg'),
                                  backgroundColor: Colors.black12,
                                  radius: 40,
                                ),
                                SizedBox(height: 10,),
                                Text('T.V')
                              ],
                            ),
                            SizedBox(width: 20,),
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/lap.jpeg'),
                                  backgroundColor: Colors.black12,
                                  radius: 40,
                                ),
                                SizedBox(height: 10,),
                                Text('Mobiles')
                              ],
                            ),
                            SizedBox(width: 20,),
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/clothe.jpeg'),

                                  backgroundColor: Colors.black12,
                                  radius: 40,
                                ),
                                SizedBox(height: 10,),
                                Text('Gadgets')
                              ],
                            ),
                            SizedBox(width: 20,),
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/tv.jpeg'),

                                  backgroundColor: Colors.black12,
                                  radius: 40,
                                ),
                                SizedBox(height: 10,),
                                Text('Offers')
                              ],
                            ),
                            SizedBox(width: 20,),
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/gadget.jpeg'),

                                  backgroundColor: Colors.black12,
                                  radius: 40,
                                ),
                                SizedBox(height: 10,),
                                Text('Game Zone')
                              ],
                            ),
                            SizedBox(width: 20,),
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/mob.jpeg'),
                                  backgroundColor: Colors.black12,
                                  radius: 40,
                                ),
                                SizedBox(height: 10,),
                                Text('Game Zone')
                              ],
                            ),
                            SizedBox(width: 20,),
                          ],
                        ),
                      ]
                  ),
                ),
              ],
            ),


            ]
          ),
        ),
      ),
    );
  }

}
