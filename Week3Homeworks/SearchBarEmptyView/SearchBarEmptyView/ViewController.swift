//
//  ViewController.swift
//  SearchBarEmptyView
//
//  Created by Ozan Sarisoy on 3.07.2021.
//

import UIKit

class ViewController: UIViewController,UISearchBarDelegate,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    var yemekler = [String]()
    var yemekisFiltered = [String]()
    var searchBarActive:Bool = false
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        yemekler = ["Adana Dürüm 🌯","Urfa Dürüm 🌯","Tavuk Dürüm🌯","Vejeteryan Dürüm🌯"]
        
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(searchBarActive && yemekisFiltered.count == 0){
            return 1
        }
        else if(searchBarActive){
            return self.yemekisFiltered.count
        }
        return yemekler.count
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "yemekCell", for: indexPath)
        
        if(searchBarActive && yemekisFiltered.count == 0){
            cell.textLabel?.text = "Aradığınız kriterde bir ürün bulunamadı"
        }
        else if searchBarActive {
            cell.textLabel?.text = yemekisFiltered[indexPath.row]
        }
        else{
            cell.textLabel?.text = yemekler[indexPath.row]
        }
        
        return cell
    }

    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchBarActive = true
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        searchBarActive = false
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBarActive = false
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBarActive = false
    }
    
    func searchBarBookmarkButtonClicked(_ searchBar: UISearchBar) {
        searchBarActive = false
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        yemekisFiltered = yemekler.filter({ (text) -> Bool in
            let txt : NSString = text as NSString
            let range = txt.range(of: searchText, options: NSString.CompareOptions.caseInsensitive)
            
            return range.location != NSNotFound
        })
        
        self.tableView.reloadData()
    }
}


