package Entities
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.Graphic;
	import net.flashpunk.Mask;
	import net.flashpunk.graphics.Image;
	
	public class Balloon extends Entity
	{
		private var Ballooncolor:String
		public function Balloon(Ballooncolor:String="green")
		{
			this.Ballooncolor=Ballooncolor;
			super(FP.screen.width/2+FP.rand(FP.screen.width/2)-60, FP.screen.height+10);
			if(this.Ballooncolor=="green")
			{
				this.graphic=new Image(GameCostants.GFX_BalloonRed);	
			}
			else
			{
				this.graphic=new Image(GameCostants.GFX_BalloonBlack);
			}
			
			this.type=GameCostants.ENEMY_TYPE_BALLOON;
			this.setHitbox(70,70);
		}
		
		override public function update():void
		{
			this.y-=FP.elapsed*GameCostants.BALLOON_SPEED;
			//if(this.y<=1)this.world.remove(this);
			var bullet:Bullet=Bullet(this.collideTypes([GameCostants.BULLET_TYPE],this.x,this.y));
			if(bullet!=null)
			{
				pop();
			}
			super.update();
		}
		
		private function pop():void
		{
			this.world.remove(this);
			if(Ballooncolor=="green") 
				GameVariables.score+=GameCostants.BALLOON_GREEN_SCORE;
			else
				GameVariables.score+=GameCostants.BALLOON_BLACK_SCORE;
					
		}
	}
}