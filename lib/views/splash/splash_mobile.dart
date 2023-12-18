// ignore_for_file: unused_field

part of splash_view;

// ignore: must_be_immutable
class _SplashMobile extends StatefulWidget {
  final SplashViewModel viewModel;

  const _SplashMobile(this.viewModel);

  @override
  State<_SplashMobile> createState() => _SplashMobileState();
}

class _SplashMobileState extends State<_SplashMobile> with SingleTickerProviderStateMixin {
  // String sampleText = "TWS  App";
  late AnimationController? _controller;
  late Animation<int>? _textAnimation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _textAnimation = IntTween(begin: 0, end: APP_NAME.length).animate(_controller!);

    _controller!.forward();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _controller!,
          builder: (context, child) {
            String animatedText = APP_NAME.substring(0, _textAnimation!.value);
            return Text(
              animatedText,
              style: Get.textTheme.displayLarge!.copyWith(
                fontWeight: FontWeight.w800,
                fontSize: 40,
              ),
            );
          },
        ),
      ),
    );
  }
}
