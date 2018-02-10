//
//  ViewController.swift
//  trio
//
//  Created by mac on 2/11/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var searchHeaderV: UIView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    
    
    let data = [x1,x2,x3,x4,x5,x6,x7,x8,x9,x10]
    var editingMode = false
    var displayedData = [CellData]()
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self; tableView.dataSource = self
        searchBar.delegate = self;
        
        displayedData = data
    }
    
    
    @IBAction func searchTapped(_ sender: Any) {
        self.tabBarController?.tabBar.isHidden = true
        searchHeaderV.isHidden = false
    }
    
    @IBAction func cancelSearchTapped(_ sender: Any) {
        searchHeaderV.isHidden = true
        self.tabBarController?.tabBar.isHidden = false
    }
    
    //start editing
    @IBAction func optionTapped(_ sender: Any) {
        //2nd
        print("optionTapped")
        if editingMode == true {
            editingMode = false
            
        } else {
            editingMode = true
        }
        
        tableView.reloadData()
    }
}

extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText != nil || searchText != " " {
            displayedData = data.filter({ $0.title.lowercased().contains(searchText.lowercased()) })
            tableView.reloadData()
        }
        if searchText == "" {
            displayedData = data
            searchBar.resignFirstResponder()
            tableView.reloadData()
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell") as? TableCell {
            let cellD = displayedData[indexPath.row]
            
            
            cell.emailLbl.text = cellD.email
            cell.titleLbl.text = cellD.title
            cell.UIDLbl.text = cellD.uid
            cell.telNumberLbl.text = cellD.telNumber

            if editingMode == true {
                if cellD.selected {
                    cell.imageV.image = UIImage(named: "green")
                } else {
                    cell.imageV.image = UIImage(named: "gray")
                }
            } else {
                cell.imageV.image = UIImage(named: data[indexPath.row].image)
                
            }
            
            
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return displayedData.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if editingMode == true {
            let cell = tableView.cellForRow(at: indexPath) as! TableCell
            let celld = displayedData[indexPath.row]
            
            if celld.selected {
                celld.selected = false
                cell.imageV.image = UIImage(named: "gray")
                //cell.imageV.backgroundColor = UIColor.lightGray
            } else {
                celld.selected = true
                cell.imageV.image = UIImage(named: "green")
                //cell.imageV.backgroundColor = UIColor.green
            }
        }
        print(data)
    }

}
