//
//  ViewController.swift
//  ６、TableView
//
//  Created by 小野　櫻 on 2018/06/08.
//  Copyright © 2018年 小野　櫻. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{
    
    @IBOutlet weak var tableView:UITableView!
    
    let random = arc4random_uniform(100)
    let data = [arc4random_uniform(100)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // デリゲート
        tableView.dataSource = self
        
    }
    
    //セルの数を指定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //ここでセル生成の数が指定される
        return 20
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // セル生成
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let num1: Int = Int(arc4random_uniform(100))
        
        let sNum1:String = String(num1)
        
        cell.textLabel?.text = sNum1
        return cell
    }
    
}
