//
//  PageViewController.swift
//  12.Hafta
//
//  Created by Sümeyye Kılıçoğlu on 22.09.2022.
//

import UIKit
import TinyConstraints

    class PageViewController: UIViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
       
        
        var myController = [UIViewController]()
        override func viewDidLoad() {
            super.viewDidLoad()
            let pages: [String] = [ "Change Color1", "Change Color2",
              "Change Color3", "Change Color4"
           ]
            for text in pages {
                let vc = LabelViewController(with: text)
                myController.append(vc)
            }
        }
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            DispatchQueue.main.asyncAfter(deadline: .now()+2, execute: {self.presentPageVC() })
            
        }
        
        func presentPageVC() {
            guard let first = myController.first else {
                return
            }
            let vc = UIPageViewController(transitionStyle: .pageCurl,
                                          navigationOrientation: .horizontal,
                                          options: nil )
            vc.delegate = self
            vc.dataSource = self
            
            vc.setViewControllers([first],
                                  direction: .forward,
                                  animated: true,
                                  completion: nil)
            present(vc, animated: true)
            
        }
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
            guard let index = myController.firstIndex(of: viewController), index > 0 else {
                return nil
            }
            let before = index - 1
            return myController[before]
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
          
            guard let index = myController.firstIndex(of: viewController), index < (myController.count - 1) else {
                return nil
            }
            let after = index + 1
            return myController[after]
        }
    }


    
