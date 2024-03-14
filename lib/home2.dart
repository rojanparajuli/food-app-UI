import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeTab2 extends StatefulWidget {
  const HomeTab2({super.key});

  @override
  State<HomeTab2> createState() => _HomeTab2State();
}

class _HomeTab2State extends State<HomeTab2> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      ListTile(
        leading: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/sco/thumb/b/bf/KFC_logo.svg/2048px-KFC_logo.svg.png')),
        title: const Text('KFC'),
        subtitle: const Text('Madhyapur, Thimi-5, Radhe Radhe, Bhaktapur'),
        trailing: const Text('1km Away'),
        onTap: () {
          _launchUrl(
              'https://www.google.com/maps/search/KFC+near+Radhe+Radhe+Bus+Stand,+Araniko+Highway,+Madhyapur+Thimi/@27.6749196,85.3947374,17z/data=!3m1!4b1?entry=ttu');
        },
      ),
      const SizedBox(
        height: 10,
      ),
      ListTile(
        leading: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Pizza_Hut_international_logo_2014.svg/1200px-Pizza_Hut_international_logo_2014.svg.png')),
        title: const Text('Pizza Hut'),
        subtitle: const Text('Madhyapur, Thimi-5, Radhe Radhe, Bhaktapur'),
        trailing: const Text('1km Away'),
        onTap: () {
          _launchUrl(
              'https://www.google.com/maps/place/Pizza+Hut+Thimi/@27.6749843,85.3947158,17z/data=!3m1!4b1!4m6!3m5!1s0x39eb1a8839174c6f:0x35f81f045413d088!8m2!3d27.6749796!4d85.3972907!16s%2Fg%2F11gfdqb_4t?entry=ttu');
        },
      ),
      const SizedBox(
        height: 10,
      ),
      ListTile(
        leading: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://res.cloudinary.com/dpqvbxdpf/image/upload/h_600,c_scale,f_auto/v1611721030/uploads/ProfileImage/gpbi9he8nrbpjveblv4v.png')),
        title: const Text('Trishara'),
        subtitle: const Text('Durbarmarg, Kathmandu'),
        trailing: const Text('15km Away'),
         onTap: () {
          _launchUrl(
              'https://www.google.com/maps/place/Trisara+Durbarmarg/@27.7120303,85.3149146,17z/data=!3m1!4b1!4m6!3m5!1s0x39eb192426e84ffd:0x21e7cb251b2dd6f9!8m2!3d27.7120256!4d85.3174895!16s%2Fg%2F11f5v9_2sr?entry=ttu');
        },
      ),
      const SizedBox(
        height: 10,
      ),
      ListTile(
        leading: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://media-cdn.grubhub.com/image/upload/d_search:browse-images:default.jpg/w_300,q_100,fl_lossy,dpr_2.0,c_fit,f_auto,h_300/foyyxjcjona5lwqh9sjc')),
        title: const Text('Bajeko Sekuwa'),
        subtitle: const Text('Gathaghar, Bhaktapur'),
        trailing: const Text('3km Away'),
        onTap: () {
          _launchUrl(
              'google.com/maps/place/Bajeko+Sekuwa/@27.6743841,85.3681285,17z/data=!3m1!4b1!4m6!3m5!1s0x39eb1b413bcad5f5:0x25e3d0fac2f19751!8m2!3d27.6743794!4d85.3707034!16s%2Fg%2F11h8038cb9?entry=ttu');
        },
      ),
      const SizedBox(
        height: 10,
      ),
      ListTile(
        leading: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://insanelygoodrecipes.com/wp-content/uploads/2020/07/Cup-Of-Creamy-Coffee-500x500.png')),
        title: const Text('Urmi Cafe'),
        subtitle: const Text('Radhe Radhe, Bhaktapur'),
        trailing: const Text('500m Away'),
        onTap: () {
          _launchUrl(
              'https://www.google.com/maps/place/Urmi+Coffee+Shop/@27.6773833,85.3958682,17z/data=!3m1!4b1!4m6!3m5!1s0x39eb1b725da90d99:0x456428933e5c0fcb!8m2!3d27.6773786!4d85.3984431!16s%2Fg%2F11j2nly1bb?entry=ttu');
        },
      ),
    ]);
  }
}

Future<void> _launchUrl(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch ');
  }
}
