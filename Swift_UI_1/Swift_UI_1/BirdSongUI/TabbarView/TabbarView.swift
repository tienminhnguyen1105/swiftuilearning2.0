//
//  TabbarView.swift
//  Birdsong_SwiftUI


import SwiftUI

struct TabbarView: View {
    @State private var selectedIndex = 1
   
    var body: some View {
            ZStack {
                VStack {
                    Spacer()
                    HStack {
                        TabBarButton(icon: "house", title: "Home", isSelected: selectedIndex == 0) {
                            selectedIndex = 0
                        }
                        
                        Spacer(minLength: 0)
                        
                        ZStack {
                            Circle()
                                .foregroundColor(Color.green)
                                .frame(width: 70, height: 70)
                                .shadow(radius: 5)
                            
                            Button(action: {
                                selectedIndex = 1
                            }) {
                                Image(systemName: "viewfinder.circle")
                                    .font(.system(size: 30))
                                    .foregroundColor(.white)
                            }
                        }
                        .offset(y: -20) // Adjust this value to place the button higher
                        
                        Spacer(minLength: 0)
                        
                        TabBarButton(icon: "bird", title: "Collection", isSelected: selectedIndex == 2) {
                            selectedIndex = 2
                        }
                    }
                    .padding(.horizontal, 30)
                    .padding(.top, 10)
                    .background(Color.white.clipShape(CustomTabShape()).shadow(radius: 5))
                }
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    
}

struct TabBarButton: View {
    let icon: String
    let title: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack {
                Image(systemName: icon)
                    .font(.system(size: 24))
                    .foregroundColor(isSelected ? Color.green : Color.gray)
                Text(title)
                    .font(.footnote)
                    .foregroundColor(isSelected ? Color.green : Color.gray)
            }
        }
    }
}

struct CustomTabShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let centerWidth = rect.width / 2
        
        // Start the path from the bottom-left corner
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: centerWidth - 45, y: 30))
        
        // Draw the rounded curve for the central button
        path.addQuadCurve(to: CGPoint(x: centerWidth + 45, y: 0), control: CGPoint(x: centerWidth, y: -30))
        
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: rect.height))
        path.addLine(to: CGPoint(x: 0, y: rect.height))
        path.closeSubpath()
        
        return path
    }
}

//struct ContentView: View {
//    var body: some View {
//        TabbarView()
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
