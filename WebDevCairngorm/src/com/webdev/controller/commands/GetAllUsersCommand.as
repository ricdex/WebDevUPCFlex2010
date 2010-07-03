package com.webdev.controller.commands
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.webdev.controller.ServiceLocator;
	import com.webdev.controller.events.GetAllUserEvent;
	import com.webdev.model.UserModel;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.rpc.IResponder;
	import mx.rpc.events.ResultEvent;
	import mx.utils.ObjectUtil;
	
	public class GetAllUsersCommand implements ICommand, IResponder
	{
		
		public var model:UserModel;
		public function GetAllUsersCommand()
		{
		}
		
		public function execute(event:CairngormEvent):void
		{
			model = (event as GetAllUserEvent).userModel;
			ServiceLocator.getInstance().usuarioService.getUsuarios( this);
		}
		
		public function result(data:Object):void
		{
			model.setUsuarios(  ResultEvent(data).result as ArrayCollection );
			
		}
		
		public function fault(info:Object):void
		{
			Alert.show("Ocurrio un error");
		}
	}
}