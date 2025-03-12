import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick3D

Window {
    visible: true
    width: 800
    height: 600
    title: "Load GLTF Model in QML"

    View3D {
        id: view
        anchors.fill: parent

        environment: SceneEnvironment {
            backgroundMode: SceneEnvironment.Color
            clearColor: Qt.rgb(239, 232, 95)
        }

        PerspectiveCamera {
            position: Qt.vector3d(0, 0, 500)
            //eulerRotation.x: 15           
        }

        DirectionalLight {
        }

        PointLight {
            z: 300
            y:600
        }

        SpotLight {
            y:100
            z:500
            brightness: 10
            ambientColor: Qt.rgba(0.1, 0.1, 0.1, 1.0)
        }

        Model {
            source: "#Cube"
            position: Qt.vector3d(0, 0, 0)
            scale: Qt.vector3d(1, 1, 1)
            materials: [
                PrincipledMaterial  {
                    //lighting:PrincipledMaterial.NoLighting
                    baseColor: "red"
                }
            ]
        }
    }
}