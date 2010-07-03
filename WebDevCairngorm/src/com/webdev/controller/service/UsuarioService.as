package com.webdev.controller.service
{
	import com.webdev.controller.commands.GetAllUsersCommand;
	
	import mx.controls.Alert;
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.soap.WebService;

	public class UsuarioService
	{
		private var service : WebService;
		
		public function UsuarioService()
		{
			super();
			this.service = new WebService();
			this.service.wsdl = "http://localhost:8080/CXFSpring/cxf/HelloWorld?wsdl";
			this.service.loadWSDL();
			
		}
	

		
		public function getUsuarios (responder : IResponder) :void
		{
			
			var token: AsyncToken = this.service.getUsuarios();
			token.addResponder(responder);
		}
	}
}