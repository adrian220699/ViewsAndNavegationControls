//
//  PageViewController.swift
//  ViewsAndNavegationControls
//
//  Created by Adrian Flores Herrera on 8/2/24.
//

import UIKit

class PageViewController: UIPageViewController {
    
    private var myControllers: [UIViewController] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let myGreenVc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vcGreen")
        
        let myPinkVc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vcPink")
        
        myControllers.append(myGreenVc)
        myControllers.append(myPinkVc )
        
        
        setViewControllers([myGreenVc], direction: .forward, animated: true,completion: nil)
        
        dataSource = self
    }
}


extension PageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let index = myControllers.firstIndex(of: viewController)
        
        if index == 0 {
            return myControllers.last
        }
        return myControllers.first
    
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
    
        let index = myControllers.firstIndex(of: viewController)
        
        if index == 0 {
            return myControllers.last
        }
        return myControllers.first
        
    }
}
