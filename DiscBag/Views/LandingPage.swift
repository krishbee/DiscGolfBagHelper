import SwiftUI

struct LandingPage: View {
    @EnvironmentObject var userManager: UserManagerImplementation
    
    var body: some View {
        Group {
            switch userManager.user {
            case .no:
                LoginScreen()
            case .yes(let user):
                ProfileScreen(user: user)
            }
        }
        
    }
}

#Preview {
    ProfileScreen(user: .mock1)
}
