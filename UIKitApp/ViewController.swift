//
//  ViewController.swift
//  UIKitApp
//
//  Created by Yurii Luka on 04.07.2025.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var segmentedCotroller: UISegmentedControl!
    @IBOutlet var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentedCotroller.insertSegment(withTitle: "Trird", at: 2, animated: false)
        setupMainLabel()
    }
    
    // MARK: - IB Actions
    @IBAction func segmentedControllerAction() {
        
    }
    
    // MARK: - Private Methods
    private func setupMainLabel () {
        mainLabel.text = ""
        mainLabel.font = UIFont.systemFont(ofSize: 35)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
    }

}

