//
//  InstructionTextView.swift
//  GymTracker
//
//  Created by Максим Мельничук on 7.02.23.
//

import UIKit

class InstructionTextView : GTBaseView {
    
//MARK: - PROPERTIES
    var bicepsInstr = [String]()
    var legsInstr = [String]()
    var backInstr = [String]()
    var shouldersInstr = [String]()
    var chestInstr = [String]()
    var tricepsInstr = [String]()
    
    let textView : UITextView = {
       var view = UITextView()
        view.font = Resourses.Fonts.helveticaRegular(with: 16)
        view.textColor = Resourses.Colors.ExerciseCol.exInstrText
        view.text = ""
        view.isEditable = false
        view.sizeToFit()
        view.isScrollEnabled = false
        return view
    }()
}
extension InstructionTextView {

    override func setupViews() {
        super.setupViews()
        readBiceps()
        readLegs()
        readBack()
        readShoulders()
        readChest()
        readTriceps()
        setupView(textView)
        print(bicepsInstr)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
        
            textView.topAnchor.constraint(equalTo: topAnchor),
            textView.leadingAnchor.constraint(equalTo: leadingAnchor),
            textView.trailingAnchor.constraint(equalTo: trailingAnchor),
            textView.bottomAnchor.constraint(equalTo: bottomAnchor),
    
            ])
    }
    
    
    
    
        func readBiceps() {
            if let url = Bundle.main.path(forResource: "Bicepc", ofType: "txt") {
                if let file = try? String(contentsOfFile: url) {
                    bicepsInstr = file.components(separatedBy: "\n\n")
                    }
                }
        }
        func readLegs() {
            if let url = Bundle.main.path(forResource: "Legs", ofType: "txt") {
                if let file = try? String(contentsOfFile: url) {
                    bicepsInstr = file.components(separatedBy: "\n\n")
                    }
                }
        }
        func readBack() {
            if let url = Bundle.main.path(forResource: "Back", ofType: "txt") {
                if let file = try? String(contentsOfFile: url) {
                    bicepsInstr = file.components(separatedBy: "\n\n")
                    }
                }
        }
        func readShoulders() {
            if let url = Bundle.main.path(forResource: "Shoulders", ofType: "txt") {
                if let file = try? String(contentsOfFile: url) {
                    bicepsInstr = file.components(separatedBy: "\n\n")
                    }
                }
        }
        func readChest() {
            if let url = Bundle.main.path(forResource: "Chest", ofType: "txt") {
                if let file = try? String(contentsOfFile: url) {
                    bicepsInstr = file.components(separatedBy: "\n\n")
                    }
                }
        }
        func readTriceps() {
            if let url = Bundle.main.path(forResource: "Triceps", ofType: "txt") {
                if let file = try? String(contentsOfFile: url) {
                    tricepsInstr = file.components(separatedBy: "\n\n")
                    }
                }
        }
}
