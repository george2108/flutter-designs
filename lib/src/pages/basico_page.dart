import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // landscape
          Image(image: AssetImage('assets/landscape.jpg')),

          Titulo(),

          ButtonSection(),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
                'lf sdlfsldf lsdkjfalskd fdls jflksdj flksdjflsdjf lsd flksdflksdjlfk dslkf sdlkfj sdklfjl ksdflksdjf lksdflk sdlfksd lkfsdlkf lskdflksdflksd fkl df ksdklf sdkl fklsdflks'),
          )
        ],
      ),
    );
  }
}

class Titulo extends StatelessWidget {
  const Titulo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Titulo de algo',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Subtitulo de lo de arriba'),
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('4.5')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.call, text: 'Call'),
          CustomButton(icon: Icons.send, text: 'Route'),
          CustomButton(icon: Icons.share, text: 'Share'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key key,
    this.icon,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon, color: Colors.blue),
        Text(this.text, style: TextStyle(color: Colors.blue)),
      ],
    );
  }
}
