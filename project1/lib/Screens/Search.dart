import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String query = ''; // Stores the current search query
  List<String> allMedicines = [
    'Paracetamol',
    'Ibuprofen',
    'Amoxicillin',
    'Aspirin',
    'Cough Syrup',
    'Vitamin C',
  ]; // Placeholder list of medicines
  List<String> filteredMedicines = []; // Stores the filtered results

  @override
  void initState() {
    super.initState();
    filteredMedicines = allMedicines; // Initially display all medicines
  }

  void updateSearch(String input) {
    setState(() {
      query = input;
      filteredMedicines = allMedicines
          .where((medicine) =>
          medicine.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: updateSearch,
          decoration: InputDecoration(
            hintText: 'Search for a medicine...',
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
          ),
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              setState(() {
                query = '';
                filteredMedicines = allMedicines;
              });
            },
          ),
        ],
      ),
      body: query.isEmpty
          ? Center(
        child: Text(
          'Start typing to search for medicines!',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      )
          : filteredMedicines.isEmpty
          ? Center(
        child: Text(
          'No results found for "$query".',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      )
          : ListView.builder(
        itemCount: filteredMedicines.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              title: Text(
                filteredMedicines[index],
                style: TextStyle(fontSize: 18),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.location_on, color: Colors.teal),
                    onPressed: () {
                      // Locate Medicine Action
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                              'Locate ${filteredMedicines[index]}'),
                        ),
                      );
                    },
                  ),
                  IconButton(
                    icon:
                    Icon(Icons.favorite_border, color: Colors.red),
                    onPressed: () {
                      // Add to Favorites Action
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                              '${filteredMedicines[index]} added to Favorites'),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
