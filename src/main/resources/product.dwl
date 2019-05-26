%dw 1.0
%output application/xml
%var convertedPrice=71
---
product:{
	
pId:payload.productId,
pDesc:payload.productDesc,
pbrand:payload.brand,
porgPrice:payload.originalPrice*convertedPrice,
offer:{
	poffPrice:payload.offer.offerPrice*convertedPrice,
	poffValid:payload.offer.offerValid
}	
	
}