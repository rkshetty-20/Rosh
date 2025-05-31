import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Main3Screen(),
  ));
}

class Main3Screen extends StatelessWidget {
  const Main3Screen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildProfileInfo(),
            _buildBioSection(),
            _buildProfileButtons(),
            _buildHighlights(),
            const Divider(color: Colors.white24),
            _buildPostGrid(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(
        children: const [
          Icon(Icons.lock, color: Colors.white, size: 16),
          SizedBox(width: 5),
          Text("jeevan_g1_bm", style: TextStyle(color: Colors.white)),
          Icon(Icons.keyboard_arrow_down, color: Colors.white),
        ],
      ),
      actions: const [
        Icon(Icons.qr_code, color: Colors.white),
        SizedBox(width: 16),
        Icon(Icons.add_box_outlined, color: Colors.white),
        SizedBox(width: 16),
        Icon(Icons.menu, color: Colors.white),
        SizedBox(width: 10),
      ],
    );
  }

  Widget _buildProfileInfo() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/insta_profile.jpg'),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                _StatColumn("2", "Posts"),
                _StatColumn("171", "Followers"),
                _StatColumn("277", "Following"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBioSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Veerabhadraiah BM", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          SizedBox(height: 4),
          Text("❤️💛", style: TextStyle(fontSize: 16)),
          Text("☮️", style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }

  Widget _buildProfileButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          Expanded(child: _button("Edit profile")),
          const SizedBox(width: 8),
          Expanded(child: _button("Share profile")),
          const SizedBox(width: 8),
          Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white38),
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Icon(Icons.person_add, color: Colors.white, size: 18),
          ),
        ],
      ),
    );
  }

  Widget _button(String text) {
    return Container(
      height: 32,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white38),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(text, style: const TextStyle(color: Colors.white, fontSize: 13)),
      ),
    );
  }

  Widget _buildHighlights() {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: const [
          _StoryCircle(label: "New", asset: 'assets/story1.jpg'),
          _StoryCircle(label: "Highlights", asset: 'assets/story1.jpg'),
          _StoryCircle(label: "❤️❤️", asset: 'assets/sjbit.jpeg'),
        ],
      ),
    );
  }

  Widget _buildPostGrid() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 6,
        mainAxisSpacing: 6,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: List.generate(6, (index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(
              index % 2 == 0 ? 'assets/bnglr.jpg' : 'assets/frnds.jpg',
              fit: BoxFit.cover,
            ),
          );
        }),
      ),
    );
  }

  BottomNavigationBar _buildBottomNav() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.add_box), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.video_collection), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ],
    );
  }
}

class _StatColumn extends StatelessWidget {
  final String number;
  final String label;

  const _StatColumn(this.number, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(number, style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
        Text(label, style: const TextStyle(color: Colors.white60)),
      ],
    );
  }
}

class _StoryCircle extends StatelessWidget {
  final String label;
  final String asset;

  const _StoryCircle({required this.label, required this.asset});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        children: [
          CircleAvatar(radius: 30, backgroundImage: AssetImage(asset)),
          const SizedBox(height: 4),
          Text(label, style: const TextStyle(color: Colors.white, fontSize: 12)),
        ],
      ),
    );
  }
}
 