import 'package:feria_friki/src/friki_events/widgets/friki_event_item.dart';
import 'package:flutter/material.dart';

class EventListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: ListView.separated(itemCount: 10, itemBuilder: (context, index) {
        return FrikiEventItem();
      },

      separatorBuilder: (context, index) => Divider(),),
    ); //TODO Lista de eventos desde firebase.
  }
}
