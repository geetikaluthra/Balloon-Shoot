package Entities
{
	import net.flashpunk.Entity;
	import net.flashpunk.Graphic;
	import net.flashpunk.Mask;
	import net.flashpunk.graphics.Image;
	
	public class bg extends Entity
	{
		public function bg()
		{
			super();
			this.graphic=new Image(GameCostants.GFX_BG);
		}
	}
}