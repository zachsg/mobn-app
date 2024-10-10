import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static const routeName = '/home';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final CounterViewModel viewModel = CounterViewModel(CounterModel());
  int navIndex = 0;

  @override
  void initState() {
    viewModel.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('The count is:'),
            ListenableBuilder(
              listenable: viewModel,
              builder: (context, child) {
                if (viewModel.errorMessage != null) {
                  return Text('Counter not initialized');
                } else {
                  return Text(
                    '${viewModel.count}',
                    style: Theme.of(context).textTheme.displayLarge,
                  );
                }
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => viewModel.increment(),
              child: Text('Increment'),
            ),
            FilledButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              child: Text('Log Out'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navIndex,
        onTap: (index) => setNavIndex(index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  void setNavIndex(int index) {
    if (index == navIndex) {
      return;
    }

    setState(() => navIndex = index);
  }
}

class CounterData {
  CounterData(this.count);

  final int count;
}

class CounterModel {
  Future<CounterData> loadCountFromServer() async {
    return await CounterData(0);
  }

  Future<void> updateCountOnServer(int newCount) async {
    // ...
  }
}

class CounterViewModel extends ChangeNotifier {
  final CounterModel model;
  int? count;
  String? errorMessage;
  CounterViewModel(this.model);

  Future<void> init() async {
    try {
      count = (await model.loadCountFromServer()).count;
    } catch (e) {
      errorMessage = 'Could not initialize counter';
    }
    notifyListeners();
  }

  Future<void> increment() async {
    if (count == null) {
      throw ('Not initialized');
    }

    try {
      await model.updateCountOnServer(count! + 1);
      errorMessage = null;
      count = count! + 1;
    } catch (e) {
      errorMessage = 'Count not update count';
    }
    notifyListeners();
  }
}
