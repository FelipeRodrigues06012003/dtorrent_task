import 'package:dtorrent_task/src/peer/peer.dart';
import 'package:dtorrent_task/src/peer/peer_events.dart';

abstract class PeersManagerEvent extends PeerEvent {}

class UpdateUploaded implements PeersManagerEvent {
  final int uploaded;

  UpdateUploaded(this.uploaded);
}

class PieceRequest implements PeersManagerEvent {
  final Peer peer;
  final int piece;

  PieceRequest(this.peer, this.piece);
}
