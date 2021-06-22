import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
    id:sliderMain
    width: 800
    height: 30
    property bool startLeftSliding: false
    property bool startRightSliding: false
    property int showInfo: 0

    Rectangle {
        id: headerBorder
        height: 5
        width: parent.width
        color: "#59585a"
    }
    Rectangle {
        id: mainLeftOffset
        width: 10
        height: 25
        color: "#59585a"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
    }

    Rectangle {
        id: obj1Left
        width: 150
        height: 25
        color: "#504f50"
        radius: 10
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0

        Text {
            id: obj1LeftText
            x: 5
            y: 3
            width: 100
            height: 20
            color: "#ffffff"
            text: qsTr("Left Info")
            visible: sliderMain.startLeftSliding
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 15

            MouseArea {
                anchors.fill: parent
                visible: sliderMain.startLeftSliding
                onClicked: sliderMain.startLeftSliding = !sliderMain.startLeftSliding;
            }
        }

        states: [
            State {
                name: "moveOut"; when: sliderMain.startLeftSliding == true;
                PropertyChanges { target: obj1Left;anchors.leftMargin:mainLeft.width+20 }
            },
            State {
                name: "moveIn"; when: sliderMain.startLeftSliding == false;
                PropertyChanges { target: obj1Left;anchors.leftMargin:20 }
            }
        ]

        transitions: [
            Transition {
                to: "moveOut"
                NumberAnimation { properties: "x,y"; easing.type: Easing.InOutQuad; duration: 200; loops: 1 }
            },
            Transition {
                to: "moveIn"
                NumberAnimation { properties: "x,y"; easing.type: Easing.InOutQuad; duration: 200; loops: 1 }
            }
        ]
    }

    Rectangle {
        id: mainLeft
        y: 5
        width: 150
        height: 25
        color: "#59585a"
        radius: 10

        Text {
            id: mainText
            x: 5
            y: 3
            width: 100
            height: 20
            color: "#ffffff"
            text: qsTr("Left Header")
            font.bold: true
            visible: !sliderMain.startLeftSliding
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 15

            MouseArea {
                anchors.fill: parent
                visible: !sliderMain.startLeftSliding
                onClicked: sliderMain.startLeftSliding = !sliderMain.startLeftSliding;
            }
        }
    }

    Rectangle {
        id: mainRightOffset
        width: 10
        height: 25
        color: "#59585a"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
    }

    Rectangle {
        id: obj1Right
        width: 150
        height: 25
        color: "#504f50"
        radius: 10
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0

        Text {
            id: obj1RightText
            x: 5
            y: 3
            width: 100
            height: 20
            color: "#ffffff"
            text: qsTr("Right Info")
            visible: sliderMain.startRightSliding
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 15

            MouseArea {
                anchors.fill: parent
                visible: sliderMain.startRightSliding
                onClicked: sliderMain.startRightSliding = !sliderMain.startRightSliding;
            }
        }

        states: [
            State {
                name: "moveOut"; when: sliderMain.startRightSliding == true;
                PropertyChanges { target: obj1Right;anchors.rightMargin:mainRight.width+20 }
            },
            State {
                name: "moveIn"; when: sliderMain.startRightSliding == false;
                PropertyChanges { target: obj1Right;anchors.rightMargin:20 }
            }
        ]

        transitions: [
            Transition {
                to: "moveOut"
                NumberAnimation { properties: "x,y"; easing.type: Easing.InOutQuad; duration: 200; loops: 1 }
            },
            Transition {
                to: "moveIn"
                NumberAnimation { properties: "x,y"; easing.type: Easing.InOutQuad; duration: 200; loops: 1 }
            }
        ]
    }

    Rectangle {
        id: mainRight
        y: 5
        width: 150
        height: 25
        color: "#59585a"
        radius: 10
        anchors.right: parent.right
        anchors.rightMargin: 0

        Text {
            id: mainRightText
            x: 5
            y: 3
            width: 100
            height: 20
            color: "#ffffff"
            text: qsTr("Right Header")
            font.bold: true
            visible: !sliderMain.startRightSliding
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 15

            MouseArea {
                anchors.fill: parent
                visible: !sliderMain.startRightSliding
                onClicked: sliderMain.startRightSliding = !sliderMain.startRightSliding;
            }
        }
    }

    Rectangle {
        id:mainMiddle
        width: 460
        height: 25
        color: "#f92828"
        radius: 10
        anchors.top: headerBorder.bottom
        anchors.topMargin: 0
        visible: showInfo
        anchors.horizontalCenter: parent.horizontalCenter

        Text {
            id: mainMiddleText
            width: 440
            height: parent.height
            color: "#ffffff"
            text: qsTr("Information Short")
            wrapMode: Text.WordWrap
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 15
        }

        states: [
            State {
                name: "showLong"; when: sliderMain.showInfo == 2;
                PropertyChanges { target: mainMiddle;height:230; }
                PropertyChanges { target: obj1Left;color: "#911414"; }
                PropertyChanges { target: obj1Right;color: "#911414";}
                PropertyChanges { target: mainMiddleText;text: qsTr("Information Detailed");}
            },
            State {
                name: "showShort"; when: sliderMain.showInfo == 1;
                PropertyChanges { target: obj1Left;color: "#911414"; }
                PropertyChanges { target: obj1Right;color: "#911414";}
            }
        ]
    }
}
