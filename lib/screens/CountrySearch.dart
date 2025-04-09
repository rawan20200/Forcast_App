import 'package:cloud_app/Get/GetSearch.dart';
import 'package:cloud_app/customs/Custom_textfield.dart';
import 'package:cloud_app/screens/weather_Map.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountrySearch extends StatelessWidget {
  CountrySearch({super.key});
  final Getsearch getsearch = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF484B5B),
      body: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(
              controller: getsearch.textEditingController,
              OnSubmit: () {
                getsearch.OnSubmit();
                Get.to(WeatherMap());
              },
              cleartextfield: getsearch.cleartextfield,
            ),
          ),
          Obx(
            () =>
                getsearch.noSearch == false
                    ? Expanded(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 50),
                            Text(
                              "No country weather",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              " has been searched yet",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Image.asset(
                              'assets/search.png',
                              width: 50,
                              height: 40,
                            ),
                          ],
                        ),
                      ),
                    )
                    : Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        children: [
                          Text(
                            'Recent Search :',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
          ),
          Flexible(
            child: Obx(
              () => ListView.builder(
                itemCount: getsearch.SearchHistory.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Row(
                      children: [
                        Text(
                          getsearch.SearchHistory[index],
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            getsearch.clearSearchHistory(index);
                          },
                          icon: Icon(Icons.clear, color: Colors.black),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
