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
        let title: String = ""
        
        let stepOne : String = ""
        let stepTwo : String = ""
        let stepThree : String = ""
        let stepFour : String = ""
        let stepFive : String = ""
        let stepSix : String = ""
        let stepSeven : String = ""
        
        let algorithm = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix, stepSeven]
        
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

    private func createOutlineStyle() -> NSParagraphStyle{
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        
        return outlineStyle
    }

}

