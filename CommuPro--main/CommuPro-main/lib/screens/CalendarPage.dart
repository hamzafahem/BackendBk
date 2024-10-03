import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  DateTime _selectedDay = DateTime.now();
  Map<DateTime, List<String>> _tasks = {};

  TextEditingController _taskController = TextEditingController();

  void _addTask(String taskTitle) {
    if (taskTitle.isEmpty) return;

    setState(() {
      if (_tasks[_selectedDay] != null) {
        _tasks[_selectedDay]!.add(taskTitle);
      } else {
        _tasks[_selectedDay] = [taskTitle];
      }
    });

    _taskController.clear();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar', style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Color(0xff7bd2e1), // Apply the color to AppBar
      ),
      body: Column(
        children: [
          TableCalendar(
            focusedDay: _selectedDay,
            firstDay: DateTime(2020),
            lastDay: DateTime(2030),
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
              });
            },
          ),
          Expanded(
            child: _tasks[_selectedDay] == null || _tasks[_selectedDay]!.isEmpty
                ? Center(child: Text('Aucune tâche pour ce jour', style: TextStyle(fontFamily: "Poppins"),))
                : ListView(
              children: _tasks[_selectedDay]!
                  .map((task) => ListTile(title: Text(task)))
                  .toList(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddTaskDialog(),
        backgroundColor: Color(0xff7bd2e1), // Apply the color to FAB
        child: Icon(Icons.add),
      ),
    );
  }

  void _showAddTaskDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add Task'),
          content: TextField(
            controller: _taskController,
            decoration: InputDecoration(hintText: 'Enter task title'),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () => _addTask(_taskController.text),
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }
}
