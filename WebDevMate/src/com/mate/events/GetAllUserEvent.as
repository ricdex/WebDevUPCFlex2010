package com.mate.events
{
	import flash.events.Event;
	
	public class GetAllUserEvent extends Event
	{
		public static const GET_ALL_USER_EVENT:String = "search";
	
	
		public function GetAllUserEvent(type:String, searchStr:String = "", bubbles:Boolean = true, cancelable:Boolean = true)
   		{
			super(type, bubbles, cancelable);
		}
	}
}