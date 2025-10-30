import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final normalProvider = Provider<String>((ref) {
  return "Im just a normal provider" ;
});

final messageProvider = FutureProvider<String>((ref) async {
  return Future.delayed(Duration(seconds: 5), (){
  return "A message from the future";
});
});



//this is state notifier it gicves access to the CounterNotifier and the actual count<int> and we are return CounterNotifier() 


// the `StateNotifierProvider` provides both the CounterNotifier which has all the functions and the actual state.

final counterProvider = StateNotifierProvider<CounterNotifier, int>((ref) {
  return CounterNotifier();
});

// we define the CounterNotifier  the `the StateNotifier is the one doing the work  the state is held here ansd where all the actions upon it will be done. 
class CounterNotifier extends StateNotifier<int> {
// the super is 0 because its initally where we wantto start on the counter
  CounterNotifier() : super(0);
// but a fucntion can be added to it. The stateNotifier is immutable which means nothing can change the state of this (thats means everytime you are updated the state you need to completely reset the state to a new value) - that example the state + 1
   void add(){
    state = state + 1;
  }
}