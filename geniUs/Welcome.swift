import SwiftUI
struct WelcomeView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        // the content in the view
        ZStack {
            Image("Background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.57)
                .background(Color.white)
                .cornerRadius(40)
                .position(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.7)
            
            Text("Manage your tasks like a ")
                .font(Font.system(size: 50).weight(.bold))
                .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12))
                .frame(width: 250, height: 241, alignment: .topLeading)
                .position(x: UIScreen.main.bounds.width * 0.4, y: UIScreen.main.bounds.height * 0.65)
            
            Text("geniUs")
                .font(Font.system(size: 60).weight(.bold))
                .foregroundColor(Color(red: 0.73, green: 0.73, blue: 0.73))
                .position(x: UIScreen.main.bounds.width * 0.33, y: UIScreen.main.bounds.height * 0.75)
            
            Text("Get started")
                .font(Font.system(size: 24).weight(.bold))
                .foregroundColor(.black)
                .frame(width: 302, height: 31, alignment: .topLeading)
                .position(x: UIScreen.main.bounds.width * 0.46, y: UIScreen.main.bounds.height * 0.9)
                
            ZStack {
                Circle()
                    .frame(width: 63, height: 63)
                    .foregroundColor(Color(red: 73/255, green: 73/255, blue: 73/255))
                    .position(x: UIScreen.main.bounds.width * 0.85, y: UIScreen.main.bounds.height * 0.9)
                
                Image("rightarrow")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .offset(x: UIScreen.main.bounds.width * 0.85, y: UIScreen.main.bounds.height * 0.9)
            }

        }
        .background(colorScheme == .dark ? Color.black : Color.white)

        
    }
}
struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
