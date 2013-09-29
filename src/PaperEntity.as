package
{
	import flash.display.BlendMode;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import Assets;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	public class PaperEntity extends Entity
	{
		public var image:Image;
		
		public function PaperEntity() 
		{
			graphic = image = new Image(FP.choose(Assets.chinceArray));
			image.alpha = 0.95;
			image.angle += FP.rand(90);
			image.angle -= FP.rand(90);
				
			x = FP.rand(4000);
			y = FP.rand(4000);
			graphic.scrollX = FP.rand(8);
			graphic.scrollY = FP.rand(6);
			if (graphic.scrollX == 0) graphic.scrollX++;
			if (graphic.scrollY == 0) graphic.scrollY++;
		}
		
		public function jitter():void
		{
			if ((image.alpha < 0.1)) FP.world.remove(this);
			
			if (FP.rand(3) == 1) {
				(graphic as Image).angle += 0.0004;
			}
			
			if (FP.rand(5000) == 5) {
				image.alpha -= 0.1;
			}
			
			if (FP.rand(100000) == 2) 
			{
				(graphic as Image).angle += 90;
				(graphic as Image).scale *= -1;
				(FP.world as DeskWorld).score += 90001;
			}
			
			if (FP.rand(10000) == 3) image.alpha -= 0.033;
			
			image.angle += 0.0005;
			x += FP.rand(1);
			x -= FP.rand(1);
			y += FP.rand(1);
			y -= FP.rand(1);
			image.angle += FP.rand(1);
			image.angle -= FP.rand(1);
			
			if (Input.pressed(Key.UP)) {
				
				image.angle += 1.5;
				if (FP.rand(9) == 1)
				{
					image.angle -= 9;
					
					(FP.world as DeskWorld).score -= 9001;
				}
			}
			if (Input.pressed(Key.RIGHT)) {
				image.angle -= 0.5;
			}
			if (Input.pressed(Key.DOWN)) {
				image.angle -= 0.3;
			}
			if (Input.pressed(Key.LEFT)) {
				image.angle -= 0.5;
			}
			image.scale -= 0.0001;
		}
		
		override public function update():void 
		{
			jitter();
			FP.stepTowards(this, FP.camera.x, FP.camera.y, 0.1);
			
			// last thing
			if (FP.rand(100000) == 10)
			{
				FP.world.remove(this);
			}
		}
	}
}