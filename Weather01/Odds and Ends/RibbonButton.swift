//
//  RibbonButton.swift
//  Weather01
//
//  Created by Vincent O'Sullivan on 08/01/2017.
//  Copyright © 2017 Rose Cottage. All rights reserved.
//

import UIKit


/// A button stylised to look like a ribbon with fancy cut ends.
class RibbonButton: UIButton {

    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }

        let indent = rect.maxY / 4.0
        context.beginPath()
        // Start at top left.
        context.move(to:    CGPoint(x: rect.minX, y: rect.minY))
        // Draw to half way down and indent a bit.
        context.addLine(to: CGPoint(x: indent, y: rect.maxY / 2.0 ))
        // Draw to bottom left.
        context.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        // Draw to across to bottom right.
        context.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        // Draw to half way up and indent a bit.
        context.addLine(to: CGPoint(x: rect.maxX - indent, y: rect.maxY / 2.0))
        // Draw to top right
        context.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        // Finally draw bact to the starting point (top left).
        context.closePath()

        // Colour in the path above.
        context.setFillColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 1.0)
        context.fillPath()

        super.draw(rect)
    }
}
