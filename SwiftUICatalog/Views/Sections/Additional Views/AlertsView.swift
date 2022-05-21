//
//  AlertsComponentView.swift
//  SwiftUICatalog
//
// MIT License
//
// Copyright (c) 2021 { YOUR NAME HERE 🏆 }
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

struct AlertsComponentView: View, Comparable {
    
    let id: String = "AlertsComponentView"
    
    var body: some View {

        PageContainer(content:

        VStack {
            ContributionWantedView()
        }
                      )
        // end of page container
        
    }
}

struct AlertsComponentView_Previews: PreviewProvider {
    static var previews: some View {
        AlertsComponentView()
    }
}

// MARK: - HASHABLE

extension AlertsComponentView {
    
    static func == (lhs: AlertsComponentView, rhs: AlertsComponentView) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }


}


