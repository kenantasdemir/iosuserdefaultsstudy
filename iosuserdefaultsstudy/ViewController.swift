//
//  ViewController.swift
//  iosuserdefaultsstudy
//
//  Created by kenan on 25.08.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let ud = UserDefaults.standard
        ud.set("Kenan",forKey:"name")
        ud.set(24,forKey:"age")
        ud.set(1.70, forKey: "height")
        ud.set(true, forKey: "isMarried")
        
        let friendList = ["Ahmet","Mehmet","Hasan"]
        ud.set(friendList,forKey:"friendList")
        
        let citiesList = ["16":"Bursa","34":"İstanbul"]
        ud.set(citiesList, forKey:  "citiesList")
        
        let name = ud.string(forKey: "name") ?? "NA"
        let age = ud.integer(forKey: "age")
        let height = ud.double(forKey: "height")
        let isMarried = ud.bool(forKey: "isMarried")
        
        print(name)
        print(age)
        print(height)
        print(isMarried)
        
        let liste = ud.array(forKey: "friendList") as? [String] ?? [String]()
        print(liste[0])
        
        let dict = ud.dictionary(forKey: "citiesList") as? [String:String] ?? [String:String]()
        print(dict["16"]!)
        
        ud.removeObject(forKey: "name")
        let adx = ud.string(forKey: "name") ?? "NA"
        print(adx)
    }
    
   



}

