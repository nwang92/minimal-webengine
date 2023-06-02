import QtQuick 2.0
import QtQuick.Window 2.0
import QtWebEngine 1.11

Window {
    property string token: "auth0_token"

    width: 1024
    height: 750
    visible: true
    WebEngineView {
        id: webEngineView
        anchors.fill: parent
        url: `https://test.jacktrip.org/studios?accessToken=${token}`

        onFeaturePermissionRequested: {
            webEngineView.grantFeaturePermission(securityOrigin, feature, true);
        }
    }
}
