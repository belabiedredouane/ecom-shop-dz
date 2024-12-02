import 'package:flutter/material.dart';

import '../../constants.dart';
import '../init_screen.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My orders",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Column(
                children: [
                  
                  const SizedBox(height: 50),
                  const Text(
                    "You haven't submitted your order yet !",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, InitScreen.routeName);
                      },
                      child: const Text("Start shopping"),
                    ),
                  ),
                ],
              ),
            SizedBox(height: MediaQuery.sizeOf(context).height/30,),
          ],
        ),
      ),
    );
  }
}