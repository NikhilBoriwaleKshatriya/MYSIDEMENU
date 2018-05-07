//
//  ViewController.swift
//  MYSIDEMENU
//
//  Created by nikhil boriwale on 5/7/18.
//  Copyright © 2018 infostretch. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    

    @IBOutlet weak var sideview: UIView!
    @IBOutlet weak var mytable: UITableView!
    var issideviewopen :Bool = false
    
    var arrdata = ["uSERNAME","eMAIL","eDUCATION","mOBILE","lOGOUT"]
    var arrimg = [#imageLiteral(resourceName: "name"),#imageLiteral(resourceName: "email"),#imageLiteral(resourceName: "qual"),#imageLiteral(resourceName: "mobile"),#imageLiteral(resourceName: "password"),]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        sideview.isHidden = true
        mytable.backgroundColor = UIColor.groupTableViewBackground
        issideviewopen = false
        
    }
      

    @IBAction func btnmenuaction(_ sender: UIButton) {
        mytable.isHidden = false
        sideview.isHidden = false
        self.view.bringSubview(toFront: sideview)
        if !issideviewopen{
            issideviewopen = true
            
            // Close gheun   table & frame chi Size ghyachi
            sideview.frame = CGRect(x: 0, y: 67, width: 0, height: 600)
            mytable.frame = CGRect(x: 0, y: 0, width: 0, height: 600)
            
            UIView.setAnimationDuration(0.3)
            UIView.setAnimationDelegate(self)
            UIView.beginAnimations("table animation", context: nil)
            //table close
            sideview.frame = CGRect(x: 0, y: 67, width: 193, height: 600)
            mytable.frame = CGRect(x: 0, y: 0, width: 193, height: 600)
            UIView.commitAnimations()
        }else{
            mytable.isHidden = true
            sideview.isHidden = true
            issideviewopen = false
            sideview.frame = CGRect(x: 0, y: 67, width: 193, height: 600)
            mytable.frame = CGRect(x: 0, y: 0, width: 193, height: 600)
            UIView.setAnimationDuration(0.3)
            UIView.setAnimationDelegate(self)
            UIView.beginAnimations("TableAnimation", context: nil)
            sideview.frame = CGRect(x: 0, y: 67, width: 0, height: 600)
            mytable.frame = CGRect(x: 0, y: 0, width: 0, height: 600)
            
            UIView.commitAnimations()
        }
        
        
        
    }
    // Table method
   func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrdata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : sidemenutablecell = tableView.dequeueReusableCell(withIdentifier: "sidemenutablecell")as! sidemenutablecell
        cell.myimage.image = arrimg[indexPath.row]
        cell.lbloptionname.text = arrdata[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0
        {
            let namevc : usernameVC = self.storyboard?.instantiateViewController(withIdentifier: "usernameVC")as! usernameVC
            self.navigationController?.pushViewController(namevc, animated: true)
        }
        if indexPath.row == 1
        {
            let emailvc : emailVC = self.storyboard?.instantiateViewController(withIdentifier: "emailVC")as! emailVC
            self.navigationController?.pushViewController(emailvc, animated: true)
        }
    }
    

}

