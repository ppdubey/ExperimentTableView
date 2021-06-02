//
//  ViewController.swift
//  practiseTableView
//
//  Created by user196667 on 6/1/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var tableView: UIView!
    
    var names  = [ 10, 20, 55, 10, 20, 55, 10, 20, 55,
                   10, 20, 55, 10, 20, 55, 10, 20, 55, 10, 20, 55, 10, 20, 55, 10, 20, 55, 10, 20, 55,
                   10, 20, 55,10, 20, 55,10, 20, 55,
                   10, 20, 55,10, 20, 55,10, 20, 55,
                   10, 20, 55,10, 20, 55,10, 20, 55]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(" selectec items : \(names[indexPath.row])")
        tableView.cellForRow(at: indexPath)?.backgroundColor = UIColor.blue
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.backgroundColor = nil
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCellFromXib", for: indexPath)
        
        cell.textLabel?.text = String(names[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        names.count
    }
}

