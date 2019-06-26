//
//  Page1InterfaceController.swift
//  APIDemo WatchKit Extension
//
//  Created by MacStudent on 2019-06-26.
//  Copyright © 2019 Parrot. All rights reserved.
//

import WatchKit
import Foundation


class Page1InterfaceController: WKInterfaceController {

    // MARK: Outlets
    // ----------
    
    //outlet for the table
    @IBOutlet var tableViewThing: WKInterfaceTable!
    
    
    // MARK: Data source
    var personDataList = [
        "pritesh",
        "patel",
        "p@gmail.com",
        "45.0",
        "-234.2",
        "ppatel",
        "1234"
    ]
    
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        // 1. Tell watch how many rows you want
        self.tableViewThing.setNumberOfRows(
            self.personDataList.count, withRowType:"myRow"
        )
        
        // 2. Tell watch what data goes in each row
        for (index, data) in self.personDataList.enumerated() {
            let row = self.tableViewThing.rowController(at: index) as! RowController
            row.outputLabel.setText(data)
        }
        
        
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
