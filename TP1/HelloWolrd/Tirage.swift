//
//  Tirage.swift
//  HelloWolrd
//
//  Created by Sylvain BESSONNEAU on 14/12/2020.
//

import Foundation

class Tirage{
    func tirage() -> [Int] {
        var tab = Set<Int>()
        while tab.count != 5 {
            tab.insert(Int.random(in:1..<50))
        }

        var r = Array(tab)
        r.sort()
        return r
    }
}
