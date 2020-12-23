//
//  main.swift
//  FourthLesson
//
//  Created by ZamiRich on 21.12.2020.
//

import Foundation

//1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.

enum Color {
    case white, black, red, green
}

enum Brand {
    case tesla, vw, bmw, mercedes, masertti, bugatti, audi, porsche, man, kamaz, volvo
}

enum EngineAction {
    case startEngine, stopEngine
}

enum WindowsAction {
    case openWindows, closeWindows
}

enum TruckAction {
    case emptyTheTruck, loadInTheTruck
}

enum SportCarSpecialAction {
    case boostSpeedOn, boostSpeedOff
}

class Car {
    let brand: Brand
    let color: Color
    let yearOfProduction: Int
    var isEngineOn: Bool
    var areWindowsOpen: Bool
    var currentSpeed: Int
    
    init(brand: Brand, color: Color, yearOfProduction: Int, isEngineOn: Bool, areWindowsOpen: Bool, currentSpeed: Int) {
        self.brand = brand
        self.color = color
        self.yearOfProduction = yearOfProduction
        self.isEngineOn = isEngineOn
        self.areWindowsOpen = areWindowsOpen
        self.currentSpeed = currentSpeed
    }
    
    func engine(action: EngineAction) {
        switch action {
        case .startEngine:
            isEngineOn = true
            print("The engine is now On")
        case .stopEngine:
            isEngineOn = false
            print("The engine is now Off")
        }
    }
    
    func printCarProperties() {
        print(brand, color, yearOfProduction, isEngineOn, areWindowsOpen, currentSpeed)
    }
}

//2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.

class truckCar: Car {
    let bodyTrunkCapacity: Int
    var bodyTrunkOccupancy: Int
    
    init(brand: Brand, color: Color, yearOfProduction: Int, bodyTrunkCapacity: Int, bodyTrunkOccupancy: Int, isEngineOn: Bool, areWindowsOpen: Bool, currentSpeed: Int) {
        self.bodyTrunkCapacity = bodyTrunkCapacity
        self.bodyTrunkOccupancy = bodyTrunkOccupancy
        
        super.init(brand: brand, color: color, yearOfProduction: yearOfProduction, isEngineOn: isEngineOn, areWindowsOpen: areWindowsOpen, currentSpeed: currentSpeed)
    
    }
    
    func truck(action: TruckAction) {
        switch action {
        case .emptyTheTruck:
            bodyTrunkOccupancy = 0
            print("The truck was emptied. Trunk occupancy is \(bodyTrunkOccupancy) out of \(bodyTrunkCapacity)")
        case .loadInTheTruck:
            bodyTrunkOccupancy = bodyTrunkCapacity
            print("The truck was fully loaded. Trunk occupancy is \(bodyTrunkOccupancy) out of \(bodyTrunkCapacity)")
        }
    }
}

class sportCar: Car {
    var maxSpeed: Int
    
    init(brand: Brand, color: Color, yearOfProduction: Int, maxSpeed: Int, isEngineOn: Bool, areWindowsOpen: Bool, currentSpeed: Int) {
        self.maxSpeed = maxSpeed
        
        super.init(brand: brand, color: color, yearOfProduction: yearOfProduction, isEngineOn: isEngineOn, areWindowsOpen: areWindowsOpen, currentSpeed: currentSpeed)
    }
    
    func sportCarSpecial(action: SportCarSpecialAction) {
        switch action {
        case .boostSpeedOn:
            self.currentSpeed = 400
            print("Speed is now 400 km per hour")
        case .boostSpeedOff:
            self.currentSpeed = maxSpeed
            print("Speed is now back to normal \(maxSpeed) km per hour")
        }
    }
}

//3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.

    //added starting engine for all cars. added loading and emptying of the truck's trunk

//4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.

    //added boosting speed for sport car

//5. Создать несколько объектов каждого класса. Применить к ним различные действия.

var newKamazTruck = truckCar(brand: .kamaz, color: .white, yearOfProduction: 2018, bodyTrunkCapacity: 5_000, bodyTrunkOccupancy: 4_000, isEngineOn: false, areWindowsOpen: false, currentSpeed: 0)
newKamazTruck.truck(action: .emptyTheTruck)

var newVolvoTruck = truckCar(brand: .volvo, color: .black, yearOfProduction: 2020, bodyTrunkCapacity: 8_000, bodyTrunkOccupancy: 0, isEngineOn: false, areWindowsOpen: false, currentSpeed: 0)
newVolvoTruck.truck(action: .loadInTheTruck)
print("")

var newBugatti = sportCar(brand: .bugatti, color: .red, yearOfProduction: 2020, maxSpeed: 340, isEngineOn: true, areWindowsOpen: false, currentSpeed: 0)
newBugatti.engine(action: .stopEngine)

var newTesla = sportCar(brand: .tesla, color: .green, yearOfProduction: 2019, maxSpeed: 220, isEngineOn: false, areWindowsOpen: false, currentSpeed: 100)
newTesla.engine(action: .startEngine)

print("")

newBugatti.sportCarSpecial(action: .boostSpeedOn)
newTesla.sportCarSpecial(action: .boostSpeedOff)
print("")

//6. Вывести значения свойств экземпляров в консоль.

newKamazTruck.printCarProperties() //all properties printed
newVolvoTruck.printCarProperties()
print()

newTesla.printCarProperties()
newBugatti.printCarProperties()


print(newKamazTruck.bodyTrunkCapacity) //single property printed

