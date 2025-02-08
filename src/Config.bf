using System;

namespace Yoga;

extension Yoga
{
	[CRepr]
	public struct YGConfig
	{
	}

	/**
	* Allocates a set of configuration options. The configuration may be applied to
	* multiple nodes (i.e. a single global config), or can be applied more
	* granularly per-node.
	*/
	[CLink]
	public static extern YGConfig* YGConfigNew();

	/**
	* Frees the associated Yoga configuration.
	*/
	[CLink]
	public static extern void YGConfigFree(YGConfig* config);

	/**
	* Returns the default config values set by Yoga.
	*/
	[CLink]
	public static extern YGConfig* YGConfigGetDefault();

	/**
	* Yoga by default creates new nodes with style defaults different from flexbox
	* on web (e.g. `YGFlexDirectionColumn` and `YGPositionRelative`).
	* `UseWebDefaults` instructs Yoga to instead use a default style consistent
	* with the web.
	*/
	[CLink]
	public static extern void YGConfigSetUseWebDefaults(YGConfig* config, bool enabled);

	/**
	* Whether the configuration is set to use web defaults.
	*/
	[CLink]
	public static extern bool YGConfigGetUseWebDefaults(YGConfig* config);

	/**
	* Yoga will by default round final layout positions and dimensions to the
	* nearst point. `pointScaleFactor` controls the density of the grid used for
	* layout rounding (e.g. to round to the closest display pixel).
	*
	* May be set to 0.0f to avoid rounding the layout results.
	*/
	[CLink]
	public static extern void YGConfigSetPointScaleFactor(YGConfig* config, float pixelsInPoint);

	/**
	* Get the currently set point scale factor.
	*/
	[CLink]
	public static extern float YGConfigGetPointScaleFactor(YGConfig* config);

	/**
	* Configures how Yoga balances W3C conformance vs compatibility with layouts
	* created against earlier versions of Yoga.
	*
	* By default Yoga will prioritize W3C conformance. `Errata` may be set to ask
	* Yoga to produce specific incorrect behaviors. E.g. `YGConfigSetErrata(config,
	* YGErrataStretchFlexBasis)`.
	*
	* YGErrata is a bitmask, and multiple errata may be set at once. Predefined
	* constants exist for convenience:
	* 1. YGErrataNone: No errata
	* 2. YGErrataClassic: Match layout behaviors of Yoga 1.x
	* 3. YGErrataAll: Match layout behaviors of Yoga 1.x, including
	* `UseLegacyStretchBehaviour`
	*/
	[CLink]
	public static extern void YGConfigSetErrata(YGConfig* config, YGErrata errata);

	/**
	* Get the currently set errata.
	*/
	[CLink]
	public static extern YGErrata YGConfigGetErrata(YGConfig* config);

	/**
	* Function pointer type for YGConfigSetLogger.
	*/
	typealias YGLogger = function int(YGConfig* config, YGNode* node, YGLogLevel level,  char8* format);

	/**
	* Set a custom log function for to use when logging diagnostics or fatal.
	* errors.
	*/
	[CLink]
	public static extern void YGConfigSetLogger(YGConfig* config, YGLogger logger);

	/**
	* Sets an arbitrary context pointer on the config which may be read from during
	* callbacks.
	*/
	[CLink]
	public static extern void YGConfigSetContext(YGConfig* config, void* context);

	/**
	* Gets the currently set context.
	*/
	[CLink]
	public static extern void* YGConfigGetContext(YGConfig* config);

	/**
	* Function pointer type for YGConfigSetCloneNodeFunc.
	*/
	typealias YGCloneNodeFunc = function YGNode*(YGNode* oldNode, YGNode* owner, int childIndex);

	/**
	* Enable an experimental/unsupported feature in Yoga.
	*/
	[CLink]
	public static extern void YGConfigSetExperimentalFeatureEnabled(YGConfig* config, YGExperimentalFeature feature, bool enabled);

	/**
	* Whether an experimental feature is set.
	*/
	[CLink]
	public static extern bool YGConfigIsExperimentalFeatureEnabled(YGConfig* config, YGExperimentalFeature feature);

	/**
	* Sets a callback, called during layout, to create a new mutable Yoga node if
	* Yoga must write to it and its owner is not its parent observed during layout.
	*/
	[CLink]
	public static extern void YGConfigSetCloneNodeFunc(YGConfig* config, YGCloneNodeFunc callback);
}
