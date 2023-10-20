import 'package:flutter/material.dart';

class Homecard extends StatelessWidget {
  const Homecard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
    
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Flexible(
              
              child: Container(
                color: Color.fromARGB(255, 247, 231, 230),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 200,
                      margin: EdgeInsets.only(left: 20,top: 20
                      ),
                    
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "My activity\nRecaps",
                            style:
                                TextStyle(fontWeight: FontWeight.bold, fontSize: 22,color: Colors.blueGrey,),
                          ),
                          Text("Everything you need to\nknow about your health.",style: TextStyle(),),

                          SizedBox(height: 20,),
                          Container(
                            decoration: BoxDecoration(
                              
                              color:Color.fromARGB(255, 236, 210, 208),
                              borderRadius: BorderRadius.circular(20)),
                           height: 30, width: 100 ,child: Center(child: Text("Get Started")),)
                        ],
                      ),
                    ),
                    Flexible(
                
                
                      
                      child: Container(
                      
                        child: Image.asset(
                          
                          "lib/images/runningman.png",
                      
                          height: 200,
                          
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // height: 200,
              // width:MediaQuery.of(context).size.width,
              
            ),
          ),
        ),
      ],
    );
  }
}
