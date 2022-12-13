import 'package:flutter/material.dart';
import 'package:pr5/cubit/theme_cubit.dart';
import 'package:pr5/screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

Brightness brightness = Brightness.light;
Icon? icon;
TextEditingController textController = TextEditingController();
bool brightnessBool = true;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          if (state is UpdateTheme) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: MyHomePage(),
              theme: ThemeData(brightness: state.brightness),
            );
          }
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: MyHomePage(),
            theme: ThemeData(brightness: brightness),
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  SharedPreferences? sharedPreferences;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  Future<void> initShared() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    super.initState();
    initShared().then((value) {
      setState(() {
        if (sharedPreferences!.getString('text') != null) {
          getBrigthnessFromSharedPreferences();
          getTextFromSharedPreferences();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ScreenPage(
                text: textController.text,
                brightness: brightness,
              ),
            ),
          );
        }
      });
    });
  }

  void setTextToSharedPreferences() async {
    await sharedPreferences!.setString('text', textController.text);
  }

  void setBrigthnessToSharedPreferences() async {
    brightnessBool = brightness == Brightness.light ? true : false;
    await sharedPreferences!.setBool('brightness', brightnessBool);
  }

  void getTextFromSharedPreferences() async {
    textController.text = sharedPreferences!.getString('text') ?? 'Пусто';
  }

  void getBrigthnessFromSharedPreferences() async {
    brightness = brightnessBool == sharedPreferences!.getBool('brightness')
        ? Brightness.light
        : Brightness.dark;
  }

  GlobalKey<FormState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    icon = brightness == Brightness.light
        ? Icon(Icons.dark_mode)
        : Icon(Icons.light_mode);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Form(
              key: key,
              child: TextFormField(
                textAlign: TextAlign.center,
                controller: textController,
                validator: ((value) {
                  if (value == null || value.isEmpty) {
                    return "Текст не должен быть пустым";
                  }
                  return null;
                }),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Текст",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (!key.currentState!.validate()) return;
                setTextToSharedPreferences();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScreenPage(
                      text: textController.text,
                      brightness: brightness,
                    ),
                  ),
                );
              },
              child: const Text("Перейти"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (brightness == Brightness.dark) {
            brightness = Brightness.light;
            icon = Icon(Icons.dark_mode);
          } else {
            brightness = Brightness.dark;
            icon = Icon(Icons.light_mode);
          }
          context.read<ThemeCubit>().setBrigthness(brightness);
          setBrigthnessToSharedPreferences();
        },
        tooltip: 'Изменить тему',
        child: icon,
      ),
    );
  }
}
