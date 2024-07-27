void main(List<String> args) {}

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
