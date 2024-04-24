import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return const MaterialApp(
       debugShowCheckedModeBanner: false,
       home: tabbar(),

     );
   }
 }
 class tabbar extends StatefulWidget {
   const tabbar({super.key});

   @override
   State<tabbar> createState() => _tabbarState();
 }

 class _tabbarState extends State<tabbar> {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: DefaultTabController(
         length: 3,
         child: Scaffold(
           appBar: AppBar(backgroundColor: Colors.blue,
             title: Text('Manal Softech :Tabs example ', style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
             bottom:  const TabBar(
               indicator: UnderlineTabIndicator(
                   borderSide: BorderSide(width: 5.0),
                   insets: EdgeInsets.symmetric(horizontal:0.0)
               ),
               tabs: [

                     Tab(
                       child: Text(
                         'Home ',
                         style: TextStyle(color: Colors.white,fontSize: 18),
                       ),
                     ),
                     Tab(
                       child: Text(
                         'About',
                         style: TextStyle(color: Colors.white,fontSize: 16),
                       ),
                     ),
                     Tab(
                       child: Text(
                         'History',
                         style: TextStyle(color: Colors.white,fontSize: 18),
                       ),
                     )

               ],
             ),

           ),
           body: const TabBarView(
             children: [
               Center(
                   child: Text(
                     'Welcome to my app',
                     style: TextStyle(fontSize: 30, color: Colors.black87),
                   )),
               Center(
                   child: Text(
                     'Freegunj ujjain',
                     style: TextStyle(fontSize: 30, color: Colors.black87),
                   )),
               Center(
                   child: Text(
                     'Mandsour station',
                     style: TextStyle(fontSize: 30, color: Colors.black87),
                   )),

             ],
           ),
         ),
       ),
     );
   }
 }

