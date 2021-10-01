
import QtQuick 2.15
import QtQuick.Controls 2.15

Column {
    id: root

    property string year: ""
    property string degree: ""
    property string speciality: ""
    property alias place: __School_place.text

    anchors.left: parent.left
    anchors.right: parent.right

    TextItem {
        text: {
            var result = "";

            result += "<b>" + root.year + " - " + root.degree + "</b>";

            if (root.speciality !== "") {
                result += " - " + root.speciality;
            }

            return result;
        }
    }

    TextItem {
        id: __School_place

        colored: true
    }
}
