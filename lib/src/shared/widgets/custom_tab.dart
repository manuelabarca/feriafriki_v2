import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        backgroundColor: Color(0xffFFD556),
      items: <Widget>[
        IconTab(icon: Icons.event, title: "Eventos",),
        IconTab(icon: Icons.card_membership, title: "Club Friki",),
        IconTab(icon: Icons.how_to_vote, title: "Voto Cosplay",),
        IconTab(icon: Icons.store, title: "Tienda",),
        IconTab(icon: Icons.settings, title: "Ajustes",),

      ],
      height: 61,
      buttonBackgroundColor: Color(0xffFFD556),
      color: Color(0xff00A6A5),

    );
  }
}

class IconTab extends StatelessWidget {
  final IconData icon;
  final String title;

  const IconTab({
    Key key,
    this.icon,
    this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center ,
      children: [
        Icon(icon, size: 30  ),
        Text(title, style: TextStyle(fontSize: 13),)
      ],
    );
  }
}
