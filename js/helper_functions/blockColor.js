//All of the functions that will change the colors of the block


export function setCheckedOutColors(checkedOut, mainModel) {

    for (var i = 0; i < checkedOut.length; i++) {

        //assigns the material effect to each respective material as the 
        //for loop runs currently sets normal map color to dark red
        mainModel.setColor(checkedOut[i], mainModel.DiffuseColor, "#26738C");
        mainModel.setColor(checkedOut[i], mainModel.AOPBR, "#26738C");
        mainModel.setColor(checkedOut[i], mainModel.AlbedoPBR, "#26738C");
        mainModel.setColor(checkedOut[i], mainModel.BumpMap, "#26738C");
        mainModel.setColor(checkedOut[i], mainModel.CavityPBR, "#26738C");
        mainModel.setColor(checkedOut[i], mainModel.DiffusePBR, "#26738C");
        mainModel.setColor(checkedOut[i], mainModel.SpecularColor, "#26738C");
        mainModel.setColor(checkedOut[i], mainModel.SpecularF0, "#26738C");
        mainModel.setColor(checkedOut[i], mainModel.SpecularHardness, "#26738C");
        mainModel.setColor(checkedOut[i], mainModel.SpecularPBR, "#26738C");


        //console.log("checkedout individual piece");
        //console.log(checkedOut[i]);

    }//ends for loop
} //ends setCheckedOutColors

//Sets the clicked piece color to yellow
export function setClickedColor(name, mainModel) {
    console.log("setClickedColor", name);

    mainModel.setColor(name, mainModel.DiffuseColor, "#916E2C");
    mainModel.setColor(name, mainModel.AOPBR, "#916E2C");
    mainModel.setColor(name, mainModel.AlbedoPBR, "#916E2C");
    mainModel.setColor(name, mainModel.BumpMap, "#916E2C");
    mainModel.setColor(name, mainModel.CavityPBR, "#916E2C");
    mainModel.setColor(name, mainModel.DiffusePBR, "#916E2C");
    mainModel.setColor(name, mainModel.SpecularColor, "#916E2C");
    mainModel.setColor(name, mainModel.SpecularF0, "#916E2C");
    mainModel.setColor(name, mainModel.SpecularHardness, "#916E2C");
    mainModel.setColor(name, mainModel.SpecularPBR, "#916E2C");
}

export function resetColor(materialHasVal, mainModel){

    mainModel.resetColor(materialHasVal, mainModel.DiffuseColor);
    mainModel.resetColor(materialHasVal, mainModel.AOPBR);
    mainModel.resetColor(materialHasVal, mainModel.AlbedoPBR);
    mainModel.resetColor(materialHasVal, mainModel.BumpMap);
    mainModel.resetColor(materialHasVal, mainModel.CavityPBR);
    mainModel.resetColor(materialHasVal, mainModel.DiffusePBR);
    mainModel.resetColor(materialHasVal, mainModel.SpecularColor);
    mainModel.resetColor(materialHasVal, mainModel.SpecularF0);
    mainModel.resetColor(materialHasVal, mainModel.SpecularHardness);
    mainModel.resetColor(materialHasVal, mainModel.SpecularPBR);
}

export function colorOffset(name, mainModel){
    mainModel.setColor(name, mainModel.DiffuseColor, "#916E2C");
    mainModel.setColor(name, mainModel.AOPBR, "#916E2C");
    mainModel.setColor(name, mainModel.AlbedoPBR, "#916E2C");
    mainModel.setColor(name, mainModel.BumpMap, "#916E2C");
    mainModel.setColor(name, mainModel.CavityPBR, "#916E2C");
    mainModel.setColor(name, mainModel.DiffusePBR, "#916E2C");
    mainModel.setColor(name, mainModel.SpecularColor, "#916E2C");
    mainModel.setColor(name, mainModel.SpecularF0, "#916E2C");
    mainModel.setColor(name, mainModel.SpecularHardness, "#916E2C");
    mainModel.setColor(name, mainModel.SpecularPBR, "#916E2C");
}