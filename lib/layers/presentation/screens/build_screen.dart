import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/core/helpers/brand_colors.dart';

class BuildScreen extends StatefulWidget {
  const BuildScreen({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  State<BuildScreen> createState() => _BuildScreenState();
}

class _BuildScreenState extends State<BuildScreen> {
  void _navigationOnIndex(int index) {
    widget.navigationShell.goBranch(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            widget.navigationShell,
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: 50.0,
                width: double.maxFinite,
                child: Stack(
                  children: [
                    Container(
                      height: 102.0,
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () => _navigationOnIndex(0),
                            iconSize: 24.0,
                            color: 
                            BrandColors.disable,
                            icon: Icon(CupertinoIcons.home),
                          ),
                          IconButton(
                            onPressed: () => _navigationOnIndex(1),
                            iconSize: 24.0,
                            color:
                            BrandColors.disable,
                            icon: const Icon(CupertinoIcons.heart),
                          ),
                          SizedBox(),
                          IconButton(
                            onPressed: () => _navigationOnIndex(2),
                            iconSize: 24.0,
                            color:
                            BrandColors.disable,
                            icon: const Icon(Icons.notifications_outlined),
                          ),
                          IconButton(
                            onPressed: () => _navigationOnIndex(3),
                            iconSize: 24.0,
                            color:
                            BrandColors.disable,
                            icon: const Icon(CupertinoIcons.person),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        backgroundColor: BrandColors.background,
    );
  }
}
