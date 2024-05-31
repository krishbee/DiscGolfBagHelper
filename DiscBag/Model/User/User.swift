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
                flightNumbers: .init(speed: 12, glide: 5, turn: -1, fade: 3),
                inBag: true
            ),
            .init(
                id: "2",
                name: "explorer",
                discType: .fd,
                manufacturer: .latitude,
                flightNumbers: .init(speed: 7, glide: 5, turn: 0, fade: 2),
                inBag: true
            ),
            .init(
                id: "3",
                name: "Saint",
                flightNumbers: .init(speed: 9, glide: 7, turn: -1, fade: 2),
                inBag: true
            ),
            .init(
                id: "4",
                name: "Anvil",
                discType: .pa,
                manufacturer: .westside,
                flightNumbers: .init(speed: 5, glide: 4, turn: 0, fade: 3),
                inBag: true
            ),
            .init(
                id: "5",
                name: "Prince",
                flightNumbers: .init(speed: 13, glide: 5, turn: 0, fade: 3),
                inBag: true
            ),
            .init(
                id: "6",
                name: "time lapse",
                discType: .dd,
                manufacturer: .axiom,
                flightNumbers: .init(speed: 12, glide: 5, turn: -1, fade: 3),
                inBag: true
            ),
            .init(
                id: "7",
                name: "explorer",
                discType: .fd,
                manufacturer: .latitude,
                flightNumbers: .init(speed: 7, glide: 5, turn: 0, fade: 2),
                inBag: true
            ),
            .init(
                id: "8",
                name: "Saint",
                flightNumbers: .init(speed: 9, glide: 7, turn: -1, fade: 2),
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
                flightNumbers: .init(speed: 13, glide: 5, turn: 0, fade: 3),
                inBag: true
            )
        ]
        return user
    }
    
}
