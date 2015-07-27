package
{
	

	public class GameCostants
	{
		[Embed(source="/assets/herofinal.png")]
		public static const GFX_Hero:Class;
		
		public static const BULLET_SPEED:int=300;
		
		[Embed(source="/assets/redballoon.png")]
		public static const GFX_BalloonRed:Class;
		
		[Embed(source="/assets/blackballoon.png")]
		public static const GFX_BalloonBlack:Class;
		
		[Embed(source="/assets/bg.png")]
		public static const GFX_BG:Class;
		
		public static const BALLOON_SPEED:int=100;
		
		public static const BALLOON_SPAWNCHANCE:Number=1-1/60;
		
		public static const BULLET_TYPE:String="bullet";
		public static const ENEMY_TYPE_BALLOON:String="balloon";
		
		public static const BALLOON_GREEN_SCORE:int=10;
		public static const BALLOON_BLACK_SCORE:int=-5;
		
	}
}