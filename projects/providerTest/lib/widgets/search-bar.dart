import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/api-provider.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ApiProvider>(context, listen: false);
    TextEditingController _controller = TextEditingController();

    return TextField(
      controller: _controller,
      onChanged: (value) {
        provider.setInputCountry = value;
        provider.setIsSearching = true;
        provider.setFilteredCountries = provider.getCountries;
      },
      decoration: InputDecoration(
        labelText: 'Search country',
        labelStyle: TextStyle(color: Colors.pinkAccent[100]),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.pinkAccent[100])),
        suffixIcon: IconButton(
          onPressed: () => provider.setIsSearching = false,
          icon: Icon(Icons.location_pin),
        ),
      ),
    );
  }
}
