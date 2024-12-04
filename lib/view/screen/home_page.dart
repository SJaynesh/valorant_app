import 'package:flutter/material.dart';
import 'package:valorant_app/helper/api_helper.dart';
import 'package:valorant_app/models/agets_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Valorant Agents"),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: APIHelper.apiHelper.fetchValorantAgents(),
        builder: (context, snapShot) {
          if (snapShot.hasError) {
            return Center(
              child: Text("ERROR : ${snapShot.error}"),
            );
          } else if (snapShot.hasData) {
            List<AgentsModel> agents = snapShot.data ?? [];
            return GridView.builder(
              itemCount: agents.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                childAspectRatio: 0.85,
                crossAxisSpacing: 5,
              ),
              itemBuilder: (context, index) => Container(
                color: Colors.grey,
                child: Column(
                  children: [
                    Image.network(
                      agents[index].bustPortrait ??
                          "https://img.icons8.com/color/512/valorant.png",
                    ),
                    Text(agents[index].displayName),
                  ],
                ),
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
