import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://img.thedailybeast.com/image/upload/dpr_2.0/c_crop,h_997,w_997,x_1546,y_194/c_limit,w_128/d_placeholder_euli9k,fl_lossy,q_auto/v1518043118/180107-stern-michael-bay-megan-fox-hero_gifann'),
          ),
        ),
        title: const Text('Mi amor'),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
              return Text('Indice $index');
            },)),
            Text('Mundo'),
          ],
        ),
      ),
    );
  }
}
