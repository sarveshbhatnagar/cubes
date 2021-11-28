import 'package:flutter/material.dart';

class PopularSlider extends StatefulWidget {
  @override
  _PopularSliderState createState() => _PopularSliderState();
}

// TODO add mobile view.
class _PopularSliderState extends State<PopularSlider> {
  //TODO We need a way to get popular panel. for now using list.
  var index = 0;
  List<String> titles = [
    'Creating your very own book recommender system',
    'Creating your very own music recommender system',
  ];
  // WE USE LENGTH OF TITLES AT NEXT BUTTON.
  List<String> about = [
    'In this tutorial we will be making our very own book recommendation system. Over the course, you will learn about tokenization, data cleaning in NLP, Lemmatization, Matrix Similarity, and so on.',
    'In this tutorial we will be making our very own Music recommendation system. Over the course, you will learn about tokenization, data cleaning in NLP, Lemmatization, Matrix Similarity, and so on.'
  ];
  GlobalKey _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.arrow_left),
            onPressed: () {
              // TODO animate.
              if (index > 0) {
                setState(() {
                  index = index - 1;
                });
              }
            },
          ),
          // TODO make it better
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Image.network('assets/images/testimage.png'),
                ),
                Container(
                  key: _key,
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        titles[index],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        about[index],
                        style: TextStyle(),
                        textAlign: TextAlign.justify,
                      ),
                      // TODO add learners.
                      Text('Number of Downloads: 350+'),
                      // TODO add buy button.
                      Wrap(
                        spacing: 20,
                        children: [
                          Text('Orignal Cost: 40\$'),
                          Text('Offer Price: 15\$'),
                        ],
                      ),
                      RaisedButton(
                        color: Colors.lightBlue[100],
                        child: Text('Buy Now!'),
                        onPressed: () {},
                      )
                      // TODO add price & discount
                      // TODO add skills learned.
                    ],
                  ),
                ),
              ],
            ),
          ),

          IconButton(
            icon: Icon(Icons.arrow_right),
            onPressed: () {
              // TODO animate
              print(index);
              print(titles.length);
              if (index < titles.length - 1) {
                index = index + 1;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
