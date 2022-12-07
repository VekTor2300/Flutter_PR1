import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/counter_controller.dart';
import '../utilis/reusable_card.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Obx(() => Text(
                  c.count.toString(),
                  style: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold),
                )),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: (() => c.increment()),
                    child: const Icon(
                      Icons.add,
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  FloatingActionButton(
                    onPressed: (() => c.decrement()),
                    child: const Icon(
                      Icons.remove,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  reverse: true,
                  itemCount: c.history.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(
                      c.history[index],
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('lalala'),
                  ),
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: (() {
                c.history.add(
                    'Тема сменена на ${Get.isDarkMode ? 'Светлую' : 'Темную'}');
                Get.changeTheme(
                    Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
              }),
              child: const Icon(Icons.sunny),
            ),
          ],
        ),
      ),
    );
  }
}
