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

enum Brands {
    case tesla, vw, bmw, mercedes, masertti, bugatti, audi, porsche, man, kamaz
}

enum EngineState {
    case engineIsOn
    case engineIsOff
}

class Car {
    let brand: Brands
    let color: Color
    let yearOfProduction: Int
    
    init(brand: Branks, color: Color, yearOfProduction: Int) {
        brand: Brands
        color: Color
        yearOfProduction: Int
    }
}

//2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.

class truckCar: Car {
    let bodyTrunkCapacity: Int
    let bodyTrunkOccupancy: Int
    
    super.init(brand: Branks, color: Color, yearOfProduction: Int)
    
    
}

class sportCar: Car {
    let maxSpeed: Int
    
    super.init(brand: Branks, color: Color, yearOfProduction: Int)
    
}

//3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.

//4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.

//5. Создать несколько объектов каждого класса. Применить к ним различные действия.

//6. Вывести значения свойств экземпляров в консоль.
