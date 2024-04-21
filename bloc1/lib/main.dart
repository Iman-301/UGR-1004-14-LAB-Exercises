import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main(){
  runApp(MyApp2());

}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (_)=>BlocCounter(),
        child: MyHomePage2(title: 'flutter',)
      )
      );
  }
}

abstract class CounterEvent{}
class EventIncrement extends CounterEvent{}
class EventDecrement extends CounterEvent{}
class BlocCounter extends Bloc<CounterEvent, int>{
  BlocCounter(): super(0){
     on <EventIncrement>((event,emit){
      emit(state+1);
     });
     on <EventDecrement>((event,emit){
      emit(state-1);
     });
  }
}
class MyHomePage2 extends StatelessWidget {
   MyHomePage2({Key? key, required this.title}): super(key: key);
  String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<BlocCounter, int>(
              builder: (context, state) {
                return Text(
                  '$state',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<BlocCounter>(context).add(EventDecrement());
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<BlocCounter>(context).add(EventIncrement());
            },
           
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}



