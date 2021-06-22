import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
    id:sliderMain
    width: 800
    height: 30
    property int startLeftSliding: 0
    property int startRightSliding: 0

    Rectangle {
        id: headerBorder
        height: 5
        width: parent.width
        color: "#59585a"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
    }
    Rectangle {
        id: mainLeftOffset
        width: 10
        height: 25
        color: "#59585a"
        anchors.top: parent.top
        anchors.topMargin: 0
    }

    Rectangle {
        id:infoLeft
        y: 5
        width: 135
        height: 25
        color: "#fd480a"
        radius: 10
        anchors.bottom: headerBorder.top
        anchors.bottomMargin: 0
        anchors.left: obj1Left.right
        anchors.leftMargin: 0
        visible: startLeftSliding

        Text {
            id: infoLeftText
            width: 135
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
                name: "showLong"; when: sliderMain.startLeftSliding == 2;
                PropertyChanges { target: infoLeft;height:230; }
                PropertyChanges { target: infoLeftText;text: qsTr("Information Detailed");}
            },
            State {
                name: "showShort"; when: sliderMain.startLeftSliding == 1;
            }
        ]
    }


    Rectangle {
        id: mainRightOffset
        width: 10
        height: 25
        color: "#59585a"
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
    }


    Rectangle {
        id:infoRight
        width: 135
        height: 25
        color: "#fd480a"
        radius: 10
        anchors.bottom: headerBorder.top
        anchors.bottomMargin: 0
        anchors.right: obj1Right.left
        anchors.rightMargin: 0
        visible: startRightSliding

        Text {
            id: infoRightText
            width: 135
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
                name: "showLong"; when: sliderMain.startRightSliding == 2;
                PropertyChanges { target: infoRight;height:230; }
                PropertyChanges { target: infoRightText;text: qsTr("Information Detailed");}
            },
            State {
                name: "showShort"; when: sliderMain.startRightSliding == 1;
            }
        ]
    }

    Rectangle {
        id: obj2Left
        width: 30
        height: 25
        color: "#dc3c05"
        radius: 10
        anchors.right: mainMiddle.left
        anchors.rightMargin: -15
        anchors.top: parent.top
        anchors.topMargin: 0
        visible: startLeftSliding

    }
    Rectangle {
        id: obj2Right
        width: 30
        height: 25
        color: "#dc3c05"
        radius: 10
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.left: mainMiddle.right
        anchors.leftMargin: -15
        visible: startRightSliding
    }
    Rectangle {
        id: mainMiddle
        x: 0
        width: 220
        height: 25
        color: "#59585a"
        radius: 10
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.horizontalCenter: parent.horizontalCenter
        Text {
            id: mainText1
            y: 3
            width: 100
            height: 20
            color: "#00a652"
            text: qsTr("SAMPLE")
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 15
            horizontalAlignment: Text.AlignLeft
            font.bold: true
            verticalAlignment: Text.AlignVCenter
        }

        Text {
            id: mainText2
            x: 5
            y: 6
            width: 100
            height: 20
            color: "#00a652"
            text: qsTr("QT GUI")
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 15
            horizontalAlignment: Text.AlignRight
            font.bold: true
            verticalAlignment: Text.AlignVCenter
        }
    }
    Rectangle {
        id: obj1Left
        width: 30
        height: 25
        color: "#dc3c05"
        radius: 10
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.left: mainLeft.right
        anchors.leftMargin: -15
        visible: startLeftSliding
    }
    Rectangle {
        id: mainLeft
        width: 125
        height: 25
        color: "#59585a"
        radius: 10
        anchors.top: parent.top
        anchors.topMargin: 0

        Text {
            id: mainText
            x: 5
            y: 3
            width: 100
            height: 20
            color: "#ffffff"
            text: qsTr("Left Footer")
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 15
        }
    }
    Rectangle {
        id: obj1Right
        width: 30
        height: 25
        color: "#dc3c05"
        radius: 10
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: mainRight.left
        anchors.rightMargin: -15
        visible: startRightSliding
    }
    Rectangle {
        id: mainRight
        width: 125
        height: 25
        color: "#59585a"
        radius: 10
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0

        Text {
            id: mainRightText
            x: 5
            y: 3
            width: 100
            height: 20
            color: "#ffffff"
            text: qsTr("Right Footer")
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 15
        }
    }
}
