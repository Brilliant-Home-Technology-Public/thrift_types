namespace py thrift_types.configuration

// Art Configuration
struct ArtPiece {
  1: string id
  2: string url
}

struct ArtLibrary {
  1: string name
  2: list<ArtPiece> art_pieces
}
