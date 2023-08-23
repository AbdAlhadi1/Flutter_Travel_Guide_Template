import 'package:flutter/material.dart';

import 'details.dart';
import 'home_page_componnet.dart';

class HomePage extends StatefulWidget{
   HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() =>_HomePageState();
  List op = [
    [Travel(
      image:"images/paris.jpg",
      name: "Paris",
      countryName: "FRANCE",
    ),
      "Paris, the capital city of France, is known as the City of Love and is home to iconic landmarks like the Eiffel Tower, delicious cuisine, and world-renowned art museums like the Louvre.",
      "City of Lights",
      false,
      15,
      4.6,
      270,
      "images/paris.jpg",
      "Day 1: Eiffel Tower, Montmartre, Sacré-Cœur, French dinner.\n\nDay 2: Louvre, Jardin des Tuileries, Notre-Dame, Parisian bistro.\n\nDay 3: Versailles, Le Marais, Saint-Germain-des-Prés, Michelin-starred dinner.\n\nDay 4: Departure from Paris. Iconic sights, French cuisine, and charming neighborhoods make for a memorable 3-night trip.",
      "Paris",
      1345,
    ],
    [Travel(
      image:"images/roma.jpg",
      name: "ROMA",
      countryName: "ITALY",
    ),
      "Rome, the capital city of Italy, is a historic and cultural center known for its ancient landmarks, including the Colosseum, Pantheon, and Vatican City. It also offers delicious cuisine and charming piazzas.",
      "Eternal City",
      false,
      13,
      4.5,
      240,
      "images/roma.jpg",
      "Day 1: Colosseum, Roman Forum, Pantheon, Italian dinner.\n\nDay 2: Vatican City, Sistine Chapel, St. Peter's Basilica, Piazza Navona.\n\nDay 3: Trevi Fountain, Spanish Steps, Villa Borghese, Roman cuisine.\n\nDay 4: Departure from Rome. Ancient landmarks, delicious cuisine, and art make for an unforgettable 3-night trip.",
      "ROMA",
      1200,
    ],
    [Travel(
      image:"images/dubai.jpg",
      name: "DUBAI",
      countryName: "UNITED-ARAB-EMIRATES",
    ),
      "Dubai is a modern city that attracts tourists from all over the world with its towering skyscrapers, luxurious shopping malls, beautiful sandy beaches, and vibrant nightlife.",
      "Dynamic Business Hub",
      false,
      39,
      4.8,
      320,
      "images/dubai.jpg",
      "Day 1: Burj Khalifa, Dubai Mall, Dubai Fountain, Arabic dinner.\n\nDay 2: Dubai Miracle Garden, Dubai Creek, Dubai Museum, Emirati lunch.\n\nDay 3: Palm Jumeirah, Dubai Marina, Desert Safari, Bedouin-style dinner.\n\nDay 4: Departure from Dubai. Modern landmarks, desert adventures, and delicious cuisine make for a memorable 3-night trip.",
      "DUBAI",
      2000,
    ],
    [Travel(
      image:"images/usa.jpg",
      name: "WASHINGTON DC",
      countryName: "UNITED-STATES",
    ),
      "Washington D.C., the capital city of the United States, is home to iconic landmarks like the White House and National Mall, as well as museums, memorials, and political institutions.",
      "Justice for All",
      false,
      20,
      4.3,
      480,
      "images/usa.jpg",
      "Day 1: National Mall, Smithsonian Museums, Lincoln Memorial, American dinner\n\nDay 2: White House, Washington Monument, Capitol Hill, Georgetown shopping\n\nDay 3: Arlington Cemetery, National Cathedral, Embassy Row, DC brunch\n\nDay 4: Departure from Washington. Historic landmarks, political institutions, and delicious cuisine make for an exciting 3-night trip",
      "WASHINGTON DC",
      3200,
    ]
  ];

}

class _HomePageState extends State<HomePage>{
  String os = "Paris, the capital city of France, is known as the City of Love and is home to iconic landmarks like the Eiffel Tower, delicious cuisine, and world-renowned art museums like the Louvre.";
  String of = "City of Lights";
  int deg = 15,dis = 270;
  double rat = 4.6;
  int ind = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: (
        Scaffold(
          body:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 15,),
              const Text("Trending Travels",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500
                ),),
              const SizedBox(height: 20,),
              Container(
                height: 350,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                  controller: PageController(
                    viewportFraction: 0.9,
                    initialPage: 0
                  ),
                  itemCount: widget.op.length,
                  onPageChanged: (ind1){
                    setState(() {
                      os = widget.op[ind1][1];
                      of = widget.op[ind1][2];
                      deg = widget.op[ind1][4];
                      rat = widget.op[ind1][5];
                      dis = widget.op[ind1][6];
                      ind = ind1;
                    });
                  },
                  itemBuilder: (context,i){
                    return (Padding(
                      padding:const EdgeInsets.only(left: 10,right: 10,top: 10),
                      child: widget.op[i][0],
                    ));
                  },
                ),
              ),
              const SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.only(left: 0,right: 0,bottom: 5),
                child: Text(of,style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700
                ),),
              ),
              //const SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 25,right: 12,),
                child: Wrap(
                  //spacing: 5,
                  alignment: WrapAlignment.spaceEvenly,
                  children: [Text(os,style: const TextStyle(
                      color: Color.fromRGBO(135, 135, 135, 1),
                      fontSize: 19,
                      fontWeight: FontWeight.w300,
                    wordSpacing:5,
                    leadingDistribution: TextLeadingDistribution.even
                  ),)],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25,top: 18,bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Container(
                        height: 50,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.lightBlue[300],
                            borderRadius: BorderRadius.circular(14)
                        ),
                        child: Row(
                          children:  [
                            const SizedBox(width: 5,),
                            const Icon(Icons.sunny,size: 27,color: Colors.yellow,),
                            const SizedBox(width: 7,),
                            Text("${deg.toString()} C",style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16
                            ),)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue[300],
                        borderRadius: BorderRadius.circular(14)
                      ),
                      child: Row(
                        children:  [
                          const Icon(Icons.location_on,size: 27,color: Colors.red,),
                          Text("${dis.toString()} KM",style:const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16
                          ),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: Container(
                        height: 50,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.lightBlue[300],
                            borderRadius: BorderRadius.circular(14)
                        ),
                        child: Row(
                          children:  [
                            const SizedBox(width: 7,),
                            const Icon(Icons.star,size: 27,color: Colors.yellow,),
                            const SizedBox(width: 7,),
                            Text(rat.toString(),style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 19
                            ),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 22,right: 25,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    (widget.op[ind][3] == false)? IconButton(onPressed: (){
                      setState(() {
                        widget.op[ind][3] = !widget.op[ind][3];
                      });
                    }, icon:const Icon(Icons.favorite_border,color: Colors.red,size: 40,)) : IconButton(onPressed: (){
                      setState(() {
                        widget.op[ind][3] = !widget.op[ind][3];
                      });
                    }, icon:const Icon(Icons.favorite,color: Colors.red,size: 40,)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          primary: Colors.lightBlue[300],
                          padding: const EdgeInsets.only(left: 90,right: 65,top: 10,bottom: 10)
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Details(
                            image: widget.op[ind][7],
                            tripDetails: widget.op[ind][8],
                            name: widget.op[ind][9],
                            price: widget.op[ind][10],
                          )));
                    }, child: const Text("More Details",style: TextStyle(fontSize: 18),))
                  ],
                ),
              )
            ],
          )
          )
        ),
      );
  }
}