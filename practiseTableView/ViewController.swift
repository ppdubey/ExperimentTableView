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
    
    // MARK : DidSelectRow
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(" selectec items : \(names[indexPath.row])")
        tableView.cellForRow(at: indexPath)?.backgroundColor = UIColor.blue
    }
    
    // MARK : DidDe-SelectRow
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.backgroundColor = nil
    }
    
    // MARK : CellForRowAt
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! myCellClassTableViewCell
        
        cell.setLabel(labelVal: String(names[indexPath.row]))
        //cell.textLabel?.text = String(names[indexPath.row])
        //cell.imageView?.image = UIImage(named: "birdie")
        
        return cell
    }
    
    // MARK : NumberOfRows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        names.count
    }
}

