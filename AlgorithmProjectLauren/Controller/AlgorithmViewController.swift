//
//  ViewController.swift
//  AlgorithmProjectLauren
//
//  Created by Davis, Lauren on 11/9/18.
//  Copyright © 2018 Davis, Lauren. All rights reserved.
//

import UIKit

class AlgorithmViewController: UIViewController
{

    @IBOutlet weak var swiftImage: UIImageView!
    @IBOutlet weak var algorithmText: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        formatAlgorithm()
    }

   
    private func formatAlgorithm() -> Void
    {
        let title: String = "Create an IOS App"
        
        let stepOne : String = "Open XCode and select ‘Create new XCode project’"
        let stepTwo : String = "Select ‘single view app,’ name your app, and save it to the workspace"
        let stepThree : String = "Create a folder for Controller, Model, View, and Resources and move the existing files to their appropriate folders"
        let stepFour : String = "Connect your info.plist to the app’s identity and set the Main.storyboard to automatically connect to the controller file"
        let stepFive : String = "Commit it to Github"
        let stepSix : String = "Use the Main.storyboard to begin designing your app’s GUI and programming the app."
        
        
        let algorithm = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: title, attributes: attributesDictionary)
        
        for step in algorithm
        {
            let bullet: String  = ""
            //interpolation
            let formattedStep : String = "\n\(bullet) \(step)"
            let attributedStringStep: NSMutableAttributedString = NSMutableAttributedString(String: formattedStep)
            let outlineStyle = createOutlineStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : outlineStyle], range: NSMakeRange(0, attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
            
        }
        algorithmText.attributedText = fullAttributedString
        
    }

    private func createOutlineStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        
        return outlineStyle
    }

}

