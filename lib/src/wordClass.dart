class EnWord {
  static String toWord(String inputNumber) {
    int number = int.parse(inputNumber);
    if (number == 0) {
      return "zero";
    }
    String fullNumber = inputNumber;
    for (var i = 0; i < 15 - fullNumber.length; i++) {
      inputNumber = "0" + inputNumber;
    }
    fullNumber = inputNumber;
    int trillion = int.parse(fullNumber.substring(0, 3));
    int billions = int.parse(fullNumber.substring(3, 6));
    int millions = int.parse(fullNumber.substring(6, 9));
    int hundredThousands = int.parse(fullNumber.substring(9, 12));
    int thousands = int.parse(fullNumber.substring(12, 15));

    String tradtrillion;

    switch (trillion) {
      case 0:
        tradtrillion = "";
        break;
      case 1:
        tradtrillion = _convertLessThanOneThousand(trillion) + " Trillion ";
        break;
      default:
        tradtrillion = _convertLessThanOneThousand(trillion) + " Trillion ";
    }
    String result = tradtrillion;

    String tradBillions;

    switch (billions) {
      case 0:
        tradBillions = "";
        break;
      case 1:
        tradBillions = _convertLessThanOneThousand(billions) + " billion ";
        break;
      default:
        tradBillions = _convertLessThanOneThousand(billions) + " billion ";
    }
    result += tradBillions;

    String tradMillions;

    switch (millions) {
      case 0:
        tradMillions = "";
        break;
      case 1:
        tradMillions = _convertLessThanOneThousand(millions) + " million ";
        break;
      default:
        tradMillions = _convertLessThanOneThousand(millions) + " million ";
    }
    result = result + tradMillions;

    String tradHundredThousands;
    switch (hundredThousands) {
      case 0:
        tradHundredThousands = "";
        break;
      case 1:
        tradHundredThousands = "one thousand ";
        break;
      default:
        tradHundredThousands =
            _convertLessThanOneThousand(hundredThousands) + " thousand ";
    }
    result = result + tradHundredThousands;

    String tradThousand;
    tradThousand = _convertLessThanOneThousand(thousands);
    result = result + tradThousand;
    return result;
  }

  static String _convertLessThanOneThousand(int number) {
    List<String> tensNames = [
      "",
      " ten",
      " twenty",
      " thirty",
      " forty",
      " fifty",
      " sixty",
      " seventy",
      " eighty",
      " ninety"
    ];

    List<String> numNames = [
      "",
      " one",
      " two",
      " three",
      " four",
      " five",
      " six",
      " seven",
      " eight",
      " nine",
      " ten",
      " eleven",
      " twelve",
      " thirteen",
      " fourteen",
      " fifteen",
      " sixteen",
      " seventeen",
      " eighteen",
      " nineteen"
    ];
    String soFar;
    if (number % 100 < 20) {
      soFar = numNames[number % 100];
      number = number ~/ 100;
    } else {
      soFar = numNames[number % 10];
      number = number ~/ 10;
      soFar = tensNames[number % 10] + soFar;
      number = number ~/ 10;
    }
    if (number == 0) {
      return soFar;
    }
    return numNames[number] + " hundred" + soFar;
  }
}

class FaWord {
  static String toWord(String inputNumber) {
    int number = int.parse(inputNumber);
    if (number == 0) {
      return "صفر";
    }
    String fullNumber = inputNumber;
    for (var i = 0; i < 15 - fullNumber.length; i++) {
      inputNumber = "0" + inputNumber;
    }
    fullNumber = inputNumber;

    int trillion = int.parse(fullNumber.substring(0, 3));
    int billions = int.parse(fullNumber.substring(3, 6));
    int millions = int.parse(fullNumber.substring(6, 9));
    int hundredThousands = int.parse(fullNumber.substring(9, 12));
    int thousands = int.parse(fullNumber.substring(12, 15));

    String tradtrillion;

    switch (trillion) {
      case 0:
        tradtrillion = "";
        break;
      case 1:
        tradtrillion = _convertLessThanOneThousand(trillion) + " تریلیون ";
        break;
      default:
        tradtrillion = _convertLessThanOneThousand(trillion) + " تریلیون و";
    }
    String result = tradtrillion;

    String tradBillions;

    switch (billions) {
      case 0:
        tradBillions = "";
        break;
      default:
        tradBillions = _convertLessThanOneThousand(billions) + " میلیارد و";
    }
    result += tradBillions;

    String tradMillions;

    switch (millions) {
      case 0:
        tradMillions = "";
        break;
      default:
        tradMillions = _convertLessThanOneThousand(millions) + " میلیون و";
    }
    result = result + tradMillions;

    String tradHundredThousands;
    switch (hundredThousands) {
      case 0:
        tradHundredThousands = "";
        break;
      case 1:
        tradHundredThousands = "هزار و";
        break;
      default:
        tradHundredThousands =
            _convertLessThanOneThousand(hundredThousands) + " هزار و";
    }
    result = result + tradHundredThousands;

    String tradThousand;
    tradThousand = _convertLessThanOneThousand(thousands);
    result = result + tradThousand;

    if (result.endsWith(" و")) {
      result = result.substring(0, result.length - 2);
    }

    return result;
  }

  static String _convertLessThanOneThousand(int number) {
    List<String> tensNames = [
      "",
      " ده و",
      " بیست و",
      " سی و",
      " چهل و",
      " پنجاه و",
      " شصت و",
      " هفتاد و",
      " هشتاد و",
      " نود و"
    ];

    List<String> numNames = [
      "",
      " یک",
      " دو",
      " سه",
      " چهار",
      " پنج",
      " شش",
      " هفت",
      " هشت",
      " نه",
      " ده",
      " یازده",
      " دوازده",
      " سیزده",
      " چهارده",
      " پانزده",
      " شانزده",
      " هفده",
      " هجده",
      " نوزده"
    ];

    List<String> thousandsNames = [
      "",
      " صد و",
      " دویست و",
      " سیصد و",
      " چهارصد و",
      " پانصد و",
      " ششصد و",
      " هفتصد و",
      " هشتصد و",
      " نهصد و"
    ];
    String soFar;
    if (number % 100 < 20) {
      soFar = numNames[number % 100];
      number = number ~/ 100;
    } else {
      soFar = numNames[number % 10];
      number = number ~/ 10;
      soFar = tensNames[number % 10] + soFar;
      number = number ~/ 10;
    }
    if (number == 0) {
      if (soFar.endsWith(" و")) {
        soFar = soFar.substring(0, soFar.length - 2);
      }
      return soFar;
    }
    var str = "";
    str = (thousandsNames[number] + soFar);
    if (str.endsWith(" و") || str.endsWith("و ")) {
      str = str.substring(0, str.length - 2);
    }
    return str;
  }
}
