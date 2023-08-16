//
//  WorkingWithString.swift
//  05_Word_scramble
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 20/4/23.
//

import SwiftUI

struct WorkingWithString: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    func test(){
        let word = "Swift"
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        let allGood = misspelledRange.location == NSNotFound
    }
}

struct WorkingWithString_Previews: PreviewProvider {
    static var previews: some View {
        WorkingWithString()
    }
}
