'use strict';

import { NativeModules, Platform } from 'react-native';
const { RNInvitereferrals } = NativeModules;
//export default RNInvitereferrals;

export default class Invitereferrals{

    static irLibraryTest()
	{
		try{
			RNInvitereferrals.testIRLibrary();
		}catch(e){
			//
		}

	}
	
	static userDetails(name, email, mobile, campaignID, subscriptionID, customValues, callback)
	{
     	try{
			if(Platform.OS == "ios"){
				campaignID = campaignID+"";
			}
			else{
				campaignID = parseInt(campaignID);
			}
			RNInvitereferrals.userDetails(name, email, mobile, campaignID, subscriptionID, customValues, callback);
	
		}catch(e){
			//
		}	
	}
	
	static inline_btn(campaignId)
	{
		try{
			if(Platform.OS == "ios"){
				campaignId = campaignId+"";
			}
			else{
				campaignId = parseInt(campaignId);
			}
			RNInvitereferrals.inline_btn(campaignId);
	
		}catch(e){
			//
		}
	}
	
	static invite(showRule)
	{
		try{
			RNInvitereferrals.invite(showRule);
		}catch(e){
			//
		}
		
	}
	
	static showWelcomeMessage()
	{
		try{
			RNInvitereferrals.showWelcomeMessage();
		}catch(e)
		{
			//
		}
		
	}
	
	static tracking(eventName, orderID, purchaseValue, referCode, unique_code, callback)
	{
		try{
			if(Platform.OS == "ios"){
				purchaseValue = purchaseValue+"";
			}
			else{
				purchaseValue = parseInt(purchaseValue);
			}		
			RNInvitereferrals.tracking(eventName,orderID, purchaseValue, referCode, unique_code, callback);
		}catch(e){
			//
		}
	}

	
	
}	