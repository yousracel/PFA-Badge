import 'package:flutter/material.dart';

class Tab_View extends StatelessWidget {
  const Tab_View({
    Key? key,
    required this.tabController,
    required this.cpt,
    required this.ami,
  }) : super(key: key);

  final TabController tabController;
  final int cpt;
  final int ami;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 230),
      padding: EdgeInsets.symmetric(horizontal: 22,vertical: 10),
      child: TabBar(
        controller: tabController,
        indicator: ShapeDecoration(
          color: Color(0xff699BF7),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ),
        tabs: [
          Tab(
            icon: 
            Text("Réussites       ${cpt}",
            style: 
            TextStyle(color: Colors.black)
            ),
          ),
          Tab(
            icon: 
            Text("Amis      ${ami}",
            style: 
            TextStyle(color: Colors.black)),
          ),
        ],
      
      ),
    );
  }
}


                    
                    
                   