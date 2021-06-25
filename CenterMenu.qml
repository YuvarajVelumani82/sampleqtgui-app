import QtQuick 2.15

Item {
    id:centerMenu
    width: 800
    height:420
    property double centerImgOpacity : 1.0
    property bool leftSplash: false
    property bool rightSplash: false

    Image {
        id: centerImage
        width: parent.width
        height: parent.height
        opacity: centerMenu.centerImgOpacity
        fillMode: Image.Stretch
        source: "qrc:/images/main.png"
    }

    Rectangle {
        id: leftMenu
        width: ((parent.width/2)-2.5)
        height: parent.height
        color: "#00000000"
        anchors.left: parent.left
        anchors.leftMargin: 0
        visible: centerImage.opacity == 0.0

        Image {
            id: image1
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            source: "qrc:/images/menu.png"
        }

        AnimatedImage { id: leftAnimation; anchors.fill: parent; visible: leftSplash; source: "qrc:/images/processing.webp";}
    }

    Rectangle {
        id: rightMenu
        width: ((parent.width/2)-2.5)
        height: parent.height
        color: "#00000000"
        anchors.right: parent.right
        anchors.rightMargin: 0
        visible: centerImage.opacity == 0.0

        Image {
            id: image2
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            source: "qrc:/images/menu.png"
        }

        AnimatedImage { id: rightAnimation; anchors.fill: parent; visible: rightSplash; source: "qrc:/images/processing.webp";}
    }

    Rectangle {
        id: rectangle
        width: 4
        height: 410
        color: "#59585a"
        radius: 2
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        visible: centerImage.opacity == 0.0
    }
}
