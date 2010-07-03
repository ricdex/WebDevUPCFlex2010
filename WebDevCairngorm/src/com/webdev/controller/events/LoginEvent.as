package com.webdev.controller.events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.containers.ViewStack;
	
	public class LoginEvent extends CairngormEvent
	{
		public static var LOGIN_EVENT:String = "loginEvent";
		
		public var username : String;
		public var password : String;
		public var mainMxml : ViewStack;
		public var state : Boolean = true;
		
		
		public function LoginEvent( )
		{
			super(LOGIN_EVENT);
		}
	}
}