
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

import PhaseControl 1.0 as PControl

PControl.Text {
    id: root

    property bool colored: false

    anchors.left: parent.left
    anchors.right: parent.right

    height: text === "" ? 0 : contentHeight

    font.pixelSize: pt(8.5)
    color: colored ? Material.accent : "#383838"
    wrapMode: Text.Wrap
    horizontalAlignment: {
        var p = root.parent;
        while (p) {
            if (p.alignRight) {
                return Text.AlignRight;
            }
            p = p.parent;
        }

        return Text.AlignLeft;
    }
}
