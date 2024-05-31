import Foundation

struct User: Identifiable {
    let id: String
    
    let username: String
    var allDiscs: [Disc] = []
}

extension User {
    static var mock1: User {
        var user = User(id: "mockId", username: "mockUsername")
        user.allDiscs = [
            .init(
                id: "1",
                name: "time lapse",
                discType: .dd,
                manufacturer: .axiom, 
                inBag: true
            ),
            .init(
                id: "2",
                name: "explorer",
                discType: .fd,
                manufacturer: .latitude,
                inBag: true
            ),
            .init(
                id: "3",
                name: "Saint",
                inBag: true
            ),
            .init(
                id: "4",
                name: "Anvil",
                discType: .pa,
                manufacturer: .westside,
                inBag: true
            ),
            .init(
                id: "5",
                name: "Prince",
                inBag: true
            ),
            .init(
                id: "6",
                name: "time lapse",
                discType: .dd,
                manufacturer: .axiom,
                inBag: true
            ),
            .init(
                id: "7",
                name: "explorer",
                discType: .fd,
                manufacturer: .latitude,
                inBag: true
            ),
            .init(
                id: "8",
                name: "Saint",
                inBag: true
            ),
            .init(
                id: "9",
                name: "Anvil",
                discType: .pa,
                manufacturer: .westside,
                flightNumbers: .init(speed: 5, glide: 4, turn: 0, fade: 3),
                inBag: true
            ),
            .init(
                id: "10",
                name: "Prince",
                inBag: true
            )
        ]
        return user
    }
    
}
