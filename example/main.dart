import 'package:enum_to_string/enum_to_string.dart';

enum TestEnum { ValueOne, Value2, valueThree }

void main() {
  // Parse enum to a string
  EnumToString.toString(TestEnum.ValueOne); //ValueOne
  EnumToString.toString(TestEnum.Value2); //Value2
  EnumToString.toString(TestEnum.valueThree); //valueThree

  // Parse an enum to something more human readable
  EnumToString.toString(TestEnum.ValueOne); //Value one
  EnumToString.toString(TestEnum.Value2); //Value 2
  EnumToString.toString(TestEnum.valueThree); //Value three

  // Get an enum from a string
  EnumToString.fromString(TestEnum.values, 'ValueOne'); //, TestEnum.ValueOne
  EnumToString.fromString(TestEnum.values, 'Value2'); // TestEnum.Value2
  EnumToString.fromString(TestEnum.values, 'valueThree'); // TestEnum.valueThree

  // Get an enum from a string
  EnumToString.toList<TestEnum>(
      TestEnum.values); // {ValueOne, Value2, valuethree}

  EnumToString.fromList(TestEnum.values, ['valueOne', 'Value2', 'alksdfjsda']);
  //[TestEnum.ValueOne, TestEnum.Value2, null]
}
