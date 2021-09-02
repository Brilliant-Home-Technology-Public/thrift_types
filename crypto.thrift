namespace py thrift_types.crypto
namespace java thrift_types.crypto

enum AsymmetricKeyType {
  UNKNOWN = 0
  X25519 = 1
}

enum EncryptionAlgorithm {
  UNKNOWN = 0
  AES_GCM = 1
}

struct PublicKey {
  1: optional string key_id
  2: optional AsymmetricKeyType key_type
  3: optional binary public_bytes
}

struct EncryptedMessage {
  1: optional EncryptionAlgorithm algorithm
  2: optional PublicKey public_key // Sender's public key
  3: optional string peer_key_id
  4: optional binary ciphertext
  5: optional binary nonce
}
