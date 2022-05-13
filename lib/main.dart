import 'package:chattter_app/app.dart';
import 'package:chattter_app/screens/home_screen.dart';
import 'package:chattter_app/screens/select_user_screen.dart';
import 'package:chattter_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';
// import 'screens/screens.dart';

void main() {
  final client = StreamChatClient(streamKey);
  runApp(MyApp(
    client: client,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.client,
  }) : super(key: key);

  final StreamChatClient client;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.dark,
      title: 'Chatter',
      builder: (context, child) {
        return StreamChatCore(
          client: client,
          child: child!,
        );
      },
      home: SelectUserScreen(),
    );
  }
}
