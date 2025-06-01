import 'package:flutter/material.dart';

class LastTripSummaryWidget extends StatelessWidget {
  const LastTripSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.sailing, color: Colors.blue),
                SizedBox(width: 8),
                Text(
                  'Last Trip Summary',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Text('Catch:'),
                const SizedBox(width: 8),
                Chip(
                  label: const Text('Logged'),
                  backgroundColor: Colors.green.shade100,
                  labelStyle: const TextStyle(color: Colors.green),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text('Eco-Score: 🌿 8.5/10', style: TextStyle(color: Colors.green)),
            const SizedBox(height: 8),
            const Text('Points Earned: 🟣 +10', style: TextStyle(color: Colors.purple)),
            const SizedBox(height: 8),
            const Text('Notes: Used recommended net size ✅'),
          ],
        ),
      ),
    );
  }
}
