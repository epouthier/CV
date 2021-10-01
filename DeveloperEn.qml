
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15
import Qt.labs.platform 1.0

import Phase 1.0 as Phase
import PhaseControl 1.0 as PControl

import "Control/"

Layout {
    id: root

    contentItem: Item {
        width: parent.width
        height: childrenRect.height

        Header {
            id: header

            //title: "Dévelopeur multimédia"
            title: "UX/UI Designer"
            birthday: birthdayNow + " years old"
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
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                height: Math.max(columnLeft.height, columnRight.height)
                width: mm(2)

                color: "#a9cba6"
            }

            Column {
                id: columnLeft

                anchors.left: parent.left
                anchors.right: parent.horizontalCenter
                anchors.rightMargin: mm(6)
                spacing: mm(3)

                Section {
                    title: "School"
                    titleGlyph: "fa-graduation-cap"
                    alignRight: true

                    School {
                        year: "2012"
                        degree: "2 year technical university degree in computer systems and software"
                        speciality: "Speciality multimedia computer and network game"
                        place: "Institute of technology of Nice"
                    }

                    School {
                        year: "2011"
                        degree: "2 year technical university degree in computer systems and software"
                        place: "Institute of technology of Nantes"
                    }

                    School {
                        year: "2009"
                        degree: "French equivalent of high school diploma in electronic engineering"
                        place: "High school Immaculée Conception of Laval"
                    }
                }

                Section {
                    title: "Skills"
                    titleGlyph: "fa-check-circle"
                    alignRight: true

                    Skill {
                        name: "UX/UI"
                        score: 5
                    }

                    Skill {
                        name: "Qt/C++/JavaScript"
                        score: 4
                    }

                    Skill {
                        name: "Design Pattern"
                        score: 3
                    }

                    Skill {
                        //name: "2d/3d/Video/Game"
                        name: "3d/Video/Game"
                        score: 4
                    }

                    Skill {
                        name: "Web"
                        score: 4
                    }
                }

                Section {
                    title: "Softwares"
                    titleGlyph: "fa-file"
                    alignRight: true

                    Software {
                        name: "Developer tools"
                        score: 5
                    }

                    Software {
                        name: "Game tools"
                        score: 4
                    }

                    Software {
                        name: "Gimp"
                        score: 4
                    }

                    Software {
                        name: "Inskape"
                        score: 3
                    }

                    Software {
                        name: "Premiere Pro"
                        score: 3
                    }
                }

                AboutMeEn {
                    alignRight: true
                }
            }

            Section {
                id: columnRight
                
                anchors.left: parent.horizontalCenter
                anchors.leftMargin: mm(6)
                anchors.right: parent.right
                spacing: mm(4)

                title: "Expériences"
                titleGlyph: "fa-book"

                Experience {
                    title: "R&D Engineer"
                    company: "Ekinnox (Sophia Antipolis)"
                    year: "2019-2021"
                    description: "Gait analysis software"
                }

                Experience {
                    title: "R&D Engineer"
                    company: "QuantifiCare (Sophia Antipolis)"
                    year: "2014-2019"
                    description: "3D simulation software and aesthetic medicine measurements\n- Specialties : UX/UI development, software architecture"
                }

                Experience {
                    title: "R&D Engineer"
                    company: "I3S computer lab (CNRS, UNICE)"
                    year: "2012-2014"
                    description: "- Android applications for cardiac implant data tracking\n- Web platform for data visualizations from sensors with multi-synchronization"
                }

                Experience {
                    title: "Web developer"
                    company: "Groupe Pronuptia (Laval)"
                    year: "2012"
                    description: "- Set up of the 2013 collection on all websites\n- Web development"
                }

                Experience {
                    title: "Internship"
                    company: "Unit Advanced Concept (Sophia Antipolis)"
                    year: "2012"
                    description: "- Development of a multimedia player for embedded systems"
                }

                Experience {
                    title: "University project"
                    year: "2011-2012"
                    description: "- Development of a video game for hospitalized children and presentation at the International Games Festival in Cannes"
                }

                Experience {
                    title: "Internship"
                    company: "Station Biologique de Roscoff (CNRS, UPMC)"
                    year: "2011"
                    description: "- Development of a plugin ImageJ\n- Setting up the server Omero"
                }
            }
        }
    }
}
