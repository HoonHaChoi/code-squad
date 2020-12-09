//
//  main.swift
//  codesquad
//
//  Created by HOONHA CHOI on 2020/12/07.
//

import Foundation

var cube = Cube()
cube.cubePrint()


while true {
    
    print("CUBE> ", separator: "", terminator: "")
    let input = readLine() ?? ""
    
    if input == "Q" || input == "q" {
        print("Bye~")
        break
    }
    cubeAction(input : input)
}

func cubeAction(input : String) {
    let actionText = inputConvert(input : input.map { String($0) })
    cube.process(input: actionText)
}

func inputConvert(input : [String]) -> [Action] {
    var tempArr = [String]()
    for i in 0..<input.count {
        if input[i] == "'" {
            tempArr[tempArr.count-1] += "'"
        } else {
            tempArr.append(input[i])
        }
    }
    return tempArr.compactMap { Action(rawValue: $0) }
}

