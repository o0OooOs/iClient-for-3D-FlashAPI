package SuperMap.Web.UI.Action3Ds
{
	import SuperMap.Web.UI.Controls.SceneControl;
	/**
	 * 用来描述通过鼠标在三维场景内进行距离量算操作的类。
	 * 这里量算的距离为球面距离，即不考虑地球表面地形起伏的光滑地球的球面距离。
	 */
	public class MeasureDistance extends SceneAction
	{
		public var CLASSNAME:String="MeasureDistance";
		private var REALSPACE_CLASSNAME:String="SuperMap.Web.UI.Action3Ds.MeasureDistance";
		public function MeasureDistance(sceneControl:Object=null)
		{
			var key:Number;
			var isNew:Boolean;
			var array:Object;
			if(sceneControl is SceneControl)
			{
				key=0;
				isNew=true;
				var realArgument:Array=[
					sceneControl.KEY.toString()+"$Object"
				];
				array={
					className:this.REALSPACE_CLASSNAME,
						realArgument:realArgument
				};
			}
			else
			{
				key=sceneControl["key"] as Number;
				isNew=sceneControl["isNew"] as Boolean;
			}
			super(sceneControl,key,isNew,array);
		}
	}
}