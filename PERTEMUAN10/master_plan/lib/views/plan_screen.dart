import 'package:master_plan/provider/plan_provider.dart';
import '../models/data_layer.dart';
import 'package:flutter/material.dart';

class PlanScreen extends StatefulWidget {
  final Plan? plan;

  const PlanScreen({
    Key? key,
    required this.plan,
  }) : super(key: key);
  
  // get plan => null;


  @override
  _PlanScreenState createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  // Langkah 10: Deklarasi scrollController
  late ScrollController scrollController;
  Plan? get plan => widget.plan ?? defaultPlan;
  
  get defaultPlan => null;
  
  // Langkah 11: Inisialisasi scrollController dan Tambah Scroll listener
  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).requestFocus(FocusNode());
      });
  }

  // Langkah 13: Tambah Methode dispose() 
  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
Widget build(BuildContext context) {
  // Dapatkan daftar plans dari PlanProvider
  ValueNotifier<List<Plan>> plansNotifier = PlanProvider.of(context);

  return Scaffold(
    appBar: AppBar(title: const Text(
        'Master Plan Elis', 
        style: TextStyle(
        color: Colors.white, 
        fontWeight: FontWeight.bold,
        ),),
        backgroundColor: Colors.purple,),
    body: ValueListenableBuilder<List<Plan>>(
      valueListenable: plansNotifier,
      builder: (context, plans, child) {
        // Temukan currentPlan berdasarkan nama
        Plan? currentPlan = plans.firstWhere((p) => p.name == plan?.name, orElse: () => Plan (name: 'Default Plan', tasks: []));
        return Column(
          children: [
            Expanded(child: _buildList(currentPlan)),
            SafeArea(child: Text(currentPlan.completenessMessage)),
          ],
        );
      },
    ),
    floatingActionButton: _buildAddTaskButton(context),
  );
}

// Fungsi untuk menambah task
Widget _buildAddTaskButton(BuildContext context) {
  ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);
  return FloatingActionButton(
    child: const Icon(Icons.add),
    onPressed: () {
      Plan? currentPlan = widget.plan;
      int planIndex = planNotifier.value.indexWhere((p) => p.name == currentPlan!.name);
      
      // Tambahkan task baru pada List
      List<Task> updatedTasks = List<Task>.from(currentPlan!.tasks)..add(const Task());
      planNotifier.value = List<Plan>.from(planNotifier.value)
        ..[planIndex] = Plan(
          name: currentPlan!.name,
          tasks: updatedTasks,
        );
    },
  );
}


  // Langkah 7: Provider menyesuaikan parameter
  Widget _buildList(Plan plan) {
   return ListView.builder(
     controller: scrollController,
     itemCount: plan.tasks.length,
     itemBuilder: (context, index) =>
        _buildTaskTile(plan.tasks[index], index, context),
   );
}

  Widget _buildTaskTile(Task task, int index, BuildContext context){
    ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);

    return ListTile(
      leading: Checkbox(
         value: task.complete,
         onChanged: (selected) {
           Plan? currentPlan = plan;
           int planIndex = planNotifier.value
              .indexWhere((p) => p.name == currentPlan!.name);
           planNotifier.value = List<Plan>.from(planNotifier.value)
             ..[planIndex] = Plan(
               name: currentPlan!.name,
               tasks: List<Task>.from(currentPlan.tasks)
                 ..[index] = Task(
                   description: task.description,
                   complete: selected ?? false,
                 ),);
         }),
      title: TextFormField(
        initialValue: task.description,
        onChanged: (text) {
          Plan? currentPlan = plan;
          int planIndex =
             planNotifier.value.indexWhere((p) => p.name ==currentPlan!.name);
          planNotifier.value = List<Plan>.from(planNotifier.value)
            ..[planIndex] = Plan(
              name: currentPlan!.name,
              tasks: List<Task>.from(currentPlan.tasks)
                ..[index] = Task(
                  description: text,
                  complete: task.complete,
                ),
            );
        },),);}
  }



  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(title: const Text(
  //       'Master Plan Elis', 
  //       style: TextStyle(
  //       color: Colors.white, 
  //       fontWeight: FontWeight.bold,
  //       ),), 
  //     backgroundColor: Colors.purple,),
  //     // Langkah 9: Provider widget safearea
  //     body: ValueListenableBuilder<Plan>(
  //      valueListenable: PlanProvider.of(context),
  //      builder: (context, plan, child) {
  //        return Column(
  //          children: [
  //            Expanded(child: _buildList(plan)),
  //            SafeArea(child: Text(plan.completenessMessage))
  //          ],
  //        );
  //      },
  //    ),
  //    floatingActionButton: _buildAddTaskButton(context),
  //     // body: _buildList(),
  //     // floatingActionButton: _buildAddTaskButton(),
  //   );
  // }

  // // Langkah 7: Membuat Tombol Tambah Rencana
  // Widget _buildAddTaskButton(BuildContext context) {
  //   // Langkah 5: provider BuildContext
  //   ValueNotifier<Plan> planNotifier = PlanProvider.of(context);
  //   return FloatingActionButton(
  //     child: const Icon(Icons.add),
  //     onPressed: () {
  //       Plan currentPlan = planNotifier.value;
  //       planNotifier.value = Plan(
  //         name: currentPlan.name,
  //         tasks: List<Task>.from(currentPlan.tasks)..add(const Task()),
  //       );
  //       // setState(() {
  //       //   plan = Plan(
  //       //     name: plan.name,
  //       //     tasks: List<Task>.from(plan.tasks)..add(const Task()),
  //       //   );
  //       // });
  //     },
  //   );
  // }

    // // Langkah 8: Membuat ListView yang dapat discroll untuk menampilkan daftar tugas
  // Widget _buildList() {
  //   return ListView.builder(
  //     // Langkah 12: Tambah controller dan keyboard behavior
  //     controller: scrollController, 
  //     keyboardDismissBehavior: Theme.of(context).platform == TargetPlatform.iOS
  //         ? ScrollViewKeyboardDismissBehavior.onDrag
  //         : ScrollViewKeyboardDismissBehavior.manual,
  //     itemCount: plan.tasks.length,
  //     itemBuilder: (context, index) => _buildTaskTile(plan.tasks[index], index),
  //   );
  // }


  // // Langkah 9: Membuat ListTile untuk setiap tugas dalam daftar
  // Widget _buildTaskTile(Task task, int index) {
  //   return ListTile(
  //     leading: Checkbox(
  //         value: task.complete,
  //         onChanged: (selected) {
  //           setState(() {
  //             plan = Plan(
  //               name: plan.name,
  //               tasks: List<Task>.from(plan.tasks)
  //                 ..[index] = Task(
  //                   description: task.description,
  //                   complete: selected ?? false,
  //                 ),
  //             );
  //           });
  //         }),
  //     title: TextFormField(
  //       initialValue: task.description,
  //       onChanged: (text) {
  //         setState(() {
  //           plan = Plan(
  //             name: plan.name,
  //             tasks: List<Task>.from(plan.tasks)
  //               ..[index] = Task(
  //                 description: text,
  //                 complete: task.complete,
  //               ),
  //           );
  //         });
  //       },
  //     ),
  //   );
  // }


//   // Langkah 6: Provider
//   Widget _buildTaskTile(Task task, int index, BuildContext context) {
//   ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);
//   return ListTile(
//     leading: Checkbox(
//        value: task.complete,
//        onChanged: (selected) {
//          List<Plan> currentPlan = planNotifier.value;
//          planNotifier.value = Plan(
//            name: currentPlan.name,
//            tasks: List<Task>.from(currentPlan.tasks)
//              ..[index] = Task(
//                description: task.description,
//                complete: selected ?? false,
//              ),
//          );
//        }),
//     title: TextFormField(
//       initialValue: task.description,
//       onChanged: (text) {
//         List<Plan> currentPlan = planNotifier.value;
//         planNotifier.value = Plan(
//           name: currentPlan.name,
//           tasks: List<Task>.from(currentPlan.tasks)
//             ..[index] = Task(
//               description: text,
//               complete: task.complete,
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

