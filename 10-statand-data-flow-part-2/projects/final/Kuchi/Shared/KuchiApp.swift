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

@main
struct KuchiApp: App {
  let userManager = UserManager()
  
<<<<<<< HEAD:10-statand-data-flow-part-2/projects/final/Kuchi/Shared/KuchiApp.swift
  init() {
    userManager.load()
  }

  var body: some Scene {
    WindowGroup {
      StarterView()
        .environmentObject(userManager)
        .environmentObject(ChallengesViewModel())
=======
  @ViewBuilder
  var body: some View {
    if self.userViewModel.isRegistered {
      WelcomeView()
    } else {
      #if os(iOS)
      RegisterView(keyboardHandler: KeyboardFollower())
      #endif
      
      #if os(macOS)
      RegisterView()
      #endif
>>>>>>> editions/3.0:08-state-and-data-flow-part-1/projects/starter/Kuchi/Shared/StarterView.swift
    }
  }
}

struct KuchiApp_Previews: PreviewProvider {
  static var previews: some View {
    RegisterView(keyboardHandler: KeyboardFollower())
  }
}
