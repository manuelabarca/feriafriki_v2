import 'package:feria_friki/src/friki_events/widgets/friki_events_list.dart';
import 'package:feria_friki/src/shared/widgets/custom_appbar_toggle.dart';
import 'package:feria_friki/src/shared/widgets/custom_tab.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class EventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomTab(),
      appBar: CustomAppbarToggle(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text('Eventos',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0)),
        ),
        trailing: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ToggleSwitch(
              minWidth: 80.0,
              initialLabelIndex: 0,
              cornerRadius: 20.0,
              activeFgColor: Colors.pink,
              inactiveBgColor: Color(0xffF07CB8),
              inactiveFgColor: Colors.white,
              labels: ['Futuros', 'Previos'],
              activeBgColors: [Colors.white, Colors.white],
              onToggle: (index) {
                print('switched to: $index');
              },
            ),
          ),
        ],
      ),
      body: EventListPage(),
    );
  }
}
