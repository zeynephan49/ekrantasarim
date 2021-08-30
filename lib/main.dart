import 'package:flutter/material.dart';

void main() {
  runApp(
      MainPage()
  );

}



class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {




        Widget titleSection = Container(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5,5,5,1),
                      child: Container(
                        child: Text(
                            'BugsBunny',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5,1,5,5),
                      child: Container(

                        child: Text(
                            'Donald Duck',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Text('100'),
              Icon(
              Icons.star,
                color: Colors.pink[900],

              ),

            ],
          ),


    );


     Widget buttonSection = Container(
       padding: EdgeInsets.all(8.0),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           RaisedButton.icon(
               onPressed: (){},
               icon: Icon(Icons.favorite,color: Colors.pinkAccent),
               label: Text('Like')
           ),
           RaisedButton.icon(onPressed: (){},
            icon: Icon(Icons.add_comment_outlined,color: Colors.grey,),
               label: Text('Comment')
           ),
           RaisedButton.icon(onPressed: (){},
               icon: Icon(Icons.star,color: Colors.yellowAccent,),
               label: Text('Star')),
         ],
       ),
     );
     Widget aboutSection = Container(
       padding: EdgeInsets.all(8.0),
       child: Text('Information',
       style: TextStyle(
         fontSize: 14.0,
       ),),

     );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('myHERO'),
          backgroundColor: Colors.redAccent[200],
        ),
        body: ListView(
          children: [

            SizedBox(child: Padding(
              padding: const EdgeInsets.all(100.0),
              child: Image.asset('assets/images/bugsbunny.png'),
            )),
         titleSection,
            buttonSection,
            aboutSection,
          ],
        ),
      ),
    );
  }
}


