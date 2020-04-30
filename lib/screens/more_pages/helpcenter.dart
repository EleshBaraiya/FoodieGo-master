import 'package:flutter/material.dart';

class HelpcenterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff1e6b68),
          title: Text('Helpcentrum'),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) =>
              EntryItem(data[index]),
          itemCount: data.length,
        ),
      ),
    );
  }
}

// One entry in the multilevel list displayed by this app.
class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
}

// The entire multilevel list displayed by this app.
final List<Entry> data = <Entry>[
  Entry(
    'Over FoodieGo',
    <Entry>[
      Entry(
        'Wat is FoodieGo?',
        <Entry>[
          Entry(
              'FoodieGo is een initiatief van meerdere Foodie\'s die gezond eten toegankelijk willen maken voor iedereen! Bestaande websites bieden mogelijkheden om food af te halen, maar échte gezonde en continu variërende maaltijden zijn nergens verkrijgbaar. FoodieGo zorgt voor gezonde maaltijden in jouw buurt. Samen maken we iedereen gezonder!'),
        ],
      ),
      Entry(
        'Hoe werkt het?',
        <Entry>[
          Entry(
              'Je kiest je stad en vervolgens een Healthy Chef. De chef\'s hebben een vast FoodieGo menu, de originals maar ook eigen FoodieGo gerechten, de chef specials. Je kan kiezen wat waar je zin in hebt en uiteraard is alles gezond. Ben je specifiek op zoek naar bijvoorbeeld veganistische gerechten of liever koolhydraatarm? Dit kun je bij de keuzes van het gerecht aangeven.'),
        ],
      ),
      Entry(
        'Ook Healthy Chef worden?',
        <Entry>[
          Entry(
              'Ben je opzoek naar een extra inkomen of ben je toe aan een nieuwe uitdaging? Heb je affiniteit met gezonde voeding, vind je het leuk om te koken én wil je samen met ons zorgen voor een gezondere samenleving? Dan zijn we opzoek naar jou! Voor meer informatie kun je de veel gestelde vragen voor healthy chefs bekijken. Jezelf aanmelden kan door op de button \'word healthy chef\' te klikken.'),
        ],
      ),
    ],
  ),
  Entry(
    'Bestellen',
    <Entry>[
      Entry(
        'Wat is FoodieGo?',
        <Entry>[
          Entry(
              'FoodieGo is een initiatief van meerdere Foodie\'s die gezond eten toegankelijk willen maken voor iedereen! Bestaande websites bieden mogelijkheden om food af te halen, maar échte gezonde en continu variërende maaltijden zijn nergens verkrijgbaar. FoodieGo zorgt voor gezonde maaltijden in jouw buurt. Samen maken we iedereen gezonder!'),
        ],
      ),
      Entry(
        'Hoe werkt het?',
        <Entry>[
          Entry(
              'Je kiest je stad en vervolgens een Healthy Chef. De chef\'s hebben een vast FoodieGo menu, de originals maar ook eigen FoodieGo gerechten, de chef specials. Je kan kiezen wat waar je zin in hebt en uiteraard is alles gezond. Ben je specifiek op zoek naar bijvoorbeeld veganistische gerechten of liever koolhydraatarm? Dit kun je bij de keuzes van het gerecht aangeven.'),
        ],
      ),
      Entry(
        'Ook Healthy Chef worden?',
        <Entry>[
          Entry(
              'Ben je opzoek naar een extra inkomen of ben je toe aan een nieuwe uitdaging? Heb je affiniteit met gezonde voeding, vind je het leuk om te koken én wil je samen met ons zorgen voor een gezondere samenleving? Dan zijn we opzoek naar jou! Voor meer informatie kun je de veel gestelde vragen voor healthy chefs bekijken. Jezelf aanmelden kan door op de button \'word healthy chef\' te klikken.'),
        ],
      ),
    ],
  ),
  Entry(
    'Betalen',
    <Entry>[
      Entry(
        'Wat is FoodieGo?',
        <Entry>[
          Entry(
              'FoodieGo is een initiatief van meerdere Foodie\'s die gezond eten toegankelijk willen maken voor iedereen! Bestaande websites bieden mogelijkheden om food af te halen, maar échte gezonde en continu variërende maaltijden zijn nergens verkrijgbaar. FoodieGo zorgt voor gezonde maaltijden in jouw buurt. Samen maken we iedereen gezonder!'),
        ],
      ),
      Entry(
        'Hoe werkt het?',
        <Entry>[
          Entry(
              'Je kiest je stad en vervolgens een Healthy Chef. De chef\'s hebben een vast FoodieGo menu, de originals maar ook eigen FoodieGo gerechten, de chef specials. Je kan kiezen wat waar je zin in hebt en uiteraard is alles gezond. Ben je specifiek op zoek naar bijvoorbeeld veganistische gerechten of liever koolhydraatarm? Dit kun je bij de keuzes van het gerecht aangeven.'),
        ],
      ),
      Entry(
        'Ook Healthy Chef worden?',
        <Entry>[
          Entry(
              'Ben je opzoek naar een extra inkomen of ben je toe aan een nieuwe uitdaging? Heb je affiniteit met gezonde voeding, vind je het leuk om te koken én wil je samen met ons zorgen voor een gezondere samenleving? Dan zijn we opzoek naar jou! Voor meer informatie kun je de veel gestelde vragen voor healthy chefs bekijken. Jezelf aanmelden kan door op de button \'word healthy chef\' te klikken.'),
        ],
      ),
    ],
  ),
  Entry(
    'Mijn Profiel',
    <Entry>[
      Entry(
        'Wat is FoodieGo?',
        <Entry>[
          Entry(
              'FoodieGo is een initiatief van meerdere Foodie\'s die gezond eten toegankelijk willen maken voor iedereen! Bestaande websites bieden mogelijkheden om food af te halen, maar échte gezonde en continu variërende maaltijden zijn nergens verkrijgbaar. FoodieGo zorgt voor gezonde maaltijden in jouw buurt. Samen maken we iedereen gezonder!'),
        ],
      ),
      Entry(
        'Hoe werkt het?',
        <Entry>[
          Entry(
              'Je kiest je stad en vervolgens een Healthy Chef. De chef\'s hebben een vast FoodieGo menu, de originals maar ook eigen FoodieGo gerechten, de chef specials. Je kan kiezen wat waar je zin in hebt en uiteraard is alles gezond. Ben je specifiek op zoek naar bijvoorbeeld veganistische gerechten of liever koolhydraatarm? Dit kun je bij de keuzes van het gerecht aangeven.'),
        ],
      ),
      Entry(
        'Ook Healthy Chef worden?',
        <Entry>[
          Entry(
              'Ben je opzoek naar een extra inkomen of ben je toe aan een nieuwe uitdaging? Heb je affiniteit met gezonde voeding, vind je het leuk om te koken én wil je samen met ons zorgen voor een gezondere samenleving? Dan zijn we opzoek naar jou! Voor meer informatie kun je de veel gestelde vragen voor healthy chefs bekijken. Jezelf aanmelden kan door op de button \'word healthy chef\' te klikken.'),
        ],
      ),
    ],
  ),
  Entry(
    'Afhalen',
    <Entry>[
      Entry(
        'Wat is FoodieGo?',
        <Entry>[
          Entry(
              'FoodieGo is een initiatief van meerdere Foodie\'s die gezond eten toegankelijk willen maken voor iedereen! Bestaande websites bieden mogelijkheden om food af te halen, maar échte gezonde en continu variërende maaltijden zijn nergens verkrijgbaar. FoodieGo zorgt voor gezonde maaltijden in jouw buurt. Samen maken we iedereen gezonder!'),
        ],
      ),
      Entry(
        'Hoe werkt het?',
        <Entry>[
          Entry(
              'Je kiest je stad en vervolgens een Healthy Chef. De chef\'s hebben een vast FoodieGo menu, de originals maar ook eigen FoodieGo gerechten, de chef specials. Je kan kiezen wat waar je zin in hebt en uiteraard is alles gezond. Ben je specifiek op zoek naar bijvoorbeeld veganistische gerechten of liever koolhydraatarm? Dit kun je bij de keuzes van het gerecht aangeven.'),
        ],
      ),
      Entry(
        'Ook Healthy Chef worden?',
        <Entry>[
          Entry(
              'Ben je opzoek naar een extra inkomen of ben je toe aan een nieuwe uitdaging? Heb je affiniteit met gezonde voeding, vind je het leuk om te koken én wil je samen met ons zorgen voor een gezondere samenleving? Dan zijn we opzoek naar jou! Voor meer informatie kun je de veel gestelde vragen voor healthy chefs bekijken. Jezelf aanmelden kan door op de button \'word healthy chef\' te klikken.'),
        ],
      ),
    ],
  ),
  Entry(
    'Kwaliteit',
    <Entry>[
      Entry(
        'Wat is FoodieGo?',
        <Entry>[
          Entry(
              'FoodieGo is een initiatief van meerdere Foodie\'s die gezond eten toegankelijk willen maken voor iedereen! Bestaande websites bieden mogelijkheden om food af te halen, maar échte gezonde en continu variërende maaltijden zijn nergens verkrijgbaar. FoodieGo zorgt voor gezonde maaltijden in jouw buurt. Samen maken we iedereen gezonder!'),
        ],
      ),
      Entry(
        'Hoe werkt het?',
        <Entry>[
          Entry(
              'Je kiest je stad en vervolgens een Healthy Chef. De chef\'s hebben een vast FoodieGo menu, de originals maar ook eigen FoodieGo gerechten, de chef specials. Je kan kiezen wat waar je zin in hebt en uiteraard is alles gezond. Ben je specifiek op zoek naar bijvoorbeeld veganistische gerechten of liever koolhydraatarm? Dit kun je bij de keuzes van het gerecht aangeven.'),
        ],
      ),
      Entry(
        'Ook Healthy Chef worden?',
        <Entry>[
          Entry(
              'Ben je opzoek naar een extra inkomen of ben je toe aan een nieuwe uitdaging? Heb je affiniteit met gezonde voeding, vind je het leuk om te koken én wil je samen met ons zorgen voor een gezondere samenleving? Dan zijn we opzoek naar jou! Voor meer informatie kun je de veel gestelde vragen voor healthy chefs bekijken. Jezelf aanmelden kan door op de button \'word healthy chef\' te klikken.'),
        ],
      ),
    ],
  ),
];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(
        root.title,
        style: TextStyle(fontSize: 20.0),
      ),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}

void main() {
  runApp(HelpcenterPage());
}
