import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

var defaultBackgroundColor = const Color(0xffF5F8FA);
var appBarColor = Colors.white;
var textColor = const Color(0xff353766);
var highLightColor = const Color(0xffC2C2D1);
var primaryColor = const Color(0xff0A37F0);
var drawerTextColor = const TextStyle(color: Color(0xff353766));
var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);

isSelected() {
//
}

var myAppBar = AppBar(
  systemOverlayStyle: const SystemUiOverlayStyle(
    // Status bar color
    statusBarColor: Colors.white,

    // Status bar brightness (optional)
    statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
    statusBarBrightness: Brightness.light, // For iOS (dark icons)
  ),
  elevation: 0,
  backgroundColor: appBarColor,
  foregroundColor: textColor,
  title: const Text('Dashboard'),
  actions: [
    IconButton(
      onPressed: () {},
      icon: const Icon(Icons.notifications),
    ),
  ],
  // centerTitle: true,
);

var myDrawer = Drawer(
  backgroundColor: Colors.white,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
  ),
  elevation: 0,
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Center(
            child: Text(
          'Hello Hamidreza',
          style: GoogleFonts.quicksand(),
        )),
      ),
      ListTile(
        leading: Icon(
          Icons.home,
          color: highLightColor,
        ),
        title: const Text('Dashboard'),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(
          Icons.wallet_sharp,
          color: highLightColor,
        ),
        title: const Text('My Wallet'),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(
          Icons.settings,
          color: highLightColor,
        ),
        title: const Text('Settings'),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(
          Icons.nightlight_sharp,
          color: highLightColor,
        ),
        trailing: Switch(value: true, onChanged: isSelected()),
        title: const Text('Dark/Light'),
        onTap: () {},
      ),
    ],
  ),
);
