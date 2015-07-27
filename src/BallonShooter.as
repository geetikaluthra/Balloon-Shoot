package
{
	import Worlds.GameWorld;
	
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	
	[SWF(frameRate=60,width="1000", height="700")]
	public class BallonShooter extends Engine
	{
		public function BallonShooter()
		{
			super(800,700);
			FP.screen.color=0xffffff;
		}
		
		override public function init():void
		{
			FP.world=new GameWorld();
		}
	}
}