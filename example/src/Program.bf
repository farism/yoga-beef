using System;
using System.Diagnostics;
using RaylibBeef;
using static Yoga.Yoga;
using static RaylibBeef.Raylib;

namespace example;

class Program
{
	public static float YGNodeLayoutGetTopAbsolute(YGNode* node)
	{
		var val = YGNodeLayoutGetTop(node);
		var parent = YGNodeGetParent(node);

		while (parent != null)
		{
			val += YGNodeLayoutGetTop(parent);
			parent = YGNodeGetParent(parent);
		}

		return val;
	}

	public static float YGNodeLayoutGetLeftAbsolute(YGNode* node)
	{
		var val = YGNodeLayoutGetLeft(node);
		var parent = YGNodeGetParent(node);

		while (parent != null)
		{
			val += YGNodeLayoutGetLeft(parent);
			parent = YGNodeGetParent(parent);
		}

		return val;
	}

	public static void DrawNode(YGNode* node, Color color)
	{
		DrawRectangle(
			(.)YGNodeLayoutGetLeftAbsolute(node),
			(.)YGNodeLayoutGetTopAbsolute(node),
			(.)YGNodeLayoutGetWidth(node),
			(.)YGNodeLayoutGetHeight(node),
			color
			);
	}

	public static int Main(String[] args)
	{
		SetTargetFPS(60);
		InitWindow(1024, 768, scope $"yoga-beef");
		SetWindowState(.FlagWindowResizable);

		let root = YGNodeNew();

		defer YGNodeFreeRecursive(root);

		YGNodeStyleSetFlexDirection(root, .YGFlexDirectionColumn);
		YGNodeStyleSetFlexWrap(root, .YGWrapWrap);
		YGNodeStyleSetWidthPercent(root, 100.0f);
		YGNodeStyleSetHeightPercent(root, 100.0f);

		let header = YGNodeNew();
		YGNodeStyleSetWidthPercent(header, 100);
		YGNodeStyleSetHeight(header, 50);
		YGNodeInsertChild(root, header, 0);

		let body = YGNodeNew();
		YGNodeStyleSetFlexDirection(body, .YGFlexDirectionRow);
		YGNodeStyleSetFlexGrow(body, 1);
		YGNodeInsertChild(root, body, 1);

		let content = YGNodeNew();
		YGNodeStyleSetFlexGrow(content, 1);
		YGNodeInsertChild(body, content, 0);

		let navigation = YGNodeNew();
		YGNodeStyleSetWidthPercent(navigation, 20);
		YGNodeStyleSetMargin(navigation, .YGEdgeRight, 2);
		YGNodeInsertChild(body, navigation, 0);

		while (!WindowShouldClose())
		{
			BeginDrawing();
			ClearBackground(BLACK);

			YGNodeCalculateLayout(root, GetScreenWidth(), GetScreenHeight(), .YGDirectionLTR);
			DrawNode(header, .(255, 0, 0, 150));
			DrawNode(navigation, .(0, 255, 0, 150));
			DrawNode(content, .(0, 0, 255, 150));

			EndDrawing();
		}

		return 0;
	}
}