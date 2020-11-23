/// Copyright (c) 2020 Razeware LLC
/// 
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
/// 
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
/// 
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
/// 
/// This project and source code may use libraries or frameworks that are
/// released under various Open-Source licenses. Use of those libraries and
/// frameworks are governed by their own individual licenses.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import SwiftUI

<<<<<<< HEAD:10-statand-data-flow-part-2/projects/starter/Kuchi/Shared/HistoryView.swift
struct History: Hashable {
  let date: Date
  let challenge: Challenge
  
  static func random() -> History {
    let date = Date.init(timeIntervalSinceNow: -TimeInterval.random(in: 0...1000000))
    
    let challenge = ChallengesViewModel.challenges.randomElement()!
    
    return History(
      date: date,
      challenge: challenge
    )
  }
  
  static func random(count: Int) -> [History] {
    return (0 ..< count)
      .map({ _ in self.random() })
      .sorted(by: { $0.date < $1.date })
  }
}

struct HistoryView: View {
  let history = History.random(count: 2000)
  let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    formatter.timeStyle = .short
    return formatter
  }()
  
  var header: some View {
    Text("History")
      .foregroundColor(.white)
      .font(.title)
      .frame(width: UIScreen.main.bounds.width, height: 50)
      .background(Color.gray)
  }
  
  func getElement(_ element: History) -> some View {
    VStack(alignment: .center) {
      Text("\(dateFormatter.string(from: element.date))")
        .font(.caption2)
        .foregroundColor(.blue)
      HStack {
        VStack {
          Text("Question:")
            .font(.caption)
=======
struct RegisterView: View {
  @EnvironmentObject var userManager: UserManager
  @ObservedObject var keyboardHandler: KeyboardFollower
  
  init(keyboardHandler: KeyboardFollower) {
    self.keyboardHandler = keyboardHandler
  }
  
  var body: some View {
    VStack {
      Spacer()
      
      WelcomeMessageView()
      
      TextField("Type your name...", text: $userManager.profile.name)
        .bordered()
      
      HStack {
        Spacer()
        Text("\(userManager.profile.name.count)")
          .font(.caption)
          .foregroundColor(
            userManager.isUserNameValid() ? .green : .red)
          .padding(.trailing)
      }
      .padding(.bottom)
      
      HStack {
        Spacer()
        
        Toggle(isOn: $userManager.settings.rememberUser) {
          Text("Remember me")
            .font(.subheadline)
>>>>>>> editions/3.0:06-controls-and-user-input/projects/final/Kuchi/Shared/Welcome/RegisterView.swift
            .foregroundColor(.gray)
          Text(element.challenge.question)
            .font(.body)
        }
<<<<<<< HEAD:10-statand-data-flow-part-2/projects/starter/Kuchi/Shared/HistoryView.swift
        
        VStack {
          Text("Answer:")
            .font(.caption)
            .foregroundColor(.gray)
          Text(element.challenge.answer)
=======
        .fixedSize()
      }
      
      Button(action: self.registerUser) {
        HStack {
          Image(systemName: "checkmark")
            .resizable()
            .frame(width: 16, height: 16, alignment: .center)
          Text("OK")
>>>>>>> editions/3.0:06-controls-and-user-input/projects/final/Kuchi/Shared/Welcome/RegisterView.swift
            .font(.body)
        }
        
        VStack {
          Text("Guessed")
            .font(.caption)
            .foregroundColor(.gray)
          Text(element.challenge.succeeded ? "yes" : "no")
        }
      }
<<<<<<< HEAD:10-statand-data-flow-part-2/projects/starter/Kuchi/Shared/HistoryView.swift
    }
    .padding()
    .frame(width: UIScreen.main.bounds.width)
=======
      .bordered()
      .disabled(!userManager.isUserNameValid())
      
      Spacer()
    }
    .padding(.bottom, keyboardHandler.keyboardHeight)
    .edgesIgnoringSafeArea(keyboardHandler.isVisible ? .bottom : [])
    .padding()
    .background(WelcomeBackgroundImage())
>>>>>>> editions/3.0:06-controls-and-user-input/projects/final/Kuchi/Shared/Welcome/RegisterView.swift
  }
  
  var body: some View {
    ScrollView {
      LazyVStack(spacing: 0, pinnedViews: [.sectionHeaders]) {
        Section(header: header) {
          ForEach(history, id: \.self) { element in
            getElement(element)
          }
        }
      }
    }
  }
}

<<<<<<< HEAD:10-statand-data-flow-part-2/projects/starter/Kuchi/Shared/HistoryView.swift
struct HistoryView_Previews: PreviewProvider {
=======
struct RegisterView_Previews: PreviewProvider {
  static let user = UserManager(name: "Ray")
  
>>>>>>> editions/3.0:06-controls-and-user-input/projects/final/Kuchi/Shared/Welcome/RegisterView.swift
  static var previews: some View {
    HistoryView()
  }
}
