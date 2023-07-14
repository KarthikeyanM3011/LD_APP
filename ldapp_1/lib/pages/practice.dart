import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class ChooseType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Colors.blue,
              Colors.purple,
              Colors.yellow,
              Colors.teal
            ],
          center: Alignment.center,
          radius: 0.5,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: ((context) => LanguageA())),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(300, 70),
                          primary: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text(
                          'Alphabets',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: ((context) => LanguageW())),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(300, 70),
                          primary: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text(
                          'Words',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: ((context) => LanguageS())),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(300, 70),
                          primary: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text(
                          'Sentence',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}



class LanguageA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AlphabetsEng()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(300, 70),
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      'English',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20, width: 20),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AlphabetsTam()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(300, 70),
                      primary: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      'Tamil',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LanguageW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WordsEng()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(300, 70),
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      'English',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20, width: 20),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WordsTam()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(300, 70),
                      primary: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      'Tamil',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LanguageS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SentencesEng()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(300, 70),
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      'English',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20, width: 20),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SentencesTam()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(300, 70),
                      primary: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      'Tamil',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class WordsEng extends StatefulWidget {
  const WordsEng({super.key});

  @override
  State<WordsEng> createState() => _WordsEngState();
}

class _WordsEngState extends State<WordsEng> {

    FlutterTts flutterTts = FlutterTts();
  TextEditingController textEditingControllerWE = TextEditingController();
  // String textToSpeak = 'Aa';
  double speechRatew = 0.2; 

  @override
  void initState() {
    super.initState();
    setupTts();
  }

   Future<void> setupTts() async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.setSpeechRate(speechRatew);
  }

  @override
  void dispose() {
    flutterTts.stop();
    textEditingControllerWE.dispose();
    super.dispose();
  }

  Future<void> speak(String text) async {
    if (text.isNotEmpty) {
      await flutterTts.speak(text);
    }
  }

  List<String> Letters=[
     'Apple','Ball','Cat','Dog','Egg','Flight','Ghost','Humans','India','Japan','Korea','London','Master','Name','Orange','Peacock','Quick','Run','Sit','Tall','Ultra','Violet','Window','Xerox','Yellow','Zoo'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: ListView.builder(
          itemCount: Letters.length,
          itemBuilder: (context , index){
            return Center(
              child: Column(
                children: [
                  Container(
                    child: Text('${Letters[index]}',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 200,fontWeight: FontWeight.bold),),
                    height: 200,
                    width: 200,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                       color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  ElevatedButton(
                    onPressed:()=>speak(Letters[index]),
                   child: Text('${Letters[index]}')
                  ),

                  Text('\n')
                ],
              ),
            );
          }
          ),
      ),
    );
  }
}



class WordsTam extends StatefulWidget {
  const WordsTam({super.key});

  @override
  State<WordsTam> createState() => _WordsTamState();
}

class _WordsTamState extends State<WordsTam> {
    FlutterTts flutterTts = FlutterTts();
  TextEditingController textEditingControllerWT = TextEditingController();
  // String textToSpeak = 'Aa';
  double speechRate = 0.5; 

  @override
  void initState() {
    super.initState();
    setupTts();
  }

   Future<void> setupTts() async {
    await flutterTts.setLanguage('ta-IN');
    await flutterTts.setSpeechRate(speechRate);
  }

  @override
  void dispose() {
    flutterTts.stop();
    textEditingControllerWT.dispose();
    super.dispose();
  }

  Future<void> speak(String text) async {
    if (text.isNotEmpty) {
      await flutterTts.speak(text);
    }
  }

  List<String> Letters=[
     'பால்', 'படகு', 'குழந்தை', 'பூனை', 'மரம்', 'மாடு', 'விமானம்', 'மயில்', 'காடு', 'கோழி', 'செவ்வாய்', 'வெண்ணிலம்', 'கீரை', 'விதை', 'மருத்துவம்', 'முட்டை', 'பறவை', 'சுவரெலி', 'பேய்', 'மழை'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: ListView.builder(
          itemCount: Letters.length,
          itemBuilder: (context , index){
            return Center(
              child: Column(
                children: [
                  Container(
                    child: Text('${Letters[index]}',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 200,fontWeight: FontWeight.bold),),
                    height: 200,
                    width: 200,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                       color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  ElevatedButton(
                    onPressed:()=>speak(Letters[index]),
                   child: Text('${Letters[index]}')
                  ),

                  Text('\n')
                ],
              ),
            );
          }
          ),
      ),
    );
  }
}



class SentencesEng extends StatefulWidget {

  @override
  State<SentencesEng> createState() => _SentencesEngState();
}

class _SentencesEngState extends State<SentencesEng> {
  FlutterTts flutterTts = FlutterTts();
  TextEditingController textEditingControllerSE = TextEditingController();
  // String textToSpeak = 'Aa';
  double speechRates = 0.2; 

  @override
  void initState() {
    super.initState();
    setupTts();
  }

   Future<void> setupTts() async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.setSpeechRate(speechRates);
  }

  @override
  void dispose() {
    flutterTts.stop();
    textEditingControllerSE.dispose();
    super.dispose();
  }

  Future<void> speak(String text) async {
    if (text.isNotEmpty) {
      await flutterTts.speak(text);
    }
  }

  List<String> Letters=[
     'Apple is Tasty','White color Ball','The Black Cat','The street Dog','Egg is good','Flight flies high','Ghost is scary','Humans are innocents','India is my country','Japanese series','Koreaen series','London Bridge'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: ListView.builder(
          itemCount: Letters.length,
          itemBuilder: (context , index){
            return Center(
              child: Column(
                children: [
                  Container(
                    child: Text('${Letters[index]}',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 100,fontWeight: FontWeight.bold),),
                    height: 200,
                    width: 200,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                       color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  ElevatedButton(
                    onPressed:()=>speak(Letters[index]),
                   child: Text('${Letters[index]}')
                  ),

                  Text('\n')
                ],
              ),
            );
          }
          ),
      ),
    );
  }
}



class SentencesTam extends StatefulWidget {

  @override
  State<SentencesTam> createState() => _SentencesTamState();
}

class _SentencesTamState extends State<SentencesTam> {
  FlutterTts flutterTts = FlutterTts();
  TextEditingController textEditingControllerST = TextEditingController();
  // String textToSpeak = 'Aa';
  double speechRate = 0.5; 

  @override
  void initState() {
    super.initState();
    setupTts();
  }

   Future<void> setupTts() async {
    await flutterTts.setLanguage('ta-IN');
    await flutterTts.setSpeechRate(speechRate);
  }

  @override
  void dispose() {
    flutterTts.stop();
    textEditingControllerST.dispose();
    super.dispose();
  }

  Future<void> speak(String text) async {
    if (text.isNotEmpty) {
      await flutterTts.speak(text);
    }
  }

  List<String> Letters=[
     'பால் அருமையானது', 'மாடு வளர்ந்து வருகிறது', 'பூனை சேருகிறது','படகு போகிறது','விமானம் உலகைப் பார்க்கிறது', 'மரம் மலருகிறது' ,'பேய் இருக்கிறது', 'பறவை வந்து சேருகிறது','மழை வருகிறது'
     , 'மருத்துவம் முடிந்துள்ளது'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: ListView.builder(
          itemCount: Letters.length,
          itemBuilder: (context , index){
            return Center(
              child: Column(
                children: [
                  Container(
                    child: Text('${Letters[index]}',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 100,fontWeight: FontWeight.bold),),
                    height: 200,
                    width: 200,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                       color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  ElevatedButton(
                    onPressed:()=>speak(Letters[index]),
                   child: Text('${Letters[index]}')
                  ),

                  Text('\n')
                ],
              ),
            );
          }
          ),
      ),
    );
  }
}



class AlphabetsEng extends StatefulWidget {

  @override
  State<AlphabetsEng> createState() => _AlphabetsEngState();
}

class _AlphabetsEngState extends State<AlphabetsEng> {
  FlutterTts flutterTts = FlutterTts();
  TextEditingController textEditingControllerAE = TextEditingController();
  // String textToSpeak = 'Aa';
  double speechRatea = 0.1; 

  @override
  void initState() {
    super.initState();
    setupTts();
  }

   Future<void> setupTts() async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.setSpeechRate(speechRatea);
  }

  @override
  void dispose() {
    flutterTts.stop();
    textEditingControllerAE.dispose();
    super.dispose();
  }

  Future<void> speak(String text) async {
    if (text.isNotEmpty) {
      await flutterTts.speak(text);
    }
  }

  List<String> Letters=[
    'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: ListView.builder(
          itemCount: Letters.length,
          itemBuilder: (context , index){
            return Center(
              child: Column(
                children: [
                  Container(
                    child: Text('${Letters[index]}',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 200,fontWeight: FontWeight.bold),),
                    height: 200,
                    width: 200,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                       color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  ElevatedButton(
                    onPressed:()=>speak(Letters[index]),
                   child: Text('${Letters[index]}')
                  ),

                  Text('\n')
                ],
              ),
            );
          }
          ),
      ),
    );
  }
}



class AlphabetsTam extends StatefulWidget {
  const AlphabetsTam({super.key});

  @override
  State<AlphabetsTam> createState() => _AlphabetsTamState();
}

class _AlphabetsTamState extends State<AlphabetsTam> {
    FlutterTts flutterTts = FlutterTts();
  TextEditingController textEditingControllerAT = TextEditingController();
  double speechRatea = 0.5; 

  @override
  void initState() {
    super.initState();
    setupTts();
  }

   Future<void> setupTts() async {
var isGoodLanguage = await flutterTts.isLanguageAvailable("ta");
print(isGoodLanguage);
    await flutterTts.setLanguage('ta-IN');
    await flutterTts.setSpeechRate(speechRatea);
  }

  @override
  void dispose() {
    flutterTts.stop();
    textEditingControllerAT.dispose();
    super.dispose();
  }

  Future<void> speak(String text) async {
    if (text.isNotEmpty) {
      await flutterTts.speak(text);
    }
  }

  List<String> Letters=[
     'அ', 'ஆ', 'இ', 'ஈ', 'உ', 'ஊ', 'எ', 'ஏ', 'ஐ', 'ஒ', 'ஓ', 'ஔ', 'ஃ', 'க', 'ங', 'ச', 'ஞ', 'ட', 'ண', 'த', 'ந', 'ப', 'ம', 'ய', 'ர', 'ல', 'வ', 'ழ', 'ள', 'ற', 'ன'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: ListView.builder(
          itemCount: Letters.length,
          itemBuilder: (context , index){
            return Center(
              child: Column(
                children: [
                  Container(
                    child: Text('${Letters[index]}',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 200,fontWeight: FontWeight.bold),),
                    height: 200,
                    width: 200,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                       color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  ElevatedButton(
                    onPressed:()=>speak(Letters[index]),
                   child: Text('${Letters[index]}')
                  ),

                  Text('\n')
                ],
              ),
            );
          }
          ),
      ),
    );
  }
}
