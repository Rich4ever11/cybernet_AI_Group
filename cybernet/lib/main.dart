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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Raleway'),
      home: Scaffold(
          // appBar: AppBar(
          //   backgroundColor: Colors.blueAccent[700],
          //   title: const Text(
          //     "Cybernet AI",
          //     style: TextStyle(
          //         color: Color.fromARGB(255, 255, 255, 255),
          //         fontSize: 30.0,
          //         fontWeight: FontWeight.w300),
          //   ),
          // ),
          body: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(5),
        child: LoginCard(),
      )),
    );
  }
}

class LoginCard extends StatelessWidget {
  const LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 5.0, bottom: 5.0),
              child: Text("Login For Cybernet AI",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 40, 57),
                      fontSize: 70.0,
                      fontWeight: FontWeight.w100)),
            ),
            const Padding(
                padding: EdgeInsets.all(40.0),
                child: Text(
                    "Find extensive ways to ask questions about large documents using AI and be happy that your document and information is secured 🔒",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 40, 57),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900))),
            const Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ))),
            const SizedBox(height: 10),
            const Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ))),
            Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                child: Container(
                  height: 50.0,
                  width: 100.0,
                  child: TextButton(
                    onPressed: () => {print("HELLO WORLD")},
                    child: const Text('Submit',
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 40, 57),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w100)),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterPage()),
                    );
                  },
                  child: const Text("Don't have an account? Register Here")),
            )
          ],
        ));
  }
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Already Have an Account? Login In'),
            ),
          )
        ],
      ),
    );
  }
}



// class DocumentList extends StatelessWidget {
//   const DocumentList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Card(
//         color: Color.fromARGB(183, 0, 0, 0),
//         margin: EdgeInsets.all(5),
//         child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
//           Row(children: [
//             Expanded(
//               child: DocumentCard(
//                   documentTitle: "documentTitle", description: "description"),
//             ),
//             Expanded(
//               child: DocumentCard(
//                   documentTitle: "documentTitle", description: "description"),
//             ),
//           ]),
//           Row(children: [
//             Expanded(
//               child: DocumentCard(
//                   documentTitle: "documentTitle", description: "description"),
//             ),
//             Expanded(
//               child: DocumentCard(
//                   documentTitle: "documentTitle", description: "description"),
//             ),
//           ]),
//         ]));
//   }
// }

// class DocumentCard extends StatelessWidget {
//   final String documentTitle;
//   final String description;

//   const DocumentCard(
//       {super.key, required this.documentTitle, required this.description});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       clipBehavior: Clip.hardEdge,
//       child: InkWell(
//         splashColor: Colors.blue.withAlpha(30),
//         onTap: () {
//           debugPrint('Card tapped.');
//         },
//         child: SizedBox(
//           width: 200,
//           height: 200,
//           child: Container(
//               margin: const EdgeInsets.all(10),
//               child: Column(children: [
//                 Text(
//                   documentTitle,
//                   style: const TextStyle(
//                       color: Color.fromARGB(255, 0, 0, 0),
//                       fontSize: 16.0,
//                       fontWeight: FontWeight.w300),
//                 ),
//                 Text(
//                   description,
//                   style: const TextStyle(
//                       color: Color.fromARGB(255, 0, 0, 0),
//                       fontSize: 16.0,
//                       fontWeight: FontWeight.w300),
//                 ),
//               ])),
//         ),
//       ),
//     );
//   }
// }
