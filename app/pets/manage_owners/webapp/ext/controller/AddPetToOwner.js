sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        addPetToOwner: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
        }
    };
});
