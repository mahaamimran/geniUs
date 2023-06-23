import SwiftUI
import Foundation
struct TodayView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView {
            ZStack {
                Text("Good ")
                    .font(Font.system(size: 32).weight(.bold))
                    .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12))
                    .frame(width: 140, height: 81, alignment: .topLeading)
                    .position(x: UIScreen.main.bounds.width * 0.25, y: UIScreen.main.bounds.height * 0.06)
                
                Text("morning")
                    .font(Font.system(size: 32).weight(.bold))
                    .foregroundColor(Color(red: 0.73, green: 0.73, blue: 0.73))
                    .frame(width: 140, height: 81, alignment: .topLeading)
                    .position(x: UIScreen.main.bounds.width * 0.25, y: UIScreen.main.bounds.height * 0.095)
                
                NavigationLink(destination: WelcomeView()) {
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 42, height: 42)
                            .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                            .cornerRadius(42)
                        
                        Image("calendaricon")
                    }
                    .position(x:UIScreen.main.bounds.width*0.7, y: UIScreen.main.bounds.height * 0.055)
                }
                
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 42, height: 42)
                        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                        .cornerRadius(42)
                    
                    Image("notificationicon")
                }
                .position(x:UIScreen.main.bounds.width*0.85, y: UIScreen.main.bounds.height * 0.055)
                
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: UIScreen.main.bounds.width*0.9, height: UIScreen.main.bounds.height * 0.4)
                        .background(
                            LinearGradient(
                                stops: [
                                    Gradient.Stop(color: Color(red: 0.36, green: 0.36, blue: 0.36), location: 0.00),
                                    Gradient.Stop(color: Color(red: 0.4, green: 0.43, blue: 0.52), location: 1.00),
                                ],
                                startPoint: UnitPoint(x: 0.5, y: 0),
                                endPoint: UnitPoint(x: 0.5, y: 1)
                            )
                        )
                        .cornerRadius(40)
                        .position(x:UIScreen.main.bounds.width*0.5, y: UIScreen.main.bounds.height * 0.32)
                    
                    VStack(alignment: .leading) {
                        Text(getFormattedDate())
                            .font(Font.system(size: 16).weight(.medium))
                            .foregroundColor(Color(red: 0.73, green: 0.73, blue: 0.73))
                        
                        Text("Today’s progress")
                            .font(Font.system(size: 25).weight(.bold))
                            .foregroundColor(.white)
                            .padding(.bottom,UIScreen.main.bounds.height * 0.09)
                        
                        // replace with actual information
                        Text("10/12 Tasks")
                            .font(Font.system(size: 16).weight(.medium))
                            .foregroundColor(Color(red: 0.73, green: 0.73, blue: 0.73))
                        
                        Text("83%")
                            .font(Font.system(size: 96).weight(.bold))
                            .foregroundColor(.white)
                        
                    }
                    .position(x: UIScreen.main.bounds.width * 0.32, y: UIScreen.main.bounds.height * 0.3)
                    .padding()
                    
                }
                VStack(alignment: .leading){
                    HStack{
                        Text("In Progress")
                            .font(Font.system(size: 28).weight(.bold))
                            .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12))
                            .padding()
                        ZStack{
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 35, height: 25)
                                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                                .cornerRadius(30)
                            Text("2")
                                .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12))
                                .font(Font.system(size: 16).weight(.bold))
                        }
                    }
                    
                }
                .position(x: UIScreen.main.bounds.width * 0.28, y: UIScreen.main.bounds.height * 0.55)
                .padding(.vertical)
                
            }
            .background(colorScheme == .dark ? Color.black : Color.white)
        }
    }
    func getFormattedDate() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMM, EEE"
        return formatter.string(from: Date())
    }
    
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}

