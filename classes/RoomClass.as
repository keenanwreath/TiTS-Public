﻿package classes
{
	public class RoomClass
	{
		var titsClassPtr:*;

		//constructor
		public function RoomClass(titsClassPtrArg:*)
		{
			
			this.titsClassPtr = titsClassPtrArg;
			choices = new Array();
		}
		// include "consts.as";
		//data
		public var planet:String = "";
		//Used on inventory buttons
		public var system:String = "";
		//Room Name
		public var roomName:String = "";
		//Longass shit, not sure what used for yet.
		public var description:String = "";
		//runOnEnter holds functions that overlay the normal functioning
		public var runOnEnter = undefined;
				
		//Information
		public var moveMinutes:Number = 5;
		public var flags:Array = new Array();
		
		public var choices:Array = new Array();
		
		//Exits - these point to the room key in rooms
		public var northExit:String = -1;
		public var eastExit:String = -1;
		public var southExit:String = -1;
		public var westExit:String = -1;
		public var inExit:String = -1;
		public var inText:String = "In";
		public var outExit:String = -1;
		public var outText:String = "Out";
		
		//Functions
		public function hasFlag(arg):Boolean {
			for(var x:int = 0; x <= flags.length; x++) {
				if(flags[x] == arg) return true;
			}
			return false;
		}
		public function addFlag(arg):void {
			flags[flags.length] = arg;
		}
		public function removeFlag(arg):void {
			for(var x:int = 0; x <= flags.length; x++) {
				flags.splice(x,1);
			}
		}
		public function addChoice(text:String, func, arg = undefined):void {
			choices[choices.length] = new blueButton();
			choices[choices.length].func = func;
			choices[choices.length].arg = arg;
			choices[choices.length].tooltip = text
		}
	}
}