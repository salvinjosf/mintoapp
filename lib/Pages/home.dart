import 'package:flutter/material.dart';
// import 'package:device_preview/device_preview.dart';

// void main() {
//   runApp(DevicePreview(
//     builder: (BuildContext context) => MaterialApp(
//       useInheritedMediaQuery: true,
//       //theme: ThemeData(primarySwatch: Colors.blue),
//       home: Home(),
//       debugShowCheckedModeBanner: false,
//     ),
//   ));
// }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  //const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var name = [
    "Table 1",
    "Table 2",
    "Table 3",
    "Table 4",
    // "Table 5",
    // "Table 6",
    // "Table 7",
    // "Table 8",
    // "Table 9",
    // "Table 10",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      appBar: AppBar(
        title: const Text(
          'Minto App',
          style: TextStyle(
              color: Colors.brown, fontSize: 23, fontWeight: FontWeight.bold),
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 20, left: 15),
            child: Text(
              'Hi, welcome to Minto!',
              style: TextStyle(
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontSize: 27),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.square_rounded,
                  color: Colors.white,
                ),
                const Text('   Available'),
                const SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.square_rounded,
                  color: Colors.brown.shade600,
                ),
                const Text('   Booked'),
                const SizedBox(
                  width: 30,
                ),
                const Icon(
                  Icons.square_rounded,
                  color: Colors.black45,
                ),
                const Text('   Selected'),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // Padding(
          //   padding: const EdgeInsets.all(20.0),
          //   child: Material(
          //     elevation: 5,
          //     child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          //       child: Image.asset('lib/Assets/floorplan.jpg'),
          //     ),
          //   ),
          // ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Table Arrangements'),
            ],
          ),
          const SizedBox(height: 20,),
          Container(
            color: Colors.grey,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
              ),
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 5, right: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.blueGrey,
                            blurRadius: 2,
                            spreadRadius: 3,
                          )
                        ], borderRadius: BorderRadius.circular(20), color: Colors.brown.shade300
                    ),
                    child: Center(
                      child: ListTile(
                        title: Text(name[index]),
                        leading: const Icon(Icons.table_restaurant_rounded),
                      ),
                    ),
                  ),
                );
              },itemCount: name.length,
            ),
          ),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){}, child: const Text('Confirm Booking')),
        ],
      ),
    );
  }
}
