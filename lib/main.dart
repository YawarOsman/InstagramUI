import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {

    _tabController = new TabController(vsync: this, length:2);
    super.initState();
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
 

   List storyList = [
    {
      "imageUrl": "assets/1.jpg",
      "name": "rubix"
    },
    {
      "imageUrl": "assets/2.jpg",
      "name": "rubix"
    },
    {
      "imageUrl": "assets/yawar.jpg",
      "name": "fish"
    },
    {
      "imageUrl": "assets/4.png",
      "name": "car"
    },
    {
      "imageUrl": "assets/5.jpg",
      "name": "bicycle"
    },
    {
      "imageUrl": "assets/6.jpg",
      "name": "rubix"
    },
    {
      "imageUrl": "assets/yawar.jpg",
      "name": "fish"
    },
    {
      "imageUrl": "assets/1.jpg",
      "name": "rubix"
    },
    {
      "imageUrl": "assets/2.jpg",
      "name": "rubix"
    },
    {
      "imageUrl": "assets/1.jpg",
      "name": "rubix"
    },
    {
      "imageUrl": "assets/2.jpg",
      "name": "rubix"
    },
    {
      "imageUrl": "assets/yawar.jpg",
      "name": "fish"
    },
    {
      "imageUrl": "assets/4.png",
      "name": "car"
    },
    {
      "imageUrl": "assets/5.jpg",
      "name": "bicycle"
    },

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

backgroundColor: Colors.black,
      endDrawer: Drawer(
        child: Container(
          height: 100,
          color: Colors.black,
          ),),

      appBar: AppBar(
backgroundColor: Colors.black,
        toolbarHeight: 30,

        title: Row(
          children: [
          Text("YawarOsman"),
          Padding(
              padding:EdgeInsets.only(top: 10),
              child: Icon(Icons.keyboard_arrow_down_rounded)
          ),

        ],)
      ),
      body:ListView(
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(left: 5,top: 10),
                child:Column(
                    children: [
                      Row(
                          children:[
                            Column(
                              children: [
                                Row(
                                    children: [
                                      Container(
                                        width: 90,height: 90,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage("assets/3.jpg")
                                            )
                                        ),
                                      ),
                                    ]

                                ),


                              ],),
                            Column(
                                children:[
                                  Padding(padding: EdgeInsets.only(left:300)),
                                  Row(
                                      children:[
                                        Text("11",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                                        Padding(padding: EdgeInsets.only(left:70)),
                                        Text("542",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold)),
                                        Padding(padding: EdgeInsets.only(left:70)),
                                        Text("369",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold)),

                                      ]
                                  ),
                                  Row(
                                      children: [
                                        Padding(padding: EdgeInsets.only(left:6)),
                                        Text("Posts",style: TextStyle(color: Colors.white)),
                                        Padding(padding: EdgeInsets.only(left:43)),
                                        Text("Followers",style: TextStyle(color: Colors.white)),
                                        Padding(padding: EdgeInsets.only(left:40)),
                                        Text("Following",style: TextStyle(color: Colors.white)),
                                      ]
                                  )
                                ]
                            )

                          ]
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                          height: 65,
                          child:Column(
                              children: [
                                Row(
                                  children: [
                                    Text("YawarOsman",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),


                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("If you wake up without any target,\nit better to going to your bed and sleep again",style: TextStyle(color: Colors.white),)
                                  ],
                                )
                              ]
                          )
                      ),
                      Row(
                        children: [
                          FlatButton(
                            minWidth: 193,
                            height: 35,
                            onPressed: (){},
                            child: Text("Edit Profile",style: TextStyle(color: Colors.white,fontSize: 16),),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                                side: BorderSide(color: Colors.grey)
                            ),

                          ),
                          Padding(padding: EdgeInsets.only(right: 7)),
                          FlatButton(
                            minWidth: 193,
                            height: 35,
                            onPressed: (){},
                            child: Text("Saved",style: TextStyle(color: Colors.white,fontSize: 16),),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                                side: BorderSide(color: Colors.grey)
                            ),

                          )
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(2),),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children:List.generate(storyList.length, (index) =>
                          Column(
                            children: [
                              Row(
                              children:[
                              Padding(
                            padding: EdgeInsets.only(left: 2,top: 10,bottom: 10,right: 16),
                            child: Container(

                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                border: Border.all(width: 3,color: Colors.grey)
                              ),
                              child: Container(
                                   width: 62,height: 62,
                                    decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                    image: AssetImage(storyList[index]["imageUrl"])
                                    )
                                 ),

                                ),
                              ),
                              )
                               ]
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 10,right: 10),
                                    child: Container(
                                      child: Text(storyList[index]["name"],style: TextStyle(color: Colors.white),),
                                    ),
                                  )
                                ],
                              ),

                              ]
                            ),
                          )
                          )
                        ),
                    Padding(padding: EdgeInsets.all(10)),
                     Container(
                       child:TabBar(
                         controller: _tabController,
                       tabs: [
                         Tab(icon: Icon(Icons.grid_on)),
                         Tab(icon: Icon(Icons.person_pin_outlined))
                       ],
                     ),
                     ),

                         Column(
                           children: [
                             Container(
                                 height:MediaQuery.of(context).size.height,

                                 child: TabBarView(
                                     controller: _tabController,
                                     children: <Widget>[
                                       GridView.count(
                                         physics: NeverScrollableScrollPhysics(),
                                         crossAxisCount: 3,
                                         mainAxisSpacing: 3,
                                         crossAxisSpacing: 3,
                                         children: List.generate(storyList.length, (index) =>
                                             Container(
                                               width: 137,height: 137,
                                               decoration: BoxDecoration(
                                                   image: DecorationImage(
                                                       fit: BoxFit.fill,
                                                       image: AssetImage(storyList[index]["imageUrl"])
                                                   )
                                               ),
                                             )

                                         ),
                                       ),
                                       GridView.count(
                                         physics: NeverScrollableScrollPhysics(),
                                         crossAxisCount: 3,
                                         mainAxisSpacing: 3,
                                         crossAxisSpacing: 3,
                                         children: List.generate(storyList.length, (index) =>
                                             Container(
                                               width: 137,height:137,
                                               decoration: BoxDecoration(
                                                   image: DecorationImage(
                                                       fit: BoxFit.fill,
                                                       image: AssetImage(storyList[index]["imageUrl"])
                                                   )
                                               ),
                                             )

                                         ),
                                       )
                                     ]
                                 )
                             )
                           ],
                         )





                    ]
                )
            ),
          ]

      )





      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
