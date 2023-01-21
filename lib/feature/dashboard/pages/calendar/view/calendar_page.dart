import 'package:dialysis/feature/dashboard/pages/calendar/calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});
  static const path = '/test_calendar';
  static const name = 'test_calendar';
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CalendarCubit(),
        ),
      ],
      child: const _CalendarPage(),
    );
  }
}

class _CalendarPage extends StatelessWidget {
  const _CalendarPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TITLE'),
      ),
      body: SafeArea(
        child: SfCalendar(
          view: CalendarView.month,
          showDatePickerButton: true,

          showNavigationArrow: true,
          // showWeekNumber: true,
          // переход при нажатии на день в календарь дня
          // allowViewNavigation: true,
          // выбранная дата в прямоугольной рамке
          initialSelectedDate: DateTime.now().add(const Duration(days: 5)),
          // начальное отображение недели месяца и года
          // initialDisplayDate: DateTime.now().subtract(Duration(days: 50)),

          allowedViews: const [
            CalendarView.day,
            CalendarView.week,
            CalendarView.month,
            CalendarView.schedule,
          ],
          dataSource: _getCalendarDataSource(),
          timeSlotViewSettings: const TimeSlotViewSettings(
            timeTextStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.blue,
              fontStyle: FontStyle.italic,
            ),
          ),

          monthViewSettings: const MonthViewSettings(
            showAgenda: true,
            appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,
          ),
        ),
      ),
    );
  }
}

class DataSource extends CalendarDataSource {
  DataSource(
    List<Appointment> source,
  ) {
    appointments = source;
  }
}

// ignore: prefer-static-class
DataSource _getCalendarDataSource() {
  var appointments = <Appointment>[];

  final exceptionDate = DateTime(2023, 01, 20);

  appointments = <Appointment>[];
  // ignore: cascade_invocations
  appointments.add(
    Appointment(
      startTime: DateTime.now(),
      endTime: DateTime.now().add(const Duration(hours: 2)),
      // дополнительно в событиях показывает время
      //  isAllDay: true,
      subject: 'Добавили Воду 100мл',
      //  ни чего не показывает
      notes: 'xnjnjjj',
      resourceIds: <Object>['0001'],
      color: Colors.lime,
      startTimeZone: '',
      endTimeZone: '',
    ),
  );
  // ignore: cascade_invocations
  appointments
    ..add(
      Appointment(
        startTime: DateTime(2023, 01, 12, 10),
        endTime: DateTime(2021, 01, 12, 12),
        subject: 'Scrum meeting',
        id: '01',
        recurrenceRule: 'FREQ=DAILY;INTERVAL=1;COUNT=10',
        recurrenceExceptionDates: <DateTime>[exceptionDate],
      ),
    )
    ..add(
      Appointment(
        startTime: DateTime(2023, 01, 12, 10),
        endTime: DateTime(2021, 01, 12, 12),
        subject: 'Scrum meeting',
        id: '01',
        recurrenceRule: 'FREQ=DAILY;INTERVAL=1;COUNT=10',
        recurrenceExceptionDates: <DateTime>[exceptionDate],
      ),
    )
    ..add(
      Appointment(
        startTime: DateTime(2023, 01, 12, 10),
        endTime: DateTime(2021, 01, 12, 12),
        subject: 'Scrum meeting',
        id: '01',
        recurrenceRule: 'FREQ=DAILY;INTERVAL=1;COUNT=10',
        recurrenceExceptionDates: <DateTime>[exceptionDate],
      ),
    );
  // ignore: cascade_invocations
  appointments
    ..add(
      Appointment(
        startTime: DateTime(2023, 01, 12, 10),
        endTime: DateTime(2021, 01, 12, 12),
        subject: 'Scrum meeting',
        id: '01',
        recurrenceRule: 'FREQ=DAILY;INTERVAL=1;COUNT=10',
        recurrenceExceptionDates: <DateTime>[exceptionDate],
      ),
    )
    ..add(
      Appointment(
        startTime: DateTime(2023, 01, 12, 10),
        endTime: DateTime(2021, 01, 12, 12),
        subject: 'Scrum meeting',
        id: '01',
        recurrenceRule: 'FREQ=DAILY;INTERVAL=1;COUNT=10',
        recurrenceExceptionDates: <DateTime>[exceptionDate],
      ),
    );
  return DataSource(appointments);
}
