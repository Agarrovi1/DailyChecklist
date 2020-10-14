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
    
    //MARK: - Constraints
    private func allConstraints() {
        editButtonConstraints()
        textBoxConstraints()
        tableViewConstraints()
    }
    
    private func textBoxConstraints() {
        view.addSubview(textBox)
        textBox.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textBox.topAnchor.constraint(equalTo: editButton.bottomAnchor),
            textBox.widthAnchor.constraint(equalTo: view.widthAnchor),
            textBox.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05)])
    }
    private func editButtonConstraints() {
        view.addSubview(editButton)
        editButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            editButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            editButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            editButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15),
            editButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05)
            ])
    }
    
    private func tableViewConstraints() {
        view.addSubview(listTableView)
        listTableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            listTableView.topAnchor.constraint(equalTo: textBox.bottomAnchor),
            listTableView.widthAnchor.constraint(equalTo: textBox.widthAnchor),
            listTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)])
    }

    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        allConstraints()
    }


}

