using System;

namespace Yoga;

extension Yoga
{
	[CRepr]
	public struct YGValue
	{
		public float value;
		public YGUnit unit;
	}
}