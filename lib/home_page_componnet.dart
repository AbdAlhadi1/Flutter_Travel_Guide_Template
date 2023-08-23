import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Travel extends StatelessWidget{
  String image,name,countryName;
  Travel({
   required this.name,
   required this.image,
   required this.countryName,
   super.key
});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return (
      InkWell(
        onTap:(){

        },
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child:Image(image: AssetImage(image),fit: BoxFit.cover,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250,left: 20),
              child: Text(name.toString(),style: const TextStyle(
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.w600
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 300,left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.location_on,size: 25,color: Colors.white,),
                  const SizedBox(width: 5,),
                  Text(countryName,style:const TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                  ),)
                ],
              ),
            )
          ],
        ),
      )
    );
  }

}