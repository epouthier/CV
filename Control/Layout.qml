
import QtQuick 2.15
import QtQuick.Controls 2.15

import PhaseArt 1.0 as PArt

Item {
    id: root

    property string cellsColor: "#256b3c-#319251"
    property alias contentItem: content.children

    anchors.fill: parent

    Rectangle {
        anchors.fill: parent
        color: "#fff"
    }

    Flickable {
        id: flick

        anchors.fill: parent

        contentWidth: childrenRect.width
        contentHeight: childrenRect.height
        topMargin: mm(10)
        bottomMargin: mm(6)

        Item {
            id: content

            width: root.width
            height: childrenRect.height
        }
    }

    PArt.Voronoi {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        height: mm(4)
        cellsColors: root.cellsColor
    }

    PArt.Voronoi {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        height: mm(4)
        cellsColors: root.cellsColor
    }
}
