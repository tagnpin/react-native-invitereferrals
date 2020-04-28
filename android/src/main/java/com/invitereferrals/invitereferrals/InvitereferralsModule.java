package com.invitereferrals.invitereferrals;

import android.widget.Toast;
import com.facebook.react.bridge.NativeModule;
import android.util.Log;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.invitereferrals.invitereferrals.InviteReferralsApplication;
import com.invitereferrals.invitereferrals.InviteReferralsApi;
import android.content.Context;
import android.app.Application;
import com.facebook.react.bridge.Callback;
import com.invitereferrals.invitereferrals.IRInterfaces.UserDetailsCallback;
import com.invitereferrals.invitereferrals.IRInterfaces.IRTrackingCallback;
import org.json.JSONException;
import org.json.JSONObject;


public class InvitereferralsModule extends ReactContextBaseJavaModule {
	
	private final ReactApplicationContext reactContext;

    public InvitereferralsModule(ReactApplicationContext reactContext) {
        super(reactContext);
		this.reactContext = reactContext;
    }

    @Override
    public String getName() {
        return "RNInvitereferrals";
    }

    @ReactMethod
	public void testIRLibrary() {
        Toast.makeText(getReactApplicationContext(), "Hello from Invitereferral", Toast.LENGTH_LONG).show();
    }
	
	@ReactMethod
	public static void register(Context context) {
		try {
            InviteReferralsApplication.register((Application) context.getApplicationContext());
        }catch (Exception e)
        {
          e.printStackTrace();
        }
    }
	
	
	@ReactMethod
	public void userDetails(String name, String email, String mobile, int campaignID, String subscriptionID, String customValues, final Callback callback) {
		try {
			  InviteReferralsApi.getInstance(reactContext).userDetails(name, email, mobile, campaignID, subscriptionID, customValues);
			  InviteReferralsApi.getInstance(reactContext).userDetailListener(new UserDetailsCallback() {
					@Override
					public void userDetails(JSONObject ApiResponse) {
						 try 
						    {
								String str = ApiResponse.getString("Authentication");
								Log.e("User Details", "Authentication= " + str);
								callback.invoke(str);
							
							} catch (Exception e) {
								Log.e("Exception =","" + e);
							}       
								
					}
				});
			} catch (Exception e) {
					Log.e("Exception =","" + e);
			  }	
		
    }
	
	
	
	@ReactMethod
	public void inline_btn(int campaignId) {
		try {
			  InviteReferralsApi.getInstance(reactContext).inline_btn(campaignId);
			} catch (Exception e) {
				Log.e("Exception =","" + e);
			}	
		
    }
	
	@ReactMethod
	public void invite(String showRule) {
		try {
			  InviteReferralsApi.getInstance(reactContext).invite(showRule);
			} catch (Exception e) {
				Log.e("Exception =","" + e);
			}	
		
    }
	
	@ReactMethod
	public void showWelcomeMessage() {
		try {
			InviteReferralsApi.getInstance(reactContext).showWelcomeMessage();
			} catch (Exception e) {
				Log.e("Exception =","" + e);
			}	
    }
	
	@ReactMethod
	public void tracking(String eventName, String orderID, int purchaseValue, String referCode, String unique_code, final Callback callback) {
		try {
			 InviteReferralsApi.getInstance(reactContext).tracking(eventName, orderID, purchaseValue,referCode,unique_code); 
			 InviteReferralsApi.getInstance(reactContext).ir_TrackingCallbackListener(new IRTrackingCallback() {
						@Override
						public void ir_trackingCallbackForEventName(JSONObject tracking_response) {
						Log.e("Tracking", "Response= "+tracking_response);
						String res = tracking_response.toString();
						callback.invoke(res); 
						}
					});
			} catch (Exception e) {
				Log.e("Exception =","" + e);
			}	
		
    }
	
}
