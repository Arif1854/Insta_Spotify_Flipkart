// import 'package:flutter/material.dart';
//
// class Spotify extends StatefulWidget {
//   const Spotify({super.key});
//
//   @override
//   State<Spotify> createState() => _SpotifyState();
// }
//
// class _SpotifyState extends State<Spotify> {
//   late ScrollController  scrollController;
//   double imageSize = 0;
//   double initialSize = 240;
//   bool showText = false;
//
//   @override
//   void initState() {
//     imageSize = initialSize;
//     scrollController = ScrollController()..addListener(() {
//       imageSize = initialSize - scrollController.offset;
//       print(imageSize);
//       if (
//       imageSize > 0 && imageSize < initialSize
//       ){
//         setState(() {
//           showText = scrollController.offset > 0;
//         });
//       }
//     });
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [] Stack(
//           children: [
//             Container(
//               color: Colors.greenAccent.shade200,
//             ),
//             SafeArea(
//               child: SingleChildScrollView(
//                 controller: scrollController,
//                 physics: BouncingScrollPhysics(),
//                 child: Column(
//                   children: [
//                     Container(
//                       width: MediaQuery.of(context).size.width,
//                       decoration: BoxDecoration(
//                         gradient: LinearGradient(
//                           begin: Alignment.topCenter,
//                           end: Alignment.bottomCenter,
//                           colors: [
//                             Colors.black.withOpacity(0),
//                             Colors.black.withOpacity(0),
//                             Colors.black.withOpacity(1),
//                           ]
//                         )
//                       ),
//                       child: Column(
//                         children: [
//                           Container(
//                             child: Padding(
//                               padding: const EdgeInsets.symmetric(vertical:40),
//                               child: Column(
//                                 children: [
//                                   Container(
//                                     decoration : BoxDecoration(
//                                       boxShadow:[
//                                         BoxShadow(
//                                           color: Colors.black.withOpacity(0.8),
//                                           blurRadius: 20,
//                                           spreadRadius: 10
//                                         )
//                                       ]
//                                     ),
//                                     child: Image(image: AssetImage('assets/justin.jpeg'),
//                                     width: imageSize,
//                                     height: imageSize,
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.all(16.0),
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Text('qwerty qwerty qwerty qwerty qwerty qwerty qwerty qwerty qwerty',
//                                         style: TextStyle(
//                                           color: Colors.white
//                                         ),
//                                         ),
//                                         SizedBox(height: 10,),
//                                         Row(
//                                           children: [
//                                             Image(image: AssetImage('assets/justin.jpeg'),
//                                             width: 35,
//                                             height: 35,
//                                             ),
//                                             SizedBox(width: 10,),
//                                             Text('Made For Arif',style: TextStyle(
//                                               color: Colors.white
//                                             ),)
//                                           ],
//                                         ),
//                                         SizedBox(height: 10,),
//                                         Text('7580000 saves . 4h 6m',style: TextStyle(
//                                           color: Colors.white
//                                         ),
//                                         ),
//                                         Stack(
//                                           children: [
//                                             Row(
//                                               children: [
//                                                 Icon(Icons.favorite_border_outlined,color: Colors.white,),
//                                                 SizedBox(width: 10,),
//                                                 Icon(Icons.share_outlined,color: Colors.white,),
//                                                 SizedBox(width: 10,),
//                                                 Icon(Icons.more_vert,color: Colors.white,),
//                                               ],
//                                             ),
//                                           ],
//                                         )
//                                       ],
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                           // Padding(
//                           //   padding: const EdgeInsets.symmetric(vertical: 40),
//                           //   child: Column(
//                           //     crossAxisAlignment: CrossAxisAlignment.start,
//                           //     children: [
//                           //       Padding(
//                           //         padding: const EdgeInsets.all(8.0),
//                           //         child: Text('A mega mix of 20 favorites from the last few years with massive hit songs !',style: TextStyle(
//                           //           color: Colors.white60
//                           //         ),
//                           //         ),
//                           //       ),
//                           //       SizedBox(height: 15,),
//                           //       Row(
//                           //         children: [
//                           //           SizedBox(width: 10,),
//                           //           Image(image: AssetImage('assets/justin.jpeg'),
//                           //           width: 35,
//                           //           height: 35,),
//                           //           SizedBox(width: 10,),
//                           //           Text('Made for',style: TextStyle(
//                           //             color: Colors.white54
//                           //           ),),
//                           //           SizedBox(width: 5,),
//                           //           Text('Arif',style: TextStyle(color: Colors.white),)
//                           //         ],
//                           //       ),
//                           //       SizedBox(height: 10,),
//                           //       Row(
//                           //         children: [
//                           //           SizedBox(width: 10,),
//                           //           Text('100000 saves . 4h 1min',style: TextStyle(
//                           //             color: Colors.white60
//                           //           ),)
//                           //         ],
//                           //       ),
//                           //       SizedBox(height: 15,),
//                           //       Row(
//                           //         children: [
//                           //           SizedBox(width: 10,),
//                           //           Icon(Icons.favorite_border_outlined,
//                           //             color: Colors.white,size: 40,),
//                           //           SizedBox(width: 20,),
//                           //           Icon(Icons.share_outlined,
//                           //             color: Colors.white,size: 40,),
//                           //           SizedBox(width: 20,),
//                           //           Icon(Icons.menu,
//                           //             color: Colors.white,size: 40,),
//                           //           SizedBox(width: 130,),
//                           //           Icon(Icons.shuffle,
//                           //             color: Colors.green.shade600,size: 40,),
//                           //           Icon(Icons.play_circle,
//                           //             color: Colors.green.shade600,size: 60,)
//                           //         ],
//                           //       ),
//                           //     ],
//                           //   ),
//                           // )
//                         ],
//                       ),
//                     ),
//                     Container(
//                       height: 1000,
//                       color: Colors.black,
//                       child:  Column(
//                         children: [
//                           ListTile(
//                             leading: Image(image: AssetImage('assets/justin.jpeg')),
//                             title: Row(
//                               children: [
//                                 Text('BABY',style: TextStyle(color: Colors.white),),
//                                 SizedBox(width: 245,),
//                                 Icon(Icons.more_vert,color: Colors.white,)
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: 15,),
//                           ListTile(
//                             leading: Image(image: AssetImage('assets/justin.jpeg')),
//                             title: Row(
//                               children: [
//                                 Text('BABY',style: TextStyle(color: Colors.white),),
//                                 SizedBox(width: 245,),
//                                 Icon(Icons.more_vert,color: Colors.white,)
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: 15,),
//                           ListTile(
//                             leading: Image(image: AssetImage('assets/justin.jpeg')),
//                             title: Row(
//                               children: [
//                                 Text('BABY',style: TextStyle(color: Colors.white),),
//                                 SizedBox(width: 245,),
//                                 Icon(Icons.more_vert,color: Colors.white,)
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: 15,),
//                           ListTile(
//                             leading: Image(image: AssetImage('assets/justin.jpeg')),
//                             title: Row(
//                               children: [
//                                 Text('BABY',style: TextStyle(color: Colors.white),),
//                                 SizedBox(width: 245,),
//                                 Icon(Icons.more_vert,color: Colors.white,)
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: 15,),
//                           ListTile(
//                             leading: Image(image: AssetImage('assets/justin.jpeg')),
//                             title: Row(
//                               children: [
//                                 Text('BABY',style: TextStyle(color: Colors.white),),
//                                 SizedBox(width: 245,),
//                                 Icon(Icons.more_vert,color: Colors.white,)
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: 15,),
//                           ListTile(
//                             leading: Image(image: AssetImage('assets/justin.jpeg')),
//                             title: Row(
//                               children: [
//                                 Text('BABY',style: TextStyle(color: Colors.white),),
//                                 SizedBox(width: 245,),
//                                 Icon(Icons.more_vert,color: Colors.white,)
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: 15,),
//                           ListTile(
//                             leading: Image(image: AssetImage('assets/justin.jpeg')),
//                             title: Row(
//                               children: [
//                                 Text('BABY',style: TextStyle(color: Colors.white),),
//                                 SizedBox(width: 245,),
//                                 Icon(Icons.more_vert,color: Colors.white,)
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: 15,),
//                           ListTile(
//                             leading: Image(image: AssetImage('assets/justin.jpeg')),
//                             title: Row(
//                               children: [
//                                 Text('BABY',style: TextStyle(color: Colors.white),),
//                                 SizedBox(width: 245,),
//                                 Icon(Icons.more_vert,color: Colors.white,)
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: 15,),
//                           ListTile(
//                             leading: Image(image: AssetImage('assets/justin.jpeg')),
//                             title: Row(
//                               children: [
//                                 Text('BABY',style: TextStyle(color: Colors.white),),
//                                 SizedBox(width: 245,),
//                                 Icon(Icons.more_vert,color: Colors.white,)
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//                 child: Visibility(
//                   visible: showText,
//                   child: Container(
//                               child: Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Icon(Icons.arrow_back,color: Colors.white,),
//                     ),
//                     Text('hi')
//                   ],
//                               ),
//                             ),
//                 )),
//           ],
//         ),
//       )
//     );
//   }
// }

import 'package:flutter/material.dart';

class Spotify extends StatefulWidget {
  const Spotify({Key? key}) : super(key: key);

  @override
  State<Spotify> createState() => _SpotifyState();
}

class _SpotifyState extends State<Spotify> {
  late ScrollController scrollController;
  double imageSize = 0;
  double initialSize = 240;
  bool showText = false;

  @override
  void initState() {
    imageSize = initialSize;
    scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          showText = scrollController.offset > 0;
          imageSize = initialSize - scrollController.offset;
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent.shade200,
      body: SafeArea(
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.greenAccent.shade200, // Make the app bar transparent
              floating: true,
              pinned: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  // Handle back button press
                },
              ),
              title: showText ? Text('Beiber', style: TextStyle(color: Colors.white)) : null,
            ),
            SliverToBoxAdapter(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [

                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(1),
                        ])),
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10,top: 40),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.8),
                                        blurRadius: 25,
                                        spreadRadius: 10)
                                  ]),
                              child: Image(
                                image: AssetImage('assets/justin.jpeg'),
                                width: imageSize,
                                height: imageSize,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'qwerty qwerty qwerty qwerty qwerty qwerty qwerty qwerty qwerty',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Image(
                                        image: AssetImage('assets/justin.jpeg'),
                                        width: 35,
                                        height: 35,
                                      ),
                                      SizedBox(width: 10,),
                                      Text(
                                        'Made For Arif',
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    '7580000 saves . 4h 6m',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(height: 10,),
                                  Stack(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.favorite_border_outlined,size: 39.5, color: Colors.white,),
                                          SizedBox(width: 10,),
                                          Icon(Icons.share_outlined,size: 39, color: Colors.white,),
                                          SizedBox(width: 10,),
                                          Icon(Icons.more_vert,size: 39, color: Colors.white,),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return Container(
                    width: double.infinity,
                    color: Colors.black,
                    child: ListTile(
                      leading: Image(image: AssetImage('assets/justin.jpeg'),),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Song $index', style: TextStyle(color: Colors.white)),
                          Icon(Icons.more_vert,color: Colors.white,)
                        ],
                      ),
                      onTap: () {
                        // Handle song tap
                      },
                    ),
                  );
                },
                childCount: 20, // You can change this number based on your requirement
              ),
            ),

          ],
        ),
      ),
    );
  }
}
