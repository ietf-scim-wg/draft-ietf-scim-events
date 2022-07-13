#//# --------------------------------------------------------------------------------------
#//# Created using Sequence Diagram for Mac
#//# https://www.macsequencediagram.com
#//# https://itunes.apple.com/gb/app/sequence-diagram/id1195426709?mt=12
#//# --------------------------------------------------------------------------------------
# style
# activationBoxBgColor: FFFFFF
# activationBoxBorderColor: 000000
# arrowHeadColor: 000000
# canvasBgColor: FFFFFF
# destroyMarkerColor: 000000
# dividerBgColor: FFFFFF
# dividerLineColor: 000000
# dividerTextColor: 000000
# iFrameBgColor: FFFFFF 0
# iFrameBorderColor: 000000
# iFrameLabelBgColor: FFFFFF
# iFrameLabelBorderColor: 000000
# iFrameLabelTextColor: 000000
# iFrameRefLabelTextColor: 000000
# noteBgColor: FFFFFF
# noteBorderColor: 000000
# noteTextColor: 000000
# participantBgColor: FFFFFF
# participantBorderColor: 000000
# participantTextColor: 000000
# signalLineColor: 000000
# signalMessageColor: 000000
# signalTerminatorColor: 000000
# timelineColor: 000000
# titleTextColor: 000000
# end style


participant "Client A" as ca
participant "Client A\nEvent Receiver" as er
participant "SCIM\nService Provider" as sp

activate sp
ca->sp: "SCIM Modify\nw/Respond Async"
sp->ca: "Accepted Status 202"
activate er
sp-->er: "Event SCIM:misc:asyncResp\nid:xyz, method: PUT"
deactivate sp
er-->>ca: "ID: xyz created"
deactivate er