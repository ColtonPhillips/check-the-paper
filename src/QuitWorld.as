package
{
	import flash.display.BlendMode;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.Sfx;
	import net.flashpunk.World;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Key;
	import net.flashpunk.utils.Input;
	public class QuitWorld extends World
	{
		public var score:int;
		public var scoreText:Text = new Text("");
	public function QuitWorld(score:String)
	{
		score = score;
		scoreText.scale = 6;
		scoreText.scale += (FP.rand(10) / 100);
		scoreText.text = "ENTER YOUR \nSCORE HIGH: \n\n\nCP: " + score;
		scoreText.x = 10 + FP.rand(5);
		scoreText.y = 10 + FP.rand(5);
		scoreText.angle += FP.rand(5);
			
		addGraphic(scoreText);
	}
		override public function update():void
		{
			super.update();
		}
	}
}