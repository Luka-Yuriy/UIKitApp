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
    @IBOutlet var slider: UISlider!
    @IBOutlet var textField: UITextField!
    @IBOutlet var swithLabel: UILabel!
    @IBOutlet var datePicker: UIDatePicker!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentedCotroller.insertSegment(withTitle: "Trird", at: 2, animated: false)
        setupSlider()
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
    
    @IBAction func sliderAction() {
        mainLabel.text = String(slider.value)
        view.backgroundColor = view.backgroundColor?.withAlphaComponent(CGFloat(slider.value))
    }
    
    @IBAction func doneButtonPressed() {
        guard let inputText = textField.text, !inputText.isEmpty else {
            showAlert(with: "Wrong format", and: "Enter your name")
            return
        }
        
        if let _ = Double(inputText) {
            showAlert(with: "Wrong format", and: "Enter your name")
            return
        }
        
        mainLabel.text = inputText
    }
    
    @IBAction func swithAction(_ sender: UISwitch) {
        datePicker.isHidden = !sender.isOn
        swithLabel.text = sender.isOn ? "Hide Date Picker" : "Show Date Picker"
    }
    
    @IBAction func datePickerAction() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        mainLabel.text = dateFormatter.string(from: datePicker.date)
    }
    
    // MARK: - Private Methods
    private func setupMainLabel () {
        mainLabel.text = "\(slider.value)"
        mainLabel.font = UIFont.systemFont(ofSize: 35)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
    }
    
    private func setupSlider () {
        slider.value = 1
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .red
        slider.thumbTintColor = .blue
    }
}

// MARK: - UIAlertController
extension ViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.textField.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
