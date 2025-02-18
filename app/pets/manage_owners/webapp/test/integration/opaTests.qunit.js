sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'de/zjz/pets/test/integration/FirstJourney',
		'de/zjz/pets/test/integration/pages/OwnerList',
		'de/zjz/pets/test/integration/pages/OwnerObjectPage',
		'de/zjz/pets/test/integration/pages/PetObjectPage'
    ],
    function(JourneyRunner, opaJourney, OwnerList, OwnerObjectPage, PetObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('de/zjz/pets') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheOwnerList: OwnerList,
					onTheOwnerObjectPage: OwnerObjectPage,
					onThePetObjectPage: PetObjectPage
                }
            },
            opaJourney.run
        );
    }
);