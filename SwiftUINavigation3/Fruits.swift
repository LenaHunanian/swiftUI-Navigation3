//
//  Fruits.swift
//  SwiftUINavigation3
//
//  Created by Lena Hunanian on 08.08.25.
//
import SwiftUI

struct Fruit: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let info: String
}

let fruits: [Fruit] = [
    Fruit(name: "Apple", info: "Red and round, can be sweet or sour, depending on the variety"),
    Fruit(name: "Banana", info: "Yellow and curved, sweet and loved by monkeys"),
    Fruit(name: "Orange", info: "Orange and round, citrus fruit full of vitamin C"),
    Fruit(name: "Strawberry", info: "Red and juicy, often eaten fresh or in desserts"),
    Fruit(name: "Blueberry", info: "Blue and round, small fruit rich in antioxidants"),
]
