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
  Future<Covid> _covidDatas;
  final TextEditingController _controller = TextEditingController();

  void initState() {
    super.initState();
    _covidDatas = covidStats.fetchDatas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: FutureBuilder(
        future: _covidDatas,
        builder: (BuildContext context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return snapshot.error;
          }
          return Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: _navigator(_controller),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: CustomScrollView(
                    slivers: [
                      SliverList(
                          delegate: SliverChildListDelegate([
                        // CountryCard(covidGlobal: snapshot.data.global) update for this
                      ])),
                      SliverList(
                          delegate: SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                        return Center(
                            child: CountryCard(
                                covidDatas: snapshot.data.countries[index]));
                      }, childCount: 191))
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    ));
  }

  Widget _navigator(TextEditingController _controller) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        labelText: 'Search country',
        labelStyle: TextStyle(color: Colors.pinkAccent[100]),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.pinkAccent[100])),
        suffixIcon: IconButton(
          onPressed: () => print('search ${_controller.text}'),
          icon: Icon(Icons.location_pin),
        ),
      ),
    );
  }
}
