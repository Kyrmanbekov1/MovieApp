import 'package:flutter/material.dart';
import 'package:flutter_application_12/core/presentation/providers/movie_provider.dart';
import 'package:flutter_application_12/core/presentation/screens/plot_screen.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<MovieProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Movie App',
           style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w900,
          ),
          ),
        backgroundColor: Colors.red,
      ),
      
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextField(
              onChanged: (value) {
                vm.getMovie(title: value,);
              },
              decoration: InputDecoration(
                suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.search),),
                border: OutlineInputBorder(),),
            ),
            
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> PlotPAge()));
            },
            child: Container(
             height: 100,
              child: ListTile(
                  title: Text(vm.data?.title ?? ""),
                  subtitle: Text(vm.data?.plot ?? ""),
                  leading: vm.data !=null? Image.network(
                    vm.data?.poster ?? "",
                    errorBuilder: (context, error, stackTrace) => const
                    Icon(Icons.error,
                    color: Colors.red,
                    size: 100,
                    ),
                    
                  ): SizedBox.shrink(),
                ),
            ),
          ),
          
            
        ],
        
      ),
    
    );
    
  }
}