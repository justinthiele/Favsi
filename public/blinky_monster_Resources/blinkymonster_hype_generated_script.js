//	HYPE.documents["blinky_monster"]

(function HYPE_DocumentLoader() {
	var resourcesFolderName = "blinky_monster_Resources";
	var documentName = "blinky_monster";
	var documentLoaderFilename = "blinkymonster_hype_generated_script.js";

	// find the URL for this script's absolute path and set as the resourceFolderName
	try {
		var scripts = document.getElementsByTagName('script');
		for(var i = 0; i < scripts.length; i++) {
			var scriptSrc = scripts[i].src;
			if(scriptSrc != null && scriptSrc.indexOf(documentLoaderFilename) != -1) {
				resourcesFolderName = scriptSrc.substr(0, scriptSrc.lastIndexOf("/"));
				break;
			}
		}
	} catch(err) {	}

	// load HYPE.js if it hasn't been loaded yet
	if(typeof HYPE == "undefined") {
		if(typeof window.HYPE_DocumentsToLoad == "undefined") {
			window.HYPE_DocumentsToLoad = new Array();
		}
		window.HYPE_DocumentsToLoad.push(HYPE_DocumentLoader);

		var headElement = document.getElementsByTagName('head')[0];
		var scriptElement = document.createElement('script');
		scriptElement.type= 'text/javascript';
		scriptElement.src = resourcesFolderName + '/' + 'HYPE.js';
		headElement.appendChild(scriptElement);
		return;
	}
	
	var attributeTransformerMapping = {"BorderRadiusTopLeft":"PixelValueTransformer","BackgroundColor":"ColorValueTransformer","BorderWidthBottom":"PixelValueTransformer","BoxShadowXOffset":"PixelValueTransformer","WordSpacing":"PixelValueTransformer","Opacity":"FractionalValueTransformer","BorderWidthRight":"PixelValueTransformer","BorderWidthTop":"PixelValueTransformer","BoxShadowColor":"ColorValueTransformer","BorderColorBottom":"ColorValueTransformer","FontSize":"PixelValueTransformer","BorderRadiusTopRight":"PixelValueTransformer","TextColor":"ColorValueTransformer","Rotate":"DegreeValueTransformer","Height":"PixelValueTransformer","BorderColorTop":"ColorValueTransformer","PaddingLeft":"PixelValueTransformer","Top":"PixelValueTransformer","BackgroundGradientStartColor":"ColorValueTransformer","TextShadowXOffset":"PixelValueTransformer","PaddingTop":"PixelValueTransformer","BackgroundGradientAngle":"DegreeValueTransformer","PaddingBottom":"PixelValueTransformer","PaddingRight":"PixelValueTransformer","BorderColorLeft":"ColorValueTransformer","Width":"PixelValueTransformer","TextShadowColor":"ColorValueTransformer","ReflectionOffset":"PixelValueTransformer","Left":"PixelValueTransformer","BorderRadiusBottomRight":"PixelValueTransformer","ReflectionDepth":"FractionalValueTransformer","BoxShadowYOffset":"PixelValueTransformer","BorderColorRight":"ColorValueTransformer","LineHeight":"PixelValueTransformer","BorderWidthLeft":"PixelValueTransformer","TextShadowBlurRadius":"PixelValueTransformer","TextShadowYOffset":"PixelValueTransformer","BorderRadiusBottomLeft":"PixelValueTransformer","BackgroundGradientEndColor":"ColorValueTransformer","BoxShadowBlurRadius":"PixelValueTransformer","LetterSpacing":"PixelValueTransformer"};

var scenes = [{"onSceneUnloadAction":{"type":0},"initialValues":{"8F48B668-696E-42A6-9185-B193C89DBAD1-11818-0000B01227CAC636":{"Position":"absolute","BackgroundOrigin":"content-box","Left":"0px","Display":"inline","BackgroundImage":"monster-fun-time-1.png","Height":"820px","Overflow":"visible","BackgroundSize":"100% 100%","ZIndex":"1","Top":"0px","Width":"338px","Opacity":"1.000000","TagName":"div"},"53F8743D-474C-4FB1-8DAA-BF63C960F5BF-11818-0000B022039C5A56":{"Position":"absolute","BackgroundOrigin":"content-box","Left":"102px","Display":"inline","BackgroundImage":"blinky.png","Height":"42px","Overflow":"visible","BackgroundSize":"100% 100%","ZIndex":"2","Top":"43px","Width":"34px","Opacity":"0.000000","TagName":"div"}},"timelines":{"kTimelineDefaultIdentifier":{"framesPerSecond":30,"animations":[{"startValue":"0.000000","isRelative":true,"endValue":"1.000000","identifier":"Opacity","duration":0.033333301544189453,"timingFunction":"easeinout","type":0,"oid":"53F8743D-474C-4FB1-8DAA-BF63C960F5BF-11818-0000B022039C5A56","startTime":4.9666666984558105},{"startValue":"43px","isRelative":true,"endValue":"63px","identifier":"Top","duration":0.099999904632568359,"timingFunction":"easeinout","type":0,"oid":"53F8743D-474C-4FB1-8DAA-BF63C960F5BF-11818-0000B022039C5A56","startTime":5},{"startValue":"1.000000","isRelative":false,"endValue":"1.000000","identifier":"Opacity","duration":0.16666650772094727,"timingFunction":"easeinout","type":0,"oid":"53F8743D-474C-4FB1-8DAA-BF63C960F5BF-11818-0000B022039C5A56","startTime":5},{"startValue":"63px","isRelative":false,"endValue":"43px","identifier":"Top","duration":0.066666603088378906,"timingFunction":"easeinout","type":0,"oid":"53F8743D-474C-4FB1-8DAA-BF63C960F5BF-11818-0000B022039C5A56","startTime":5.0999999046325684},{"startValue":"1.000000","isRelative":false,"endValue":"0.000000","identifier":"Opacity","duration":0.033333301544189453,"timingFunction":"easeinout","type":0,"oid":"53F8743D-474C-4FB1-8DAA-BF63C960F5BF-11818-0000B022039C5A56","startTime":5.1666665077209473}],"identifier":"kTimelineDefaultIdentifier","name":"Main Timeline","duration":15.199999809265137}},"id":"C39F437B-FCCF-4666-A28E-AD8BE52862F2-11818-0000AFF18D65F6A7","sceneIndex":0,"perspective":"600px","oid":"C39F437B-FCCF-4666-A28E-AD8BE52862F2-11818-0000AFF18D65F6A7","onSceneAnimationCompleteAction":{"type":3,"timelineIdentifier":"kTimelineDefaultIdentifier"},"name":"Untitled Scene","backgroundColor":"#FF00FF"}];

var javascriptMapping = {};


	
	var Custom = (function() {
	return {
	};
}());

	
	var hypeDoc = new HYPE();
	
	hypeDoc.attributeTransformerMapping = attributeTransformerMapping;
	hypeDoc.scenes = scenes;
	hypeDoc.javascriptMapping = javascriptMapping;
	hypeDoc.Custom = Custom;
	hypeDoc.currentSceneIndex = 0;
	hypeDoc.mainContentContainerID = "blinkymonster_hype_container";
	hypeDoc.resourcesFolderName = resourcesFolderName;
	hypeDoc.showHypeBuiltWatermark = 0;
	hypeDoc.showLoadingPage = false;
	hypeDoc.drawSceneBackgrounds = false;
	hypeDoc.documentName = documentName;

	HYPE.documents[documentName] = hypeDoc.API;

	hypeDoc.documentLoad(this.body);
}());

