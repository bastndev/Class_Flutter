enum PlantType { solar, wind, hydro }

abstract class EnergyPlant {
  double energyLeft;
  PlantType type;

  EnergyPlant({
    required this.energyLeft,
    required this.type,
  });
  void consumeEnergy(double amount);
}

class SolarPlant extends EnergyPlant {
  SolarPlant({
    required double initialEnergy,
  }) : super(
          energyLeft: initialEnergy,
          type: PlantType.solar,
        );

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

double changePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Energy is low');
  }
  return plant.energyLeft - 20;
}

void main(List<String> args) {
  final solarPlant = SolarPlant(initialEnergy: 100);
  print('Solar: ${changePhone(solarPlant).toInt()}% ');
}
