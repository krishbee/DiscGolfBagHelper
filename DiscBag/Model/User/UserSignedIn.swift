
import Foundation

enum UserSignedIn {
    case no
    case yes(User)
    
    var user: User? {
        switch self {
        case .no:
            nil
        case .yes(let user):
            user
        }
    }
}
