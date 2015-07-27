package Entities
{
	import flash.display.BitmapData;
	
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.Graphic;
	import net.flashpunk.Mask;
	import net.flashpunk.graphics.Image;
	
	public class Bullet extends Entity
	{
		public function Bullet(x:Number=0, y:Number=0, graphic:Graphic=null, mask:Mask=null)
		{
			super(x, y, graphic, mask);
			this.graphic=new Image(new BitmapData(4,4,false,0x666666));
			this.type=GameCostants.BULLET_TYPE;
			this.setHitbox(4,4);
		}
		
		override public function update():void
		{
			this.x+=FP.elapsed*GameCostants.BULLET_SPEED;
			
			if(this.x>FP.screen.width)
			{
				this.world.remove(this);
			}	
			super.update();
		}
		
	}
}