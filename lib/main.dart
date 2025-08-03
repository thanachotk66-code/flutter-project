import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My profile',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 113, 215, 255)),
      ),
      home: const MyHomePage(title: 'resume'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/profile.jpg'),//เพิ่มรูป
            ),
            SizedBox(height: 16),
            Text(
              'ชื่อ : ธนโชติ กาฬภักดี ',
              style: TextStyle(fontSize: 20)
            ),
            Text(
              'ภูมิลำเนา : ชัยนาท',
              style: TextStyle(fontSize: 20)
            ),
            Text(
              'งานอดิเรก : เล่นเกม ',
              style: TextStyle(fontSize: 20)
            ),
            Text(
              'ประวัติการศึกษา',
              style: TextStyle(fontSize: 22,fontWeight :FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('ประถมศึกษา :  วัคคลองธรรม ปี2560'),
            Text('มัธยมต้น :  หันคาพิทยาคม ปี2563'),
            Text('มัธยมปลาย : หัคาพิทยาคม ปี2566')

          ],
        ),
        
           
      ),
    );
  }
}
