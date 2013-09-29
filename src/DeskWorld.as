package
{
	import flash.display.BlendMode;
	import flash.display.InteractiveObject;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.World;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Key;
	import net.flashpunk.utils.Input;
	import net.flashpunk.Sfx;
	
	public class DeskWorld extends World
	{
		public var paper:PaperEntity = new PaperEntity();
		public var score:int = 1000;
		public var scoreText:Text = new Text("");
		public var rulesText:Text = new Text("Press C.P. to \nQUIT");
		public var jitterBug:Number = 8;
		public var time:Number;
		public var chincyFlagFlag:Number = 9001;
		
		public function DeskWorld()
		{	
			time = 0;
	
			// I like Soccer
			if (score > 0) score++;
			
			// We need sweet tunes, bra
			var song:Sfx = new Sfx(Assets.SOUND_SLOW);
			song.play();
			song.volume = 0.6;
			
			// Papers go on desks, right? 
			add(paper);
			paper.x = 50;
			paper.y = 50;
			
			// Inverted fake pages
			var i:int = 0;
			while (i < 8) {
				add(paper = new PaperEntity());
				paper.graphic = new Image(Assets.chinceArray[0]);
				(paper.graphic as Image).alpha = 1;
				(paper.graphic as Image).blend = BlendMode.INVERT;
				(paper.graphic as Image).scrollX += FP.rand(3);
				(paper.graphic as Image).scrollY += FP.rand(3);
				i++;
			}
			
			// the bulk of pages
			i = 0;
			while (i < 40) {
				add(paper = new PaperEntity());
				i++;
			}
			
			// the bulk of faggots
			i = 0;
			while (i < 50) {
				add(new FagEntity());
				i++;
			}
			
			// the floaters too!
			i = 0;
			while (i < 20) {
				add(new FloaterEntity());
				i++;
			}
			
			// put the score where it goes, aight?
			scoreText.scale = 3;
			scoreText.x = -50;
			scoreText.y = -50;
			scoreText.angle = FP.rand(20);
			addGraphic(scoreText);
			
			rulesText.scale = 5;
			rulesText.x = -500;
			rulesText.y = -500;
			addGraphic(rulesText);
		}
		
		public function move():void
		{
			time++;
			scoreText.angle += 0.0001;
			scoreText.scale += 0.0004;
			
			if (score < 0 ) scoreText.angle -= 0.01;
			if (score > 0 ) scoreText.angle += 0.0001;
			if (score > 9000) scoreText.angle += 0.011;
			
			FP.screen.color += 1 && 0xFF;
			FP.screen.color += 1 && 0x00FF;
			FP.screen.color += 1 && 0x0000FF;
			FP.screen.color && score;
			
			if (FP.rand(2) == 1) FP.screen.color += 1 && 0xFF;
			if (FP.rand(3) == 1) FP.screen.color += 1 && 0xFF00;
			if (FP.rand(4) == 1) FP.screen.color += 1 && 0xFF0000;
			
			if (FP.rand(5) == 1) FP.screen.color += 10 && 0xFF;
			if (FP.rand(6) == 1) FP.screen.color += 20 && 0xFF00;
			if (FP.rand(7) == 1) FP.screen.color += 30 && 0xFF0000;
			
			if (FP.rand(8) == 1) FP.screen.color += 0xFF;
			if (FP.rand(9) == 1) FP.screen.color += 0xFF00;
			if (FP.rand(10) == 1) FP.screen.color += 0xFF0000;
			
			if (FP.rand(11) == 1) FP.screen.color += 0xF0;
			if (FP.rand(12) == 1) FP.screen.color += 0xF000;
			if (FP.rand(13) == 1) FP.screen.color += 0xF00000;
			
			chincyFlagFlag -= 1;
			if (chincyFlagFlag == 1) {
				FP.screen.color = 0xFFFFFFFF - FP.screen.color;
				chincyFlagFlag == Math.abs(score / FP.screen.color / 10);
			}
			
			if (chincyFlagFlag < 500 && Math.abs(score) > 10000) {
				FP.screen.color = 0x00FFFF - FP.screen.color;
			}
			
			if (chincyFlagFlag < 100 && Math.abs(score) > 100000) {
				FP.screen.color = 0xFF00FF - FP.screen.color;
			}
			
			if (Math.abs(score) < 1000 && FP.rand(10 == 4)) {
				FP.screen.color = 0xFFFFFFFF - FP.screen.color;
			}
			
			rulesText.color += 1 && 0xFF;
			if (FP.rand(3) == 2) {
				rulesText.color += (1 && 0xFF00);
				rulesText.x += 1;
			}
			
			score += 1;
			scoreText.color += 10;
			
			if (FP.rand(100) == 3) {
				
				FP.stepTowards(rulesText, camera.x, camera.y , 10);
			}
			
			if (FP.rand(6) == 2) {
				rulesText.color += (1 && 0xFF0000);
				rulesText.y += 1;
				
				rulesText.scale *= 1.01;
				FP.stepTowards(rulesText, camera.x + 1000, camera.y + 1000, 5);
			}
			
			if (FP.rand(100) == 3) {
				rulesText.x -= 15;
				rulesText.y -= 15;
			}
			if (FP.rand(100) == 2) {
				rulesText.x += 25;
				rulesText.y += 25;
			}
			if (Input.check(Key.LEFT) || Input.check(Key.A)) 		{ camera.x -= 2; }
			else if (Input.check(Key.RIGHT) || Input.check(Key.D)) 	{ camera.x += 3	; score--; }
			else { score++; } 
			
			if (Input.check(Key.UP) || Input.check(Key.W)) { 
				camera.y -= 5; 
				if (FP.rand(1000) == 30) {
					camera.y += 120;
				}
			}
			else if (Input.check(Key.DOWN || Input.check(Key.S))) 	{
				if (FP.rand(1000) == 30) {
					camera.y -= 100;
				}
				camera.y += 6; score--; }
			else { score++; }
			
			score += FP.rand(3);
			score -= FP.rand(4);
			
			if (FP.rand(20) == 5) 
			{
				if (Input.pressed(Key.LEFT)) 		{ camera.x += 180; }
				else if (Input.pressed(Key.RIGHT)) 	{ camera.x -= 140; score--; }
				else { score+=5; } 
				if (Input.pressed(Key.UP)) 			{ camera.y += 160; }
				else if (Input.pressed(Key.DOWN)) 	{ camera.y -= 180; score--; }
				else { score += 5; }
				
				// we basically fuck this shit up all over the place. deal with it.
				score += FP.rand(3);
				score -= FP.rand(4);	
			}
		}
		
		public function jitter():void 
		{
			if (FP.rand(10000) == 5) {
				rulesText.x += 300;
			}
			
			if (FP.rand(10000) == 6) {
				rulesText.y += 300;
			}
			
			if (FP.rand(10) == 3) {
				scoreText.color += 1;
			}
			
			camera.x += FP.rand(3);
			camera.x -= FP.rand(4);
			camera.y += FP.rand(4);
			camera.y -= FP.rand(3);
			
			if (FP.rand(100) == 50)
			{
				camera.x += 3;
			}
			if (FP.rand(100) == 50) 
			{ 
				camera.y -= 3;
			}
			if (FP.rand(10) == 5)
			{
				camera.x += 3;
				camera.y -= 3;
			}
			if (FP.rand(10) == 5)
			{
				camera.x += 1;
			}
			if (FP.rand(10) == 5)
			{
				camera.y -= 1;
			}
			score += FP.rand(4);
			score -= FP.rand(2);
			
			if (Math.abs(score) < 100) {
				scoreText.color = scoreText.color - 0xFFFFFF;
			}
		}
		
		public function fudge():void
		{
			if (FP.rand(5) == 3) {
				rulesText.x += jitterBug;
				rulesText.x += 2;
				jitterBug *= -1;
			}
				
			if (FP.rand(5) == 3) {
				rulesText.y += jitterBug;
				jitterBug *= -1;
				rulesText.y += 1;
			}
			
			if (camera.x < 1) score--;
			if (camera.x < 0) score--;
			if (camera.y < 1) score--;
			if (camera.y < 0) score--;
			if (camera.x < 10) score--;
			if (camera.y < 20) score--;
			if (camera.y > 40) score++;
			if (camera.x > 60) score++;
			if (camera.y > 80) score--;
			if (camera.x > 100) score--;
			if (camera.y > 120) score--;
			if (camera.x > 140) score++;
			if (camera.y > 200) score++;
			if (camera.x > 300) score++;
			if (camera.y > 500) score++;
			if (camera.x > 1000) score -= FP.rand(10);
			if (camera.y > 1000) score -= FP.rand(10);
			if (camera.x > 1000) score++;
			if (camera.x > 2000) score++;
			if (camera.y < 3000) score-= 10;
			if (camera.x > 4000) score += 10;
			if (camera.y > 4000) score += 10;
			if (Input.pressed(Key.DOWN)) 
			{
				score += 10;
			}
			if (Input.pressed(Key.UP)){
				score -= 100;
			}
			if (Input.pressed(Key.RIGHT)){
				score -= 50;
			}
			if (Input.pressed(Key.LEFT)){
				score += 100 ;
			}
			score += 1;
			
			if (Input.pressed(Key.B)) {
				score *= -0.8;
			}
				
			if (Input.pressed(Key.R)) {
				score *= FP.random;
			}
			
			if (Input.mousePressed) {
				score += 1000000;
			}

			if (Input.mouseReleased) {
				score -= 1000000;
			}			
			if (Input.mouseDown) {
				score += 1;
			}
			if (Input.pressed(Key.SPACE)){
				score += 100;
				if (FP.rand(10) == 4) {		
					score -= 100;
					score *= -1;
				}
			}
			
		}
		override public function update():void
		{
			super.update();
			move();
			jitter();
			fudge();
			scoreText.text = score.toString();
			
			if ( FP.rand(100 == 50)) {
				FP.stepTowards(camera, 0, 0, 1);
			}
			FP.stepTowards(scoreText, camera.x, camera.y, 0.19);
			if (FP.distance(scoreText.x,scoreText.y, camera.x, camera.y) < 1000) 
			{
				score+= 10;
			}
			if (camera.x == scoreText.x)
			{
				score -= camera.x;
			}
			if (camera.y == scoreText.y)
			{
				score -= score / 10;
			}
			score *= 0.999;
			if (score < 0)
			{
				score *= 0.9;
			}
			
			if ( time > 6000) {
				FP.lerp(score, 0,0.01);
			}
			
			if (time > 8000) {
				score++;
			}
			
			if (time > 12000) {
				FP.lerp(score, 0, 0.01);
			}
			if (time > 14000) {
				score += 2;
				FP.lerp (score, 0, 0.1);
				scoreText.scale += 0.001;
			}
			
			if (time > 17000) {
				score += 7;
			}
			
			if (time > 18000) {
				score--;
				score = score / 2;
			}
			
			if (time > 19000) {
				score += 10;
			}
			
			if (time  > 19500) {
				score -= 5;
				score = score / 2;
			}
			
			if (time > 20000) {
				FP.lerp(score, 0, 0.01);
				score = score / 2;
				score += 10;
			}
			
			if (time > 20500) {
				score = score / -100;
				scoreText.scale += 0.05;
				score -= 10;
			}
			
			if (time > 20500) {
				score = Math.abs(score);
				score -= 1;
			}
			
			if (time > 21500) {
				if (score < 3) score = 0;
				scoreText.text = "0";
				scoreText.active = false;
				scoreText.scale *= 1.2;
			}
			
			// Ha! Gee!
			if (Input.check(Key.C) || Input.check(Key.P)) {
				FP.world = new QuitWorld(scoreText.text);
			}
		}
	}
}