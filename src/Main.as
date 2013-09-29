package
{
import net.flashpunk.Engine;
import net.flashpunk.Entity;
import net.flashpunk.FP;
import net.flashpunk.graphics.Image;
import net.flashpunk.Sfx;

	
	public class Main extends Engine
	{
		public function Main()
		{
			super(800, 600, 60, false);
			FP.world = new URGayWorld;
		}
	}
}