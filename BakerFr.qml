
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15
import Qt.labs.platform 1.0

import Phase 1.0 as Phase
import PhaseControl 1.0 as PControl

import "Control/"

Layout {
    id: root

    cellsColor: "#ffc400-#ff8585"

    contentItem: Item {
        width: root.width
        height: childrenRect.height

        Header {
            id: header

            title: "Boulanger (en formation)"
        }

        Item {
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: header.bottom
            anchors.leftMargin: mm(6)
            anchors.rightMargin: mm(6)
            anchors.topMargin: mm(8)
            height: childrenRect.height

            Rectangle {
                id: columnSeparator

                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: -mm(62)
                anchors.top: parent.top
                height: columnLeft.height
                width: mm(2)

                color: "#ffc400"
            }

            Column {
                id: columnLeft

                anchors.left: columnSeparator.left
                anchors.right: parent.right
                anchors.leftMargin: mm(6)
                spacing: mm(6)

                Section {
                    title: "Education"
                    titleGlyph: "fa-graduation-cap"

                    School {
                        year: "2021"
                        degree: "CAP boulanger (en formation)"
                        place: "Ecole des pros"
                    }

                    School {
                        year: "2012"
                        degree: "Licence professionnelle Systèmes Informatiques et Logiciels"
                        //speciality: "Spécialité Informatique Multimédia et Jeux en réseau"
                        place: "IUT de Nice"
                    }

                    School {
                        year: "2011"
                        degree: "DUT en informatique"
                        place: "IUT de Nantes"
                    }

                    School {
                        year: "2009"
                        degree: "Baccalauréat STI génie électronique"
                        place: "Lycée Immaculée Conception de Laval"
                    }
                }

                Section {
                    title: "Compétences"
                    titleGlyph: "fa-check-circle"

                    Skill {
                        name: "Pain"
                        score: 2
                        nameWidth: mm(30)
                    }

                    Skill {
                        name: "Pain spéciaux"
                        score: 1
                        nameWidth: mm(30)
                    }

                    Skill {
                        name: "Viennoiserie"
                        score: 1
                        nameWidth: mm(30)
                    }

                    Skill {
                        name: "Pâtisserie"
                        score: 2
                        nameWidth: mm(30)
                    }

                    Skill {
                        name: "Chocolaterie"
                        score: 3
                        nameWidth: mm(30)
                    }
                }

                AboutMeFr {}
            }

            /*Section {
                anchors.left: parent.horizontalCenter
                anchors.leftMargin: mm(6)
                anchors.right: parent.right
                spacing: mm(6)

                title: "Expériences"
                titleGlyph: "fa-book"

                Experience {
                    title: ""
                    company: ""
                    year: ""
                    description: ""
                }
            }*/
        }
    }
}
