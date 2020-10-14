//
//  ViewController.swift
//  DailyChecklist
//
//  Created by Angela Garrovillas on 10/14/20.
//  Copyright © 2020 Angela Garrovillas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - UIObjects
    var listTableView: UITableView = {
        let table = UITableView()
        table.backgroundColor = .blue
        table.register(ListCell.self, forCellReuseIdentifier: "ListCell")
        return table
    }()
    var textBox: UITextField = {
        let box = UITextField()
        box.backgroundColor = .gray
        return box
    }()
    var editButton: UIButton = {
        let button = UIButton()
        button.setTitle("Edit", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()

    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

