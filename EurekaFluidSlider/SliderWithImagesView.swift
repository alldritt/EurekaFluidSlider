//
//  SliderWithImagesView.swift
//  EurekaFluidSlider
//
//  Created by Mark Alldritt on 2018-01-07.
//  Copyright © 2018 Mark Alldritt. All rights reserved.
//

import UIKit
import fluid_slider


class SliderWithImagesView: UIView {

    @IBOutlet weak var sliderWithImages: Slider!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        let labelTextAttributes: [NSAttributedStringKey : Any] = [.font: UIFont.systemFont(ofSize: 12, weight: .bold), .foregroundColor: UIColor.white]
        sliderWithImages.attributedTextForFraction = { fraction in
            let formatter = NumberFormatter()
            formatter.maximumIntegerDigits = 3
            formatter.maximumFractionDigits = 0
            let string = formatter.string(from: (fraction * 800 + 100) as NSNumber) ?? ""
            return NSAttributedString(string: string, attributes: [.font: UIFont.systemFont(ofSize: 12, weight: .bold), .foregroundColor: UIColor.black])
        }
        sliderWithImages.setMinimumImage(UIImage(named: "banana"))
        sliderWithImages.setMaximumImage(UIImage(named: "cake"))
        sliderWithImages.imagesColor = UIColor.white.withAlphaComponent(0.8)
        sliderWithImages.setMinimumLabelAttributedText(NSAttributedString(string: "", attributes: labelTextAttributes))
        sliderWithImages.setMaximumLabelAttributedText(NSAttributedString(string: "", attributes: labelTextAttributes))
        sliderWithImages.fraction = 0.5
        sliderWithImages.shadowOffset = CGSize(width: 0, height: 7)
        sliderWithImages.shadowBlur = 5
        sliderWithImages.shadowColor = UIColor(white: 0, alpha: 0.1)
        sliderWithImages.contentViewColor = UIColor.purple
        sliderWithImages.valueViewColor = .white

    }
}
