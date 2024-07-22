import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Task> todo = [
    Task(status: false, title: "wish the dash Deontm smam then a"),
    Task(status: false, title: "All the part good "),
    Task(status: true, title: "Ram is going to dash")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo'),
        backgroundColor: const Color.fromARGB(255, 219, 198, 9),
      ),
      body: ListView.builder(
          padding: EdgeInsets.only(left: 18, right: 18, top: 18),
          itemCount: todo.length,
          itemBuilder: (context, index) {
            return Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 114, 131, 108),
                    borderRadius: BorderRadius.circular(18)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        todo[index].title,
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                      decoration: BoxDecoration(
                        color: todo[index].status
                            ? const Color.fromARGB(255, 104, 232, 108)
                            : Color.fromARGB(255, 249, 203, 67),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        todo[index].status ? "completed" : "In Progress",
                        style: TextStyle(
                            fontSize: 18, color: Color.fromARGB(255, 6, 7, 7)),
                      ),
                    )
                  ],
                ));
          }),
    );
  }
}

class Task {
  String title;
  bool status;
  Task({required this.status, required this.title});
}
