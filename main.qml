import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: window
    width: 800
    height: 480
    visible: true
    color: "#000000"
    title: qsTr("sampleqtgui")
    flags: Qt.Window | Qt.FramelessWindowHint

    Item {
        id: mainWindow
        width: 800
        height: 480
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        ValueSource { id: valueSource }

        Rectangle {
            id:splashScrn
            width: parent.width; height: parent.height
            color: "#000000"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            visible: !valueSource.mainScreen

            AnimatedImage { id: animation; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter: parent.verticalCenter; source: "qrc:/images/loading.webp";}
        }

        Item {
            width: parent.width; height: parent.height
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            visible: valueSource.mainScreen

            CenterMenu {
                id: centerMenu
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                centerImgOpacity: valueSource.centerImgOpacity
                leftSplash: valueSource.leftCenterMenu
                rightSplash: valueSource.rightCenterMenu
            }

            Item {
                id: element
                width: parent.width
                height: 30

                TopMenu {
                    startLeftSliding: valueSource.leftTopSlide;
                    startRightSliding: valueSource.rightTopSlide;
                    showInfo: valueSource.topCenterSlide;
                }
            }

            Item {
                id: element1
                width: 800
                height: 30
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0

                BottomMenu {
                    x: 0
                    y: -435
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                    startLeftSliding: valueSource.leftBottomSlide;
                    startRightSliding: valueSource.rightBottomSlide;
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.33}
}
##^##*/
