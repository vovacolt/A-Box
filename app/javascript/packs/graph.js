require('bpmn-js');
import Modeler from 'bpmn-js/lib/Modeler'

import propertiesPanelModule from 'bpmn-js-properties-panel';

import propertiesProviderModule from 'bpmn-js-properties-panel/lib/provider/camunda';

function openDiagram(bpmnXML, modeler) {
    // import diagram
    modeler.importXML(bpmnXML, function(err) {
        if (err) {
            return console.error('could not import BPMN 2.0 diagram', err);
        }
        // access modeler components
        var canvas = modeler.get('canvas');
        var overlays = modeler.get('overlays');
        // zoom to fit full viewport
        canvas.zoom('fit-viewport');
        // attach an overlay to a node
        overlays.add('SCAN_OK', 'note', {
            position: {
                bottom: 0,
                right: 0
            },
            html: '<div class="diagram-note">Mixed up the labels?</div>'
        });
        // add marker
        canvas.addMarker('SCAN_OK', 'needs-discussion');
    });
}

document.addEventListener("DOMContentLoaded", function() {
    const modeler = new Modeler({
        container: '#geEditor',
        propertiesPanel: {

            parent: '#js-properties-panel'

        },
        keyboard: {
            bindTo: window
        },
        additionalModules: [

            propertiesPanelModule,

            propertiesProviderModule

        ]
    });
    const diagramUrl = 'https://cdn.staticaly.com/gh/bpmn-io/bpmn-js-examples/dfceecba/starter/diagram.bpmn';
    var x = new XMLHttpRequest();
    x.open("GET", diagramUrl, true);
    x.onreadystatechange = function () {
        if (x.readyState === 4 && x.status === 200)
        {
            openDiagram(x.response, modeler);
        }
    };
    x.send(null);


});