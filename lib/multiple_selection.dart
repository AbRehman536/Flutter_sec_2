import 'package:flutter/material.dart';

class MultipleSelectionDemo extends StatefulWidget {
  const MultipleSelectionDemo({super.key});

  @override
  State<MultipleSelectionDemo> createState() => _MultipleSelectionDemoState();
}

class _MultipleSelectionDemoState extends State<MultipleSelectionDemo> {
  List<int> selectedIndex = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multiple Selection"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, i){
          return ListTile(
            onTap: (){
              if(selectedIndex.contains(i)){
                selectedIndex.remove(i);
              }else{
                selectedIndex.add(i);
              }
              setState(() {});
            },
            tileColor: selectedIndex.contains(i) ? Colors.blue : Colors.white70,
            leading: Icon(Icons.import_contacts),
            title: Text("Multi Selection, $selectedIndex"),
            subtitle: Text("Index , $i"),
            trailing: Icon(selectedIndex.contains(i) ? Icons.arrow_drop_down : Icons.arrow_forward_ios),
          );
        }
      ),
    );
  }
}
