package com.webdev.model.domain
{


	[Bindable]
	public class Usuario
	{
		public var nombre : String;
		public var apellido : String;
		public var email : String;
		
		
		
		public function Usuario(usuarioVO : Object = null)
		{
			if(usuarioVO != null)
			{
				this.nombre = usuarioVO.nombre;
				this.apellido = usuarioVO.apellido;
				this.email = usuarioVO.email ;
			}
		}
	}
}