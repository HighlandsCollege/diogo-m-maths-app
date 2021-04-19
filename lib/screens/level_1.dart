import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maths_app/models/data_model.dart';
import 'package:http/http.dart' as http;
import 'package:maths_app/services/data.dart';

class Level1 extends StatefulWidget {
  @override
  _Level1State createState() => _Level1State();
}

class _Level1State extends State<Level1> {
  List<Tion> _questions;

  @override
  void initState() {
    _questions = DataHandler().questions;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 50, 8, 50),
          child: Center(
            child: _questions != null
              ? Text('error loading')
              : Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'ugfuf}',
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800]
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: size.width,
                    height: size.width,
                    child: GridView.count(
                      crossAxisCount: 2,
                      children: List.generate(4, (index) => 
                        Center(
                          child: GestureDetector(
                            onTap: () => print('ugfutf'),
                            child: Text(
                              'Start',
                              style: GoogleFonts.lato(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[800]
                              ),
                            )
                          ),
                        )
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () => print('ugfutf'),
                    child: Text(
                      'Start',
                      style: GoogleFonts.lato(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800]
                      ),
                    )
                  )
                ],
            ),
          ),
        ),
      ),
    );
  }
}
