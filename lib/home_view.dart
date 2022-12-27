import 'package:flutter/material.dart';

import 'Pallete.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with SingleTickerProviderStateMixin{

  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 5000),
      vsync: this,
    );

    super.initState();
    //TODO:-MustImplement
    // _controller.repeat();
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        shadowColor: Colors.transparent,
      ),
      body: _bodyContent(),
    );
  }

  Widget _bodyContent() {
    return Container(
      color: primaryColor,
      child: Column(
        children: [
          Expanded(
              child: Container(
            child: buttonWithStatusSection(),
          )),
          Expanded(
              child: Column(
            children: [
              Expanded(
                  child: Container(
                color: cellColor,
              )),
              SizedBox(
                height: 8,
              ),
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: cellColor,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Container(
                      color: cellColor,
                    ),
                  ),
                ],
              )),
              SizedBox(
                height: 8,
              ),
              Expanded(
                  child: Container(
                color: cellColor,
              )),
            ],
          ))
        ],
      ),
    );
  }

  Widget buttonWithStatusSection() {
    Widget button = Stack(
      children: [
        RotationTransition(
          turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
            child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                color: cellColor, borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(75),
                  gradient: gradiantButtonColor,
                ),
                child: Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFFE8E8E8),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 200,
          height: 200,
          child: Center(
            child: Icon(Icons.power_settings_new_rounded),
          ),
        )
      ],
    );

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          button,
          SizedBox(height: 32,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            decoration: BoxDecoration(
              color: cellColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'Connection',
              style: TextStyle(color: primaryTextColor),
            ),
          ),
          SizedBox(height: 16,),
          Text(
            '12:00:11',
            style: TextStyle(color: primaryTextColor,fontSize: 24,fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
