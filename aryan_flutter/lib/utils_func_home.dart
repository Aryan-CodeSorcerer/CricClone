import 'package:flutter/material.dart';

class Utils 
{
static  List<String> images=[
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8_P1zP9qBB6yy3AVgPeZzK7CpZx7-HCOI9w&usqp=CAU',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMaJQQHtXMKOJ4FTswRdVdhvpxsaY1zKPmJQ&usqp=CAU',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXFL06I2LCmeszc1ycCLRh6JeUbKcsV0atYQ&usqp=CAU',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMaJQQHtXMKOJ4FTswRdVdhvpxsaY1zKPmJQ&usqp=CAU',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8_P1zP9qBB6yy3AVgPeZzK7CpZx7-HCOI9w&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXFL06I2LCmeszc1ycCLRh6JeUbKcsV0atYQ&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBiAw_3QV_qZuGVgubo8ho-f6lF2385bBQbA&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS00WjE9nuaa9vRM0RCDHH10WPqjIUODAglYg&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZhiZo1Ef_AhiehuBmLW8VQuDYII3x9ZJGOg&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhd_h3oPZSr5wCmoMXh_rdBAY3DvjmrGLBWA&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8_P1zP9qBB6yy3AVgPeZzK7CpZx7-HCOI9w&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXFL06I2LCmeszc1ycCLRh6JeUbKcsV0atYQ&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBiAw_3QV_qZuGVgubo8ho-f6lF2385bBQbA&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS00WjE9nuaa9vRM0RCDHH10WPqjIUODAglYg&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGpK0Zqo5i1BFNlZNGVcWJKAkXTeb_-EJKRQ&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGpK0Zqo5i1BFNlZNGVcWJKAkXTeb_-EJKRQ&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8_P1zP9qBB6yy3AVgPeZzK7CpZx7-HCOI9w&usqp=CAU',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMaJQQHtXMKOJ4FTswRdVdhvpxsaY1zKPmJQ&usqp=CAU',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXFL06I2LCmeszc1ycCLRh6JeUbKcsV0atYQ&usqp=CAU',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMaJQQHtXMKOJ4FTswRdVdhvpxsaY1zKPmJQ&usqp=CAU',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8_P1zP9qBB6yy3AVgPeZzK7CpZx7-HCOI9w&usqp=CAU',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMaJQQHtXMKOJ4FTswRdVdhvpxsaY1zKPmJQ&usqp=CAU',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXFL06I2LCmeszc1ycCLRh6JeUbKcsV0atYQ&usqp=CAU',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMaJQQHtXMKOJ4FTswRdVdhvpxsaY1zKPmJQ&usqp=CAU',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8_P1zP9qBB6yy3AVgPeZzK7CpZx7-HCOI9w&usqp=CAU',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMaJQQHtXMKOJ4FTswRdVdhvpxsaY1zKPmJQ&usqp=CAU',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXFL06I2LCmeszc1ycCLRh6JeUbKcsV0atYQ&usqp=CAU',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMaJQQHtXMKOJ4FTswRdVdhvpxsaY1zKPmJQ&usqp=CAU',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8_P1zP9qBB6yy3AVgPeZzK7CpZx7-HCOI9w&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXFL06I2LCmeszc1ycCLRh6JeUbKcsV0atYQ&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBiAw_3QV_qZuGVgubo8ho-f6lF2385bBQbA&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS00WjE9nuaa9vRM0RCDHH10WPqjIUODAglYg&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZhiZo1Ef_AhiehuBmLW8VQuDYII3x9ZJGOg&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhd_h3oPZSr5wCmoMXh_rdBAY3DvjmrGLBWA&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8_P1zP9qBB6yy3AVgPeZzK7CpZx7-HCOI9w&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXFL06I2LCmeszc1ycCLRh6JeUbKcsV0atYQ&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBiAw_3QV_qZuGVgubo8ho-f6lF2385bBQbA&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS00WjE9nuaa9vRM0RCDHH10WPqjIUODAglYg&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZhiZo1Ef_AhiehuBmLW8VQuDYII3x9ZJGOg&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhd_h3oPZSr5wCmoMXh_rdBAY3DvjmrGLBWA&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhd_h3oPZSr5wCmoMXh_rdBAY3DvjmrGLBWA&usqp=CAU',
   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS00WjE9nuaa9vRM0RCDHH10WPqjIUODAglYg&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZhiZo1Ef_AhiehuBmLW8VQuDYII3x9ZJGOg&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhd_h3oPZSr5wCmoMXh_rdBAY3DvjmrGLBWA&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhd_h3oPZSr5wCmoMXh_rdBAY3DvjmrGLBWA&usqp=CAU',

   ];
  static Widget homeImage(context)
  {
    return Container(
      height:415,
            width:424,
            decoration:const BoxDecoration(
              image:DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST2K5p-2kT30PnxY8-OhDlko6ZXYnO1XvbWkI-x3BdeQehYUxMftPC4WKzSzeKlRhQiGs&usqp=CAU'),
              fit:BoxFit.fill
              )
            ),
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network('https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/227_Netflix_logo-512.png',
                  fit: BoxFit.fill,
                  height:57,
                  width:57),
                  TextButton( 
                onPressed: (){},
                child: const Text('TV Shows',
                style:TextStyle(color:Colors.white,fontSize: 25),
                ),
              ),
                  TextButton( 
                onPressed: (){},
                child: const Text('Movies',
                style:TextStyle(color:Colors.white,fontSize: 25),
                ),
              ),
              TextButton(
                onPressed: (){},
                child: const Text('My List',
                style:TextStyle(color:Colors.white,fontSize: 25),
                ),
              ),
                ],
              ),
            ),
      );
  }
  //TTTTTTTTTTTTTTTEEEEEEEEEEEEEEEXXXXXXXXXXXTTTTTTTTTTTTTTTTT 
  static Widget title(titledata)
  {
   return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
     child: Text(titledata,
      style: const TextStyle(color: Colors.white,fontSize:25,fontWeight: FontWeight.bold ),
      ),
   );
  }
  static Widget circleList(context,indexList)
  {
    return Container(
      height: MediaQuery.of(context).size.longestSide/8,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: indexList.length,
        itemBuilder: (context, index)
        {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.longestSide/8,
              width: MediaQuery.of(context).size.longestSide/8,
              decoration: BoxDecoration(
                
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(image: NetworkImage(images[indexList[index]]),
                fit: BoxFit.fill)
                
              ),

            ),
          );

        }
        ),
    );

  }
  static Widget imageListView(context, indexList)
  {
   return Container(
    height: MediaQuery.of(context).size.longestSide/5,
    width: double.infinity,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: indexList.length,
      itemBuilder: (context, index)
      {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.longestSide/5,
            width: MediaQuery.of(context).size.longestSide/5,
            decoration: BoxDecoration(
             shape: BoxShape.rectangle ,
             image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(images[indexList[index]]))
            ),
          ),
        );

      }
      ),
   );
  }
  
}

