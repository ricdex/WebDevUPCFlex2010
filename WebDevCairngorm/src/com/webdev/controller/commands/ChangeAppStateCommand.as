package com.webdev.controller.commands
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	import com.webdev.controller.events.GetAllUserEvent;
	import com.webdev.controller.events.LoginEvent;
	import com.webdev.model.ModelLocator;
	
	import flash.events.Event;
	
	import mx.containers.ViewStack;
	import mx.controls.Alert;
	
	public class ChangeAppStateCommand implements ICommand
	{
		public function ChangeAppStateCommand()
		{
		}
		
		public function execute(event:CairngormEvent):void
		{
			var e:LoginEvent = event as LoginEvent;
			
			if(e.state)
			{
				(e.mainMxml as ViewStack).selectedIndex = 1;
			
			}
				
			else
			{
				(e.mainMxml as ViewStack).selectedIndex = 0;
			}
				
			
			
		}
	}
}