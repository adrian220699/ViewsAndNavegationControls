//
//  GreenViewController.swift
//  ViewsAndNavegationControls
//
//  Created by Adrian Flores Herrera on 8/3/24.
//

import UIKit

class GreenViewController: UIViewController {
    
    @IBOutlet weak var mySearchBar: UISearchBar!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myLabel.isHidden = true
        
        mySearchBar.delegate = self
        
    }

}

extension GreenViewController : UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        mySearchBar.resignFirstResponder()
        myLabel.text = mySearchBar.text
        myLabel.isHidden = false
        
    }
}
