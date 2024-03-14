import 'package:flutter/material.dart';
import 'package:foodapp/home1.dart';
import 'package:foodapp/home2.dart';
import 'package:foodapp/home3.dart';
import 'package:foodapp/home4.dart';
import 'package:foodapp/login.dart';
import 'package:foodapp/profile.dart';
import 'package:foodapp/search.dart';
import 'package:foodapp/settings.dart';
import 'package:foodapp/support.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          resizeToAvoidBottomInset:false,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: false,
            backgroundColor:  Colors.black,
            title: const Center(
              child: Text('Food app',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "NotoSerif-Italic")),
            ),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  child: Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  child: Icon(
                    Icons.food_bank_sharp,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  child: Icon(
                    Icons.shopping_bag,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchScreen()),
                  );
                },
              ),
              const SizedBox(
                width: 20,
              ),
              PopupMenuButton(
                icon: const Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
                onSelected: (value) {
                  if (value == '1') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileScreen()),
                    );
                  } else if (value == '2') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SupportScreen()),
                    );
                  } else if (value == '3') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Settings()),
                    );
                  }
                  else if (value == '3') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LogIn()),
                    );
                  }
                },
                itemBuilder: (context) => const [
                   PopupMenuItem(
                    value: '1',
                    child: Text('profile'),
                  ),
                  PopupMenuItem(
                    value: '2',
                    child: Text('Support'),
                  ),
                  PopupMenuItem(
                    value: '3',
                    child: Text('Settings'),
                  ),
                  PopupMenuItem(
                    value: '4',
                    child: Text('Logout'),
                  ),
                ],
              ),
            ],
          ),
        body: const TabBarView(
  children: [
    HomeTab(),
     HomeTab2(),
     HomeTap3(),
     HomeTap4(),





   
    
    // location sakiyo
  // ListView(
  //   children: <Widget>[
  //        ListTile(
  //         leading: const CircleAvatar(
  //           backgroundImage: NetworkImage(
  //             'https://www.licious.in/blog/wp-content/uploads/2022/06/chicken-hyderabadi-biryani-01-750x750.jpg'
  //           ),
  //         ),
  //         title: const Text('Biryani'),
  //         subtitle: const Text('Rs.100'),
  //         trailing:const Text('20% off'),
  //         onTap: (){
  //             Navigator.push(context, MaterialPageRoute(builder: ((context) => const Biryani())));
  //         },
  //       ),




  //      const SizedBox(height: 10,),
  //        ListTile(
  //         leading:const CircleAvatar(
  //           backgroundImage: NetworkImage(
  //             'https://paattiskitchen.com/wp-content/uploads/2023/04/kmc_20230401_003949-1.jpg'
  //           ),
  //         ),
  //         title:const Text('Samosha'),
  //         subtitle:const Text('Rs.50. Per piece'),
  //         trailing:const Text('10% off'),
  //          onTap: (){
  //           Navigator.push(context, MaterialPageRoute(builder: ((context) => const SamosaScreen())));
  //          },
  //       ),




  //      const  SizedBox(height: 10,),
  //        ListTile(
  //         leading:const CircleAvatar(
  //           backgroundImage: NetworkImage(
  //             'https://joyfoodsunshine.com/wp-content/uploads/2022/11/BBQ-chicken-pizza-recipe-9.jpg'
  //           ),
  //         ),
  //         title:const Text('Chicken Pizza'),
  //         subtitle:const Text('Rs.1000'),
  //         trailing:const Text('5% off'),
  //          onTap: (){
  //            Navigator.push(context, MaterialPageRoute(builder: ((context) => const ChickenPizza())));
  //          },
  //       ),



  //      const  SizedBox(height: 10,),
  //        ListTile(
  //         leading:const CircleAvatar(
  //           backgroundImage: NetworkImage(
  //             'https://www.acouplecooks.com/wp-content/uploads/2019/06/Mushroom-Pizza-with-Herbs-011.jpg'
  //           ),
  //         ),
  //         title:const Text('Mushroom Pizza'),
  //         subtitle:const Text('Rs.900'),
  //         trailing:const Text('20% off'),
  //          onTap: (){
  //            Navigator.push(context, MaterialPageRoute(builder: ((context) => const MushRoomPizza())));
  //          },
  //       ),

  //      const  SizedBox(height: 10,),
  //        ListTile(
  //         leading:const CircleAvatar(
  //           backgroundImage: NetworkImage(
  //             'https://c8.alamy.com/comp/W2071E/delicious-tasty-fresh-and-italian-pepperoni-or-margherita-pizza-isolated-on-white-view-of-mixed-pizza-in-restaurant-at-napoli-pizza-on-wooden-W2071E.jpg'
  //           ),
  //         ),
  //         title:const Text('Mixed Pizza'),
  //         subtitle:const Text('Rs.1100'),
  //         trailing:const Text('20% off'),
  //          onTap: (){
  //            Navigator.push(context, MaterialPageRoute(builder: ((context) => const MixedPizza())));
  //          },
  //       ),

  //     const   SizedBox(height: 10,),
  //        ListTile(
  //         leading:const CircleAvatar(
  //           backgroundImage: NetworkImage(
  //             'https://assets.epicurious.com/photos/57c5c6d9cf9e9ad43de2d96e/master/pass/the-ultimate-hamburger.jpg'
  //           ),
  //         ),
  //         title:const Text('Ham Burger'),
  //         subtitle:const Text('Rs.350'),
  //         trailing: const Text('10% off'),
  //          onTap: (){
  //            Navigator.push(context, MaterialPageRoute(builder: ((context) => const HamBurger())));

  //          },
  //       ),
  //      const  SizedBox(height: 10,),
  //        ListTile(
  //         leading:const CircleAvatar(
  //           backgroundImage: NetworkImage(
  //             'https://daruadda.com/wp-content/uploads/2023/01/Mutton-Sekuwa.png'
  //           ),
  //         ),
  //         title:const Text('Mutton Sekuwa'),
  //         subtitle:const Text('Rs.300. Per stick'),
  //         trailing:const Text('30% off'),
  //          onTap: (){
  //            Navigator.push(context, MaterialPageRoute(builder: ((context) => const MuttonSekuwa())));

  //          },
  //       ),
  //      const  SizedBox(height: 10,),
  //        ListTile(
  //         leading:const CircleAvatar(
  //           backgroundImage: NetworkImage(
  //             'https://dev-api.citi977.com.np/images/image-1680937722533.webp'
  //           ),
  //         ),
  //         title:const Text('Buff Sekuwa'),
  //         subtitle:const Text('Rs.100. Per stick'),
  //         trailing:const Text('25% off'),
  //          onTap: (){
  //             Navigator.push(context, MaterialPageRoute(builder: ((context) => const BuffSekuwa())));
  //          },
  //       ),
  //      const  SizedBox(height: 10,),
  //        ListTile(
  //         leading:const CircleAvatar(
  //           backgroundImage: NetworkImage(
  //             'https://media-cdn.tripadvisor.com/media/photo-s/17/3d/91/f2/special-dish-of-the-house.jpg'
  //           ),
  //         ),
  //         title:const Text('Pork Sekuwa'),
  //         subtitle:const Text('Rs.250. Per stick'),
  //         trailing:const Text('20% off'),
  //          onTap: (){
  //             Navigator.push(context, MaterialPageRoute(builder: ((context) => const PorkSekuwa())));

  //          },
  //       ),
  //       ],
  // ),
        
     
    
    // menu sakiyo
    // Container(
    //   alignment: Alignment.center,
    //   child: const Text('Order data not found'),
    // ),
  ],
),

        ));
  }
}
