private import SI::PowerUnit;
private import SI::TemperatureDifferenceUnit;
private import ScalarValues::Integer;


part def Drawer{
	part extraRack: Rack;
}

part def Rack;
part def Oven{
	attribute wattage: PowerUnit;
	attribute slotCount: Integer;
	
	part rack: Rack;
	part drawer: Drawer;
	part heatingElement: HeatingElement;
}

part def HeatingElement{
	attribute temperature: TemperatureDifferenceUnit;
}

part testOven : Oven;
