package com.webdev.controller
{
	import com.webdev.controller.service.UsuarioService;

	public class ServiceLocator
	{
		private static var _instance:ServiceLocator;
		
		public static function getInstance():ServiceLocator {
			if(_instance ==null){
				_instance = new ServiceLocator();
			}
			
			return _instance;
		}
		
		
		public function ServiceLocator()
		{
			if(_instance != null){
				throw ( new Error("La clase ya fue instanciada"));
				
			}else{
				_instance = this;
				usuarioService = new UsuarioService();
			}
		}
		
		public  var usuarioService : UsuarioService;
		
	}
}