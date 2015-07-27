package Worlds
{
	import Entities.Balloon;
	import Entities.Hero;
	import Entities.bg;
	
	import net.flashpunk.FP;
	import net.flashpunk.World;
	import net.flashpunk.graphics.Text;
	public class GameWorld extends World
	{
		private var Bg:bg
		private var hero:Hero;
		private var score:Text;
		
		public function GameWorld()
		{
			super();
		}
		
		override public function begin():void
		{
			Bg=new bg();
			this.add(Bg);
			hero=new Hero(30,FP.screen.height/2);
			this.add(hero);
			score=new Text("Score:0",10,10);
			this.addGraphic(score);
		}
		
		override public function update():void
		{
			if(FP.random>GameCostants.BALLOON_SPAWNCHANCE)
			{
				if(FP.rand(2)==0)
				{
					this.add(new Balloon("green"));
				}
				
				else 
				{
					this.add(new Balloon("black"));
				}
			}
			score.text="Score:"+GameVariables.score;
			super.update();
		}
	}
}