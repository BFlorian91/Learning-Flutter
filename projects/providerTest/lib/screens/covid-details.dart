import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerTest/providers/api-provider.dart';
import 'package:providerTest/screens/datas-screens.dart';

import '../models/covid.dart';
import '../utils/commons.dart';

class CovidDetails extends StatefulWidget {
  @override
  _CovidDetailsState createState() => _CovidDetailsState();
}

class _CovidDetailsState extends State<CovidDetails> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ApiProvider>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<Covid>(
          future: provider.fetchDatas(),
          builder: (BuildContext context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Text('Connecting...');
              case ConnectionState.active:
                return Container();
              case ConnectionState.waiting:
                return Commons.customLoading(context, 'Loading');
              case ConnectionState.done:
                if (snapshot.hasError) {
                  return Commons.customError(context, snapshot.error);
                }
                provider.setGlobal = snapshot.data.global;
                provider.setCountries = snapshot.data.countries;
                return DatasScreen();
            }
            return Commons.customLoading(context);
          },
        ),
      ),
    );
  }
}
