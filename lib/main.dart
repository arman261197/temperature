import 'package:flutter/material.dart';

void main() {
  runApp(PageTemperature());
}

class PageTemperature extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              "Weather",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image(
                  image: NetworkImage(
                    'https://img4.goodfon.ru/original/800x480/e/c5/priroda-oblaka-solnyshko-iasnaia-pogoda.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Tuesday - May 22',
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                        Divider(),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque odio ligula, sagittis ut mi vel, tincidunt porttitor urna. Proin eu pretium diam. Curabitur gravida diam volutpat, fermentum nunc nec, accumsan odio.',
                          style: TextStyle(color: Colors.black54),
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Icon(
                                  Icons.wb_sunny,
                                  color: Colors.yellow,
                                ),
                              ],
                            ),
                            const SizedBox(width: 16.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: const <Widget>[
                                    Text(
                                      '10 Clear',
                                      style:
                                          TextStyle(color: Colors.deepPurple),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const <Widget>[
                                    Text(
                                      'Astana',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(),
                        Wrap(
                          spacing: 10.0,
                          children: List.generate(8, (int index) {
                            return Chip(
                              label: Text(
                                '${index + 20}C',
                                style: const TextStyle(fontSize: 15.0),
                              ),
                              avatar: Icon(
                                Icons.wb_cloudy,
                                color: Colors.blue.shade300,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                                side: const BorderSide(color: Colors.grey),
                              ),
                              backgroundColor: Colors.grey.shade100,
                            );
                          }),
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              'Info with openweathermap.org',
                              style: TextStyle(fontSize: 15.0),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.star,
                                    size: 15.0, color: Colors.yellow[600]),
                                Icon(Icons.star,
                                    size: 15.0, color: Colors.yellow[600]),
                                Icon(Icons.star,
                                    size: 15.0, color: Colors.yellow[600]),
                                const Icon(Icons.star,
                                    size: 15.0, color: Colors.black),
                                const Icon(Icons.star,
                                    size: 15.0, color: Colors.black),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
