//
//  MGStatisticView.swift
//
//
//  Created by Michael Gasparik on 29/07/15.
//  Copyright (c) Michael Gasparik. All rights reserved.
//

import UIKit


let leftSideViewColor = UIColor.greenColor()
let rightSideViewcolor = UIColor.redColor()
let leftSideLabelColor = UIColor.whiteColor()
let rightSideLabelColor = UIColor.whiteColor()
let titleLabelColor = UIColor.blueColor()

let labelPadding : CGFloat = 10.0
let spaceForTitle : CGFloat = 20

let fontTitle = UIFont.boldSystemFontOfSize(14)
let fontNumber = UIFont.boldSystemFontOfSize(14)

class MGStatisticView: UIView {
    
    init(frame: CGRect, leftValue:Int, rightValue: Int, title: String) {
        super.init(frame: frame)
        setup(leftValue, rightValue: rightValue, title: title)
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    
    func setup(leftValue:Int, rightValue: Int, title: String){
        var total = leftValue + rightValue
        var maxSize = self.frame.size.width
        var leftSize = maxSize / CGFloat(total) * CGFloat(leftValue)
        var rightSize = maxSize - leftSize
        
        var titleView = UIView(frame: CGRectMake(0, 0, self.frame.size.width, spaceForTitle))
        var titleLabel = UILabel(frame: CGRectMake(labelPadding, 0, titleView.frame.size.width, titleView.frame.size.height))
        titleLabel.font = fontTitle
        titleLabel.text = title
        titleLabel.textColor = titleLabelColor
        titleView.addSubview(titleLabel)
        self.addSubview(titleView)
        
        var leftView = UIView(frame: CGRectMake(0, spaceForTitle, leftSize, self.frame.size.height-spaceForTitle))
        var rightView = UIView(frame: CGRectMake(leftSize, spaceForTitle, rightSize, self.frame.size.height-spaceForTitle))
        
        leftView.backgroundColor = leftSideViewColor
        rightView.backgroundColor = rightSideViewcolor
        
        var leftLabel = UILabel(frame: CGRectMake(0, 0, leftView.frame.size.width-labelPadding, leftView.frame.size.height))
        leftLabel.text = "\(leftValue)"
        leftLabel.textColor = leftSideLabelColor
        leftLabel.textAlignment = NSTextAlignment.Right
        leftLabel.font = fontNumber
        leftView.addSubview(leftLabel)
        
        var rightLabel = UILabel(frame: CGRectMake(labelPadding, 0, rightView.frame.size.width-labelPadding, rightView.frame.size.height))
        rightLabel.text = "\(rightValue)"
        rightLabel.textColor = rightSideLabelColor
        rightLabel.textAlignment = NSTextAlignment.Left
        rightLabel.font = fontNumber
        rightView.addSubview(rightLabel)
        
        self.addSubview(leftView)
        self.addSubview(rightView)
    }

}
