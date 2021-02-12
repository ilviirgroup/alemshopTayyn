import 'package:alemshop/models/cart.dart';
import 'package:alemshop/models/filter.dart';
import 'package:alemshop/screens/home_screen.dart';
import 'package:alemshop/screens/welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(AlemShop());
}

class AlemShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Firebase.initializeApp();
// Disable persistence on web platforms

    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Filters(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        color: Colors.black,
        initialRoute: '/',
        routes: {
          '/': (context) => WelcomeScreen(),
          'welcome': (context) => HomeScreen()
        },
      ),
    );
  }
}
