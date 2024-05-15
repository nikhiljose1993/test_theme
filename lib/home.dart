import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_theme/providers/theme_provider.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  bool _isLightMode = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        backgroundColor: theme.colorScheme.secondary,
        actions: [
          IconButton(
            onPressed: () {
              final isLightMode =
                  ref.read(themeProvider.notifier).toggleTheme();
              setState(() {
                _isLightMode = isLightMode;
              });
            },
            tooltip: 'Change to ${_isLightMode ? 'Dark' : 'Light'} Mode',
            icon: Icon(_isLightMode ? Icons.light_mode : Icons.dark_mode),
          )
        ],
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            borderRadius: BorderRadius.circular(14),
          ),
          width: 200,
          height: 200,
          child: const Center(
            child: Text('This Is Art'),
          ),
        ),
      ),
    );
  }
}
