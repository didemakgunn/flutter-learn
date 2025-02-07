import 'package:flutter/material.dart';

class ScreenDemo extends StatelessWidget {
  const ScreenDemo({super.key});

  final String _titleWelcome = 'Hi Didem,';
  final String _subtitleHelp = 'How can I help you today?';

  final List<_FeatureCardData> _features = const [
    _FeatureCardData(
        icon: Icons.scanner,
        title: 'Scan',
        description: 'Documents, ID cards...'),
    _FeatureCardData(
        icon: Icons.edit,
        title: 'Edit',
        description: 'Sign, add text, mark...'),
    _FeatureCardData(
        icon: Icons.picture_as_pdf,
        title: 'Convert',
        description: 'PDF, DOCX, JPG, TX...'),
    _FeatureCardData(
        icon: Icons.lightbulb,
        title: 'Ask AI',
        description: 'Summarize, finish wri...'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.help_outline, color: Colors.black),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.notifications_outlined, color: Colors.black),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Text(_titleWelcome,
                style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(height: 5),
            Text(_subtitleHelp, style: Theme.of(context).textTheme.titleMedium),
            SizedBox(height: 20),
            _buildFeatureCards(),
            SizedBox(height: 26),
            _SearchField(),
          ],
        ),
      ),
      bottomNavigationBar: _BottomNavigationBar(),
    );
  }

  Widget _buildFeatureCards() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: _FeatureCard(data: _features[0])),
            SizedBox(width: 16),
            Expanded(child: _FeatureCard(data: _features[1])),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(child: _FeatureCard(data: _features[2])),
            SizedBox(width: 16),
            Expanded(child: _FeatureCard(data: _features[3])),
          ],
        ),
      ],
    );
  }
}

class _FeatureCardData {
  const _FeatureCardData(
      {required this.icon, required this.title, required this.description});
  final IconData icon;
  final String title;
  final String description;
}

class _FeatureCard extends StatelessWidget {
  const _FeatureCard({required this.data});
  final _FeatureCardData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(2, 2),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(data.icon, size: 32, color: Colors.grey.shade400),
          SizedBox(height: 8),
          Text(
            data.title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(data.description,
              style: TextStyle(fontSize: 14, color: Colors.grey)),
        ],
      ),
    );
  }
}

class _SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        prefixIcon: Icon(Icons.search),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Colors.grey.shade600,
          ),
        ),
      ),
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  const _BottomNavigationBar();

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        children: [
          Container(
            decoration:
                BoxDecoration(color: Colors.black, shape: BoxShape.circle),
            child: IconButton(
              icon: Icon(
                Icons.edit_square,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
          Container(
            decoration:
                BoxDecoration(color: Colors.black, shape: BoxShape.circle),
            child: IconButton(
              icon: Icon(Icons.person, color: Colors.white),
              onPressed: () {},
            ),
          ),
          Spacer(),
          Container(
            decoration:
                BoxDecoration(color: Colors.black, shape: BoxShape.circle),
            child: IconButton(
              icon: Icon(Icons.add, color: Colors.white),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
