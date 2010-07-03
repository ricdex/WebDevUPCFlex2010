package com.mate.managers
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;

	
	public class UserManager extends EventDispatcher
	{
		
		// ------------------------------------------------------------------------
		private var _usuarios:ArrayCollection;
		[Bindable(event="userChanged")]
		public function get usuarios():ArrayCollection
		{
			return _usuarios;
		}
		
		// -------------------------------------------------------------------------
		
		public function guardarUsuarios( list:ArrayCollection):void
		{
			_usuarios = list;
			dispatchEvent( new Event( "userChanged" ) );
			
		}
	}
}