import 'package:flutter/material.dart';

class FastLaugh extends StatelessWidget {
  const FastLaugh({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(10, (index) => ListofVedios(index: index,),)
      )),
    );
  }
}

class ListofVedios extends StatelessWidget {
  final index;
  const ListofVedios({ Key? key,required this.index }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index%Colors.accents.length],
          
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(children: [IconButton(onPressed: (){}, icon: Icon(Icons.volume_mute_sharp))],)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage('https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80'),),
                  ),
                  ActionButtons(icon: Icons.emoji_emotions, label: 'LOL'),
                  ActionButtons(icon: Icons.add, label: 'My List'),
                  ActionButtons(icon: Icons.telegram_outlined,label: 'Share'),
                  ActionButtons(icon: Icons.play_arrow, label: 'Play'),
                ],
              ),
            ),
          )
      ],
    );
  }
}

class ActionButtons extends StatelessWidget {
  IconData icon;
  String label;
   ActionButtons({ Key? key,required this.icon,required this.label }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(icon,size: 40,),
          Text(label)
        ],
      ),
    );
  }
}