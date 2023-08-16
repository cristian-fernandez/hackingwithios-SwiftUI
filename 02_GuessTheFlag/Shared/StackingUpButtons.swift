//
//  StackingUpButtons.swift
//  GuessTheFlag
//
//  Created by Fernandez, Cristian (Barreal de Heredia) on 2/3/23.
//

import SwiftUI

struct StackingUpButtons: View {
    @State private var countriesImage = ["AD", "AE", "AF", "AG", "AI", "AL", "AM", "AO", "AR", "AS", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BR", "BS", "BT", "BV", "BW", "BY", "BZ", "CA", "CC","CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CW", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "ER", "ES", "ET", "EU", "FI", "FJ", "FK", "FM", "FO", "FR","GA", "GB", "GB-ENG", "GB-NIR", "GB-SCT", "GB-WLS", "GB-ZET", "GD", "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "ID", "IE", "IL","IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LGBT", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC","MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE","PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV","SX", "SY", "SZ", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "UM", "US", "US-CA", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "XK","YE", "YT", "ZA", "ZM", "ZW"].shuffled();
    var countries = ["AD":    "Andorra", "AE":    "United Arab Emirates", "AF":    "Afghanistan", "AG":    "Antigua & Barbuda", "AI":    "Anguilla", "AL":    "Albania", "AM":    "Armenia", "AO":    "Angola", "AR":    "Argentina", "AS":    "American Samoa", "AT":    "Austria", "AU":    "Australia", "AW":    "Aruba", "AX":    "Åland Islands", "AZ":    "Azerbaijan", "BA":    "Bosnia & Herzegovina", "BB":    "Barbados", "BD":    "Bangladesh", "BE":    "Belgium", "BF":    "Burkina Faso", "BG":    "Bulgaria", "BH":    "Bahrain", "BI":    "Burundi", "BJ":    "Benin", "BL":    "St. Barthélemy", "BM":    "Bermuda", "BN":    "Brunei", "BO":    "Bolivia", "BR":    "Brazil", "BS":    "Bahamas", "BT":    "Bhutan", "BV":    "Bouvet Island", "BW":    "Botswana", "BY":    "Belarus", "BZ":    "Belize", "CA":    "Canada", "CC":    "Cocos (Keeling) Islands", "CD":    "Congo - Kinshasa", "CF":    "Central African Republic", "CG":    "Congo - Brazzaville", "CH":    "Switzerland", "CI":    "Côte d’Ivoire", "CK":    "Cook Islands", "CL":    "Chile", "CM":    "Cameroon", "CN":    "China", "CO":    "Colombia", "CR":    "Costa Rica", "CU":    "Cuba", "CV":    "Cape Verde", "CW":    "Curaçao", "CX":    "Christmas Island", "CY":    "Cyprus", "CZ":    "Czech Republic", "DE":    "Germany", "DJ":    "Djibouti", "DK":    "Denmark", "DM":    "Dominica", "DO":    "Dominican Republic", "DZ":    "Algeria", "EC":    "Ecuador", "EE":    "Estonia", "EG":    "Egypt", "ER":    "Eritrea", "ES":    "Spain", "ET":    "Ethiopia", "EU":    "European Union", "FI":    "Finland", "FJ":    "Fiji", "FK":    "Falkland Islands", "FM":    "Micronesia", "FO":    "Faroe Islands", "FR":    "France", "GA":    "Gabon", "GB":    "United Kingdom", "GB-ENG":    "England", "GB-NIR":    "Northern Ireland", "GB-SCT":    "Scotland", "GB-WLS":    "Wales", "GB-ZET":    "Shetland", "GD":    "Grenada", "GE":    "Georgia", "GF":    "French Guiana", "GG":    "Guernsey", "GH":    "Ghana", "GI":    "Gibraltar", "GL":    "Greenland", "GM":    "Gambia", "GN":    "Guinea", "GP":    "Guadeloupe", "GQ":    "Equatorial Guinea", "GR":    "Greece", "GS":    "So. Georgia & So. Sandwich Isl.", "GT":    "Guatemala", "GU":    "Guam", "GW":    "Guinea-Bissau", "GY":    "Guyana", "HK":    "Hong Kong (China)", "HM":    "Heard & McDonald Islands", "HN":    "Honduras", "HR":    "Croatia", "HT":    "Haiti", "HU":    "Hungary", "ID":    "Indonesia", "IE":    "Ireland", "IL":    "Israel", "IM":    "Isle of Man", "IN":    "India", "IO":    "British Indian Ocean Territory", "IQ":    "Iraq", "IR":    "Iran", "IS":    "Iceland", "IT":    "Italy", "JE":    "Jersey", "JM":    "Jamaica", "JO":    "Jordan", "JP":    "Japan", "KE":    "Kenya", "KG":    "Kyrgyzstan", "KH":    "Cambodia", "KI":    "Kiribati", "KM":    "Comoros", "KN":    "St. Kitts & Nevis", "KP":    "North Korea", "KR":    "South Korea", "KW":    "Kuwait", "KY":    "Cayman Islands", "KZ":    "Kazakhstan", "LA":    "Laos", "LB":    "Lebanon", "LC":    "St. Lucia", "LGBT":    "Pride", "LI":    "Liechtenstein", "LK":    "Sri Lanka", "LR":    "Liberia", "LS":    "Lesotho", "LT":    "Lithuania", "LU":    "Luxembourg", "LV":    "Latvia", "LY":    "Libya", "MA":    "Morocco", "MC":    "Monaco", "MD":    "Moldova", "ME":    "Montenegro", "MF":    "St. Martin", "MG":    "Madagascar", "MH":    "Marshall Islands", "MK":    "Macedonia", "ML":    "Mali", "MM":    "Myanmar (Burma)", "MN":    "Mongolia", "MO":    "Macau (China)", "MP":    "Northern Mariana Islands", "MQ":    "Martinique", "MR":    "Mauritania", "MS":    "Montserrat", "MT":    "Malta", "MU":    "Mauritius", "MV":    "Maldives", "MW":    "Malawi", "MX":    "Mexico", "MY":    "Malaysia", "MZ":    "Mozambique", "NA":    "Namibia", "NC":    "New Caledonia", "NE":    "Niger", "NF":    "Norfolk Island", "NG":    "Nigeria", "NI":    "Nicaragua", "NL":    "Netherlands", "NO":    "Norway", "NP":    "Nepal", "NR":    "Nauru", "NU":    "Niue", "NZ":    "New Zealand", "OM":    "Oman", "PA":    "Panama", "PE":    "Peru", "PF":    "French Polynesia", "PG":    "Papua New Guinea", "PH":    "Philippines", "PK":    "Pakistan", "PL":    "Poland", "PM":    "St. Pierre & Miquelon", "PN":    "Pitcairn Islands", "PR":    "Puerto Rico", "PS":    "Palestinian Territories", "PT":    "Portugal", "PW":    "Palau", "PY":    "Paraguay", "QA":    "Qatar", "RE":    "Réunion", "RO":    "Romania", "RS":    "Serbia", "RU":    "Russia", "RW":    "Rwanda", "SA":    "Saudi Arabia", "SB":    "Solomon Islands", "SC":    "Seychelles", "SD":    "Sudan", "SE":    "Sweden", "SG":    "Singapore", "SH":    "St. Helena", "SI":    "Slovenia", "SJ":    "Svalbard & Jan Mayen", "SK":    "Slovakia", "SL":    "Sierra Leone", "SM":    "San Marino", "SN":    "Senegal", "SO":    "Somalia", "SR":    "Suriname", "SS":    "South Sudan", "ST":    "São Tomé & Príncipe", "SV":    "El Salvador", "SX":    "Sint Maarten", "SY":    "Syria", "SZ":    "Swaziland", "TC":    "Turks & Caicos Islands", "TD":    "Chad", "TF":    "French Southern Territories", "TG":    "Togo", "TH":    "Thailand", "TJ":    "Tajikistan", "TK":    "Tokelau", "TL":    "Timor-Leste", "TM":    "Turkmenistan", "TN":    "Tunisia", "TO":    "Tonga", "TR":    "Turkey", "TT":    "Trinidad & Tobago", "TV":    "Tuvalu", "TW":    "Taiwan", "TZ":    "Tanzania", "UA":    "Ukraine", "UG":    "Uganda", "UM":    "U.S. Outlying Islands", "US":    "United States", "US-CA":    "California", "UY":    "Uruguay", "UZ":    "Uzbekistan", "VA":    "Vatican City", "VC":    "St. Vincent & Grenadines", "VE":    "Venezuela", "VG":    "British Virgin Islands", "VI":    "U.S. Virgin Islands", "VN":    "Vietnam", "VU":    "Vanuatu", "WF":    "Wallis & Futuna", "WS":    "Samoa", "XK":    "Kosovo", "YE":    "Yemen", "YT":    "Mayotte", "ZA":    "South Africa", "ZM":    "Zambia", "ZW":    "Zimbabwe"]
    
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var finalGame = false
    @State private var scoreTitle = ""
    @State private var scoreCount = 0
    @State private var questionCount = 0
    @State private var animationAmount = 0.0
    @State private var tappedNum = 0
    @State private var opacity = 1.0
    @State private var scale = 1.0
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 400)
                .ignoresSafeArea()
            VStack {
                Spacer()
                Text("Guess the Flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundColor(.white)
                
                VStack(spacing: 15){
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[countriesImage[correctAnswer]]!)
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3){ number in
                        Button {
                            print(number)
                            
                            withAnimation(.easeInOut(duration: 2)){
                                flagTapped(number)
                                animationAmount += 360
                                opacity -= 0.75
                                scale -= 0.5
                            }
                        }
                        
                        label: {
                            Image(countriesImage[number])
                                .FlagImageFunc()
                        }
                        .rotation3DEffect(.degrees(tappedNum == number ? animationAmount : 0), axis: (x:0, y:1, z: 0))
                        .opacity(self.tappedNum != number ? opacity : 1.0)
                        .scaleEffect(self.tappedNum != number ? scale : 1.0)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                Spacer()
                Spacer()
                Text("Score: " + String(scoreCount))
                    .foregroundColor(.white)
                    .font(.title.bold())
                Spacer()
            }.padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is " + String(scoreCount))
        }
        .alert("The game is finish!", isPresented: $finalGame){
            Button("Restart", action: restartGame)
        } message:{
            Text("Your score is " + String(scoreCount))
        }
    }
    
    func flagTapped(_ number: Int) {
        self.tappedNum = number
        if number == correctAnswer {
            scoreTitle = "Correct"
            scoreCount = scoreCount + 1
        } else {
            scoreTitle = "Wrong! That’s the flag of " + countries[countriesImage[number]]!
        }
        if(questionCount>=8){
            finalGame = true
        }
        questionCount = questionCount + 1
        showingScore = true
    }
    func askQuestion() {
        self.tappedNum = 0;
        opacity = 1.0
        scale = 1.0
        countriesImage.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    func restartGame(){
        scoreCount = 0
        questionCount = 0
        finalGame = false
    }
    
}

struct StackingUpButtons_Previews: PreviewProvider {
    static var previews: some View {
        StackingUpButtons()
    }
}

extension Image {
    func FlagImageFunc() -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Capsule())
            .shadow(radius: 5)
    }
}
