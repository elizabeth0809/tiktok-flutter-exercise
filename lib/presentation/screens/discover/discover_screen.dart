import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/presentation/provider/discover_provider.dart';
import 'package:toktik/presentation/widgets/shared/video_scroll_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();
    return Scaffold(
        body: discoverProvider.initialLoading
            ? Center(child: CircularProgressIndicator())
            : VideoScrollableView(videos: discoverProvider.videos));
  }
}
