enum PlantType { solar, wind, hydro, nuclear }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;

  EnergyPlant({
    required this.energyLeft,
    required this.type,
  });
  void consumeEnergy(double amount);
}

// --- solar Plant
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

// Nuclear plant
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required double this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}

double changePhone(NuclearPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Energy is low');
  }
  return plant.energyLeft - 20;
}

void main(List<String> args) {
  // final solarPlant = SolarPlant(initialEnergy: 100);
  final nuclearPant = NuclearPlant(energyLeft: 100);

  print('Solar: ${changePhone(nuclearPant).toInt()}% ');
}
