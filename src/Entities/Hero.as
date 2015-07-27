package Entities
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.Graphic;
	import net.flashpunk.Mask;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	
	public class Hero extends Entity
	{
		public function Hero(x:Number=0, y:Number=0, graphic:Graphic=null, mask:Mask=null)
		{
			super(x, y, graphic, mask);
			this.graphic=new Image(GameCostants.GFX_Hero);
			this.width=60;
			this.height=60;
		}
		
		override public function update():void
		{
			this.y=Input.mouseY-this.height/2;
			if(this.y<0)
				this.y=0;
			if(this.y>=FP.screen.height-this.height)
				this.y=this.height;
			if(Input.mousePressed)
			{
				if(this.world.typeCount(GameCostants.BULLET_TYPE)<=5)
				this.world.add(new Bullet(this.x+this.width,this.y+this.halfHeight+70));
			}
			super.update();
		}
	}
}