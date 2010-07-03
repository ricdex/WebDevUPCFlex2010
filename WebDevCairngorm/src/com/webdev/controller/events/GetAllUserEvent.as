package com.webdev.controller.events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.webdev.model.UserModel;
	
	import mx.controls.DataGrid;

	public class GetAllUserEvent extends CairngormEvent
	{
		public static var GET_ALL_USERS_EVENT:String = "userEvent";
		public var userModel: UserModel;
		
		public function GetAllUserEvent()
		{
			super(GET_ALL_USERS_EVENT);
		}
	}
}