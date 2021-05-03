//
//  TableViewController.swift
//  task13App
//
//  Created by yasudamasato on 2021/04/23.
//

import UIKit

class TableViewController: UITableViewController {

    private let checklistItems = ["りんご", "みかん", "バナナ", "パイナップル"]

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        checklistItems.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! ItemCell

        cell.configure(
            name: checklistItems[indexPath.row],
            isChecked: indexPath.row % 2 == 1
        )

        return cell
    }
}
