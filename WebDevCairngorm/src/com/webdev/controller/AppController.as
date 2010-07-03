package com.webdev.controller
{
	import com.adobe.cairngorm.control.FrontController;
	import com.webdev.controller.commands.ChangeAppStateCommand;
	import com.webdev.controller.commands.GetAllUsersCommand;
	import com.webdev.controller.events.GetAllUserEvent;
	import com.webdev.controller.events.LoginEvent;

	public class AppController extends FrontController
	{
		public function AppController()
		{
			super();
			initialiseCommands();
		}
		
		private function initialiseCommands() :void
		{
			addCommand(LoginEvent.LOGIN_EVENT, ChangeAppStateCommand);
			addCommand(GetAllUserEvent.GET_ALL_USERS_EVENT, GetAllUsersCommand);
		}
		
		
	}
}