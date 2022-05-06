// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors


import 'package:intl/intl.dart';

import 'package:flutter/material.dart';

import 'Widgets/widgets.dart';


class Badge extends StatefulWidget {
  const Badge({ Key? key }) : super(key: key);

  @override
  State<Badge> createState() => _BadgeState();
}

class _BadgeState extends State<Badge> with TickerProviderStateMixin {
  // firebaseAuth fb=firebaseAuth.Instance;

  late TabController tabController;
  int cpt=0;
  int ami=0;
  String now = DateFormat("dd-MM-yyyy").format(DateTime.now());
  @override
  void initState() {
    tabController= TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height*0.7;
    // ignore: prefer_const_constructors
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30, left: 20),
              child: 
                     // ignore: prefer_const_constructors
                        Icon(
                          Icons.edit,
                          color: Color(0xff699BF7),
                          size: 25.0
                        ),
            ),
      
            Container(
              margin: EdgeInsets.only(top: 30, left: 175),
              child:
              Text(
                          "Profil",
                          style: 
                          TextStyle(fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          ),
                          ),
            ),
      
            Container(
               margin: EdgeInsets.only(top: 30, left: 335),
               child:
               Icon(
                 Icons.link,
                 color: Color(0xff699BF7),
                 size: 25.0,
               ),
            ),
      
            Container(
               margin: EdgeInsets.only(top: 20, left: 355),
               child:
               PopupMenuButton(
                          onSelected: popupMenuSelected,
                          itemBuilder: (BuildContext context) =>
                          <PopupMenuEntry<String>>[
                            const PopupMenuItem( child: const Text("child 0"), value: "Value 0",),
                            const PopupMenuItem( child: const Text("child 1"), value: "Value 1",),
                            const PopupMenuItem( child: const Text("child 2"), value: "Value 2",),
                          ],
                          )
                
            ),
      
      
            Container(
              margin: EdgeInsets.only(top: 75, left: 135),
              child: ClipRRect(
                 
                 borderRadius: BorderRadius.circular(150),
                 
                              
                 child:
                 Image.asset('assets/images/images.jpg',
                 scale: 2.5,
                 ),
                 
              ),
            ),
      
      
           Container(
              margin: EdgeInsets.only(top: 150, left: 105),
              child:
              Text(
                          "PriviligedUser",
                          style: 
                          TextStyle(fontSize: 30.0,
                          color: Color.fromARGB(255, 68, 67, 67),
                          fontWeight: FontWeight.w800,
                          ),
                          ),
            ),
      
            Container(
              margin: EdgeInsets.only(top: 190, left: 135),
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff699BF7),
                    width: 2.0),
                    
                    borderRadius: BorderRadius.all(
                  Radius.circular(20.0)
                    ),
                    ),
                                  
            
                child: 
                Text(
                  //"${fb.currentUser!.email}",
                  "email@gmail.com",
                  style:
                    TextStyle(
                      color: Color(0xFF6A6969),
      
                    )
              )
              
              ),

             Column(
               children: [
          Tab_View(tabController: tabController, cpt: cpt, ami: ami),
          Container(
            //margin: EdgeInsets.only(top: 300),
            padding: EdgeInsets.symmetric(horizontal:30),
              height: height,
              decoration: BoxDecoration(
                //color: Colors.green[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
              )),

              child: TabBarView(
                controller: tabController,
                children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(children: 
                      [Text("BADGES GAGNÉS",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Color(0xFF6A6969),
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.stars,
                        color: Color(0xFF6A6969),
                      )
                      ],)
                    ),

                  Container(
                   // margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: 
                          AssetImage("assets/images/iron.jpeg"),
                        ),
                        SizedBox(width: 10,),


                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          
                          children: [
                            Text("Beginner Adventurer",
                            style: 
                              TextStyle(
                                color: Color(0xff699BF7),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text("commun . 10 Monuments",
                            style: 
                              TextStyle(
                                color: Colors.grey,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            
                            Text(now,
                            style: TextStyle(
                              color: Colors.grey,
                                fontSize: 10.0,
                            ),),
                            
                          ],
                        ),
                        
                      ],
                    )
                  ),

                  Container(
                   margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: 
                          AssetImage("assets/images/badge.jpeg"),
                        ),
                        SizedBox(width: 10,),


                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          
                          children: [
                            Text("Professionnal Adventurer",
                            style: 
                              TextStyle(
                                color: Color(0xff699BF7),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text("commun . 30 Monuments",
                            style: 
                              TextStyle(
                                color: Colors.grey,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            
                            Text(now,
                            style: TextStyle(
                              color: Colors.grey,
                                fontSize: 10.0,
                            ),),
                            
                          ],
                        ),
                        
                      ],
                    )
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: 
                          AssetImage("assets/images/badge.jpeg"),
                        ),
                        SizedBox(width: 10,),


                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          
                          children: [
                            Text("Novice Adventurer",
                            style: 
                              TextStyle(
                                color: Color(0xff699BF7),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text("rare . 50 Monuments",
                            style: 
                              TextStyle(
                                color: Colors.grey,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            
                            Text(now,
                            style: TextStyle(
                              color: Colors.grey,
                                fontSize: 10.0,
                            ),),
                            
                          ],
                        ),
                        
                      ],
                    )
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: 
                          AssetImage("assets/images/badge.jpeg"),
                        ),
                        SizedBox(width: 10,),


                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          
                          children: [
                            Text("Expert Adventurer",
                            style: 
                              TextStyle(
                                color: Color(0xff699BF7),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text("so rare . 100 Monuments",
                            style: 
                              TextStyle(
                                color: Colors.grey,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            
                            Text(now,
                            style: TextStyle(
                              color: Colors.grey,
                                fontSize: 10.0,
                            ),),
                            
                          ],
                        ),
                        
                      ],
                    )
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: 
                          AssetImage("assets/images/badge.jpeg"),
                        ),
                        SizedBox(width: 10,),


                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          
                          children: [
                            Text("Universal Adventurer",
                            style: 
                              TextStyle(
                                color: Color(0xff699BF7),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text("legendary . 200 Monuments",
                            style: 
                              TextStyle(
                                color: Colors.grey,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            
                            Text(now,
                            style: TextStyle(
                              color: Colors.grey,
                                fontSize: 10.0,
                            ),),
                            
                          ],
                        ),
                        
                      ],
                    )
                  ),


                  ],),


                Center(child: Text("data")),
              ],)
          )
        
        ],
             )
            

            
      
          ]),
      ),
    );
  }

  void popupMenuSelected(String value) {
  }


}

