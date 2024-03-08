import 'package:flutter/material.dart';
import 'package:foodapp/login.dart';
import 'package:foodapp/search.dart';
import 'package:foodapp/settings.dart';
import 'package:foodapp/support.dart';
import 'package:boxy/boxy.dart';



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
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: false,
            backgroundColor: const Color.fromARGB(255, 240, 228, 117),
            title: const Center(
              child: Text('Food app',
                  style: TextStyle(
                      color: Colors.black,
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
                          builder: (context) => const SupportScreen()),
                    );
                  } else if (value == '2') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Settings()),
                    );
                  } else if (value == '3') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LogIn()),
                    );
                  }
                },
                itemBuilder: (context) => const [
                  PopupMenuItem(
                    value: '1',
                    child: Text('Support'),
                  ),
                  PopupMenuItem(
                    value: '2',
                    child: Text('Settings'),
                  ),
                  PopupMenuItem(
                    value: '3',
                    child: Text('Logout'),
                  ),
                ],
              ),
            ],
          ),
        body: TabBarView(
  children: [
    Container(
      alignment: Alignment.center,
      child:const Text('This is the first tab content'),
    ),






    ListView(
      children:<Widget> [
        ListTile(
          leading: const CircleAvatar(backgroundImage: NetworkImage('https://image.similarpng.com/very-thumbnail/2020/06/kfc-logo-free-download-PNG.png')),
          title:const Text('KFC'),
          subtitle:const Text('Madhyapur, Thimi-5, Radhe Radhe, Bhaktapur'),
          trailing:const Text('1km Away'),
          onTap: (){},
        ),
      const  SizedBox(height: 10,),

        ListTile(leading:const CircleAvatar(backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Pizza_Hut_international_logo_2014.svg/1200px-Pizza_Hut_international_logo_2014.svg.png')),
          title:const Text('Pizza Hut'),
          subtitle: const Text('Madhyapur, Thimi-5, Radhe Radhe, Bhaktapur'),
          trailing: const Text('1km Away'),
          onTap: (){},
        ),
     const   SizedBox(height: 10,),
        
        ListTile(leading:const CircleAvatar(backgroundImage: NetworkImage('https://res.cloudinary.com/dpqvbxdpf/image/upload/h_600,c_scale,f_auto/v1611721030/uploads/ProfileImage/gpbi9he8nrbpjveblv4v.png')),
          title: const Text('Trishara'),
          subtitle: const Text('Durbarmarg, Kathmandu'),
          trailing:const Text('15km Away'),
          onTap: (){},
        ),

     const    SizedBox(height: 10,),
        
        ListTile(leading:const CircleAvatar(backgroundImage: NetworkImage('https://www.qualtosoft.com/img/client_logo/Bajeko-Sekuwa-Logo.jpg')),
          title: const Text('Bajeko Sekuwa'),
          subtitle: const Text('Gathaghar, Bhaktapur'),
          trailing:const Text('3km Away'),
          onTap: (){},
        ),
   const     SizedBox(height: 10,),
        
        ListTile(leading: const CircleAvatar(backgroundImage: NetworkImage('https://insanelygoodrecipes.com/wp-content/uploads/2020/07/Cup-Of-Creamy-Coffee-500x500.png')),
          title: const Text('Urmi Cafe'),
          subtitle: const Text('Radhe Radhe, Bhaktapur'),
          trailing: const Text('500m Away'),
          onTap: (){},
        ),


      ]
    ),

    
    // location sakiyo
  ListView(
    children: <Widget>[
         ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://www.licious.in/blog/wp-content/uploads/2022/06/chicken-hyderabadi-biryani-01-750x750.jpg'
            ),
          ),
          title: const Text('Biryani'),
          subtitle: const Text('Rs.100'),
          trailing:const Text('20% off'),
          onTap: (){},
        ),




       const SizedBox(height: 10,),
         ListTile(
          leading:const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://paattiskitchen.com/wp-content/uploads/2023/04/kmc_20230401_003949-1.jpg'
            ),
          ),
          title:const Text('Samosha'),
          subtitle:const Text('Rs.50. Per piece'),
          trailing:const Text('10% off'),
           onTap: (){},
        ),




       const  SizedBox(height: 10,),
         ListTile(
          leading:const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://joyfoodsunshine.com/wp-content/uploads/2022/11/BBQ-chicken-pizza-recipe-9.jpg'
            ),
          ),
          title:const Text('Chicken Pizza'),
          subtitle:const Text('Rs.1000'),
          trailing:const Text('5% off'),
           onTap: (){},
        ),



       const  SizedBox(height: 10,),
         ListTile(
          leading:const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://www.acouplecooks.com/wp-content/uploads/2019/06/Mushroom-Pizza-with-Herbs-011.jpg'
            ),
          ),
          title:const Text('Mushroom Pizza'),
          subtitle:const Text('Rs.900'),
          trailing:const Text('20% off'),
           onTap: (){},
        ),

       const  SizedBox(height: 10,),
         ListTile(
          leading:const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://c8.alamy.com/comp/W2071E/delicious-tasty-fresh-and-italian-pepperoni-or-margherita-pizza-isolated-on-white-view-of-mixed-pizza-in-restaurant-at-napoli-pizza-on-wooden-W2071E.jpg'
            ),
          ),
          title:const Text('Mixed Pizza'),
          subtitle:const Text('Rs.1100'),
          trailing:const Text('20% off'),
           onTap: (){},
        ),

      const   SizedBox(height: 10,),
         ListTile(
          leading:const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://assets.epicurious.com/photos/57c5c6d9cf9e9ad43de2d96e/master/pass/the-ultimate-hamburger.jpg'
            ),
          ),
          title:const Text('Ham Burger'),
          subtitle:const Text('Rs.350'),
          trailing: const Text('10% off'),
           onTap: (){},
        ),
       const  SizedBox(height: 10,),
         ListTile(
          leading:const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://daruadda.com/wp-content/uploads/2023/01/Mutton-Sekuwa.png'
            ),
          ),
          title:const Text('Mutton Sekuwa'),
          subtitle:const Text('Rs.300. Per stick'),
          trailing:const Text('30% off'),
           onTap: (){},
        ),
       const  SizedBox(height: 10,),
         ListTile(
          leading:const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://dev-api.citi977.com.np/images/image-1680937722533.webp'
            ),
          ),
          title:const Text('Buff Sekuwa'),
          subtitle:const Text('Rs.100. Per stick'),
          trailing:const Text('25% off'),
           onTap: (){},
        ),
       const  SizedBox(height: 10,),
         ListTile(
          leading:const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://media-cdn.tripadvisor.com/media/photo-s/17/3d/91/f2/special-dish-of-the-house.jpg'
            ),
          ),
          title:const Text('Pork Sekuwa'),
          subtitle:const Text('Rs.250. Per stick'),
          trailing:const Text('20% off'),
           onTap: (){},
        ),
        ],
  ),
        
     
    
    // menu sakiyo
    Container(
      alignment: Alignment.center,
      child: const Text('Order data not found'),
    ),
  ],
),

        ));
  }
}
