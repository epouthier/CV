
import QtQuick 2.15
import QtQuick.Controls 2.15

Column {
    id: root

    property string title: ""
    property string company: ""
    property alias year: __School_year.text
    property alias description: __School_description.text

    anchors.left: parent.left
    anchors.right: parent.right

    TextItem {
        text: {
            var result = "";
            if (root.title) result += root.title;
            if (root.company) result += " - " + root.company;
            return result;
        }

        font.bold: true
    }

    TextItem {
        id: __School_year

        colored: true
    }

    TextItem {
        id: __School_description
    }
}
