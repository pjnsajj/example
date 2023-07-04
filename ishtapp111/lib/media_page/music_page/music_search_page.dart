import 'package:flutter/material.dart';


class MusicSearchScreen extends StatefulWidget {
  const MusicSearchScreen({super.key});

  @override
  State<MusicSearchScreen> createState() => _MusicSearchScreenState();
}

class _MusicSearchScreenState extends State<MusicSearchScreen> {
  final SearchController controller = SearchController();

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(),
        body: Column(
          children: <Widget>[

            SearchAnchor(
                searchController: controller,
                builder: (BuildContext context, SearchController controller) {
                  return IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      controller.openView();
                    },
                  );
                },
                suggestionsBuilder:
                    (BuildContext context, SearchController controller) {
                  return List<ListTile>.generate(5, (int index) {
                    final String item = 'item $index';
                    return ListTile(
                      title: Text(item),
                      onTap: () {
                        setState(() {
                          controller.closeView(item);
                        });
                      },
                    );
                  });
                }),
            Center(
              child: controller.text.isEmpty
                  ? const Text('No item selected')
                  : Text('Selected item: ${controller.value.text}'),
            ),
          ],
        ),
      );
  }
}
