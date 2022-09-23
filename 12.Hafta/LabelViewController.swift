//
//  LabelViewController.swift
//  12.Hafta
//
//  Created by Sümeyye Kılıçoğlu on 23.09.2022.
//

import UIKit

class LabelViewController: UIViewController {

    var labelA = true
        let myText: String
        private let label: UILabel = {
            let label = UILabel()
            label.font = .systemFont(ofSize: 24)
            label.textColor = .black
            
            return label
        }()
        
        init(with text: String) {
            self.myText = text
            label.text = self.myText
            super.init(nibName: nil, bundle: nil)
            
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
          
            
            label.isUserInteractionEnabled = true
            view.addSubview(self.label)
            let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changeColor))
            label.addGestureRecognizer(gestureRecognizer)

        }
    @objc func changeColor() {
        
        
        
        if labelA ==  true {
            label.backgroundColor = .green
            labelA = false
            
            
        } else {
            label.backgroundColor = .red
            labelA = true
        }
        
    }
       

override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            label.edgesToSuperview()
        }

}
