import 'package:flutter/material.dart';

class PopularSlider extends StatefulWidget {
  @override
  _PopularSliderState createState() => _PopularSliderState();
}

class _PopularSliderState extends State<PopularSlider> {
  //TODO We need a way to get popular panel. for now using list.

  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      'Creating your very own book recommender system',
      'Creating your very own music recommender system',
    ];
    List<String> about = [
      'In this tutorial we will be making our very own book recommendation system. Over the course, you will learn about tokenization, data cleaning in NLP, Lemmatization, Matrix Similarity, and so on.',
      'In this tutorial we will be making our very own Music recommendation system. Over the course, you will learn about tokenization, data cleaning in NLP, Lemmatization, Matrix Similarity, and so on.'
    ];
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.arrow_left),
            onPressed: () {
              // TODO change index popular slider.
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
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        titles[0],
                      ),
                      Text(
                        about[0],
                      ),
                      // TODO add learners.
                      // TODO add buy button.
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
              // TODO change index popular slider
            },
          ),
        ],
      ),
    );
  }
}
