import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with TickerProviderStateMixin{

late final TabController _tabController;
late final PageController _pageController;
final double iconSpacing = 15.0;



 @override
 void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _pageController = PageController();
  }

@override
void dispose() {
  _tabController.dispose();
  _pageController.dispose();
  super.dispose();
}

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(height: 30,width: 15,),
                      Icon(Icons.arrow_back),
                      SizedBox(width: 10,),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          height: 50,
                          width: 320,
                          color: Colors.white,
                          child: Text('Some_one',style: TextStyle(
                            fontSize: 25,fontWeight: FontWeight.w600
                          ),),
                        ),
                      ),
                      Icon(Icons.more_vert,size: 30,),
                      SizedBox(width: 10,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black12,
                          radius: 50,
                          backgroundImage: AssetImage('assets/justin.jpeg'),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Justin Beiber',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                            SizedBox(height: 5,),
                            Text('Singer',style: TextStyle(fontSize: 16,)),
                            SizedBox(height: 5,),
                            Text('New song out now',style: TextStyle(fontSize: 16,)),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 150,
                      width: 250,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('50',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
                              Text('posts',style: TextStyle(fontSize: 18,))
                            ],
                          ),
                          Column(
                            children: [
                              Text('480',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600)),
                              Text('followers',style: TextStyle(fontSize: 18,))
                            ],
                          ),
                          Column(
                            children: [
                              Text('85',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600)),
                              Text('following',style: TextStyle(fontSize: 18,))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text('Follow',style: TextStyle(
                      color: Colors.white,fontSize: 20
                    ),)),
                  ),
                  Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text('Message',style: TextStyle(
                        color: Colors.black,fontSize: 20
                    ),)),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 100,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    controller: _pageController,
                    children: [
                      Row(
                      children: [

                        CircleAvatar(
                          backgroundColor: Colors.black12,

                          radius: 40,
                          backgroundImage: AssetImage('assets/justin.jpeg'),
                        ),
                        SizedBox(width: 15,),
                        CircleAvatar(
                          backgroundColor: Colors.black12,
                          radius: 40,
                        ),
                        SizedBox(width: 15,),
                        CircleAvatar(
                          backgroundColor: Colors.black12,
                          radius: 40,
                        ),
                        SizedBox(width: 15,),
                        CircleAvatar(
                          backgroundColor: Colors.black12,
                          radius: 40,
                        ),
                        SizedBox(width: 15,),
                        CircleAvatar(
                          backgroundColor: Colors.black12,
                          radius: 40,
                        ),
                      ],
                    ),
                    ]
                  ),
                ),
              ),
               DefaultTabController(
                 length: 3,
                 child: TabBar(tabs: [
                      Tab(
                        icon: Icon(Icons.grid_on),
                      ),
                      Tab(
                        icon: Icon(Icons.movie_filter_outlined),
                      ),
                      Tab(
                        icon: Icon(Icons.person_pin_outlined),
                      )
                    ]
                    ),
               ),
              Expanded(
                child: PageView(
                    controller: _pageController,
                    children: [
                  Center(
                    child: Text("It's hi here"),
                  ),
                  Center(
                    child: Text("It's rainy here"),
                  ),
                  Center(
                    child: Text("It's sunny here"),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
