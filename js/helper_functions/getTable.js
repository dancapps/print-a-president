//functions that help with getting tables based off of ids and vice versa
export function getTable(urlId){

	switch(urlId){

		//This is the full 3D Harrison model
		case "dab9d97c24e1447eab460d05f8f4753e":

			return "mainmodel";

		case "02833727ab43420db10211f3ac66dd10":

			return "section_0";

		case "1b60894e6047440dad5a1c96e4365168":

			return "section_1";

		case '8113fdf3224a43ba8ae74d10f5020026':

			return 'section_2';

		case '42377a31c0204c23b18b80030a8baa46':

			return 'section_3';

		case '49cd782a089c48c7a7ac4fcebbf8587f':

			return 'section_4';

		case 'cb0766c88c4448a1b376a91f9faaf319':

			return 'section_5';

		case '8cb9cf63c39249e39ce25fdc5bf73b0c':

			return 'section_6';

		case 'e36466bdd52a4c14a3937f36ec3a5d29':

			return 'section_7';

		case '13a1b5b5a68f4829aea6f0a42cc1e20c':

			return 'section_8';

		case '35505437fa774287a464464acc16f9e4':

			return 'section_9';

		case '029a5a8b100b404db6b1ad082de9d5a5':

			return 'section_10';
	}
}

//this returns the urlId of each section based off of the materialSection given
export function getId(materialSection){

	console.log("GETID FUNCTION", materialSection);

	switch(materialSection){

		//This is for the right foot
		case "sec0_initialShadingGroup1": 

			return "02833727ab43420db10211f3ac66dd10";

		case "sec1_initialShadingGroup1":

			return "1b60894e6047440dad5a1c96e4365168"

		case 'sec2_initialShadingGroup1':

			return '8113fdf3224a43ba8ae74d10f5020026';

		case 'sec3_initialShadingGroup1':

			return '42377a31c0204c23b18b80030a8baa46';

		case 'sec4_initialShadingGroup1':

			return '49cd782a089c48c7a7ac4fcebbf8587f';

		case 'sec5_initialShadingGroup1':

			return 'cb0766c88c4448a1b376a91f9faaf319';

		case 'sec6_initialShadingGroup1':

			return '8cb9cf63c39249e39ce25fdc5bf73b0c';

		case 'sec7_initialShadingGroup1':

			return 'e36466bdd52a4c14a3937f36ec3a5d29';

		case 'sec8_initialShadingGroup1':

			return '13a1b5b5a68f4829aea6f0a42cc1e20c';

		case 'sec9_initialShadingGroup1':

			return '35505437fa774287a464464acc16f9e4';

		case 'sec10_initialShadingGroup1':

			return '029a5a8b100b404db6b1ad082de9d5a5';
	}

}