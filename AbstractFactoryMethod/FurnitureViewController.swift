//
//  FurnitureViewController.swift
//  AbstractFactoryMethod
//
//  Created by  Mr.Ki on 20.02.2022.
//

import UIKit

class FurnitureViewController: UIViewController {
    
    var chairF: Chair?
    var tableF: Table?
    var sofaF: Sofa?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(chairF?.name ?? "Error")

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension FurnitureViewController: UITableViewDelegate, UITableViewDataSource {
    // number of rows in table view
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 3
        }
        
        // create a cell for each table view row
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            cell.textLabel?.text = chairF?.name ?? "Error"
            
   return cell
        }
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
//        
//        return cell
//    }
//    
//    

}
