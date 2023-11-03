// ignore_for_file: must_be_immutable

part of 'booking_name_bloc.dart';

/// Represents the state of BookingName in the application.
class BookingNameState extends Equatable {
  BookingNameState({
    this.editText1Controller,
    this.editText2Controller,
    this.editText3Controller,
    this.editText4Controller,
    this.editText5Controller,
    this.bookingNameModelObj,
  });

  TextEditingController? editText1Controller;

  TextEditingController? editText2Controller;

  TextEditingController? editText3Controller;

  TextEditingController? editText4Controller;

  TextEditingController? editText5Controller;

  BookingNameModel? bookingNameModelObj;

  @override
  List<Object?> get props => [
        editText1Controller,
        editText2Controller,
        editText3Controller,
        editText4Controller,
        editText5Controller,
        bookingNameModelObj,
      ];
  BookingNameState copyWith({
    TextEditingController? editText1Controller,
    TextEditingController? editText2Controller,
    TextEditingController? editText3Controller,
    TextEditingController? editText4Controller,
    TextEditingController? editText5Controller,
    BookingNameModel? bookingNameModelObj,
  }) {
    return BookingNameState(
      editText1Controller: editText1Controller ?? this.editText1Controller,
      editText2Controller: editText2Controller ?? this.editText2Controller,
      editText3Controller: editText3Controller ?? this.editText3Controller,
      editText4Controller: editText4Controller ?? this.editText4Controller,
      editText5Controller: editText5Controller ?? this.editText5Controller,
      bookingNameModelObj: bookingNameModelObj ?? this.bookingNameModelObj,
    );
  }
}
