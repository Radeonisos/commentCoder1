import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double widthPart =
        screenWidth > 765 ? screenWidth / 2.2 : screenWidth / 1.1;
    return Scaffold(
      appBar: AppBar(
        title: Text('Comment coder ça ?'),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Center(
              child: Card(
                child: Wrap(
                  children: [
                    Container(
                      child: leftPart(index),
                      width: widthPart,
                    ),
                    Container(
                      child: rightPart(),
                      color: Colors.black26,
                      width: widthPart,
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }

  Widget leftPart(int index) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Titre n°$index',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            'Voici un design simple que vous pouvez reproduire facilement',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Wrap(
              children: [
                ...List.generate(
                    8,
                    (i) => Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.red),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.accessibility),
                                Text('Option $i')
                              ],
                            ),
                          ),
                        ))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('Confirmer'))
            ],
          )
        ],
      ),
    );
  }

  Widget rightPart() {
    return FlutterLogo(
      size: 250,
    );
  }
}
