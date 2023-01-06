sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'computershop/computershop/test/integration/FirstJourney',
		'computershop/computershop/test/integration/pages/ComputerList',
		'computershop/computershop/test/integration/pages/ComputerObjectPage'
    ],
    function(JourneyRunner, opaJourney, ComputerList, ComputerObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('computershop/computershop') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheComputerList: ComputerList,
					onTheComputerObjectPage: ComputerObjectPage
                }
            },
            opaJourney.run
        );
    }
);