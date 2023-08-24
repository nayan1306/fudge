import 'package:flutter/material.dart';
import 'package:fudge/feature_box.dart';
import 'package:fudge/pallete.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'FUDGE',
        ),
        centerTitle: true,
        leading: const Icon(Icons.menu),
      ),
      body: Column(
        // Assistant Picture
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.only(top: 4),
                  decoration: const BoxDecoration(
                      color: Pallete.assistantCircleColor,
                      shape: BoxShape.circle),
                ),
              ),
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/Assistant.png'))),
                ),
              )
            ],
          ),
          //Chat Bubble
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            margin:
                const EdgeInsets.symmetric(horizontal: 40).copyWith(top: 30),
            decoration: BoxDecoration(
                border: Border.all(color: Pallete.borderColor),
                borderRadius:
                    BorderRadius.circular(20).copyWith(topLeft: Radius.zero)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Salutations. What endeavors can I assist you with at this juncture?",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cera Pro',
                  color: Pallete.mainFontColor,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            margin: const EdgeInsets.symmetric(horizontal: 40),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Presenting notable features:",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cera Pro',
                color: Color.fromARGB(255, 0, 41, 74),
              ),
            ),
          ),

          // Features list
          Column(
            children: const [
              FeatureBox(
                  color: Pallete.secondSuggestionBoxColor,
                  headerText: "GPT Integrated",
                  descriptionText:
                      "Seamlessly merging the language prowess of GPT with multidimensional data integration for a new era of comprehensive AI intelligence"),
              FeatureBox(
                  color: Pallete.firstSuggestionBoxColor,
                  headerText: "Ask anything",
                  descriptionText:
                      "Can you detail the AI-driven strategy behind a successful game of rock-paper-scissors?"),
              FeatureBox(
                  color: Pallete.thirdSuggestionBoxColor,
                  headerText: " Accelerate Efficiency",
                  descriptionText:
                      "Accelerate tasks with streamlined precision, achieving goals faster than ever.")
            ],
          )
        ],
      ),
      floatingActionButton: Container(
        alignment: Alignment.bottomCenter,
        padding: const EdgeInsets.only(left: 20.0),
        child: FloatingActionButton(
          onPressed: () => {},
          child: const Icon(Icons.mic_none_outlined),
        ),
      ),
    );
  }
}
