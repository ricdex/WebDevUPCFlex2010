package com.webdev.model
{
	import com.webdev.model.domain.Usuario;

	
	import mx.collections.ArrayCollection;
	[Bindable]
	public class UserModel
	{
		public var usuarios:ArrayCollection;
		
		public function UserModel()
		{
			usuarios = new ArrayCollection();
		}
		
		public function setUsuarios(value : ArrayCollection) : void
		{
			for each (var vo : Object in value)
			{
				usuarios.addItem( new Usuario(vo));
			}
			
		}
	}
}