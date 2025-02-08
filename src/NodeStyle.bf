using System;

namespace Yoga;

extension Yoga
{
	[CLink]
	public static extern void YGNodeCopyStyle(YGNode* dstNode, YGNode* srcNode);

	[CLink]
	public static extern void YGNodeStyleSetDirection(YGNode* node, YGDirection direction);

	[CLink]
	public static extern YGDirection YGNodeStyleGetDirection(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetFlexDirection(YGNode* node, YGFlexDirection flexDirection);

	[CLink]
	public static extern YGFlexDirection YGNodeStyleGetFlexDirection(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetJustifyContent(YGNode* node, YGJustify justifyContent);

	[CLink]
	public static extern YGJustify YGNodeStyleGetJustifyContent(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetAlignContent(YGNode* node, YGAlign alignContent);

	[CLink]
	public static extern YGAlign YGNodeStyleGetAlignContent(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetAlignItems(YGNode* node, YGAlign alignItems);

	[CLink]
	public static extern YGAlign YGNodeStyleGetAlignItems(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetAlignSelf(YGNode* node, YGAlign alignSelf);

	[CLink]
	public static extern YGAlign YGNodeStyleGetAlignSelf(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetPositionType(YGNode* node, YGPositionType positionType);

	[CLink]
	public static extern YGPositionType YGNodeStyleGetPositionType(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetFlexWrap(YGNode* node, YGWrap flexWrap);

	[CLink]
	public static extern YGWrap YGNodeStyleGetFlexWrap(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetOverflow(YGNode* node, YGOverflow overflow);

	[CLink]
	public static extern YGOverflow YGNodeStyleGetOverflow(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetDisplay(YGNode* node, YGDisplay display);

	[CLink]
	public static extern YGDisplay YGNodeStyleGetDisplay(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetFlex(YGNode* node, float flex);

	[CLink]
	public static extern float YGNodeStyleGetFlex(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetFlexGrow(YGNode* node, float flexGrow);

	[CLink]
	public static extern float YGNodeStyleGetFlexGrow(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetFlexShrink(YGNode* node, float flexShrink);

	[CLink]
	public static extern float YGNodeStyleGetFlexShrink(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetFlexBasis(YGNode* node, float flexBasis);

	[CLink]
	public static extern void YGNodeStyleSetFlexBasisPercent(YGNode* node, float flexBasis);

	[CLink]
	public static extern void YGNodeStyleSetFlexBasisAuto(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetFlexBasisMaxContent(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetFlexBasisFitContent(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetFlexBasisStretch(YGNode* node);

	[CLink]
	public static extern YGValue YGNodeStyleGetFlexBasis(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetPosition(YGNode* node, YGEdge edge, float position);

	[CLink]
	public static extern void YGNodeStyleSetPositionPercent(YGNode* node, YGEdge edge, float position);

	[CLink]
	public static extern YGValue YGNodeStyleGetPosition(YGNode* node, YGEdge edge);

	[CLink]
	public static extern void YGNodeStyleSetPositionAuto(YGNode* node, YGEdge edge);

	[CLink]
	public static extern void YGNodeStyleSetMargin(YGNode* node, YGEdge edge, float margin);

	[CLink]
	public static extern void YGNodeStyleSetMarginPercent(YGNode* node, YGEdge edge, float margin);

	[CLink]
	public static extern void YGNodeStyleSetMarginAuto(YGNode* node, YGEdge edge);

	[CLink]
	public static extern YGValue YGNodeStyleGetMargin(YGNode* node, YGEdge edge);

	[CLink]
	public static extern void YGNodeStyleSetPadding(YGNode* node, YGEdge edge, float padding);

	[CLink]
	public static extern void YGNodeStyleSetPaddingPercent(YGNode* node, YGEdge edge, float padding);

	[CLink]
	public static extern YGValue YGNodeStyleGetPadding(YGNode* node, YGEdge edge);

	[CLink]
	public static extern void YGNodeStyleSetBorder(YGNode* node, YGEdge edge, float border);

	[CLink]
	public static extern float YGNodeStyleGetBorder(YGNode* node, YGEdge edge);

	[CLink]
	public static extern void YGNodeStyleSetGap(YGNode* node, YGGutter gutter, float gapLength);

	[CLink]
	public static extern void YGNodeStyleSetGapPercent(YGNode* node, YGGutter gutter, float gapLength);

	[CLink]
	public static extern YGValue YGNodeStyleGetGap(YGNode* node, YGGutter gutter);

	[CLink]
	public static extern void YGNodeStyleSetBoxSizing(YGNode* node, YGBoxSizing boxSizing);

	[CLink]
	public static extern YGBoxSizing YGNodeStyleGetBoxSizing(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetWidth(YGNode* node, float width);

	[CLink]
	public static extern void YGNodeStyleSetWidthPercent(YGNode* node, float width);

	[CLink]
	public static extern void YGNodeStyleSetWidthAuto(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetWidthMaxContent(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetWidthFitContent(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetWidthStretch(YGNode* node);

	[CLink]
	public static extern YGValue YGNodeStyleGetWidth(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetHeight(YGNode* node, float height);

	[CLink]
	public static extern void YGNodeStyleSetHeightPercent(YGNode* node, float height);

	[CLink]
	public static extern void YGNodeStyleSetHeightAuto(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetHeightMaxContent(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetHeightFitContent(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetHeightStretch(YGNode* node);

	[CLink]
	public static extern YGValue YGNodeStyleGetHeight(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetMinWidth(YGNode* node, float minWidth);

	[CLink]
	public static extern void YGNodeStyleSetMinWidthPercent(YGNode* node, float minWidth);

	[CLink]
	public static extern void YGNodeStyleSetMinWidthMaxContent(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetMinWidthFitContent(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetMinWidthStretch(YGNode* node);

	[CLink]
	public static extern YGValue YGNodeStyleGetMinWidth(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetMinHeight(YGNode* node, float minHeight);

	[CLink]
	public static extern void YGNodeStyleSetMinHeightPercent(YGNode* node, float minHeight);

	[CLink]
	public static extern void YGNodeStyleSetMinHeightMaxContent(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetMinHeightFitContent(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetMinHeightStretch(YGNode* node);

	[CLink]
	public static extern YGValue YGNodeStyleGetMinHeight(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetMaxWidth(YGNode* node, float maxWidth);

	[CLink]
	public static extern void YGNodeStyleSetMaxWidthPercent(YGNode* node, float maxWidth);

	[CLink]
	public static extern void YGNodeStyleSetMaxWidthMaxContent(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetMaxWidthFitContent(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetMaxWidthStretch(YGNode* node);

	[CLink]
	public static extern YGValue YGNodeStyleGetMaxWidth(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetMaxHeight(YGNode* node, float maxHeight);

	[CLink]
	public static extern void YGNodeStyleSetMaxHeightPercent(YGNode* node, float maxHeight);

	[CLink]
	public static extern void YGNodeStyleSetMaxHeightMaxContent(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetMaxHeightFitContent(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetMaxHeightStretch(YGNode* node);

	[CLink]
	public static extern YGValue YGNodeStyleGetMaxHeight(YGNode* node);

	[CLink]
	public static extern void YGNodeStyleSetAspectRatio(YGNode* node, float aspectRatio);

	[CLink]
	public static extern float YGNodeStyleGetAspectRatio(YGNode* node);
}