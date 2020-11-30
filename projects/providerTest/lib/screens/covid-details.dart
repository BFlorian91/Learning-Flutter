import 'package:flutter/material.dart';
import 'package:providerTest/models/covid.dart';
import 'package:providerTest/providers/api-provider.dart';
import 'package:providerTest/widgets/country-card.dart';

class CovidDetails extends StatefulWidget {
  @override
  _CovidDetailsState createState() => _CovidDetailsState();
}

class _CovidDetailsState extends State<CovidDetails> {
  final ApiProvider covidStats = ApiProvider();
  Future<Covid> covid;
  final TextEditingController _controller = TextEditingController();

  void initState() {
    super.initState();
    covid = covidStats.fetchDatas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              _navigator(_controller),
              SizedBox(height: 10),
              Expanded(
                  child: CustomScrollView(
                slivers: [
                  SliverList(
                      delegate: SliverChildListDelegate([
                        CountryCard('France', '2270573', '52410'),
                        CountryCard('France', '2270573', '52410'),
                        CountryCard('France', '2270573', '52410'),
                        CountryCard('France', '2270573', '52410'),
                        CountryCard('France', '2270573', '52410'),
                        CountryCard('France', '2270573', '52410'),
                        CountryCard('France', '2270573', '52410'),
                        CountryCard('France', '2270573', '52410'),
                        CountryCard('France', '2270573', '52410'),
                  ]))
                ],
              )),
            ],
          ),
        ),
      ),
    );
    // body: Center(child: Text('helo world')));
  }

  Widget _navigator(TextEditingController _controller) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        labelText: 'Search country',
        labelStyle: TextStyle(color: Colors.pinkAccent[100]),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.pinkAccent[100]) 
        ),
        suffixIcon: IconButton(
          onPressed: () => print('search ${_controller.text}'),
          icon: Icon(Icons.location_pin),
        ),
      ),
    );
  }
}
