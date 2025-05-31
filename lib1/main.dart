import 'package:flutter/material.dart';

void main() => runApp(const InstagramHomeClone());

class InstagramHomeClone extends StatelessWidget {
  const InstagramHomeClone({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'Instagram',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Billabong',
            fontSize: 32,
          ),
        ),
        actions: const [
          Icon(Icons.favorite_border, color: Colors.white),
          SizedBox(width: 16),
          Icon(Icons.chat_bubble_outline, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Stories
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  StoryBubble(username: 'Your story', imagePath: 'assets/insta_profile.jpg'),
                  StoryBubble(username: 'karnataka', imagePath: 'assets/Hampi.jpg'),
                  StoryBubble(username: 'the.samtron', imagePath: 'assets/post1.webp'),
                  StoryBubble(username: 'Anushka', imagePath: 'assets/anushka.jpg'),
                  StoryBubble(username: 'Virat_Kohli', imagePath: 'assets/virat-kohli.jpeg'),
                  StoryBubble(username: 'ananya_22', imagePath: 'assets/virushka.jpg'),
                ],
              ),
            ),
            const Divider(color: Colors.white24),

            // Posts
            const PostWidget(
              username: 'rrjtt_01',
              userImage: 'assets/rajatpatidar.webp',
              postImage: 'assets/post1.webp',
              likes: '923K',
              comments: '3,662',
              shares: '2,198',
              caption: 'Memorable day in my life with my idol',
              timeAgo: '16 hours ago',
            ),
            const PostWidget(
              username: 'Virat_Kohli',
              userImage: 'assets/virat-kohli.jpeg',
              postImage: 'assets/virushka.jpg',
              likes: '10M',
              comments: '1.1M',
              shares: '899K',
              caption: 'My Love',
              timeAgo: '10 hours ago',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.video_library_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
        ],
      ),
    );
  }
}

class StoryBubble extends StatelessWidget {
  final String username;
  final String imagePath;

  const StoryBubble({
    required this.username,
    required this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage(imagePath),
          ),
          const SizedBox(height: 5),
          Text(
            username,
            style: const TextStyle(color: Colors.white, fontSize: 12),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  final String username;
  final String userImage;
  final String postImage;
  final String likes;
  final String comments;
  final String shares;
  final String caption;
  final String timeAgo;

  const PostWidget({
    required this.username,
    required this.userImage,
    required this.postImage,
    required this.likes,
    required this.comments,
    required this.shares,
    required this.caption,
    required this.timeAgo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(userImage),
          ),
          title: Text(username, style: const TextStyle(color: Colors.white)),
          trailing: const Icon(Icons.more_vert, color: Colors.white),
        ),
        Image.asset(postImage, fit: BoxFit.cover),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: const [
              Icon(Icons.favorite_border, color: Colors.white),
              SizedBox(width: 10),
              Icon(Icons.chat_bubble_outline, color: Colors.white),
              SizedBox(width: 10),
              Icon(Icons.send, color: Colors.white),
              Spacer(),
              Icon(Icons.bookmark_border, color: Colors.white),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text('$likes likes', style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(text: '$username ', style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: caption),
              ],
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(timeAgo, style: const TextStyle(color: Colors.white54, fontSize: 12)),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
