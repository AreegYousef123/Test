import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled6/CustomWidget/Custome.dart';
import 'package:untitled6/Provider/NewsProvider.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<NewsProvider>(
        builder: (BuildContext context, provider, child) {
          final obj = provider.model;

          if (obj == null) {
            provider.FechDta();
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.separated(
              itemCount: obj.dta.length,
              itemBuilder: (context, index) {
                final All = obj.dta;
                return Custom(
                  title: All[index]["Title"],
                  description: All[index]["Description"],
                  image: All[index]["Image"],
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 20),
            );
          }
        },
      ),
    );
  }
}

