//
//  ViewController.swift
//  猜數字練習一
//
//  Created by 王偉程 on 2021/7/8.
//

import UIKit

class ViewController: UIViewController {

    var answer = Int.random(in: 1...100)
    var minNumber = 1
    var maxNumber = 100
    var isOver = false
    
    
    @IBOutlet weak var boomimage: UIImageView!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
   
    @IBAction func makeAGuess(_ sender: UIButton) {
        if isOver == false{
            print(answer)
        let inputText = numberLabel.text!
            print("input text = \(inputText)")
            let inputNumber = Int(inputText)
            numberLabel.text = ""
            
        if inputNumber == nil{
            messageLabel.text = "輸入錯誤請輸入\(minNumber)~\(maxNumber)之間的數"}
        else{
            if inputNumber! > maxNumber{
                messageLabel.text = "太大了請輸入\(minNumber)~\(maxNumber)之間的數"
            }else if inputNumber! < minNumber{
                messageLabel.text = "太小了請輸入\(minNumber)~\(maxNumber)之間的數"
            }else{
                if inputNumber! == answer{
                    
                    messageLabel.text = "ＢＯＯＭＭ～ 按下Guess再玩一次"
                    isOver = true
                    boomimage.image = UIImage(named: "boom")
                }
                else{
                    if inputNumber! > answer{
                        maxNumber = inputNumber!}
                    else{
                        minNumber = inputNumber!}
                    messageLabel.text = "再試一次請輸入\(minNumber)~\(maxNumber)的數"}
            }
        }
        }else{
                        answer = Int.random(in: 1...100)
                        maxNumber = 100
                        minNumber = 1
                        isOver = false
                        messageLabel.text = "請輸入\(minNumber)~\(maxNumber)的數"
                        boomimage.image = UIImage(named: "bnt")
                    }
                    
                }
    
    @IBAction func numbers(_ sender: UIButton) {
        let inputNumber = sender.tag - 1
        if isOver == true{
        numberLabel.text = "\(inputNumber)"
            isOver = false }
        
        else if numberLabel.text != nil{
            numberLabel.text = numberLabel.text! + "\(inputNumber)"
        }
        
    }
    
    override func viewDidLoad() {
        boomimage.image = UIImage(named: "bnt")
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

