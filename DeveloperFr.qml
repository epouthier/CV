
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15
import Qt.labs.platform 1.0

import Phase 1.0 as Phase
import PhaseControl 1.0 as PControl

import "Control/"

Layout {
    id: root

    //cellsColor: "#ffab00-#ffc400"

    contentItem: Item {
        width: parent.width
        height: childrenRect.height

        Header {
            id: header

            //title: "Dévelopeur multimédia"
            title: "UX/UI Designer"
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
                    title: "Education"
                    titleGlyph: "fa-graduation-cap"
                    alignRight: true

                    School {
                        year: "2012"
                        degree: "Licence professionnelle Systèmes Informatiques et Logiciels"
                        speciality: "Spécialité Informatique Multimédia et Jeux en réseau"
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
                    title: "Logiciels"
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

                AboutMeFr {
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
                    title: "Ingénieur R&D"
                    company: "Ekinnox (Sophia Antipolis)"
                    year: "2019-2021"
                    description: "Logiciel d'analyse de la marche"
                }

                Experience {
                    title: "Ingénieur R&D"
                    company: "QuantifiCare (Sophia Antipolis)"
                    year: "2014-2019"
                    description: "Logiciels de simulations 3d et de mesures de médecine esthétique\n- Spécialités : développement UX/UI, architecture logicielle"
                }

                Experience {
                    title: "Ingénieur R&D"
                    company: "Laboratoire I3S (CNRS, UNICE)"
                    year: "2012-2014"
                    description: "- Applications Android de suivi de données d'implant cardiaque\n- Plateforme web de visualisations de données issues de capteurs avec multi-synchronisation"
                }

                Experience {
                    title: "Développeur web"
                    company: "Groupe Pronuptia (Laval)"
                    year: "2012"
                    description: "- Mise en place de la collection 2013 sur l'ensemble des sites web\n- Développement Web"
                }

                Experience {
                    title: "Stage"
                    company: "Unit Advanced Concept (Sophia Antipolis)"
                    year: "2012"
                    description: "- Développement d'un lecteur multimédia pour systèmes embarqués"
                }

                Experience {
                    title: "Projet universitaire"
                    year: "2011-2012"
                    description: "- Développement d'un jeux vidéo pour les enfants hospitalisés et présentation au festival international des jeux à Cannes"
                }

                Experience {
                    title: "Stage"
                    company: "Station Biologique de Roscoff (CNRS, UPMC)"
                    year: "2011"
                    description: "- Développement d'un plugin ImageJ\n- Mise en place du serveur Omero"
                }

                
            }
        }
    }
}
