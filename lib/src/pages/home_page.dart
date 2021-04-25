import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:design_flutter/src/widgets/background.dart';
import 'package:design_flutter/src/widgets/bottom_navigation.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          children: [
            // titulos
            _Titulos(),

            // cards
            _CardTable()
          ],
        ),
      ),
    );
  }
}

class _CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.money,
            text: 'Ventas',
          ),
          _SingleCard(
            color: Colors.red,
            icon: Icons.person,
            text: 'clientes',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.amber,
            icon: Icons.dashboard,
            text: 'dashboard',
          ),
          _SingleCard(
            color: Colors.purple,
            icon: Icons.horizontal_split,
            text: 'pacientes',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.greenAccent,
            icon: Icons.home,
            text: 'sucursales',
          ),
          _SingleCard(
            color: Colors.orangeAccent,
            icon: Icons.crop,
            text: 'matriz',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.ac_unit,
            text: 'klsd',
          ),
          _SingleCard(
            color: Colors.red,
            icon: Icons.perm_camera_mic,
            text: 'hola',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.ac_unit,
            text: 'klsd',
          ),
          _SingleCard(
            color: Colors.red,
            icon: Icons.perm_camera_mic,
            text: 'hola',
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    Key key,
    @required this.icon,
    @required this.color,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: this.color,
                  child: Icon(this.icon, size: 35, color: Colors.white),
                  radius: 30,
                ),
                SizedBox(height: 10),
                Text(this.text,
                    style: TextStyle(color: this.color, fontSize: 18))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Titulos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Classify transaction',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Classify this transaction into a particular category',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
