import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            "Demon Slayer ID",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
              letterSpacing: 2.0,
              fontFamily: "BloodCrow",
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.red[800],
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://static.wikia.nocookie.net/kimetsu-no-yaiba/images/1/1e/Tanjiro_Kamado_%28Blood-Stench_Blade_Royale%29.png/revision/latest/scale-to-width-down/1000?cb=20200524143409"),
                  radius: 60,
                ),
              ),
              const Divider(
                height: 90,
                color:Colors.white,
              ),
              const Text(
                "NAME",
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 10,),
              Text(
                "Tanjiro Kamado",
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "CURRENT RANK",
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 10,),
              Text(
                "Kanoe",
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.source,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(width: 10,),
                  Text(
                    "kimetsu-no-yaiba.fandom.com",
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18,
                      letterSpacing: 1,
                    ),
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}
