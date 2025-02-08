using System;

namespace Yoga;

extension Yoga
{
	// Tag struct used to form the opaque YGNodeRef for the public C API
	[CRepr]
	public struct YGNode
	{
	}

	public struct YGSize
	{
		float width;
		float height;
	}

	/**
	* Heap allocates and returns a new Yoga node using Yoga settings.
	*/
	[CLink]
	public static extern YGNode* YGNodeNew();

	/**
	* Heap allocates and returns a new Yoga node, with customized settings.
	*/
	[CLink]
	public static extern YGNode* YGNodeNewWithConfig(YGConfig config);

	/**
	* Returns a mutable copy of an existing node, with the same context and
	* children, but no owner set. Does not call the function set by
	* YGConfigSetCloneNodeFunc().
	*/
	[CLink]
	public static extern YGNode* YGNodeClone(YGNode* node);

	/**
	* Frees the Yoga node, disconnecting it from its owner and children.
	*/
	[CLink]
	public static extern void YGNodeFree(YGNode* node);

	/**
	* Frees the subtree of Yoga nodes rooted at the given node.
	*/
	[CLink]
	public static extern void YGNodeFreeRecursive(YGNode* node);

	/**
	* Frees the Yoga node without disconnecting it from its owner or children.
	* Allows garbage collecting Yoga nodes in parallel when the entire tree is
	* unreachable.
	*/
	[CLink]
	public static extern void YGNodeFinalize(YGNode* node);

	/**
	* Resets the node to its default state.
	*/
	[CLink]
	public static extern void YGNodeReset(YGNode* node);

	/**
	* Calculates the layout of the tree rooted at the given node.
	*
	* Layout results may be read after calling YGNodeCalculateLayout() using
	* functions like YGNodeLayoutGetLeft(), YGNodeLayoutGetTop(), etc.
	*
	* YGNodeGetHasNewLayout() may be read to know if the layout of the node or its
	* subtrees may have changed since the last time YGNodeCalculate() was called.
	*/
	[CLink]
	public static extern void YGNodeCalculateLayout(YGNode* node, float availableWidth, float availableHeight, YGDirection ownerDirection);

	/**
	* Whether the given node may have new layout results. Must be reset by calling
	* YGNodeSetHasNewLayout().
	*/
	[CLink]
	public static extern bool YGNodeGetHasNewLayout(YGNode* node);

	/**
	* Sets whether a nodes layout is considered new.
	*/
	[CLink]
	public static extern void YGNodeSetHasNewLayout(YGNode* node, bool hasNewLayout);

	/**
	* Whether the node's layout results are dirty due to it or its children
	* changing.
	*/
	[CLink]
	public static extern bool YGNodeIsDirty(YGNode* node);

	/**
	* Marks a node with custom measure function as dirty.
	*/
	[CLink]
	public static extern void YGNodeMarkDirty(YGNode* node);

	typealias YGDirtiedFunc = function void(YGNode* node);

	/**
	* Called when a change is made to the Yoga tree which dirties this node.
	*/
	[CLink]
	public static extern void YGNodeSetDirtiedFunc(YGNode* node, YGDirtiedFunc dirtiedFunc);

	/**
	* Returns a dirtied func if set.
	*/
	[CLink]
	public static extern YGDirtiedFunc YGNodeGetDirtiedFunc(YGNode* node);

	/**
	* Inserts a child node at the given index.
	*/
	[CLink]
	public static extern void YGNodeInsertChild(YGNode* node, YGNode* child, int index);

	/**
	* Replaces the child node at a given index with a new one.
	*/
	[CLink]
	public static extern void YGNodeSwapChild(YGNode* node, YGNode* child, int index);

	/**
	* Removes the given child node.
	*/
	[CLink]
	public static extern void YGNodeRemoveChild(YGNode* node, YGNode* child);

	/**
	* Removes all children nodes.
	*/
	[CLink]
	public static extern void YGNodeRemoveAllChildren(YGNode* node);

	/**
	* Sets children according to the given list of nodes.
	*/
	[CLink]
	public static extern void YGNodeSetChildren(YGNode* owner, YGNode** children, int count);

	/**
	* Get the child node at a given index.
	*/
	[CLink]
	public static extern YGNode* YGNodeGetChild(YGNode* node, int index);

	/**
	* The number of child nodes.
	*/
	[CLink]
	public static extern int YGNodeGetChildCount(YGNode* node);

	/**
	* Get the parent/owner currently set for a node.
	*/
	[CLink]
	public static extern YGNode* YGNodeGetOwner(YGNode* node);

	/**
	* Get the parent/owner currently set for a node.
	*/
	[CLink]
	public static extern YGNode* YGNodeGetParent(YGNode* node);

	/**
	* Set a new config for the node after creation.
	*/
	[CLink]
	public static extern void YGNodeSetConfig(YGNode* node, YGConfig* config);

	/**
	* Get the config currently set on the node.
	*/
	[CLink]
	public static extern YGConfig YGNodeGetConfig(YGNode* node);

	/**
	* Sets extra data on the Yoga node which may be read from during callbacks.
	*/
	[CLink]
	public static extern void YGNodeSetContext(YGNode* node, void* context);

	/**
	* Returns the context or NULL if no context has been set.
	*/
	[CLink]
	public static extern void* YGNodeGetContext(YGNode* node);

	typealias YGMeasureFunc = function YGSize(YGNode* node, float width, YGMeasureMode widthMode, float height, YGMeasureMode heightMode);

	/**
	* Allows providing custom measurements for a Yoga leaf node (usually for
	* measuring text). YGNodeMarkDirty() must be set if content effecting the
	* measurements of the node changes.
	*/
	[CLink]
	public static extern void YGNodeSetMeasureFunc(YGNode* node, YGMeasureFunc measureFunc);

	/**
	* Whether a measure function is set.
	*/
	[CLink]
	public static extern bool YGNodeHasMeasureFunc(YGNode* node);

	/**
	* @returns a defined offset to baseline (ascent).
	*/
	typealias YGBaselineFunc = function float(YGNode* node, float width, float height);

	/**
	* Set a custom function for determining the text baseline for use in baseline
	* alignment.
	*/
	[CLink]
	public static extern void YGNodeSetBaselineFunc(YGNode* node, YGBaselineFunc baselineFunc);

	/**
	* Whether a baseline function is set.
	*/
	[CLink]
	public static extern bool YGNodeHasBaselineFunc(YGNode* node);

	/**
	* Sets this node should be considered the reference baseline among siblings.
	*/
	[CLink]
	public static extern void YGNodeSetIsReferenceBaseline(YGNode* node, bool isReferenceBaseline);

	/**
	* Whether this node is set as the reference baseline.
	*/
	[CLink]
	public static extern bool YGNodeIsReferenceBaseline(YGNode* node);

	/**
	* Sets whether a leaf node's layout results may be truncated during layout
	* rounding.
	*/
	[CLink]
	public static extern void YGNodeSetNodeType(YGNode* node, YGNodeType nodeType);

	/**
	* Wwhether a leaf node's layout results may be truncated during layout
	* rounding.
	*/
	[CLink]
	public static extern YGNodeType YGNodeGetNodeType(YGNode* node);

	/**
	* Make it so that this node will always form a containing block for any
	* descendant nodes. This is useful for when a node has a property outside of
	* of Yoga that will form a containing block. For example, transforms or some of
	* the others listed in
	* https://developer.mozilla.org/en-US/docs/Web/CSS/Containing_block
	*/
	[CLink]
	public static extern void YGNodeSetAlwaysFormsContainingBlock(YGNode* node, bool alwaysFormsContainingBlock);

	/**
	* Whether the node will always form a containing block for any descendant. This
	* can happen in situation where the client implements something like a
	* transform that can affect containing blocks but is not handled by Yoga
	* directly.
	*/
	[CLink]
	public static extern bool YGNodeGetAlwaysFormsContainingBlock(YGNode* node);
}