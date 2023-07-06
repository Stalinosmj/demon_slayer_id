import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
        backgroundColor: Colors.black,
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
              const SizedBox(height: 5,),
              Text(
                "Tanjiro Kamado",
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "CURRENT RANK",
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 5,),
              Text(
                "Kanoe",
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "INFO",
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 5,),
              Text(
                """ Tanjiro Kamado (竈門かまど 炭たん治じ郎ろう Kamado Tanjirō) is the main protagonist of Demon Slayer: Kimetsu no Yaiba.
 He is a Demon Slayer in the Demon Slayer Corps, who joined to find a remedy to turn his sister, Nezuko Kamado, back into a human and to hunt down and kill demons, and later swore to defeat Muzan Kibutsuji, the King of Demons, in order to prevent others from suffering the same fate as him.
 Before he became a Demon Slayer,Tanjiro was a coal burner before his entire family was slaughtered by Muzan while his younger sister, Nezuko, was turned into a demon.""",
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5,),
              Row(
                children: <Widget>[
                  IconButton(
                    color: Colors.grey[400],
                    icon: const Icon(Icons.source),
                    onPressed: () async {
                      const url = 'https://kimetsu-no-yaiba.fandom.com/';
                      if (await canLaunchUrlString(url)) {
                        await launchUrlString(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
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
