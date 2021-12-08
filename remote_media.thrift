namespace py thrift_types.remote_media
namespace java thrift_types.remote_media

const string LIVE_VIEW_SESSION_PREFIX = "live_view_session:"

enum MediaTransmission {
  NONE = 0
  // Chosen so AUDIO_AND_VIDEO == (AUDIO | VIDEO)
  AUDIO = 1
  VIDEO = 2
  AUDIO_AND_VIDEO = 3
}


// Interface taken from: https://w3c.github.io/webrtc-pc/#rtcicecandidate-interface
struct IceCandidate {
    1: string candidate
    2: optional string sdp_mid
    3: optional i32 sdp_mline_index
    4: optional string username_fragment
}


struct SessionDescription {
    1: string type
    2: string sdp
}


struct RemoteMediaSession {
    // A unique identifier for this particular session.
    1: string session_id
    // The device ID of the peer with which this device is communicating.
    // This should be set to "" for an audio broadcast.
    2: optional string peer_device_id
    // Whether or not this device was the initiator of the session.
    3: bool is_initiator
    // The SDP description (offer or answer) this device sent to peer for processing.
    4: optional SessionDescription sdp_description
    // The ICE candidates retrieved by this device, sent to the peer for processing.
    5: optional list<IceCandidate> ice_candidates
    6: optional string rtsp_url
}


struct RemoteMediaSessions {
    1: list<RemoteMediaSession> remote_sessions
}


enum RemoteStreamingProtocol {
    UNKNOWN = 0
    WEBRTC = 1
    RTSP = 2
}


// mirrors GstWebRTCBundlePolicy enum:
// https://gstreamer.freedesktop.org/documentation/webrtclib/webrtc_fwd.html?gi-language=c#GstWebRTCBundlePolicy
enum RemoteStreamingBundlePolicy {
    NONE = 0
    BALANCED = 1
    MAX_COMPAT = 2
    MAX_BUNDLE = 3
}


struct RemoteStreamingConfiguration {
    1: RemoteStreamingProtocol streaming_protocol
}
