package
{
	import flash.display.BlendMode;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import Assets;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.Sfx;
	
	public class FagEntity extends Entity
	{
		
		public var text:Text;
		public var fagArray:Array = new Array("LegitimateRape", "Lee's not like a real programmer.", 
		"Tom is not like a real programmer.", "Michael is not like a real programmer", 
		"I would go to jail", "I would die", "It would hurt", "Ten days. 7 minutes." , "Gay marriage is rape", 
		"Will you officialize Danny Baranowsky?" , "I'm shy, most of the time", "You're pretty cocky and hateful", 
		"Eggshell", "The color, texture and smell of a pig's butt", "Not anymore", "Will Team Meat be together forever?", 
		"We will be rotting", "Tommy can't move", "I went to Hawaii at the beginning of June.", 
		"Yah, but that was one week out of three!", "How did that's been ask?", "Fucking bitch of a girlfriend", 
		"If not for her bitchyness", "100 dollars.", "Anger", "Nail Jesus to the Cross", "Now, I hate women.", 
		"Ugly little pussies that can't get anything", "Edmund hates pussies", "Demon Drums", "Poop smear",
		"Poopy butt", "CoiledTurd", "foobarcode", "chincyFlagFlag", "FagEntity", "DeskWorld", "Assets.as",
		"Main.ass", "NoiseAssets.as", "PaperEntity.as", "Replay.exe", "Click here!", "Don't Click me", "Click", "Watch out for the sharp goombas",
		"Colton Pinch", "Coolton", "ColTONNE", "Colt", "Collie", "Cunton Phelpes", "JFK JFK JFK", "JK JK!", ":3", 
		"Clone", "Smear", "Earth", "Dirtree", "filedigger", "Plant the Tree", "Wash the Hands", "Dig the Grave",
		"I don't want to grow up", "We both took a running start.", "Tommy's definitely the bottum.", "Ha! Gay!", 
		"You're a woman!" ,  "You can burn in hell" ,  "You can burn in wife" ,  "It's better for Danny." , 
		"I wanna play games" , "The fat one", "Not very good.", "What are you trying to say?", "I don't understand you.", 
		"Wait? Hmm?", "See you there, right?", "Inside Michael Pattie, evil takes it's form. Inside Michael Pattie. Commandments are reborn.",
		"FatQuest", "Get off your ass" , "FitQuest", "You'll miss me", "When I'm gone", "It's Tuesday Night" , 
		"This is nothing like FEZ.", "What? I wanted FEZ", "Not what I expected", "Are you okay o.O", "Don't break it!", 
		"Just a pinch", "A small fracture", "Fractured lives", "Penn and Teller", "Michael PATTIE!",
		"Fractal Family" , "This shouldn't even be a game", "You just walk around and collect cubes", 
		"It's stupid", "It's alright, but nothing special", "Same game. Skip it.", "VERB the NOUN",
		"You can do it", "Nice try, buddy", "You're famous!", "Sorry", "Are you gonna be there? Or should I not bother?", 
		"Just a reminder, but...", "Uh... Okay",  "Call your grandma!", "Little Brother", "Sit on me.", "Did you sit on your little brother?",
		"Did you sit on him? Did you? You can tell the truth.", "Why did you sit on him? Were you watching porno?",
		"It was just something we told him, to get him to go away.", "I had to tell my sister", "Did I tell you about the time I almost died?",
		"They tied rags to the tires. When the dogs bit, they hit the gas.",
		"This was an AWESOME night!", "Jesus CHRIST!", "Stinks like poop.", "420", "5deep2U", "6SLAVE", "1LUV", "TWO", "3HRE", "FOOR", "ZARO?",
		"CURCLE", "SQUR", "XBOX", "PSGAY", "Who am I?", "Is this real life?", "Twitter", "Balls deep", "Gimme dat NUT",
		"Chit ur skinny!",
		"Wait. Okay, Bye.", "Oh! This could end any minute now.", "Did you make us tea?", "Slugsmasher", "Penis smasher", 
		"Shit. I'm late.", "Crispy crackers", "Fractured fingers", "FEZ is dead", "FEZ",
		"You don't deserve this.", "Cute", "This is nice!", "How does it end?", "Bullshit", "Bunkai!", "It just goes on? How long?", 
		"What happens after the end?", "Where are we going?", "Don't do that.", "Don't", "Stop", "Stop posting", "You deserve this!", 
		"What's wrong?", "What is wrong with you?", "Like, comment, and subscribe.",
		"Really?", "What gives you the right?", "Are you okay?", "Just do it!", "Ha! What a fool!", "Hahaha!", "You are SO fat", "You don't matter", 
		"You're not important", "You were never there", "Ouch.", "Poop Sim", "Strong Bad", "Strong Sad",
		"It's over", "I can't be with you", "I'm sorry...", "Don't have kids", "Where is my grand-son?", "Hope you die", 
		"GET AIDS AND DIE!1", "Are you kidding me?", "HUH?", "died this week.",
		"Your dad loves you", "How's my good boy", "My good son", "My smart lad", "GreyMatterQA" , "I got blisters on me fingers!", 
		"You're not gay are you?", "Trans", "Pussy", "Queer", "That's it Tom", "Hahaha!", "OMG! Really?",
		"Rape", "Murder", "Suicide", "Cat", "What?", "Flash is dead!",  "Why do you even try?", "Everyone laughs at you", "Not a true game", 
		"SOOO stupid. Seriously.", "You cry it out", "That's it Tommy.", "Team Mic", "Team Bey", "Team Phil",
		"Half-ass", "I hate you", "This is your fault", "I'm not sorry!", "Gnar Games", "The Right to Bear Arms",
		"You never call", "Don't forget", "Close the door", "Not my style.", "These aren't that good", "You're in my way", "Die already", 
		"Folds of fat", "Looks messy","I don't get you", "INDIE GAME: THE MOVIE", "Did you meet Notch?", "Did you meat Notch" ,
		"I have you", "You are born", "Baby", "Just pieces", "Roll a joint", "That would be SO cool", "You can do that, right?", 
		"That was pretty long", "This is too long", "I don't know if it's started yet or where to go", "Michael Pattie", 
		"Loser, gross", "Ha! Gay.", "Metro-fuckface", "Fuck off and die", "Stupid bitch", "Cunt", "Bitch", "Give in", "Give up", 
		"Such a shame", "Get a job", "Broken Brain", "The Ethnic one", "is not only the most talent programmer I've ever worked with but also the most joyful",
		"Not that good", "F", "Sit down", "Don't move" , "F Minus. Gay.", "Bitch titties", "Go suck a cock", "You're the worst", 
		"Little dick.", "Retard", "Give up", "Just Quit", "Crap", "Loser", "Shut up.", "Fast. Faster.", "I like to nail it in.",
		"Are you even trying", "Garbage", "You're high", "Gaylord", "Creep", "Trash", "You don't know", "Watch where you are going!", 
		"I'm sorry, you're late.", "Garfield", "TRANS", "A", "B", "C", "D", "E", "HUMBLE INDIE BRAWL", "F", "G", "L", "Bl" , "la", "ai", "ir",
		"Get out of the clouds", "Clone", "I Glove You", "More like anyone else", "If only you were", "Taco Flavored Chips", "Delilah", 
		"1000 Miles", "MMFY", "Nice shirt!", "Stretch", "You're reaching", "Gym", "Death", "That's not funny", "Can you do anything right?", 
		"Cancer", "Christmas", "We miss you", "Google it", "Liar", "Stop posting on Facebook", "Whore", "Focus on what's important", 
		"Quit acting dumb", "Quit complaining", "I didn't get credit" , "Are you high?", "FEZ was better", "Spam", "This is just spam",
		"Too random. Fail.", "Dumbass", "Waste of skin", "Disgusting fatass", "You deserve to be raped", "Kill yourself", "Ripoff", 
		"No. Just, no.", "Dumb", "Lazy", "Chince", "Fag", "Stupid", "Who cares", "Just quit" , "Your gay", "Fake", "Fat", "Fail",
		"Fuck you", "Faggot", "Waste of time", "Is that it?", "Retarded", "Disgusting", "Demon Drums", "Baby", "Is Linnea upstairs?",
		"My tree is now up to the sun.", "One love not god", "One Love Like BJ", "One Love Hate War", "1 != 0", "One Love Like Mass Effect",
		"I'm sweating and oiling", "Humble Smoothie Energized Wank", "A nice mountain landscape segment", "Explore in sandboxes", "Don't get buried", "Reject mass",
		"Write with your bad hand", "Neatly and fanful", "Realize importance of rest and rejuvination", "These stores can be damaged and abused",
		"Estimate your material", "Spin the Plate", "Brown the Beer", "Brown the Cola", "Black is Gay", "Dick and Vagina create a TIGHT ONENESS",
		"Swallowing semen probably has an acute and interesting reaction", "The weight of the Earth has gigantic influence", "Find Balance with the Earth",
		"Use architecture", "Become a big soup", "Increase circumference", "Don't give up.", 
		"Pain, like a guitar string", "The more you do the longer you get", "It's a soup?", "A lot of bread is soup", "It's good or bad, but you don't know what made it");
		
		public var hasBeenGay:Boolean = false;
		
		public function FagEntity() {
			graphic = text = new Text(FP.choose(fagArray));
			x = FP.rand(150000) - 60000;
			y = FP.rand(150000) - 60000;
			text.centerOO();
			text.scale = 0.001;
			text.angle += FP.rand(5);
			
			hasBeenGay = false;
			
			// We need sweet tunes, bra
			var song:Sfx = new Sfx(FP.choose(NoiseAssets.chinceArray));
			song.play();
			song.volume = 0.2;
		}
		
		override public function update():void {
			
			if (FP.rand(100000) == 444) {
				text = new Text( FP.choose(fagArray));
			}

			if ((FP.world as DeskWorld).score < -9) {
				text.angle -= 0.1;
				text.color *= 2;
				text.scale += -0.0018;
				
				if (FP.rand(3) == 1) FP.stepTowards(this, FP.world.mouseX, FP.world.mouseY, FP.rand(10));
			}
			FP.stepTowards(this, FP.camera.x , FP.camera.y, 2);
			
			FP.stepTowards(this, FP.camera.x + FP.rand(800), FP.camera.y + FP.rand(801), 3);
			
			if (FP.rand(2) == 1) text.color += 1;
			if (FP.rand(4) == 2)text.color += 2;
			if (FP.rand(6) == 3) text.color += 6;
			if (FP.rand(100) == 2) text.alpha -= 0.00025;
			if (FP.rand(10) == 5) text.color += 3;
			
			super.update();
			
			
			if ((FP.world as DeskWorld).time > 19000) text.scale += 0.01;
			if ((FP.world as DeskWorld).time > 20000) text.scale += 0.01;
			if ((FP.world as DeskWorld).time > 21000) text.scale += 0.02;
			
			if (FP.rand(70000 == 40)) {
				text.scale *= 1.5;
			}
			
			if (FP.rand(610000) == 1) {
					text.scale *= FP.rand(5);
			}
				
			if (FP.rand(10000) == 321) {
				x += FP.rand(50) - 25;
			}
			
			if (FP.rand(10000) == 221) {
				x -= FP.rand(50) - 25;
			}
			
			if (FP.rand(1000) == 121) {
				y += FP.rand(50) - 25;
			}
			
			if (FP.rand(10000 == 4) ) {
				y -= FP.rand(50) - 25;
			}
			
			if (FP.rand(10000) == 321) {
				text.x += FP.rand(50) - 25;
			}
			
			if (FP.rand(10000) == 221) {
				text.x -= FP.rand(50) - 25;
			}
			
			if (FP.rand(1000) == 121) {
				text.y += FP.rand(50) - 25;
			}
			
			if (FP.rand(10000 == 4) ) {
				text.y -= FP.rand(50) - 25;
			}	
			
			if (FP.rand(100 == 5) ) {
				text.scaleY += 0.5;
			}
			
			if (FP.rand(1000 == 6) ) {
				text.angle += FP.rand(60) - 30;
			}
			
			if (FP.rand(90000 == 6) ) {
				text.angle += FP.rand(360);
			}
		
			if (FP.rand(900000) == 1) {
				text.scale += FP.rand(360);
			}
		
			if (!hasBeenGay) {	
				FP.stepTowards(this, FP.camera.x + FP.screen.width/2, FP.camera.y + FP.screen.height/2, 1);
				if (FP.distance(x, y, FP.camera.x + FP.screen.width/2, FP.camera.y + FP.screen.height/2) < 100) {
					hasBeenGay = true;
					text.scale += 2;
					// We need sweet tunes, bra
					var song:Sfx = new Sfx(FP.choose(NoiseAssets.chinceArray));
					song.play();
					song.volume = 0.2;
					(FP.world as DeskWorld).score += FP.rand(1000000) - FP.rand(2000000);
				}
				
				text.angle += 0.5;
				text.angle += FP.random;
				text.angle += FP.rand(1);
				text.angle -= FP.rand(2);
				text.scale += 0.0001;
				
				if (FP.rand(20) == 1) text.color += 1;
				
				if (FP.rand(2) == 1) text.color += 1;
				if (FP.rand(10) == 1) {
					text.scale += 0.0005;
				}
			}
		}
	}
}