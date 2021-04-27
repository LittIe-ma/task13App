//
//  TableViewController.swift
//  task13App
//
//  Created by yasudamasato on 2021/04/23.
//

import UIKit

class TableViewController: UITableViewController {

    private var checklistItem = ["りんご", "みかん", "バナナ", "パイナップル"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        checklistItem.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell1", for: indexPath)

        let imageView = cell.viewWithTag(1) as! UIImageView

        if indexPath.row % 2 == 1 {
            imageView.image = UIImage(named: "check")
        }else {
            imageView.image = nil
        }

        let label = cell.viewWithTag(2) as! UILabel

        label.text = checklistItem[indexPath.row]

        return cell
    }
}
