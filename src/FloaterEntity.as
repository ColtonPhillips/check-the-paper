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
	
	public class FloaterEntity extends Entity
	{
		public var text:Text;
		public static var fagArray:Array =  new Array("LegitimateRape", "Lee's not like a real programmer.", 
		"Tom is not like a real programmer.", "Michael is not like a real programmer", 
		"I would go to jail", "I would die", "It would hurt", "Ten days. 7 minutes." , "Gay marriage is rape", 
		"Will you officialize Danny Baranowsky?" , "I'm shy, most of the time", "You're pretty cocky and hateful", 
		"Eggshell", "The color, texture and smell of a pig's butt", "Not anymore", "Will Team Meat be together forever?", 
		"We will be rotting", "Tommy can't move", "I went to Hawaii at the beginning of June.", 
		"Yah, but that was one week out of three!", "How did that's been ask?", "Fucking bitch of a girlfriend", 
		"If not for her bitchyness", "100 dollars.", "Anger", "Nail Jesus to the Cross", "Now, I hate women.", 
		"Ugly little pussies that can't get anything", "Edmund hate's pussies", "Demon Drums", "Poop smear",
		"Poopy butt", "CoiledTurd", "foobarcode", "chincyFlagFlag", "FagEntity", "DeskWorld", "Assets.as",
		"Main.ass", "NoiseAssets.as", "PaperEntity.as", "Replay.exe", "Click here!", "Don't Click me", "Click", "Watch out for the sharp goombas",
		"Colton Pinch", "Coolton", "ColTONNE", "Colt", "Collie", "Cunton Phelpes", "JFK JFK JFK", "JK JK!", ":3", 
		"Clone", "Smear", "Earth", "Dirtree", "filedigger", "Plant the Tree", "Wash the Hands", "Dig the Grave",
		"I don't want to grow up", "We both took a running start.", "Tommy's definitely the bottum.", "", 
		"You're a woman!" ,  "You can burn in hell" ,  "You can burn in wife" ,  "It's better for Danny." , 
		"I wanna play games" , "The fat one", "Not very good.", "What are you trying to say?", "I don't understand you.", 
		"Wait? Hmm?", "See you there, right?", "Inside Michael Pattie, evil takes it's form. Inside Michael Pattie. Commandments are reborn.",
		"FatQuest", "Get off your ass" , "FitQuest", "You'll miss me", "When I'm gone", "It's Tuesday Night" , 
		"This is nothing like FEZ.", "What? I wanted FEZ", "Not what I expected", "Are you okay o.O", "Don't break it!", 
		"Just a pinch", "A small fracture", "Fractured lives", "Penn and Teller", "Michael PATTIE!",
		"Fractal Family" , "This should even be a game", "You just walk around and collect cubes", 
		"It's stupid", "It's alright, but nothing special", "Same game. Skip it.", "VERB the NOUN",
		"You can do it", "Nice try, buddy", "You're famous!", "Sorry", "Are you gonna be there? Or should I not bother?", 
		"Just a reminder, but...", "Uh... Okay",  "Call your grandma!", "Little Brother", "Sit on me.", "Did you sit on your little brother?",
		"Did you sit on him? Did you? You can tell the truth.", "Why did you sit on him? Were you watching porno?",
		"It was just something we told him, to get him to go away.", "I had to tell my sister", "Did I tell you about the time I almost died?",
		"This was an AWESOME night!", "Jesus CHRIST!", "Stinks like poop.", "420", "5deep2U", "6SLAVE", "1LUV", "TWO", "3HRE", "FOOR", "ZARO?",
		"CURCLE", "SQUR", "XBOX", "PS#", "Who am I?", "Is this real life?", "Twitter", "Balls deep", "Gimme dat NUT",
		"Chit ur skinny!",
		"Wait. Okay, Bye.", "Oh! This could end any minute now.", "Did you make us tea?", "Slugsmasher", "Penis smasher", 
		"Shit. I'm late.", "Crispy crackers", "Fractured fingers", "FEZ is dead", "FEZ",
		"You don't deserve this.", "Cute", "This is nice!", "How does it end?", "Bullshit", "Bunkai!", "It just goes on? How long?", 
		"What happens after the end?", "Where are we going?", "Don't do that.", "Don't", "Stop", "Stop posting", "You deserve this!", 
		"What's wrong?", "What is wrong with you?", "Like, comment, and subscribe.",
		"Really?", "What gives you the right?", "Are you okay?", "Just do it!", "Ha! What a fool!", "Hahaha!", "You are SO fat", 
		"You don't matter", "I'm a little Bus Kitty, Master of the House.",
		"Sentanced to be feeling like everyone thinks you are rapey.", "You could have ruined his life", "I feel like a cat under a car", 
		"A rockstar pen driver", "Floating closer to the edge of time",
		"A symphony of chemical proportions", "Demon over my kitty side he watches me interested in the watching like i want fez like i just want it to be real so bad you know?",
		"Then I would meet Mr Rayln Gladue and I would use the computer to mix the animals together", "There were snacks, playtime, friends, and a nice teacher",
		"I like Soccer", "I probably kept to myself there.", "My first friend was Ray Ross in Grade 1.", "He was held back a year.",
		"We made pieces of the town together.", "We would do outdoors stuff, and he had Sega abd we dud some NINJA GAME", "Terence, man. There was something about HIM, man!",
		"He really did fuck a lot of things up though, Holy balls.", "Still a decent man.", "Can a pulled pork poutine pay for itself?", "Why is synthesis important?", 
		"Every drink is a diversion from destiny.", "It's a tight loop, for sure.", "For sure", "This beer is cold, and not for long, I tell you.",
		"Our body basically decays waiting for poutine", "Reborn", "Same pitch, yaw, roll, and mostly walking in your direction.", "I am sure my phone was ringing",
		"Waiting for the clock to turn over", "Fuck that gay-ass cancer.", "My friends inside me make me one. Thanks little bros. Hella tight. Keep going.",
		"I'll do my best.", "I'll cook for you", "I'll do dishes twice", "Would you ever eat at Sherwood Forest? Geez I Sherwood. #DadJokes",
		"#", "$", "!", "*", "D", "L", "M", "Go as close as you can without crashing.", "Tiny things inside tiny areas.", "Poutinemoplasm", "Virtual Machines",
		"We have data. We get input.", "For Loop Fruit Loop", "We DEO with infinity", "Have a good day. Enjoy the sun.", 
		"Scratching back would make back landscape more rough and less flat. less likely to be symmetric.",
		"Self soothing", "Sealie and Wilfredo", "Sealie", "Wilfredo", "W1LFR3D0", "Game Grumps", "Writing is crunching the brain as digesting is crunching a poop.",
		"Take a crunch", "The Universe is Boiling", "Can eye too a filter?", "Messed up. Munged.", "We manage valves as masters of the house", 
		"Downshift, and relax", "We acted quickly on the arm", "We cooked bacon. Sizzle for great", "Future Blowjobs", "We each get a pizza the time at mic",
		"I have to choose the vessel then", "Why would I write it, and feel true, if false?",
		"Well we are so different", "But we are made different", "The Browning Reaction", "THE BROWNING REACTION",
		"666","6","Six",
		"THE GOD DAMN FUCKING BROWNING REACTION", "HOLY COCKFUCKING SHIT, THE BROWNING REACTION.",
		"NO SERIOUSLY GOOGLE THE BROWNING REACTION", "Intense hard work", "I'm on the edge of the thought tree", "The weed takes me to that edge",
		"I have the whale tree though", "I have the whole tree though", "And my tree is now up to son",
		"A protein folding.", "Master of the House", "Hey invisible balls, im talking to you right here! SAY THAT SHIT TO ME FACE.",
		"i want you to apologize on camera", "im being attacked CONSTANTLY. and i can't fight back ever? Yeah that seems fair.",
		"i fucking hate this industry", "i don't want to have to get off twitter. i love twitter.", "SO MUCH UGLINESS into my life",
		"im done", "im done. FEZ II is canceled. goodbye.", "but i want you to know that you hurt me", "i never physically threatened anybody",
		"nobody cares about YOUR thing.", "also, none of your fucking business.",
		"Come towards me grumpy kitty say ful you Here kitty caw  caw slow kitty down closer come over hi kitty touche me let me sit near you let me be your bus kitty.",
		"I wouldn't dare ruin it for her", "I'll ruin it.", "I'll ruin her", 
		"You're not important", "You were never there", "Ouch.", "Poop Sim", "Strong Bad", "Strong Sad", "through concious pushing and pulling of movement into the cosmos",
		"It's over", "I can't be with you", "I'm sorry...", "Don't have kids", "Where is my grand-son?", "Hope you die", 
		"GET AIDS AND DIE!1", "Are you kidding me?", "HUH?", "died this week.","Even the death of a loved one",
		"Your dad loves you", "How's my good boy", "My good son", "My smart lad", "GreyMatterQA" , "I got blisters on me fingers!", 
		"You're not gay are you?", "Trans", "Pussy", "Queer", "That's it Tom", "Hahaha!", "OMG! Really?",
		"Rape", "Murder", "Suicide", "Cat", "What?", "Flash is dead!",  "Why do you even try?", "Everyone laughs at you", "Not a true game", 
		"SOOO stupid. Seriously.", "You cry it out", "That's it Tommy.", "Team Mic", "Team Bey", "Team Phil", "Composition and recomposition",
		"lets just say yes so you'll stop asking", "Joe Rogan Podcast", "Hey There Delilah", "Jokes", "Check out",
		
		"Half-ass", "I hate you", "This is your fault", "I'm not sorry!", "Gnar Games", "The Right to Bear Arms","JK Fort and Fowl",
		"You never call", "Don't forget", "Close the door", "Not my style.", "These aren't that good", "You're in my way", "Die already", "Blair red hair spunky red dyke",
		"Folds of fat", "Looks messy","I don't get you", "INDIE GAME: THE MOVIE", "Did you meet notch?", "Did you meat Notch" , "Old people bend over a lot",
		"I have you", "You are born", "Baby", "Just pieces", "Roll a joint", "That would be SO cool", "You can do that, right?", 
		"hamfistedly clutching nervous twerk jerk lurking over parking lots lifting wallets off of shopping carts",
		"That was pretty long", "This is too long", "I don't know if it's started yet or where to go", "Michael Pattie", 
		"I can feel the toxoplasmosis in my niggerfisted shitcutting buttfuck",
		"Loser, gross", "Ha! Gay.", "Metro-fuckface", "Fuck off and die", "Stupid bitch", "Cunt", "Bitch", "Give in", "Give up", "Androgynous Andy Moore",
		"Such a shame", "Get a job", "Broken Brain", "The Ethnic one", "is not only the most talent programmer I've ever worked with but also the most joyful",
		"Not that good", "F", "Sit down", "Don't move" , "F Minus. Gay.", "Bitch titties", 
		"The Cancer That's Killing Me","Gnar Play: The Death of FEZ 2 - The Cancer That's Killing Me ","Go suck a cock", "You're the worst", 
		"Little dick.", "Retard", "Give up", "Just Quit", "Crap", "Loser", "Shut up.", "Fast. Faster.", "I like to nail it in.",
		"Different kinds of meat have to be seperate", "It's 1-1",
		"Are you even trying", "Garbage", "You're high", "Gaylord", "Blocked", "get back to me when you're less poopy.", "Creep", "Trash", 
		"You don't know", "Watch where you are going!", "When it hit the sidewalk, it smashed real good.",
		"@GameTrailers real nice guys, real nice.", "hey fuckface.", "tosspot", "hipster", "thank you for all your contributions to the medium.", 
		"and you're right. we're VERY successful. and we're not going anywhere. get used to it you middle-aged parasite.",
		"@AnnoyedGamer compare your life to mine and then kill yourself.", "today's beeve is brought to you by some inconsequential limey fuck.", 
		"more personal attacks", "SO BUTTHURT", "attacking my character and the quality of my work, nice job @gametrailers",
		"it must be frustrating being such a small commentatator, only being able to ejaculate vomit out of your mouth from the sidelines", 
		"@AnnoyedGamer unable to create beauty or add to the world in a meaningful way, you sit in judgement, masturbating.",
		"Make others feel small so you can fool yourself into thinking you matter.", "",
		"I'm sorry, you're late.", "Garfield", "TRANS", "A", "B", "C", "D", "E", "HUMBLE INDIE BRAWL", "F", "G", "L", "Bl" , "la", "ai", "ir", 
		"to the son", "Right your life", "The splitting of a root is like it's turning into something shitty", 
		"Get out of the clouds", "Clone", "I Glove You", "More like anyone else", "If only you were", "Taco Flavored Chips", "Delilah", "Our bellies give us energy",
		"1000 Miles", "MMFY", "Nice shirt!", "Stretch", "Gym", "Death", "That's not funny", "Can you do anything right?", "Its am high", "Get it all out baby, cough it all up", "Good boy",
		"Cancer",  "Christmas", "We miss you", "Google it", "Liar", "Stop posting on Facebook", "Whore", "Focus on what's important", "Blobs and gobs with sticks and balls",
		"Quit acting dumb", "Quit complaining", "I didn't get credit" , "Are you high?", "FEZ was better", "Spam", "This is just spam", "Just rip", "the shit out of it", 
		"processing information all over your body", "Write a picture burger here are some example of some pricing", "we're matching costco prices", 
		"Indian woman carrying timbits on her finger",
		"Too random. Fail.", "Dumbass", "Waste of skin", "Disgusting fatass", "We have this tendancy to suck.", "Everything you look at is a diverse landscape", 
		"Sometimes you are like, I have an itch! A curiousity!", "And you just attack it at your sweaty armpit", "You deserve to be raped", "There is a son and moon", 
		"Kill yourself", "Ripoff", 
		"No. Just, no.", "Dumb", "Lazy", "Chince", "Fag", "Stupid", "Who cares", "Just quit" , "Move on", "Fix your shit","Your gay", "Fake", "Fat", "Fail", 
		"Fuck you", "Faggot", "Waste of time", "Your shirt is gay!", "Is that it?", "Good Luck, Have Fun, Don't Die.", "Good Luck, Have Fun, Don't Die. #GayFurryAdvice" ,  
		"Retarded", "Disgusting", "Demon Drums");
;
		public var hasBeenGay:Boolean = false;
		
		public function FloaterEntity() {
		
			graphic = text = new Text(FP.choose(fagArray));
			text.blend = BlendMode.INVERT;
			x = FP.rand(300000) - 60000;
			y = FP.rand(300000) - 60000;
			text.centerOO();
			text.scale = 2.5;
			text.alpha = 0.5;
			hasBeenGay = false;
		}
		
		override public function update():void {
			
			if (FP.rand(40) == 4) {
				text = new Text( FP.choose(fagArray));
			}

			text.angle += 60;
			text.angle += FP.rand(10);
			
			if ((FP.world as DeskWorld).score < -90001) {
				text.color *= 2;
				text.scale += -0.0018;
				
				if (FP.rand(2) == 1) FP.stepTowards(this, FP.world.mouseX, FP.world.mouseY, FP.rand(500));
			}
			if (FP.rand(100) == 55) {
				FP.stepTowards(this, FP.camera.x + 10000, FP.camera.y + 10000, FP.rand(5000));
			}
			
			FP.stepTowards(this, FP.camera.x , FP.camera.y, 1);
			
			FP.stepTowards(this, FP.camera.x + FP.rand(1800), FP.camera.y + FP.rand(1801), 6);
			
			if (FP.rand(10) == 2) text.alpha += 0xFF1122;
				
			super.update();
		
			if (FP.rand(10000 == 40)) {
				text.scale += 1;
			}
			if (FP.rand(90000) == 1) {
				text.scale += FP.rand(360);
			}
		
			if (!hasBeenGay) {
				if (FP.distance(x, y, FP.camera.x + FP.screen.width / 2, FP.camera.y + FP.screen.height / 2) < 4) {
					hasBeenGay = true;
											
					text.scale += 8;
					// We need sweet tunes, bra
					//var song:Sfx = new Sfx(FP.choose(NoiseAssets.chinceArray));
					//song.play();
					//song.volume = 0.009;	
					text.angle -= 11;
					
					text.angle -= 40;
				}
				text.scale -= 0.001;
				FP.stepTowards(this, FP.world.mouseX, FP.world.mouseY, 3);
				text.angle *= 0.9;
				
				if (FP.rand(8) == 1) text.color += 1;
			}
		}
	}
}