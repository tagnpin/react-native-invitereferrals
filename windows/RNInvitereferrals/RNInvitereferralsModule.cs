using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Invitereferrals.RNInvitereferrals
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNInvitereferralsModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNInvitereferralsModule"/>.
        /// </summary>
        internal RNInvitereferralsModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNInvitereferrals";
            }
        }
    }
}
