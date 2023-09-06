import 'package:flutter/material.dart';
import 'package:modern_user_profile_collection_flutter/widget/custom_option.dart';

class ProfileOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
      ),

      //body
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  radius: 75,
                  backgroundImage: NetworkImage(
                      'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/166f66122c499bc8daded90bcaa4833e-1683027548932/f1562857-6b60-48a0-842a-c0493cbfa839.png'),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.grey.shade200,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_a_photo),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Rohanur Rahman',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),

          SizedBox(
            height: 70,
          ),
          //

          Custom_Option(
            title: 'Person',
            iconData: Icons.person,
          ),

          Custom_Option(
            title: 'Notification',
            iconData: Icons.notifications_active_outlined,
          ),

          Custom_Option(
            title: 'Settings',
            iconData: Icons.settings,
          ),

          Custom_Option(
            title: 'Help Center',
            iconData: Icons.help_center,
          ),

          Custom_Option(
            title: 'Log Out',
            iconData: Icons.logout,
          ),
        ],
      )),
    );
  }
}
