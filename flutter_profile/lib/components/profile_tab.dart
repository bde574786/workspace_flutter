import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTab();
}

class _ProfileTab extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  // 상태가 있는 위젯은 상태 값들을 보존하고 추적할 수 있다.
  TabController? _tabController;

  // 클래스를 메모리에 올리면서 초기화 될 때 호출되는 함수
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        Expanded(child: _buildTabBarView()),
      ],
    );
  }

  Widget _buildTabBar() {
    return TabBar(controller: _tabController, tabs: [
      Tab(icon: Icon(Icons.local_taxi)),
      Tab(icon: Icon(Icons.directions_subway)),
    ]);
  }

  Widget _buildTabBarView() {
    return TabBarView(
      controller: _tabController,
      children: [
        GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
            itemCount: 40,
            itemBuilder: (context, index) {
              return Image.network(
                  "https://picsum.photos/id/${index + 1}/200/200");
            }),
        Container(color: Colors.orange)
      ],
    );
  }
}
