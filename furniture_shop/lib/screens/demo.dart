import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Demo2(index)));
              },
              child: Column(
                children: [
                  Text('furniture$index'),
                  Hero(
                    tag: 'furniture$index',
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/images/sofa.png',
                        width: 50,
                        height: 50,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        // child: InkWell(
        //   onTap: () {
        //     Navigator.push(
        //         context, MaterialPageRoute(builder: (context) => Demo2()));
        //   },
        //   child: Column(
        //     children: [
        //       Text('data'),
        //       Hero(
        //         tag: 'furniture',
        //         child: Image.asset(
        //           'assets/images/sofa.png',
        //           width: 30,
        //           height: 30,
        //           fit: BoxFit.fill,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}

class Demo2 extends StatefulWidget {
  int index;
  Demo2(this.index, {super.key});

  @override
  State<Demo2> createState() => _Demo2State();
}

class _Demo2State extends State<Demo2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('furniture${widget.index}'),
          Hero(
            tag: 'furniture${widget.index}',
            child: Image.asset(
              'assets/images/sofa.png',
              width: 324,
              height: 360,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
