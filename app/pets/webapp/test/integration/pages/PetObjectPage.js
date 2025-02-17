sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'de.zjz.pets',
            componentId: 'PetObjectPage',
            contextPath: '/Owner/pets'
        },
        CustomPageDefinitions
    );
});