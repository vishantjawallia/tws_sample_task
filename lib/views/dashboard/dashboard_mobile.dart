part of dashboard_view;

// ignore: must_be_immutable
class _DashboardMobile extends StatelessWidget {
  final DashboardViewModel viewModel;

  const _DashboardMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        const DashboardHome(),
        const DashboardCart(),
        const DashboardProfile(),
      ][viewModel.index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Palettes.white,
        iconSize: 32,
        fixedColor: const Color(0xffDF0F45),
        // type: BottomNavigationBarType.fixed,
        currentIndex: viewModel.index,
        onTap: viewModel.navigationOnTap,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
