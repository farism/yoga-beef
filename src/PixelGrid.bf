using System;

namespace Yoga;

extension Yoga
{
	/**
	* Rounds a point value to the nearest whole pixel, given a pointScaleFactor
	* describing pixel density.
	* @returns the rounded value in points
	*/
	[CLink]
	public static extern float YGRoundValueToPixelGrid(double value, double pointScaleFactor, bool forceCeil, bool forceFloor);
}