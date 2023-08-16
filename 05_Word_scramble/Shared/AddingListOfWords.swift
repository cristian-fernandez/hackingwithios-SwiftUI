//
//  AddingListOfWords.swift
//  05_Word_scramble
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 20/4/23.
//

import SwiftUI

struct AddingListOfWords: View {
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""
    
    @State private var errorTitle = ""
    @State private var errorMessage = ""
    @State private var showingError = false
    
    var body: some View {
        NavigationView{
            List {
                Section {
                    Text("Score= "  \(rootWord))
                        
                }.opacity(10)
                Section {
                    TextField("Enter your word", text: $newWord)
                        .autocapitalization(.none)
                }
                Section {
                    ForEach(usedWords, id: \.self){ word in
                        HStack {
                            Image(systemName: "\(countPoints(word: word)).circle")
                            Text(word)
                        }
                        
                    }
                }
            }
            .navigationTitle(rootWord)
            .onSubmit(addNewWord)
            .onAppear(perform: startGame)
            .alert(errorTitle, isPresented: $showingError) {
                Button("OK", role: .cancel) { }
            } message: {
                Text(errorMessage)
            }
            .toolbar{ Button ("Reset", action: startGame) }
            
        }
    }
    func addNewWord() {
        // lowercase and trim the word, to make sure we don't add duplicate words with case differences
        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)

        // exit if the remaining string is empty
        guard answer.count > 0 else { return }

        // extra validation to come
        guard isOriginal(word: answer) else {
            wordError(title: "Word used already", message: "Be more original")
            return
        }

        guard isPossible(word: answer) else {
            wordError(title: "Word not possible", message: "You can't spell that word from '\(rootWord)'!")
            return
        }

        guard isReal(word: answer) else {
            wordError(title: "Word not recognized", message: "You can't just make them up, you know!")
            return
        }
        guard isThreeLetterOrStartWord(word: answer) else {
            wordError(title: "Word not allowed", message: "You can't add words shorter than three letters or are just our start word")
            return
        }
        
        withAnimation{
            usedWords.insert(answer, at: 0)
        }
        newWord = ""
    }
    
    func startGame() {
        // 1. Find the URL for start.txt in our app bundle
        if let startWordsURL = Bundle.main.url(forResource: "start", withExtension: "txt") {
            // 2. Load start.txt into a string
            if let startWords = try? String(contentsOf: startWordsURL) {
                // 3. Split the string up into an array of strings, splitting on line breaks
                let allWords = startWords.components(separatedBy: "\n")

                // 4. Pick one random word, or use "silkworm" as a sensible default
                rootWord = allWords.randomElement() ?? "silkworm"
                usedWords.removeAll()
                // If we are here everything has worked, so we can exit
                return
            }
        }

        // If were are *here* then there was a problem – trigger a crash and report the error
        fatalError("Could not load start.txt from bundle.")
    }
    
    func isOriginal(word: String ) -> Bool {
        !usedWords.contains(word)
    }
    func isPossible(word: String) -> Bool {
        var tempWord = rootWord
        for letter in word {
            if let pos = tempWord.firstIndex(of: letter) {
                tempWord.remove(at: pos)
            }else{
                return false
            }
        }
        return true
    }
    func isReal(word: String) -> Bool {
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")

        return misspelledRange.location == NSNotFound
    }
    
    func wordError(title: String, message: String) {
        errorTitle = title
        errorMessage = message
        showingError = true
    }
    func isThreeLetterOrStartWord(word : String ) -> Bool {
        if(word.count < 3){ return false }
        if rootWord.hasPrefix(word){
            return false
        }
        return true
    }
    func countPoints(word:String) -> Int {
        var totalPoints = 0
        for letter in word {
            switch letter {
                case "a", "e", "i", "o", "u", "l", "n", "s", "t", "r":
                   totalPoints += 1
               case "d", "g":
                   totalPoints += 2
               case "b", "c", "m", "p":
                   totalPoints += 3
               case "f", "h", "v", "w", "y":
                   totalPoints += 4
               case "k":
                   totalPoints += 5
               case "j", "x":
                   totalPoints += 8
               case "q", "z":
                   totalPoints += 10
               default:
                   break
               }
        }
        return totalPoints;
    }
}

struct AddingListOfWords_Previews: PreviewProvider {
    static var previews: some View {
        AddingListOfWords()
    }
}
