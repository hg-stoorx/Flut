import 'package:flutter/material.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        searchBar(),
        SizedBox(
          height: 20,
        ),
        Text(
          "Category",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        )
      ]),
    );
  }

  Container searchBar() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.black12.withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0)
      ]),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none),
            contentPadding: const EdgeInsets.all(12),
            hintText: 'Search...',
            prefixIcon: const Icon(
              FeatherIcons.search,
              color: Colors.black45,
            ),
            suffixIcon: Container(
              width: 100,
              child: const IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    VerticalDivider(
                      color: Colors.black54,
                      thickness: 0.1,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(
                        FeatherIcons.filter,
                        color: Colors.black45,
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'Breakfast',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w700, fontSize: 16),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: IconButton(
          icon: const Icon(FeatherIcons.chevronLeft), onPressed: () {}),
      actions: [
        Container(
            margin: const EdgeInsets.only(right: 10),
            child: IconButton(
                icon: const Icon(FeatherIcons.menu), onPressed: () {}))
      ],
    );
  }
}
