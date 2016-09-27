//
//  ViewController.swift
//  ObjectMapperSample
//
//  Created by Yuta Fujita on 2016/09/28.
//  Copyright © 2016年 Yuta Fujita. All rights reserved.
//

import UIKit
import ObjectMapper
import SwiftyUserDefaults


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // つめこむ
        let model = SampleModel()
        model.username = "hogehoge"
        model.age = 100
        
        // ほぞん
        let json = model.toJSONString()
        print("toJson: \(json)")
        Defaults[.json] = json
        
        // ほぞんでーた
        print("保存: \(Defaults[.json])")
        
        // ふくげん
        let json2 = Defaults[.json]
        let model2 = SampleModel(JSONString: json2 ?? "")
        let json3 = model2?.toJSONString()
        print("復元: \(json3)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

