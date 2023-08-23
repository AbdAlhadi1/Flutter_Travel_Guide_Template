import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Details extends StatelessWidget{
  String image, tripDetails,name;
  int price;
  Details({
    required this.image,
    required this.tripDetails,
    required this.name,
    required this.price,
    super.key,
});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: (
        Scaffold(
          body: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ClipRRect(
                  //borderRadius: BorderRadius.circular(15),
                  child:Image(image: AssetImage(image),fit: BoxFit.fill,),
                ),
              ),
               Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   /*SizedBox(height: MediaQuery.of(context).size.height/2,)*/
                   Container(
                     width: MediaQuery.of(context).size.width,
                     height: (MediaQuery.of(context).size.height/2.4),
                     margin: const EdgeInsets.all(10),
                       decoration: BoxDecoration(
                         color: Colors.white,
                       borderRadius: BorderRadius.circular(5)
                     ),
                     child: Padding(
                       padding: const EdgeInsets.all(13.0),
                       child: SingleChildScrollView(
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(bottom: 10),
                               child: Text(name,style: const TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 28
                               ),),
                             ),
                             Text(tripDetails,style:const TextStyle(
                                  fontSize: 14,
                                fontWeight: FontWeight.w300
                             ),),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                       mainAxisSize: MainAxisSize.min,
                                       children: [
                                         const Text("Total Price ",style: TextStyle(
                                           fontSize: 19,
                                           fontWeight: FontWeight.w500
                                         ),),
                                         Padding(
                                           padding: const EdgeInsets.only(top: 0,left: 5),
                                           child: Text("\$  "+price.toString(),style:const TextStyle(
                                               fontSize: 19,
                                               fontWeight: FontWeight.w500
                                           ) ,),
                                         ),
                                       ],
                                     ),
                                  ),
                                 Padding(
                                   padding: const EdgeInsets.only(top: 17),
                                   child: ElevatedButton(
                                       style: ElevatedButton.styleFrom(
                                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                           primary: Colors.lightBlue[300],
                                           padding: const EdgeInsets.only(left: 40,right: 40,top: 10,bottom: 15)
                                       ),
                                     onPressed:(){

                                     },
                                     child: const Text("BOOK NOW",style: TextStyle(
                                        fontSize: 17
                                     ),)),
                                 )
                               ],
                             )
                           ],
                         ),
                       ),
                     ),
                   )
                 ],
               )
            ],
          ),
        )
      ),
    );
  }


}