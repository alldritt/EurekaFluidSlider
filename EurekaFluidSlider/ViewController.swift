//
//  ViewController.swift
//  EurekaFluidSlider
//
//  Created by Mark Alldritt on 2018-01-07.
//  Copyright © 2018 Mark Alldritt. All rights reserved.
//

import UIKit
import Eureka
import ViewRow
import fluid_slider


class ViewController: FormViewController {

    override func viewDidLoad() {
        //  Present the form in a insetGrouped styled table
        if #available(iOS 13.0, *) {
            tableView = UITableView(frame: view.bounds, style: .insetGrouped)
            tableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            tableView.cellLayoutMarginsFollowReadableWidth = true
        }

        super.viewDidLoad()

        form
            +++ Section("Fluid Slider Demo")
                <<< LabelRow() { (row) in
                    row.title = "Label Above"
                }

                <<< ViewRow<SliderView>("slider")
                .cellSetup { (cell, row) in
                    let bundle = Bundle.main
                    let nib = UINib(nibName: "SliverView", bundle: bundle)
                    
                    cell.view = nib.instantiate(withOwner: self, options: nil)[0] as? SliderView
                    cell.view!.translatesAutoresizingMaskIntoConstraints = true
                }
            
                <<< LabelRow() { (row) in
                    row.title = "Label Between"
                }
            
                <<< ViewRow<SliderWithImagesView>("slider-with-images")
                .cellSetup { (cell, row) in
                    let bundle = Bundle.main
                    let nib = UINib(nibName: "SliderWithImagesView", bundle: bundle)
                    
                    cell.view = nib.instantiate(withOwner: self, options: nil)[0] as? SliderWithImagesView
                    cell.view!.translatesAutoresizingMaskIntoConstraints = true
                }

                <<< LabelRow() { (row) in
                    row.title = "Label Below"
                }
    }


}

