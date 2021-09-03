import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_poc_example/main_page_view_model.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProviderPocExample'),
      ),
      body: ChangeNotifierProvider(
        create: (context) => MainPageViewModel(),
        child: Consumer<MainPageViewModel>(
          builder: (context,_store, child) =>
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 40),
              Text(_store.observableText ?? ''),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  onChanged: (text) => _store.onTextChanged(text),
                ),
              ),
              SizedBox(height: 40),
              Container(height: 50, width: 50, color: _store.color),
              SizedBox(height: 40)
            ],
          ),
        ),
      ),
    );
  }
}
