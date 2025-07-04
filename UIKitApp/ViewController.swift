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
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentedCotroller.insertSegment(withTitle: "Trird", at: 2, animated: false)
        setupMainLabel()
    }
    
    // MARK: - IB Actions
    @IBAction func segmentedControllerAction() {
        switch segmentedCotroller.selectedSegmentIndex {
        case 0:
            mainLabel.text = "The first segment is selected"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "The second segment is selected"
            mainLabel.textColor = .blue
        default:
            mainLabel.text = "The third segment is selected"
            mainLabel.textColor = .yellow
        }
    }
    
    // MARK: - Private Methods
    private func setupMainLabel () {
        mainLabel.text = ""
        mainLabel.font = UIFont.systemFont(ofSize: 35)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
    }
}

