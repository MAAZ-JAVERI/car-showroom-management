import 'dart:io';

void main() {

  List<String> vehicleTypes = ["Cars", "Bikes", "Bus"];

  print("Select Vehicle Type:");
  for (int i = 0; i < vehicleTypes.length; i++) {
    print("${i + 1}. ${vehicleTypes[i]}");
  }

  stdout.write("Enter your choice (1-${vehicleTypes.length}): ");
  String? inputType = stdin.readLineSync();
  int? typeChoice = int.tryParse(inputType ?? '');
  if (typeChoice == null || typeChoice < 1 || typeChoice > vehicleTypes.length) {
    print("Invalid input! Program will exit.");
    return;
  }

  int typeIndex = typeChoice - 1;
  print("You selected: ${vehicleTypes[typeIndex]}\n");

  
  List<List<String>> brandsByType = [
    ["Toyota", "Honda", "Suzuki"], 
    ["Yamaha", "HondaBike"],       
    ["Daewoo", "Hino"]             
  ];

  List<String> brands = brandsByType[typeIndex];

  print("Select Brand:");
  for (int i = 0; i < brands.length; i++) {
    print("${i + 1}. ${brands[i]}");
  }

  stdout.write("Enter your choice (1-${brands.length}): ");
  String? inputBrand = stdin.readLineSync();
  int? brandChoice = int.tryParse(inputBrand ?? '');
  if (brandChoice == null || brandChoice < 1 || brandChoice > brands.length) {
    print("Invalid input! Program will exit.");
    return;
  }

  int brandIndex = brandChoice - 1;
  print("You selected: ${brands[brandIndex]}\n");

  
  List<String> categories = ["Sedan", "SUV", "Hatchback", "Pickup Truck"];
  print("Select Car Category:");
  for (int i = 0; i < categories.length; i++) {
    print("${i + 1}. ${categories[i]}");
  }

  stdout.write("Enter your choice (1-${categories.length}): ");
  String? inputCategory = stdin.readLineSync();
  int? categoryChoice = int.tryParse(inputCategory ?? '');
  if (categoryChoice == null || categoryChoice < 1 || categoryChoice > categories.length) {
    print("Invalid input! Program will exit.");
    return;
  }

  int categoryIndex = categoryChoice - 1;
  print("You selected: ${categories[categoryIndex]}\n");

 List<List<List<List<String>>>> models = [

  [
    [
      ["Corolla", "Yaris"],
      ["Fortuner", "Corolla Cross"],
      ["Vitz", "Aqua"],
      ["Hilux", "Revo"]
    ],

    [
      ["Civic", "City"],
      ["CR-V", "HR-V"],
      ["Fit", "Jazz"],
      ["Ridgeline"]
    ],

    [
      ["Ciaz"],
      ["Fronx"],
      ["Alto", "Wagon R"],
      ["D-Max"]
    ],
  ],

  [
    [
      ["YBR", "YBZ"],
      ["MT-15"],
      
      
    ],

    [
      ["CG125", "CD70"],
      ["CB150F"],
      
      
    ],
  ],

  [
    [
      ["Hino Blue Ribbon"],
      ["Hino Liesse"],
      
      
    ]
  ]
];
int vehicleIndex = 0;
// int brandIndex = 0;
// int categoryIndex = 0;

List<String> finalModels =
    models[vehicleIndex][brandIndex][categoryIndex];

if (finalModels.isEmpty) {
  print("No models available for this selection.");
} else {
  print("Available Models:");
  for (var m in finalModels) {
    print("- $m");
  }
}
}