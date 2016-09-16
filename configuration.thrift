namespace py thrift_types.configuration

// Art Configuration
struct ArtPiece {
  1: string id
  2: string url
}

struct ArtLibrary {
  1: string id
  2: string title
  3: list<ArtPiece> art_pieces
}

struct ArtLibraryConfig {
  1: string library_id
  2: bool enabled
  3: list<string> disabled_art_pieces
}
