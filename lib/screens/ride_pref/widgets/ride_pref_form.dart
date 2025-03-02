// import '../../../theme/theme.dart';
// import '../../../screens/test_screen.dart';
// import 'package:flutter/material.dart';
 
// import '../../../model/ride/locations.dart';
// import '../../../model/ride_pref/ride_pref.dart';
 
// ///
// /// A Ride Preference Form is a view to select:
// ///   - A departure location
// ///   - An arrival location
// ///   - A date
// ///   - A number of seats
// ///
// /// The form can be created with an optional existing RidePref.
// ///
// class RidePrefForm extends StatefulWidget {
//   final RidePref? initRidePref;
 
//   const RidePrefForm({Key? key, this.initRidePref}) : super(key: key);
 
//   @override
//   State<RidePrefForm> createState() => _RidePrefFormState();
// }
 
// class _RidePrefFormState extends State<RidePrefForm> {
//   Location? departure;
//   Location? arrival;
//   late DateTime departureDate;
//   late int requestedSeats;
 
//   @override
//   void initState() {
//     super.initState();
//     if (widget.initRidePref != null) {
//       departure = widget.initRidePref!.departure;
//       arrival = widget.initRidePref!.arrival;
//       departureDate = widget.initRidePref!.date;
//       requestedSeats = widget.initRidePref!.seats;
//     } else {
//       // Set default values
//       departure = Location(name: "Toulouse");
//       arrival = Location(name: "Bordeaux, France");
//       departureDate = DateTime.now().add(const Duration(days: 1)); // Default: tomorrow
//       requestedSeats = 1;
//     }
//   }
 
//   // Swap departure and arrival locations.
//   void _swapLocations() {
//     setState(() {
//       final temp = departure;
//       departure = arrival;
//       arrival = temp;
//     });
//   }
 
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(BlaSpacings.m),
//       padding: EdgeInsets.all(BlaSpacings.m),
//       decoration: BoxDecoration(
//         color: BlaColors.white,
//         borderRadius: BorderRadius.circular(BlaSpacings.radius),
//         boxShadow: [
//           BoxShadow(
//             color: BlaColors.neutralLight.withOpacity(0.1),
//             spreadRadius: 0,
//             blurRadius: 8,
//             offset: const Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           // Departure Location Row
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   const Icon(Icons.circle_outlined, color: Colors.black54),
//                   const SizedBox(width: 10),
//                   Text(departure?.name ?? "", style: const TextStyle(fontSize: 16)),
//                 ],
//               ),
//               IconButton(
//                 icon: const Icon(Icons.swap_vert, color: Colors.blue),
//                 onPressed: _swapLocations,
//               ),
//             ],
//           ),
//           const Divider(),
 
//           // Arrival Location Row
//           Row(
//             children: [
//               const Icon(Icons.radio_button_unchecked, color: Colors.black54),
//               const SizedBox(width: 10),
//               Text(arrival?.name ?? "", style: const TextStyle(fontSize: 16)),
//             ],
//           ),
//           const Divider(),
 
//           // Date Row
//           Row(
//             children: [
//               const Icon(Icons.calendar_today, color: Colors.black54),
//               const SizedBox(width: 10),
//               // Format the date as "Sat 22 Feb"
//               Text(
//                 "${_formatWeekday(departureDate)} ${departureDate.day} ${_formatMonth(departureDate)}",
//                 style: const TextStyle(fontSize: 16),
//               ),
//             ],
//           ),
//           const Divider(),
 
//           // Number of Seats Row
//           Row(
//             children: [
//               const Icon(Icons.person, color: Colors.black54),
//               const SizedBox(width: 10),
//               Text("$requestedSeats", style: const TextStyle(fontSize: 16)),
//             ],
//           ),
//           const SizedBox(height: 20),
 
//           // Search Button using BlaButton (an App Widget)
//           SizedBox(
//             width: double.infinity,
//             child: BlaButton(
//               label: "Search",
//               isPrimary: true,
//               hasIcon: false,
//               onPressed: () {
//                 // Handle search action – for example, print the current values.
//                 print("Search pressed with:");
//                 print("Departure: ${departure?.name}");
//                 print("Arrival: ${arrival?.name}");
//                 print("Date: $departureDate");
//                 print("Seats: $requestedSeats");
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
 
//   // Helper to format the weekday (e.g., "Sat")
//   String _formatWeekday(DateTime date) {
//     return ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"][date.weekday % 7];
//   }
 
//   // Helper to format the month (e.g., "Feb")
//   String _formatMonth(DateTime date) {
//     return [
//       "Jan", "Feb", "Mar", "Apr", "May", "Jun",
//       "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
//     ][date.month - 1];
//   }
// }
