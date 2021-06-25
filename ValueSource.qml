import QtQuick 2.15

Item {
    id:valueSource
    property bool mainScreen: false
    property bool leftTopSlide: false
    property bool rightTopSlide: false
    property bool leftCenterMenu: false
    property bool rightCenterMenu: false
    property int leftBottomSlide: 0
    property int rightBottomSlide: 0
    property int topCenterSlide: 0
    property double centerImgOpacity: 1.0
    property double leftImgOpacity: 1.0
    property double rightImgOpacity:1.0

    SequentialAnimation {
        running: true
        loops: Animation.Infinite

        PauseAnimation {
            duration: 5000
        }
        // Main Splash Screen
        PropertyAction {
            target: valueSource
            property: "mainScreen"
            value: true
        }
        PauseAnimation {
            duration: 1000
        }
        //////////////////////////////////////

        // reduce the opocity of the Main background screen
        PropertyAction {
            target: valueSource
            property: "centerImgOpacity"
            value: 0.90
        }
        PauseAnimation {
            duration: 60
        }
        PropertyAction {
            target: valueSource
            property: "centerImgOpacity"
            value: 0.80
        }
        PauseAnimation {
            duration: 60
        }
        PropertyAction {
            target: valueSource
            property: "centerImgOpacity"
            value: 0.70
        }
        PauseAnimation {
            duration: 60
        }
        PropertyAction {
            target: valueSource
            property: "centerImgOpacity"
            value:0.60
        }
        PauseAnimation {
            duration: 60
        }
        PropertyAction {
            target: valueSource
            property: "centerImgOpacity"
            value: 0.60
        }
        PauseAnimation {
            duration: 60
        }
        PropertyAction {
            target: valueSource
            property: "centerImgOpacity"
            value: 0.40
        }
        PauseAnimation {
            duration: 60
        }
        PropertyAction {
            target: valueSource
            property: "centerImgOpacity"
            value: 0.30
        }
        PauseAnimation {
            duration: 60
        }
        PropertyAction {
            target: valueSource
            property: "centerImgOpacity"
            value: 0.20
        }
        PauseAnimation {
            duration: 60
        }
        PropertyAction {
            target: valueSource
            property: "centerImgOpacity"
            value: 0.10
        }
        PauseAnimation {
            duration: 60
        }
        PropertyAction {
            target: valueSource
            property: "centerImgOpacity"
            value: 0.0
        }
        //////////////////////////////////////
        // Left Header Information button
        PauseAnimation {
            duration: 1000
        }
        PropertyAction {
            target: valueSource
            property: "leftTopSlide"
            value: true
        }

        PauseAnimation {
            duration: 600
        }
        PropertyAction {
            target: valueSource
            property: "leftTopSlide"
            value: false
        }
        //////////////////////////////////////
        // Right Header Information button
        PauseAnimation {
            duration: 1000
        }
        PropertyAction {
            target: valueSource
            property: "rightTopSlide"
            value: true
        }

        PauseAnimation {
            duration: 600
        }
        PropertyAction {
            target: valueSource
            property: "rightTopSlide"
            value: false
        }

        /////////////////////////////////////////////////////////

        PauseAnimation {
            duration: 600
        }
        PropertyAction {
            target: valueSource
            property: "topCenterSlide"
            value: 1
        }
        PauseAnimation {
            duration: 600
        }
        PropertyAction {
            target: valueSource
            property: "topCenterSlide"
            value: 2
        }
        PauseAnimation {
            duration: 600
        }
        PropertyAction {
            target: valueSource
            property: "topCenterSlide"
            value: 1
        }
        PauseAnimation {
            duration: 600
        }
        PropertyAction {
            target: valueSource
            property: "topCenterSlide"
            value: 0
        }

        //////////////////////////////////////////////////////

        PauseAnimation {
            duration: 600
        }
        // Left Center Menu Processing
        PropertyAction {
            target: valueSource
            property: "leftCenterMenu"
            value: true
        }
        PauseAnimation {
            duration: 3000
        }
        // Right Center Menu Processing
        PropertyAction {
            target: valueSource
            property: "rightCenterMenu"
            value: true
        }
        PauseAnimation {
            duration: 2500
        }
        //////////////////////////////////////////////////////////
        PropertyAction {
            target: valueSource
            property: "leftBottomSlide"
            value: 1
        }
        PauseAnimation {
            duration: 600
        }
        PropertyAction {
            target: valueSource
            property: "leftCenterMenu"
            value: false
        }
        PauseAnimation {
            duration: 600
        }
        PropertyAction {
            target: valueSource
            property: "leftBottomSlide"
            value: 2
        }
        PauseAnimation {
            duration: 600
        }
        PropertyAction {
            target: valueSource
            property: "leftBottomSlide"
            value: 1
        }
        PauseAnimation {
            duration: 600
        }
        PropertyAction {
            target: valueSource
            property: "leftBottomSlide"
            value: 0
        }

        //////////////////////////////////////////////////////////////////
        PauseAnimation {
            duration: 600
        }
        PropertyAction {
            target: valueSource
            property: "rightBottomSlide"
            value: 1
        }
        PauseAnimation {
            duration: 600
        }
        PropertyAction {
            target: valueSource
            property: "rightCenterMenu"
            value: false
        }
        PauseAnimation {
            duration: 600
        }
        PropertyAction {
            target: valueSource
            property: "rightBottomSlide"
            value: 2
        }
        PauseAnimation {
            duration: 600
        }
        PropertyAction {
            target: valueSource
            property: "rightBottomSlide"
            value: 1
        }
        PauseAnimation {
            duration: 600
        }
        PropertyAction {
            target: valueSource
            property: "rightBottomSlide"
            value: 0
        }

        ///////////////////////////////////////////////////////////////////
        PauseAnimation {
            duration: 600
        }
        PropertyAction {
            target: valueSource
            property: "topCenterSlide"
            value: 1
        }
        PauseAnimation {
            duration: 600
        }
        PropertyAction {
            target: valueSource
            property: "leftBottomSlide"
            value: 1
        }
        PauseAnimation {
            duration: 600
        }
        PropertyAction {
            target: valueSource
            property: "rightBottomSlide"
            value: 1
        }

        PauseAnimation {
            duration: 600
        }
        PropertyAction {
            target: valueSource
            property: "topCenterSlide"
            value: 2
        }
        PauseAnimation {
            duration: 600
        }
        PropertyAction {
            target: valueSource
            property: "rightBottomSlide"
            value: 2
        }
        PauseAnimation {
            duration: 600
        }
        PropertyAction {
            target: valueSource
            property: "leftBottomSlide"
            value: 2
        }

        PauseAnimation {
            duration: 600
        }
        PropertyAction {
            target: valueSource
            property: "leftBottomSlide"
            value: 0
        }
        PauseAnimation {
            duration: 600
        }
        PropertyAction {
            target: valueSource
            property: "rightBottomSlide"
            value: 0
        }
        PauseAnimation {
            duration: 600
        }
        PropertyAction {
            target: valueSource
            property: "topCenterSlide"
            value: 0
        }

        //////////////////////////////////////
        PauseAnimation {
            duration: 60
        }
        PropertyAction {
            target: valueSource
            property: "centerImgOpacity"
            value: 0.10
        }
        PauseAnimation {
            duration: 60
        }
        PropertyAction {
            target: valueSource
            property: "centerImgOpacity"
            value: 0.20
        }
        PauseAnimation {
            duration: 60
        }
        PropertyAction {
            target: valueSource
            property: "centerImgOpacity"
            value: 0.30
        }
        PauseAnimation {
            duration: 60
        }
        PropertyAction {
            target: valueSource
            property: "centerImgOpacity"
            value:0.40
        }
        PauseAnimation {
            duration: 60
        }
        PropertyAction {
            target: valueSource
            property: "centerImgOpacity"
            value: 0.50
        }
        PauseAnimation {
            duration: 60
        }
        PropertyAction {
            target: valueSource
            property: "centerImgOpacity"
            value: 0.60
        }
        PauseAnimation {
            duration: 60
        }
        PropertyAction {
            target: valueSource
            property: "centerImgOpacity"
            value: 0.70
        }
        PauseAnimation {
            duration: 60
        }
        PropertyAction {
            target: valueSource
            property: "centerImgOpacity"
            value: 0.80
        }
        PauseAnimation {
            duration: 60
        }
        PropertyAction {
            target: valueSource
            property: "centerImgOpacity"
            value: 0.90
        }
        PauseAnimation {
            duration: 60
        }
        PropertyAction {
            target: valueSource
            property: "centerImgOpacity"
            value: 1.0
        }

        //////////////////////////////////////
        PauseAnimation {
            duration: 1000
        }
        PropertyAction {
            target: valueSource
            property: "mainScreen"
            value: false
        }
    }
}
