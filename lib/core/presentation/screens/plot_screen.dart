import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_12/core/presentation/providers/movie_provider.dart';
import 'package:provider/provider.dart';

class PlotPAge extends StatelessWidget {
  const PlotPAge({super.key});

  @override
  Widget build(BuildContext context) {
     final vm = context.watch<MovieProvider>();
     
     
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Movie Info',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w900,
          ),
          ),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(vm.data?.title?? '',
                style: TextStyle(
                  fontWeight: FontWeight.w900
                ),),
                   Text(vm.data?.actors?? '',
                   style: TextStyle(
                  fontWeight: FontWeight.w900
                ),),
                Text(vm.data?.year?? '',
                style: TextStyle(
                  fontWeight: FontWeight.w900
                ),),
               Image.network(vm.data?.poster ?? "",),
               Text(vm.data?.language?? '',
                style: TextStyle(
                  fontWeight: FontWeight.w700
                ),
               ),
               Text(vm.data?.released?? '',
                style: TextStyle(
                  fontWeight: FontWeight.w700
                ),),
            
               Text(vm.data?.awards?? '',
                style: TextStyle(
                  fontWeight: FontWeight.w700
                ),),
               Text(vm.data?.plot?? '',
                style: TextStyle(
                  fontWeight: FontWeight.w700
                ),),
                ElevatedButton(
                  onPressed: (){}, 
                child: Row(
                  children: [
                    Text('Add to favotites',
                    style: TextStyle(
                      fontFamily: AutofillHints.birthdayDay,
                      fontWeight: FontWeight.w600
                    ),
                    
                    ),
                    Spacer(),
                Icon(Icons.save)
                
                  ],
                ) ,
                
               
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}