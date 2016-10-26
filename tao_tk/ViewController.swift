//
//  ViewController.swift
//  tao_tk
//
//  Created by ios on 10/7/16.
//  Copyright © 2016 ios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf_user: UITextField!

    @IBOutlet weak var tf_password: UITextField!
    
    var users = [String:String]()
   
    override func viewDidLoad() {
        
        super.viewDidLoad()


        for (tendangnhap, matkhau) in users
        {
            print("Ten Dang Nhap: \(tendangnhap)")
            print(matkhau)
        }
       
    }

    @IBAction func action_resetall(sender: AnyObject) {
       
        
        
        
        //Them vao users

//        for (tendangnhap, matkhau) in users
//          {
//             users[tf_user.text!] = "1"
//            matkhau == users["1"]
//            print("Ten Dang Nhap: \(tendangnhap)")
//            print("mat khau la:", matkhau )
//        }
      
        
    }
    @IBAction func action_DangNhap(sender: AnyObject) {
                print(tf_user.text!)
                print(tf_password.text!)
        
        
        if let password = users[tf_user.text!]
        {
            if password == tf_password.text
            {
                print("Dang Nhap Thanh Cong")
            }
            else
            {
                print("Mat Khau khong Dung")
            }
        }
        else
            {
                users[tf_user.text!] = tf_password.text!
                print("Tai Khoan Khong Ton Tai")
            }
        }
        
    
    
    @IBAction func action_DSNguoiDung(sender: AnyObject) {
        print(tf_user.text!)
        print(tf_password.text!)
        
        for (tendangnhap, matkhau) in users
        {
            print("Ten Dang Nhap: \(tendangnhap)")
            print(matkhau)
        }
        //Duong Dang
        let file = "/Users/ios/Desktop/11111.txt"
        
        //Doc du lieu tu file
        do{
            let text = try String(contentsOfFile: file)
            
            var data = text.components(separatedBy: ",")
            //in txt

            for (key) in data
            {
                var data = key.components(separatedBy: ":")

                
                users[data[0]] = data[1]
            }
            print(users)
        
        }
        catch{}

    }
    
    @IBAction func action_Sua(sender: AnyObject) {
        users[tf_user.text!] = tf_password.text!
        print(tf_user.text!)
        print(tf_password.text!)
        print("Da thay doi mat khau tai khoan: \(tf_user.text!) thanh \(tf_password.text!)")
        
    }
    
    @IBAction func action_Xoa(sender: AnyObject) {
        print(tf_user.text!)
        print(tf_password.text!)
        if let user = users.removeValue(forKey: tf_user.text!)
        {
            print("Da Xoa Tai Khoan: \(tf_user.text!) ")
        }
    }
    
    
    
    @IBAction func action_ResetPassworkAll(sender: AnyObject) {
        for matkhau    in users.values {
           
            
        }
        
    }
  
    
    }







