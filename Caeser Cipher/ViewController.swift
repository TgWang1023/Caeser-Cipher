//
//  ViewController.swift
//  Caeser Cipher
//
//  Created by Tiange Wang on 9/19/18.
//  Copyright © 2018 Tiange Wang. All rights reserved.
//

import Cocoa

extension String {
    var asciiValue: Int {
        return Int(unicodeScalars[unicodeScalars.startIndex].value)
    }
}
class ViewController: NSViewController {

    @IBOutlet weak var textField: NSTextField!
    @IBOutlet weak var shiftAmount: NSTextField!
    
    @IBAction func encryptPressed(_ sender: NSButton) {
        var str = textField.stringValue
        var result: String = ""
        var ascii: [Int] = []
        for _ in str {
            ascii.append(str.asciiValue)
            str.removeFirst()
        }
        print(ascii)
        for i in 0..<ascii.count {
            ascii[i] += Int(shiftAmount.stringValue)!
            result += String(UnicodeScalar(ascii[i])!)
        }
        textField.stringValue = result
    }
    @IBAction func decryptPressed(_ sender: NSButton) {
        var str = textField.stringValue
        var result: String = ""
        var ascii: [Int] = []
        for _ in str {
            ascii.append(str.asciiValue)
            str.removeFirst()
        }
        print(ascii)
        for i in 0..<ascii.count {
            ascii[i] -= Int(shiftAmount.stringValue)!
            result += String(UnicodeScalar(ascii[i])!)
        }
        textField.stringValue = result
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

