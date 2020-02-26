//
//  ViewController.swift
//  Marguerita
//
//  Created by Bárbara Barone - BBA on 25/02/20.
//  Copyright © 2020 Bárbara Barone - BBA. All rights reserved.
//

import UIKit
import Charts

class ViewController: UIViewController {

    @IBOutlet weak var pizzaView: PieChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupPizzaChart()
    }
    
    func setupPizzaChart() {
        pizzaView.chartDescription?.enabled = false
        pizzaView.drawHoleEnabled  = false
        pizzaView.rotationAngle = 0
        pizzaView.rotationEnabled = false
        pizzaView.isUserInteractionEnabled = false
        
        pizzaView.legend.enabled = true
        
        var entries: [PieChartDataEntry] = Array()
        entries.append(PieChartDataEntry(value: 80.0, label: "Brasil" + "\n" + "80%"))
        entries.append(PieChartDataEntry(value: 30.0, label: "Noruega" + "\n" + "30%"))
        entries.append(PieChartDataEntry(value: 20.0, label: "Suiça" + "\n" + "20%"))
        entries.append(PieChartDataEntry(value: 40.0, label: "Irã" + "\n" + "10%"))
        entries.append(PieChartDataEntry(value: 40.0, label: "China" + "\n" + "40%"))
        
        let dataSet = PieChartDataSet(entries: entries, label: "                                                       ")
        
        let c1 = NSUIColor(hex: 0xFF33DA)
        let c2 = NSUIColor(hex: 0xFF3377)
        let c3 = NSUIColor(hex: 0x31E2AA)
        let c4 = NSUIColor(hex: 0xE24131)
        let c5 = NSUIColor(hex: 0x314FE2)
        
        dataSet.colors = [c1, c2, c3, c4, c5]
        dataSet.drawValuesEnabled = false
        
        pizzaView.data = PieChartData(dataSet: dataSet)
        
    }


}

