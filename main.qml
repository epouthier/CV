
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15
import Qt.labs.platform 1.0

import Phase 1.0 as Phase
import Phase.Misc 1.0 as PMisc
import PhaseControl 1.0 as PControl

import "Control/"

//PControl.ApplicationWindow {
Item {
    id: main

    //visibility: ApplicationWindow.Maximized

    Material.theme: Material.Light
    Material.accent: "#529c4f"
    //Material.accent: "#ff8500"

    /*onBeforeClosing: {
        Phase.Application.quit();
    }*/

    anchors.fill: parent

    function takeScreenshot() {
        fileDialog.open();
    }

    FileDialog {
        id: fileDialog

        fileMode: FileDialog.SaveFile
        onAccepted: {
            grabber.grab(body, Qt.size(2480, 3508));
        }
    }

    PMisc.ItemGrabber {
        id: grabber

        onGrabbed: {
            if (grabber.save(fileDialog.file.toLocaleString().replace("file://", ""))) {
                Qt.openUrlExternally(fileDialog.file.toLocaleString());
            }
        }
    }

    Item {
        id: body
        anchors.fill: parent

        DeveloperFr {}
        //DeveloperEn {}
        //BakerFr {}
    }

    Column {
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.topMargin: mm(6)
        anchors.rightMargin: mm(4)
        spacing: mm(1)

        PControl.Button {
            anchors.right: parent.right
            highlighted: true
            glyph: "fa-solid-expand-arrows-alt"
            text: "Paper size"
            onClicked: {
                ApplicationWindow.window.width = 210 * 3.8;
                ApplicationWindow.window.height = 297 * 3.8;
            }
        }

        PControl.Button {
            anchors.right: parent.right
            highlighted: true
            glyph: "fa-solid-camera-retro"
            text: "Take screenshot"
            onClicked: {
                takeScreenshot();
            }
        }

        PControl.Button {
            anchors.right: parent.right
            highlighted: true
            glyph: "fa-brands-linkedin"
            text: "LinkedIn"
            onClicked: {
                Qt.openUrlExternally("https://www.linkedin.com/in/emmanuel-pouthier-49162757/")
            }
        }
    }
}
