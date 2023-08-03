import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CarouselSlideDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CarouselSlideDemo extends StatefulWidget {
  @override
  _CarouselSlideDemoState createState() => _CarouselSlideDemoState();
}

class _CarouselSlideDemoState extends State<CarouselSlideDemo> {
  final List<String> images = [
    "assets/images/b1.png",
    "assets/images/b2.png",
    "assets/images/b3.png",
  ];

  final List<ContentItem> items = [
    ContentItem(
      icon: Icons.vaccines,
      title: "Ao Nascer",
      subtitle: "BCG | HEPATITE B",
      color: Color(0xFF004393),
      titleColor: Color(0xFFFDD501), // Cor do título para o primeiro item.
      subtitleColor: Colors.white,
        iconColor: Colors.white
    ),
    ContentItem(
        icon: Icons.vaccines,
        title: "2 Meses",
        subtitle: "1ª DOSE - PENTAVALENTE | ROTAVÍRUS | PNEUMO 10 | VIP (POLIO).",
        color: Color(0xFF004393),
        titleColor: Color(0xFFFDD501), // Cor do título para o primeiro item.
        subtitleColor: Colors.white,
        iconColor: Colors.white
    ),

    ContentItem(
        icon: Icons.vaccines,
        title: "3 Meses",
        subtitle: "1ª DOSE - MENINGO C",
        color: Color(0xFF004393),
        titleColor: Color(0xFFFDD501), // Cor do título para o primeiro item.
        subtitleColor: Colors.white,
        iconColor: Colors.white
    ),
    ContentItem(
        icon: Icons.vaccines,
        title: "4 Meses",
        subtitle: "2ª DOSE - PENTAVALENTE | ROTAVÍRUS | PNEUMO 10 | VIP (POLIO).",
        color: Color(0xFF004393),
        titleColor: Color(0xFFFDD501), // Cor do título para o primeiro item.
        subtitleColor: Colors.white,
        iconColor: Colors.white
    ),
    ContentItem(
        icon: Icons.vaccines,
        title: "5 Meses",
        subtitle: "2ª DOSE - MENINGO C",
        color: Color(0xFF004393),
        titleColor: Color(0xFFFDD501), // Cor do título para o primeiro item.
        subtitleColor: Colors.white,
        iconColor: Colors.white
    ),
    ContentItem(
        icon: Icons.vaccines,
        title: "6 Meses",
        subtitle: "3ª DOSE - PENTAVALENTE | VIP (POLIO) | INFLUENZA.",
        color: Color(0xFF004393),
        titleColor: Color(0xFFFDD501), // Cor do título para o primeiro item.
        subtitleColor: Colors.white,
        iconColor: Colors.white
    ),
    ContentItem(
        icon: Icons.vaccines,
        title: "9 Meses",
        subtitle: "1ª Dose - FEBRE | AMARELA",
        color: Color(0xFF004393),
        titleColor: Color(0xFFFDD501), // Cor do título para o primeiro item.
        subtitleColor: Colors.white,
        iconColor: Colors.white
    ),
    ContentItem(
        icon: Icons.vaccines,
        title: "1 Ano",
        subtitle: "1ª DOSE - TRIPLECEVIRAL / "
            "                            REFORÇO - MENINGO C | PNEUMO 10",
        color: Color(0xFF004393),
        titleColor: Color(0xFFFDD501), // Cor do título para o primeiro item.
        subtitleColor: Colors.white,
        iconColor: Colors.white
    ),
    ContentItem(
        icon: Icons.vaccines,
        title: "1 Ano e 3 Meses",
        subtitle: "1ª Dose - HEPATITE A |                             REFORÇO - DTP E VOP | TETRAVIRAL",
        color: Color(0xFF004393),
        titleColor: Color(0xFFFDD501), // Cor do título para o primeiro item.
        subtitleColor: Colors.white,
        iconColor: Colors.white
    ),
    ContentItem(
        icon: Icons.vaccines,
        title: "4 Anos",
        subtitle: "2ª REFORÇO - DTP E VOP | F. A. |VARICELA",
        color: Color(0xFF004393),
        titleColor: Color(0xFFFDD501), // Cor do título para o primeiro item.
        subtitleColor: Colors.white,
        iconColor: Colors.white
    ),
    ContentItem(
        icon: Icons.vaccines,
        title: "Adolescentes",
        subtitle: "HPV (9 anos) | MENINGOCÓCICA | ACWY",
        color: Color(0xFF004393),
        titleColor: Color(0xFFFDD501), // Cor do título para o primeiro item.
        subtitleColor: Colors.white,
        iconColor: Colors.white
    ),
    ContentItem(
        icon: Icons.vaccines,
        title: "Adultos",
        subtitle: "HEPATITE B | FEBRE AMARELA | DUPLA ADULTO | TRIPLECE VIRAL",
        color: Color(0xFF004393),
        titleColor: Color(0xFFFDD501), // Cor do título para o primeiro item.
        subtitleColor: Colors.white,
        iconColor: Colors.white
    ),
    ContentItem(
        icon: Icons.vaccines,
        title: "Gestantes",
        subtitle: "HEPATITE B | DUPLA ADULTO | dTpa | INFLUENZA",
        color: Color(0xFF004393),
        titleColor: Color(0xFFFDD501), // Cor do título para o primeiro item.
        subtitleColor: Colors.white,
        iconColor: Colors.white
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ESQUEMA DE VACINAÇÃO'),
        centerTitle: true,
        backgroundColor: Color(0xFF004193),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200.0,
            width: double.infinity,
            child: AnotherCarousel(
              images: images.map((imagePath) => AssetImage(imagePath)).toList(),
              dotSize: 6,
              indicatorBgPadding: 5.0,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: items[index].color,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ListTile(
                      leading: Icon(items[index].icon, color: items[index].iconColor,),
                      title: Text(
                        items[index].title,
                        style: TextStyle(color: items[index].titleColor), // Define a cor do título.
                      ),
                      subtitle: Text(
                        items[index].subtitle,
                        style: TextStyle(color: items[index].subtitleColor), // Define a cor do subtítulo.
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          Container(
            height: 114,
            color: Colors.grey[350],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("Apoio:",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset('assets/images/l1.png'),
                Image.asset('assets/images/l2.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class ContentItem {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;
  final Color titleColor;
  final Color subtitleColor;
  final Color iconColor;

  ContentItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.titleColor,
    required this.subtitleColor,
    required this.iconColor,
  });
}
