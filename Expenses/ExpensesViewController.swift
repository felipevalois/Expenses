//
//  ExpensesViewController.swift
//  Expenses
//
//  Created by Felipe Costa on 6/15/19.
//  Copyright © 2019 Felipe Costa. All rights reserved.
//

import UIKit

class ExpensesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    struct Expenses {
        var title: String
        var amount: Double
        var date: Date
    }
    
    var expensesArray = [Expenses]()
    
    var formatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        formatter.dateFormat = "MMMM dd, yyyy HH:mm"
        let dateArray = ["June 1, 2018 18:30", "May 30, 2018 12:17", "May 30, 2018 11:43", "May 29, 2018 8:45"]
        
        let convertedDateArray: [Date?] = [ formatter.date(from: dateArray[0]),
                                            formatter.date(from: dateArray[1]),
                                            formatter.date(from: dateArray[2]),
                                            formatter.date(from: dateArray[3])]
        
        expensesArray.append(Expenses(title: "Dinner", amount: 32.50, date: convertedDateArray[0]!))
        expensesArray.append(Expenses(title: "Office Supplies", amount: 59.34, date: convertedDateArray[1]!))
        expensesArray.append(Expenses(title: "Uber", amount: 16.23, date: convertedDateArray[2]!))
        expensesArray.append(Expenses(title: "Coffee", amount: 3.95, date: convertedDateArray[3]!))
        
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expensesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "expenseTableCell", for: indexPath)
        
        if let cell = cell as? ExpensesTableViewCell {
            let expense = expensesArray[indexPath.row]
            cell.title.text = expense.title
            cell.amount.text = String(format:"%.2f", expense.amount)
            cell.date.text = formatter.string(from: expense.date)
        }
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        //Only one section being used in TableView
        return 1;
    }

}
