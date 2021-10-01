
import QtQuick 2.15
import QtQuick.Controls 2.15

import Phase 1.0
import PhaseControl 1.0 as PControl

Row {
    id: root

    property alias name: __Skill_name.text
    property int score: 0
    property alias nameWidth: __Skill_name.width

    height: childrenRect.height
    spacing: mm(2)

    anchors.right: {
        var p = root.parent;
        while (p) {
            if (p.alignRight) {
                return parent.right;
            }
            p = p.parent;
        }

        return undefined;
    }

    TextItem {
        id: __Skill_name

        anchors.left: undefined
        anchors.right: undefined
    }

    Repeater {
        model: 5

        PControl.Glyphicon {
            required property int index
            
            anchors.verticalCenter: __Skill_name.verticalCenter
            glyph: (index < score)  ? "fa-star" : "fa-star-o"
            color: "#383838"
            font.pixelSize: pt(8)
        }
    }
}
