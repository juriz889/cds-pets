sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'managepets/test/integration/FirstJourney',
		'managepets/test/integration/pages/PetList',
		'managepets/test/integration/pages/PetObjectPage',
		'managepets/test/integration/pages/VisitObjectPage'
    ],
    function(JourneyRunner, opaJourney, PetList, PetObjectPage, VisitObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('managepets') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePetList: PetList,
					onThePetObjectPage: PetObjectPage,
					onTheVisitObjectPage: VisitObjectPage
                }
            },
            opaJourney.run
        );
    }
);