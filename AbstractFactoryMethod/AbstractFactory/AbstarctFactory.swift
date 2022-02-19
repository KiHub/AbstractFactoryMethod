//
//  AbstarctFactory.swift
//  AbstractFactoryMethod
//
//  Created by  Mr.Ki on 19.02.2022.
//

import Foundation


protocol AbstractFactory {
    func createChair() -> Chair
    func createSofa() -> Sofa
    func createTable() -> Table
    
}
