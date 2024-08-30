import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UIControlsView(),
    );
  }
}

class _UIControlsView extends StatefulWidget {
  const _UIControlsView();

  @override
  State<_UIControlsView> createState() => _UIControlsViewState();
}

enum _Transportation { car, bike, bus, train }

class _UIControlsViewState extends State<_UIControlsView> {
  bool _switchValue = false;
  _Transportation _selectedTransportation = _Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Switch'),
          subtitle: const Text('Switch on/off'),
          value: _switchValue,
          onChanged: (value) => setState(() {
            _switchValue = !_switchValue;
          }),
        ),
        ExpansionTile(
          title: const Text('Method of transportation'),
          subtitle: Text('Selected: $_selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('Car'),
              subtitle: const Text('transportation with car'),
              value: _Transportation.car,
              groupValue: _selectedTransportation,
              onChanged: (value) => setState(() {
                _selectedTransportation = _Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text('Bike'),
              subtitle: const Text('transportation with bike'),
              value: _Transportation.bike,
              groupValue: _selectedTransportation,
              onChanged: (value) => setState(() {
                _selectedTransportation = _Transportation.bike;
              }),
            ),
            RadioListTile(
              title: const Text('Bus'),
              subtitle: const Text('transportation with bus'),
              value: _Transportation.bus,
              groupValue: _selectedTransportation,
              onChanged: (value) => setState(() {
                _selectedTransportation = _Transportation.bus;
              }),
            ),
            RadioListTile(
              title: const Text('train'),
              subtitle: const Text('transportation with trains'),
              value: _Transportation.train,
              groupValue: _selectedTransportation,
              onChanged: (value) => setState(() {
                _selectedTransportation = _Transportation.train;
              }),
            ),
          ],
        ),
      ],
    );
  }
}
