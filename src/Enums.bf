using System;

namespace Yoga;

extension Yoga
{
	public enum YGAlign
	{
		YGAlignAuto,
		YGAlignFlexStart,
		YGAlignCenter,
		YGAlignFlexEnd,
		YGAlignStretch,
		YGAlignBaseline,
		YGAlignSpaceBetween,
		YGAlignSpaceAround,
		YGAlignSpaceEvenly
	}

	public enum YGBoxSizing
	{
		YGBoxSizingBorderBox,
		YGBoxSizingContentBox
	}

	public enum YGDimension
	{
		YGDimensionWidth,
		YGDimensionHeight
	}

	public enum YGDirection
	{
		YGDirectionInherit,
		YGDirectionLTR,
		YGDirectionRTL
	}

	public enum YGDisplay
	{
		YGDisplayFlex,
		YGDisplayNone,
		YGDisplayContents
	}

	public enum YGEdge
	{
		YGEdgeLeft,
		YGEdgeTop,
		YGEdgeRight,
		YGEdgeBottom,
		YGEdgeStart,
		YGEdgeEnd,
		YGEdgeHorizontal,
		YGEdgeVertical,
		YGEdgeAll
	}

	public enum YGErrata
	{
		YGErrataNone = 0,
		YGErrataStretchFlexBasis = 1,
		YGErrataAbsolutePositionWithoutInsetsExcludesPadding = 2,
		YGErrataAbsolutePercentAgainstInnerSize = 4,
		YGErrataAll = 2147483647,
		YGErrataClassic = 2147483646
	}

	public enum YGExperimentalFeature
	{
		YGExperimentalFeatureWebFlexBasis
	}

	public enum YGFlexDirection
	{
		YGFlexDirectionColumn,
		YGFlexDirectionColumnReverse,
		YGFlexDirectionRow,
		YGFlexDirectionRowReverse
	}

	public enum YGGutter
	{
		YGGutterColumn,
		YGGutterRow,
		YGGutterAll
	}

	public enum YGJustify
	{
		YGJustifyFlexStart,
		YGJustifyCenter,
		YGJustifyFlexEnd,
		YGJustifySpaceBetween,
		YGJustifySpaceAround,
		YGJustifySpaceEvenly
	}

	public enum YGLogLevel
	{
		YGLogLevelError,
		YGLogLevelWarn,
		YGLogLevelInfo,
		YGLogLevelDebug,
		YGLogLevelVerbose,
		YGLogLevelFatal
	}

	public enum YGMeasureMode
	{
		YGMeasureModeUndefined,
		YGMeasureModeExactly,
		YGMeasureModeAtMost
	}

	public enum YGNodeType
	{
		YGNodeTypeDefault,
		YGNodeTypeText
	}

	public enum YGOverflow
	{
		YGOverflowVisible,
		YGOverflowHidden,
		YGOverflowScroll
	}

	public enum YGPositionType
	{
		YGPositionTypeStatic,
		YGPositionTypeRelative,
		YGPositionTypeAbsolute
	}

	public enum YGUnit
	{
		YGUnitUndefined,
		YGUnitPoint,
		YGUnitPercent,
		YGUnitAuto,
		YGUnitMaxContent,
		YGUnitFitContent,
		YGUnitStretch
	}

	public enum YGWrap
	{
		YGWrapNoWrap,
		YGWrapWrap,
		YGWrapWrapReverse
	}
}