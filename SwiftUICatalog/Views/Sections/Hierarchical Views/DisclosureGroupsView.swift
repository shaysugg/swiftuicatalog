//
//  DisclosureGroupsView.swift
//  SwiftUICatalog
//
// MIT License
//
// Copyright (c) 2021 Ali Ghayeni h
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//
//

import SwiftUI

///
/// Examples on how to use  DISCLOSURE GROUPS    in SwiftUI
/// OFFICIAL DOCUMENTATION:
/// https://developer.apple.com/documentation/swiftui/disclosuregroup
///

struct DisclosureGroupsView: View {
    
    @Environment(\.openURL) var openURL
    
    struct ToggleStates {
        var oneIsOn: Bool = false
        var twoIsOn: Bool = true
    }
    @State private var toggleStates = ToggleStates()
    @State private var topExpanded: Bool = true
    
    var body: some View {
        
        ScrollView {
            HeaderView( title: "Disclosure groups in SwiftUI")
            Group {
                Text("A view that shows or hides another content view, based on the state of a disclosure control.")
                    .fontWeight(.light)
            }
            .padding()
            
            Group {
                Text("A disclosure group view consists of a label to identify the contents, and a control to show and hide the contents. Showing the contents puts the disclosure group into the “expanded” state, and hiding them makes the disclosure group “collapsed”.")
                    .fontWeight(.light)
            }
            .padding()
            
            // MARK: - Disclosure groups in SwiftUI
            DisclosureGroup("Items", isExpanded: $topExpanded) {
                Toggle("Toggle 1", isOn: $toggleStates.oneIsOn)
                    .padding()
                Toggle("Toggle 2", isOn: $toggleStates.twoIsOn)
                    .padding()
                DisclosureGroup(" Sub-items") {
                    Text("  Sub-item 1")
                }
            }
            
            HStack{
                Spacer()
                Button(action: {
                    openURL(URL(string: "https://developer.apple.com/documentation/swiftui/disclosuregroup")!)
                }, label: {
                    Text("the Disclosure groups Doc!")
                })
            }
            .padding(.trailing, 10)
            
            
            ContributedByView(name: "Ali Ghayeni H",
                              link: "https://github.com/alighayeni")
                .padding(.top, 80)
        }
        .padding()
        

    }
}

struct DisclosureGroupsView_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroupsView()
    }
}
