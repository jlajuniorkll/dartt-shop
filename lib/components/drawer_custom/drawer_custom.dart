import 'package:dartt_shop/components/drawer_custom/drawer_tile.dart';
import 'package:flutter/material.dart';
import 'package:dartt_shop/consts.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: kPrimaryGradientColor,
      ),
      child: Drawer(
        child: ListView(
          children: const [
            DrawerTile(
              iconData: Icons.home,
              title: "Home",
              page: 0,
            ),
            DrawerTile(iconData: Icons.list, title: "Produtos", page: 1),
            DrawerTile(
              iconData: Icons.playlist_add_check,
              title: "Meus Pedidos",
              page: 2,
            ),
            DrawerTile(
              iconData: Icons.location_on,
              title: "Lojas",
              page: 3,
            ),
          ],
        ),
      ),
    );
  }
}
