sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'project1/test/integration/FirstJourney',
		'project1/test/integration/pages/SHeaderList',
		'project1/test/integration/pages/SHeaderObjectPage'
    ],
    function(JourneyRunner, opaJourney, SHeaderList, SHeaderObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSHeaderList: SHeaderList,
					onTheSHeaderObjectPage: SHeaderObjectPage
                }
            },
            opaJourney.run
        );
    }
);