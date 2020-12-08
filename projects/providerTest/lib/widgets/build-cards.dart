import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/covid.dart';
import '../providers/api-provider.dart';
import '../widgets/global-card.dart';
import '../widgets/country-card.dart';

class BuildCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ApiProvider>(context, listen: true);
    final GlobalStats global = provider.getGlobal;
    final List<Countries> countries = provider.getCountries;
    final List<Countries> filteredCountries = provider.getFilteredCountries;
    final bool isSearching = provider.getIsSearching ?? false;

    return Container(
      child: Expanded(
        child: CustomScrollView(
          slivers: [
            SliverList(delegate: SliverChildListDelegate([GlobalCard(global)])),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) => CountryCard(isSearching
                        ? filteredCountries[index]
                        : countries[index]),
                    childCount: isSearching
                        ? filteredCountries.length
                        : countries.length))
          ],
        ),
      ),
    );
  }
}
