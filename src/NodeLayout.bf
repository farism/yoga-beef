using System;

namespace Yoga;

extension Yoga
{
	[CLink]
	public static extern float YGNodeLayoutGetLeft(YGNode* node);

	[CLink]
	public static extern float YGNodeLayoutGetTop(YGNode* node);

	[CLink]
	public static extern float YGNodeLayoutGetRight(YGNode* node);

	[CLink]
	public static extern float YGNodeLayoutGetBottom(YGNode* node);

	[CLink]
	public static extern float YGNodeLayoutGetWidth(YGNode* node);

	[CLink]
	public static extern float YGNodeLayoutGetHeight(YGNode* node);

	[CLink]
	public static extern YGDirection YGNodeLayoutGetDirection(YGNode* node);

	[CLink]
	public static extern bool YGNodeLayoutGetHadOverflow(YGNode* node);

	// Get the computed values for these nodes after performing layout. If they were
	// set using point values then the returned value will be the same as
	// YGNodeStyleGetXXX. However if they were set using a percentage value then the
	// returned value is the computed value used during layout.

	[CLink]
	public static extern float YGNodeLayoutGetMargin(YGNode* node, YGEdge edge);

	[CLink]
	public static extern float YGNodeLayoutGetBorder(YGNode* node, YGEdge edge);

	[CLink]
	public static extern float YGNodeLayoutGetPadding(YGNode* node, YGEdge edge);
}