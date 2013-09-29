package
{
	import net.flashpunk.graphics.Image;
	import net.flashpunk.World;
	import net.flashpunk.graphics.Backdrop;
	import net.flashpunk.Sfx;
	import net.flashpunk.FP;
	import Assets;
	
	public class URGayWorld extends World
	{
		// After bumper finishes, change the scene.
		public var bumperSound:Sfx = new Sfx(Assets.SOUND_UVGD,onSoundFinished);
		
		public function URGayWorld()
		{
			add(new URGayBackground);
			
			bumperSound.play();
			bumperSound.volume = 0.1;
			
		}
		
		override public function update():void 
		{
			super.update();
		}
		
		public function onSoundFinished():void
		{	
			FP.world = new DeskWorld;
		}
	}
}