//
//  ColorExtension.swift
//  ColorPicker
//
//  Created by Hendrik Ulbrich on 16.07.19.
//

import SwiftUI
import DynamicColor

// HACK in some module globals to adjust the saturation/brightness in the computed properties Angle extensions
var CPsaturation: CGFloat = 1.0
var CPbrightness: CGFloat = 1.0

extension Angle {
    var color: DynamicColor {
		DynamicColor(hue: CGFloat(self.radians / (2 * .pi)), saturation: CPsaturation, brightness: CPbrightness, alpha: 1)
    }
    
    var colorView: Color {
		Color(hue: self.radians / (2 * .pi), saturation: Double(CPsaturation), brightness: Double(CPbrightness))
    }
}

extension DynamicColor {
    var angle: Angle {
        Angle(radians: Double(2 * .pi * self.hueComponent))
    }
}

extension AngularGradient {
    static let conic = AngularGradient(gradient: Gradient.colorWheelSpectrum, center: .center, angle: .degrees(-90))
}

extension Gradient {
    static let colorWheelSpectrum: Gradient = Gradient(colors: [
        Angle(radians: 3/6 * .pi).colorView,
        
        Angle(radians: 2/6 * .pi).colorView,
        Angle(radians: 1/6 * .pi).colorView,
        Angle(radians: 12/6 * .pi).colorView,
        
        Angle(radians: 11/6 * .pi).colorView,
        
        Angle(radians: 10/6 * .pi).colorView,
        Angle(radians: 9/6 * .pi).colorView,
        Angle(radians: 8/6 * .pi).colorView,
        
        Angle(radians: 7/6 * .pi).colorView,
        
        Angle(radians: 6/6 * .pi).colorView,
        Angle(radians: 5/6 * .pi).colorView,
        Angle(radians: 4/6 * .pi).colorView,
        
        Angle(radians: 3/6 * .pi).colorView,
    ])
}
