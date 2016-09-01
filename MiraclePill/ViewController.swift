//
//  ViewController.swift
//  MiraclePill
//
//  Created by Pasha Bahadori on 8/30/16.
//  Copyright © 2016 Pelican. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    let states: [String] = ["Alabama","Alaska","Arizona","Arkansas","California","Colorado","Connecticut","Delaware","Florida","Georgia","Hawaii","Idaho","Illinois","Indiana","Iowa","Kansas","Kentucky","Louisiana","Maine","Maryland","Massachusetts","Michigan","Minnesota","Mississippi","Missouri","Montana","Nebraska","Nevada","New Hampshire","New Jersey","New Mexico","New York","North Carolina","North Dakota","Ohio","Oklahoma","Oregon","Pennsylvania","Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Utah","Vermont","Virginia","Washington","West Virginia","Wisconsin","Wyoming"]

    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        
    }
    
    @IBAction func stateBtnPressed(_ sender: UIButton) {
        statePicker.isHidden = false
        
    }
 
    
    // Our picker, when it loads in the screen, it's going to call the below function - How many functions do we want to put below here.
    // This is like the number of columns in a spreadsheet.
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        // We just want one since we only want one state
        return 1
    }
    
    // It's also going to want to know how many rows in each component do we want to put in here.
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        // How many rows we want depends on the states.
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        // Here it wants a title for the row. It's going to give you the row, and the component for that row. We don't care about the component since there is only one, so all we need to do is
        return states[row]   // [row] is an int
    }
    
    // This function is called when you choose an object from the picker
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // for the setTitle function, we set it as the object in the row from the array states. We grab it from the array and set it to the button
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
    }
    
}

