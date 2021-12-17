//
//  ViewController.swift
//  Random Date Generator
//
//

import UIKit
import Foundation
/*
struct Stack<Element> {
    private var myArray: [Element] = []
    
    mutating func push(_ element: Element) {
        myArray.append(element)
    }
    mutating func pop() -> Element? {
        return myArray.popLast()
    }
}

var myStack = Stack<String>()
 */

var myArray = [String]()
func push(_ element: String) {
    myArray.append(element)
}
func pop() -> String? {
    return myArray.removeFirst()
}

class ViewController: UIViewController {
    
    // UI Buttons
    @IBOutlet weak var high_button: UIButton!
    @IBOutlet weak var low_button: UIButton!
    @IBOutlet weak var romantic_button: UIButton!
    @IBOutlet weak var casual_button: UIButton!
    @IBOutlet weak var summer_button: UIButton!
    @IBOutlet weak var winter_button: UIButton!
    @IBOutlet weak var first_date_button: UIButton!
    @IBOutlet weak var basically_married_button: UIButton!
    @IBOutlet weak var start_button: UIButton!
    @IBOutlet weak var random_button: UIButton!
    @IBOutlet weak var reset_button: UIButton!
    @IBOutlet weak var generate_button: UIButton!
    
    // UI Labels
    @IBOutlet weak var first_date_label: UILabel!
    @IBOutlet weak var destination_label: UILabel!
    @IBOutlet weak var season_label: UILabel!
    @IBOutlet weak var type_of_label: UILabel!
    @IBOutlet weak var bank_label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // border colors for buttons and labels
        start_button.layer.borderColor = UIColor.white.cgColor
        destination_label.layer.borderColor = UIColor.white.cgColor
        first_date_button.layer.borderColor = UIColor.white.cgColor
        basically_married_button.layer.borderColor = UIColor.white.cgColor
        winter_button.layer.borderColor = UIColor.white.cgColor
        summer_button.layer.borderColor = UIColor.white.cgColor
        casual_button.layer.borderColor = UIColor.white.cgColor
        high_button.layer.borderColor = UIColor.white.cgColor
        low_button.layer.borderColor = UIColor.white.cgColor
        romantic_button.layer.borderColor = UIColor.white.cgColor
        generate_button.layer.borderColor = UIColor.white.cgColor
        random_button.layer.borderColor = UIColor.white.cgColor
        reset_button.layer.borderColor = UIColor.white.cgColor


        // border widths for buttons and labels
        destination_label.layer.borderWidth = 2
        first_date_button.layer.borderWidth = 0.5
        basically_married_button.layer.borderWidth = 0.5
        start_button.layer.borderWidth = 0.5
        summer_button.layer.borderWidth = 0.5
        winter_button.layer.borderWidth = 0.5
        casual_button.layer.borderWidth = 0.5
        high_button.layer.borderWidth = 0.5
        low_button.layer.borderWidth = 0.5
        romantic_button.layer.borderWidth = 0.5
        random_button.layer.borderWidth = 0.5
        reset_button.layer.borderWidth = 0.5
        generate_button.layer.borderWidth = 0.5

        
        // corner radius for buttons and labels
        first_date_button.layer.cornerRadius = 35
        basically_married_button.layer.cornerRadius = 35
        start_button.layer.cornerRadius = 40
        summer_button.layer.cornerRadius = 35
        winter_button.layer.cornerRadius = 35
        casual_button.layer.cornerRadius = 35
        destination_label.layer.cornerRadius = 35
        low_button.layer.cornerRadius = 35
        high_button.layer.cornerRadius = 35
        romantic_button.layer.cornerRadius = 35
        generate_button.layer.cornerRadius = 40
        reset_button.layer.cornerRadius = 20
        random_button.layer.cornerRadius = 15
        
        
        // hidden or not hidden
        reset_button.isHidden = true
        start_button.isHidden = false
        first_date_button.isHidden = true
        basically_married_button.isHidden = true
        summer_button.isHidden = true
        winter_button.isHidden = true
        casual_button.isHidden = true
        low_button.isHidden = true
        high_button.isHidden = true
        romantic_button.isHidden = true
        generate_button.isHidden = true
        bank_label.isHidden = true
        type_of_label.isHidden = true
        season_label.isHidden = true
        first_date_label.isHidden = true

        // Do any additional setup after loading the view.
    }

    // Action Buttons
    @IBAction func first_date(_ sender: Any) {
        //first_date_label.isHidden = false
        first_date_label.text = "First Date"
        if (first_date_label.text == "First Date")
        {
            push("F")
        }
        first_date_button.isHidden = true
        basically_married_button.isHidden = true
        summer_button.isHidden = false
        winter_button.isHidden = false
        destination_label.text = "What is the season looking like?"
        
    }
    @IBAction func basically_married(_ sender: Any) {
        //first_date_label.isHidden = false
        first_date_label.text = "Basically Married"
        if (first_date_label.text == "Basically Married") {
            push("B")
        }
        first_date_button.isHidden = true
        basically_married_button.isHidden = true
        summer_button.isHidden = false
        winter_button.isHidden = false
        destination_label.text = "What is the season looking like?"
    }
    @IBAction func winter(_ sender: Any) {
        //season_label.isHidden = false
        season_label.text = "Winter"
        season_label.isHidden = true
        if (season_label.text == "Winter") {
            push("W")
        }
        else {
            return
        }
        destination_label.text = "What kind of date is this?"
        summer_button.isHidden = true
        winter_button.isHidden = true
        romantic_button.isHidden = false
        casual_button.isHidden = false
    }
    @IBAction func summer(_ sender: Any) {
        //season_label.isHidden = false
        season_label.text = "Summer"
        if (season_label.text == "Summer") {
            push("S")
        }
        destination_label.text = "What kind of date is this?"
        summer_button.isHidden = true
        winter_button.isHidden = true
        romantic_button.isHidden = false
        casual_button.isHidden = false
    }
    @IBAction func casual(_ sender: Any) {
        //type_of_label.isHidden = false
        type_of_label.text = "Casual"
        if (type_of_label.text == "Casual") {
            push("C")
        }
        destination_label.text = "What is your budget looking like?"
        casual_button.isHidden = true
        romantic_button.isHidden = true
        low_button.isHidden = false
        high_button.isHidden = false
    }
    @IBAction func romantic(_ sender: Any) {
        //type_of_label.isHidden = false
        type_of_label.text = "Romantic"
        if (type_of_label.text == "Romantic") {
            push("R")
        }
        destination_label.text = "What is your budget looking like?"
        casual_button.isHidden = true
        romantic_button.isHidden = true
        low_button.isHidden = false
        high_button.isHidden = false
    }
    @IBAction func low(_ sender: Any) {
        destination_label.text = "Click Generate to see your date!"
        //bank_label.isHidden = false
        bank_label.text = "Low"
        if (bank_label.text == "Low") {
            push("L")
        }
        low_button.isHidden = true
        high_button.isHidden = true
        generate_button.isHidden = false
    }
    @IBAction func high(_ sender: Any) {
        destination_label.text = "Click Generate to see your date!"
        //bank_label.isHidden = false
        bank_label.text = "High"
        if (bank_label.text == "High") {
            push("H")
        }
        low_button.isHidden = true
        high_button.isHidden = true
        generate_button.isHidden = false
    }
    @IBAction func start(_ sender: Any) {
        destination_label.text = "What is your relationship looking like?"
        start_button.isHidden = true
        first_date_button.isHidden = false
        basically_married_button.isHidden = false
        random_button.isHidden = true
    }
    @IBAction func random(_ sender: Any) {
        let random_array = ["Put your sweaters on, and go grab some cheap hot coco from your nearest coffee shop", "Invite them over for some board games", "If Christmas hasn't passed, go around your neighborhood to see all the Christmas decorations", "The movie theater never hurt anyone. Just grab some snacks at Dollar Tree before you go in", "Slather sunscreen on, and head over to your local pool", "Dust off your old helmets because you're going bike riding", "A picnic is a summer date staple", "Do I hear a reservation for a fancy restaurant?", "Take ballroom dancing lessons", "Nothing says romantic like a hot air balloon ride over the city", "Take turns giving each other massages", "Competition to cook each other dinner. Afterwards, eat while watching your guys' favorite show"]
        destination_label.text = random_array.randomElement()
    }
    @IBAction func reset(_ sender: Any) {
        random_button.isHidden = false
        reset_button.isHidden = true
        for i in 0...3 {
            pop()
        }

        destination_label.text = "Hi, answer a few questions or press the RANDOM button"
        start_button.isHidden = false
        first_date_button.isHidden = true
        basically_married_button.isHidden = true
        summer_button.isHidden = true
        winter_button.isHidden = true
        casual_button.isHidden = true
        low_button.isHidden = true
        high_button.isHidden = true
        romantic_button.isHidden = true
        generate_button.isHidden = true
        bank_label.isHidden = true
        type_of_label.isHidden = true
        season_label.isHidden = true
        first_date_label.isHidden = true
    }
    @IBAction func generate(_ sender: Any) {
        reset_button.isHidden = false
        let wcl_array = ["Put your sweaters on, and go grab some cheap hot coco from your nearest coffee shop", "Invite them over for some board games", "If Christmas hasn't passed, go around your neighborhood to see all the Christmas decorations", "The movie theater never hurt anyone. Just grab some snacks at Dollar Tree before you go in"]
        let scl_array = ["Slather sunscreen on, and head over to your local pool", "Dust off your old helmets because you're going bike riding", "A picnic is a summer date staple"]
        let rh_array = ["Do I hear a reservation for a fancy restaurant?", "Take ballroom dancing lessons", "Nothing says romantic like a hot air balloon ride over the city"]
        let bl_array = ["Take turns giving each other massages", "Competition to cook each other dinner. Afterwards, eat while watching your guys' favorite show"]
        if (myArray[1] == "W" && myArray[2] == "C" && myArray[3] == "L") {
            destination_label.text = wcl_array.randomElement()
        }
        else if (myArray[1] == "S" && myArray[2] == "C" && myArray[3] == "L") {
            destination_label.text = scl_array.randomElement()
        }
        else if (myArray[2] == "R" && myArray[3] == "H") {
            destination_label.text = rh_array.randomElement()
        }
        else if (myArray[0] == "B" && myArray[3] == "L") {
            destination_label.text = bl_array.randomElement()
        }
    }
}





/*
 
 first, winter, romantic, low
 first, summer, romanitc, low
 first, winter, casual, low
 first, winter, casual, high
 
 
 
 */
