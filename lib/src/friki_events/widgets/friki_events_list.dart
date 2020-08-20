import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class EventListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xffF6F6F6)),
      child: ListView.separated(
        itemCount: 5,
        itemBuilder: (context, index) {
          return EventItem();
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}

class EventItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 26),
            child: Image(
              image: AssetImage('assets/images/test.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17.0, top: 29.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Feria Friki Extreme',
                  style: TextStyle(color: Color(0xff00A6A5)),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '12/04/2020',
                ),
                SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: AutoSizeText(
                    'Encuentranos domingo 19 de abril en Parque Brasil, La Granja al lado del Museo MIM',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
