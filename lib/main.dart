import 'package:flutter/material.dart';
import 'package:simple_quotes_app/quotes.dart';

void main() => runApp(MaterialApp(
  home: Home(),
  debugShowCheckedModeBanner: false,
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quotes"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),

      body: Container(
        alignment: Alignment.center,
        child:Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: 400,
                  color: Colors.greenAccent,
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(quotes[index],style: TextStyle(fontSize: 20.0,fontStyle: FontStyle.italic),),
                  )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton.icon(onPressed: ()=>showQuotes(), icon: Icon(Icons.wb_sunny),
                label: Text("Inspire Me!"),
                color: Colors.greenAccent,),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  showQuotes() {
    setState(() {
      if(index<quotes.length-1)
        index=index+1;
      else
        index=0;
    });
  }

  @override
  void initState() {
    index=0;
  }
}
