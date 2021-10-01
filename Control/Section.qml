
import QtQuick 2.15
import QtQuick.Controls 2.15

import PhaseControl 1.0 as PControl

Item {
    id: root

    property bool alignRight: false
    property alias title: __Section_titleText.text
    property string titleGlyph: ""
    default property alias contentItem: __Section_contentItem.children
    property alias spacing: __Section_contentItem.spacing

    anchors.left: parent.left
    anchors.right: parent.right
    height: childrenRect.height

    Row {
        id: __Section_title

        anchors.right: root.alignRight ? parent.right : undefined
        spacing: mm(2)

        PControl.Glyphicon {
            anchors.verticalCenter: parent.verticalCenter
            visible: !root.alignRight
            glyph: root.titleGlyph
            color: "#383838"
        }

        PControl.Text {
            id: __Section_titleText

            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: pt(12)
            color: "#383838"
        }

        PControl.Glyphicon {
            anchors.verticalCenter: parent.verticalCenter
            visible: root.alignRight
            glyph: root.titleGlyph
            color: "#383838"
        }
    }

    Column {
        id: __Section_contentItem

        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: __Section_title.bottom
        anchors.topMargin: mm(4)

        spacing: mm(2)
    }
}
