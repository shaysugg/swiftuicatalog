//
//  ShapesView.swift
//  SwiftUICatalog
//
// MIT License
//
// Copyright (c) 2021 Barbara Martina Rodeker
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
/// Examples on how to use  SHAPES  in SwiftUI
/// OFFICIAL DOCUMENTATION:
/// https://developer.apple.com/documentation/swiftui/shape
/// https://developer.apple.com/documentation/swiftui/insettableshape
/// https://developer.apple.com/documentation/swiftui/rectangle
/// https://developer.apple.com/documentation/swiftui/roundedrectangle
/// https://developer.apple.com/documentation/swiftui/circle
/// https://developer.apple.com/documentation/swiftui/ellipse
/// https://developer.apple.com/documentation/swiftui/capsule
/// https://developer.apple.com/documentation/swiftui/path
///
/// https://developer.apple.com/documentation/swiftui/scaledshape
/// https://developer.apple.com/documentation/swiftui/rotatedshape
/// https://developer.apple.com/documentation/swiftui/offsetshape
/// https://developer.apple.com/documentation/swiftui/transformedshape
/// https://developer.apple.com/documentation/swiftui/containerrelativeshape
///
///

struct ShapesView: View, Comparable {
    
    let id: String = "ShapesView"
    
    var body: some View {
        
        PageContainer(content: VStack(alignment: .leading) {
            
            DocumentationLinkView(link: "https://developer.apple.com/documentation/swiftui/shape", name: "SHAPES")
            
            intro
            
            standardExamples
            customExamples
            shapeExample
            
            ContributedByView(name: "Barbara Martina",
                              link: "https://github.com/barbaramartina")
            .padding(.top, 80)
            
        }
        )
        
    }
    
    private var intro: some View {
        Group {
            Text("Rectangles, circles, ellipse and capsules")
                .fontWeight(.heavy)
            
            Text("SwiftUI brings some pre-defined shapes like rectangles and circles. But there is also the chance to define your own shapes by creating a path")
                .fontWeight(.light)
        }
        
    }
    
    private var standardExamples: some View {
        Group {
            // MARK: - rectangle
            Rectangle()
                .fill(Color("YellowMedium"))
                .frame(width: 100, height: 100)
            // MARK: - Circle
            Circle()
                .fill(Color("YellowMedium"))
                .frame(width: 100, height: 100)
            // MARK: - Ellipse
            Ellipse()
                .fill(Color("YellowMedium"))
                .frame(width: 100, height: 200)
            // MARK: - capsule
            Capsule()
                .fill(Color("YellowMedium"))
                .frame(width: 100, height: 150)
            
            // MARK: - rounded rectangle
            RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                .fill(Color("YellowMedium"))
                .frame(width: 100, height: 100)
            
        }
        
    }
    
    private var customExamples: some View {
        Group {
            
            Text("Custom shape")
                .fontWeight(.heavy)
            CustomShape()
                .fill(Color("YellowMedium"))
                .frame(width: 100, height: 100)
        }
    }
    
    private var shapeExample: some View {
        Group {
            Text("Insettable shape")
                .fontWeight(.heavy)
            Rectangle()
                .strokeBorder(style: StrokeStyle(lineWidth: 5,
                                                 lineCap: CGLineCap.round,
                                                 lineJoin: CGLineJoin.miter,
                                                 miterLimit: 2,
                                                 dash: [1, 2],
                                                 dashPhase: 4))
                .frame(width: 100, height: 100)
        }
    }
    
    
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}

struct CustomShape: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let radius = min(rect.midX, rect.midY)
        
        path.addArc(
            center: CGPoint(x: rect.midX, y: rect.midY),
            radius: radius,
            startAngle: Angle(degrees: 0),
            endAngle: Angle(degrees: 180),
            clockwise: true)
        
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        
        path.closeSubpath()
        
        return path
    }
}

// MARK: - HASHABLE

extension ShapesView {
    
    static func == (lhs: ShapesView, rhs: ShapesView) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    
}


