
import QtQuick 2.15
import QtQuick.Controls 2.15

import Phase 1.0 as Phase
import PhaseControl 1.0 as PControl

Column {
    id: root

    property string title: "UX/UI Designer"
    property string birthdayNow: {
        var birthday = new Date('1990-02-26');
        var now = new Date(Date.now());
        return now.getFullYear() - birthday.getFullYear();
    }
    property string birthday: birthdayNow + " ans"
    property string email: "emmanuel.pouthier@gmail.com"
    property string phone: "0603212398"

    anchors.left: parent.left
    anchors.right: parent.right
    spacing: mm(2)

    PControl.Text {
        anchors.left: parent.left
        anchors.right: parent.right

        font.pixelSize: pt(18)
        text: "Emmanuel Pouthier"
        color: "#383838"
        horizontalAlignment: Text.AlignHCenter
    }

    PControl.Text {
        anchors.left: parent.left
        anchors.right: parent.right

        font.pixelSize: pt(11)
        text: root.title
        color: "#383838"
        horizontalAlignment: Text.AlignHCenter
    }

    PControl.Text {
        anchors.left: parent.left
        anchors.right: parent.right

        font.pixelSize: pt(9)
        text: root.birthday + " - " + root.email + " - " + root.phone
        color: "#383838"
        horizontalAlignment: Text.AlignHCenter
    }
}
