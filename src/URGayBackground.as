package  
{
	import Assets;
	import net.flashpunk.graphics.Backdrop;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.Entity;
	
	public class URGayBackground extends Entity
	{
		public var time:int = -3;
		public var count:int = 0;
		
		public function URGayBackground() 
		{
			graphic = new Image(Assets.IMG_UVGD1);
		}
		
		override public function update():void
		{
			super.update();
			
			time++;
			
			if (time == 60) 
			{
				if 		(count == 0) { time = 0; graphic = new Image(Assets.IMG_UVGD2); }
				else if (count == 1) { time = -8; graphic = new Image(Assets.IMG_UVGD3); }
				else if (count == 2) { graphic = new Image(Assets.IMG_UVGD4); }
				count++;
			}
			
		}
		
	}

}