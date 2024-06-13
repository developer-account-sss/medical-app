import 'dart:developer' as devtools show log;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum MenuAction { Home, AboutUs, MyProfile, Blogs, Settings, Logout }

class CardsView extends StatefulWidget {
  const CardsView({super.key});

  @override
  State<CardsView> createState() => _CardsViewState();
}

class _CardsViewState extends State<CardsView> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Home'),
    //     actions: [
    //       PopupMenuButton<MenuAction>(
    //         onSelected: (value) async {
    //           switch (value) {
    //             case MenuAction.Home:
    //               devtools.log('I am clicked');
    //               // Navigator.of(context).pushNamedAndRemoveUntil('/home', (_)=> false);
    //               break;
    //             case MenuAction.AboutUs:
    //               devtools.log('I am clicked');
    //               // Navigator.of(context).pushNamedAndRemoveUntil('/about', (_)=> false);
    //               break;
    //             case MenuAction.MyProfile:
    //               devtools.log('I am clicked');
    //               // Navigator.of(context).pushNamedAndRemoveUntil('/profile', (_)=> false);
    //               break;
    //             case MenuAction.Blogs:
    //               devtools.log('I am clicked');
    //               // Navigator.of(context).pushNamedAndRemoveUntil('/blogs', (_)=> false);
    //               break;
    //             case MenuAction.Settings:
    //               devtools.log('I am clicked');
    //               // Navigator.of(context).pushNamedAndRemoveUntil('/settings', (_)=> false);
    //               break;
    //             case MenuAction.Logout:
    //               devtools.log('I am clicked');
    //               final shouldLogout = await showLogoutDialog(context);
    //               if (shouldLogout) {
    //                 await FirebaseAuth.instance.signOut();
    //                 Navigator.of(context)
    //                     .pushNamedAndRemoveUntil('/login/', (_) => false);
    //               } else {
    //                 Navigator.pop(context);
    //               }
    //               // Navigator.pushNamed(context, '/login');
    //               break;
    //           }
    //         },
    //         itemBuilder: (context) {
    //           return const [
    //             PopupMenuItem<MenuAction>(
    //               value: MenuAction.Home,
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Icon(Icons.home),
    //                   Text('Home'),
    //                 ],
    //               ),
    //             ),
    //             PopupMenuItem<MenuAction>(
    //               value: MenuAction.AboutUs,
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Icon(Icons.business_center),
    //                   Text('About Us'),
    //                 ],
    //               ),
    //             ),
    //             PopupMenuItem<MenuAction>(
    //               value: MenuAction.MyProfile,
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Icon(Icons.person_2),
    //                   Text('My Profile'),
    //                 ],
    //               ),
    //             ),
    //             PopupMenuItem<MenuAction>(
    //               value: MenuAction.Blogs,
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Icon(Icons.post_add),
    //                   Text('Blogs'),
    //                 ],
    //               ),
    //             ),
    //             PopupMenuItem<MenuAction>(
    //               value: MenuAction.Settings,
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Icon(Icons.settings),
    //                   Text('Settings'),
    //                 ],
    //               ),
    //             ),
    //             PopupMenuItem<MenuAction>(
    //               value: MenuAction.Logout,
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Icon(Icons.logout),
    //                   Text('Logout'),
    //                 ],
    //               ),
    //             ),
    //           ];
    //         },
    //       )
    //     ],
    //   ),
    // );
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  devtools.log('i m clicked');
                },
                icon: const Icon(Icons.dehaze),
              ),
              // Drawer(
              //   child: ListView(
              //     // Important: Remove any padding from the ListView.
              //     padding: EdgeInsets.zero,
              //     children: [
              //       const DrawerHeader(
              //         decoration: BoxDecoration(
              //           color: Colors.blue,
              //         ),
              //         child: Text('Drawer Header'),
              //       ),
              //       ListTile(
              //         title: const Text('Item 1'),
              //         onTap: () {
              //           // Update the state of the app.
              //           // ...
              //         },
              //       ),
              //       ListTile(
              //         title: const Text('Item 2'),
              //         onTap: () {
              //           // Update the state of the app.
              //           // ...
              //         },
              //       ),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Health Blog',
              style: GoogleFonts.imprima(
                textStyle: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(183, 46, 46, 1)),
              ),
            ),
          ],
        )
      ],
    );
  }
}

Future<bool> showLogoutDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Logout'),
          content: const Text('Are you sure you want to logout?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: const Text('Yes'),
            ),
          ],
        );
      }).then((value) => value ?? false);
}
