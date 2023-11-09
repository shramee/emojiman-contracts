use starknet::ContractAddress;

#[derive(Serde, Copy, Drop, Introspect)]
enum Direction {
    None: (),
    Left: (),
    Right: (),
    Up: (),
    Down: (),
}

impl DirectionIntoFelt252 of Into<Direction, felt252> {
    fn into(self: Direction) -> felt252 {
        match self {
            Direction::None(()) => 0,
            Direction::Left(()) => 1,
            Direction::Right(()) => 2,
            Direction::Up(()) => 3,
            Direction::Down(()) => 4,
        }
    }
}

#[derive(Copy, Drop, Serde, Introspect)]
struct Vec2 {
    x: u32,
    y: u32
}

#[derive(Model, Copy, Drop, Serde)]
struct Position {
    #[key]
    player: ContractAddress,
    vec: Vec2,
}
