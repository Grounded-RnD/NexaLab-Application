import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:google_fonts/google_fonts.dart';

class Peminjaman extends StatefulWidget {
  @override
  _PeminjamanState createState() => _PeminjamanState();
}

class _PeminjamanState extends State<Peminjaman> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: const EdgeInsets.all(30),
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(66, 66, 66, 1),
            borderRadius: BorderRadius.circular(12),
          ),
          height: 370, // Adjust height if needed
          width: double.infinity,
          // child: Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: TableCalendar(
          //     firstDay: DateTime.utc(2010, 10, 16),
          //     lastDay: DateTime.utc(2030, 3, 14),
          //     focusedDay: _focusedDay,
          //     calendarFormat: _calendarFormat,
          //     selectedDayPredicate: (day) {
          //       return isSameDay(_selectedDay, day);
          //     },
          //     onDaySelected: (selectedDay, focusedDay) {
          //       setState(() {
          //         _selectedDay = selectedDay;
          //         _focusedDay = focusedDay;
          //       });
          //     },
          //     onFormatChanged: (format) {
          //       if (_calendarFormat != format) {
          //         setState(() {
          //           _calendarFormat = format;
          //         });
          //       }
          //     },
          //     onPageChanged: (focusedDay) {
          //       _focusedDay = focusedDay;
          //     },
          //     calendarStyle: const CalendarStyle(
          //       defaultTextStyle: TextStyle(color: Colors.white),
          //       weekendTextStyle: TextStyle(color: Colors.white),
          //       selectedTextStyle: TextStyle(color: Colors.black),
          //       todayTextStyle: TextStyle(color: Colors.black),
          //       todayDecoration: BoxDecoration(
          //         color: Colors.grey,
          //         shape: BoxShape.circle,
          //       ),
          //       selectedDecoration: BoxDecoration(
          //         color: Colors.purple,
          //         shape: BoxShape.circle,
          //       ),
          //     ),
          //     headerStyle: HeaderStyle(
          //       titleTextStyle: const TextStyle(color: Colors.white),
          //       formatButtonTextStyle: TextStyle(color: Colors.black),
          //       formatButtonDecoration: BoxDecoration(
          //         color: Colors.purple,
          //         borderRadius: BorderRadius.circular(8.0),
          //       ),
          //       leftChevronIcon: const Icon(Icons.chevron_left, color: Colors.white),
          //       rightChevronIcon: const Icon(Icons.chevron_right, color: Colors.white),
          //     ),
          //     daysOfWeekStyle: const DaysOfWeekStyle(
          //       weekdayStyle: TextStyle(color: Colors.white),
          //       weekendStyle: TextStyle(color: Colors.white),
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Peminjaman(),
  ));
}
