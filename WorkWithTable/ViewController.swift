//
//  ViewController.swift
//  WorkWithTable
//
//  Created by Evgeny on 3.07.22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
        
    @IBOutlet var tableView: UITableView!

    var colors: [String] = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple"]
    var selectIndexPath: IndexPath?

//    enum color: String {
//        case red = "Red"
//        case orange = "Orange"
//        case yellow = "Yellow"
//        case green = "Green"
//        case blue = "Blue"
//        case purple = "Purple"
//
//        func getColor() -> UIColor {
//            switch self {
//            case .red:
//                return UIColor(red: 179, green: 47, blue: 60, alpha: 1)
//
//            case .orange:
//                return UIColor(red: 248, green: 148, blue: 29, alpha: 1)
//
//            case .yellow:
//                return UIColor(red: 231, green: 217, blue: 54, alpha: 1)
//
//            case .green:
//                return UIColor(red: 57, green: 181, blue: 74, alpha: 1)
//
//            case .blue:
//                return UIColor(red: 0, green: 114, blue: 188, alpha: 1)
//
//            case .purple:
//                return UIColor(red: 146, green: 39, blue: 143, alpha: 1)
//            }
//        }
//
//    }
    
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self

        super.viewDidLoad()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "NameTableCell", for: indexPath)
        if let nameCell = cell as? NameTableCell {
        var currentColor: UIColor
            //"Red", "Orange", "Yellow", "Green", "Blue", "Purple"
        switch colors[indexPath.row]{
        case "Red": currentColor = .red
        case "Orange": currentColor = .orange
        case "Yellow": currentColor = .yellow
        case "Green": currentColor = .green
        case "Blue": currentColor = .blue
        case "Purple": currentColor = .purple
        default:
            currentColor = .white
        }
        nameCell.titleLabel.text = colors[indexPath.row]
        cell.backgroundColor = currentColor
        return nameCell
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var currentColor: UIColor
//        if indexPath == selectIndexPath {
//            tableView.deselectRow(at: indexPath, animated: true)
//            selectIndexPath = nil
//        } else {
//            selectIndexPath = indexPath
//        }
        
        switch colors[indexPath.row]{
        case "Red": currentColor = .red
        case "Orange": currentColor = .orange
        case "Yellow": currentColor = .yellow
        case "Green": currentColor = .green
        case "Blue": currentColor = .blue
        case "Purple": currentColor = .purple
        default:
            currentColor = .white
        }
        
        self.view.backgroundColor = currentColor
    }
    
}

