//
//  ViewController.swift
//  AbstractFactoryMethod
//
//  Created by  Mr.Ki on 19.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var chair: Chair?
    var table: Table?
    var sofa: Sofa?
    
    var furniturearray = [Any]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func kitchenButtontapped(_ sender: Any) {
        chair = KitchenFactory().createChair()
        table = KitchenFactory().createTable()
        sofa = KitchenFactory().createSofa()
     //   print(sofa?.type)
//        chair?.name
//
//        if let chairOne = chair {
//            furniturearray.append(chairOne)
//        }
//        if let tableOne = table {
//            furniturearray.append(tableOne)
//        }
//        print(furniturearray[1])
        
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if (segue.identifier == "showFurniture") {
            let furnitureVC = FurnitureViewController()
            furnitureVC.chairF = BedroomFactory().createChair()
            furnitureVC.tableF = table
            furnitureVC.sofaF = sofa
            }
        }
        
        performSegue(withIdentifier: "showFurniture", sender: nil)
       
    }
    
    
    @IBAction func bedroomButton(_ sender: Any) {
        chair = BedroomFactory().createChair()
        table = BedroomFactory().createTable()
        sofa = BedroomFactory().createSofa()
        
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if (segue.identifier == "showFurniture") {
            let furnitureVC = FurnitureViewController()
            furnitureVC.chairF = BedroomFactory().createChair()
            furnitureVC.tableF = table
            furnitureVC.sofaF = sofa
            }
        }
        
        performSegue(withIdentifier: "showFurniture", sender: nil)
    }
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if (segue.identifier == "showFurniture") {
//        let furnitureVC = FurnitureViewController()
//        furnitureVC.chairF = chair
//        furnitureVC.tableF = table
//        furnitureVC.sofaF = sofa
//        }
//    }
    
    
    
    
}

