{{wowapi|notitle=1}} {{tocright}}
:<span class="noexcerpt" data-nosnippet>[[File:Battlenet_2021_icon.svg|24px|link=]] &nbsp; ''For the Web API, see https://develop.battle.net/documentation/world-of-warcraft''</span>
:<span class="noexcerpt" data-nosnippet>{{Wow-inline}} ''For the Classic WoW API, see [[World of Warcraft API/Classic]]</span>
<!-- :<span class="noexcerpt" data-nosnippet>🔤 &nbsp; &nbsp;''For an alphabetically ordered list, see [[World of Warcraft API/Alphabetic]]</span>-->
The '''WoW API''' is available to [[AddOn]]s and macro scripts. It's officially documented in [https://github.com/Gethe/wow-ui-source/tree/live/Interface/AddOns/Blizzard_APIDocumentationGenerated Blizzard_APIDocumentation] which is accessible via the [[APILink|/api]] command. The [[Lua]] user interface code can be [[Viewing_Blizzard%27s_interface_code|exported]] from the game client.

{{i-note|This list is up to date as of [[Patch_11.0.2/API_changes|Patch 11.0.2]] (56311) Aug 23 2024}}
<!-- https://github.com/Ketho/WowpediaDoc/tree/master/Pages/World%20of%20Warcraft%20API -->

==C_AddOns==
Relates to [[AddOn]]s.
: [[API C_AddOns.DisableAddOn|C_AddOns.DisableAddOn]](<span class="apiarg">name [, character]</span>) - Sets an addon to be disabled.
: [[API C_AddOns.DisableAllAddOns|C_AddOns.DisableAllAddOns]](<span class="apiarg">[character]</span>) - Sets all addons to be disabled.
: [[API C_AddOns.DoesAddOnExist|C_AddOns.DoesAddOnExist]](<span class="apiarg">name</span>) : <span class="apiret">exists</span>
: [[API C_AddOns.EnableAddOn|C_AddOns.EnableAddOn]](<span class="apiarg">name [, character]</span>) - Sets an addon to be enabled.
: [[API C_AddOns.EnableAllAddOns|C_AddOns.EnableAllAddOns]](<span class="apiarg">[character]</span>) - Sets all addons to be enabled.
: [[API C_AddOns.GetAddOnDependencies|C_AddOns.GetAddOnDependencies]](<span class="apiarg">name</span>) : <span class="apiret">unpackedPrimitiveType</span> - Returns a list of TOC dependencies.
: [[API C_AddOns.GetAddOnEnableState|C_AddOns.GetAddOnEnableState]](<span class="apiarg">name [, character]</span>) : <span class="apiret">state</span>
: [[API C_AddOns.GetAddOnInfo|C_AddOns.GetAddOnInfo]](<span class="apiarg">name</span>) : <span class="apiret">name, title, notes, loadable, reason, security, updateAvailable</span> - Get information about an AddOn.
: [[API C_AddOns.GetAddOnMetadata|C_AddOns.GetAddOnMetadata]](<span class="apiarg">name, variable</span>) : <span class="apiret">value</span> - Returns the TOC metadata of an addon.
: [[API C_AddOns.GetAddOnOptionalDependencies|C_AddOns.GetAddOnOptionalDependencies]](<span class="apiarg">name</span>) : <span class="apiret">unpackedPrimitiveType</span> - Returns a list of optional TOC dependencies.
: [[API C_AddOns.GetNumAddOns|C_AddOns.GetNumAddOns]]() : <span class="apiret">numAddOns</span> - Returns the number of AddOns.
: [[API C_AddOns.GetScriptsDisallowedForBeta|C_AddOns.GetScriptsDisallowedForBeta]]() : <span class="apiret">disallowed</span>
: [[API C_AddOns.IsAddOnLoadable|C_AddOns.IsAddOnLoadable]](<span class="apiarg">name [, character [, demandLoaded]]</span>) : <span class="apiret">loadable, reason</span>
: [[API C_AddOns.IsAddOnLoaded|C_AddOns.IsAddOnLoaded]](<span class="apiarg">name</span>) : <span class="apiret">loadedOrLoading, loaded</span> - Returns true if the specified addon is loaded.
: [[API C_AddOns.IsAddOnLoadOnDemand|C_AddOns.IsAddOnLoadOnDemand]](<span class="apiarg">name</span>) : <span class="apiret">loadOnDemand</span> - Returns true if the specified addon is load-on-demand.
: [[API C_AddOns.IsAddonVersionCheckEnabled|C_AddOns.IsAddonVersionCheckEnabled]]() : <span class="apiret">isEnabled</span>
: [[API C_AddOns.LoadAddOn|C_AddOns.LoadAddOn]](<span class="apiarg">name</span>) : <span class="apiret">loaded, value</span> - Loads the specified LoadOnDemand addon.
: [[API C_AddOns.ResetAddOns|C_AddOns.ResetAddOns]]()
: [[API C_AddOns.ResetDisabledAddOns|C_AddOns.ResetDisabledAddOns]]()
: [[API C_AddOns.SaveAddOns|C_AddOns.SaveAddOns]]()
: [[API C_AddOns.SetAddonVersionCheck|C_AddOns.SetAddonVersionCheck]](<span class="apiarg">enabled</span>)
: [[API UIParentLoadAddOn|UIParentLoadAddOn]](<span class="apiarg">AddOnName</span>) {{apitag|framexml}} - Loads or Reloads the specified AddOn, and pops up an error message if it fails to load for any reason.

==C_AreaPoiInfo==
: [[API C_AreaPoiInfo.GetAreaPOIForMap|C_AreaPoiInfo.GetAreaPOIForMap]](<span class="apiarg">uiMapID</span>) : <span class="apiret">areaPoiIDs</span> - Returns area points of interest for a map.
: [[API C_AreaPoiInfo.GetAreaPOIInfo|C_AreaPoiInfo.GetAreaPOIInfo]](<span class="apiarg">uiMapID, areaPoiID</span>) : <span class="apiret">poiInfo</span> - Returns info for an area point of interest (e.g. World PvP objectives).
: [[API C_AreaPoiInfo.GetAreaPOISecondsLeft|C_AreaPoiInfo.GetAreaPOISecondsLeft]](<span class="apiarg">areaPoiID</span>) : <span class="apiret">secondsLeft</span> - Returns the time left in seconds for an area point of interest.
: [[API C_AreaPoiInfo.GetDragonridingRacesForMap|C_AreaPoiInfo.GetDragonridingRacesForMap]](<span class="apiarg">uiMapID</span>) : <span class="apiret">areaPoiIDs</span>
: [[API C_AreaPoiInfo.GetEventsForMap|C_AreaPoiInfo.GetEventsForMap]](<span class="apiarg">uiMapID</span>) : <span class="apiret">areaPoiIDs</span>
: [[API C_AreaPoiInfo.GetQuestHubsForMap|C_AreaPoiInfo.GetQuestHubsForMap]](<span class="apiarg">uiMapID</span>) : <span class="apiret">areaPoiIDs</span>
: [[API C_AreaPoiInfo.IsAreaPOITimed|C_AreaPoiInfo.IsAreaPOITimed]](<span class="apiarg">areaPoiID</span>) : <span class="apiret">isTimed, hideTimerInTooltip</span> - Returns whether an area poi is timed.
: [[API SetPOIIconOverlapDistance|SetPOIIconOverlapDistance]](<span class="apiarg">index</span>)
: [[API SetPOIIconOverlapPushDistance|SetPOIIconOverlapPushDistance]](<span class="apiarg">index</span>)

==C_ArrowCalloutManager==
: [[API C_ArrowCalloutManager.AcknowledgeCallout|C_ArrowCalloutManager.AcknowledgeCallout]]()
: [[API C_ArrowCalloutManager.HideCallout|C_ArrowCalloutManager.HideCallout]]()
: [[API C_ArrowCalloutManager.HideWorldLootObjectCallout|C_ArrowCalloutManager.HideWorldLootObjectCallout]]()
: [[API C_ArrowCalloutManager.SetWorldLootObjectCalloutFromGUID|C_ArrowCalloutManager.SetWorldLootObjectCalloutFromGUID]]()
: [[API C_ArrowCalloutManager.SwapWorldLootObjectCallout|C_ArrowCalloutManager.SwapWorldLootObjectCallout]]()

==C_AuctionHouse==
The [[Auction House]] was revamped in [[Patch 8.3.0]]
: [[API C_AuctionHouse.GetNumReplicateItems|C_AuctionHouse.GetNumReplicateItems]]() : <span class="apiret">numReplicateItems</span> - Returns the amount of auctions.
: [[API C_AuctionHouse.GetReplicateItemBattlePetInfo|C_AuctionHouse.GetReplicateItemBattlePetInfo]](<span class="apiarg">index</span>) : <span class="apiret">creatureID, displayID</span> - Returns display info for a battle pet from a [[API C_AuctionHouse.ReplicateItems|ReplicateItems]] result.
: [[API C_AuctionHouse.GetReplicateItemInfo|C_AuctionHouse.GetReplicateItemInfo]](<span class="apiarg">index</span>) : <span class="apiret">name, texture, count, qualityID, usable, level, levelType, minBid, minIncrement, buyoutPrice, bidAmount, highBidder, bidderFullName, owner, ownerFullName, saleStatus, itemID, hasAllInfo</span> - Returns information about the specified auction.
: [[API C_AuctionHouse.GetReplicateItemLink|C_AuctionHouse.GetReplicateItemLink]](<span class="apiarg">index</span>) : <span class="apiret">itemLink</span> - Returns the item link (if loaded) for an item from a [[API C_AuctionHouse.ReplicateItems|ReplicateItems]] result.
: [[API C_AuctionHouse.GetReplicateItemTimeLeft|C_AuctionHouse.GetReplicateItemTimeLeft]](<span class="apiarg">index</span>) : <span class="apiret">timeLeft</span> - Returns the time left for an auction.
: [[API C_AuctionHouse.ReplicateItems|C_AuctionHouse.ReplicateItems]]() - Queries all auctions listed on the Auction House.

: [[API C_AuctionHouse.CalculateCommodityDeposit|C_AuctionHouse.CalculateCommodityDeposit]](<span class="apiarg">itemID, duration, quantity</span>) : <span class="apiret">depositCost</span> - Returns required deposit for posting a commodity and quantity.
: [[API C_AuctionHouse.CalculateItemDeposit|C_AuctionHouse.CalculateItemDeposit]](<span class="apiarg">item, duration, quantity</span>) : <span class="apiret">depositCost</span> - Returns required deposit for posting a specific item and quantity.
: [[API C_AuctionHouse.CanCancelAuction|C_AuctionHouse.CanCancelAuction]](<span class="apiarg">ownedAuctionID</span>) : <span class="apiret">canCancelAuction</span> - Returns if the auction can be cancelled. If it can't, load it with [[API C_AuctionHouse.QueryOwnedAuctions|QueryOwnedAuctions]].
: [[API C_AuctionHouse.CancelAuction|C_AuctionHouse.CancelAuction]](<span class="apiarg">ownedAuctionID</span>) {{apitag|hwevent,noscript}} - Cancels an auction.
: [[API C_AuctionHouse.CancelCommoditiesPurchase|C_AuctionHouse.CancelCommoditiesPurchase]]() - Abort an incomplete commodity purchase to avoid it conflicting with another purchase.
: [[API C_AuctionHouse.CancelSell|C_AuctionHouse.CancelSell]]() - Stop posting auctions for an non-commodity item.
: [[API C_AuctionHouse.CloseAuctionHouse|C_AuctionHouse.CloseAuctionHouse]]() - Close the auction house window.
: [[API C_AuctionHouse.ConfirmCommoditiesPurchase|C_AuctionHouse.ConfirmCommoditiesPurchase]](<span class="apiarg">itemID, quantity</span>) - Completes a commodity item purchase.
: [[API C_AuctionHouse.ConfirmPostCommodity|C_AuctionHouse.ConfirmPostCommodity]](<span class="apiarg">item, duration, quantity, unitPrice</span>)
: [[API C_AuctionHouse.ConfirmPostItem|C_AuctionHouse.ConfirmPostItem]](<span class="apiarg">item, duration, quantity [, bid [, buyout]]</span>)
: [[API C_AuctionHouse.FavoritesAreAvailable|C_AuctionHouse.FavoritesAreAvailable]]() : <span class="apiret">favoritesAreAvailable</span>
: [[API C_AuctionHouse.GetAuctionInfoByID|C_AuctionHouse.GetAuctionInfoByID]](<span class="apiarg">auctionID</span>) : <span class="apiret">priceInfo</span>
: [[API C_AuctionHouse.GetAuctionItemSubClasses|C_AuctionHouse.GetAuctionItemSubClasses]](<span class="apiarg">classID</span>) : <span class="apiret">subClasses</span>
: [[API C_AuctionHouse.GetAvailablePostCount|C_AuctionHouse.GetAvailablePostCount]](<span class="apiarg">item</span>) : <span class="apiret">listCount</span> - Returns the available quantity of an item for posting.
: [[API C_AuctionHouse.GetBidInfo|C_AuctionHouse.GetBidInfo]](<span class="apiarg">bidIndex</span>) : <span class="apiret">bid</span>
: [[API C_AuctionHouse.GetBids|C_AuctionHouse.GetBids]]() : <span class="apiret">bids</span>
: [[API C_AuctionHouse.GetBidType|C_AuctionHouse.GetBidType]](<span class="apiarg">bidTypeIndex</span>) : <span class="apiret">typeItemKey</span>
: [[API C_AuctionHouse.GetBrowseResults|C_AuctionHouse.GetBrowseResults]]() : <span class="apiret">browseResults</span> - Returns the currently loaded summary results resulting from [[API C_AuctionHouse.SendBrowseQuery|SendBrowseQuery]].
: [[API C_AuctionHouse.GetCancelCost|C_AuctionHouse.GetCancelCost]](<span class="apiarg">ownedAuctionID</span>) : <span class="apiret">cancelCost</span> - Returns the cost for cancelling a specific owned auction. This is non-zero if it has a bid.
: [[API C_AuctionHouse.GetCommoditySearchResultInfo|C_AuctionHouse.GetCommoditySearchResultInfo]](<span class="apiarg">itemID, commoditySearchResultIndex</span>) : <span class="apiret">result</span> - Returns search results for a commodity item.
: [[API C_AuctionHouse.GetCommoditySearchResultsQuantity|C_AuctionHouse.GetCommoditySearchResultsQuantity]](<span class="apiarg">itemID</span>) : <span class="apiret">totalQuantity</span> - Returns how many of the commodity is on sale.
: [[API C_AuctionHouse.GetExtraBrowseInfo|C_AuctionHouse.GetExtraBrowseInfo]](<span class="apiarg">itemKey</span>) : <span class="apiret">extraInfo</span> - Returns the level (from 1-120, BfA levels) that some items would be crafted at.
: [[API C_AuctionHouse.GetFilterGroups|C_AuctionHouse.GetFilterGroups]]() : <span class="apiret">filterGroups</span> - Returns groups of filters for use in the Filter dropdown in the Buy tab.
: [[API C_AuctionHouse.GetItemCommodityStatus|C_AuctionHouse.GetItemCommodityStatus]](<span class="apiarg">item</span>) : <span class="apiret">isCommodity</span> - Returns if the item is a commodity, item or neither.
: [[API C_AuctionHouse.GetItemKeyFromItem|C_AuctionHouse.GetItemKeyFromItem]](<span class="apiarg">item</span>) : <span class="apiret">itemKey</span> - Returns an auction house item key from an item location.
: [[API C_AuctionHouse.GetItemKeyInfo|C_AuctionHouse.GetItemKeyInfo]](<span class="apiarg">itemKey [, restrictQualityToFilter]</span>) : <span class="apiret">itemKeyInfo</span> - Returns more details about an item from its item key, including its name.
: [[API C_AuctionHouse.GetItemKeyRequiredLevel|C_AuctionHouse.GetItemKeyRequiredLevel]](<span class="apiarg">itemKey</span>) : <span class="apiret">requiredLevel</span> - Returns the required level to use an item found on the auction house.
: [[API C_AuctionHouse.GetItemSearchResultInfo|C_AuctionHouse.GetItemSearchResultInfo]](<span class="apiarg">itemKey, itemSearchResultIndex</span>) : <span class="apiret">result</span> - Returns search results for an item.
: [[API C_AuctionHouse.GetItemSearchResultsQuantity|C_AuctionHouse.GetItemSearchResultsQuantity]](<span class="apiarg">itemKey</span>) : <span class="apiret">totalQuantity</span> - Returns how many of the item is available on the auction house.
: [[API C_AuctionHouse.GetMaxBidItemBid|C_AuctionHouse.GetMaxBidItemBid]]() : <span class="apiret">maxBid</span>
: [[API C_AuctionHouse.GetMaxBidItemBuyout|C_AuctionHouse.GetMaxBidItemBuyout]]() : <span class="apiret">maxBuyout</span>
: [[API C_AuctionHouse.GetMaxCommoditySearchResultPrice|C_AuctionHouse.GetMaxCommoditySearchResultPrice]](<span class="apiarg">itemID</span>) : <span class="apiret">maxUnitPrice</span>
: [[API C_AuctionHouse.GetMaxItemSearchResultBid|C_AuctionHouse.GetMaxItemSearchResultBid]](<span class="apiarg">itemKey</span>) : <span class="apiret">maxBid</span>
: [[API C_AuctionHouse.GetMaxItemSearchResultBuyout|C_AuctionHouse.GetMaxItemSearchResultBuyout]](<span class="apiarg">itemKey</span>) : <span class="apiret">maxBuyout</span>
: [[API C_AuctionHouse.GetMaxOwnedAuctionBid|C_AuctionHouse.GetMaxOwnedAuctionBid]]() : <span class="apiret">maxBid</span>
: [[API C_AuctionHouse.GetMaxOwnedAuctionBuyout|C_AuctionHouse.GetMaxOwnedAuctionBuyout]]() : <span class="apiret">maxBuyout</span>
: [[API C_AuctionHouse.GetNumBids|C_AuctionHouse.GetNumBids]]() : <span class="apiret">numBids</span>
: [[API C_AuctionHouse.GetNumBidTypes|C_AuctionHouse.GetNumBidTypes]]() : <span class="apiret">numBidTypes</span>
: [[API C_AuctionHouse.GetNumCommoditySearchResults|C_AuctionHouse.GetNumCommoditySearchResults]](<span class="apiarg">itemID</span>) : <span class="apiret">numSearchResults</span> - Returns the number of commodity results, the different prices.
: [[API C_AuctionHouse.GetNumItemSearchResults|C_AuctionHouse.GetNumItemSearchResults]](<span class="apiarg">itemKey</span>) : <span class="apiret">numItemSearchResults</span> - Returns the number of item results, the different auctions.
: [[API C_AuctionHouse.GetNumOwnedAuctions|C_AuctionHouse.GetNumOwnedAuctions]]() : <span class="apiret">numOwnedAuctions</span> - Returns the number of auctions the player has active on the auction house.
: [[API C_AuctionHouse.GetNumOwnedAuctionTypes|C_AuctionHouse.GetNumOwnedAuctionTypes]]() : <span class="apiret">numOwnedAuctionTypes</span>
: [[API C_AuctionHouse.GetOwnedAuctionInfo|C_AuctionHouse.GetOwnedAuctionInfo]](<span class="apiarg">ownedAuctionIndex</span>) : <span class="apiret">ownedAuction</span> - Returns information for one of the player's active auctions.
: [[API C_AuctionHouse.GetOwnedAuctions|C_AuctionHouse.GetOwnedAuctions]]() : <span class="apiret">ownedAuctions</span>
: [[API C_AuctionHouse.GetOwnedAuctionType|C_AuctionHouse.GetOwnedAuctionType]](<span class="apiarg">ownedAuctionTypeIndex</span>) : <span class="apiret">typeItemKey</span>
: [[API C_AuctionHouse.GetQuoteDurationRemaining|C_AuctionHouse.GetQuoteDurationRemaining]]() : <span class="apiret">quoteDurationSeconds</span>
: [[API C_AuctionHouse.GetTimeLeftBandInfo|C_AuctionHouse.GetTimeLeftBandInfo]](<span class="apiarg">timeLeftBand</span>) : <span class="apiret">timeLeftMinSeconds, timeLeftMaxSeconds</span>
: [[API C_AuctionHouse.HasFavorites|C_AuctionHouse.HasFavorites]]() : <span class="apiret">hasFavorites</span>
: [[API C_AuctionHouse.HasFullBidResults|C_AuctionHouse.HasFullBidResults]]() : <span class="apiret">hasFullBidResults</span>
: [[API C_AuctionHouse.HasFullBrowseResults|C_AuctionHouse.HasFullBrowseResults]]() : <span class="apiret">hasFullBrowseResults</span> - Returns if the last group of summary results (groups of 500) is available.
: [[API C_AuctionHouse.HasFullCommoditySearchResults|C_AuctionHouse.HasFullCommoditySearchResults]](<span class="apiarg">itemID</span>) : <span class="apiret">hasFullResults</span>
: [[API C_AuctionHouse.HasFullItemSearchResults|C_AuctionHouse.HasFullItemSearchResults]](<span class="apiarg">itemKey</span>) : <span class="apiret">hasFullResults</span>
: [[API C_AuctionHouse.HasFullOwnedAuctionResults|C_AuctionHouse.HasFullOwnedAuctionResults]]() : <span class="apiret">hasFullOwnedAuctionResults</span>
: [[API C_AuctionHouse.HasMaxFavorites|C_AuctionHouse.HasMaxFavorites]]() : <span class="apiret">hasMaxFavorites</span>
: [[API C_AuctionHouse.HasSearchResults|C_AuctionHouse.HasSearchResults]](<span class="apiarg">itemKey</span>) : <span class="apiret">hasSearchResults</span>
: [[API C_AuctionHouse.IsFavoriteItem|C_AuctionHouse.IsFavoriteItem]](<span class="apiarg">itemKey</span>) : <span class="apiret">isFavorite</span>
: [[API C_AuctionHouse.IsSellItemValid|C_AuctionHouse.IsSellItemValid]](<span class="apiarg">item [, displayError]</span>) : <span class="apiret">valid</span> - Returns true if an item from your bag can be posted on the auction house.
: [[API C_AuctionHouse.IsThrottledMessageSystemReady|C_AuctionHouse.IsThrottledMessageSystemReady]]() : <span class="apiret">canSendThrottledMessage</span> - Returns if the next query will be throttled, either delayed or cancelled.
: [[API C_AuctionHouse.MakeItemKey|C_AuctionHouse.MakeItemKey]](<span class="apiarg">itemID [, itemLevel [, itemSuffix [, battlePetSpeciesID]]]</span>) : <span class="apiret">itemKey</span> - Returns an auction house item key.
: [[API C_AuctionHouse.PlaceBid|C_AuctionHouse.PlaceBid]](<span class="apiarg">auctionID, bidAmount</span>) {{apitag|hwevent,noscript}} - Places a bid on a non-commodity item.
: [[API C_AuctionHouse.PostCommodity|C_AuctionHouse.PostCommodity]](<span class="apiarg">item, duration, quantity, unitPrice</span>) : <span class="apiret">needsConfirmation</span> {{apitag|hwevent,noscript}} - Posts a commodity item on the auction house.
: [[API C_AuctionHouse.PostItem|C_AuctionHouse.PostItem]](<span class="apiarg">item, duration, quantity [, bid [, buyout]]</span>) : <span class="apiret">needsConfirmation</span> {{apitag|hwevent,noscript}} - Posts an item on the auction house.
: [[API C_AuctionHouse.QueryBids|C_AuctionHouse.QueryBids]](<span class="apiarg">sorts, auctionIDs</span>)
: [[API C_AuctionHouse.QueryOwnedAuctions|C_AuctionHouse.QueryOwnedAuctions]](<span class="apiarg">sorts</span>) {{apitag|noscript}} - Queries the auction house for the player's active auctions.
: [[API C_AuctionHouse.RefreshCommoditySearchResults|C_AuctionHouse.RefreshCommoditySearchResults]](<span class="apiarg">itemID</span>)
: [[API C_AuctionHouse.RefreshItemSearchResults|C_AuctionHouse.RefreshItemSearchResults]](<span class="apiarg">itemKey [, minLevelFilter [, maxLevelFilter]]</span>)
: [[API C_AuctionHouse.RequestFavorites|C_AuctionHouse.RequestFavorites]]()
: [[API C_AuctionHouse.RequestMoreBrowseResults|C_AuctionHouse.RequestMoreBrowseResults]]() {{apitag|noscript}}
: [[API C_AuctionHouse.RequestMoreCommoditySearchResults|C_AuctionHouse.RequestMoreCommoditySearchResults]](<span class="apiarg">itemID</span>) : <span class="apiret">hasFullResults</span>
: [[API C_AuctionHouse.RequestMoreItemSearchResults|C_AuctionHouse.RequestMoreItemSearchResults]](<span class="apiarg">itemKey</span>) : <span class="apiret">hasFullResults</span>
: [[API C_AuctionHouse.RequestOwnedAuctionBidderInfo|C_AuctionHouse.RequestOwnedAuctionBidderInfo]](<span class="apiarg">auctionID</span>) : <span class="apiret">bidderName</span>
: [[API C_AuctionHouse.SearchForFavorites|C_AuctionHouse.SearchForFavorites]](<span class="apiarg">sorts</span>) {{apitag|noscript}} - Searches for favorited items.
: [[API C_AuctionHouse.SearchForItemKeys|C_AuctionHouse.SearchForItemKeys]](<span class="apiarg">itemKeys, sorts</span>) - Queries the auction house for summary results of up to 100 specific items.
: [[API C_AuctionHouse.SendBrowseQuery|C_AuctionHouse.SendBrowseQuery]](<span class="apiarg">query</span>) {{apitag|noscript}} - Queries the auction house using search parameters.
: [[API C_AuctionHouse.SendSearchQuery|C_AuctionHouse.SendSearchQuery]](<span class="apiarg">itemKey, sorts, separateOwnerItems [, minLevelFilter [, maxLevelFilter]]</span>) {{apitag|noscript}} - Queries an item in the auction house.
: [[API C_AuctionHouse.SendSellSearchQuery|C_AuctionHouse.SendSellSearchQuery]](<span class="apiarg">itemKey, sorts, separateOwnerItems</span>) - Search for all auctions that are variants of a piece of gear, determined a specific item ID.
: [[API C_AuctionHouse.SetFavoriteItem|C_AuctionHouse.SetFavoriteItem]](<span class="apiarg">itemKey, setFavorite</span>)
: [[API C_AuctionHouse.StartCommoditiesPurchase|C_AuctionHouse.StartCommoditiesPurchase]](<span class="apiarg">itemID, quantity</span>) {{apitag|hwevent,noscript}} - Starts a commodity item purchase.

==C_BarberShop==
The [[Barbershop]] was added in [[Patch 3.0.2]] and reworked in patch [[Patch 9.0.1]]
: [[API C_BarberShop.ApplyCustomizationChoices|C_BarberShop.ApplyCustomizationChoices]]() : <span class="apiret">success</span>
: [[API C_BarberShop.Cancel|C_BarberShop.Cancel]]()
: [[API C_BarberShop.ClearPreviewChoices|C_BarberShop.ClearPreviewChoices]](<span class="apiarg">[clearSavedChoices]</span>)
: [[API C_BarberShop.GetAvailableCustomizations|C_BarberShop.GetAvailableCustomizations]]() : <span class="apiret">categories</span>
: [[API C_BarberShop.GetCurrentCameraZoom|C_BarberShop.GetCurrentCameraZoom]]() : <span class="apiret">zoomLevel</span>
: [[API C_BarberShop.GetCurrentCharacterData|C_BarberShop.GetCurrentCharacterData]]() : <span class="apiret">characterData</span>
: [[API C_BarberShop.GetCurrentCost|C_BarberShop.GetCurrentCost]]() : <span class="apiret">cost</span>
: [[API C_BarberShop.GetCustomizationScope|C_BarberShop.GetCustomizationScope]]() : <span class="apiret">customizationScope</span>
: [[API C_BarberShop.GetViewingChrModel|C_BarberShop.GetViewingChrModel]]() : <span class="apiret">chrModelID</span>
: [[API C_BarberShop.HasAnyChanges|C_BarberShop.HasAnyChanges]]() : <span class="apiret">hasChanges</span>
: [[API C_BarberShop.IsViewingAlteredForm|C_BarberShop.IsViewingAlteredForm]]() : <span class="apiret">isViewingAlteredForm</span>
: [[API C_BarberShop.MarkCustomizationChoiceAsSeen|C_BarberShop.MarkCustomizationChoiceAsSeen]](<span class="apiarg">choiceID</span>)
: [[API C_BarberShop.MarkCustomizationOptionAsSeen|C_BarberShop.MarkCustomizationOptionAsSeen]](<span class="apiarg">optionID</span>)
: [[API C_BarberShop.PreviewCustomizationChoice|C_BarberShop.PreviewCustomizationChoice]](<span class="apiarg">optionID, choiceID</span>)
: [[API C_BarberShop.RandomizeCustomizationChoices|C_BarberShop.RandomizeCustomizationChoices]]()
: [[API C_BarberShop.ResetCameraRotation|C_BarberShop.ResetCameraRotation]]()
: [[API C_BarberShop.ResetCustomizationChoices|C_BarberShop.ResetCustomizationChoices]]()
: [[API C_BarberShop.RotateCamera|C_BarberShop.RotateCamera]](<span class="apiarg">diffDegrees</span>)
: [[API C_BarberShop.SaveSeenChoices|C_BarberShop.SaveSeenChoices]]()
: [[API C_BarberShop.SetCameraDistanceOffset|C_BarberShop.SetCameraDistanceOffset]](<span class="apiarg">offset</span>)
: [[API C_BarberShop.SetCameraZoomLevel|C_BarberShop.SetCameraZoomLevel]](<span class="apiarg">zoomLevel [, keepCustomZoom]</span>)
: [[API C_BarberShop.SetCustomizationChoice|C_BarberShop.SetCustomizationChoice]](<span class="apiarg">optionID, choiceID</span>)
: [[API C_BarberShop.SetModelDressState|C_BarberShop.SetModelDressState]](<span class="apiarg">dressedState</span>)
: [[API C_BarberShop.SetSelectedSex|C_BarberShop.SetSelectedSex]](<span class="apiarg">sex</span>)
: [[API C_BarberShop.SetViewingAlteredForm|C_BarberShop.SetViewingAlteredForm]](<span class="apiarg">isViewingAlteredForm</span>)
: [[API C_BarberShop.SetViewingChrModel|C_BarberShop.SetViewingChrModel]](<span class="apiarg">[chrModelID]</span>)
: [[API C_BarberShop.SetViewingShapeshiftForm|C_BarberShop.SetViewingShapeshiftForm]](<span class="apiarg">[shapeshiftFormID]</span>)
: [[API C_BarberShop.ZoomCamera|C_BarberShop.ZoomCamera]](<span class="apiarg">zoomAmount</span>)

==C_BehavioralMessaging==
: [[API C_BehavioralMessaging.SendNotificationReceipt|C_BehavioralMessaging.SendNotificationReceipt]](<span class="apiarg">dbId, openTimeSeconds, readTimeSeconds</span>)

==C_BlackMarket==
The [[Black Market Auction House]] was added in [[Patch 5.0.4]]
: [[API C_BlackMarket.Close|C_BlackMarket.Close]]() - Closes the [[Black Market]] window.
: [[API C_BlackMarket.GetHotItem|C_BlackMarket.GetHotItem]]() : <span class="apiret">name, texture, quantity, itemType, usable, level, levelType, sellerName, minBid, minIncrement, currBid, youHaveHighBid, numBids, timeLeft, link, marketID, quality</span> - Returns information about the current "hot item" at the [[Black Market Auction House]].
: [[API C_BlackMarket.GetItemInfoByID|C_BlackMarket.GetItemInfoByID]](<span class="apiarg">marketID</span>) : <span class="apiret">name, texture, quantity, itemType, usable, level, levelType, sellerName, minBid, minIncrement, currBid, youHaveHighBid, numBids, timeLeft, link, marketID, quality</span> - Returns info for a [[Black Market]] auction.
: [[API C_BlackMarket.GetItemInfoByIndex|C_BlackMarket.GetItemInfoByIndex]](<span class="apiarg">index</span>) : <span class="apiret">name, texture, quantity, itemType, usable, level, levelType, sellerName, minBid, minIncrement, currBid, youHaveHighBid, numBids, timeLeft, link, marketID, quality</span> - Returns information about a specific black market auction.
: [[API C_BlackMarket.GetNumItems|C_BlackMarket.GetNumItems]]() : <span class="apiret">numItems</span> - Returns the number of auctions on the [[Black Market Auction House]].
: [[API C_BlackMarket.IsViewOnly|C_BlackMarket.IsViewOnly]]() : <span class="apiret">viewOnly</span>
: [[API C_BlackMarket.ItemPlaceBid|C_BlackMarket.ItemPlaceBid]](<span class="apiarg">marketID, bid</span>) {{apitag|hwevent}} - Places a bid on a black market auction.
: [[API C_BlackMarket.RequestItems|C_BlackMarket.RequestItems]]() - Requests updated black market auction information from the server.

==C_Calendar==
The [[Calendar]] was added in [[Patch 3.0.1]] and reworked in [[Patch 8.0.1]]
: [[API C_Calendar.AddEvent|C_Calendar.AddEvent]]() {{apitag|hwevent}} - Saves the new event currently being created to the server.
: [[API C_Calendar.AreNamesReady|C_Calendar.AreNamesReady]]() : <span class="apiret">ready</span>
: [[API C_Calendar.CanAddEvent|C_Calendar.CanAddEvent]]() : <span class="apiret">canAddEvent</span> - Returns whether the player can add an event.
: [[API C_Calendar.CanSendInvite|C_Calendar.CanSendInvite]]() : <span class="apiret">canSendInvite</span> - Returns whether the player can send invites.
: [[API C_Calendar.CloseEvent|C_Calendar.CloseEvent]]() - Closes the selected event without saving it.
: [[API C_Calendar.ContextMenuEventCanComplain|C_Calendar.ContextMenuEventCanComplain]](<span class="apiarg">offsetMonths, monthDay, eventIndex</span>) : <span class="apiret">canComplain</span> - Returns whether the player can report the event as spam.
: [[API C_Calendar.ContextMenuEventCanEdit|C_Calendar.ContextMenuEventCanEdit]](<span class="apiarg">offsetMonths, monthDay, eventIndex</span>) : <span class="apiret">canEdit</span> - Returns whether the player can edit the event.
: [[API C_Calendar.ContextMenuEventCanRemove|C_Calendar.ContextMenuEventCanRemove]](<span class="apiarg">offsetMonths, monthDay, eventIndex</span>) : <span class="apiret">canRemove</span> - Returns whether the player can remove the event.
: [[API C_Calendar.ContextMenuEventClipboard|C_Calendar.ContextMenuEventClipboard]]() : <span class="apiret">exists</span>
: [[API C_Calendar.ContextMenuEventCopy|C_Calendar.ContextMenuEventCopy]]() - Copies the event to the clipboard.
: [[API C_Calendar.ContextMenuEventGetCalendarType|C_Calendar.ContextMenuEventGetCalendarType]]() : <span class="apiret">calendarType</span>
: [[API C_Calendar.ContextMenuEventPaste|C_Calendar.ContextMenuEventPaste]](<span class="apiarg">offsetMonths, monthDay</span>) - Pastes the clipboard event to the date.
: [[API C_Calendar.ContextMenuEventRemove|C_Calendar.ContextMenuEventRemove]]() - Deletes the event.
: [[API C_Calendar.ContextMenuEventSignUp|C_Calendar.ContextMenuEventSignUp]]()
: [[API C_Calendar.ContextMenuGetEventIndex|C_Calendar.ContextMenuGetEventIndex]]() : <span class="apiret">info</span>
: [[API C_Calendar.ContextMenuInviteAvailable|C_Calendar.ContextMenuInviteAvailable]]() - Accepts the invitation to the event.
: [[API C_Calendar.ContextMenuInviteDecline|C_Calendar.ContextMenuInviteDecline]]() - Declines the invitation to the event.
: [[API C_Calendar.ContextMenuInviteRemove|C_Calendar.ContextMenuInviteRemove]]() - Removes the event from the calendar.
: [[API C_Calendar.ContextMenuInviteTentative|C_Calendar.ContextMenuInviteTentative]]()
: [[API C_Calendar.ContextMenuSelectEvent|C_Calendar.ContextMenuSelectEvent]](<span class="apiarg">offsetMonths, monthDay, eventIndex</span>)
: [[API C_Calendar.CreateCommunitySignUpEvent|C_Calendar.CreateCommunitySignUpEvent]]()
: [[API C_Calendar.CreateGuildAnnouncementEvent|C_Calendar.CreateGuildAnnouncementEvent]]()
: [[API C_Calendar.CreateGuildSignUpEvent|C_Calendar.CreateGuildSignUpEvent]]()
: [[API C_Calendar.CreatePlayerEvent|C_Calendar.CreatePlayerEvent]]() - Creates a new calendar event candidate for the player.
: [[API C_Calendar.EventAvailable|C_Calendar.EventAvailable]]() - Accepts the invitation to the currently open event.
: [[API C_Calendar.EventCanEdit|C_Calendar.EventCanEdit]]() : <span class="apiret">canEdit</span> - Returns whether the event can be edited.
: [[API C_Calendar.EventClearAutoApprove|C_Calendar.EventClearAutoApprove]]() - Turns off automatic confirmations.
: [[API C_Calendar.EventClearLocked|C_Calendar.EventClearLocked]]() - Unlocks the event.
: [[API C_Calendar.EventClearModerator|C_Calendar.EventClearModerator]](<span class="apiarg">inviteIndex</span>)
: [[API C_Calendar.EventDecline|C_Calendar.EventDecline]]() - Declines the invitation to the currently open event.
: [[API C_Calendar.EventGetCalendarType|C_Calendar.EventGetCalendarType]]() : <span class="apiret">calendarType</span>
: [[API C_Calendar.EventGetClubId|C_Calendar.EventGetClubId]]() : <span class="apiret">info</span>
: [[API C_Calendar.EventGetInvite|C_Calendar.EventGetInvite]](<span class="apiarg">eventIndex</span>) : <span class="apiret">info</span> - Returns status information for an invitee for the currently opened event.
: [[API C_Calendar.EventGetInviteResponseTime|C_Calendar.EventGetInviteResponseTime]](<span class="apiarg">eventIndex</span>) : <span class="apiret">time</span>
: [[API C_Calendar.EventGetInviteSortCriterion|C_Calendar.EventGetInviteSortCriterion]]() : <span class="apiret">criterion, reverse</span>
: [[API C_Calendar.EventGetSelectedInvite|C_Calendar.EventGetSelectedInvite]]() : <span class="apiret">inviteIndex</span>
: [[API C_Calendar.EventGetStatusOptions|C_Calendar.EventGetStatusOptions]](<span class="apiarg">eventIndex</span>) : <span class="apiret">options</span>
: [[API C_Calendar.EventGetTextures|C_Calendar.EventGetTextures]](<span class="apiarg">eventType</span>) : <span class="apiret">textures</span>
: [[API C_Calendar.EventGetTypes|C_Calendar.EventGetTypes]]() : <span class="apiret">types</span>
: [[API C_Calendar.EventGetTypesDisplayOrdered|C_Calendar.EventGetTypesDisplayOrdered]]() : <span class="apiret">infos</span>
: [[API C_Calendar.EventHasPendingInvite|C_Calendar.EventHasPendingInvite]]() : <span class="apiret">hasPendingInvite</span> - Returns whether the player has an unanswered invitation to the currently selected event.
: [[API C_Calendar.EventHaveSettingsChanged|C_Calendar.EventHaveSettingsChanged]]() : <span class="apiret">haveSettingsChanged</span> - Returns whether the currently opened event has been modified.
: [[API C_Calendar.EventInvite|C_Calendar.EventInvite]](<span class="apiarg">name</span>) - Invites a player to the currently selected event.
: [[API C_Calendar.EventRemoveInvite|C_Calendar.EventRemoveInvite]](<span class="apiarg">inviteIndex</span>)
: [[API C_Calendar.EventRemoveInviteByGuid|C_Calendar.EventRemoveInviteByGuid]](<span class="apiarg">guid</span>)
: [[API C_Calendar.EventSelectInvite|C_Calendar.EventSelectInvite]](<span class="apiarg">inviteIndex</span>)
: [[API C_Calendar.EventSetAutoApprove|C_Calendar.EventSetAutoApprove]]()
: [[API C_Calendar.EventSetClubId|C_Calendar.EventSetClubId]](<span class="apiarg">[clubId]</span>)
: [[API C_Calendar.EventSetDate|C_Calendar.EventSetDate]](<span class="apiarg">month, monthDay, year</span>) - Sets the date for the currently opened event.
: [[API C_Calendar.EventSetDescription|C_Calendar.EventSetDescription]](<span class="apiarg">description</span>)
: [[API C_Calendar.EventSetInviteStatus|C_Calendar.EventSetInviteStatus]](<span class="apiarg">eventIndex, status</span>) - Sets the invitation status of a player to the current event.
: [[API C_Calendar.EventSetLocked|C_Calendar.EventSetLocked]]()
: [[API C_Calendar.EventSetModerator|C_Calendar.EventSetModerator]](<span class="apiarg">inviteIndex</span>)
: [[API C_Calendar.EventSetTextureID|C_Calendar.EventSetTextureID]](<span class="apiarg">textureIndex</span>)
: [[API C_Calendar.EventSetTime|C_Calendar.EventSetTime]](<span class="apiarg">hour, minute</span>) - Sets the time for the currently opened event.
: [[API C_Calendar.EventSetTitle|C_Calendar.EventSetTitle]](<span class="apiarg">title</span>) - Sets the title for the currently opened event.
: [[API C_Calendar.EventSetType|C_Calendar.EventSetType]](<span class="apiarg">typeIndex</span>) - Sets the event type for the current calendar event.
: [[API C_Calendar.EventSignUp|C_Calendar.EventSignUp]]()
: [[API C_Calendar.EventSortInvites|C_Calendar.EventSortInvites]](<span class="apiarg">criterion, reverse</span>)
: [[API C_Calendar.EventTentative|C_Calendar.EventTentative]]()
: [[API C_Calendar.GetClubCalendarEvents|C_Calendar.GetClubCalendarEvents]](<span class="apiarg">clubId, startTime, endTime</span>) : <span class="apiret">events</span>
: [[API C_Calendar.GetDayEvent|C_Calendar.GetDayEvent]](<span class="apiarg">monthOffset, monthDay, index</span>) : <span class="apiret">event</span> - Retrieve information about the specified event.
: [[API C_Calendar.GetDefaultGuildFilter|C_Calendar.GetDefaultGuildFilter]]() : <span class="apiret">info</span>
: [[API C_Calendar.GetEventIndex|C_Calendar.GetEventIndex]]() : <span class="apiret">info</span>
: [[API C_Calendar.GetEventIndexInfo|C_Calendar.GetEventIndexInfo]](<span class="apiarg">eventID [, monthOffset [, monthDay]]</span>) : <span class="apiret">eventIndexInfo</span>
: [[API C_Calendar.GetEventInfo|C_Calendar.GetEventInfo]]() : <span class="apiret">info</span> - Returns info for a calendar event.
: [[API C_Calendar.GetFirstPendingInvite|C_Calendar.GetFirstPendingInvite]](<span class="apiarg">offsetMonths, monthDay</span>) : <span class="apiret">firstPendingInvite</span>
: [[API C_Calendar.GetGuildEventInfo|C_Calendar.GetGuildEventInfo]](<span class="apiarg">index</span>) : <span class="apiret">info</span>
: [[API C_Calendar.GetGuildEventSelectionInfo|C_Calendar.GetGuildEventSelectionInfo]](<span class="apiarg">index</span>) : <span class="apiret">info</span>
: [[API C_Calendar.GetHolidayInfo|C_Calendar.GetHolidayInfo]](<span class="apiarg">monthOffset, monthDay, index</span>) : <span class="apiret">event</span> - Returns seasonal holiday info.
: [[API C_Calendar.GetMaxCreateDate|C_Calendar.GetMaxCreateDate]]() : <span class="apiret">maxCreateDate</span> - Returns the last day supported by the Calendar API.
: [[API C_Calendar.GetMinDate|C_Calendar.GetMinDate]]() : <span class="apiret">minDate</span> - Returns the first day supported by the Calendar API.
: [[API C_Calendar.GetMonthInfo|C_Calendar.GetMonthInfo]](<span class="apiarg">[offsetMonths]</span>) : <span class="apiret">monthInfo</span> - Returns information about the calendar month by offset.
: [[API C_Calendar.GetNextClubId|C_Calendar.GetNextClubId]]() : <span class="apiret">clubId</span>
: [[API C_Calendar.GetNumDayEvents|C_Calendar.GetNumDayEvents]](<span class="apiarg">offsetMonths, monthDay</span>) : <span class="apiret">numDayEvents</span> - Returns the number of events for a given day/month offset.
: [[API C_Calendar.GetNumGuildEvents|C_Calendar.GetNumGuildEvents]]() : <span class="apiret">numGuildEvents</span>
: [[API C_Calendar.GetNumInvites|C_Calendar.GetNumInvites]]() : <span class="apiret">num</span> - Returns the number of invitees for the currently opened event.
: [[API C_Calendar.GetNumPendingInvites|C_Calendar.GetNumPendingInvites]]() : <span class="apiret">num</span>
: [[API C_Calendar.GetRaidInfo|C_Calendar.GetRaidInfo]](<span class="apiarg">offsetMonths, monthDay, eventIndex</span>) : <span class="apiret">info</span>
: [[API C_Calendar.IsActionPending|C_Calendar.IsActionPending]]() : <span class="apiret">actionPending</span>
: [[API C_Calendar.IsEventOpen|C_Calendar.IsEventOpen]]() : <span class="apiret">isOpen</span>
: [[API C_Calendar.MassInviteCommunity|C_Calendar.MassInviteCommunity]](<span class="apiarg">clubId, minLevel, maxLevel [, maxRankOrder]</span>)
: [[API C_Calendar.MassInviteGuild|C_Calendar.MassInviteGuild]](<span class="apiarg">minLevel, maxLevel, maxRankOrder</span>)
: [[API C_Calendar.OpenCalendar|C_Calendar.OpenCalendar]]() - Requests calendar information from the server. Does not open the calendar frame.
: [[API C_Calendar.OpenEvent|C_Calendar.OpenEvent]](<span class="apiarg">offsetMonths, monthDay, index</span>) : <span class="apiret">success</span> - Establishes an event for future calendar API calls
: [[API C_Calendar.RemoveEvent|C_Calendar.RemoveEvent]]() - Removes the selected event from the calendar (invitees only).
: [[API C_Calendar.SetAbsMonth|C_Calendar.SetAbsMonth]](<span class="apiarg">month, year</span>) - Sets the reference month and year for functions which use a month offset.
: [[API C_Calendar.SetMonth|C_Calendar.SetMonth]](<span class="apiarg">offsetMonths</span>)
: [[API C_Calendar.SetNextClubId|C_Calendar.SetNextClubId]](<span class="apiarg">[clubId]</span>)
: [[API C_Calendar.UpdateEvent|C_Calendar.UpdateEvent]]() {{apitag|hwevent}} - Saves the selected event.

==C_ChallengeMode==
[[Challenge Mode]] was added in [[Patch 5.0.4]]
: [[API C_ChallengeMode.CanUseKeystoneInCurrentMap|C_ChallengeMode.CanUseKeystoneInCurrentMap]](<span class="apiarg">itemLocation</span>) : <span class="apiret">canUse</span>
: [[API C_ChallengeMode.ClearKeystone|C_ChallengeMode.ClearKeystone]]()
: [[API C_ChallengeMode.CloseKeystoneFrame|C_ChallengeMode.CloseKeystoneFrame]]()
: [[API C_ChallengeMode.GetActiveChallengeMapID|C_ChallengeMode.GetActiveChallengeMapID]]() : <span class="apiret">mapChallengeModeID</span>
: [[API C_ChallengeMode.GetActiveKeystoneInfo|C_ChallengeMode.GetActiveKeystoneInfo]]() : <span class="apiret">activeKeystoneLevel, activeAffixIDs, wasActiveKeystoneCharged</span>
: [[API C_ChallengeMode.GetAffixInfo|C_ChallengeMode.GetAffixInfo]](<span class="apiarg">affixID</span>) : <span class="apiret">name, description, filedataid</span>
: [[API C_ChallengeMode.GetCompletionInfo|C_ChallengeMode.GetCompletionInfo]]() : <span class="apiret">mapChallengeModeID, level, time, onTime, keystoneUpgradeLevels, practiceRun, oldOverallDungeonScore, newOverallDungeonScore, IsMapRecord, IsAffixRecord, PrimaryAffix, isEligibleForScore, members</span>
: [[API C_ChallengeMode.GetDeathCount|C_ChallengeMode.GetDeathCount]]() : <span class="apiret">numDeaths, timeLost</span>
: [[API C_ChallengeMode.GetDungeonScoreRarityColor|C_ChallengeMode.GetDungeonScoreRarityColor]](<span class="apiarg">dungeonScore</span>) : <span class="apiret">scoreColor</span>
: [[API C_ChallengeMode.GetGuildLeaders|C_ChallengeMode.GetGuildLeaders]]() : <span class="apiret">topAttempt</span>
: [[API C_ChallengeMode.GetKeystoneLevelRarityColor|C_ChallengeMode.GetKeystoneLevelRarityColor]](<span class="apiarg">level</span>) : <span class="apiret">levelScore</span>
: [[API C_ChallengeMode.GetMapScoreInfo|C_ChallengeMode.GetMapScoreInfo]]() : <span class="apiret">displayScores</span>
: [[API C_ChallengeMode.GetMapTable|C_ChallengeMode.GetMapTable]]() : <span class="apiret">mapChallengeModeIDs</span>
: [[API C_ChallengeMode.GetMapUIInfo|C_ChallengeMode.GetMapUIInfo]](<span class="apiarg">mapChallengeModeID</span>) : <span class="apiret">name, id, timeLimit, texture, backgroundTexture</span>
: [[API C_ChallengeMode.GetOverallDungeonScore|C_ChallengeMode.GetOverallDungeonScore]]() : <span class="apiret">overallDungeonScore</span>
: [[API C_ChallengeMode.GetPowerLevelDamageHealthMod|C_ChallengeMode.GetPowerLevelDamageHealthMod]](<span class="apiarg">powerLevel</span>) : <span class="apiret">damageMod, healthMod</span>
: [[API C_ChallengeMode.GetSlottedKeystoneInfo|C_ChallengeMode.GetSlottedKeystoneInfo]]() : <span class="apiret">mapChallengeModeID, affixIDs, keystoneLevel</span>
: [[API C_ChallengeMode.GetSpecificDungeonOverallScoreRarityColor|C_ChallengeMode.GetSpecificDungeonOverallScoreRarityColor]](<span class="apiarg">specificDungeonOverallScore</span>) : <span class="apiret">specificDungeonOverallScoreColor</span>
: [[API C_ChallengeMode.GetSpecificDungeonScoreRarityColor|C_ChallengeMode.GetSpecificDungeonScoreRarityColor]](<span class="apiarg">specificDungeonScore</span>) : <span class="apiret">specificDungeonScoreColor</span>
: [[API C_ChallengeMode.HasSlottedKeystone|C_ChallengeMode.HasSlottedKeystone]]() : <span class="apiret">hasSlottedKeystone</span>
: [[API C_ChallengeMode.IsChallengeModeActive|C_ChallengeMode.IsChallengeModeActive]]() : <span class="apiret">challengeModeActive</span>
: [[API C_ChallengeMode.RemoveKeystone|C_ChallengeMode.RemoveKeystone]]() : <span class="apiret">removalSuccessful</span>
: [[API C_ChallengeMode.RequestLeaders|C_ChallengeMode.RequestLeaders]](<span class="apiarg">mapChallengeModeID</span>)
: [[API C_ChallengeMode.Reset|C_ChallengeMode.Reset]]()
: [[API C_ChallengeMode.SlotKeystone|C_ChallengeMode.SlotKeystone]]()
: [[API C_ChallengeMode.StartChallengeMode|C_ChallengeMode.StartChallengeMode]]() : <span class="apiret">success</span>

==C_ChromieTime==
[[Timewalking Campaigns]] scale older expansion zones up to level 70.
: [[API C_ChromieTime.CloseUI|C_ChromieTime.CloseUI]]()
: [[API C_ChromieTime.GetChromieTimeExpansionOption|C_ChromieTime.GetChromieTimeExpansionOption]](<span class="apiarg">expansionRecID</span>) : <span class="apiret">info</span>
: [[API C_ChromieTime.GetChromieTimeExpansionOptions|C_ChromieTime.GetChromieTimeExpansionOptions]]() : <span class="apiret">expansionOptions</span>
: [[API C_ChromieTime.SelectChromieTimeOption|C_ChromieTime.SelectChromieTimeOption]](<span class="apiarg">chromieTimeExpansionInfoId</span>)
: [[API C_PlayerInfo.CanPlayerEnterChromieTime|C_PlayerInfo.CanPlayerEnterChromieTime]]() : <span class="apiret">canEnter</span>
: [[API C_PlayerInfo.IsPlayerInChromieTime|C_PlayerInfo.IsPlayerInChromieTime]]() : <span class="apiret">inChromieTime</span>
: [[API UnitChromieTimeID|UnitChromieTimeID]](<span class="apiarg">unit</span>) : <span class="apiret">ID</span>

==C_ClassTalents==
: [[API C_ClassTalents.CanChangeTalents|C_ClassTalents.CanChangeTalents]]() : <span class="apiret">canChange, canAdd, changeError</span>
: [[API C_ClassTalents.CanCreateNewConfig|C_ClassTalents.CanCreateNewConfig]]() : <span class="apiret">canCreate</span>
: [[API C_ClassTalents.CanEditTalents|C_ClassTalents.CanEditTalents]]() : <span class="apiret">canEdit, changeError</span>
: [[API C_ClassTalents.CommitConfig|C_ClassTalents.CommitConfig]](<span class="apiarg">[savedConfigID]</span>) : <span class="apiret">success</span>
: [[API C_ClassTalents.DeleteConfig|C_ClassTalents.DeleteConfig]](<span class="apiarg">configID</span>) : <span class="apiret">success</span>
: [[API C_ClassTalents.GetActiveConfigID|C_ClassTalents.GetActiveConfigID]]() : <span class="apiret">activeConfigID</span>
: [[API C_ClassTalents.GetActiveHeroTalentSpec|C_ClassTalents.GetActiveHeroTalentSpec]]() : <span class="apiret">heroSpecID</span>
: [[API C_ClassTalents.GetConfigIDsBySpecID|C_ClassTalents.GetConfigIDsBySpecID]](<span class="apiarg">[specID]</span>) : <span class="apiret">configIDs</span>
: [[API C_ClassTalents.GetHasStarterBuild|C_ClassTalents.GetHasStarterBuild]]() : <span class="apiret">hasStarterBuild</span>
: [[API C_ClassTalents.GetHeroTalentSpecsForClassSpec|C_ClassTalents.GetHeroTalentSpecsForClassSpec]](<span class="apiarg">[configID [, classSpecID]]</span>) : <span class="apiret">subTreeIDs, requiredPlayerLevel</span>
: [[API C_ClassTalents.GetLastSelectedSavedConfigID|C_ClassTalents.GetLastSelectedSavedConfigID]](<span class="apiarg">specID</span>) : <span class="apiret">configID</span>
: [[API C_ClassTalents.GetNextStarterBuildPurchase|C_ClassTalents.GetNextStarterBuildPurchase]]() : <span class="apiret">nodeID, entryID</span>
: [[API C_ClassTalents.GetStarterBuildActive|C_ClassTalents.GetStarterBuildActive]]() : <span class="apiret">isActive</span>
: [[API C_ClassTalents.GetTraitTreeForSpec|C_ClassTalents.GetTraitTreeForSpec]](<span class="apiarg">specID</span>) : <span class="apiret">treeID</span>
: [[API C_ClassTalents.HasUnspentHeroTalentPoints|C_ClassTalents.HasUnspentHeroTalentPoints]]() : <span class="apiret">hasUnspentPoints, numHeroPoints</span>
: [[API C_ClassTalents.HasUnspentTalentPoints|C_ClassTalents.HasUnspentTalentPoints]]() : <span class="apiret">hasUnspentPoints, numClassPoints, numSpecPoints</span>
: [[API C_ClassTalents.ImportLoadout|C_ClassTalents.ImportLoadout]](<span class="apiarg">configID, entries, name</span>) : <span class="apiret">success, importError</span>
: [[API C_ClassTalents.InitializeViewLoadout|C_ClassTalents.InitializeViewLoadout]](<span class="apiarg">specID, level</span>)
: [[API C_ClassTalents.IsConfigPopulated|C_ClassTalents.IsConfigPopulated]](<span class="apiarg">configID</span>) : <span class="apiret">isPopulated</span>
: [[API C_ClassTalents.LoadConfig|C_ClassTalents.LoadConfig]](<span class="apiarg">configID, autoApply</span>) : <span class="apiret">result, changeError, newLearnedNodeIDs</span>
: [[API C_ClassTalents.RenameConfig|C_ClassTalents.RenameConfig]](<span class="apiarg">configID, name</span>) : <span class="apiret">success</span>
: [[API C_ClassTalents.RequestNewConfig|C_ClassTalents.RequestNewConfig]](<span class="apiarg">name</span>) : <span class="apiret">success</span>
: [[API C_ClassTalents.SaveConfig|C_ClassTalents.SaveConfig]](<span class="apiarg">configID</span>) : <span class="apiret">success</span>
: [[API C_ClassTalents.SetStarterBuildActive|C_ClassTalents.SetStarterBuildActive]](<span class="apiarg">active</span>) : <span class="apiret">result</span>
: [[API C_ClassTalents.SetUsesSharedActionBars|C_ClassTalents.SetUsesSharedActionBars]](<span class="apiarg">configID, usesShared</span>)
: [[API C_ClassTalents.UpdateLastSelectedSavedConfigID|C_ClassTalents.UpdateLastSelectedSavedConfigID]](<span class="apiarg">specID [, configID]</span>)
: [[API C_ClassTalents.ViewLoadout|C_ClassTalents.ViewLoadout]](<span class="apiarg">entries</span>) : <span class="apiret">success</span>

==C_Club==
[[Guild_%26_Communities|Communities]] were added in [[Patch 8.0.1]]
: [[API C_Club.AcceptInvitation|C_Club.AcceptInvitation]](<span class="apiarg">clubId</span>)
: [[API C_Club.AddClubStreamChatChannel|C_Club.AddClubStreamChatChannel]](<span class="apiarg">clubId, streamId</span>)
: [[API C_Club.AdvanceStreamViewMarker|C_Club.AdvanceStreamViewMarker]](<span class="apiarg">clubId, streamId</span>)
: [[API C_Club.AssignMemberRole|C_Club.AssignMemberRole]](<span class="apiarg">clubId, memberId, roleId</span>)
: [[API C_Club.CanResolvePlayerLocationFromClubMessageData|C_Club.CanResolvePlayerLocationFromClubMessageData]](<span class="apiarg">clubId, streamId, epoch, position</span>) : <span class="apiret">canResolve</span>
: [[API C_Club.ClearAutoAdvanceStreamViewMarker|C_Club.ClearAutoAdvanceStreamViewMarker]]()
: [[API C_Club.ClearClubPresenceSubscription|C_Club.ClearClubPresenceSubscription]]()
: [[API C_Club.CompareBattleNetDisplayName|C_Club.CompareBattleNetDisplayName]](<span class="apiarg">clubId, lhsMemberId, rhsMemberId</span>) : <span class="apiret">comparison</span>
: [[API C_Club.CreateClub|C_Club.CreateClub]](<span class="apiarg">name, shortName?, description, clubType, avatarId, isCrossFaction?</span>) {{apitag|protected}}
: [[API C_Club.CreateStream|C_Club.CreateStream]](<span class="apiarg">clubId, name, subject, leadersAndModeratorsOnly</span>)
: [[API C_Club.CreateTicket|C_Club.CreateTicket]](<span class="apiarg">clubId [, allowedRedeemCount [, duration [, defaultStreamId [, isCrossFaction]]]]</span>)
: [[API C_Club.DeclineInvitation|C_Club.DeclineInvitation]](<span class="apiarg">clubId</span>)
: [[API C_Club.DestroyClub|C_Club.DestroyClub]](<span class="apiarg">clubId</span>)
: [[API C_Club.DestroyMessage|C_Club.DestroyMessage]](<span class="apiarg">clubId, streamId, messageId</span>)
: [[API C_Club.DestroyStream|C_Club.DestroyStream]](<span class="apiarg">clubId, streamId</span>)
: [[API C_Club.DestroyTicket|C_Club.DestroyTicket]](<span class="apiarg">clubId, ticketId</span>)
: [[API C_Club.DoesAnyCommunityHaveUnreadMessages|C_Club.DoesAnyCommunityHaveUnreadMessages]]() : <span class="apiret">hasUnreadMessages</span>
: [[API C_Club.DoesCommunityHaveMembersOfTheOppositeFaction|C_Club.DoesCommunityHaveMembersOfTheOppositeFaction]](<span class="apiarg">clubId</span>) : <span class="apiret">hasMembersOfOppositeFaction</span>
: [[API C_Club.EditClub|C_Club.EditClub]](<span class="apiarg">clubId [, name [, shortName [, description [, avatarId [, broadcast [, crossFaction]]]]]]</span>)
: [[API C_Club.EditMessage|C_Club.EditMessage]](<span class="apiarg">clubId, streamId, messageId, message</span>)
: [[API C_Club.EditStream|C_Club.EditStream]](<span class="apiarg">clubId, streamId [, name [, subject [, leadersAndModeratorsOnly]]]</span>)
: [[API C_Club.Flush|C_Club.Flush]]()
: [[API C_Club.FocusCommunityStreams|C_Club.FocusCommunityStreams]]()
: [[API C_Club.FocusStream|C_Club.FocusStream]](<span class="apiarg">clubId, streamId</span>) : <span class="apiret">focused</span>
: [[API C_Club.GetAssignableRoles|C_Club.GetAssignableRoles]](<span class="apiarg">clubId, memberId</span>) : <span class="apiret">assignableRoles</span>
: [[API C_Club.GetAvatarIdList|C_Club.GetAvatarIdList]](<span class="apiarg">clubType</span>) : <span class="apiret">avatarIds</span>
: [[API C_Club.GetClubCapacity|C_Club.GetClubCapacity]]() : <span class="apiret">capacity</span>
: [[API C_Club.GetClubInfo|C_Club.GetClubInfo]](<span class="apiarg">clubId</span>) : <span class="apiret">info</span>
: [[API C_Club.GetClubLimits|C_Club.GetClubLimits]](<span class="apiarg">clubType</span>) : <span class="apiret">clubLimits</span>
: [[API C_Club.GetClubMembers|C_Club.GetClubMembers]](<span class="apiarg">clubId [, streamId]</span>) : <span class="apiret">members</span>
: [[API C_Club.GetClubPrivileges|C_Club.GetClubPrivileges]](<span class="apiarg">clubId</span>) : <span class="apiret">privilegeInfo</span>
: [[API C_Club.GetClubStreamNotificationSettings|C_Club.GetClubStreamNotificationSettings]](<span class="apiarg">clubId</span>) : <span class="apiret">settings</span>
: [[API C_Club.GetCommunityNameResultText|C_Club.GetCommunityNameResultText]](<span class="apiarg">result</span>) : <span class="apiret">errorCode</span>
: [[API C_Club.GetGuildClubId|C_Club.GetGuildClubId]]() : <span class="apiret">guildClubId</span>
: [[API C_Club.GetInfoFromLastCommunityChatLine|C_Club.GetInfoFromLastCommunityChatLine]]() : <span class="apiret">messageInfo, clubId, streamId, clubType</span>
: [[API C_Club.GetInvitationCandidates|C_Club.GetInvitationCandidates]](<span class="apiarg">filter?, maxResults?, cursorPosition?, allowFullMatch?, clubId</span>) : <span class="apiret">candidates</span>
: [[API C_Club.GetInvitationInfo|C_Club.GetInvitationInfo]](<span class="apiarg">clubId</span>) : <span class="apiret">invitation</span>
: [[API C_Club.GetInvitationsForClub|C_Club.GetInvitationsForClub]](<span class="apiarg">clubId</span>) : <span class="apiret">invitations</span>
: [[API C_Club.GetInvitationsForSelf|C_Club.GetInvitationsForSelf]]() : <span class="apiret">invitations</span>
: [[API C_Club.GetLastTicketResponse|C_Club.GetLastTicketResponse]](<span class="apiarg">ticket</span>) : <span class="apiret">error, info, showError</span>
: [[API C_Club.GetMemberInfo|C_Club.GetMemberInfo]](<span class="apiarg">clubId, memberId</span>) : <span class="apiret">info</span>
: [[API C_Club.GetMemberInfoForSelf|C_Club.GetMemberInfoForSelf]](<span class="apiarg">clubId</span>) : <span class="apiret">info</span>
: [[API C_Club.GetMessageInfo|C_Club.GetMessageInfo]](<span class="apiarg">clubId, streamId, messageId</span>) : <span class="apiret">message</span>
: [[API C_Club.GetMessageRanges|C_Club.GetMessageRanges]](<span class="apiarg">clubId, streamId</span>) : <span class="apiret">ranges</span>
: [[API C_Club.GetMessagesBefore|C_Club.GetMessagesBefore]](<span class="apiarg">clubId, streamId, newest, count</span>) : <span class="apiret">messages</span>
: [[API C_Club.GetMessagesInRange|C_Club.GetMessagesInRange]](<span class="apiarg">clubId, streamId, oldest, newest</span>) : <span class="apiret">messages</span>
: [[API C_Club.GetStreamInfo|C_Club.GetStreamInfo]](<span class="apiarg">clubId, streamId</span>) : <span class="apiret">streamInfo</span>
: [[API C_Club.GetStreams|C_Club.GetStreams]](<span class="apiarg">clubId</span>) : <span class="apiret">streams</span>
: [[API C_Club.GetStreamViewMarker|C_Club.GetStreamViewMarker]](<span class="apiarg">clubId, streamId</span>) : <span class="apiret">lastReadTime</span>
: [[API C_Club.GetSubscribedClubs|C_Club.GetSubscribedClubs]]() : <span class="apiret">clubs</span>
: [[API C_Club.GetTickets|C_Club.GetTickets]](<span class="apiarg">clubId</span>) : <span class="apiret">tickets</span>
: [[API C_Club.IsAccountMuted|C_Club.IsAccountMuted]](<span class="apiarg">clubId</span>) : <span class="apiret">accountMuted</span>
: [[API C_Club.IsBeginningOfStream|C_Club.IsBeginningOfStream]](<span class="apiarg">clubId, streamId, messageId</span>) : <span class="apiret">isBeginningOfStream</span>
: [[API C_Club.IsEnabled|C_Club.IsEnabled]]() : <span class="apiret">clubsEnabled</span>
: [[API C_Club.IsRestricted|C_Club.IsRestricted]]() : <span class="apiret">restrictionReason</span>
: [[API C_Club.IsSubscribedToStream|C_Club.IsSubscribedToStream]](<span class="apiarg">clubId, streamId</span>) : <span class="apiret">subscribed</span>
: [[API C_Club.KickMember|C_Club.KickMember]](<span class="apiarg">clubId, memberId</span>) {{apitag|protected}}
: [[API C_Club.LeaveClub|C_Club.LeaveClub]](<span class="apiarg">clubId</span>)
: [[API C_Club.RedeemTicket|C_Club.RedeemTicket]](<span class="apiarg">ticketId</span>)
: [[API C_Club.RequestInvitationsForClub|C_Club.RequestInvitationsForClub]](<span class="apiarg">clubId</span>)
: [[API C_Club.RequestMoreMessagesBefore|C_Club.RequestMoreMessagesBefore]](<span class="apiarg">clubId, streamId [, messageId [, count]]</span>) : <span class="apiret">alreadyHasMessages</span>
: [[API C_Club.RequestTicket|C_Club.RequestTicket]](<span class="apiarg">ticketId</span>)
: [[API C_Club.RequestTickets|C_Club.RequestTickets]](<span class="apiarg">clubId</span>)
: [[API C_Club.RevokeInvitation|C_Club.RevokeInvitation]](<span class="apiarg">clubId, memberId</span>)
: [[API C_Club.SendBattleTagFriendRequest|C_Club.SendBattleTagFriendRequest]](<span class="apiarg">guildClubId, memberId</span>)
: [[API C_Club.SendCharacterInvitation|C_Club.SendCharacterInvitation]](<span class="apiarg">clubId, character</span>)
: [[API C_Club.SendInvitation|C_Club.SendInvitation]](<span class="apiarg">clubId, memberId</span>)
: [[API C_Club.SendMessage|C_Club.SendMessage]](<span class="apiarg">clubId, streamId, message</span>)
: [[API C_Club.SetAutoAdvanceStreamViewMarker|C_Club.SetAutoAdvanceStreamViewMarker]](<span class="apiarg">clubId, streamId</span>)
: [[API C_Club.SetAvatarTexture|C_Club.SetAvatarTexture]](<span class="apiarg">texture, avatarId, clubType</span>)
: [[API C_Club.SetClubMemberNote|C_Club.SetClubMemberNote]](<span class="apiarg">clubId, memberId, note</span>) {{apitag|protected}}
: [[API C_Club.SetClubPresenceSubscription|C_Club.SetClubPresenceSubscription]](<span class="apiarg">clubId</span>)
: [[API C_Club.SetClubStreamNotificationSettings|C_Club.SetClubStreamNotificationSettings]](<span class="apiarg">clubId, settings</span>)
: [[API C_Club.SetCommunityID|C_Club.SetCommunityID]](<span class="apiarg">communityID</span>)
: [[API C_Club.SetFavorite|C_Club.SetFavorite]](<span class="apiarg">clubId, isFavorite</span>)
: [[API C_Club.SetSocialQueueingEnabled|C_Club.SetSocialQueueingEnabled]](<span class="apiarg">clubId, enabled</span>)
: [[API C_Club.ShouldAllowClubType|C_Club.ShouldAllowClubType]](<span class="apiarg">clubType</span>) : <span class="apiret">clubTypeIsAllowed</span>
: [[API C_Club.UnfocusAllStreams|C_Club.UnfocusAllStreams]](<span class="apiarg">unsubscribe</span>)
: [[API C_Club.UnfocusStream|C_Club.UnfocusStream]](<span class="apiarg">clubId, streamId</span>)
: [[API C_Club.ValidateText|C_Club.ValidateText]](<span class="apiarg">clubType, text, clubFieldType</span>) : <span class="apiret">result</span>

==C_ClubFinder==
The Club Finder was added in [[Patch 8.2.0]] and enabled in [[Patch 8.2.5]]
: [[API C_ClubFinder.ApplicantAcceptClubInvite|C_ClubFinder.ApplicantAcceptClubInvite]](<span class="apiarg">clubFinderGUID</span>)
: [[API C_ClubFinder.ApplicantDeclineClubInvite|C_ClubFinder.ApplicantDeclineClubInvite]](<span class="apiarg">clubFinderGUID</span>)
: [[API C_ClubFinder.CancelMembershipRequest|C_ClubFinder.CancelMembershipRequest]](<span class="apiarg">clubFinderGUID</span>)
: [[API C_ClubFinder.CheckAllPlayerApplicantSettings|C_ClubFinder.CheckAllPlayerApplicantSettings]]()
: [[API C_ClubFinder.ClearAllFinderCache|C_ClubFinder.ClearAllFinderCache]]()
: [[API C_ClubFinder.ClearClubApplicantsCache|C_ClubFinder.ClearClubApplicantsCache]]()
: [[API C_ClubFinder.ClearClubFinderPostingsCache|C_ClubFinder.ClearClubFinderPostingsCache]]()
: [[API C_ClubFinder.DoesPlayerBelongToClubFromClubGUID|C_ClubFinder.DoesPlayerBelongToClubFromClubGUID]](<span class="apiarg">clubFinderGUID</span>) : <span class="apiret">belongsToClub</span>
: [[API C_ClubFinder.GetClubFinderDisableReason|C_ClubFinder.GetClubFinderDisableReason]]() : <span class="apiret">disableReason</span>
: [[API C_ClubFinder.GetClubRecruitmentSettings|C_ClubFinder.GetClubRecruitmentSettings]]() : <span class="apiret">settings</span>
: [[API C_ClubFinder.GetClubTypeFromFinderGUID|C_ClubFinder.GetClubTypeFromFinderGUID]](<span class="apiarg">clubFinderGUID</span>) : <span class="apiret">clubType</span>
: [[API C_ClubFinder.GetFocusIndexFromFlag|C_ClubFinder.GetFocusIndexFromFlag]](<span class="apiarg">flags</span>) : <span class="apiret">index</span>
: [[API C_ClubFinder.GetPlayerApplicantLocaleFlags|C_ClubFinder.GetPlayerApplicantLocaleFlags]]() : <span class="apiret">localeFlags</span>
: [[API C_ClubFinder.GetPlayerApplicantSettings|C_ClubFinder.GetPlayerApplicantSettings]]() : <span class="apiret">settings</span>
: [[API C_ClubFinder.GetPlayerClubApplicationStatus|C_ClubFinder.GetPlayerClubApplicationStatus]](<span class="apiarg">clubFinderGUID</span>) : <span class="apiret">clubStatus</span>
: [[API C_ClubFinder.GetPlayerSettingsFocusFlagsSelectedCount|C_ClubFinder.GetPlayerSettingsFocusFlagsSelectedCount]]() : <span class="apiret">focusCount</span>
: [[API C_ClubFinder.GetPostingIDFromClubFinderGUID|C_ClubFinder.GetPostingIDFromClubFinderGUID]](<span class="apiarg">clubFinderGUID</span>) : <span class="apiret">postingID</span>
: [[API C_ClubFinder.GetRecruitingClubInfoFromClubID|C_ClubFinder.GetRecruitingClubInfoFromClubID]](<span class="apiarg">clubId</span>) : <span class="apiret">clubInfo</span>
: [[API C_ClubFinder.GetRecruitingClubInfoFromFinderGUID|C_ClubFinder.GetRecruitingClubInfoFromFinderGUID]](<span class="apiarg">clubFinderGUID</span>) : <span class="apiret">clubInfo</span>
: [[API C_ClubFinder.GetStatusOfPostingFromClubId|C_ClubFinder.GetStatusOfPostingFromClubId]](<span class="apiarg">postingID</span>) : <span class="apiret">postingFlags</span>
: [[API C_ClubFinder.GetTotalMatchingCommunityListSize|C_ClubFinder.GetTotalMatchingCommunityListSize]]() : <span class="apiret">totalSize</span>
: [[API C_ClubFinder.GetTotalMatchingGuildListSize|C_ClubFinder.GetTotalMatchingGuildListSize]]() : <span class="apiret">totalSize</span>
: [[API C_ClubFinder.HasAlreadyAppliedToLinkedPosting|C_ClubFinder.HasAlreadyAppliedToLinkedPosting]](<span class="apiarg">clubFinderGUID</span>) : <span class="apiret">hasAlreadyApplied</span>
: [[API C_ClubFinder.HasPostingBeenDelisted|C_ClubFinder.HasPostingBeenDelisted]](<span class="apiarg">postingID</span>) : <span class="apiret">postingDelisted</span>
: [[API C_ClubFinder.IsCommunityFinderEnabled|C_ClubFinder.IsCommunityFinderEnabled]]() : <span class="apiret">isEnabled</span>
: [[API C_ClubFinder.IsEnabled|C_ClubFinder.IsEnabled]]() : <span class="apiret">isEnabled</span>
: [[API C_ClubFinder.IsListingEnabledFromFlags|C_ClubFinder.IsListingEnabledFromFlags]](<span class="apiarg">flags</span>) : <span class="apiret">isListed</span>
: [[API C_ClubFinder.IsPostingBanned|C_ClubFinder.IsPostingBanned]](<span class="apiarg">postingID</span>) : <span class="apiret">postingBanned</span>
: [[API C_ClubFinder.IsValidSearchString|C_ClubFinder.IsValidSearchString]](<span class="apiarg">name</span>) : <span class="apiret">isApproved</span>
: [[API C_ClubFinder.LookupClubPostingFromClubFinderGUID|C_ClubFinder.LookupClubPostingFromClubFinderGUID]](<span class="apiarg">clubFinderGUID, isLinkedPosting</span>)
: [[API C_ClubFinder.PlayerGetClubInvitationList|C_ClubFinder.PlayerGetClubInvitationList]]() : <span class="apiret">inviteList</span>
: [[API C_ClubFinder.PlayerRequestPendingClubsList|C_ClubFinder.PlayerRequestPendingClubsList]](<span class="apiarg">type</span>)
: [[API C_ClubFinder.PlayerReturnPendingCommunitiesList|C_ClubFinder.PlayerReturnPendingCommunitiesList]]() : <span class="apiret">info</span>
: [[API C_ClubFinder.PlayerReturnPendingGuildsList|C_ClubFinder.PlayerReturnPendingGuildsList]]() : <span class="apiret">info</span>
: [[API C_ClubFinder.PostClub|C_ClubFinder.PostClub]](<span class="apiarg">clubId, itemLevelRequirement, name, description, avatarId, specs, type [, crossFaction]</span>) : <span class="apiret">succesful</span>
: [[API C_ClubFinder.RequestApplicantList|C_ClubFinder.RequestApplicantList]](<span class="apiarg">type</span>)
: [[API C_ClubFinder.RequestClubsList|C_ClubFinder.RequestClubsList]](<span class="apiarg">guildListRequested, searchString, specIDs</span>)
: [[API C_ClubFinder.RequestMembershipToClub|C_ClubFinder.RequestMembershipToClub]](<span class="apiarg">clubFinderGUID, comment, specIDs</span>)
: [[API C_ClubFinder.RequestNextCommunityPage|C_ClubFinder.RequestNextCommunityPage]](<span class="apiarg">startingIndex, pageSize</span>)
: [[API C_ClubFinder.RequestNextGuildPage|C_ClubFinder.RequestNextGuildPage]](<span class="apiarg">startingIndex, pageSize</span>)
: [[API C_ClubFinder.RequestPostingInformationFromClubId|C_ClubFinder.RequestPostingInformationFromClubId]](<span class="apiarg">clubId</span>) : <span class="apiret">success</span>
: [[API C_ClubFinder.RequestSubscribedClubPostingIDs|C_ClubFinder.RequestSubscribedClubPostingIDs]]()
: [[API C_ClubFinder.ResetClubPostingMapCache|C_ClubFinder.ResetClubPostingMapCache]]()
: [[API C_ClubFinder.RespondToApplicant|C_ClubFinder.RespondToApplicant]](<span class="apiarg">clubFinderGUID, playerGUID, shouldAccept, requestType, playerName, forceAccept [, reported]</span>)
: [[API C_ClubFinder.ReturnClubApplicantList|C_ClubFinder.ReturnClubApplicantList]](<span class="apiarg">clubId</span>) : <span class="apiret">info</span>
: [[API C_ClubFinder.ReturnMatchingCommunityList|C_ClubFinder.ReturnMatchingCommunityList]]() : <span class="apiret">recruitingClubs</span>
: [[API C_ClubFinder.ReturnMatchingGuildList|C_ClubFinder.ReturnMatchingGuildList]]() : <span class="apiret">recruitingClubs</span>
: [[API C_ClubFinder.ReturnPendingClubApplicantList|C_ClubFinder.ReturnPendingClubApplicantList]](<span class="apiarg">clubId</span>) : <span class="apiret">info</span>
: [[API C_ClubFinder.SendChatWhisper|C_ClubFinder.SendChatWhisper]](<span class="apiarg">clubFinderGUID, playerGUID, applicantType, name</span>)
: [[API C_ClubFinder.SetAllRecruitmentSettings|C_ClubFinder.SetAllRecruitmentSettings]](<span class="apiarg">value</span>)
: [[API C_ClubFinder.SetPlayerApplicantLocaleFlags|C_ClubFinder.SetPlayerApplicantLocaleFlags]](<span class="apiarg">localeFlags</span>)
: [[API C_ClubFinder.SetPlayerApplicantSettings|C_ClubFinder.SetPlayerApplicantSettings]](<span class="apiarg">index, checked</span>)
: [[API C_ClubFinder.SetRecruitmentLocale|C_ClubFinder.SetRecruitmentLocale]](<span class="apiarg">locale</span>)
: [[API C_ClubFinder.SetRecruitmentSettings|C_ClubFinder.SetRecruitmentSettings]](<span class="apiarg">index, checked</span>)
: [[API C_ClubFinder.ShouldShowClubFinder|C_ClubFinder.ShouldShowClubFinder]]() : <span class="apiret">shouldShow</span>

==C_Commentator==
: [[API C_Commentator.AddPlayerOverrideName|C_Commentator.AddPlayerOverrideName]](<span class="apiarg">playerName, overrideName</span>)
: [[API C_Commentator.AddTrackedDefensiveAuras|C_Commentator.AddTrackedDefensiveAuras]](<span class="apiarg">spellIDs</span>)
: [[API C_Commentator.AddTrackedOffensiveAuras|C_Commentator.AddTrackedOffensiveAuras]](<span class="apiarg">spellIDs</span>)
: [[API C_Commentator.AreTeamsSwapped|C_Commentator.AreTeamsSwapped]]() : <span class="apiret">teamsAreSwapped</span>
: [[API C_Commentator.AssignPlayersToTeam|C_Commentator.AssignPlayersToTeam]](<span class="apiarg">playerName, teamName</span>)
: [[API C_Commentator.AssignPlayersToTeamInCurrentInstance|C_Commentator.AssignPlayersToTeamInCurrentInstance]](<span class="apiarg">teamIndex, teamName</span>)
: [[API C_Commentator.AssignPlayerToTeam|C_Commentator.AssignPlayerToTeam]](<span class="apiarg">playerName, teamName</span>)
: [[API C_Commentator.CanUseCommentatorCheats|C_Commentator.CanUseCommentatorCheats]]() : <span class="apiret">canUseCommentatorCheats</span>
: [[API C_Commentator.ClearCameraTarget|C_Commentator.ClearCameraTarget]]()
: [[API C_Commentator.ClearFollowTarget|C_Commentator.ClearFollowTarget]]()
: [[API C_Commentator.ClearLookAtTarget|C_Commentator.ClearLookAtTarget]](<span class="apiarg">[lookAtIndex]</span>)
: [[API C_Commentator.EnterInstance|C_Commentator.EnterInstance]]()
: [[API C_Commentator.ExitInstance|C_Commentator.ExitInstance]]()
: [[API C_Commentator.FindSpectatedUnit|C_Commentator.FindSpectatedUnit]](<span class="apiarg">unitToken</span>) : <span class="apiret">playerIndex, teamIndex, isPet</span>
: [[API C_Commentator.FindTeamNameInCurrentInstance|C_Commentator.FindTeamNameInCurrentInstance]](<span class="apiarg">teamIndex</span>) : <span class="apiret">teamName</span>
: [[API C_Commentator.FindTeamNameInDirectory|C_Commentator.FindTeamNameInDirectory]](<span class="apiarg">playerNames</span>) : <span class="apiret">teamName</span>
: [[API C_Commentator.FlushCommentatorHistory|C_Commentator.FlushCommentatorHistory]]()
: [[API C_Commentator.FollowPlayer|C_Commentator.FollowPlayer]](<span class="apiarg">factionIndex, playerIndex [, forceInstantTransition]</span>)
: [[API C_Commentator.FollowUnit|C_Commentator.FollowUnit]](<span class="apiarg">token</span>)
: [[API C_Commentator.ForceFollowTransition|C_Commentator.ForceFollowTransition]]()
: [[API C_Commentator.GetAdditionalCameraWeight|C_Commentator.GetAdditionalCameraWeight]]() : <span class="apiret">teamIndex, playerIndex</span>
: [[API C_Commentator.GetAdditionalCameraWeightByToken|C_Commentator.GetAdditionalCameraWeightByToken]](<span class="apiarg">unitToken</span>) : <span class="apiret">weight</span>
: [[API C_Commentator.GetAllPlayerOverrideNames|C_Commentator.GetAllPlayerOverrideNames]]() : <span class="apiret">nameEntries</span>
: [[API C_Commentator.GetCamera|C_Commentator.GetCamera]]() : <span class="apiret">xPos, yPos, zPos, yaw, pitch, roll, fov</span>
: [[API C_Commentator.GetCameraCollision|C_Commentator.GetCameraCollision]]() : <span class="apiret">isColliding</span>
: [[API C_Commentator.GetCameraPosition|C_Commentator.GetCameraPosition]]() : <span class="apiret">xPos, yPos, zPos</span>
: [[API C_Commentator.GetCommentatorHistory|C_Commentator.GetCommentatorHistory]]() : <span class="apiret">history</span>
: [[API C_Commentator.GetCurrentMapID|C_Commentator.GetCurrentMapID]]() : <span class="apiret">mapID</span>
: [[API C_Commentator.GetDampeningPercent|C_Commentator.GetDampeningPercent]]() : <span class="apiret">percentage</span>
: [[API C_Commentator.GetDistanceBeforeForcedHorizontalConvergence|C_Commentator.GetDistanceBeforeForcedHorizontalConvergence]]() : <span class="apiret">distance</span>
: [[API C_Commentator.GetDurationToForceHorizontalConvergence|C_Commentator.GetDurationToForceHorizontalConvergence]]() : <span class="apiret">ms</span>
: [[API C_Commentator.GetExcludeDistance|C_Commentator.GetExcludeDistance]]() : <span class="apiret">excludeDistance</span>
: [[API C_Commentator.GetHardlockWeight|C_Commentator.GetHardlockWeight]]() : <span class="apiret">weight</span>
: [[API C_Commentator.GetHorizontalAngleThresholdToSmooth|C_Commentator.GetHorizontalAngleThresholdToSmooth]]() : <span class="apiret">angle</span>
: [[API C_Commentator.GetIndirectSpellID|C_Commentator.GetIndirectSpellID]](<span class="apiarg">trackedSpellID</span>) : <span class="apiret">indirectSpellID</span>
: [[API C_Commentator.GetInstanceInfo|C_Commentator.GetInstanceInfo]](<span class="apiarg">mapIndex, instanceIndex</span>) : <span class="apiret">mapID, mapName, status, instanceIDLow, instanceIDHigh</span>
: [[API C_Commentator.GetLookAtLerpAmount|C_Commentator.GetLookAtLerpAmount]]() : <span class="apiret">amount</span>
: [[API C_Commentator.GetMapInfo|C_Commentator.GetMapInfo]](<span class="apiarg">mapIndex</span>) : <span class="apiret">teamSize, minLevel, maxLevel, numInstances</span>
: [[API C_Commentator.GetMatchDuration|C_Commentator.GetMatchDuration]]() : <span class="apiret">seconds</span>
: [[API C_Commentator.GetMaxNumPlayersPerTeam|C_Commentator.GetMaxNumPlayersPerTeam]]() : <span class="apiret">maxNumPlayersPerTeam</span>
: [[API C_Commentator.GetMaxNumTeams|C_Commentator.GetMaxNumTeams]]() : <span class="apiret">maxNumTeams</span>
: [[API C_Commentator.GetMode|C_Commentator.GetMode]]() : <span class="apiret">commentatorMode</span>
: [[API C_Commentator.GetMsToHoldForHorizontalMovement|C_Commentator.GetMsToHoldForHorizontalMovement]]() : <span class="apiret">ms</span>
: [[API C_Commentator.GetMsToHoldForVerticalMovement|C_Commentator.GetMsToHoldForVerticalMovement]]() : <span class="apiret">ms</span>
: [[API C_Commentator.GetMsToSmoothHorizontalChange|C_Commentator.GetMsToSmoothHorizontalChange]]() : <span class="apiret">ms</span>
: [[API C_Commentator.GetMsToSmoothVerticalChange|C_Commentator.GetMsToSmoothVerticalChange]]() : <span class="apiret">ms</span>
: [[API C_Commentator.GetNumMaps|C_Commentator.GetNumMaps]]() : <span class="apiret">numMaps</span>
: [[API C_Commentator.GetNumPlayers|C_Commentator.GetNumPlayers]](<span class="apiarg">factionIndex</span>) : <span class="apiret">numPlayers</span>
: [[API C_Commentator.GetOrCreateSeries|C_Commentator.GetOrCreateSeries]](<span class="apiarg">teamName1, teamName2</span>) : <span class="apiret">data</span>
: [[API C_Commentator.GetPlayerAuraInfo|C_Commentator.GetPlayerAuraInfo]](<span class="apiarg">teamIndex, playerIndex, spellID</span>) : <span class="apiret">startTime, duration, enable</span>
: [[API C_Commentator.GetPlayerAuraInfoByUnit|C_Commentator.GetPlayerAuraInfoByUnit]](<span class="apiarg">token, spellID</span>) : <span class="apiret">startTime, duration, enable</span>
: [[API C_Commentator.GetPlayerCooldownInfo|C_Commentator.GetPlayerCooldownInfo]](<span class="apiarg">teamIndex, playerIndex, spellID</span>) : <span class="apiret">startTime, duration, enable</span>
: [[API C_Commentator.GetPlayerCooldownInfoByUnit|C_Commentator.GetPlayerCooldownInfoByUnit]](<span class="apiarg">unitToken, spellID</span>) : <span class="apiret">startTime, duration, enable</span>
: [[API C_Commentator.GetPlayerCrowdControlInfo|C_Commentator.GetPlayerCrowdControlInfo]](<span class="apiarg">teamIndex, playerIndex</span>) : <span class="apiret">spellID, expiration, duration</span>
: [[API C_Commentator.GetPlayerCrowdControlInfoByUnit|C_Commentator.GetPlayerCrowdControlInfoByUnit]](<span class="apiarg">token</span>) : <span class="apiret">spellID, expiration, duration</span>
: [[API C_Commentator.GetPlayerData|C_Commentator.GetPlayerData]](<span class="apiarg">teamIndex, playerIndex</span>) : <span class="apiret">info</span>
: [[API C_Commentator.GetPlayerFlagInfo|C_Commentator.GetPlayerFlagInfo]](<span class="apiarg">teamIndex, playerIndex</span>) : <span class="apiret">hasFlag</span>
: [[API C_Commentator.GetPlayerFlagInfoByUnit|C_Commentator.GetPlayerFlagInfoByUnit]](<span class="apiarg">unitToken</span>) : <span class="apiret">hasFlag</span>
: [[API C_Commentator.GetPlayerItemCooldownInfo|C_Commentator.GetPlayerItemCooldownInfo]](<span class="apiarg">teamIndex, playerIndex, itemID</span>) : <span class="apiret">startTime, duration, enable</span>
: [[API C_Commentator.GetPlayerItemCooldownInfoByUnit|C_Commentator.GetPlayerItemCooldownInfoByUnit]](<span class="apiarg">unitToken, itemID</span>) : <span class="apiret">startTime, duration, enable</span>
: [[API C_Commentator.GetPlayerOverrideName|C_Commentator.GetPlayerOverrideName]](<span class="apiarg">originalName</span>) : <span class="apiret">overrideName</span>
: [[API C_Commentator.GetPlayerSpellCharges|C_Commentator.GetPlayerSpellCharges]](<span class="apiarg">teamIndex, playerIndex, spellID</span>) : <span class="apiret">charges, maxCharges, startTime, duration</span>
: [[API C_Commentator.GetPlayerSpellChargesByUnit|C_Commentator.GetPlayerSpellChargesByUnit]](<span class="apiarg">unitToken, spellID</span>) : <span class="apiret">charges, maxCharges, startTime, duration</span>
: [[API C_Commentator.GetPositionLerpAmount|C_Commentator.GetPositionLerpAmount]]() : <span class="apiret">amount</span>
: [[API C_Commentator.GetSmoothFollowTransitioning|C_Commentator.GetSmoothFollowTransitioning]]() : <span class="apiret">enabled</span>
: [[API C_Commentator.GetSoftlockWeight|C_Commentator.GetSoftlockWeight]]() : <span class="apiret">weight</span>
: [[API C_Commentator.GetSpeedFactor|C_Commentator.GetSpeedFactor]]() : <span class="apiret">factor</span>
: [[API C_Commentator.GetStartLocation|C_Commentator.GetStartLocation]](<span class="apiarg">mapID</span>) : <span class="apiret">pos</span>
: [[API C_Commentator.GetTeamColor|C_Commentator.GetTeamColor]](<span class="apiarg">teamIndex</span>) : <span class="apiret">color</span>
: [[API C_Commentator.GetTeamColorByUnit|C_Commentator.GetTeamColorByUnit]](<span class="apiarg">unitToken</span>) : <span class="apiret">color</span>
: [[API C_Commentator.GetTimeLeftInMatch|C_Commentator.GetTimeLeftInMatch]]() : <span class="apiret">timeLeft</span>
: [[API C_Commentator.GetTrackedSpellID|C_Commentator.GetTrackedSpellID]](<span class="apiarg">indirectSpellID</span>) : <span class="apiret">trackedSpellID</span>
: [[API C_Commentator.GetTrackedSpells|C_Commentator.GetTrackedSpells]](<span class="apiarg">teamIndex, playerIndex, category</span>) : <span class="apiret">spells</span>
: [[API C_Commentator.GetTrackedSpellsByUnit|C_Commentator.GetTrackedSpellsByUnit]](<span class="apiarg">unitToken, category</span>) : <span class="apiret">spells</span>
: [[API C_Commentator.GetUnitData|C_Commentator.GetUnitData]](<span class="apiarg">unitToken</span>) : <span class="apiret">data</span>
: [[API C_Commentator.GetWargameInfo|C_Commentator.GetWargameInfo]](<span class="apiarg">listID</span>) : <span class="apiret">name, minPlayers, maxPlayers, isArena</span>
: [[API C_Commentator.HasTrackedAuras|C_Commentator.HasTrackedAuras]](<span class="apiarg">token</span>) : <span class="apiret">hasOffensiveAura, hasDefensiveAura</span>
: [[API C_Commentator.IsSmartCameraLocked|C_Commentator.IsSmartCameraLocked]]() : <span class="apiret">isSmartCameraLocked</span>
: [[API C_Commentator.IsSpectating|C_Commentator.IsSpectating]]() : <span class="apiret">isSpectating</span>
: [[API C_Commentator.IsTrackedDefensiveAura|C_Commentator.IsTrackedDefensiveAura]](<span class="apiarg">spellID</span>) : <span class="apiret">isDefensiveTrigger</span>
: [[API C_Commentator.IsTrackedOffensiveAura|C_Commentator.IsTrackedOffensiveAura]](<span class="apiarg">spellID</span>) : <span class="apiret">isOffensiveTrigger</span>
: [[API C_Commentator.IsTrackedSpell|C_Commentator.IsTrackedSpell]](<span class="apiarg">teamIndex, playerIndex, spellID, category</span>) : <span class="apiret">isTracked</span>
: [[API C_Commentator.IsTrackedSpellByUnit|C_Commentator.IsTrackedSpellByUnit]](<span class="apiarg">unitToken, spellID, category</span>) : <span class="apiret">isTracked</span>
: [[API C_Commentator.IsUsingSmartCamera|C_Commentator.IsUsingSmartCamera]]() : <span class="apiret">isUsingSmartCamera</span>
: [[API C_Commentator.LookAtPlayer|C_Commentator.LookAtPlayer]](<span class="apiarg">factionIndex, playerIndex [, lookAtIndex]</span>)
: [[API C_Commentator.RemoveAllOverrideNames|C_Commentator.RemoveAllOverrideNames]]()
: [[API C_Commentator.RemovePlayerOverrideName|C_Commentator.RemovePlayerOverrideName]](<span class="apiarg">originalPlayerName</span>)
: [[API C_Commentator.RequestPlayerCooldownInfo|C_Commentator.RequestPlayerCooldownInfo]](<span class="apiarg">teamIndex, playerIndex</span>)
: [[API C_Commentator.ResetFoVTarget|C_Commentator.ResetFoVTarget]]()
: [[API C_Commentator.ResetSeriesScores|C_Commentator.ResetSeriesScores]](<span class="apiarg">teamName1, teamName2</span>)
: [[API C_Commentator.ResetSettings|C_Commentator.ResetSettings]]()
: [[API C_Commentator.ResetTrackedAuras|C_Commentator.ResetTrackedAuras]]()
: [[API C_Commentator.SetAdditionalCameraWeight|C_Commentator.SetAdditionalCameraWeight]](<span class="apiarg">teamIndex, playerIndex, weight</span>)
: [[API C_Commentator.SetAdditionalCameraWeightByToken|C_Commentator.SetAdditionalCameraWeightByToken]](<span class="apiarg">unitToken, weight</span>)
: [[API C_Commentator.SetBlocklistedAuras|C_Commentator.SetBlocklistedAuras]](<span class="apiarg">spellIDs</span>)
: [[API C_Commentator.SetBlocklistedCooldowns|C_Commentator.SetBlocklistedCooldowns]](<span class="apiarg">specID, spellIDs</span>)
: [[API C_Commentator.SetBlocklistedItemCooldowns|C_Commentator.SetBlocklistedItemCooldowns]](<span class="apiarg">itemIDs</span>)
: [[API C_Commentator.SetCamera|C_Commentator.SetCamera]](<span class="apiarg">xPos, yPos, zPos, yaw, pitch, roll, fov</span>)
: [[API C_Commentator.SetCameraCollision|C_Commentator.SetCameraCollision]](<span class="apiarg">collide</span>)
: [[API C_Commentator.SetCameraPosition|C_Commentator.SetCameraPosition]](<span class="apiarg">xPos, yPos, zPos, snapToLocation</span>)
: [[API C_Commentator.SetCheatsEnabled|C_Commentator.SetCheatsEnabled]](<span class="apiarg">enableCheats</span>)
: [[API C_Commentator.SetCommentatorHistory|C_Commentator.SetCommentatorHistory]](<span class="apiarg">history</span>)
: [[API C_Commentator.SetDistanceBeforeForcedHorizontalConvergence|C_Commentator.SetDistanceBeforeForcedHorizontalConvergence]](<span class="apiarg">distance</span>)
: [[API C_Commentator.SetDurationToForceHorizontalConvergence|C_Commentator.SetDurationToForceHorizontalConvergence]](<span class="apiarg">ms</span>)
: [[API C_Commentator.SetExcludeDistance|C_Commentator.SetExcludeDistance]](<span class="apiarg">excludeDistance</span>)
: [[API C_Commentator.SetFollowCameraSpeeds|C_Commentator.SetFollowCameraSpeeds]](<span class="apiarg">elasticSpeed, minSpeed</span>)
: [[API C_Commentator.SetHardlockWeight|C_Commentator.SetHardlockWeight]](<span class="apiarg">weight</span>)
: [[API C_Commentator.SetHorizontalAngleThresholdToSmooth|C_Commentator.SetHorizontalAngleThresholdToSmooth]](<span class="apiarg">angle</span>)
: [[API C_Commentator.SetLookAtLerpAmount|C_Commentator.SetLookAtLerpAmount]](<span class="apiarg">amount</span>)
: [[API C_Commentator.SetMapAndInstanceIndex|C_Commentator.SetMapAndInstanceIndex]](<span class="apiarg">mapIndex, instanceIndex</span>)
: [[API C_Commentator.SetMouseDisabled|C_Commentator.SetMouseDisabled]](<span class="apiarg">disabled</span>)
: [[API C_Commentator.SetMoveSpeed|C_Commentator.SetMoveSpeed]](<span class="apiarg">newSpeed</span>)
: [[API C_Commentator.SetMsToHoldForHorizontalMovement|C_Commentator.SetMsToHoldForHorizontalMovement]](<span class="apiarg">ms</span>)
: [[API C_Commentator.SetMsToHoldForVerticalMovement|C_Commentator.SetMsToHoldForVerticalMovement]](<span class="apiarg">ms</span>)
: [[API C_Commentator.SetMsToSmoothHorizontalChange|C_Commentator.SetMsToSmoothHorizontalChange]](<span class="apiarg">ms</span>)
: [[API C_Commentator.SetMsToSmoothVerticalChange|C_Commentator.SetMsToSmoothVerticalChange]](<span class="apiarg">ms</span>)
: [[API C_Commentator.SetPositionLerpAmount|C_Commentator.SetPositionLerpAmount]](<span class="apiarg">amount</span>)
: [[API C_Commentator.SetRequestedDebuffCooldowns|C_Commentator.SetRequestedDebuffCooldowns]](<span class="apiarg">specID, spellIDs</span>)
: [[API C_Commentator.SetRequestedDefensiveCooldowns|C_Commentator.SetRequestedDefensiveCooldowns]](<span class="apiarg">specID, spellIDs</span>)
: [[API C_Commentator.SetRequestedItemCooldowns|C_Commentator.SetRequestedItemCooldowns]](<span class="apiarg">itemIDs</span>)
: [[API C_Commentator.SetRequestedOffensiveCooldowns|C_Commentator.SetRequestedOffensiveCooldowns]](<span class="apiarg">specID, spellIDs</span>)
: [[API C_Commentator.SetSeriesScore|C_Commentator.SetSeriesScore]](<span class="apiarg">teamName1, teamName2, scoringTeamName, score</span>)
: [[API C_Commentator.SetSeriesScores|C_Commentator.SetSeriesScores]](<span class="apiarg">teamName1, teamName2, score1, score2</span>)
: [[API C_Commentator.SetSmartCameraLocked|C_Commentator.SetSmartCameraLocked]](<span class="apiarg">locked</span>)
: [[API C_Commentator.SetSmoothFollowTransitioning|C_Commentator.SetSmoothFollowTransitioning]](<span class="apiarg">enabled</span>)
: [[API C_Commentator.SetSoftlockWeight|C_Commentator.SetSoftlockWeight]](<span class="apiarg">weight</span>)
: [[API C_Commentator.SetSpeedFactor|C_Commentator.SetSpeedFactor]](<span class="apiarg">factor</span>)
: [[API C_Commentator.SetTargetHeightOffset|C_Commentator.SetTargetHeightOffset]](<span class="apiarg">offset</span>)
: [[API C_Commentator.SetUseSmartCamera|C_Commentator.SetUseSmartCamera]](<span class="apiarg">useSmartCamera</span>)
: [[API C_Commentator.SnapCameraLookAtPoint|C_Commentator.SnapCameraLookAtPoint]]()
: [[API C_Commentator.StartWargame|C_Commentator.StartWargame]](<span class="apiarg">listID, teamSize, tournamentRules, teamOneCaptain, teamTwoCaptain</span>)
: [[API C_Commentator.SwapTeamSides|C_Commentator.SwapTeamSides]]()
: [[API C_Commentator.ToggleCheats|C_Commentator.ToggleCheats]]()
: [[API C_Commentator.UpdateMapInfo|C_Commentator.UpdateMapInfo]](<span class="apiarg">[targetPlayer]</span>)
: [[API C_Commentator.UpdatePlayerInfo|C_Commentator.UpdatePlayerInfo]]()
: [[API C_Commentator.ZoomIn_Position|C_Commentator.ZoomIn_Position]](<span class="apiarg">[zoomAmount]</span>)
: [[API C_Commentator.ZoomIn|C_Commentator.ZoomIn]]()
: [[API C_Commentator.ZoomOut_Position|C_Commentator.ZoomOut_Position]](<span class="apiarg">[zoomAmount]</span>)
: [[API C_Commentator.ZoomOut|C_Commentator.ZoomOut]]()

==C_Container==
: [[API C_Container.ContainerIDToInventoryID|C_Container.ContainerIDToInventoryID]](<span class="apiarg">containerID</span>) : <span class="apiret">inventoryID</span>
: [[API C_Container.ContainerRefundItemPurchase|C_Container.ContainerRefundItemPurchase]](<span class="apiarg">containerIndex, slotIndex [, isEquipped]</span>)
: [[API C_Container.GetBackpackAutosortDisabled|C_Container.GetBackpackAutosortDisabled]]() : <span class="apiret">isDisabled</span>
: [[API C_Container.GetBackpackSellJunkDisabled|C_Container.GetBackpackSellJunkDisabled]]() : <span class="apiret">isDisabled</span>
: [[API C_Container.GetBagName|C_Container.GetBagName]](<span class="apiarg">bagIndex</span>) : <span class="apiret">name</span>
: [[API C_Container.GetBagSlotFlag|C_Container.GetBagSlotFlag]](<span class="apiarg">bagIndex, flag</span>) : <span class="apiret">isSet</span>
: [[API C_Container.GetBankAutosortDisabled|C_Container.GetBankAutosortDisabled]]() : <span class="apiret">isDisabled</span>
: [[API C_Container.GetContainerFreeSlots|C_Container.GetContainerFreeSlots]](<span class="apiarg">containerIndex</span>) : <span class="apiret">freeSlots</span>
: [[API C_Container.GetContainerItemCooldown|C_Container.GetContainerItemCooldown]](<span class="apiarg">containerIndex, slotIndex</span>) : <span class="apiret">startTime, duration, enable</span>
: [[API C_Container.GetContainerItemDurability|C_Container.GetContainerItemDurability]](<span class="apiarg">containerIndex, slotIndex</span>) : <span class="apiret">durability, maxDurability</span>
: [[API C_Container.GetContainerItemEquipmentSetInfo|C_Container.GetContainerItemEquipmentSetInfo]](<span class="apiarg">containerIndex, slotIndex</span>) : <span class="apiret">inSet, setList</span>
: [[API C_Container.GetContainerItemID|C_Container.GetContainerItemID]](<span class="apiarg">containerIndex, slotIndex</span>) : <span class="apiret">containerID</span>
: [[API C_Container.GetContainerItemInfo|C_Container.GetContainerItemInfo]](<span class="apiarg">containerIndex, slotIndex</span>) : <span class="apiret">containerInfo</span>
: [[API C_Container.GetContainerItemLink|C_Container.GetContainerItemLink]](<span class="apiarg">containerIndex, slotIndex</span>) : <span class="apiret">itemLink</span>
: [[API C_Container.GetContainerItemPurchaseCurrency|C_Container.GetContainerItemPurchaseCurrency]](<span class="apiarg">containerIndex, slotIndex, itemIndex, isEquipped</span>) : <span class="apiret">currencyInfo</span>
: [[API C_Container.GetContainerItemPurchaseInfo|C_Container.GetContainerItemPurchaseInfo]](<span class="apiarg">containerIndex, slotIndex, isEquipped</span>) : <span class="apiret">info</span>
: [[API C_Container.GetContainerItemPurchaseItem|C_Container.GetContainerItemPurchaseItem]](<span class="apiarg">containerIndex, slotIndex, itemIndex, isEquipped</span>) : <span class="apiret">itemInfo</span>
: [[API C_Container.GetContainerItemQuestInfo|C_Container.GetContainerItemQuestInfo]](<span class="apiarg">containerIndex, slotIndex</span>) : <span class="apiret">questInfo</span>
: [[API C_Container.GetContainerNumFreeSlots|C_Container.GetContainerNumFreeSlots]](<span class="apiarg">bagIndex</span>) : <span class="apiret">numFreeSlots, bagFamily</span>
: [[API C_Container.GetContainerNumSlots|C_Container.GetContainerNumSlots]](<span class="apiarg">containerIndex</span>) : <span class="apiret">numSlots</span>
: [[API C_Container.GetInsertItemsLeftToRight|C_Container.GetInsertItemsLeftToRight]]() : <span class="apiret">isEnabled</span>
: [[API C_Container.GetItemCooldown|C_Container.GetItemCooldown]](<span class="apiarg">itemID</span>) : <span class="apiret">startTime, duration, enable</span>
: [[API C_Container.GetMaxArenaCurrency|C_Container.GetMaxArenaCurrency]]() : <span class="apiret">maxCurrency</span>
: [[API C_Container.GetSortBagsRightToLeft|C_Container.GetSortBagsRightToLeft]]() : <span class="apiret">isEnabled</span>
: [[API C_Container.IsBattlePayItem|C_Container.IsBattlePayItem]](<span class="apiarg">containerIndex, slotIndex</span>) : <span class="apiret">isBattlePayItem</span>
: [[API C_Container.IsContainerFiltered|C_Container.IsContainerFiltered]](<span class="apiarg">containerIndex</span>) : <span class="apiret">isFiltered</span>
: [[API C_Container.PickupContainerItem|C_Container.PickupContainerItem]](<span class="apiarg">containerIndex, slotIndex</span>)
: [[API C_Container.PlayerHasHearthstone|C_Container.PlayerHasHearthstone]]() : <span class="apiret">itemID</span>
: [[API C_Container.SetBackpackAutosortDisabled|C_Container.SetBackpackAutosortDisabled]](<span class="apiarg">disable</span>)
: [[API C_Container.SetBackpackSellJunkDisabled|C_Container.SetBackpackSellJunkDisabled]](<span class="apiarg">disable</span>)
: [[API C_Container.SetBagPortraitTexture|C_Container.SetBagPortraitTexture]](<span class="apiarg">texture, bagIndex</span>)
: [[API C_Container.SetBagSlotFlag|C_Container.SetBagSlotFlag]](<span class="apiarg">bagIndex, flag, isSet</span>)
: [[API C_Container.SetBankAutosortDisabled|C_Container.SetBankAutosortDisabled]](<span class="apiarg">disable</span>)
: [[API C_Container.SetInsertItemsLeftToRight|C_Container.SetInsertItemsLeftToRight]](<span class="apiarg">enable</span>)
: [[API C_Container.SetItemSearch|C_Container.SetItemSearch]](<span class="apiarg">searchString</span>)
: [[API C_Container.SetSortBagsRightToLeft|C_Container.SetSortBagsRightToLeft]](<span class="apiarg">enable</span>)
: [[API C_Container.ShowContainerSellCursor|C_Container.ShowContainerSellCursor]](<span class="apiarg">containerIndex, slotIndex</span>)
: [[API C_Container.SocketContainerItem|C_Container.SocketContainerItem]](<span class="apiarg">containerIndex, slotIndex</span>) : <span class="apiret">success</span>
: [[API C_Container.SortAccountBankBags|C_Container.SortAccountBankBags]]()
: [[API C_Container.SortBags|C_Container.SortBags]]()
: [[API C_Container.SortBankBags|C_Container.SortBankBags]]()
: [[API C_Container.SortReagentBankBags|C_Container.SortReagentBankBags]]()
: [[API C_Container.SplitContainerItem|C_Container.SplitContainerItem]](<span class="apiarg">containerIndex, slotIndex, amount</span>)
: [[API C_Container.UseContainerItem|C_Container.UseContainerItem]](<span class="apiarg">containerIndex, slotIndex [, unitToken [, bankType [, reagentBankOpen]]]</span>)
: [[API C_Container.UseHearthstone|C_Container.UseHearthstone]]() : <span class="apiret">used</span>

==C_ContentTracking==
: [[API C_ContentTracking.GetBestMapForTrackable|C_ContentTracking.GetBestMapForTrackable]](<span class="apiarg">trackableType, trackableID [, ignoreWaypoint]</span>) : <span class="apiret">result, mapID</span>
: [[API C_ContentTracking.GetCollectableSourceTrackingEnabled|C_ContentTracking.GetCollectableSourceTrackingEnabled]]() : <span class="apiret">isEnabled</span>
: [[API C_ContentTracking.GetCollectableSourceTypes|C_ContentTracking.GetCollectableSourceTypes]]() : <span class="apiret">collectableSourceTypes</span>
: [[API C_ContentTracking.GetCurrentTrackingTarget|C_ContentTracking.GetCurrentTrackingTarget]](<span class="apiarg">type, id</span>) : <span class="apiret">targetType, targetID</span>
: [[API C_ContentTracking.GetEncounterTrackingInfo|C_ContentTracking.GetEncounterTrackingInfo]](<span class="apiarg">journalEncounterID</span>) : <span class="apiret">trackingInfo</span>
: [[API C_ContentTracking.GetNextWaypointForTrackable|C_ContentTracking.GetNextWaypointForTrackable]](<span class="apiarg">trackableType, trackableID, uiMapID</span>) : <span class="apiret">result, mapInfo</span>
: [[API C_ContentTracking.GetObjectiveText|C_ContentTracking.GetObjectiveText]](<span class="apiarg">targetType, targetID [, includeHyperlinks]</span>) : <span class="apiret">objectiveText</span>
: [[API C_ContentTracking.GetTitle|C_ContentTracking.GetTitle]](<span class="apiarg">trackableType, trackableID</span>) : <span class="apiret">title</span>
: [[API C_ContentTracking.GetTrackablesOnMap|C_ContentTracking.GetTrackablesOnMap]](<span class="apiarg">trackableType, uiMapID</span>) : <span class="apiret">result, trackableMapInfos</span>
: [[API C_ContentTracking.GetTrackedIDs|C_ContentTracking.GetTrackedIDs]](<span class="apiarg">trackableType</span>) : <span class="apiret">entryIDs</span>
: [[API C_ContentTracking.GetVendorTrackingInfo|C_ContentTracking.GetVendorTrackingInfo]](<span class="apiarg">collectableEntryID</span>) : <span class="apiret">vendorTrackingInfo</span>
: [[API C_ContentTracking.GetWaypointText|C_ContentTracking.GetWaypointText]](<span class="apiarg">trackableType, trackableID</span>) : <span class="apiret">waypointText</span>
: [[API C_ContentTracking.IsNavigable|C_ContentTracking.IsNavigable]](<span class="apiarg">trackableType, trackableID</span>) : <span class="apiret">result, isNavigable</span>
: [[API C_ContentTracking.IsTrackable|C_ContentTracking.IsTrackable]](<span class="apiarg">type, id</span>) : <span class="apiret">isTrackable</span>
: [[API C_ContentTracking.IsTracking|C_ContentTracking.IsTracking]](<span class="apiarg">type, id</span>) : <span class="apiret">isTracking</span>
: [[API C_ContentTracking.StartTracking|C_ContentTracking.StartTracking]](<span class="apiarg">type, id</span>) : <span class="apiret">error</span>
: [[API C_ContentTracking.StopTracking|C_ContentTracking.StopTracking]](<span class="apiarg">type, id, stopType</span>)
: [[API C_ContentTracking.ToggleTracking|C_ContentTracking.ToggleTracking]](<span class="apiarg">type, id, stopType</span>) : <span class="apiret">error</span>

==C_CraftingOrders==
: [[API C_CraftingOrders.AreOrderNotesDisabled|C_CraftingOrders.AreOrderNotesDisabled]]() : <span class="apiret">areNotesDisabled</span>
: [[API C_CraftingOrders.CalculateCraftingOrderPostingFee|C_CraftingOrders.CalculateCraftingOrderPostingFee]](<span class="apiarg">skillLineAbilityID, orderType, orderDuration</span>) : <span class="apiret">deposit</span>
: [[API C_CraftingOrders.CancelOrder|C_CraftingOrders.CancelOrder]](<span class="apiarg">orderID</span>)
: [[API C_CraftingOrders.CanOrderSkillAbility|C_CraftingOrders.CanOrderSkillAbility]](<span class="apiarg">skillLineAbilityID</span>) : <span class="apiret">canOrder</span>
: [[API C_CraftingOrders.ClaimOrder|C_CraftingOrders.ClaimOrder]](<span class="apiarg">orderID, profession</span>)
: [[API C_CraftingOrders.CloseCrafterCraftingOrders|C_CraftingOrders.CloseCrafterCraftingOrders]]()
: [[API C_CraftingOrders.CloseCustomerCraftingOrders|C_CraftingOrders.CloseCustomerCraftingOrders]]()
: [[API C_CraftingOrders.FulfillOrder|C_CraftingOrders.FulfillOrder]](<span class="apiarg">orderID, crafterNote, profession</span>)
: [[API C_CraftingOrders.GetClaimedOrder|C_CraftingOrders.GetClaimedOrder]]() : <span class="apiret">order</span>
: [[API C_CraftingOrders.GetCrafterBuckets|C_CraftingOrders.GetCrafterBuckets]]() : <span class="apiret">buckets</span>
: [[API C_CraftingOrders.GetCrafterOrders|C_CraftingOrders.GetCrafterOrders]]() : <span class="apiret">orders</span>
: [[API C_CraftingOrders.GetCraftingOrderTime|C_CraftingOrders.GetCraftingOrderTime]]() : <span class="apiret">time</span>
: [[API C_CraftingOrders.GetCustomerCategories|C_CraftingOrders.GetCustomerCategories]]() : <span class="apiret">categories</span>
: [[API C_CraftingOrders.GetCustomerOptions|C_CraftingOrders.GetCustomerOptions]](<span class="apiarg">params</span>) : <span class="apiret">results</span>
: [[API C_CraftingOrders.GetCustomerOrders|C_CraftingOrders.GetCustomerOrders]]() : <span class="apiret">customerOrders</span>
: [[API C_CraftingOrders.GetDefaultOrdersSkillLine|C_CraftingOrders.GetDefaultOrdersSkillLine]]() : <span class="apiret">skillLineID</span>
: [[API C_CraftingOrders.GetMyOrders|C_CraftingOrders.GetMyOrders]]() : <span class="apiret">myOrders</span>
: [[API C_CraftingOrders.GetNumFavoriteCustomerOptions|C_CraftingOrders.GetNumFavoriteCustomerOptions]]() : <span class="apiret">numFavorites</span>
: [[API C_CraftingOrders.GetOrderClaimInfo|C_CraftingOrders.GetOrderClaimInfo]](<span class="apiarg">profession</span>) : <span class="apiret">claimInfo</span>
: [[API C_CraftingOrders.GetPersonalOrdersInfo|C_CraftingOrders.GetPersonalOrdersInfo]]() : <span class="apiret">infos</span>
: [[API C_CraftingOrders.HasFavoriteCustomerOptions|C_CraftingOrders.HasFavoriteCustomerOptions]]() : <span class="apiret">hasFavorites</span>
: [[API C_CraftingOrders.IsCustomerOptionFavorited|C_CraftingOrders.IsCustomerOptionFavorited]](<span class="apiarg">recipeID</span>) : <span class="apiret">favorited</span>
: [[API C_CraftingOrders.ListMyOrders|C_CraftingOrders.ListMyOrders]](<span class="apiarg">request</span>)
: [[API C_CraftingOrders.OpenCrafterCraftingOrders|C_CraftingOrders.OpenCrafterCraftingOrders]]()
: [[API C_CraftingOrders.OpenCustomerCraftingOrders|C_CraftingOrders.OpenCustomerCraftingOrders]]()
: [[API C_CraftingOrders.OrderCanBeRecrafted|C_CraftingOrders.OrderCanBeRecrafted]](<span class="apiarg">orderID</span>) : <span class="apiret">recraftable</span>
: [[API C_CraftingOrders.ParseCustomerOptions|C_CraftingOrders.ParseCustomerOptions]]()
: [[API C_CraftingOrders.PlaceNewOrder|C_CraftingOrders.PlaceNewOrder]](<span class="apiarg">orderInfo</span>)
: [[API C_CraftingOrders.RejectOrder|C_CraftingOrders.RejectOrder]](<span class="apiarg">orderID, crafterNote, profession</span>)
: [[API C_CraftingOrders.ReleaseOrder|C_CraftingOrders.ReleaseOrder]](<span class="apiarg">orderID, profession</span>)
: [[API C_CraftingOrders.RequestCrafterOrders|C_CraftingOrders.RequestCrafterOrders]](<span class="apiarg">request</span>) {{apitag|noscript}}
: [[API C_CraftingOrders.RequestCustomerOrders|C_CraftingOrders.RequestCustomerOrders]](<span class="apiarg">request</span>)
: [[API C_CraftingOrders.SetCustomerOptionFavorited|C_CraftingOrders.SetCustomerOptionFavorited]](<span class="apiarg">recipeID, favorited</span>)
: [[API C_CraftingOrders.ShouldShowCraftingOrderTab|C_CraftingOrders.ShouldShowCraftingOrderTab]]() : <span class="apiret">showTab</span>
: [[API C_CraftingOrders.SkillLineHasOrders|C_CraftingOrders.SkillLineHasOrders]](<span class="apiarg">skillLineID</span>) : <span class="apiret">hasOrders</span>
: [[API C_CraftingOrders.UpdateIgnoreList|C_CraftingOrders.UpdateIgnoreList]]()

==C_CurrencyInfo==
[[Currencies]] were added in [[Patch 3.0.2]].
: [[API C_CurrencyInfo.CanTransferCurrency|C_CurrencyInfo.CanTransferCurrency]](<span class="apiarg">currencyID</span>) : <span class="apiret">canTransferCurrency, failureReason</span>
: [[API C_CurrencyInfo.DoesWarModeBonusApply|C_CurrencyInfo.DoesWarModeBonusApply]](<span class="apiarg">currencyID</span>) : <span class="apiret">warModeApplies, limitOncePerTooltip</span>
: [[API C_CurrencyInfo.ExpandCurrencyList|C_CurrencyInfo.ExpandCurrencyList]](<span class="apiarg">index, expand</span>) - Expands/collapses a currency list header.
: [[API C_CurrencyInfo.FetchCurrencyDataFromAccountCharacters|C_CurrencyInfo.FetchCurrencyDataFromAccountCharacters]](<span class="apiarg">currencyID</span>) : <span class="apiret">accountCurrencyData</span>
: [[API C_CurrencyInfo.FetchCurrencyTransferTransactions|C_CurrencyInfo.FetchCurrencyTransferTransactions]]() : <span class="apiret">currencyTransferTransactions</span>
: [[API C_CurrencyInfo.GetAzeriteCurrencyID|C_CurrencyInfo.GetAzeriteCurrencyID]]() : <span class="apiret">azeriteCurrencyID</span>
: [[API C_CurrencyInfo.GetBackpackCurrencyInfo|C_CurrencyInfo.GetBackpackCurrencyInfo]](<span class="apiarg">index</span>) : <span class="apiret">info</span> - Returns info for a tracked currency in the backpack.
: [[API C_CurrencyInfo.GetBasicCurrencyInfo|C_CurrencyInfo.GetBasicCurrencyInfo]](<span class="apiarg">currencyType [, quantity]</span>) : <span class="apiret">info</span>
: [[API C_CurrencyInfo.GetCoinIcon|C_CurrencyInfo.GetCoinIcon]](<span class="apiarg">amount</span>) : <span class="apiret">result</span>
: [[API C_CurrencyInfo.GetCoinText|C_CurrencyInfo.GetCoinText]](<span class="apiarg">amount [, separator]</span>) : <span class="apiret">result</span> - Breaks up an amount of money into gold/silver/copper.
: [[API C_CurrencyInfo.GetCoinTextureString|C_CurrencyInfo.GetCoinTextureString]](<span class="apiarg">amount [, fontHeight]</span>) : <span class="apiret">result</span> - Breaks up an amount of money into gold/silver/copper with icons.
: [[API C_CurrencyInfo.GetCostToTransferCurrency|C_CurrencyInfo.GetCostToTransferCurrency]](<span class="apiarg">currencyID, quantity</span>) : <span class="apiret">totalQuantityConsumed</span>
: [[API C_CurrencyInfo.GetCurrencyContainerInfo|C_CurrencyInfo.GetCurrencyContainerInfo]](<span class="apiarg">currencyType, quantity</span>) : <span class="apiret">info</span>
: [[API C_CurrencyInfo.GetCurrencyDescription|C_CurrencyInfo.GetCurrencyDescription]](<span class="apiarg">type</span>) : <span class="apiret">description</span>
: [[API C_CurrencyInfo.GetCurrencyIDFromLink|C_CurrencyInfo.GetCurrencyIDFromLink]](<span class="apiarg">currencyLink</span>) : <span class="apiret">currencyID</span>
: [[API C_CurrencyInfo.GetCurrencyInfo|C_CurrencyInfo.GetCurrencyInfo]](<span class="apiarg">type</span>) : <span class="apiret">info</span> - Returns info for a currency by ID.
: [[API C_CurrencyInfo.GetCurrencyInfoFromLink|C_CurrencyInfo.GetCurrencyInfoFromLink]](<span class="apiarg">link</span>) : <span class="apiret">info</span> - Returns information about currencies from a link.
: [[API C_CurrencyInfo.GetCurrencyLink|C_CurrencyInfo.GetCurrencyLink]](<span class="apiarg">type [, amount]</span>) : <span class="apiret">link</span> - Returns a currency link.
: [[API C_CurrencyInfo.GetCurrencyListInfo|C_CurrencyInfo.GetCurrencyListInfo]](<span class="apiarg">index</span>) : <span class="apiret">info</span> - Returns info for a currency in the [[currency tab]].
: [[API C_CurrencyInfo.GetCurrencyListLink|C_CurrencyInfo.GetCurrencyListLink]](<span class="apiarg">index</span>) : <span class="apiret">link</span>
: [[API C_CurrencyInfo.GetCurrencyListSize|C_CurrencyInfo.GetCurrencyListSize]]() : <span class="apiret">currencyListSize</span> - Returns the amount of currencies and headers in the currency tab.
: [[API C_CurrencyInfo.GetDragonIslesSuppliesCurrencyID|C_CurrencyInfo.GetDragonIslesSuppliesCurrencyID]]() : <span class="apiret">dragonIslesSuppliesCurrencyID</span>
: [[API C_CurrencyInfo.GetFactionGrantedByCurrency|C_CurrencyInfo.GetFactionGrantedByCurrency]](<span class="apiarg">currencyID</span>) : <span class="apiret">factionID</span> - Gets the faction ID for currency that is immediately converted into reputation with that faction instead.
: [[API C_CurrencyInfo.GetMaxTransferableAmountFromQuantity|C_CurrencyInfo.GetMaxTransferableAmountFromQuantity]](<span class="apiarg">currencyID, requestedQuantity</span>) : <span class="apiret">maxTransferableAmount</span>
: [[API C_CurrencyInfo.GetWarResourcesCurrencyID|C_CurrencyInfo.GetWarResourcesCurrencyID]]() : <span class="apiret">warResourceCurrencyID</span>
: [[API C_CurrencyInfo.IsAccountCharacterCurrencyDataReady|C_CurrencyInfo.IsAccountCharacterCurrencyDataReady]]() : <span class="apiret">isReady</span>
: [[API C_CurrencyInfo.IsAccountTransferableCurrency|C_CurrencyInfo.IsAccountTransferableCurrency]](<span class="apiarg">currencyID</span>) : <span class="apiret">isAccountTransferableCurrency</span>
: [[API C_CurrencyInfo.IsAccountWideCurrency|C_CurrencyInfo.IsAccountWideCurrency]](<span class="apiarg">currencyID</span>) : <span class="apiret">isAccountWideCurrency</span>
: [[API C_CurrencyInfo.IsCurrencyContainer|C_CurrencyInfo.IsCurrencyContainer]](<span class="apiarg">currencyID, quantity</span>) : <span class="apiret">isCurrencyContainer</span>
: [[API C_CurrencyInfo.IsCurrencyTransferTransactionDataReady|C_CurrencyInfo.IsCurrencyTransferTransactionDataReady]]() : <span class="apiret">isReady</span>
: [[API C_CurrencyInfo.PlayerHasMaxQuantity|C_CurrencyInfo.PlayerHasMaxQuantity]](<span class="apiarg">currencyID</span>) : <span class="apiret">hasMaxQuantity</span>
: [[API C_CurrencyInfo.PlayerHasMaxWeeklyQuantity|C_CurrencyInfo.PlayerHasMaxWeeklyQuantity]](<span class="apiarg">currencyID</span>) : <span class="apiret">hasMaxWeeklyQuantity</span>
: [[API C_CurrencyInfo.RequestCurrencyDataForAccountCharacters|C_CurrencyInfo.RequestCurrencyDataForAccountCharacters]]()
: [[API C_CurrencyInfo.RequestCurrencyFromAccountCharacter|C_CurrencyInfo.RequestCurrencyFromAccountCharacter]](<span class="apiarg">sourceCharacterGUID, currencyID, quantity</span>)
: [[API C_CurrencyInfo.SetCurrencyBackpack|C_CurrencyInfo.SetCurrencyBackpack]](<span class="apiarg">index, backpack</span>) - Tracks a currency in the backpack.
: [[API C_CurrencyInfo.SetCurrencyUnused|C_CurrencyInfo.SetCurrencyUnused]](<span class="apiarg">index, unused</span>) - Marks a currency as unused in the currency tab.
: [[API C_Item.GetLimitedCurrencyItemInfo|C_Item.GetLimitedCurrencyItemInfo]](<span class="apiarg">itemInfo</span>) : <span class="apiret">name, icon, quantity, maxQuantity, totalEarned</span>
: [[API GetNumWatchedTokens|GetNumWatchedTokens]]() {{apitag|framexml}} - Returns the number of currently watched currencies.
: [[API GetPlayerTradeCurrency|GetPlayerTradeCurrency]]()
: [[API GetTargetTradeCurrency|GetTargetTradeCurrency]]()
: [[API SetTradeCurrency|SetTradeCurrency]](<span class="apiarg">type, amount</span>)

==C_EditMode==
: [[API C_EditMode.ConvertLayoutInfoToString|C_EditMode.ConvertLayoutInfoToString]](<span class="apiarg">layoutInfo</span>) : <span class="apiret">layoutInfoAsString</span>
: [[API C_EditMode.ConvertStringToLayoutInfo|C_EditMode.ConvertStringToLayoutInfo]](<span class="apiarg">layoutInfoAsString</span>) : <span class="apiret">layoutInfo</span>
: [[API C_EditMode.GetAccountSettings|C_EditMode.GetAccountSettings]]() : <span class="apiret">accountSettings</span>
: [[API C_EditMode.GetLayouts|C_EditMode.GetLayouts]]() : <span class="apiret">layoutInfo</span>
: [[API C_EditMode.IsValidLayoutName|C_EditMode.IsValidLayoutName]](<span class="apiarg">name</span>) : <span class="apiret">isApproved</span>
: [[API C_EditMode.OnEditModeExit|C_EditMode.OnEditModeExit]]()
: [[API C_EditMode.OnLayoutAdded|C_EditMode.OnLayoutAdded]](<span class="apiarg">addedLayoutIndex, activateNewLayout, isLayoutImported</span>)
: [[API C_EditMode.OnLayoutDeleted|C_EditMode.OnLayoutDeleted]](<span class="apiarg">deletedLayoutIndex</span>)
: [[API C_EditMode.SaveLayouts|C_EditMode.SaveLayouts]](<span class="apiarg">saveInfo</span>)
: [[API C_EditMode.SetAccountSetting|C_EditMode.SetAccountSetting]](<span class="apiarg">setting, value</span>)
: [[API C_EditMode.SetActiveLayout|C_EditMode.SetActiveLayout]](<span class="apiarg">activeLayout</span>)

==C_FriendList==
Relates to the [[Friends list]].
: [[API C_FriendList.AddFriend|C_FriendList.AddFriend]](<span class="apiarg">name [, notes]</span>) {{apitag|noscript}} - Adds a friend to your friend list.
: [[API C_FriendList.AddIgnore|C_FriendList.AddIgnore]](<span class="apiarg">name</span>) : <span class="apiret">added</span> - Adds a player to your ignore list.
: [[API C_FriendList.AddOrDelIgnore|C_FriendList.AddOrDelIgnore]](<span class="apiarg">name</span>) - Adds or removes a player to/from the ignore list.
: [[API C_FriendList.AddOrRemoveFriend|C_FriendList.AddOrRemoveFriend]](<span class="apiarg">name, notes</span>) - Adds or removes a player to or from the friends list.
: [[API C_FriendList.DelIgnore|C_FriendList.DelIgnore]](<span class="apiarg">name</span>) : <span class="apiret">removed</span> - Removes a player from your ignore list.
: [[API C_FriendList.DelIgnoreByIndex|C_FriendList.DelIgnoreByIndex]](<span class="apiarg">index</span>) - Removes a player from your ignore list.
: [[API C_FriendList.GetFriendInfo|C_FriendList.GetFriendInfo]](<span class="apiarg">name</span>) : <span class="apiret">info</span> - Retrieves information about a person on your friends list.
: [[API C_FriendList.GetFriendInfoByIndex|C_FriendList.GetFriendInfoByIndex]](<span class="apiarg">index</span>) : <span class="apiret">info</span> - Retrieves information about a person on your friends list.
: [[API C_FriendList.GetIgnoreName|C_FriendList.GetIgnoreName]](<span class="apiarg">index</span>) : <span class="apiret">name</span> - Returns the name of a currently ignored player.
: [[API C_FriendList.GetNumFriends|C_FriendList.GetNumFriends]]() : <span class="apiret">numFriends</span> - Returns how many friends you have.
: [[API C_FriendList.GetNumIgnores|C_FriendList.GetNumIgnores]]() : <span class="apiret">numIgnores</span> - Returns the number of entries on your ignore list.
: [[API C_FriendList.GetNumOnlineFriends|C_FriendList.GetNumOnlineFriends]]() : <span class="apiret">numOnline</span> - Returns the number of online friends.
: [[API C_FriendList.GetSelectedFriend|C_FriendList.GetSelectedFriend]]() : <span class="apiret">index</span> - Returns the index of the currently selected friend.
: [[API C_FriendList.GetSelectedIgnore|C_FriendList.GetSelectedIgnore]]() : <span class="apiret">index</span> - Returns the currently selected index in the ignore listing.
: [[API C_FriendList.IsFriend|C_FriendList.IsFriend]](<span class="apiarg">guid</span>) : <span class="apiret">isFriend</span> - Returns whether a character is your friend.
: [[API C_FriendList.IsIgnored|C_FriendList.IsIgnored]](<span class="apiarg">token</span>) : <span class="apiret">isIgnored</span> - Returns whether a character is being ignored by you.
: [[API C_FriendList.IsIgnoredByGuid|C_FriendList.IsIgnoredByGuid]](<span class="apiarg">guid</span>) : <span class="apiret">isIgnored</span> - Returns whether a character is being ignored by you.
: [[API C_FriendList.IsOnIgnoredList|C_FriendList.IsOnIgnoredList]](<span class="apiarg">token</span>) : <span class="apiret">isIgnored</span>
: [[API C_FriendList.RemoveFriend|C_FriendList.RemoveFriend]](<span class="apiarg">name</span>) : <span class="apiret">removed</span> - Removes a friend from the friends list.
: [[API C_FriendList.RemoveFriendByIndex|C_FriendList.RemoveFriendByIndex]](<span class="apiarg">index</span>) - Removes a friend from the friends list.
: [[API C_FriendList.SetFriendNotes|C_FriendList.SetFriendNotes]](<span class="apiarg">name, notes</span>) : <span class="apiret">found</span> - Sets the note text for a friend.
: [[API C_FriendList.SetFriendNotesByIndex|C_FriendList.SetFriendNotesByIndex]](<span class="apiarg">index, notes</span>) - Sets the note text for a friend.
: [[API C_FriendList.SetSelectedFriend|C_FriendList.SetSelectedFriend]](<span class="apiarg">index</span>) - Updates the current selected friend.
: [[API C_FriendList.SetSelectedIgnore|C_FriendList.SetSelectedIgnore]](<span class="apiarg">index</span>) - Sets the currently selected ignore entry.
: [[API C_FriendList.ShowFriends|C_FriendList.ShowFriends]]() - Requests updated friends information from server.

Relates to the [[Who List]].
: [[API C_FriendList.GetNumWhoResults|C_FriendList.GetNumWhoResults]]() : <span class="apiret">numWhos, totalNumWhos</span> - Get the number of entries resulting from your most recent /who query.
: [[API C_FriendList.GetWhoInfo|C_FriendList.GetWhoInfo]](<span class="apiarg">index</span>) : <span class="apiret">info</span> - Retrieves info about a character on your current /who list.
: [[API C_FriendList.SendWho|C_FriendList.SendWho]](<span class="apiarg">filter [, origin]</span>) {{apitag|hwevent}} - Requests a list of other online players.
: [[API C_FriendList.SetWhoToUi|C_FriendList.SetWhoToUi]](<span class="apiarg">whoToUi</span>) - Sets how the result of a [[MACRO who|/who]] request will be delivered.
: [[API C_FriendList.SortWho|C_FriendList.SortWho]](<span class="apiarg">sorting</span>) - Sorts the last [[MACRO_who|/who]] reply received by the client.

==C_GameEnvironmentManager==
: [[API C_GameEnvironmentManager.GetCurrentEventRealmQueues|C_GameEnvironmentManager.GetCurrentEventRealmQueues]]() : <span class="apiret">gameEnvironment</span>
: [[API C_GameEnvironmentManager.GetCurrentGameEnvironment|C_GameEnvironmentManager.GetCurrentGameEnvironment]]() : <span class="apiret">gameEnvironment</span>
: [[API C_GameEnvironmentManager.RequestGameEnvironment|C_GameEnvironmentManager.RequestGameEnvironment]](<span class="apiarg">gameEnvironment</span>)

==C_GameModeManager==
: [[API C_GameModeManager.GetCurrentGameMode|C_GameModeManager.GetCurrentGameMode]]() : <span class="apiret">gameMode</span>

==C_GamePad==
Native gamepad support was added in [[Patch 9.0.1]], where previously [https://github.com/topher-au/WoWmapper WoWmapper] was needed.
: [[API C_GamePad.AddSDLMapping|C_GamePad.AddSDLMapping]](<span class="apiarg">platform, mapping</span>) : <span class="apiret">success</span>
: [[API C_GamePad.ApplyConfigs|C_GamePad.ApplyConfigs]]()
: [[API C_GamePad.AxisIndexToConfigName|C_GamePad.AxisIndexToConfigName]](<span class="apiarg">axisIndex</span>) : <span class="apiret">configName</span>
: [[API C_GamePad.ButtonBindingToIndex|C_GamePad.ButtonBindingToIndex]](<span class="apiarg">bindingName</span>) : <span class="apiret">buttonIndex</span>
: [[API C_GamePad.ButtonIndexToBinding|C_GamePad.ButtonIndexToBinding]](<span class="apiarg">buttonIndex</span>) : <span class="apiret">bindingName</span>
: [[API C_GamePad.ButtonIndexToConfigName|C_GamePad.ButtonIndexToConfigName]](<span class="apiarg">buttonIndex</span>) : <span class="apiret">configName</span>
: [[API C_GamePad.ClearLedColor|C_GamePad.ClearLedColor]]()
: [[API C_GamePad.DeleteConfig|C_GamePad.DeleteConfig]](<span class="apiarg">configID</span>)
: [[API C_GamePad.GetActiveDeviceID|C_GamePad.GetActiveDeviceID]]() : <span class="apiret">deviceID</span>
: [[API C_GamePad.GetAllConfigIDs|C_GamePad.GetAllConfigIDs]]() : <span class="apiret">configIDs</span>
: [[API C_GamePad.GetAllDeviceIDs|C_GamePad.GetAllDeviceIDs]]() : <span class="apiret">deviceIDs</span>
: [[API C_GamePad.GetCombinedDeviceID|C_GamePad.GetCombinedDeviceID]]() : <span class="apiret">deviceID</span>
: [[API C_GamePad.GetConfig|C_GamePad.GetConfig]](<span class="apiarg">configID</span>) : <span class="apiret">config</span>
: [[API C_GamePad.GetDeviceMappedState|C_GamePad.GetDeviceMappedState]](<span class="apiarg">[deviceID]</span>) : <span class="apiret">state</span>
: [[API C_GamePad.GetDeviceRawState|C_GamePad.GetDeviceRawState]](<span class="apiarg">deviceID</span>) : <span class="apiret">rawState</span>
: [[API C_GamePad.GetLedColor|C_GamePad.GetLedColor]]() : <span class="apiret">color</span>
: [[API C_GamePad.GetPowerLevel|C_GamePad.GetPowerLevel]](<span class="apiarg">[deviceID]</span>) : <span class="apiret">powerLevel</span>
: [[API C_GamePad.IsEnabled|C_GamePad.IsEnabled]]() : <span class="apiret">enabled</span>
: [[API C_GamePad.SetConfig|C_GamePad.SetConfig]](<span class="apiarg">config</span>)
: [[API C_GamePad.SetLedColor|C_GamePad.SetLedColor]](<span class="apiarg">color</span>)
: [[API C_GamePad.SetVibration|C_GamePad.SetVibration]](<span class="apiarg">vibrationType, intensity</span>)
: [[API C_GamePad.StickIndexToConfigName|C_GamePad.StickIndexToConfigName]](<span class="apiarg">stickIndex</span>) : <span class="apiret">configName</span>
: [[API C_GamePad.StopVibration|C_GamePad.StopVibration]]()
: [[API CanAutoSetGamePadCursorControl|CanAutoSetGamePadCursorControl]]()
: [[API CanGamePadControlCursor|CanGamePadControlCursor]]()
: [[API IsBindingForGamePad|IsBindingForGamePad]](<span class="apiarg">KEY</span>)
: [[API IsGamePadCursorControlEnabled|IsGamePadCursorControlEnabled]]()
: [[API IsGamePadFreelookEnabled|IsGamePadFreelookEnabled]]()
: [[API IsUsingGamepad|IsUsingGamepad]]() : <span class="apiret">down</span>
: [[API SetGamePadCursorControl|SetGamePadCursorControl]]()
: [[API SetGamePadFreeLook|SetGamePadFreeLook]]()

==C_GameRules==
: [[API C_GameRules.GetGameRuleAsFloat|C_GameRules.GetGameRuleAsFloat]](<span class="apiarg">gameRule [, decimalPlaces]</span>) : <span class="apiret">value</span>
: [[API C_GameRules.IsGameRuleActive|C_GameRules.IsGameRuleActive]](<span class="apiarg">gameRule</span>) : <span class="apiret">isActive</span>

==C_Heirloom==
[[Heirloom]]s were added in [[Patch 3.0.3]] and added to the Collections window in [[Patch 6.1.0]]
: [[API C_Heirloom.CanHeirloomUpgradeFromPending|C_Heirloom.CanHeirloomUpgradeFromPending]](<span class="apiarg">itemID</span>) : <span class="apiret">canUpgrade</span>
: [[API C_Heirloom.CreateHeirloom|C_Heirloom.CreateHeirloom]](<span class="apiarg">itemID</span>)
: [[API C_Heirloom.GetClassAndSpecFilters|C_Heirloom.GetClassAndSpecFilters]]()
: [[API C_Heirloom.GetCollectedHeirloomFilter|C_Heirloom.GetCollectedHeirloomFilter]]()
: [[API C_Heirloom.GetHeirloomInfo|C_Heirloom.GetHeirloomInfo]](<span class="apiarg">itemID</span>) : <span class="apiret">name, itemEquipLoc, isPvP, itemTexture, upgradeLevel, source, searchFiltered, effectiveLevel, minLevel, maxLevel</span>
: [[API C_Heirloom.GetHeirloomItemIDFromDisplayedIndex|C_Heirloom.GetHeirloomItemIDFromDisplayedIndex]](<span class="apiarg">heirloomIndex</span>)
: [[API C_Heirloom.GetHeirloomItemIDs|C_Heirloom.GetHeirloomItemIDs]]() : <span class="apiret">itemIDs</span>
: [[API C_Heirloom.GetHeirloomLink|C_Heirloom.GetHeirloomLink]](<span class="apiarg">itemID</span>)
: [[API C_Heirloom.GetHeirloomMaxUpgradeLevel|C_Heirloom.GetHeirloomMaxUpgradeLevel]](<span class="apiarg">itemID</span>)
: [[API C_Heirloom.GetHeirloomSourceFilter|C_Heirloom.GetHeirloomSourceFilter]](<span class="apiarg">source</span>)
: [[API C_Heirloom.GetNumDisplayedHeirlooms|C_Heirloom.GetNumDisplayedHeirlooms]]()
: [[API C_Heirloom.GetNumHeirlooms|C_Heirloom.GetNumHeirlooms]]()
: [[API C_Heirloom.GetNumKnownHeirlooms|C_Heirloom.GetNumKnownHeirlooms]]()
: [[API C_Heirloom.GetUncollectedHeirloomFilter|C_Heirloom.GetUncollectedHeirloomFilter]]()
: [[API C_Heirloom.IsItemHeirloom|C_Heirloom.IsItemHeirloom]](<span class="apiarg">itemID</span>)
: [[API C_Heirloom.IsPendingHeirloomUpgrade|C_Heirloom.IsPendingHeirloomUpgrade]]()
: [[API C_Heirloom.PlayerHasHeirloom|C_Heirloom.PlayerHasHeirloom]](<span class="apiarg">itemID</span>)
: [[API C_Heirloom.SetClassAndSpecFilters|C_Heirloom.SetClassAndSpecFilters]](<span class="apiarg">classID, specID</span>)
: [[API C_Heirloom.SetCollectedHeirloomFilter|C_Heirloom.SetCollectedHeirloomFilter]](<span class="apiarg">boolean</span>)
: [[API C_Heirloom.SetHeirloomSourceFilter|C_Heirloom.SetHeirloomSourceFilter]](<span class="apiarg">source, filtered</span>)
: [[API C_Heirloom.SetSearch|C_Heirloom.SetSearch]](<span class="apiarg">searchValue</span>)
: [[API C_Heirloom.SetUncollectedHeirloomFilter|C_Heirloom.SetUncollectedHeirloomFilter]](<span class="apiarg">boolean</span>)
: [[API C_Heirloom.ShouldShowHeirloomHelp|C_Heirloom.ShouldShowHeirloomHelp]]()
: [[API C_Heirloom.UpgradeHeirloom|C_Heirloom.UpgradeHeirloom]](<span class="apiarg">itemID</span>)

==C_HeirloomInfo==
: [[API C_HeirloomInfo.AreAllCollectionFiltersChecked|C_HeirloomInfo.AreAllCollectionFiltersChecked]]() : <span class="apiret">areAllCollectionFiltersChecked</span>
: [[API C_HeirloomInfo.AreAllSourceFiltersChecked|C_HeirloomInfo.AreAllSourceFiltersChecked]]() : <span class="apiret">areAllSourceFiltersChecked</span>
: [[API C_HeirloomInfo.IsHeirloomSourceValid|C_HeirloomInfo.IsHeirloomSourceValid]](<span class="apiarg">source</span>) : <span class="apiret">isHeirloomSourceValid</span>
: [[API C_HeirloomInfo.IsUsingDefaultFilters|C_HeirloomInfo.IsUsingDefaultFilters]]() : <span class="apiret">isUsingDefaultFilters</span>
: [[API C_HeirloomInfo.SetAllCollectionFilters|C_HeirloomInfo.SetAllCollectionFilters]](<span class="apiarg">checked</span>)
: [[API C_HeirloomInfo.SetAllSourceFilters|C_HeirloomInfo.SetAllSourceFilters]](<span class="apiarg">checked</span>)
: [[API C_HeirloomInfo.SetDefaultFilters|C_HeirloomInfo.SetDefaultFilters]]()

==C_Item==
: [[API C_Item.ActionBindsItem|C_Item.ActionBindsItem]]() - Confirms this will bind this item to you.
: [[API C_Item.BindEnchant|C_Item.BindEnchant]]() - Confirms that enchanting an item will make it soulbound.
: [[API C_Item.CanBeRefunded|C_Item.CanBeRefunded]](<span class="apiarg">itemLocation</span>) : <span class="apiret">canBeRefunded</span>
: [[API C_Item.CanViewItemPowers|C_Item.CanViewItemPowers]](<span class="apiarg">itemLoc</span>) : <span class="apiret">isItemViewable</span>
: [[API C_Item.ConfirmBindOnUse|C_Item.ConfirmBindOnUse]]() {{apitag|protected}}
: [[API C_Item.ConfirmNoRefundOnUse|C_Item.ConfirmNoRefundOnUse]]() {{apitag|protected}}
: [[API C_Item.ConfirmOnUse|C_Item.ConfirmOnUse]]() - Confirms you want to use the item.
: [[API C_Item.DoesItemContainSpec|C_Item.DoesItemContainSpec]](<span class="apiarg">itemInfo, classID [, specID]</span>) : <span class="apiret">result</span>
: [[API C_Item.DoesItemExist|C_Item.DoesItemExist]](<span class="apiarg">emptiableItemLocation</span>) : <span class="apiret">itemExists</span>
: [[API C_Item.DoesItemExistByID|C_Item.DoesItemExistByID]](<span class="apiarg">itemInfo</span>) : <span class="apiret">itemExists</span>
: [[API C_Item.DoesItemMatchBonusTreeReplacement|C_Item.DoesItemMatchBonusTreeReplacement]](<span class="apiarg">itemLoc</span>) : <span class="apiret">matchesBonusTree</span>
: [[API C_Item.DoesItemMatchTargetEnchantingSpell|C_Item.DoesItemMatchTargetEnchantingSpell]](<span class="apiarg">itemLoc</span>) : <span class="apiret">matchesTargetEnchantingSpell</span>
: [[API C_Item.DoesItemMatchTrackJump|C_Item.DoesItemMatchTrackJump]](<span class="apiarg">itemLoc</span>) : <span class="apiret">matchesTrackJump</span>
: [[API C_Item.DropItemOnUnit|C_Item.DropItemOnUnit]](<span class="apiarg">unitGUID</span>) - Drops an item from the cursor onto a unit, i.e. to initiate a trade.
: [[API C_Item.EndBoundTradeable|C_Item.EndBoundTradeable]](<span class="apiarg">type</span>) - Confirms this will make this item non-tradeable.
: [[API C_Item.EndRefund|C_Item.EndRefund]](<span class="apiarg">type</span>) - Confirms this will make this item non-refundable.
: [[API C_Item.EquipItemByName|C_Item.EquipItemByName]](<span class="apiarg">itemInfo [, dstSlot]</span>) - Equips an item, optionally into a specified slot.
: [[API C_Item.GetCurrentItemLevel|C_Item.GetCurrentItemLevel]](<span class="apiarg">itemLocation</span>) : <span class="apiret">currentItemLevel</span>
: [[API C_Item.GetDetailedItemLevelInfo|C_Item.GetDetailedItemLevelInfo]](<span class="apiarg">itemInfo</span>) : <span class="apiret">actualItemLevel, previewLevel, sparseItemLevel</span> - Returns detailed item level info.
: [[API C_Item.GetFirstTriggeredSpellForItem|C_Item.GetFirstTriggeredSpellForItem]](<span class="apiarg">itemID, itemQuality</span>) : <span class="apiret">spellID</span>
: [[API C_Item.GetItemChildInfo|C_Item.GetItemChildInfo]](<span class="apiarg">itemInfo [, slotID]</span>) : <span class="apiret">result</span>
: [[API C_Item.GetItemClassInfo|C_Item.GetItemClassInfo]](<span class="apiarg">itemClassID</span>) : <span class="apiret">result</span> - Returns the name of the item type.
: [[API C_Item.GetItemConversionOutputIcon|C_Item.GetItemConversionOutputIcon]](<span class="apiarg">itemLoc</span>) : <span class="apiret">icon</span>
: [[API C_Item.GetItemCooldown|C_Item.GetItemCooldown]](<span class="apiarg">itemInfo</span>) : <span class="apiret">startTimeSeconds, durationSeconds, enableCooldownTimer</span> - Returns cooldown info for an item ID.
: [[API C_Item.GetItemCount|C_Item.GetItemCount]](<span class="apiarg">itemInfo [, includeBank [, includeUses [, includeReagentBank [, includeAccountBank]]]]</span>) : <span class="apiret">count</span> - Returns the number (or available charges) of an item in the inventory.
: [[API C_Item.GetItemCreationContext|C_Item.GetItemCreationContext]](<span class="apiarg">itemInfo</span>) : <span class="apiret">itemID, creationContext</span>
: [[API C_Item.GetItemFamily|C_Item.GetItemFamily]](<span class="apiarg">itemInfo</span>) : <span class="apiret">result</span> - Returns the bag type that an item can go into, or for bags the type of items that it can contain.
: [[API C_Item.GetItemGem|C_Item.GetItemGem]](<span class="apiarg">hyperlink, index</span>) : <span class="apiret">gemName, gemLink</span>
: [[API C_Item.GetItemGemID|C_Item.GetItemGemID]](<span class="apiarg">itemInfo, index</span>) : <span class="apiret">gemID</span>
: [[API C_Item.GetItemGUID|C_Item.GetItemGUID]](<span class="apiarg">itemLocation</span>) : <span class="apiret">itemGUID</span>
: [[API C_Item.GetItemIcon|C_Item.GetItemIcon]](<span class="apiarg">itemLocation</span>) : <span class="apiret">icon</span> - Returns the icon texture for an item.
: [[API C_Item.GetItemIconByID|C_Item.GetItemIconByID]](<span class="apiarg">itemInfo</span>) : <span class="apiret">icon</span>
: [[API C_Item.GetItemID|C_Item.GetItemID]](<span class="apiarg">itemLocation</span>) : <span class="apiret">itemID</span>
: [[API C_Item.GetItemIDByGUID|C_Item.GetItemIDByGUID]](<span class="apiarg">itemGUID</span>) : <span class="apiret">itemID</span>
: [[API C_Item.GetItemIDForItemInfo|C_Item.GetItemIDForItemInfo]](<span class="apiarg">itemInfo</span>) : <span class="apiret">itemID</span>
: [[API C_Item.GetItemInfo|C_Item.GetItemInfo]](<span class="apiarg">itemInfo</span>) : <span class="apiret">itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture, sellPrice, classID, subclassID, bindType, expansionID, setID, isCraftingReagent</span> - Returns info for an item.
: [[API C_Item.GetItemInfoInstant|C_Item.GetItemInfoInstant]](<span class="apiarg">itemInfo</span>) : <span class="apiret">itemID, itemType, itemSubType, itemEquipLoc, icon, classID, subClassID</span> - Returns readily available info for an item.
: [[API C_Item.GetItemInventorySlotInfo|C_Item.GetItemInventorySlotInfo]](<span class="apiarg">inventorySlot</span>) : <span class="apiret">result</span>
: [[API C_Item.GetItemInventorySlotKey|C_Item.GetItemInventorySlotKey]](<span class="apiarg">inventorySlot</span>) : <span class="apiret">result</span>
: [[API C_Item.GetItemInventoryType|C_Item.GetItemInventoryType]](<span class="apiarg">itemLocation</span>) : <span class="apiret">inventoryType</span>
: [[API C_Item.GetItemInventoryTypeByID|C_Item.GetItemInventoryTypeByID]](<span class="apiarg">itemInfo</span>) : <span class="apiret">inventoryType</span>
: [[API C_Item.GetItemLearnTransmogSet|C_Item.GetItemLearnTransmogSet]](<span class="apiarg">itemInfo</span>) : <span class="apiret">setID</span>
: [[API C_Item.GetItemLink|C_Item.GetItemLink]](<span class="apiarg">itemLocation</span>) : <span class="apiret">itemLink</span>
: [[API C_Item.GetItemLinkByGUID|C_Item.GetItemLinkByGUID]](<span class="apiarg">itemGUID</span>) : <span class="apiret">itemLink</span>
: [[API C_Item.GetItemLocation|C_Item.GetItemLocation]](<span class="apiarg">itemGUID</span>) : <span class="apiret">itemLocation</span>
: [[API C_Item.GetItemMaxStackSize|C_Item.GetItemMaxStackSize]](<span class="apiarg">itemLocation</span>) : <span class="apiret">stackSize</span>
: [[API C_Item.GetItemMaxStackSizeByID|C_Item.GetItemMaxStackSizeByID]](<span class="apiarg">itemInfo</span>) : <span class="apiret">stackSize</span>
: [[API C_Item.GetItemName|C_Item.GetItemName]](<span class="apiarg">itemLocation</span>) : <span class="apiret">itemName</span>
: [[API C_Item.GetItemNameByID|C_Item.GetItemNameByID]](<span class="apiarg">itemInfo</span>) : <span class="apiret">itemName</span>
: [[API C_Item.GetItemNumAddedSockets|C_Item.GetItemNumAddedSockets]](<span class="apiarg">itemInfo</span>) : <span class="apiret">socketCount</span>
: [[API C_Item.GetItemNumSockets|C_Item.GetItemNumSockets]](<span class="apiarg">itemInfo</span>) : <span class="apiret">socketCount</span>
: [[API C_Item.GetItemQuality|C_Item.GetItemQuality]](<span class="apiarg">itemLocation</span>) : <span class="apiret">itemQuality</span>
: [[API C_Item.GetItemQualityByID|C_Item.GetItemQualityByID]](<span class="apiarg">itemInfo</span>) : <span class="apiret">itemQuality</span>
: [[API C_Item.GetItemQualityColor|C_Item.GetItemQualityColor]](<span class="apiarg">quality</span>) : <span class="apiret">colorRGBR, colorRGBG, colorRGBB, qualityString</span> - Returns the color for an item quality.
: [[API C_Item.GetItemSetInfo|C_Item.GetItemSetInfo]](<span class="apiarg">setID</span>) : <span class="apiret">result</span>
: [[API C_Item.GetItemSpecInfo|C_Item.GetItemSpecInfo]](<span class="apiarg">itemInfo</span>) : <span class="apiret">specTable</span>
: [[API C_Item.GetItemSpell|C_Item.GetItemSpell]](<span class="apiarg">itemInfo</span>) : <span class="apiret">spellName, spellID</span> - Returns the spell effect for an item.
: [[API C_Item.GetItemStatDelta|C_Item.GetItemStatDelta]](<span class="apiarg">itemLink1, itemLink2</span>) : <span class="apiret">statTable</span>
: [[API C_Item.GetItemStats|C_Item.GetItemStats]](<span class="apiarg">itemLink</span>) : <span class="apiret">statTable</span> - Returns a table of stats for an item.
: [[API C_Item.GetItemSubClassInfo|C_Item.GetItemSubClassInfo]](<span class="apiarg">itemClassID, itemSubClassID</span>) : <span class="apiret">subClassName, subClassUsesInvType</span> - Returns the name of the item subtype.
: [[API C_Item.GetItemUniqueness|C_Item.GetItemUniqueness]](<span class="apiarg">itemInfo</span>) : <span class="apiret">limitCategory, limitMax</span>
: [[API C_Item.GetItemUniquenessByID|C_Item.GetItemUniquenessByID]](<span class="apiarg">itemInfo</span>) : <span class="apiret">isUnique, limitCategoryName, limitCategoryCount, limitCategoryID</span>
: [[API C_Item.GetSetBonusesForSpecializationByItemID|C_Item.GetSetBonusesForSpecializationByItemID]](<span class="apiarg">specID, itemID</span>) : <span class="apiret">itemSetSpellIDs</span>
: [[API C_Item.GetStackCount|C_Item.GetStackCount]](<span class="apiarg">itemLocation</span>) : <span class="apiret">stackCount</span>
: [[API C_Item.IsArtifactPowerItem|C_Item.IsArtifactPowerItem]](<span class="apiarg">itemInfo</span>) : <span class="apiret">result</span>
: [[API C_Item.IsBound|C_Item.IsBound]](<span class="apiarg">itemLocation</span>) : <span class="apiret">isBound</span>
: [[API C_Item.IsBoundToAccountUntilEquip|C_Item.IsBoundToAccountUntilEquip]](<span class="apiarg">itemLocation</span>) : <span class="apiret">isBoundToAccountUntilEquip</span>
: [[API C_Item.IsConsumableItem|C_Item.IsConsumableItem]](<span class="apiarg">itemInfo</span>) : <span class="apiret">result</span>
: [[API C_Item.IsCorruptedItem|C_Item.IsCorruptedItem]](<span class="apiarg">itemInfo</span>) : <span class="apiret">result</span>
: [[API C_Item.IsCosmeticItem|C_Item.IsCosmeticItem]](<span class="apiarg">itemInfo</span>) : <span class="apiret">result</span>
: [[API C_Item.IsCurioItem|C_Item.IsCurioItem]](<span class="apiarg">itemInfo</span>) : <span class="apiret">result</span>
: [[API C_Item.IsCurrentItem|C_Item.IsCurrentItem]](<span class="apiarg">itemInfo</span>) : <span class="apiret">result</span>
: [[API C_Item.IsEquippableItem|C_Item.IsEquippableItem]](<span class="apiarg">itemInfo</span>) : <span class="apiret">result</span> - Returns true if an item is equipable by the player.
: [[API C_Item.IsEquippedItem|C_Item.IsEquippedItem]](<span class="apiarg">itemInfo</span>) : <span class="apiret">result</span>
: [[API C_Item.IsEquippedItemType|C_Item.IsEquippedItemType]](<span class="apiarg">type</span>) : <span class="apiret">result</span> - Returns true if an item of a given type is equipped.
: [[API C_Item.IsHarmfulItem|C_Item.IsHarmfulItem]](<span class="apiarg">itemInfo</span>) : <span class="apiret">result</span> - Returns whether an item can be used against hostile units.
: [[API C_Item.IsHelpfulItem|C_Item.IsHelpfulItem]](<span class="apiarg">itemInfo</span>) : <span class="apiret">result</span> - Returns whether an item can be used on the player or friendly units.
: [[API C_Item.IsItemBindToAccountUntilEquip|C_Item.IsItemBindToAccountUntilEquip]](<span class="apiarg">itemInfo</span>) : <span class="apiret">isItemBindToAccountUntilEquip</span>
: [[API C_Item.IsItemConvertibleAndValidForPlayer|C_Item.IsItemConvertibleAndValidForPlayer]](<span class="apiarg">itemLoc</span>) : <span class="apiret">isItemConvertibleAndValidForPlayer</span>
: [[API C_Item.IsItemDataCached|C_Item.IsItemDataCached]](<span class="apiarg">itemLocation</span>) : <span class="apiret">isCached</span>
: [[API C_Item.IsItemDataCachedByID|C_Item.IsItemDataCachedByID]](<span class="apiarg">itemInfo</span>) : <span class="apiret">isCached</span>
: [[API C_Item.IsItemGUIDInInventory|C_Item.IsItemGUIDInInventory]](<span class="apiarg">itemGUID</span>) : <span class="apiret">valid</span>
: [[API C_Item.IsItemInRange|C_Item.IsItemInRange]](<span class="apiarg">itemInfo, targetToken</span>) : <span class="apiret">result</span> {{apitag|nocombat}} - Returns whether the item is in usable range of the unit.
: [[API C_Item.IsItemKeystoneByID|C_Item.IsItemKeystoneByID]](<span class="apiarg">itemInfo</span>) : <span class="apiret">isKeystone</span>
: [[API C_Item.IsItemSpecificToPlayerClass|C_Item.IsItemSpecificToPlayerClass]](<span class="apiarg">itemInfo</span>) : <span class="apiret">isItemSpecificToPlayerClass</span>
: [[API C_Item.IsLocked|C_Item.IsLocked]](<span class="apiarg">itemLocation</span>) : <span class="apiret">isLocked</span>
: [[API C_Item.IsUsableItem|C_Item.IsUsableItem]](<span class="apiarg">itemInfo</span>) : <span class="apiret">usable, noMana</span> - Returns usable, noMana.
: [[API C_Item.ItemHasRange|C_Item.ItemHasRange]](<span class="apiarg">itemInfo</span>) : <span class="apiret">result</span>
: [[API C_Item.LockItem|C_Item.LockItem]](<span class="apiarg">itemLocation</span>)
: [[API C_Item.LockItemByGUID|C_Item.LockItemByGUID]](<span class="apiarg">itemGUID</span>)
: [[API C_Item.PickupItem|C_Item.PickupItem]](<span class="apiarg">itemInfo</span>)
: [[API C_Item.ReplaceEnchant|C_Item.ReplaceEnchant]]() - Confirms the "Replace Enchant" dialog.
: [[API C_Item.ReplaceTradeEnchant|C_Item.ReplaceTradeEnchant]]() - Confirms that an enchant applied to the trade frame should replace an existing enchant.
: [[API C_Item.ReplaceTradeskillEnchant|C_Item.ReplaceTradeskillEnchant]]()
: [[API C_Item.RequestLoadItemData|C_Item.RequestLoadItemData]](<span class="apiarg">itemLocation</span>)
: [[API C_Item.RequestLoadItemDataByID|C_Item.RequestLoadItemDataByID]](<span class="apiarg">itemInfo</span>)
: [[API C_Item.UnlockItem|C_Item.UnlockItem]](<span class="apiarg">itemLocation</span>)
: [[API C_Item.UnlockItemByGUID|C_Item.UnlockItemByGUID]](<span class="apiarg">itemGUID</span>)
: [[API C_Item.UseItemByName|C_Item.UseItemByName]](<span class="apiarg">itemInfo [, target]</span>) {{apitag|protected}} - Uses the specified item.
: [[API ClearPendingBindConversionItem|ClearPendingBindConversionItem]]()
: [[API ConvertItemToBindToAccount|ConvertItemToBindToAccount]]()
: [[API GetItemLevelColor|GetItemLevelColor]]() : <span class="apiret">r, g, b</span>

==C_ItemInteraction==
: [[API C_ItemInteraction.ClearPendingItem|C_ItemInteraction.ClearPendingItem]]()
: [[API C_ItemInteraction.CloseUI|C_ItemInteraction.CloseUI]]()
: [[API C_ItemInteraction.GetChargeInfo|C_ItemInteraction.GetChargeInfo]]() : <span class="apiret">chargeInfo</span>
: [[API C_ItemInteraction.GetItemConversionCurrencyCost|C_ItemInteraction.GetItemConversionCurrencyCost]](<span class="apiarg">item</span>) : <span class="apiret">conversionCost</span>
: [[API C_ItemInteraction.GetItemInteractionInfo|C_ItemInteraction.GetItemInteractionInfo]]() : <span class="apiret">info</span>
: [[API C_ItemInteraction.GetItemInteractionSpellId|C_ItemInteraction.GetItemInteractionSpellId]]() : <span class="apiret">spellId</span>
: [[API C_ItemInteraction.InitializeFrame|C_ItemInteraction.InitializeFrame]]()
: [[API C_ItemInteraction.PerformItemInteraction|C_ItemInteraction.PerformItemInteraction]]()
: [[API C_ItemInteraction.Reset|C_ItemInteraction.Reset]]()
: [[API C_ItemInteraction.SetPendingItem|C_ItemInteraction.SetPendingItem]](<span class="apiarg">[item]</span>) : <span class="apiret">success</span>

==C_ItemUpgrade==
: [[API C_ItemUpgrade.CanUpgradeItem|C_ItemUpgrade.CanUpgradeItem]](<span class="apiarg">baseItem</span>) : <span class="apiret">isValid</span>
: [[API C_ItemUpgrade.ClearItemUpgrade|C_ItemUpgrade.ClearItemUpgrade]]()
: [[API C_ItemUpgrade.CloseItemUpgrade|C_ItemUpgrade.CloseItemUpgrade]]()
: [[API C_ItemUpgrade.GetHighWatermarkForItem|C_ItemUpgrade.GetHighWatermarkForItem]](<span class="apiarg">itemInfo</span>) : <span class="apiret">characterHighWatermark, accountHighWatermark</span>
: [[API C_ItemUpgrade.GetHighWatermarkForSlot|C_ItemUpgrade.GetHighWatermarkForSlot]](<span class="apiarg">itemRedundancySlot</span>) : <span class="apiret">characterHighWatermark, accountHighWatermark</span>
: [[API C_ItemUpgrade.GetHighWatermarkSlotForItem|C_ItemUpgrade.GetHighWatermarkSlotForItem]](<span class="apiarg">itemInfo</span>) : <span class="apiret">itemRedundancySlot</span>
: [[API C_ItemUpgrade.GetItemHyperlink|C_ItemUpgrade.GetItemHyperlink]]() : <span class="apiret">link</span>
: [[API C_ItemUpgrade.GetItemUpgradeCurrentLevel|C_ItemUpgrade.GetItemUpgradeCurrentLevel]]() : <span class="apiret">itemLevel, isPvpItemLevel</span>
: [[API C_ItemUpgrade.GetItemUpgradeEffect|C_ItemUpgrade.GetItemUpgradeEffect]](<span class="apiarg">effectIndex [, numUpgradeLevels]</span>) : <span class="apiret">outBaseEffect, outUpgradedEffect</span>
: [[API C_ItemUpgrade.GetItemUpgradeItemInfo|C_ItemUpgrade.GetItemUpgradeItemInfo]]() : <span class="apiret">itemInfo</span>
: [[API C_ItemUpgrade.GetItemUpgradePvpItemLevelDeltaValues|C_ItemUpgrade.GetItemUpgradePvpItemLevelDeltaValues]](<span class="apiarg">numUpgradeLevels</span>) : <span class="apiret">currentPvPItemLevel, upgradedPvPItemLevel</span>
: [[API C_ItemUpgrade.GetNumItemUpgradeEffects|C_ItemUpgrade.GetNumItemUpgradeEffects]]() : <span class="apiret">numItemUpgradeEffects</span>
: [[API C_ItemUpgrade.IsItemBound|C_ItemUpgrade.IsItemBound]]() : <span class="apiret">isBound</span>
: [[API C_ItemUpgrade.SetItemUpgradeFromCursorItem|C_ItemUpgrade.SetItemUpgradeFromCursorItem]]()
: [[API C_ItemUpgrade.SetItemUpgradeFromLocation|C_ItemUpgrade.SetItemUpgradeFromLocation]](<span class="apiarg">itemToSet</span>)
: [[API C_ItemUpgrade.UpgradeItem|C_ItemUpgrade.UpgradeItem]](<span class="apiarg">[numUpgrades]</span>) {{apitag|protected}}

==C_LevelSquish==
: [[API C_LevelSquish.ConvertFollowerLevel|C_LevelSquish.ConvertFollowerLevel]](<span class="apiarg">level, maxFollowerLevel</span>) : <span class="apiret">squishedLevel</span>
: [[API C_LevelSquish.ConvertPlayerLevel|C_LevelSquish.ConvertPlayerLevel]](<span class="apiarg">level</span>) : <span class="apiret">squishedLevel</span>

==C_LossOfControl==
: [[API C_LossOfControl.GetActiveLossOfControlData|C_LossOfControl.GetActiveLossOfControlData]](<span class="apiarg">index</span>) : <span class="apiret">event</span> - Returns info about an active loss-of-control effect.
: [[API C_LossOfControl.GetActiveLossOfControlDataByUnit|C_LossOfControl.GetActiveLossOfControlDataByUnit]](<span class="apiarg">unitToken, index</span>) : <span class="apiret">event</span>
: [[API C_LossOfControl.GetActiveLossOfControlDataCount|C_LossOfControl.GetActiveLossOfControlDataCount]]() : <span class="apiret">count</span> - Returns the number of active loss-of-control effects.
: [[API C_LossOfControl.GetActiveLossOfControlDataCountByUnit|C_LossOfControl.GetActiveLossOfControlDataCountByUnit]](<span class="apiarg">unitToken</span>) : <span class="apiret">count</span>
: [[API GetActionLossOfControlCooldown|GetActionLossOfControlCooldown]](<span class="apiarg">slot</span>) : <span class="apiret">start, duration</span>

==C_MajorFactions==
: [[API C_MajorFactions.GetCovenantIDForMajorFaction|C_MajorFactions.GetCovenantIDForMajorFaction]](<span class="apiarg">majorFactionID</span>) : <span class="apiret">covenantID</span>
: [[API C_MajorFactions.GetCurrentRenownLevel|C_MajorFactions.GetCurrentRenownLevel]](<span class="apiarg">majorFactionID</span>) : <span class="apiret">level</span>
: [[API C_MajorFactions.GetMajorFactionData|C_MajorFactions.GetMajorFactionData]](<span class="apiarg">majorFactionID</span>) : <span class="apiret">data</span>
: [[API C_MajorFactions.GetMajorFactionIDs|C_MajorFactions.GetMajorFactionIDs]](<span class="apiarg">[expansionID]</span>) : <span class="apiret">majorFactionIDs</span>
: [[API C_MajorFactions.GetMajorFactionRenownInfo|C_MajorFactions.GetMajorFactionRenownInfo]](<span class="apiarg">majorFactionID</span>) : <span class="apiret">data</span>
: [[API C_MajorFactions.GetRenownLevels|C_MajorFactions.GetRenownLevels]](<span class="apiarg">majorFactionID</span>) : <span class="apiret">levels</span>
: [[API C_MajorFactions.GetRenownNPCFactionID|C_MajorFactions.GetRenownNPCFactionID]]() : <span class="apiret">renownNPCFactionID</span>
: [[API C_MajorFactions.GetRenownRewardsForLevel|C_MajorFactions.GetRenownRewardsForLevel]](<span class="apiarg">majorFactionID, renownLevel</span>) : <span class="apiret">rewards</span>
: [[API C_MajorFactions.HasMaximumRenown|C_MajorFactions.HasMaximumRenown]](<span class="apiarg">majorFactionID</span>) : <span class="apiret">hasMaxRenown</span>
: [[API C_MajorFactions.IsWeeklyRenownCapped|C_MajorFactions.IsWeeklyRenownCapped]](<span class="apiarg">majorFactionID</span>) : <span class="apiret">isWeeklyCapped</span>

==C_Map==
The [[Map]] API was reworked in [[Patch 8.0.1]]. See also [[#MapUtil|MapUtil]] functions.
: [[API C_Map.CloseWorldMapInteraction|C_Map.CloseWorldMapInteraction]]()
: [[API C_Map.GetAreaInfo|C_Map.GetAreaInfo]](<span class="apiarg">areaID</span>) : <span class="apiret">name</span> - Returns a map subzone name.
: [[API C_Map.GetBestMapForUnit|C_Map.GetBestMapForUnit]](<span class="apiarg">unitToken</span>) : <span class="apiret">uiMapID</span> - Returns the current UI map for the given unit. Only works for the player and group members.
: [[API C_Map.GetBountySetMaps|C_Map.GetBountySetMaps]](<span class="apiarg">bountySetID</span>) : <span class="apiret">mapIDs</span> - Returns the maps for a bounty.
: [[API C_Map.GetFallbackWorldMapID|C_Map.GetFallbackWorldMapID]]() : <span class="apiret">uiMapID</span> - Returns the world map id.
: [[API C_Map.GetMapArtBackgroundAtlas|C_Map.GetMapArtBackgroundAtlas]](<span class="apiarg">uiMapID</span>) : <span class="apiret">atlasName</span> - Returns the background atlas for a map.
: [[API C_Map.GetMapArtHelpTextPosition|C_Map.GetMapArtHelpTextPosition]](<span class="apiarg">uiMapID</span>) : <span class="apiret">position</span> - Returns the position for the "Click to Zoom In" hint text on flight maps.
: [[API C_Map.GetMapArtID|C_Map.GetMapArtID]](<span class="apiarg">uiMapID</span>) : <span class="apiret">uiMapArtID</span> - Returns the art for a (phased) map.
: [[API C_Map.GetMapArtLayers|C_Map.GetMapArtLayers]](<span class="apiarg">uiMapID</span>) : <span class="apiret">layerInfo</span> - Returns the art layers for a map.
: [[API C_Map.GetMapArtLayerTextures|C_Map.GetMapArtLayerTextures]](<span class="apiarg">uiMapID, layerIndex</span>) : <span class="apiret">textures</span> - Returns the art layer textures for a map.
: [[API C_Map.GetMapArtZoneTextPosition|C_Map.GetMapArtZoneTextPosition]](<span class="apiarg">uiMapID</span>) : <span class="apiret">position</span>
: [[API C_Map.GetMapBannersForMap|C_Map.GetMapBannersForMap]](<span class="apiarg">uiMapID</span>) : <span class="apiret">mapBanners</span> - Returns the poi banners for a map.
: [[API C_Map.GetMapChildrenInfo|C_Map.GetMapChildrenInfo]](<span class="apiarg">uiMapID [, mapType [, allDescendants]]</span>) : <span class="apiret">info</span> - Returns info for the children of a map.
: [[API C_Map.GetMapDisplayInfo|C_Map.GetMapDisplayInfo]](<span class="apiarg">uiMapID</span>) : <span class="apiret">hideIcons</span> - Returns whether group member pins should be hidden.
: [[API C_Map.GetMapGroupID|C_Map.GetMapGroupID]](<span class="apiarg">uiMapID</span>) : <span class="apiret">uiMapGroupID</span> - Returns the map group for a map.
: [[API C_Map.GetMapGroupMembersInfo|C_Map.GetMapGroupMembersInfo]](<span class="apiarg">uiMapGroupID</span>) : <span class="apiret">info</span> - Returns the floors for a map group.
: [[API C_Map.GetMapHighlightInfoAtPosition|C_Map.GetMapHighlightInfoAtPosition]](<span class="apiarg">uiMapID, x, y</span>) : <span class="apiret">fileDataID, atlasID, texturePercentageX, texturePercentageY, textureX, textureY, scrollChildX, scrollChildY</span> - Returns a map highlight pin for a location.
: [[API C_Map.GetMapHighlightPulseInfo|C_Map.GetMapHighlightPulseInfo]](<span class="apiarg">uiMapID</span>) : <span class="apiret">fileDataID, atlasID, texturePercentageX, texturePercentageY, textureX, textureY, scrollChildX, scrollChildY</span>
: [[API C_Map.GetMapInfo|C_Map.GetMapInfo]](<span class="apiarg">uiMapID</span>) : <span class="apiret">info</span> - Returns map information.
: [[API C_Map.GetMapInfoAtPosition|C_Map.GetMapInfoAtPosition]](<span class="apiarg">uiMapID, x, y [, ignoreZoneMapPositionData]</span>) : <span class="apiret">info</span> - Returns info for any child or adjacent maps at a position on the map.
: [[API C_Map.GetMapLevels|C_Map.GetMapLevels]](<span class="apiarg">uiMapID</span>) : <span class="apiret">playerMinLevel, playerMaxLevel, petMinLevel, petMaxLevel</span> - Returns the suggested player and battle pet levels for a map.
: [[API C_Map.GetMapLinksForMap|C_Map.GetMapLinksForMap]](<span class="apiarg">uiMapID</span>) : <span class="apiret">mapLinks</span> - Returns the map pins that link to another map.
: [[API C_Map.GetMapPosFromWorldPos|C_Map.GetMapPosFromWorldPos]](<span class="apiarg">continentID, worldPosition [, overrideUiMapID]</span>) : <span class="apiret">uiMapID, mapPosition</span> - Translates a world map position to a map position.
: [[API C_Map.GetMapRectOnMap|C_Map.GetMapRectOnMap]](<span class="apiarg">uiMapID, topUiMapID</span>) : <span class="apiret">minX, maxX, minY, maxY</span> - Returns the map rectangle location for a map on its parent map.
: [[API C_Map.GetMapWorldSize|C_Map.GetMapWorldSize]](<span class="apiarg">uiMapID</span>) : <span class="apiret">width, height</span>
: [[API C_Map.GetPlayerMapPosition|C_Map.GetPlayerMapPosition]](<span class="apiarg">uiMapID, unitToken</span>) : <span class="apiret">position</span> {{apitag|noinstance}} - Returns the location of the unit on a map.
: [[API C_Map.GetWorldPosFromMapPos|C_Map.GetWorldPosFromMapPos]](<span class="apiarg">uiMapID, mapPosition</span>) : <span class="apiret">continentID, worldPosition</span> - Translates a map position to a world map position.
: [[API C_Map.IsCityMap|C_Map.IsCityMap]](<span class="apiarg">uiMapID</span>) : <span class="apiret">isCityMap</span>
: [[API C_Map.IsMapValidForNavBarDropdown|C_Map.IsMapValidForNavBarDropdown]](<span class="apiarg">uiMapID</span>) : <span class="apiret">isValid</span>
: [[API C_Map.MapHasArt|C_Map.MapHasArt]](<span class="apiarg">uiMapID</span>) : <span class="apiret">hasArt</span> - Returns true if the map has art and can be displayed by the FrameXML.
: [[API C_Map.RequestPreloadMap|C_Map.RequestPreloadMap]](<span class="apiarg">uiMapID</span>) - Preloads textures for a map.
: [[API C_MapExplorationInfo.GetExploredAreaIDsAtPosition|C_MapExplorationInfo.GetExploredAreaIDsAtPosition]](<span class="apiarg">uiMapID, normalizedPosition</span>) : <span class="apiret">areaID</span> - Returns the explored areas for the location on a map.
: [[API C_MapExplorationInfo.GetExploredMapTextures|C_MapExplorationInfo.GetExploredMapTextures]](<span class="apiarg">uiMapID</span>) : <span class="apiret">overlayInfo</span> - Returns explored map textures for a map.
: [[API C_FogOfWar.GetFogOfWarForMap|C_FogOfWar.GetFogOfWarForMap]](<span class="apiarg">uiMapID</span>) : <span class="apiret">fogOfWarID</span> - Returns the fog of war for an [[Island Expedition]] map.
: [[API C_FogOfWar.GetFogOfWarInfo|C_FogOfWar.GetFogOfWarInfo]](<span class="apiarg">fogOfWarID</span>) : <span class="apiret">fogOfWarInfo</span> - Returns info for the fog of war for an [[Island Expedition]] map.
: [[API GetAreaText|GetAreaText]]() : <span class="apiret">text</span>
: [[API GetMinimapZoneText|GetMinimapZoneText]]() : <span class="apiret">text</span> - Returns the zone text that is displayed over the minimap.
: [[API GetPlayerFacing|GetPlayerFacing]]() : <span class="apiret">result</span> {{apitag|noinstance}} - Returns the direction the character is facing in radians.
: [[API GetRealZoneText|GetRealZoneText]](<span class="apiarg">[mapID]</span>) : <span class="apiret">text</span> - Returns the map instance name.
: [[API GetSubZoneText|GetSubZoneText]]() : <span class="apiret">text</span> - Returns the subzone name.
: [[API GetZoneText|GetZoneText]]() : <span class="apiret">text</span> - Returns the name of the zone the player is in.
: [[API UnitDistanceSquared|UnitDistanceSquared]](<span class="apiarg">unit</span>) : <span class="apiret">distance, checkedDistance</span> {{apitag|noinstance}} - Returns the squared distance to a unit in your group.
: [[API UnitPosition|UnitPosition]](<span class="apiarg">unit</span>) : <span class="apiret">positionX, positionY, positionZ, mapID</span> {{apitag|noinstance}} - Returns the position of a unit in the current world area.
: [https://www.townlong-yak.com/framexml/go/MapCanvasMixin:AddDataProvider WorldMapFrame:AddDataProvider](<span class="apiarg">dataProvider</span>) {{apitag|framexml}} - Adds a map data provider.
: [https://www.townlong-yak.com/framexml/go/MapCanvasMixin:GetMapID WorldMapFrame:GetMapID]() {{apitag|framexml}} - Returns the currently viewed world map.
: [https://www.townlong-yak.com/framexml/go/MapCanvasMixin:SetMapID WorldMapFrame:SetMapID](<span class="apiarg">uiMapID</span>) {{apitag|framexml}} - Sets the world map.
: [https://www.townlong-yak.com/framexml/go/MapCanvasMixin:EnumerateAllPins WorldMapFrame:EnumerateAllPins]() {{apitag|framexml}} - Enumerates through all map pins.

==C_Minimap==
The [[Widget_API#Minimap|Minimap]] was reworked in [[Patch 9.0.1]]
: [[API C_Minimap.CanTrackBattlePets|C_Minimap.CanTrackBattlePets]]() : <span class="apiret">CanTrackBattlePets</span>
: [[API C_Minimap.ClearAllTracking|C_Minimap.ClearAllTracking]]()
: [[API C_Minimap.GetDefaultTrackingValue|C_Minimap.GetDefaultTrackingValue]](<span class="apiarg">filterType</span>) : <span class="apiret">defaultValue</span>
: [[API C_Minimap.GetDrawGroundTextures|C_Minimap.GetDrawGroundTextures]]() : <span class="apiret">draw</span>
: [[API C_Minimap.GetNumQuestPOIWorldEffects|C_Minimap.GetNumQuestPOIWorldEffects]]() : <span class="apiret">worldEffectCount</span>
: [[API C_Minimap.GetNumTrackingTypes|C_Minimap.GetNumTrackingTypes]]() : <span class="apiret">numTrackingTypes</span>
: [[API C_Minimap.GetObjectIconTextureCoords|C_Minimap.GetObjectIconTextureCoords]](<span class="apiarg">[index]</span>) : <span class="apiret">textureCoordsX, textureCoordsY, textureCoordsZ, textureCoordsW</span>
: [[API C_Minimap.GetPOITextureCoords|C_Minimap.GetPOITextureCoords]](<span class="apiarg">[index]</span>) : <span class="apiret">textureCoordsX, textureCoordsY, textureCoordsZ, textureCoordsW</span>
: [[API C_Minimap.GetTrackingFilter|C_Minimap.GetTrackingFilter]](<span class="apiarg">spellIndex</span>) : <span class="apiret">trackingType</span>
: [[API C_Minimap.GetTrackingInfo|C_Minimap.GetTrackingInfo]](<span class="apiarg">spellIndex</span>) : <span class="apiret">trackingInfo</span>
: [[API C_Minimap.GetUiMapID|C_Minimap.GetUiMapID]]() : <span class="apiret">uiMapID</span>
: [[API C_Minimap.GetViewRadius|C_Minimap.GetViewRadius]]() : <span class="apiret">yards</span>
: [[API C_Minimap.IsFilteredOut|C_Minimap.IsFilteredOut]](<span class="apiarg">filterType</span>) : <span class="apiret">isFiltered</span>
: [[API C_Minimap.IsRotateMinimapIgnored|C_Minimap.IsRotateMinimapIgnored]]() : <span class="apiret">isIgnored</span>
: [[API C_Minimap.IsTrackingAccountCompletedQuests|C_Minimap.IsTrackingAccountCompletedQuests]]() : <span class="apiret">IsTrackingAccountCompletedQuests</span>
: [[API C_Minimap.IsTrackingBattlePets|C_Minimap.IsTrackingBattlePets]]() : <span class="apiret">isTrackingBattlePets</span>
: [[API C_Minimap.IsTrackingHiddenQuests|C_Minimap.IsTrackingHiddenQuests]]() : <span class="apiret">isTrackingHiddenQuests</span>
: [[API C_Minimap.SetDrawGroundTextures|C_Minimap.SetDrawGroundTextures]](<span class="apiarg">draw</span>)
: [[API C_Minimap.SetIgnoreRotateMinimap|C_Minimap.SetIgnoreRotateMinimap]](<span class="apiarg">ignore</span>)
: [[API C_Minimap.SetTracking|C_Minimap.SetTracking]](<span class="apiarg">index, on</span>)
: [[API C_Minimap.ShouldUseHybridMinimap|C_Minimap.ShouldUseHybridMinimap]]() : <span class="apiret">shouldUse</span>

==C_MountJournal==
The [[Mounts_tab|Mount Journal]] was added in [[Patch 6.0.2]]
: [[API C_MountJournal.ClearFanfare|C_MountJournal.ClearFanfare]](<span class="apiarg">mountID</span>)
: [[API C_MountJournal.ClearRecentFanfares|C_MountJournal.ClearRecentFanfares]]()
: [[API C_MountJournal.Dismiss|C_MountJournal.Dismiss]]() - Dismisses the currently summoned mount.
: [[API C_MountJournal.GetAllCreatureDisplayIDsForMountID|C_MountJournal.GetAllCreatureDisplayIDsForMountID]](<span class="apiarg">mountID</span>) : <span class="apiret">creatureDisplayIDs</span>
: [[API C_MountJournal.GetCollectedDragonridingMounts|C_MountJournal.GetCollectedDragonridingMounts]]() : <span class="apiret">mountIDs</span>
: [[API C_MountJournal.GetCollectedFilterSetting|C_MountJournal.GetCollectedFilterSetting]](<span class="apiarg">filterIndex</span>) : <span class="apiret">isChecked</span> - Indicates whether the specified mount journal filter is enabled.
: [[API C_MountJournal.GetDisplayedMountAllCreatureDisplayInfo|C_MountJournal.GetDisplayedMountAllCreatureDisplayInfo]](<span class="apiarg">mountIndex</span>) : <span class="apiret">allDisplayInfo</span> - Returns all display IDs for a mount by index.
: [[API C_MountJournal.GetDisplayedMountID|C_MountJournal.GetDisplayedMountID]](<span class="apiarg">displayIndex</span>) : <span class="apiret">mountID</span>
: [[API C_MountJournal.GetDisplayedMountInfo|C_MountJournal.GetDisplayedMountInfo]](<span class="apiarg">displayIndex</span>) : <span class="apiret">name, spellID, icon, isActive, isUsable, sourceType, isFavorite, isFactionSpecific, faction, shouldHideOnChar, isCollected, mountID, isSteadyFlight</span> - Returns information about the specified mount.
: [[API C_MountJournal.GetDisplayedMountInfoExtra|C_MountJournal.GetDisplayedMountInfoExtra]](<span class="apiarg">mountIndex</span>) : <span class="apiret">creatureDisplayInfoID, description, source, isSelfMount, mountTypeID, uiModelSceneID, animID, spellVisualKitID, disablePlayerMountPreview</span> - Returns extra information about the specified mount.
: [[API C_MountJournal.GetDynamicFlightModeSpellID|C_MountJournal.GetDynamicFlightModeSpellID]]() : <span class="apiret">spellID</span>
: [[API C_MountJournal.GetIsFavorite|C_MountJournal.GetIsFavorite]](<span class="apiarg">mountIndex</span>) : <span class="apiret">isFavorite, canSetFavorite</span> - Indicates whether the specified mount is marked as a favorite.
: [[API C_MountJournal.GetMountAllCreatureDisplayInfoByID|C_MountJournal.GetMountAllCreatureDisplayInfoByID]](<span class="apiarg">mountID</span>) : <span class="apiret">allDisplayInfo</span> - Returns the display IDs for a mount.
: [[API C_MountJournal.GetMountFromItem|C_MountJournal.GetMountFromItem]](<span class="apiarg">itemID</span>) : <span class="apiret">mountID</span> - Returns the mount for an item ID.
: [[API C_MountJournal.GetMountFromSpell|C_MountJournal.GetMountFromSpell]](<span class="apiarg">spellID</span>) : <span class="apiret">mountID</span> - Returns the mount for a spell ID.
: [[API C_MountJournal.GetMountIDs|C_MountJournal.GetMountIDs]]() : <span class="apiret">mountIDs</span> - Returns the IDs of mounts listed in the mount journal.
: [[API C_MountJournal.GetMountInfoByID|C_MountJournal.GetMountInfoByID]](<span class="apiarg">mountID</span>) : <span class="apiret">name, spellID, icon, isActive, isUsable, sourceType, isFavorite, isFactionSpecific, faction, shouldHideOnChar, isCollected, mountID, isSteadyFlight</span> - Returns information about the specified mount.
: [[API C_MountJournal.GetMountInfoExtraByID|C_MountJournal.GetMountInfoExtraByID]](<span class="apiarg">mountID</span>) : <span class="apiret">creatureDisplayInfoID, description, source, isSelfMount, mountTypeID, uiModelSceneID, animID, spellVisualKitID, disablePlayerMountPreview</span> - Returns extra information about the specified mount.
: [[API C_MountJournal.GetMountLink|C_MountJournal.GetMountLink]](<span class="apiarg">spellID</span>) : <span class="apiret">mountCreatureDisplayInfoLink</span>
: [[API C_MountJournal.GetMountUsabilityByID|C_MountJournal.GetMountUsabilityByID]](<span class="apiarg">mountID, checkIndoors</span>) : <span class="apiret">isUsable, useError</span> - Returns if a mount is currently usable by the player.
: [[API C_MountJournal.GetNumDisplayedMounts|C_MountJournal.GetNumDisplayedMounts]]() : <span class="apiret">numMounts</span> - Returns the number of (filtered) mounts shown in the mount journal.
: [[API C_MountJournal.GetNumMounts|C_MountJournal.GetNumMounts]]() : <span class="apiret">numMounts</span> - Returns the number of mounts listed in the mount journal.
: [[API C_MountJournal.GetNumMountsNeedingFanfare|C_MountJournal.GetNumMountsNeedingFanfare]]() : <span class="apiret">numMountsNeedingFanfare</span>
: [[API C_MountJournal.IsDragonridingUnlocked|C_MountJournal.IsDragonridingUnlocked]]() : <span class="apiret">isUnlocked</span>
: [[API C_MountJournal.IsSourceChecked|C_MountJournal.IsSourceChecked]](<span class="apiarg">filterIndex</span>) : <span class="apiret">isChecked</span>
: [[API C_MountJournal.IsTypeChecked|C_MountJournal.IsTypeChecked]](<span class="apiarg">filterIndex</span>) : <span class="apiret">isChecked</span>
: [[API C_MountJournal.IsUsingDefaultFilters|C_MountJournal.IsUsingDefaultFilters]]() : <span class="apiret">isUsingDefaultFilters</span>
: [[API C_MountJournal.IsValidSourceFilter|C_MountJournal.IsValidSourceFilter]](<span class="apiarg">filterIndex</span>) : <span class="apiret">isValid</span>
: [[API C_MountJournal.IsValidTypeFilter|C_MountJournal.IsValidTypeFilter]](<span class="apiarg">filterIndex</span>) : <span class="apiret">isValid</span>
: [[API C_MountJournal.NeedsFanfare|C_MountJournal.NeedsFanfare]](<span class="apiarg">mountID</span>) : <span class="apiret">needsFanfare</span>
: [[API C_MountJournal.Pickup|C_MountJournal.Pickup]](<span class="apiarg">displayIndex</span>) - Picks up the specified mount onto the cursor, usually in preparation for placing it on an action button.
: [[API C_MountJournal.PickupDynamicFlightMode|C_MountJournal.PickupDynamicFlightMode]]()
: [[API C_MountJournal.SetAllSourceFilters|C_MountJournal.SetAllSourceFilters]](<span class="apiarg">isChecked</span>)
: [[API C_MountJournal.SetAllTypeFilters|C_MountJournal.SetAllTypeFilters]](<span class="apiarg">isChecked</span>)
: [[API C_MountJournal.SetCollectedFilterSetting|C_MountJournal.SetCollectedFilterSetting]](<span class="apiarg">filterIndex, isChecked</span>) - Enables or disables the specified mount journal filter.
: [[API C_MountJournal.SetDefaultFilters|C_MountJournal.SetDefaultFilters]]()
: [[API C_MountJournal.SetIsFavorite|C_MountJournal.SetIsFavorite]](<span class="apiarg">mountIndex, isFavorite</span>) - Marks or unmarks the specified mount as a favorite.
: [[API C_MountJournal.SetSearch|C_MountJournal.SetSearch]](<span class="apiarg">searchValue</span>)
: [[API C_MountJournal.SetSourceFilter|C_MountJournal.SetSourceFilter]](<span class="apiarg">filterIndex, isChecked</span>)
: [[API C_MountJournal.SetTypeFilter|C_MountJournal.SetTypeFilter]](<span class="apiarg">filterIndex, isChecked</span>)
: [[API C_MountJournal.SummonByID|C_MountJournal.SummonByID]](<span class="apiarg">mountID</span>) - Summons the specified mount.
: [[API C_MountJournal.SwapDynamicFlightMode|C_MountJournal.SwapDynamicFlightMode]]()
[[Mount equipment]] was added in [[Patch 8.2.0]]
: [[API C_MountJournal.ApplyMountEquipment|C_MountJournal.ApplyMountEquipment]](<span class="apiarg">itemLocation</span>) : <span class="apiret">canContinue</span> {{apitag|protected}}
: [[API C_MountJournal.AreMountEquipmentEffectsSuppressed|C_MountJournal.AreMountEquipmentEffectsSuppressed]]() : <span class="apiret">areEffectsSuppressed</span>
: [[API C_MountJournal.GetAppliedMountEquipmentID|C_MountJournal.GetAppliedMountEquipmentID]]() : <span class="apiret">itemID</span>
: [[API C_MountJournal.GetMountEquipmentUnlockLevel|C_MountJournal.GetMountEquipmentUnlockLevel]]() : <span class="apiret">level</span>
: [[API C_MountJournal.IsItemMountEquipment|C_MountJournal.IsItemMountEquipment]](<span class="apiarg">itemLocation</span>) : <span class="apiret">isMountEquipment</span>
: [[API C_MountJournal.IsMountEquipmentApplied|C_MountJournal.IsMountEquipmentApplied]]() : <span class="apiret">isApplied</span>
: [[API C_PlayerInfo.CanPlayerUseMountEquipment|C_PlayerInfo.CanPlayerUseMountEquipment]]() : <span class="apiret">canUseMountEquipment, failureReason</span> - Returns true if the player can use mount equipment.
The old companion API (non-combat pets and mounts) was added in [[Patch 3.0.2]]
: [[API CallCompanion|CallCompanion]](<span class="apiarg">type, id</span>) {{apitag|deprecated}} - Summons a companion.
: [[API DismissCompanion|DismissCompanion]](<span class="apiarg">type</span>) {{apitag|deprecated}} - Dismisses the current companion.
: [[API GetCompanionInfo|GetCompanionInfo]](<span class="apiarg">type, id</span>) : <span class="apiret">creatureID, creatureName, creatureSpellID, icon, issummoned, mountType</span> {{apitag|deprecated}} - Returns info for a companion.
: [[API GetNumCompanions|GetNumCompanions]](<span class="apiarg">type</span>) : <span class="apiret">count</span> {{apitag|deprecated}} - Returns the number of mounts.
: [[API SummonRandomCritter|SummonRandomCritter]]() {{apitag|deprecated}} - No longer does anything.

==C_MythicPlus==
[[Mythic+]] mode was added in [[Patch 7.0.3]]
: [[API C_MythicPlus.GetCurrentAffixes|C_MythicPlus.GetCurrentAffixes]]() : <span class="apiret">affixIDs</span>
: [[API C_MythicPlus.GetCurrentSeason|C_MythicPlus.GetCurrentSeason]]() : <span class="apiret">seasonID</span>
: [[API C_MythicPlus.GetCurrentSeasonValues|C_MythicPlus.GetCurrentSeasonValues]]() : <span class="apiret">displaySeasonID, milestoneSeasonID, rewardSeasonID</span>
: [[API C_MythicPlus.GetCurrentUIDisplaySeason|C_MythicPlus.GetCurrentUIDisplaySeason]]() : <span class="apiret">seasonID</span>
: [[API C_MythicPlus.GetEndOfRunGearSequenceLevel|C_MythicPlus.GetEndOfRunGearSequenceLevel]](<span class="apiarg">keystoneLevel</span>) : <span class="apiret">sequenceLevel</span>
: [[API C_MythicPlus.GetLastWeeklyBestInformation|C_MythicPlus.GetLastWeeklyBestInformation]]() : <span class="apiret">challengeMapId, level</span>
: [[API C_MythicPlus.GetOwnedKeystoneChallengeMapID|C_MythicPlus.GetOwnedKeystoneChallengeMapID]]() : <span class="apiret">challengeMapID</span>
: [[API C_MythicPlus.GetOwnedKeystoneLevel|C_MythicPlus.GetOwnedKeystoneLevel]]() : <span class="apiret">keyStoneLevel</span>
: [[API C_MythicPlus.GetOwnedKeystoneMapID|C_MythicPlus.GetOwnedKeystoneMapID]]() : <span class="apiret">mapID</span>
: [[API C_MythicPlus.GetRewardLevelForDifficultyLevel|C_MythicPlus.GetRewardLevelForDifficultyLevel]](<span class="apiarg">difficultyLevel</span>) : <span class="apiret">weeklyRewardLevel, endOfRunRewardLevel</span>
: [[API C_MythicPlus.GetRewardLevelFromKeystoneLevel|C_MythicPlus.GetRewardLevelFromKeystoneLevel]](<span class="apiarg">keystoneLevel</span>) : <span class="apiret">rewardLevel</span>
: [[API C_MythicPlus.GetRunHistory|C_MythicPlus.GetRunHistory]](<span class="apiarg">[includePreviousWeeks [, includeIncompleteRuns]]</span>) : <span class="apiret">runs</span>
: [[API C_MythicPlus.GetSeasonBestAffixScoreInfoForMap|C_MythicPlus.GetSeasonBestAffixScoreInfoForMap]](<span class="apiarg">mapChallengeModeID</span>) : <span class="apiret">affixScores, bestOverAllScore</span>
: [[API C_MythicPlus.GetSeasonBestForMap|C_MythicPlus.GetSeasonBestForMap]](<span class="apiarg">mapChallengeModeID</span>) : <span class="apiret">intimeInfo, overtimeInfo</span>
: [[API C_MythicPlus.GetSeasonBestMythicRatingFromThisExpansion|C_MythicPlus.GetSeasonBestMythicRatingFromThisExpansion]]() : <span class="apiret">bestSeasonScore, bestSeason</span>
: [[API C_MythicPlus.GetWeeklyBestForMap|C_MythicPlus.GetWeeklyBestForMap]](<span class="apiarg">mapChallengeModeID</span>) : <span class="apiret">durationSec, level, completionDate, affixIDs, members, dungeonScore</span>
: [[API C_MythicPlus.GetWeeklyChestRewardLevel|C_MythicPlus.GetWeeklyChestRewardLevel]]() : <span class="apiret">currentWeekBestLevel, weeklyRewardLevel, nextDifficultyWeeklyRewardLevel, nextBestLevel</span>
: [[API C_MythicPlus.IsMythicPlusActive|C_MythicPlus.IsMythicPlusActive]]() : <span class="apiret">isMythicPlusActive</span>
: [[API C_MythicPlus.IsWeeklyRewardAvailable|C_MythicPlus.IsWeeklyRewardAvailable]]() : <span class="apiret">weeklyRewardAvailable</span>
: [[API C_MythicPlus.RequestCurrentAffixes|C_MythicPlus.RequestCurrentAffixes]]()
: [[API C_MythicPlus.RequestMapInfo|C_MythicPlus.RequestMapInfo]]()
: [[API C_MythicPlus.RequestRewards|C_MythicPlus.RequestRewards]]()
: [[API C_PlayerInfo.GetPlayerMythicPlusRatingSummary|C_PlayerInfo.GetPlayerMythicPlusRatingSummary]](<span class="apiarg">playerToken</span>) : <span class="apiret">ratingSummary</span>

==C_NamePlate==
Nameplates were reworked in [[Patch 7.0.3]]
: [[API C_NamePlate.GetNamePlateEnemyClickThrough|C_NamePlate.GetNamePlateEnemyClickThrough]]()
: [[API C_NamePlate.GetNamePlateEnemyPreferredClickInsets|C_NamePlate.GetNamePlateEnemyPreferredClickInsets]]()
: [[API C_NamePlate.GetNamePlateEnemySize|C_NamePlate.GetNamePlateEnemySize]]()
: [[API C_NamePlate.GetNamePlateForUnit|C_NamePlate.GetNamePlateForUnit]](<span class="apiarg">unit [, isSecure]</span>) : <span class="apiret">nameplate</span>
: [[API C_NamePlate.GetNamePlateFriendlyClickThrough|C_NamePlate.GetNamePlateFriendlyClickThrough]]()
: [[API C_NamePlate.GetNamePlateFriendlyPreferredClickInsets|C_NamePlate.GetNamePlateFriendlyPreferredClickInsets]]()
: [[API C_NamePlate.GetNamePlateFriendlySize|C_NamePlate.GetNamePlateFriendlySize]]()
: [[API C_NamePlate.GetNamePlates|C_NamePlate.GetNamePlates]](<span class="apiarg">[isSecure]</span>) : <span class="apiret">nameplates</span>
: [[API C_NamePlate.GetNamePlateSelfClickThrough|C_NamePlate.GetNamePlateSelfClickThrough]]()
: [[API C_NamePlate.GetNamePlateSelfPreferredClickInsets|C_NamePlate.GetNamePlateSelfPreferredClickInsets]]()
: [[API C_NamePlate.GetNamePlateSelfSize|C_NamePlate.GetNamePlateSelfSize]]()
: [[API C_NamePlate.GetNumNamePlateMotionTypes|C_NamePlate.GetNumNamePlateMotionTypes]]()
: [[API C_NamePlate.GetTargetClampingInsets|C_NamePlate.GetTargetClampingInsets]]()
: [[API C_NamePlate.SetNamePlateEnemyClickThrough|C_NamePlate.SetNamePlateEnemyClickThrough]](<span class="apiarg">clickthrough</span>)
: [[API C_NamePlate.SetNamePlateEnemyPreferredClickInsets|C_NamePlate.SetNamePlateEnemyPreferredClickInsets]](<span class="apiarg">left, right, top, bottom</span>)
: [[API C_NamePlate.SetNamePlateEnemySize|C_NamePlate.SetNamePlateEnemySize]](<span class="apiarg">width, height</span>)
: [[API C_NamePlate.SetNamePlateFriendlyClickThrough|C_NamePlate.SetNamePlateFriendlyClickThrough]](<span class="apiarg">clickthrough</span>)
: [[API C_NamePlate.SetNamePlateFriendlyPreferredClickInsets|C_NamePlate.SetNamePlateFriendlyPreferredClickInsets]](<span class="apiarg">left, right, top, bottom</span>)
: [[API C_NamePlate.SetNamePlateFriendlySize|C_NamePlate.SetNamePlateFriendlySize]](<span class="apiarg">width, height</span>)
: [[API C_NamePlate.SetNamePlateSelfClickThrough|C_NamePlate.SetNamePlateSelfClickThrough]](<span class="apiarg">clickthrough</span>)
: [[API C_NamePlate.SetNamePlateSelfPreferredClickInsets|C_NamePlate.SetNamePlateSelfPreferredClickInsets]](<span class="apiarg">left, right, top, bottom</span>)
: [[API C_NamePlate.SetNamePlateSelfSize|C_NamePlate.SetNamePlateSelfSize]](<span class="apiarg">width, height</span>)
: [[API C_NamePlate.SetTargetClampingInsets|C_NamePlate.SetTargetClampingInsets]](<span class="apiarg">verticalInset, unk</span>)
: [[API SetInWorldUIVisibility|SetInWorldUIVisibility]](<span class="apiarg">visible</span>) - Allows nameplates to be shown even while the UI is hidden.
: [[API UnitNameplateShowsWidgetsOnly|UnitNameplateShowsWidgetsOnly]](<span class="apiarg">unit</span>) : <span class="apiret">nameplateShowsWidgetsOnly</span>

==C_NewItems==
: [[API C_NewItems.ClearAll|C_NewItems.ClearAll]]() - Clears the new item flag on all items in the player's inventory.
: [[API C_NewItems.IsNewItem|C_NewItems.IsNewItem]](<span class="apiarg">containerIndex, slotIndex</span>) : <span class="apiret">isNew</span> - Returns true if the item in the inventory slot is flagged as new.
: [[API C_NewItems.RemoveNewItem|C_NewItems.RemoveNewItem]](<span class="apiarg">containerIndex, slotIndex</span>) - Clears the "new item" flag.

==C_PartyPose==
: [[API C_PartyPose.GetPartyPoseInfoByMapID|C_PartyPose.GetPartyPoseInfoByMapID]](<span class="apiarg">mapID</span>) : <span class="apiret">info</span> - Returns party pose info for an [[Island Expedition]] or [[Warfront]].
: [[API C_PartyPose.ExtraAction|C_PartyPose.ExtraAction]](<span class="apiarg">partyPoseID</span>)
: [[API C_PartyPose.GetPartyPoseInfoByID|C_PartyPose.GetPartyPoseInfoByID]](<span class="apiarg">mapID</span>) : <span class="apiret">info</span>
: [[API C_PartyPose.HasExtraAction|C_PartyPose.HasExtraAction]](<span class="apiarg">partyPoseID</span>) : <span class="apiret">hasExtraAction</span>

==C_Perks==
The [[Trading Post]] was added in [[Patch 10.0.5]]
: [[API C_PerksActivities.AddTrackedPerksActivity|C_PerksActivities.AddTrackedPerksActivity]](<span class="apiarg">perksActivityID</span>)
: [[API C_PerksActivities.ClearPerksActivitiesPendingCompletion|C_PerksActivities.ClearPerksActivitiesPendingCompletion]]()
: [[API C_PerksActivities.GetAllPerksActivityTags|C_PerksActivities.GetAllPerksActivityTags]]() : <span class="apiret">tags</span>
: [[API C_PerksActivities.GetPerksActivitiesInfo|C_PerksActivities.GetPerksActivitiesInfo]]() : <span class="apiret">info</span>
: [[API C_PerksActivities.GetPerksActivitiesPendingCompletion|C_PerksActivities.GetPerksActivitiesPendingCompletion]]() : <span class="apiret">pending</span>
: [[API C_PerksActivities.GetPerksActivityChatLink|C_PerksActivities.GetPerksActivityChatLink]](<span class="apiarg">perksActivityID</span>) : <span class="apiret">link</span>
: [[API C_PerksActivities.GetPerksActivityInfo|C_PerksActivities.GetPerksActivityInfo]](<span class="apiarg">perksActivityID</span>) : <span class="apiret">info</span>
: [[API C_PerksActivities.GetPerksUIThemePrefix|C_PerksActivities.GetPerksUIThemePrefix]]() : <span class="apiret">kitPrefix</span>
: [[API C_PerksActivities.GetTrackedPerksActivities|C_PerksActivities.GetTrackedPerksActivities]]() : <span class="apiret">trackedPerksActivities</span>
: [[API C_PerksActivities.RemoveTrackedPerksActivity|C_PerksActivities.RemoveTrackedPerksActivity]](<span class="apiarg">perksActivityID</span>)
: [[API C_PerksProgram.ClearFrozenPerksVendorItem|C_PerksProgram.ClearFrozenPerksVendorItem]]()
: [[API C_PerksProgram.CloseInteraction|C_PerksProgram.CloseInteraction]]()
: [[API C_PerksProgram.GetAvailableCategoryIDs|C_PerksProgram.GetAvailableCategoryIDs]]() : <span class="apiret">categoryIDs</span>
: [[API C_PerksProgram.GetAvailableVendorItemIDs|C_PerksProgram.GetAvailableVendorItemIDs]]() : <span class="apiret">vendorItemIDs</span>
: [[API C_PerksProgram.GetCategoryInfo|C_PerksProgram.GetCategoryInfo]](<span class="apiarg">categoryID</span>) : <span class="apiret">categoryInfo</span>
: [[API C_PerksProgram.GetCurrencyAmount|C_PerksProgram.GetCurrencyAmount]]() : <span class="apiret">currencyAmount</span>
: [[API C_PerksProgram.GetDraggedPerksVendorItem|C_PerksProgram.GetDraggedPerksVendorItem]]() : <span class="apiret">perksVendorItemID</span>
: [[API C_PerksProgram.GetFrozenPerksVendorItemInfo|C_PerksProgram.GetFrozenPerksVendorItemInfo]]() : <span class="apiret">vendorItemInfo</span>
: [[API C_PerksProgram.GetPendingChestRewards|C_PerksProgram.GetPendingChestRewards]]() : <span class="apiret">pendingRewards</span>
: [[API C_PerksProgram.GetPerksProgramItemDisplayInfo|C_PerksProgram.GetPerksProgramItemDisplayInfo]](<span class="apiarg">id</span>) : <span class="apiret">item</span>
: [[API C_PerksProgram.GetTimeRemaining|C_PerksProgram.GetTimeRemaining]](<span class="apiarg">vendorItemID</span>) : <span class="apiret">timeRemaining</span>
: [[API C_PerksProgram.GetVendorItemInfo|C_PerksProgram.GetVendorItemInfo]](<span class="apiarg">vendorItemID</span>) : <span class="apiret">vendorItemInfo</span>
: [[API C_PerksProgram.GetVendorItemInfoRefundTimeLeft|C_PerksProgram.GetVendorItemInfoRefundTimeLeft]](<span class="apiarg">vendorItemID</span>) : <span class="apiret">refundTimeRemaining</span>
: [[API C_PerksProgram.IsAttackAnimToggleEnabled|C_PerksProgram.IsAttackAnimToggleEnabled]]() : <span class="apiret">isAttackAnimToggleEnabled</span>
: [[API C_PerksProgram.IsFrozenPerksVendorItem|C_PerksProgram.IsFrozenPerksVendorItem]](<span class="apiarg">perksVendorItemID</span>) : <span class="apiret">isFrozen</span>
: [[API C_PerksProgram.IsMountSpecialAnimToggleEnabled|C_PerksProgram.IsMountSpecialAnimToggleEnabled]]() : <span class="apiret">isMountSpecialAnimToggleEnabled</span>
: [[API C_PerksProgram.ItemSelectedTelemetry|C_PerksProgram.ItemSelectedTelemetry]](<span class="apiarg">perksVendorItemID</span>)
: [[API C_PerksProgram.PickupPerksVendorItem|C_PerksProgram.PickupPerksVendorItem]](<span class="apiarg">perksVendorItemID</span>)
: [[API C_PerksProgram.RequestPendingChestRewards|C_PerksProgram.RequestPendingChestRewards]]()
: [[API C_PerksProgram.RequestPurchase|C_PerksProgram.RequestPurchase]](<span class="apiarg">perksVendorItemID</span>)
: [[API C_PerksProgram.RequestRefund|C_PerksProgram.RequestRefund]](<span class="apiarg">perksVendorItemID</span>)
: [[API C_PerksProgram.ResetHeldItemDragAndDrop|C_PerksProgram.ResetHeldItemDragAndDrop]]()
: [[API C_PerksProgram.SetFrozenPerksVendorItem|C_PerksProgram.SetFrozenPerksVendorItem]]()

==C_PetBattles==
The [[Pet Battle System]] was added in [[Patch 5.0.4]]. See also [[#Pet Journal|Pet Journal]] functions.
: [[API C_PetBattles.AcceptPVPDuel|C_PetBattles.AcceptPVPDuel]]()
: [[API C_PetBattles.AcceptQueuedPVPMatch|C_PetBattles.AcceptQueuedPVPMatch]]()
: [[API C_PetBattles.CanAcceptQueuedPVPMatch|C_PetBattles.CanAcceptQueuedPVPMatch]]() : <span class="apiret">canAccept</span>
: [[API C_PetBattles.CanActivePetSwapOut|C_PetBattles.CanActivePetSwapOut]]() : <span class="apiret">usable</span>
: [[API C_PetBattles.CanPetSwapIn|C_PetBattles.CanPetSwapIn]](<span class="apiarg">petIndex</span>) : <span class="apiret">usable</span>
: [[API C_PetBattles.CancelPVPDuel|C_PetBattles.CancelPVPDuel]]()
: [[API C_PetBattles.ChangePet|C_PetBattles.ChangePet]](<span class="apiarg">petIndex</span>)
: [[API C_PetBattles.DeclineQueuedPVPMatch|C_PetBattles.DeclineQueuedPVPMatch]]()
: [[API C_PetBattles.ForfeitGame|C_PetBattles.ForfeitGame]]()
: [[API C_PetBattles.GetAbilityEffectInfo|C_PetBattles.GetAbilityEffectInfo]](<span class="apiarg">abilityID, turnIndex, effectIndex, effectName</span>) : <span class="apiret">value</span>
: [[API C_PetBattles.GetAbilityInfoByID|C_PetBattles.GetAbilityInfoByID]](<span class="apiarg">id</span>) : <span class="apiret">id, name, icon, maxCooldown, unparsedDescription, numTurns, petType, noStrongWeakHints</span>
: [[API C_PetBattles.GetAbilityInfo|C_PetBattles.GetAbilityInfo]](<span class="apiarg">petOwner, petIndex, abilityIndex</span>) : <span class="apiret">id, name, icon, maxCooldown, unparsedDescription, numTurns, petType, noStrongWeakHints</span>
: [[API C_PetBattles.GetAbilityProcTurnIndex|C_PetBattles.GetAbilityProcTurnIndex]](<span class="apiarg">abilityID, procType</span>) : <span class="apiret">turnIndex</span>
: [[API C_PetBattles.GetAbilityStateModification|C_PetBattles.GetAbilityStateModification]](<span class="apiarg">abilityID, stateID</span>) : <span class="apiret">abilityStateMod</span>
: [[API C_PetBattles.GetAbilityState|C_PetBattles.GetAbilityState]](<span class="apiarg">petOwner, petIndex, actionIndex</span>) : <span class="apiret">isUsable, currentCooldown, currentLockdown</span>
: [[API C_PetBattles.GetActivePet|C_PetBattles.GetActivePet]](<span class="apiarg">petOwner</span>) : <span class="apiret">petIndex</span>
: [[API C_PetBattles.GetAllEffectNames|C_PetBattles.GetAllEffectNames]]() : <span class="apiret">...</span>
: [[API C_PetBattles.GetAllStates|C_PetBattles.GetAllStates]](<span class="apiarg">[stateEnv]</span>) : <span class="apiret">number></span>
: [[API C_PetBattles.GetAttackModifier|C_PetBattles.GetAttackModifier]](<span class="apiarg">petType, enemyPetType</span>) : <span class="apiret">modifier</span>
: [[API C_PetBattles.GetAuraInfo|C_PetBattles.GetAuraInfo]](<span class="apiarg">petOwner, petIndex, auraIndex</span>) : <span class="apiret">auraID, instanceID, turnsRemaining, isBuff</span>
: [[API C_PetBattles.GetBattleState|C_PetBattles.GetBattleState]]() : <span class="apiret">battleState</span>
: [[API C_PetBattles.GetBreedQuality|C_PetBattles.GetBreedQuality]](<span class="apiarg">petOwner, slot</span>) : <span class="apiret">quality</span>
: [[API C_PetBattles.GetDisplayID|C_PetBattles.GetDisplayID]](<span class="apiarg">petOwner, petIndex</span>) : <span class="apiret">displayID</span>
: [[API C_PetBattles.GetForfeitPenalty|C_PetBattles.GetForfeitPenalty]]() : <span class="apiret">forfeitPenalty</span>
: [[API C_PetBattles.GetHealth|C_PetBattles.GetHealth]](<span class="apiarg">petOwner, petIndex</span>) : <span class="apiret">health</span>
: [[API C_PetBattles.GetIcon|C_PetBattles.GetIcon]](<span class="apiarg">petOwner, slot</span>) : <span class="apiret">iconFileID</span>
: [[API C_PetBattles.GetLevel|C_PetBattles.GetLevel]](<span class="apiarg">petOwner, petIndex</span>) : <span class="apiret">level</span>
: [[API C_PetBattles.GetMaxHealth|C_PetBattles.GetMaxHealth]](<span class="apiarg">petOwner, petIndex</span>) : <span class="apiret">maxHealth</span>
: [[API C_PetBattles.GetName|C_PetBattles.GetName]](<span class="apiarg">petOwner, slot</span>) : <span class="apiret">customName, speciesName</span>
: [[API C_PetBattles.GetNumAuras|C_PetBattles.GetNumAuras]](<span class="apiarg">petOwner, petIndex</span>) : <span class="apiret">numAuras</span>
: [[API C_PetBattles.GetNumPets|C_PetBattles.GetNumPets]](<span class="apiarg">petOwner</span>) : <span class="apiret">numPets</span>
: [[API C_PetBattles.GetPVPMatchmakingInfo|C_PetBattles.GetPVPMatchmakingInfo]]() : <span class="apiret">queueState, estimatedTime, queuedTime</span>
: [[API C_PetBattles.GetPetSpeciesID|C_PetBattles.GetPetSpeciesID]](<span class="apiarg">petOwner, petIndex</span>) : <span class="apiret">speciesID</span>
: [[API C_PetBattles.GetPetType|C_PetBattles.GetPetType]](<span class="apiarg">petOwner, petIndex</span>) : <span class="apiret">petType</span>
: [[API C_PetBattles.GetPlayerTrapAbility|C_PetBattles.GetPlayerTrapAbility]]() : <span class="apiret">trapAbilityID</span>
: [[API C_PetBattles.GetPower|C_PetBattles.GetPower]](<span class="apiarg">petOwner, petIndex</span>) : <span class="apiret">power</span>
: [[API C_PetBattles.GetSelectedAction|C_PetBattles.GetSelectedAction]]() : <span class="apiret">selectedActionType, selectedActionIndex</span>
: [[API C_PetBattles.GetSpeed|C_PetBattles.GetSpeed]](<span class="apiarg">petOwner, petIndex</span>) : <span class="apiret">speed</span>
: [[API C_PetBattles.GetStateValue|C_PetBattles.GetStateValue]](<span class="apiarg">petOwner, petIndex, stateID</span>) : <span class="apiret">stateValue</span>
: [[API C_PetBattles.GetTurnTimeInfo|C_PetBattles.GetTurnTimeInfo]]() : <span class="apiret">timeRemaining, turnTime</span>
: [[API C_PetBattles.GetXP|C_PetBattles.GetXP]](<span class="apiarg">petOwner, petIndex</span>) : <span class="apiret">xp, maxXp</span>
: [[API C_PetBattles.IsInBattle|C_PetBattles.IsInBattle]]() : <span class="apiret">inBattle</span>
: [[API C_PetBattles.IsPlayerNPC|C_PetBattles.IsPlayerNPC]]() : <span class="apiret">isPlayerNPC</span>
: [[API C_PetBattles.IsSkipAvailable|C_PetBattles.IsSkipAvailable]]() : <span class="apiret">usable</span>
: [[API C_PetBattles.IsTrapAvailable|C_PetBattles.IsTrapAvailable]]() : <span class="apiret">usable</span>
: [[API C_PetBattles.IsWaitingOnOpponent|C_PetBattles.IsWaitingOnOpponent]]() : <span class="apiret">isWaiting</span>
: [[API C_PetBattles.IsWildBattle|C_PetBattles.IsWildBattle]]() : <span class="apiret">isWildBattle</span>
: [[API C_PetBattles.SetPendingReportBattlePetTarget|C_PetBattles.SetPendingReportBattlePetTarget]](<span class="apiarg">petIndex</span>)
: [[API C_PetBattles.SetPendingReportTargetFromUnit|C_PetBattles.SetPendingReportTargetFromUnit]](<span class="apiarg">unit</span>)
: [[API C_PetBattles.ShouldShowPetSelect|C_PetBattles.ShouldShowPetSelect]]() : <span class="apiret">shouldShow</span>
: [[API C_PetBattles.SkipTurn|C_PetBattles.SkipTurn]]() {{apitag|hwevent}}
: [[API C_PetBattles.StartPVPDuel|C_PetBattles.StartPVPDuel]]()
: [[API C_PetBattles.StartPVPMatchmaking|C_PetBattles.StartPVPMatchmaking]]()
: [[API C_PetBattles.StopPVPMatchmaking|C_PetBattles.StopPVPMatchmaking]]()
: [[API C_PetBattles.UseAbility|C_PetBattles.UseAbility]](<span class="apiarg">actionIndex</span>) {{apitag|hwevent}}
: [[API C_PetBattles.UseTrap|C_PetBattles.UseTrap]]() {{apitag|hwevent}}
: [[API UnitBattlePetLevel|UnitBattlePetLevel]](<span class="apiarg">unit</span>) : <span class="apiret">result</span>
: [[API UnitBattlePetSpeciesID|UnitBattlePetSpeciesID]](<span class="apiarg">unit</span>) : <span class="apiret">result</span>
: [[API UnitBattlePetType|UnitBattlePetType]](<span class="apiarg">unit</span>) : <span class="apiret">result</span>
: [[API UnitIsBattlePet|UnitIsBattlePet]](<span class="apiarg">unit</span>) : <span class="apiret">result</span>
: [[API UnitIsBattlePetCompanion|UnitIsBattlePetCompanion]](<span class="apiarg">unit</span>) : <span class="apiret">result</span>
: [[API UnitIsOtherPlayersBattlePet|UnitIsOtherPlayersBattlePet]](<span class="apiarg">[unit]</span>) : <span class="apiret">result</span>
: [[API UnitIsWildBattlePet|UnitIsWildBattlePet]](<span class="apiarg">unit</span>) : <span class="apiret">result</span>

==C_PetInfo==
: [[API C_PetInfo.GetPetTamersForMap|C_PetInfo.GetPetTamersForMap]](<span class="apiarg">uiMapID</span>) : <span class="apiret">petTamers</span> - Returns the pet tamers on a map.
: [[API C_PetInfo.GetSpellForPetAction|C_PetInfo.GetSpellForPetAction]](<span class="apiarg">actionID</span>) : <span class="apiret">spellID</span>
: [[API C_PetInfo.IsPetActionPassive|C_PetInfo.IsPetActionPassive]](<span class="apiarg">actionID</span>) : <span class="apiret">isPassive</span>
: [[API C_PetInfo.PetAbandon|C_PetInfo.PetAbandon]](<span class="apiarg">[petNumber]</span>)
: [[API C_PetInfo.PetRename|C_PetInfo.PetRename]](<span class="apiarg">name [, petNumber [, declensions]]</span>)

==C_PetJournal==
The [[Pet Journal]] was added in [[Patch 5.0.4]]. See also [[#Pet Battles|Pet Battle]] functions.
: [[API C_PetJournal.CagePetByID|C_PetJournal.CagePetByID]](<span class="apiarg">petID</span>) - Puts the pet into a cage.
: [[API C_PetJournal.ClearFanfare|C_PetJournal.ClearFanfare]]()
: [[API C_PetJournal.ClearHoveredBattlePet|C_PetJournal.ClearHoveredBattlePet]]()
: [[API C_PetJournal.ClearRecentFanfares|C_PetJournal.ClearRecentFanfares]]()
: [[API C_PetJournal.ClearSearchFilter|C_PetJournal.ClearSearchFilter]]() - Clears the search box in the pet journal.
: [[API C_PetJournal.FindPetIDByName|C_PetJournal.FindPetIDByName]](<span class="apiarg">petName</span>) : <span class="apiret">speciesId, petGUID</span>
: [[API C_PetJournal.GetBattlePetLink|C_PetJournal.GetBattlePetLink]](<span class="apiarg">petID</span>) : <span class="apiret">link</span> - Returns a battle pet link.
: [[API C_PetJournal.GetDisplayIDByIndex|C_PetJournal.GetDisplayIDByIndex]](<span class="apiarg">speciesID, index</span>) : <span class="apiret">displayID</span>
: [[API C_PetJournal.GetDisplayProbabilityByIndex|C_PetJournal.GetDisplayProbabilityByIndex]](<span class="apiarg">speciesID, index</span>) : <span class="apiret">displayProbability</span>
: [[API C_PetJournal.GetNumCollectedInfo|C_PetJournal.GetNumCollectedInfo]](<span class="apiarg">speciesId</span>) : <span class="apiret">numCollected, limit</span>
: [[API C_PetJournal.GetNumDisplays|C_PetJournal.GetNumDisplays]](<span class="apiarg">speciesID</span>) : <span class="apiret">numDisplays</span>
: [[API C_PetJournal.GetNumPets|C_PetJournal.GetNumPets]]() : <span class="apiret">numPets, numOwned</span> - Returns information about the number of battle pets.
: [[API C_PetJournal.GetNumPetsInJournal|C_PetJournal.GetNumPetsInJournal]](<span class="apiarg">creatureID</span>) : <span class="apiret">maxAllowed, numPets</span>
: [[API C_PetJournal.GetNumPetsNeedingFanfare|C_PetJournal.GetNumPetsNeedingFanfare]]()
: [[API C_PetJournal.GetNumPetSources|C_PetJournal.GetNumPetSources]]() : <span class="apiret">numSources</span> - Returns information about the number of pet sources.
: [[API C_PetJournal.GetNumPetTypes|C_PetJournal.GetNumPetTypes]]() : <span class="apiret">numTypes</span> - Returns information about the number of pet types.
: [[API C_PetJournal.GetOwnedBattlePetString|C_PetJournal.GetOwnedBattlePetString]](<span class="apiarg">speciesId</span>) : <span class="apiret">ownedString</span> - Returns a formatted string how many of a battle pet species the player has collected.
: [[API C_PetJournal.GetPetAbilityInfo|C_PetJournal.GetPetAbilityInfo]](<span class="apiarg">abilityID</span>) : <span class="apiret">name, icon, petType</span>
: [[API C_PetJournal.GetPetAbilityList|C_PetJournal.GetPetAbilityList]](<span class="apiarg">speciesID [, idTable [, levelTable]]</span>) : <span class="apiret">idTable, levelTable</span>
: [[API C_PetJournal.GetPetAbilityListTable|C_PetJournal.GetPetAbilityListTable]](<span class="apiarg">speciesID</span>) : <span class="apiret">info</span>
: [[API C_PetJournal.GetPetCooldownByGUID|C_PetJournal.GetPetCooldownByGUID]](<span class="apiarg">GUID</span>) : <span class="apiret">start, duration, isEnabled</span>
: [[API C_PetJournal.GetPetInfoByIndex|C_PetJournal.GetPetInfoByIndex]](<span class="apiarg">index</span>) : <span class="apiret">petID, speciesID, owned, customName, level, favorite, isRevoked, speciesName, icon, petType, companionID, tooltip, description, isWild, canBattle, isTradeable, isUnique, obtainable</span> - Returns information about a battle pet.
: [[API C_PetJournal.GetPetInfoByItemID|C_PetJournal.GetPetInfoByItemID]](<span class="apiarg">itemID</span>) : <span class="apiret">name, icon, petType, creatureID, sourceText, description, isWild, canBattle, isTradeable, isUnique, obtainable, displayID, speciesID</span>
: [[API C_PetJournal.GetPetInfoByPetID|C_PetJournal.GetPetInfoByPetID]](<span class="apiarg">petID</span>) : <span class="apiret">speciesID, customName, level, xp, maxXp, displayID, favorite, name, icon, petType, creatureID, sourceText, description, isWild, canBattle, isTradeable, isUnique, obtainable</span> - Returns information about a battle pet.
: [[API C_PetJournal.GetPetInfoBySpeciesID|C_PetJournal.GetPetInfoBySpeciesID]](<span class="apiarg">speciesID</span>) : <span class="apiret">speciesName, speciesIcon, petType, companionID, tooltipSource, tooltipDescription, isWild, canBattle, isTradeable, isUnique, obtainable, creatureDisplayID, desiredScale</span> - Returns information about a pet species.
: [[API C_PetJournal.GetPetInfoTableByPetID|C_PetJournal.GetPetInfoTableByPetID]](<span class="apiarg">petID</span>) : <span class="apiret">info</span>
: [[API C_PetJournal.GetPetLoadOutInfo|C_PetJournal.GetPetLoadOutInfo]](<span class="apiarg">slot</span>) : <span class="apiret">petID, ability1ID, ability2ID, ability3ID, locked</span>
: [[API C_PetJournal.GetPetModelSceneInfoBySpeciesID|C_PetJournal.GetPetModelSceneInfoBySpeciesID]](<span class="apiarg">speciesID</span>)
: [[API C_PetJournal.GetPetSortParameter|C_PetJournal.GetPetSortParameter]]() : <span class="apiret">sortParameter</span>
: [[API C_PetJournal.GetPetStats|C_PetJournal.GetPetStats]](<span class="apiarg">petID</span>) : <span class="apiret">health, maxHealth, power, speed, rarity</span> - Returns the stats of a collected battle pet.
: [[API C_PetJournal.GetPetSummonInfo|C_PetJournal.GetPetSummonInfo]](<span class="apiarg">battlePetGUID</span>) : <span class="apiret">isSummonable, error, errorText</span>
: [[API C_PetJournal.GetPetTeamAverageLevel|C_PetJournal.GetPetTeamAverageLevel]]() : <span class="apiret">avgLevel</span>
: [[API C_PetJournal.GetSummonBattlePetCooldown|C_PetJournal.GetSummonBattlePetCooldown]]()
: [[API C_PetJournal.GetSummonedPetGUID|C_PetJournal.GetSummonedPetGUID]]() : <span class="apiret">summonedPetGUID</span> - Returns information about a battle pet.
: [[API C_PetJournal.GetSummonRandomFavoritePetGUID|C_PetJournal.GetSummonRandomFavoritePetGUID]]()
: [[API C_PetJournal.HasFavoritePets|C_PetJournal.HasFavoritePets]]() : <span class="apiret">hasFavorites</span>
: [[API C_PetJournal.IsFilterChecked|C_PetJournal.IsFilterChecked]](<span class="apiarg">filter</span>) : <span class="apiret">isFiltered</span>
: [[API C_PetJournal.IsFindBattleEnabled|C_PetJournal.IsFindBattleEnabled]]() : <span class="apiret">isEnabled</span>
: [[API C_PetJournal.IsJournalReadOnly|C_PetJournal.IsJournalReadOnly]]()
: [[API C_PetJournal.IsJournalUnlocked|C_PetJournal.IsJournalUnlocked]]()
: [[API C_PetJournal.IsPetSourceChecked|C_PetJournal.IsPetSourceChecked]](<span class="apiarg">index</span>) : <span class="apiret">isChecked</span>
: [[API C_PetJournal.IsPetTypeChecked|C_PetJournal.IsPetTypeChecked]](<span class="apiarg">index</span>) : <span class="apiret">isChecked</span>
: [[API C_PetJournal.IsUsingDefaultFilters|C_PetJournal.IsUsingDefaultFilters]]() : <span class="apiret">isUsingDefaultFilters</span>
: [[API C_PetJournal.PetCanBeReleased|C_PetJournal.PetCanBeReleased]](<span class="apiarg">petID</span>) : <span class="apiret">canRelease</span> - Returns true if you can release the pet.
: [[API C_PetJournal.PetIsCapturable|C_PetJournal.PetIsCapturable]](<span class="apiarg">petID</span>) : <span class="apiret">isCapturable</span>
: [[API C_PetJournal.PetIsFavorite|C_PetJournal.PetIsFavorite]](<span class="apiarg">petGUID</span>) : <span class="apiret">isFavorite</span> - Returns true if the collected battle pet is favorited.
: [[API C_PetJournal.PetIsHurt|C_PetJournal.PetIsHurt]](<span class="apiarg">petID</span>) : <span class="apiret">isHurt</span>
: [[API C_PetJournal.PetIsLockedForConvert|C_PetJournal.PetIsLockedForConvert]](<span class="apiarg">petID</span>)
: [[API C_PetJournal.PetIsRevoked|C_PetJournal.PetIsRevoked]](<span class="apiarg">petID</span>) : <span class="apiret">isRevoked</span>
: [[API C_PetJournal.PetIsSlotted|C_PetJournal.PetIsSlotted]](<span class="apiarg">petID</span>) : <span class="apiret">isSlotted</span>
: [[API C_PetJournal.PetIsSummonable|C_PetJournal.PetIsSummonable]](<span class="apiarg">battlePetGUID</span>) : <span class="apiret">isSummonable</span> - Returns true if you can summon this pet.
: [[API C_PetJournal.PetIsTradable|C_PetJournal.PetIsTradable]](<span class="apiarg">petID</span>) : <span class="apiret">isTradable</span> - Returns whether or not a pet from the Pet Journal is tradable.
: [[API C_PetJournal.PetIsUsable|C_PetJournal.PetIsUsable]](<span class="apiarg">petID</span>)
: [[API C_PetJournal.PetNeedsFanfare|C_PetJournal.PetNeedsFanfare]]()
: [[API C_PetJournal.PetUsesRandomDisplay|C_PetJournal.PetUsesRandomDisplay]](<span class="apiarg">speciesID</span>) : <span class="apiret">usesRandomDisplay</span>
: [[API C_PetJournal.PickupPet|C_PetJournal.PickupPet]](<span class="apiarg">petID</span>)
: [[API C_PetJournal.PickupSummonRandomPet|C_PetJournal.PickupSummonRandomPet]]()
: [[API C_PetJournal.ReleasePetByID|C_PetJournal.ReleasePetByID]](<span class="apiarg">petID</span>) - Releases the pet.
: [[API C_PetJournal.SetAbility|C_PetJournal.SetAbility]](<span class="apiarg">slotIndex, spellIndex, petSpellID</span>)
: [[API C_PetJournal.SetAllPetSourcesChecked|C_PetJournal.SetAllPetSourcesChecked]](<span class="apiarg">value</span>)
: [[API C_PetJournal.SetAllPetTypesChecked|C_PetJournal.SetAllPetTypesChecked]](<span class="apiarg">value</span>)
: [[API C_PetJournal.SetCustomName|C_PetJournal.SetCustomName]](<span class="apiarg">petID, customName</span>) - Sets a custom name for the pet.
: [[API C_PetJournal.SetDefaultFilters|C_PetJournal.SetDefaultFilters]]()
: [[API C_PetJournal.SetFavorite|C_PetJournal.SetFavorite]](<span class="apiarg">petID, value</span>) - Sets (or clears) the pet as a favorite.
: [[API C_PetJournal.SetFilterChecked|C_PetJournal.SetFilterChecked]](<span class="apiarg">filter, value</span>)
: [[API C_PetJournal.SetHoveredBattlePet|C_PetJournal.SetHoveredBattlePet]](<span class="apiarg">battlePetGUID</span>)
: [[API C_PetJournal.SetPetLoadOutInfo|C_PetJournal.SetPetLoadOutInfo]](<span class="apiarg">slotIndex, petID</span>)
: [[API C_PetJournal.SetPetSortParameter|C_PetJournal.SetPetSortParameter]](<span class="apiarg">sortParameter</span>)
: [[API C_PetJournal.SetPetSourceChecked|C_PetJournal.SetPetSourceChecked]](<span class="apiarg">index, value</span>)
: [[API C_PetJournal.SetPetTypeFilter|C_PetJournal.SetPetTypeFilter]](<span class="apiarg">index, value</span>) - Sets the pet type in the filter menu.
: [[API C_PetJournal.SetSearchFilter|C_PetJournal.SetSearchFilter]](<span class="apiarg">text</span>) - Sets the search filter in the pet journal.
: [[API C_PetJournal.SpellTargetBattlePet|C_PetJournal.SpellTargetBattlePet]](<span class="apiarg">battlePetGUID</span>)
: [[API C_PetJournal.SummonPetByGUID|C_PetJournal.SummonPetByGUID]](<span class="apiarg">petID</span>) {{apitag|nocombat}} - Summons (or dismisses) a pet.
: [[API C_PetJournal.SummonRandomPet|C_PetJournal.SummonRandomPet]](<span class="apiarg">favoritePets</span>) {{apitag|nocombat}} - Summons a random battle pet companion.

==C_Ping==
: [[API C_Ping.GetContextualPingTypeForUnit|C_Ping.GetContextualPingTypeForUnit]](<span class="apiarg">[targetUnit]</span>) : <span class="apiret">type</span>
: [[API C_Ping.GetCooldownInfo|C_Ping.GetCooldownInfo]]() : <span class="apiret">cooldownInfo</span>
: [[API C_Ping.GetDefaultPingOptions|C_Ping.GetDefaultPingOptions]]() : <span class="apiret">pingTypes</span>
: [[API C_Ping.GetTextureKitForType|C_Ping.GetTextureKitForType]](<span class="apiarg">type</span>) : <span class="apiret">uiTextureKitID</span>
: [[API C_Ping.SendMacroPing|C_Ping.SendMacroPing]](<span class="apiarg">[type [, targetToken]]</span>) {{apitag|protected}}
: [[API C_Ping.TogglePingListener|C_Ping.TogglePingListener]](<span class="apiarg">down</span>) {{apitag|protected}}

==C_PlayerInfo==
: [[API C_PlayerInfo.CanUseItem|C_PlayerInfo.CanUseItem]](<span class="apiarg">itemID</span>) : <span class="apiret">isUseable</span>
: [[API C_PlayerInfo.GetAlternateFormInfo|C_PlayerInfo.GetAlternateFormInfo]]() : <span class="apiret">hasAlternateForm, inAlternateForm</span>
: [[API C_PlayerInfo.GetClass|C_PlayerInfo.GetClass]](<span class="apiarg">playerLocation</span>) : <span class="apiret">className, classFilename, classID</span> - Returns the class of a player.
: [[API C_PlayerInfo.GetContentDifficultyCreatureForPlayer|C_PlayerInfo.GetContentDifficultyCreatureForPlayer]](<span class="apiarg">unitToken</span>) : <span class="apiret">difficulty</span>
: [[API C_PlayerInfo.GetContentDifficultyQuestForPlayer|C_PlayerInfo.GetContentDifficultyQuestForPlayer]](<span class="apiarg">questID</span>) : <span class="apiret">difficulty</span>
: [[API C_PlayerInfo.GetDisplayID|C_PlayerInfo.GetDisplayID]]() : <span class="apiret">displayID</span>
: [[API C_PlayerInfo.GetGlidingInfo|C_PlayerInfo.GetGlidingInfo]]() : <span class="apiret">isGliding, canGlide, forwardSpeed</span> - Returns the [[Dragonriding]] gliding speed.
: [[API C_PlayerInfo.GetName|C_PlayerInfo.GetName]](<span class="apiarg">playerLocation</span>) : <span class="apiret">name</span> - Returns the name of a player.
: [[API C_PlayerInfo.GetNativeDisplayID|C_PlayerInfo.GetNativeDisplayID]]() : <span class="apiret">nativeDisplayID</span>
: [[API C_PlayerInfo.GetPetStableCreatureDisplayInfoID|C_PlayerInfo.GetPetStableCreatureDisplayInfoID]](<span class="apiarg">index</span>) : <span class="apiret">creatureDisplayInfoID</span>
: [[API C_PlayerInfo.GetPlayerCharacterData|C_PlayerInfo.GetPlayerCharacterData]]() : <span class="apiret">characterData</span>
: [[API C_PlayerInfo.GetRace|C_PlayerInfo.GetRace]](<span class="apiarg">playerLocation</span>) : <span class="apiret">raceID</span> - Returns the race of a player.
: [[API C_PlayerInfo.GetSex|C_PlayerInfo.GetSex]](<span class="apiarg">playerLocation</span>) : <span class="apiret">sex</span> - Returns the sex of a player.
: [[API C_PlayerInfo.GUIDIsPlayer|C_PlayerInfo.GUIDIsPlayer]](<span class="apiarg">guid</span>) : <span class="apiret">isPlayer</span> - Returns true if the GUID belongs to a player.
: [[API C_PlayerInfo.HasAccountInventoryLock|C_PlayerInfo.HasAccountInventoryLock]]() : <span class="apiret">hasAccountInventoryLock</span>
: [[API C_PlayerInfo.HasVisibleInvSlot|C_PlayerInfo.HasVisibleInvSlot]](<span class="apiarg">slot</span>) : <span class="apiret">isVisible</span>
: [[API C_PlayerInfo.IsConnected|C_PlayerInfo.IsConnected]](<span class="apiarg">[playerLocation]</span>) : <span class="apiret">isConnected</span> - Returns true if the player is connected.
: [[API C_PlayerInfo.IsDisplayRaceNative|C_PlayerInfo.IsDisplayRaceNative]]() : <span class="apiret">isDisplayRaceNative</span>
: [[API C_PlayerInfo.IsExpansionLandingPageUnlockedForPlayer|C_PlayerInfo.IsExpansionLandingPageUnlockedForPlayer]](<span class="apiarg">expansionID</span>) : <span class="apiret">isUnlocked</span>
: [[API C_PlayerInfo.IsMirrorImage|C_PlayerInfo.IsMirrorImage]]() : <span class="apiret">isMirrorImage</span>
: [[API C_PlayerInfo.IsSelfFoundActive|C_PlayerInfo.IsSelfFoundActive]]() : <span class="apiret">active</span>
: [[API C_PlayerInfo.IsTradingPostAvailable|C_PlayerInfo.IsTradingPostAvailable]]() : <span class="apiret">isAvailable</span>
: [[API C_PlayerInfo.IsTravelersLogAvailable|C_PlayerInfo.IsTravelersLogAvailable]]() : <span class="apiret">isAvailable</span>
: [[API C_PlayerInfo.UnitIsSameServer|C_PlayerInfo.UnitIsSameServer]](<span class="apiarg">playerLocation</span>) : <span class="apiret">unitIsSameServer</span> - Returns true if a player is from the same or [[Connected Realm|connected]] realm.

==C_PlayerInteractionManager==
: [[API C_ImmersiveInteraction.HasImmersiveInteraction|C_ImmersiveInteraction.HasImmersiveInteraction]]() : <span class="apiret">immersiveInteraction</span>
: [[API C_PlayerInteractionManager.ClearInteraction|C_PlayerInteractionManager.ClearInteraction]](<span class="apiarg">[type]</span>)
: [[API C_PlayerInteractionManager.ConfirmationInteraction|C_PlayerInteractionManager.ConfirmationInteraction]](<span class="apiarg">[type]</span>)
: [[API C_PlayerInteractionManager.InteractUnit|C_PlayerInteractionManager.InteractUnit]](<span class="apiarg">unit [, exactMatch [, looseTargeting]]</span>) : <span class="apiret">success</span>
: [[API C_PlayerInteractionManager.IsInteractingWithNpcOfType|C_PlayerInteractionManager.IsInteractingWithNpcOfType]](<span class="apiarg">type</span>) : <span class="apiret">interacting</span>
: [[API C_PlayerInteractionManager.IsReplacingUnit|C_PlayerInteractionManager.IsReplacingUnit]]() : <span class="apiret">replacing</span>
: [[API C_PlayerInteractionManager.IsValidNPCInteraction|C_PlayerInteractionManager.IsValidNPCInteraction]](<span class="apiarg">type</span>) : <span class="apiret">isValidInteraction</span>
: [[API C_PlayerInteractionManager.ReopenInteraction|C_PlayerInteractionManager.ReopenInteraction]]()

==C_PlayerMentorship==
[https://www.wowhead.com/news=317554/guide-mentor-system-requirements-changed-in-shadowlands-build-35598 Newcomer Guides] were added in [[Patch 9.0.1]]
: [[API C_PlayerMentorship.GetMentorLevelRequirement|C_PlayerMentorship.GetMentorLevelRequirement]]() : <span class="apiret">level</span>
: [[API C_PlayerMentorship.GetMentorRequirements|C_PlayerMentorship.GetMentorRequirements]]() : <span class="apiret">achievementIDs, optionalAchievementIDs, optionalCompleteAtLeastCount</span>
: [[API C_PlayerMentorship.GetMentorshipStatus|C_PlayerMentorship.GetMentorshipStatus]](<span class="apiarg">playerLocation</span>) : <span class="apiret">status</span>
: [[API C_PlayerMentorship.IsActivePlayerConsideredNewcomer|C_PlayerMentorship.IsActivePlayerConsideredNewcomer]]() : <span class="apiret">isConsideredNewcomer</span>
: [[API C_PlayerMentorship.IsMentorRestricted|C_PlayerMentorship.IsMentorRestricted]]() : <span class="apiret">isRestricted</span>

==C_ProfSpecs==
: [[API C_ProfSpecs.CanRefundPath|C_ProfSpecs.CanRefundPath]](<span class="apiarg">pathID, configID</span>) : <span class="apiret">canRefund</span>
: [[API C_ProfSpecs.CanUnlockTab|C_ProfSpecs.CanUnlockTab]](<span class="apiarg">tabTreeID, configID</span>) : <span class="apiret">canUnlock</span>
: [[API C_ProfSpecs.GetChildrenForPath|C_ProfSpecs.GetChildrenForPath]](<span class="apiarg">pathID</span>) : <span class="apiret">childIDs</span>
: [[API C_ProfSpecs.GetConfigIDForSkillLine|C_ProfSpecs.GetConfigIDForSkillLine]](<span class="apiarg">skillLineID</span>) : <span class="apiret">configID</span>
: [[API C_ProfSpecs.GetCurrencyInfoForSkillLine|C_ProfSpecs.GetCurrencyInfoForSkillLine]](<span class="apiarg">skillLineID</span>) : <span class="apiret">info</span>
: [[API C_ProfSpecs.GetDefaultSpecSkillLine|C_ProfSpecs.GetDefaultSpecSkillLine]]() : <span class="apiret">defaultSpecSkillLine</span>
: [[API C_ProfSpecs.GetDescriptionForPath|C_ProfSpecs.GetDescriptionForPath]](<span class="apiarg">pathID</span>) : <span class="apiret">description</span>
: [[API C_ProfSpecs.GetDescriptionForPerk|C_ProfSpecs.GetDescriptionForPerk]](<span class="apiarg">perkID</span>) : <span class="apiret">description</span>
: [[API C_ProfSpecs.GetEntryIDForPerk|C_ProfSpecs.GetEntryIDForPerk]](<span class="apiarg">perkID</span>) : <span class="apiret">entryID</span>
: [[API C_ProfSpecs.GetNewSpecReminderProfName|C_ProfSpecs.GetNewSpecReminderProfName]]() : <span class="apiret">profName</span>
: [[API C_ProfSpecs.GetPerksForPath|C_ProfSpecs.GetPerksForPath]](<span class="apiarg">pathID</span>) : <span class="apiret">perkInfos</span>
: [[API C_ProfSpecs.GetRootPathForTab|C_ProfSpecs.GetRootPathForTab]](<span class="apiarg">tabTreeID</span>) : <span class="apiret">rootPathID</span>
: [[API C_ProfSpecs.GetSourceTextForPath|C_ProfSpecs.GetSourceTextForPath]](<span class="apiarg">pathID, configID</span>) : <span class="apiret">sourceText</span>
: [[API C_ProfSpecs.GetSpecTabIDsForSkillLine|C_ProfSpecs.GetSpecTabIDsForSkillLine]](<span class="apiarg">skillLineID</span>) : <span class="apiret">specTabIDs</span>
: [[API C_ProfSpecs.GetSpecTabInfo|C_ProfSpecs.GetSpecTabInfo]]() : <span class="apiret">specTabInfo</span>
: [[API C_ProfSpecs.GetSpendCurrencyForPath|C_ProfSpecs.GetSpendCurrencyForPath]](<span class="apiarg">pathID</span>) : <span class="apiret">currencyID</span>
: [[API C_ProfSpecs.GetSpendEntryForPath|C_ProfSpecs.GetSpendEntryForPath]](<span class="apiarg">pathID</span>) : <span class="apiret">entryID</span>
: [[API C_ProfSpecs.GetStateForPath|C_ProfSpecs.GetStateForPath]](<span class="apiarg">pathID, configID</span>) : <span class="apiret">state</span>
: [[API C_ProfSpecs.GetStateForPerk|C_ProfSpecs.GetStateForPerk]](<span class="apiarg">perkID, configID</span>) : <span class="apiret">state</span>
: [[API C_ProfSpecs.GetStateForTab|C_ProfSpecs.GetStateForTab]](<span class="apiarg">tabTreeID, configID</span>) : <span class="apiret">tabInfo</span>
: [[API C_ProfSpecs.GetTabInfo|C_ProfSpecs.GetTabInfo]](<span class="apiarg">tabTreeID</span>) : <span class="apiret">tabInfo</span>
: [[API C_ProfSpecs.GetUnlockEntryForPath|C_ProfSpecs.GetUnlockEntryForPath]](<span class="apiarg">pathID</span>) : <span class="apiret">entryID</span>
: [[API C_ProfSpecs.GetUnlockRankForPerk|C_ProfSpecs.GetUnlockRankForPerk]](<span class="apiarg">perkID</span>) : <span class="apiret">unlockRank</span>
: [[API C_ProfSpecs.ShouldShowPointsReminder|C_ProfSpecs.ShouldShowPointsReminder]]() : <span class="apiret">showReminder</span>
: [[API C_ProfSpecs.ShouldShowPointsReminderForSkillLine|C_ProfSpecs.ShouldShowPointsReminderForSkillLine]](<span class="apiarg">skillLineID</span>) : <span class="apiret">showReminder</span>
: [[API C_ProfSpecs.ShouldShowSpecTab|C_ProfSpecs.ShouldShowSpecTab]]() : <span class="apiret">showSpecTab</span>
: [[API C_ProfSpecs.SkillLineHasSpecialization|C_ProfSpecs.SkillLineHasSpecialization]](<span class="apiarg">skillLineID</span>) : <span class="apiret">hasSpecialization</span>

==C_RecruitAFriend==
[[Recruit-A-Friend]] was reworked in [[Patch 8.2.5]]
: [[API C_RecruitAFriend.CanSummonFriend|C_RecruitAFriend.CanSummonFriend]](<span class="apiarg">guid</span>) : <span class="apiret">result</span> - Returns whether you can RaF summon a particular unit.
: [[API C_RecruitAFriend.ClaimActivityReward|C_RecruitAFriend.ClaimActivityReward]](<span class="apiarg">activityID, acceptanceID</span>) : <span class="apiret">success</span>
: [[API C_RecruitAFriend.ClaimNextReward|C_RecruitAFriend.ClaimNextReward]](<span class="apiarg">[rafVersion]</span>) : <span class="apiret">success</span>
: [[API C_RecruitAFriend.GenerateRecruitmentLink|C_RecruitAFriend.GenerateRecruitmentLink]]() : <span class="apiret">success</span>
: [[API C_RecruitAFriend.GetRAFInfo|C_RecruitAFriend.GetRAFInfo]]() : <span class="apiret">info</span>
: [[API C_RecruitAFriend.GetRAFSystemInfo|C_RecruitAFriend.GetRAFSystemInfo]]() : <span class="apiret">systemInfo</span>
: [[API C_RecruitAFriend.GetRecruitActivityRequirementsText|C_RecruitAFriend.GetRecruitActivityRequirementsText]](<span class="apiarg">activityID, acceptanceID</span>) : <span class="apiret">requirementsText</span>
: [[API C_RecruitAFriend.GetRecruitInfo|C_RecruitAFriend.GetRecruitInfo]]() : <span class="apiret">active, faction</span>
: [[API C_RecruitAFriend.GetSummonFriendCooldown|C_RecruitAFriend.GetSummonFriendCooldown]]() : <span class="apiret">startTimeSeconds, durationSeconds, enableCooldownTimer</span> - Returns the cooldown info of the RaF Summon Friend ability.
: [[API C_RecruitAFriend.IsEnabled|C_RecruitAFriend.IsEnabled]]() : <span class="apiret">enabled</span>
: [[API C_RecruitAFriend.IsRecruitAFriendLinked|C_RecruitAFriend.IsRecruitAFriendLinked]](<span class="apiarg">guid</span>) : <span class="apiret">result</span>
: [[API C_RecruitAFriend.IsRecruitingEnabled|C_RecruitAFriend.IsRecruitingEnabled]]() : <span class="apiret">enabled</span>
: [[API C_RecruitAFriend.RemoveRAFRecruit|C_RecruitAFriend.RemoveRAFRecruit]](<span class="apiarg">wowAccountGUID</span>) : <span class="apiret">success</span>
: [[API C_RecruitAFriend.RequestUpdatedRecruitmentInfo|C_RecruitAFriend.RequestUpdatedRecruitmentInfo]]() : <span class="apiret">success</span>
: [[API C_RecruitAFriend.SummonFriend|C_RecruitAFriend.SummonFriend]](<span class="apiarg">target, name</span>) - Summons a player using the RaF system.
: [[API SelectedRealmName|SelectedRealmName]]() : <span class="apiret">selectedRealmName</span> - Returns the realm name that will be used in Recruit-a-Friend invitations.

==C_ReportSystem==
: [[API C_ReportSystem.CanReportPlayer|C_ReportSystem.CanReportPlayer]](<span class="apiarg">playerLocation</span>) : <span class="apiret">canReport</span> - Returns if a player can be reported.
: [[API C_ReportSystem.CanReportPlayerForLanguage|C_ReportSystem.CanReportPlayerForLanguage]](<span class="apiarg">playerLocation</span>) : <span class="apiret">canReport</span>
: [[API C_ReportSystem.GetMajorCategoriesForReportType|C_ReportSystem.GetMajorCategoriesForReportType]](<span class="apiarg">reportType</span>) : <span class="apiret">majorCategories</span>
: [[API C_ReportSystem.GetMajorCategoryString|C_ReportSystem.GetMajorCategoryString]](<span class="apiarg">majorCategory</span>) : <span class="apiret">majorCategoryString</span>
: [[API C_ReportSystem.GetMinorCategoriesForReportTypeAndMajorCategory|C_ReportSystem.GetMinorCategoriesForReportTypeAndMajorCategory]](<span class="apiarg">reportType, majorCategory</span>) : <span class="apiret">minorCategories</span>
: [[API C_ReportSystem.GetMinorCategoryString|C_ReportSystem.GetMinorCategoryString]](<span class="apiarg">minorCategory</span>) : <span class="apiret">minorCategoryString</span>
: [[API C_ReportSystem.ReportServerLag|C_ReportSystem.ReportServerLag]]()
: [[API C_ReportSystem.ReportStuckInCombat|C_ReportSystem.ReportStuckInCombat]]()
: [[API C_ReportSystem.SendReport|C_ReportSystem.SendReport]](<span class="apiarg">reportInfo [, playerLocation]</span>) {{apitag|protected}}

==C_Reputation==
Relates to [[Reputation]].
: [[API C_Reputation.AreLegacyReputationsShown|C_Reputation.AreLegacyReputationsShown]]() : <span class="apiret">areLegacyReputationsShown</span>
: [[API C_Reputation.CollapseAllFactionHeaders|C_Reputation.CollapseAllFactionHeaders]]()
: [[API C_Reputation.CollapseFactionHeader|C_Reputation.CollapseFactionHeader]](<span class="apiarg">factionSortIndex</span>)
: [[API C_Reputation.ExpandAllFactionHeaders|C_Reputation.ExpandAllFactionHeaders]]()
: [[API C_Reputation.ExpandFactionHeader|C_Reputation.ExpandFactionHeader]](<span class="apiarg">factionSortIndex</span>)
: [[API C_Reputation.GetFactionDataByID|C_Reputation.GetFactionDataByID]](<span class="apiarg">factionID</span>) : <span class="apiret">factionData</span>
: [[API C_Reputation.GetFactionDataByIndex|C_Reputation.GetFactionDataByIndex]](<span class="apiarg">factionSortIndex</span>) : <span class="apiret">factionData</span>
: [[API C_Reputation.GetFactionParagonInfo|C_Reputation.GetFactionParagonInfo]](<span class="apiarg">factionID</span>) : <span class="apiret">currentValue, threshold, rewardQuestID, hasRewardPending, tooLowLevelForParagon</span> - Returns [[Paragon reputation|Paragon]] info on a faction.
: [[API C_Reputation.GetGuildFactionData|C_Reputation.GetGuildFactionData]]() : <span class="apiret">guildFactionData</span>
: [[API C_Reputation.GetGuildRepExpirationTime|C_Reputation.GetGuildRepExpirationTime]]() : <span class="apiret">expirationTime</span>
: [[API C_Reputation.GetNumFactions|C_Reputation.GetNumFactions]]() : <span class="apiret">numFactions</span>
: [[API C_Reputation.GetReputationSortType|C_Reputation.GetReputationSortType]]() : <span class="apiret">sortType</span>
: [[API C_Reputation.GetSelectedFaction|C_Reputation.GetSelectedFaction]]() : <span class="apiret">selectedFactionSortIndex</span>
: [[API C_Reputation.GetWatchedFactionData|C_Reputation.GetWatchedFactionData]]() : <span class="apiret">watchedFactionData</span>
: [[API C_Reputation.IsAccountWideReputation|C_Reputation.IsAccountWideReputation]](<span class="apiarg">factionID</span>) : <span class="apiret">isAccountWide</span>
: [[API C_Reputation.IsFactionActive|C_Reputation.IsFactionActive]](<span class="apiarg">factionSortIndex</span>) : <span class="apiret">isActive</span>
: [[API C_Reputation.IsFactionParagon|C_Reputation.IsFactionParagon]](<span class="apiarg">factionID</span>) : <span class="apiret">hasParagon</span> - Returns true if a faction is a paragon reputation.
: [[API C_Reputation.IsMajorFaction|C_Reputation.IsMajorFaction]](<span class="apiarg">factionID</span>) : <span class="apiret">isMajorFaction</span>
: [[API C_Reputation.RequestFactionParagonPreloadRewardData|C_Reputation.RequestFactionParagonPreloadRewardData]](<span class="apiarg">factionID</span>) - Queries the server to pre-load Paragon reward data.
: [[API C_Reputation.SetFactionActive|C_Reputation.SetFactionActive]](<span class="apiarg">factionSortIndex, setActive</span>)
: [[API C_Reputation.SetLegacyReputationsShown|C_Reputation.SetLegacyReputationsShown]](<span class="apiarg">showLegacyReputations</span>)
: [[API C_Reputation.SetReputationSortType|C_Reputation.SetReputationSortType]](<span class="apiarg">sortType</span>)
: [[API C_Reputation.SetSelectedFaction|C_Reputation.SetSelectedFaction]](<span class="apiarg">factionSortIndex</span>)
: [[API C_Reputation.SetWatchedFactionByID|C_Reputation.SetWatchedFactionByID]](<span class="apiarg">factionID</span>)
: [[API C_Reputation.SetWatchedFactionByIndex|C_Reputation.SetWatchedFactionByIndex]](<span class="apiarg">factionSortIndex</span>)
: [[API C_Reputation.ToggleFactionAtWar|C_Reputation.ToggleFactionAtWar]](<span class="apiarg">factionSortIndex</span>)

==C_SeasonInfo==
: [[API C_SeasonInfo.GetCurrentDisplaySeasonExpansion|C_SeasonInfo.GetCurrentDisplaySeasonExpansion]]() : <span class="apiret">expansionID</span>
: [[API C_SeasonInfo.GetCurrentDisplaySeasonID|C_SeasonInfo.GetCurrentDisplaySeasonID]]() : <span class="apiret">seasonID</span>

==C_SocialRestrictions==
: [[API C_SocialRestrictions.AcknowledgeRegionalChatDisabled|C_SocialRestrictions.AcknowledgeRegionalChatDisabled]]()
: [[API C_SocialRestrictions.IsChatDisabled|C_SocialRestrictions.IsChatDisabled]]() : <span class="apiret">disabled</span>
: [[API C_SocialRestrictions.IsMuted|C_SocialRestrictions.IsMuted]]() : <span class="apiret">isMuted</span>
: [[API C_SocialRestrictions.IsSilenced|C_SocialRestrictions.IsSilenced]]() : <span class="apiret">isSilenced</span>
: [[API C_SocialRestrictions.IsSquelched|C_SocialRestrictions.IsSquelched]]() : <span class="apiret">isSquelched</span>
: [[API C_SocialRestrictions.SetChatDisabled|C_SocialRestrictions.SetChatDisabled]](<span class="apiarg">disabled</span>)

==C_SpectatingUI==
: [[API C_SpectatingUI.GetSpectateTargetInfo|C_SpectatingUI.GetSpectateTargetInfo]]()
: [[API C_SpectatingUI.GetSpectatingPlayerSpellItemQuality|C_SpectatingUI.GetSpectatingPlayerSpellItemQuality]]()
: [[API C_SpectatingUI.IsSpectating|C_SpectatingUI.IsSpectating]]()
: [[API C_SpectatingUI.LeaveSpectateMode|C_SpectatingUI.LeaveSpectateMode]]()
: [[API C_SpectatingUI.SpectateChange|C_SpectatingUI.SpectateChange]]()

==C_Spell==
: [[API C_Spell.DoesSpellExist|C_Spell.DoesSpellExist]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">spellExists</span>
: [[API C_Spell.GetDeadlyDebuffInfo|C_Spell.GetDeadlyDebuffInfo]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">deadlyDebuffInfo</span>
: [[API C_Spell.GetMawPowerLinkBySpellID|C_Spell.GetMawPowerLinkBySpellID]](<span class="apiarg">spellID</span>) : <span class="apiret">link</span>
: [[API C_Spell.GetOverrideSpell|C_Spell.GetOverrideSpell]](<span class="apiarg">spellIdentifier [, spec [, onlyKnown [, ignoreOverrideSpellID]]]</span>) : <span class="apiret">overrideSpellID</span>
: [[API C_Spell.GetSchoolString|C_Spell.GetSchoolString]](<span class="apiarg">schoolMask</span>) : <span class="apiret">result</span>
: [[API C_Spell.GetSpellAutoCast|C_Spell.GetSpellAutoCast]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">autoCastAllowed, autoCastEnabled</span>
: [[API C_Spell.GetSpellCastCount|C_Spell.GetSpellCastCount]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">castCount</span>
: [[API C_Spell.GetSpellCharges|C_Spell.GetSpellCharges]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">chargeInfo</span>
: [[API C_Spell.GetSpellCooldown|C_Spell.GetSpellCooldown]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">spellCooldownInfo</span>
: [[API C_Spell.GetSpellDescription|C_Spell.GetSpellDescription]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">description</span>
: [[API C_Spell.GetSpellIDForSpellIdentifier|C_Spell.GetSpellIDForSpellIdentifier]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">spellID</span>
: [[API C_Spell.GetSpellInfo|C_Spell.GetSpellInfo]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">spellInfo</span>
: [[API C_Spell.GetSpellLevelLearned|C_Spell.GetSpellLevelLearned]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">levelLearned</span>
: [[API C_Spell.GetSpellLink|C_Spell.GetSpellLink]](<span class="apiarg">spellIdentifier [, glyphID]</span>) : <span class="apiret">spellLink</span>
: [[API C_Spell.GetSpellLossOfControlCooldown|C_Spell.GetSpellLossOfControlCooldown]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">startTime, duration</span>
: [[API C_Spell.GetSpellName|C_Spell.GetSpellName]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">name</span>
: [[API C_Spell.GetSpellPowerCost|C_Spell.GetSpellPowerCost]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">powerCosts</span>
: [[API C_Spell.GetSpellQueueWindow|C_Spell.GetSpellQueueWindow]]() : <span class="apiret">result</span>
: [[API C_Spell.GetSpellSkillLineAbilityRank|C_Spell.GetSpellSkillLineAbilityRank]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">rank</span>
: [[API C_Spell.GetSpellSubtext|C_Spell.GetSpellSubtext]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">subtext</span>
: [[API C_Spell.GetSpellTexture|C_Spell.GetSpellTexture]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">iconID, originalIconID</span>
: [[API C_Spell.GetSpellTradeSkillLink|C_Spell.GetSpellTradeSkillLink]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">spellLink</span>
: [[API C_Spell.IsAutoAttackSpell|C_Spell.IsAutoAttackSpell]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">isAutoAttack</span>
: [[API C_Spell.IsAutoRepeatSpell|C_Spell.IsAutoRepeatSpell]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">isAutoRepeat</span>
: [[API C_Spell.IsClassTalentSpell|C_Spell.IsClassTalentSpell]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">isAutoRepeat</span>
: [[API C_Spell.IsCurrentSpell|C_Spell.IsCurrentSpell]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">isCurrentSpell</span>
: [[API C_Spell.IsPressHoldReleaseSpell|C_Spell.IsPressHoldReleaseSpell]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">isPressHoldRelease</span>
: [[API C_Spell.IsPvPTalentSpell|C_Spell.IsPvPTalentSpell]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">isAutoRepeat</span>
: [[API C_Spell.IsRangedAutoAttackSpell|C_Spell.IsRangedAutoAttackSpell]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">isRangedAutoAttack</span>
: [[API C_Spell.IsSpellDataCached|C_Spell.IsSpellDataCached]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">isCached</span>
: [[API C_Spell.IsSpellDisabled|C_Spell.IsSpellDisabled]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">disabled</span>
: [[API C_Spell.IsSpellHarmful|C_Spell.IsSpellHarmful]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">isHarmful</span>
: [[API C_Spell.IsSpellHelpful|C_Spell.IsSpellHelpful]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">isHelpful</span>
: [[API C_Spell.IsSpellInRange|C_Spell.IsSpellInRange]](<span class="apiarg">spellIdentifier [, targetUnit]</span>) : <span class="apiret">inRange</span>
: [[API C_Spell.IsSpellPassive|C_Spell.IsSpellPassive]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">isPassive</span>
: [[API C_Spell.IsSpellUsable|C_Spell.IsSpellUsable]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">isUsable, insufficientPower</span>
: [[API C_Spell.PickupSpell|C_Spell.PickupSpell]](<span class="apiarg">spellIdentifier</span>)
: [[API C_Spell.RequestLoadSpellData|C_Spell.RequestLoadSpellData]](<span class="apiarg">spellIdentifier</span>)
: [[API C_Spell.SetSpellAutoCastEnabled|C_Spell.SetSpellAutoCastEnabled]](<span class="apiarg">spellIdentifier, enabled</span>)
: [[API C_Spell.SpellHasRange|C_Spell.SpellHasRange]](<span class="apiarg">spellIdentifier</span>) : <span class="apiret">hasRange</span>
: [[API C_Spell.TargetSpellIsEnchanting|C_Spell.TargetSpellIsEnchanting]]() : <span class="apiret">isEnchanting</span>
: [[API C_Spell.TargetSpellJumpsUpgradeTrack|C_Spell.TargetSpellJumpsUpgradeTrack]]() : <span class="apiret">jumpsUpgradeTrack</span>
: [[API C_Spell.TargetSpellReplacesBonusTree|C_Spell.TargetSpellReplacesBonusTree]]() : <span class="apiret">result</span>
: [[API C_Spell.ToggleSpellAutoCast|C_Spell.ToggleSpellAutoCast]](<span class="apiarg">spellIdentifier</span>)
: [[API AcceptSpellConfirmationPrompt|AcceptSpellConfirmationPrompt]](<span class="apiarg">spellID</span>)
: [[API CancelSpellByName|CancelSpellByName]](<span class="apiarg">name</span>) {{apitag|nocombat}}
: [[API CastSpell|CastSpell]](<span class="apiarg">spellIndex, spellbookType</span>) {{apitag|protected}} - Casts a spell from the spellbook.
: [[API CastSpellByID|CastSpellByID]](<span class="apiarg">spellID [, target]</span>) {{apitag|protected}}
: [[API CastSpellByName|CastSpellByName]](<span class="apiarg">name [, target]</span>) {{apitag|protected}} - Casts a spell by name.
: [[API DeclineSpellConfirmationPrompt|DeclineSpellConfirmationPrompt]](<span class="apiarg">spellID</span>)
: [[API FindBaseSpellByID|FindBaseSpellByID]](<span class="apiarg">spellID</span>) : <span class="apiret">baseSpellID</span>
: [[API FindSpellOverrideByID|FindSpellOverrideByID]](<span class="apiarg">spellID</span>) : <span class="apiret">overrideSpellID</span>
: [[API GetSpellBaseCooldown|GetSpellBaseCooldown]](<span class="apiarg">spellid</span>) : <span class="apiret">cooldownMS, gcdMS</span>
: [[API GetSpellConfirmationPromptsInfo|GetSpellConfirmationPromptsInfo]]()
: [[API IsConsumableSpell|IsConsumableSpell]]()
: [[API IsPlayerSpell|IsPlayerSpell]](<span class="apiarg">spellID</span>) : <span class="apiret">isKnown</span>
: [[API IsSpellKnown|IsSpellKnown]](<span class="apiarg">spellID [, isPetSpell]</span>) : <span class="apiret">isKnown</span> - Returns whether the player (or pet) knows the given spell.
: [[API IsSpellKnownOrOverridesKnown|IsSpellKnownOrOverridesKnown]](<span class="apiarg">spellID [, isPet]</span>)
: [[API IsSpellOverlayed|IsSpellOverlayed]](<span class="apiarg">spellID</span>) : <span class="apiret">isTrue</span> - Returns true if the specified spell currently has a proc / spell activation alert (glowing border).
: [[API SpellCancelQueuedSpell|SpellCancelQueuedSpell]]()
: [[API SpellCanTargetItem|SpellCanTargetItem]]()
: [[API SpellCanTargetItemID|SpellCanTargetItemID]]()
: [[API SpellCanTargetQuest|SpellCanTargetQuest]]()
: [[API SpellCanTargetUnit|SpellCanTargetUnit]](<span class="apiarg">unit</span>) : <span class="apiret">canTarget</span> - Returns true if the spell awaiting target selection can be cast on the unit.
: [[API SpellGetVisibilityInfo|SpellGetVisibilityInfo]](<span class="apiarg">spellId, visType</span>) : <span class="apiret">hasCustom, alwaysShowMine, showForMySpec</span>
: [[API SpellIsAlwaysShown|SpellIsAlwaysShown]](<span class="apiarg">spellID</span>)
: [[API SpellIsPriorityAura|SpellIsPriorityAura]](<span class="apiarg">spellID</span>)
: [[API SpellIsSelfBuff|SpellIsSelfBuff]](<span class="apiarg">spellID</span>)
: [[API SpellIsTargeting|SpellIsTargeting]]() : <span class="apiret">isTargeting</span> - Returns true if a spell is about to be cast and is waiting for the player to select a target.
: [[API SpellStopCasting|SpellStopCasting]]() : <span class="apiret">stopped</span> {{apitag|protected}} - Stops the current spellcast.
: [[API SpellStopTargeting|SpellStopTargeting]]() {{apitag|protected}} - Cancels the spell awaiting target selection.
: [[API SpellTargetUnit|SpellTargetUnit]](<span class="apiarg">unit</span>) {{apitag|protected}} - Casts the spell awaiting target selection on the unit.
: [[API SpellTargetItem|SpellTargetItem]](<span class="apiarg">item</span>) {{apitag|protected}}
: [[API QueryCastSequence|QueryCastSequence]](<span class="apiarg">sequence</span>) {{apitag|framexml}} - Returns index, item, spell for the spell/item that will be used next if the cast sequence is executed.

==C_SpellBook==
: [[API C_SpellBook.CastSpellBookItem|C_SpellBook.CastSpellBookItem]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank [, targetSelf]</span>)
: [[API C_SpellBook.ContainsAnyDisenchantSpell|C_SpellBook.ContainsAnyDisenchantSpell]]() : <span class="apiret">contains</span>
: [[API C_SpellBook.FindSpellBookSlotForSpell|C_SpellBook.FindSpellBookSlotForSpell]](<span class="apiarg">spellIdentifier [, includeHidden [, includeFlyouts [, includeFutureSpells [, includeOffSpec]]]]</span>) : <span class="apiret">spellBookItemSlotIndex, spellBookItemSpellBank</span>
: [[API C_SpellBook.GetCurrentLevelSpells|C_SpellBook.GetCurrentLevelSpells]](<span class="apiarg">level</span>) : <span class="apiret">spellIDs</span>
: [[API C_SpellBook.GetNumSpellBookSkillLines|C_SpellBook.GetNumSpellBookSkillLines]]() : <span class="apiret">numSpellBookSkillLines</span>
: [[API C_SpellBook.GetSkillLineIndexByID|C_SpellBook.GetSkillLineIndexByID]](<span class="apiarg">skillLineID</span>) : <span class="apiret">skillIndex</span>
: [[API C_SpellBook.GetSpellBookItemAutoCast|C_SpellBook.GetSpellBookItemAutoCast]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank</span>) : <span class="apiret">autoCastAllowed, autoCastEnabled</span>
: [[API C_SpellBook.GetSpellBookItemCastCount|C_SpellBook.GetSpellBookItemCastCount]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank</span>) : <span class="apiret">castCount</span>
: [[API C_SpellBook.GetSpellBookItemCharges|C_SpellBook.GetSpellBookItemCharges]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank</span>) : <span class="apiret">chargeInfo</span>
: [[API C_SpellBook.GetSpellBookItemCooldown|C_SpellBook.GetSpellBookItemCooldown]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank</span>) : <span class="apiret">spellCooldownInfo</span>
: [[API C_SpellBook.GetSpellBookItemDescription|C_SpellBook.GetSpellBookItemDescription]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank</span>) : <span class="apiret">description</span>
: [[API C_SpellBook.GetSpellBookItemInfo|C_SpellBook.GetSpellBookItemInfo]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank</span>) : <span class="apiret">spellBookItemInfo</span>
: [[API C_SpellBook.GetSpellBookItemLevelLearned|C_SpellBook.GetSpellBookItemLevelLearned]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank</span>) : <span class="apiret">levelLearned</span>
: [[API C_SpellBook.GetSpellBookItemLink|C_SpellBook.GetSpellBookItemLink]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank [, glyphID]</span>) : <span class="apiret">spellLink</span>
: [[API C_SpellBook.GetSpellBookItemLossOfControlCooldown|C_SpellBook.GetSpellBookItemLossOfControlCooldown]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank</span>) : <span class="apiret">startTime, duration</span>
: [[API C_SpellBook.GetSpellBookItemName|C_SpellBook.GetSpellBookItemName]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank</span>) : <span class="apiret">name, subName</span>
: [[API C_SpellBook.GetSpellBookItemPowerCost|C_SpellBook.GetSpellBookItemPowerCost]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank</span>) : <span class="apiret">powerCosts</span>
: [[API C_SpellBook.GetSpellBookItemSkillLineIndex|C_SpellBook.GetSpellBookItemSkillLineIndex]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank</span>) : <span class="apiret">skillLineIndex</span>
: [[API C_SpellBook.GetSpellBookItemTexture|C_SpellBook.GetSpellBookItemTexture]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank</span>) : <span class="apiret">iconID</span>
: [[API C_SpellBook.GetSpellBookItemTradeSkillLink|C_SpellBook.GetSpellBookItemTradeSkillLink]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank</span>) : <span class="apiret">spellLink</span>
: [[API C_SpellBook.GetSpellBookItemType|C_SpellBook.GetSpellBookItemType]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank</span>) : <span class="apiret">itemType, actionID, spellID</span>
: [[API C_SpellBook.GetSpellBookSkillLineInfo|C_SpellBook.GetSpellBookSkillLineInfo]](<span class="apiarg">skillLineIndex</span>) : <span class="apiret">skillLineInfo</span>
: [[API C_SpellBook.GetTrackedNameplateCooldownSpells|C_SpellBook.GetTrackedNameplateCooldownSpells]]() : <span class="apiret">spellIDs</span>
: [[API C_SpellBook.HasPetSpells|C_SpellBook.HasPetSpells]]() : <span class="apiret">numPetSpells, petNameToken</span>
: [[API C_SpellBook.IsAutoAttackSpellBookItem|C_SpellBook.IsAutoAttackSpellBookItem]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank</span>) : <span class="apiret">isAutoAttack</span>
: [[API C_SpellBook.IsClassTalentSpellBookItem|C_SpellBook.IsClassTalentSpellBookItem]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank</span>) : <span class="apiret">isClassTalent</span>
: [[API C_SpellBook.IsPvPTalentSpellBookItem|C_SpellBook.IsPvPTalentSpellBookItem]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank</span>) : <span class="apiret">isPvPTalent</span>
: [[API C_SpellBook.IsRangedAutoAttackSpellBookItem|C_SpellBook.IsRangedAutoAttackSpellBookItem]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank</span>) : <span class="apiret">isRangedAutoAttack</span>
: [[API C_SpellBook.IsSpellBookItemHarmful|C_SpellBook.IsSpellBookItemHarmful]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank</span>) : <span class="apiret">isHarmful</span>
: [[API C_SpellBook.IsSpellBookItemHelpful|C_SpellBook.IsSpellBookItemHelpful]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank</span>) : <span class="apiret">isHelpful</span>
: [[API C_SpellBook.IsSpellBookItemInRange|C_SpellBook.IsSpellBookItemInRange]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank [, targetUnit]</span>) : <span class="apiret">inRange</span>
: [[API C_SpellBook.IsSpellBookItemOffSpec|C_SpellBook.IsSpellBookItemOffSpec]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank</span>) : <span class="apiret">isOffSpec</span>
: [[API C_SpellBook.IsSpellBookItemPassive|C_SpellBook.IsSpellBookItemPassive]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank</span>) : <span class="apiret">isPassive</span>
: [[API C_SpellBook.IsSpellBookItemUsable|C_SpellBook.IsSpellBookItemUsable]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank</span>) : <span class="apiret">isUsable, insufficientPower</span>
: [[API C_SpellBook.PickupSpellBookItem|C_SpellBook.PickupSpellBookItem]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank</span>)
: [[API C_SpellBook.SetSpellBookItemAutoCastEnabled|C_SpellBook.SetSpellBookItemAutoCastEnabled]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank, enabled</span>)
: [[API C_SpellBook.SpellBookItemHasRange|C_SpellBook.SpellBookItemHasRange]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank</span>) : <span class="apiret">hasRange</span>
: [[API C_SpellBook.ToggleSpellBookItemAutoCast|C_SpellBook.ToggleSpellBookItemAutoCast]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank</span>)
: [[API FindSpellBookSlotBySpellID|FindSpellBookSlotBySpellID]](<span class="apiarg">spellID [, isPet]</span>)
: [[API IsSelectedSpellBookItem|IsSelectedSpellBookItem]](<span class="apiarg">spellSlot</span>)

==C_StableInfo==
: [[API C_StableInfo.ClosePetStables|C_StableInfo.ClosePetStables]]()
: [[API C_StableInfo.GetActivePetList|C_StableInfo.GetActivePetList]]() : <span class="apiret">activePets</span>
: [[API C_StableInfo.GetNumActivePets|C_StableInfo.GetNumActivePets]]() : <span class="apiret">numActivePets</span>
: [[API C_StableInfo.GetNumStablePets|C_StableInfo.GetNumStablePets]]() : <span class="apiret">numStablePets</span>
: [[API C_StableInfo.GetStabledPetList|C_StableInfo.GetStabledPetList]]() : <span class="apiret">stabledPets</span>
: [[API C_StableInfo.GetStablePetFoodTypes|C_StableInfo.GetStablePetFoodTypes]](<span class="apiarg">index</span>) : <span class="apiret">foodTypes</span>
: [[API C_StableInfo.GetStablePetInfo|C_StableInfo.GetStablePetInfo]](<span class="apiarg">index</span>) : <span class="apiret">petInfo</span>
: [[API C_StableInfo.IsAtStableMaster|C_StableInfo.IsAtStableMaster]]() : <span class="apiret">isAtStableMaster</span>
: [[API C_StableInfo.IsPetFavorite|C_StableInfo.IsPetFavorite]](<span class="apiarg">slot</span>) : <span class="apiret">isFavorite</span>
: [[API C_StableInfo.PickupStablePet|C_StableInfo.PickupStablePet]](<span class="apiarg">index</span>)
: [[API C_StableInfo.SetPetFavorite|C_StableInfo.SetPetFavorite]](<span class="apiarg">slot, isFavorite</span>)
: [[API C_StableInfo.SetPetSlot|C_StableInfo.SetPetSlot]](<span class="apiarg">index, slot</span>)

==C_TooltipInfo==
: [[API C_TooltipComparison.GetItemComparisonDelta|C_TooltipComparison.GetItemComparisonDelta]](<span class="apiarg">comparisonItem, equippedItem [, pairedItem [, addPairedStats]]</span>) : <span class="apiret">lines</span>
: [[API C_TooltipComparison.GetItemComparisonInfo|C_TooltipComparison.GetItemComparisonInfo]](<span class="apiarg">comparisonItem</span>) : <span class="apiret">info</span>
: [[API C_TooltipInfo.GetAchievementByID|C_TooltipInfo.GetAchievementByID]](<span class="apiarg">achievementID</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetAction|C_TooltipInfo.GetAction]](<span class="apiarg">actionID</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetArtifactItem|C_TooltipInfo.GetArtifactItem]]() : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetArtifactPowerByID|C_TooltipInfo.GetArtifactPowerByID]](<span class="apiarg">powerID</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetAzeriteEssence|C_TooltipInfo.GetAzeriteEssence]](<span class="apiarg">essenceID [, rank]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetAzeriteEssenceSlot|C_TooltipInfo.GetAzeriteEssenceSlot]](<span class="apiarg">slot</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetAzeritePower|C_TooltipInfo.GetAzeritePower]](<span class="apiarg">itemID, itemLevel, powerID [, owningItemLink]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetBackpackToken|C_TooltipInfo.GetBackpackToken]](<span class="apiarg">index</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetBagItem|C_TooltipInfo.GetBagItem]](<span class="apiarg">bagIndex, slotIndex</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetBagItemChild|C_TooltipInfo.GetBagItemChild]](<span class="apiarg">bagIndex, slotIndex, equipSlotIndex</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetBuybackItem|C_TooltipInfo.GetBuybackItem]](<span class="apiarg">index</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetCompanionPet|C_TooltipInfo.GetCompanionPet]](<span class="apiarg">petGUID</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetConduit|C_TooltipInfo.GetConduit]](<span class="apiarg">conduitID, conduitRank</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetCurrencyByID|C_TooltipInfo.GetCurrencyByID]](<span class="apiarg">currencyID [, amount]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetCurrencyToken|C_TooltipInfo.GetCurrencyToken]](<span class="apiarg">tokenIndex</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetEnhancedConduit|C_TooltipInfo.GetEnhancedConduit]](<span class="apiarg">conduitID, rank</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetEquipmentSet|C_TooltipInfo.GetEquipmentSet]](<span class="apiarg">setID</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetExistingSocketGem|C_TooltipInfo.GetExistingSocketGem]](<span class="apiarg">index [, toDestroy]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetGuildBankItem|C_TooltipInfo.GetGuildBankItem]](<span class="apiarg">tab, slot</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetHeirloomByItemID|C_TooltipInfo.GetHeirloomByItemID]](<span class="apiarg">itemID</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetHyperlink|C_TooltipInfo.GetHyperlink]](<span class="apiarg">hyperlink [, optionalArg1 [, optionalArg2 [, hideVendorPrice]]]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetInboxItem|C_TooltipInfo.GetInboxItem]](<span class="apiarg">messageIndex [, attachmentIndex]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetInstanceLockEncountersComplete|C_TooltipInfo.GetInstanceLockEncountersComplete]](<span class="apiarg">index</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetInventoryItem|C_TooltipInfo.GetInventoryItem]](<span class="apiarg">unit, slot [, hideUselessStats]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetInventoryItemByID|C_TooltipInfo.GetInventoryItemByID]](<span class="apiarg">itemID</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetItemByGUID|C_TooltipInfo.GetItemByGUID]](<span class="apiarg">guid</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetItemByID|C_TooltipInfo.GetItemByID]](<span class="apiarg">itemID [, quality]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetItemByItemModifiedAppearanceID|C_TooltipInfo.GetItemByItemModifiedAppearanceID]](<span class="apiarg">itemModifiedAppearanceID</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetItemInteractionItem|C_TooltipInfo.GetItemInteractionItem]]() : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetItemKey|C_TooltipInfo.GetItemKey]](<span class="apiarg">itemID, itemLevel, itemSuffix [, requiredLevel]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetLFGDungeonReward|C_TooltipInfo.GetLFGDungeonReward]](<span class="apiarg">dungeonID, lootIndex</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetLFGDungeonShortageReward|C_TooltipInfo.GetLFGDungeonShortageReward]](<span class="apiarg">dungeonID, shortageSeverity, lootIndex</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetLootCurrency|C_TooltipInfo.GetLootCurrency]](<span class="apiarg">slot</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetLootItem|C_TooltipInfo.GetLootItem]](<span class="apiarg">slot</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetLootRollItem|C_TooltipInfo.GetLootRollItem]](<span class="apiarg">id</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetMerchantCostItem|C_TooltipInfo.GetMerchantCostItem]](<span class="apiarg">slot, costIndex</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetMerchantItem|C_TooltipInfo.GetMerchantItem]](<span class="apiarg">slot</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetMinimapMouseover|C_TooltipInfo.GetMinimapMouseover]]() : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetMountBySpellID|C_TooltipInfo.GetMountBySpellID]](<span class="apiarg">spellID [, checkIndoors]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetOwnedItemByID|C_TooltipInfo.GetOwnedItemByID]](<span class="apiarg">itemID</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetPetAction|C_TooltipInfo.GetPetAction]](<span class="apiarg">slot</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetPossession|C_TooltipInfo.GetPossession]](<span class="apiarg">slot</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetPvpBrawl|C_TooltipInfo.GetPvpBrawl]](<span class="apiarg">[isSpecial]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetPvpTalent|C_TooltipInfo.GetPvpTalent]](<span class="apiarg">talentID [, isInspect [, groupIndex [, talentIndex]]]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetQuestCurrency|C_TooltipInfo.GetQuestCurrency]](<span class="apiarg">type, currencyIndex</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetQuestItem|C_TooltipInfo.GetQuestItem]](<span class="apiarg">type, itemIndex [, allowCollectionText]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetQuestLogCurrency|C_TooltipInfo.GetQuestLogCurrency]](<span class="apiarg">type, currencyIndex [, questID]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetQuestLogItem|C_TooltipInfo.GetQuestLogItem]](<span class="apiarg">type, itemIndex [, questID [, allowCollectionText]]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetQuestLogSpecialItem|C_TooltipInfo.GetQuestLogSpecialItem]](<span class="apiarg">questIndex</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetQuestPartyProgress|C_TooltipInfo.GetQuestPartyProgress]](<span class="apiarg">questID [, omitTitle [, ignoreActivePlayer]]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetRecipeRankInfo|C_TooltipInfo.GetRecipeRankInfo]](<span class="apiarg">recipeID, rank</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetRecipeReagentItem|C_TooltipInfo.GetRecipeReagentItem]](<span class="apiarg">recipeSpellID, dataSlotIndex</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetRecipeResultItem|C_TooltipInfo.GetRecipeResultItem]](<span class="apiarg">recipeID [, craftingReagents [, recraftItemGUID [, recipeLevel [, overrideQualityID]]]]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetRecipeResultItemForOrder|C_TooltipInfo.GetRecipeResultItemForOrder]](<span class="apiarg">recipeID [, craftingReagents [, orderID [, recipeLevel [, overrideQualityID]]]]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetRuneforgeResultItem|C_TooltipInfo.GetRuneforgeResultItem]](<span class="apiarg">itemGUID, itemLevel [, powerID [, modifiers]]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetSendMailItem|C_TooltipInfo.GetSendMailItem]](<span class="apiarg">[attachmentIndex]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetShapeshift|C_TooltipInfo.GetShapeshift]](<span class="apiarg">slot</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetSlottedKeystone|C_TooltipInfo.GetSlottedKeystone]]() : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetSocketedItem|C_TooltipInfo.GetSocketedItem]]() : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetSocketedRelic|C_TooltipInfo.GetSocketedRelic]](<span class="apiarg">slotIndex</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetSocketGem|C_TooltipInfo.GetSocketGem]](<span class="apiarg">index</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetSpellBookItem|C_TooltipInfo.GetSpellBookItem]](<span class="apiarg">spellBookItemSlotIndex, spellBookItemSpellBank</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetSpellByID|C_TooltipInfo.GetSpellByID]](<span class="apiarg">spellID [, isPet [, showSubtext [, dontOverride [, difficultyID [, isLink]]]]]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetTalent|C_TooltipInfo.GetTalent]](<span class="apiarg">talentID [, isInspect [, groupIndex]]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetTotem|C_TooltipInfo.GetTotem]](<span class="apiarg">slot</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetToyByItemID|C_TooltipInfo.GetToyByItemID]](<span class="apiarg">itemID</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetTradePlayerItem|C_TooltipInfo.GetTradePlayerItem]](<span class="apiarg">slot</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetTradeTargetItem|C_TooltipInfo.GetTradeTargetItem]](<span class="apiarg">slot</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetTrainerService|C_TooltipInfo.GetTrainerService]](<span class="apiarg">serviceIndex</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetTraitEntry|C_TooltipInfo.GetTraitEntry]](<span class="apiarg">entryID [, rank]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetTransmogrifyItem|C_TooltipInfo.GetTransmogrifyItem]](<span class="apiarg">transmogLocation</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetUnit|C_TooltipInfo.GetUnit]](<span class="apiarg">unit [, hideStatus]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetUnitAura|C_TooltipInfo.GetUnitAura]](<span class="apiarg">unitToken, index [, filter]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetUnitBuff|C_TooltipInfo.GetUnitBuff]](<span class="apiarg">unitToken, index [, filter]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetUnitBuffByAuraInstanceID|C_TooltipInfo.GetUnitBuffByAuraInstanceID]](<span class="apiarg">unitTokenString, auraInstanceID [, filter]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetUnitDebuff|C_TooltipInfo.GetUnitDebuff]](<span class="apiarg">unitToken, index [, filter]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetUnitDebuffByAuraInstanceID|C_TooltipInfo.GetUnitDebuffByAuraInstanceID]](<span class="apiarg">unitTokenString, auraInstanceID [, filter]</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetUpgradeItem|C_TooltipInfo.GetUpgradeItem]]() : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetVoidDepositItem|C_TooltipInfo.GetVoidDepositItem]](<span class="apiarg">slot</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetVoidItem|C_TooltipInfo.GetVoidItem]](<span class="apiarg">tab, slot</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetVoidWithdrawalItem|C_TooltipInfo.GetVoidWithdrawalItem]](<span class="apiarg">slot</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetWeeklyReward|C_TooltipInfo.GetWeeklyReward]](<span class="apiarg">itemDBID</span>) : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetWorldCursor|C_TooltipInfo.GetWorldCursor]]() : <span class="apiret">data</span>
: [[API C_TooltipInfo.GetWorldLootObject|C_TooltipInfo.GetWorldLootObject]](<span class="apiarg">unitTokenString</span>) : <span class="apiret">data</span>

==C_ToyBox==
The [[Toy Box]] was added in [[Patch 6.0.2]]
: [[API C_ToyBox.ForceToyRefilter|C_ToyBox.ForceToyRefilter]]()
: [[API C_ToyBox.GetCollectedShown|C_ToyBox.GetCollectedShown]]()
: [[API C_ToyBox.GetIsFavorite|C_ToyBox.GetIsFavorite]](<span class="apiarg">itemID</span>)
: [[API C_ToyBox.GetNumFilteredToys|C_ToyBox.GetNumFilteredToys]]()
: [[API C_ToyBox.GetNumLearnedDisplayedToys|C_ToyBox.GetNumLearnedDisplayedToys]]()
: [[API C_ToyBox.GetNumTotalDisplayedToys|C_ToyBox.GetNumTotalDisplayedToys]]()
: [[API C_ToyBox.GetNumToys|C_ToyBox.GetNumToys]]() : <span class="apiret">numToys</span>
: [[API C_ToyBox.GetToyFromIndex|C_ToyBox.GetToyFromIndex]](<span class="apiarg">index</span>) : <span class="apiret">itemID</span>
: [[API C_ToyBox.GetToyInfo|C_ToyBox.GetToyInfo]](<span class="apiarg">itemID</span>) : <span class="apiret">itemID, toyName, icon, isFavorite, hasFanfare, itemQuality</span> - Returns toy info.
: [[API C_ToyBox.GetToyLink|C_ToyBox.GetToyLink]](<span class="apiarg">itemID</span>) : <span class="apiret">itemLink</span> - Returns the item link for a toy.
: [[API C_ToyBox.GetUncollectedShown|C_ToyBox.GetUncollectedShown]]()
: [[API C_ToyBox.GetUnusableShown|C_ToyBox.GetUnusableShown]]()
: [[API C_ToyBox.HasFavorites|C_ToyBox.HasFavorites]]()
: [[API C_ToyBox.IsExpansionTypeFilterChecked|C_ToyBox.IsExpansionTypeFilterChecked]](<span class="apiarg">expansionIndex</span>)
: [[API C_ToyBox.IsSourceTypeFilterChecked|C_ToyBox.IsSourceTypeFilterChecked]](<span class="apiarg">sourceIndex</span>)
: [[API C_ToyBox.IsToyUsable|C_ToyBox.IsToyUsable]](<span class="apiarg">itemID</span>)
: [[API C_ToyBox.PickupToyBoxItem|C_ToyBox.PickupToyBoxItem]](<span class="apiarg">itemID</span>)
: [[API C_ToyBox.SetAllExpansionTypeFilters|C_ToyBox.SetAllExpansionTypeFilters]](<span class="apiarg">[checked]</span>)
: [[API C_ToyBox.SetAllSourceTypeFilters|C_ToyBox.SetAllSourceTypeFilters]](<span class="apiarg">checked</span>)
: [[API C_ToyBox.SetCollectedShown|C_ToyBox.SetCollectedShown]](<span class="apiarg">checked</span>)
: [[API C_ToyBox.SetExpansionTypeFilter|C_ToyBox.SetExpansionTypeFilter]](<span class="apiarg">expansionIndex, checked</span>)
: [[API C_ToyBox.SetFilterString|C_ToyBox.SetFilterString]](<span class="apiarg">searchString</span>)
: [[API C_ToyBox.SetIsFavorite|C_ToyBox.SetIsFavorite]](<span class="apiarg">itemID, value</span>)
: [[API C_ToyBox.SetSourceTypeFilter|C_ToyBox.SetSourceTypeFilter]](<span class="apiarg">sourceIndex, checked</span>)
: [[API C_ToyBox.SetUncollectedShown|C_ToyBox.SetUncollectedShown]](<span class="apiarg">checked</span>)
: [[API C_ToyBox.SetUnusableShown|C_ToyBox.SetUnusableShown]](<span class="apiarg">checked</span>)
: [[API C_ToyBoxInfo.ClearFanfare|C_ToyBoxInfo.ClearFanfare]](<span class="apiarg">itemID</span>)
: [[API C_ToyBoxInfo.IsToySourceValid|C_ToyBoxInfo.IsToySourceValid]](<span class="apiarg">source</span>) : <span class="apiret">isToySourceValid</span>
: [[API C_ToyBoxInfo.IsUsingDefaultFilters|C_ToyBoxInfo.IsUsingDefaultFilters]]() : <span class="apiret">isUsingDefaultFilters</span>
: [[API C_ToyBoxInfo.NeedsFanfare|C_ToyBoxInfo.NeedsFanfare]](<span class="apiarg">itemID</span>) : <span class="apiret">needsFanfare</span>
: [[API C_ToyBoxInfo.SetDefaultFilters|C_ToyBoxInfo.SetDefaultFilters]]()
: [[API PlayerHasToy|PlayerHasToy]](<span class="apiarg">itemId</span>) : <span class="apiret">hasToy</span>
: [[API UseToy|UseToy]](<span class="apiarg">itemId</span>)
: [[API UseToyByName|UseToyByName]](<span class="apiarg">name</span>)

==C_TradeSkillUI==
Relates to [[Profession]]s.
: [[API C_TradeSkillUI.AnyRecipeCategoriesFiltered|C_TradeSkillUI.AnyRecipeCategoriesFiltered]]()
: [[API C_TradeSkillUI.AreAnyInventorySlotsFiltered|C_TradeSkillUI.AreAnyInventorySlotsFiltered]]()
: [[API C_TradeSkillUI.CanObliterateCursorItem|C_TradeSkillUI.CanObliterateCursorItem]]()
: [[API C_TradeSkillUI.CanStoreEnchantInItem|C_TradeSkillUI.CanStoreEnchantInItem]](<span class="apiarg">itemGUID</span>) : <span class="apiret">canStore</span>
: [[API C_TradeSkillUI.CanTradeSkillListLink|C_TradeSkillUI.CanTradeSkillListLink]]()
: [[API C_TradeSkillUI.ClearInventorySlotFilter|C_TradeSkillUI.ClearInventorySlotFilter]]()
: [[API C_TradeSkillUI.ClearPendingObliterateItem|C_TradeSkillUI.ClearPendingObliterateItem]]()
: [[API C_TradeSkillUI.ClearRecipeCategoryFilter|C_TradeSkillUI.ClearRecipeCategoryFilter]]()
: [[API C_TradeSkillUI.ClearRecipeSourceTypeFilter|C_TradeSkillUI.ClearRecipeSourceTypeFilter]]()
: [[API C_TradeSkillUI.CloseObliterumForge|C_TradeSkillUI.CloseObliterumForge]]()
: [[API C_TradeSkillUI.CloseTradeSkill|C_TradeSkillUI.CloseTradeSkill]]() - Closes an open trade skill window.
: [[API C_TradeSkillUI.CraftEnchant|C_TradeSkillUI.CraftEnchant]](<span class="apiarg">recipeSpellID [, numCasts [, craftingReagents [, itemTarget [, applyConcentration]]]]</span>)
: [[API C_TradeSkillUI.CraftRecipe|C_TradeSkillUI.CraftRecipe]](<span class="apiarg">recipeSpellID [, numCasts [, craftingReagents [, recipeLevel [, orderID [, applyConcentration]]]]]</span>) - Performs the tradeskill a specified number of times.
: [[API C_TradeSkillUI.CraftSalvage|C_TradeSkillUI.CraftSalvage]](<span class="apiarg">recipeSpellID, numCasts?, itemTarget, craftingReagents?, applyConcentration?</span>)
: [[API C_TradeSkillUI.DoesRecraftingRecipeAcceptItem|C_TradeSkillUI.DoesRecraftingRecipeAcceptItem]](<span class="apiarg">itemLocation, recipeID</span>) : <span class="apiret">result</span>
: [[API C_TradeSkillUI.DropPendingObliterateItemFromCursor|C_TradeSkillUI.DropPendingObliterateItemFromCursor]]()
: [[API C_TradeSkillUI.GetAllFilterableInventorySlots|C_TradeSkillUI.GetAllFilterableInventorySlots]]()
: [[API C_TradeSkillUI.GetAllFilterableInventorySlotsCount|C_TradeSkillUI.GetAllFilterableInventorySlotsCount]]()
: [[API C_TradeSkillUI.GetAllProfessionTradeSkillLines|C_TradeSkillUI.GetAllProfessionTradeSkillLines]]() : <span class="apiret">skillLineID</span>
: [[API C_TradeSkillUI.GetAllRecipeIDs|C_TradeSkillUI.GetAllRecipeIDs]]() : <span class="apiret">recipeIDs</span> - Returns all recipes for the current profession.
: [[API C_TradeSkillUI.GetBaseProfessionInfo|C_TradeSkillUI.GetBaseProfessionInfo]]() : <span class="apiret">info</span>
: [[API C_TradeSkillUI.GetCategories|C_TradeSkillUI.GetCategories]]() : <span class="apiret">categoryIDs</span>
: [[API C_TradeSkillUI.GetCategoryInfo|C_TradeSkillUI.GetCategoryInfo]](<span class="apiarg">categoryID, returnTable</span>) : <span class="apiret">categoryInfo</span>
: [[API C_TradeSkillUI.GetChildProfessionInfo|C_TradeSkillUI.GetChildProfessionInfo]]() : <span class="apiret">info</span>
: [[API C_TradeSkillUI.GetChildProfessionInfos|C_TradeSkillUI.GetChildProfessionInfos]]() : <span class="apiret">infos</span>
: [[API C_TradeSkillUI.GetConcentrationCurrencyID|C_TradeSkillUI.GetConcentrationCurrencyID]](<span class="apiarg">skillLineID</span>) : <span class="apiret">currencyType</span>
: [[API C_TradeSkillUI.GetCraftableCount|C_TradeSkillUI.GetCraftableCount]](<span class="apiarg">recipeSpellID [, recipeLevel]</span>) : <span class="apiret">numAvailable</span>
: [[API C_TradeSkillUI.GetCraftingOperationInfo|C_TradeSkillUI.GetCraftingOperationInfo]](<span class="apiarg">recipeID, craftingReagents, allocationItemGUID?, applyConcentration</span>) : <span class="apiret">info</span>
: [[API C_TradeSkillUI.GetCraftingOperationInfoForOrder|C_TradeSkillUI.GetCraftingOperationInfoForOrder]](<span class="apiarg">recipeID, craftingReagents, orderID, applyConcentration</span>) : <span class="apiret">info</span>
: [[API C_TradeSkillUI.GetCraftingReagentBonusText|C_TradeSkillUI.GetCraftingReagentBonusText]](<span class="apiarg">recipeSpellID, craftingReagentIndex, craftingReagents [, allocationItemGUID]</span>) : <span class="apiret">bonusText</span>
: [[API C_TradeSkillUI.GetCraftingTargetItems|C_TradeSkillUI.GetCraftingTargetItems]](<span class="apiarg">itemIDs</span>) : <span class="apiret">items</span>
: [[API C_TradeSkillUI.GetEnchantItems|C_TradeSkillUI.GetEnchantItems]](<span class="apiarg">recipeID</span>) : <span class="apiret">items</span>
: [[API C_TradeSkillUI.GetFactionSpecificOutputItem|C_TradeSkillUI.GetFactionSpecificOutputItem]](<span class="apiarg">recipeSpellID</span>) : <span class="apiret">itemID</span>
: [[API C_TradeSkillUI.GetFilterableInventorySlotName|C_TradeSkillUI.GetFilterableInventorySlotName]]()
: [[API C_TradeSkillUI.GetFilterableInventorySlots|C_TradeSkillUI.GetFilterableInventorySlots]]()
: [[API C_TradeSkillUI.GetFilteredRecipeIDs|C_TradeSkillUI.GetFilteredRecipeIDs]]()
: [[API C_TradeSkillUI.GetGatheringOperationInfo|C_TradeSkillUI.GetGatheringOperationInfo]](<span class="apiarg">recipeID</span>) : <span class="apiret">info</span>
: [[API C_TradeSkillUI.GetHideUnownedFlags|C_TradeSkillUI.GetHideUnownedFlags]](<span class="apiarg">recipeID</span>) : <span class="apiret">cannotModifyHideUnowned, alwaysShowUnowned</span>
: [[API C_TradeSkillUI.GetItemCraftedQualityByItemInfo|C_TradeSkillUI.GetItemCraftedQualityByItemInfo]](<span class="apiarg">itemInfo</span>) : <span class="apiret">quality</span>
: [[API C_TradeSkillUI.GetItemReagentQualityByItemInfo|C_TradeSkillUI.GetItemReagentQualityByItemInfo]](<span class="apiarg">itemInfo</span>) : <span class="apiret">quality</span>
: [[API C_TradeSkillUI.GetItemSlotModifications|C_TradeSkillUI.GetItemSlotModifications]](<span class="apiarg">itemGUID</span>) : <span class="apiret">slotMods</span>
: [[API C_TradeSkillUI.GetItemSlotModificationsForOrder|C_TradeSkillUI.GetItemSlotModificationsForOrder]](<span class="apiarg">orderID</span>) : <span class="apiret">slotMods</span>
: [[API C_TradeSkillUI.GetObliterateSpellID|C_TradeSkillUI.GetObliterateSpellID]]()
: [[API C_TradeSkillUI.GetOnlyShowFirstCraftRecipes|C_TradeSkillUI.GetOnlyShowFirstCraftRecipes]]()
: [[API C_TradeSkillUI.GetOnlyShowMakeableRecipes|C_TradeSkillUI.GetOnlyShowMakeableRecipes]]()
: [[API C_TradeSkillUI.GetOnlyShowSkillUpRecipes|C_TradeSkillUI.GetOnlyShowSkillUpRecipes]]()
: [[API C_TradeSkillUI.GetOriginalCraftRecipeID|C_TradeSkillUI.GetOriginalCraftRecipeID]](<span class="apiarg">itemGUID</span>) : <span class="apiret">recipeID, skillLineAbilityID</span>
: [[API C_TradeSkillUI.GetPendingObliterateItemID|C_TradeSkillUI.GetPendingObliterateItemID]]()
: [[API C_TradeSkillUI.GetPendingObliterateItemLink|C_TradeSkillUI.GetPendingObliterateItemLink]]()
: [[API C_TradeSkillUI.GetProfessionByInventorySlot|C_TradeSkillUI.GetProfessionByInventorySlot]](<span class="apiarg">slot</span>) : <span class="apiret">profession</span>
: [[API C_TradeSkillUI.GetProfessionChildSkillLineID|C_TradeSkillUI.GetProfessionChildSkillLineID]]() : <span class="apiret">skillLineID</span>
: [[API C_TradeSkillUI.GetProfessionForCursorItem|C_TradeSkillUI.GetProfessionForCursorItem]]() : <span class="apiret">profession</span>
: [[API C_TradeSkillUI.GetProfessionInfoByRecipeID|C_TradeSkillUI.GetProfessionInfoByRecipeID]](<span class="apiarg">recipeID</span>) : <span class="apiret">info</span>
: [[API C_TradeSkillUI.GetProfessionInfoBySkillLineID|C_TradeSkillUI.GetProfessionInfoBySkillLineID]](<span class="apiarg">skillLineID</span>) : <span class="apiret">info</span>
: [[API C_TradeSkillUI.GetProfessionInventorySlots|C_TradeSkillUI.GetProfessionInventorySlots]]() : <span class="apiret">invSlots</span>
: [[API C_TradeSkillUI.GetProfessionNameForSkillLineAbility|C_TradeSkillUI.GetProfessionNameForSkillLineAbility]](<span class="apiarg">skillLineAbilityID</span>) : <span class="apiret">professionNmae</span>
: [[API C_TradeSkillUI.GetProfessionSkillLineID|C_TradeSkillUI.GetProfessionSkillLineID]](<span class="apiarg">profession</span>) : <span class="apiret">skillLineID</span>
: [[API C_TradeSkillUI.GetProfessionSlots|C_TradeSkillUI.GetProfessionSlots]](<span class="apiarg">profession</span>) : <span class="apiret">slots</span>
: [[API C_TradeSkillUI.GetProfessionSpells|C_TradeSkillUI.GetProfessionSpells]](<span class="apiarg">professionID [, skillLineID]</span>) : <span class="apiret">knownSpells</span>
: [[API C_TradeSkillUI.GetQualitiesForRecipe|C_TradeSkillUI.GetQualitiesForRecipe]](<span class="apiarg">recipeID</span>) : <span class="apiret">qualityIDs</span>
: [[API C_TradeSkillUI.GetReagentDifficultyText|C_TradeSkillUI.GetReagentDifficultyText]](<span class="apiarg">craftingReagentIndex, craftingReagents</span>) : <span class="apiret">bonusText</span>
: [[API C_TradeSkillUI.GetReagentRequirementItemIDs|C_TradeSkillUI.GetReagentRequirementItemIDs]](<span class="apiarg">itemID</span>) : <span class="apiret">itemIDs</span>
: [[API C_TradeSkillUI.GetReagentSlotStatus|C_TradeSkillUI.GetReagentSlotStatus]](<span class="apiarg">mcrSlotID, recipeSpellID, skillLineAbilityID</span>) : <span class="apiret">locked, lockedReason</span>
: [[API C_TradeSkillUI.GetRecipeCooldown|C_TradeSkillUI.GetRecipeCooldown]](<span class="apiarg">recipeID</span>) - Returns the number of seconds left for a skill to cooldown.
: [[API C_TradeSkillUI.GetRecipeDescription|C_TradeSkillUI.GetRecipeDescription]](<span class="apiarg">recipeID, craftingReagents [, allocationItemGUID]</span>) : <span class="apiret">description</span> - Returns the description for a recipe.
: [[API C_TradeSkillUI.GetRecipeFixedReagentItemLink|C_TradeSkillUI.GetRecipeFixedReagentItemLink]](<span class="apiarg">recipeID, dataSlotIndex</span>) : <span class="apiret">link</span>
: [[API C_TradeSkillUI.GetRecipeInfo|C_TradeSkillUI.GetRecipeInfo]](<span class="apiarg">recipeSpellID [, recipeLevel]</span>) : <span class="apiret">recipeInfo</span> - Returns information for a recipe.
: [[API C_TradeSkillUI.GetRecipeInfoForSkillLineAbility|C_TradeSkillUI.GetRecipeInfoForSkillLineAbility]](<span class="apiarg">skillLineAbilityID [, recipeLevel]</span>) : <span class="apiret">recipeInfo</span>
: [[API C_TradeSkillUI.GetRecipeItemLevelFilter|C_TradeSkillUI.GetRecipeItemLevelFilter]]()
: [[API C_TradeSkillUI.GetRecipeItemLink|C_TradeSkillUI.GetRecipeItemLink]](<span class="apiarg">recipeId</span>) : <span class="apiret">itemLink</span> - Returns the result item link for a recipe.
: [[API C_TradeSkillUI.GetRecipeItemNameFilter|C_TradeSkillUI.GetRecipeItemNameFilter]]()
: [[API C_TradeSkillUI.GetRecipeLink|C_TradeSkillUI.GetRecipeLink]](<span class="apiarg">recipeID</span>)
: [[API C_TradeSkillUI.GetRecipeOutputItemData|C_TradeSkillUI.GetRecipeOutputItemData]](<span class="apiarg">recipeSpellID [, reagents [, allocationItemGUID [, overrideQualityID [, recraftOrderID]]]]</span>) : <span class="apiret">outputInfo</span>
: [[API C_TradeSkillUI.GetRecipeQualityItemIDs|C_TradeSkillUI.GetRecipeQualityItemIDs]](<span class="apiarg">recipeSpellID</span>) : <span class="apiret">qualityItemIDs</span>
: [[API C_TradeSkillUI.GetRecipeQualityReagentItemLink|C_TradeSkillUI.GetRecipeQualityReagentItemLink]](<span class="apiarg">recipeID, dataSlotIndex, qualityIndex</span>) : <span class="apiret">link</span>
: [[API C_TradeSkillUI.GetRecipeRequirements|C_TradeSkillUI.GetRecipeRequirements]](<span class="apiarg">recipeID</span>) : <span class="apiret">requirements</span>
: [[API C_TradeSkillUI.GetRecipeSchematic|C_TradeSkillUI.GetRecipeSchematic]](<span class="apiarg">recipeSpellID, isRecraft [, recipeLevel]</span>) : <span class="apiret">schematic</span>
: [[API C_TradeSkillUI.GetRecipeSourceText|C_TradeSkillUI.GetRecipeSourceText]](<span class="apiarg">recipeID</span>)
: [[API C_TradeSkillUI.GetRecipesTracked|C_TradeSkillUI.GetRecipesTracked]](<span class="apiarg">isRecraft</span>) : <span class="apiret">recipeIDs</span>
: [[API C_TradeSkillUI.GetRecraftItems|C_TradeSkillUI.GetRecraftItems]](<span class="apiarg">[recipeID]</span>) : <span class="apiret">items</span>
: [[API C_TradeSkillUI.GetRecraftRemovalWarnings|C_TradeSkillUI.GetRecraftRemovalWarnings]](<span class="apiarg">itemGUID, replacedItemIDs</span>) : <span class="apiret">warnings</span>
: [[API C_TradeSkillUI.GetRemainingRecasts|C_TradeSkillUI.GetRemainingRecasts]]() : <span class="apiret">remaining</span>
: [[API C_TradeSkillUI.GetSalvagableItemIDs|C_TradeSkillUI.GetSalvagableItemIDs]](<span class="apiarg">recipeID</span>) : <span class="apiret">itemIDs</span>
: [[API C_TradeSkillUI.GetShowLearned|C_TradeSkillUI.GetShowLearned]]() : <span class="apiret">flag</span>
: [[API C_TradeSkillUI.GetShowUnlearned|C_TradeSkillUI.GetShowUnlearned]]() : <span class="apiret">flag</span>
: [[API C_TradeSkillUI.GetSkillLineForGear|C_TradeSkillUI.GetSkillLineForGear]](<span class="apiarg">itemInfo</span>) : <span class="apiret">skillLineID</span>
: [[API C_TradeSkillUI.GetSourceTypeFilter|C_TradeSkillUI.GetSourceTypeFilter]]() : <span class="apiret">sourceTypeFilter</span>
: [[API C_TradeSkillUI.GetSubCategories|C_TradeSkillUI.GetSubCategories]](<span class="apiarg">categoryID</span>)
: [[API C_TradeSkillUI.GetTradeSkillDisplayName|C_TradeSkillUI.GetTradeSkillDisplayName]](<span class="apiarg">skillLineID</span>) : <span class="apiret">professionDisplayName</span>
: [[API C_TradeSkillUI.GetTradeSkillLineForRecipe|C_TradeSkillUI.GetTradeSkillLineForRecipe]](<span class="apiarg">recipeID</span>) : <span class="apiret">tradeSkillID, skillLineName, parentTradeSkillID</span> - Get the associated profession information for a recipe.
: [[API C_TradeSkillUI.GetTradeSkillListLink|C_TradeSkillUI.GetTradeSkillListLink]]() : <span class="apiret">link</span> - Returns a link for the currently displayed profession.
: [[API C_TradeSkillUI.GetTradeSkillTexture|C_TradeSkillUI.GetTradeSkillTexture]](<span class="apiarg">tradeSkillID</span>)
: [[API C_TradeSkillUI.HasFavoriteOrderRecipes|C_TradeSkillUI.HasFavoriteOrderRecipes]]() : <span class="apiret">hasFavorites</span>
: [[API C_TradeSkillUI.IsAnyRecipeFromSource|C_TradeSkillUI.IsAnyRecipeFromSource]](<span class="apiarg">sourceType</span>)
: [[API C_TradeSkillUI.IsDataSourceChanging|C_TradeSkillUI.IsDataSourceChanging]]()
: [[API C_TradeSkillUI.IsEnchantTargetValid|C_TradeSkillUI.IsEnchantTargetValid]](<span class="apiarg">recipeID, itemGUID [, craftingReagents]</span>) : <span class="apiret">valid</span>
: [[API C_TradeSkillUI.IsGuildTradeSkillsEnabled|C_TradeSkillUI.IsGuildTradeSkillsEnabled]]() : <span class="apiret">enabled</span>
: [[API C_TradeSkillUI.IsInventorySlotFiltered|C_TradeSkillUI.IsInventorySlotFiltered]](<span class="apiarg">index</span>)
: [[API C_TradeSkillUI.IsNearProfessionSpellFocus|C_TradeSkillUI.IsNearProfessionSpellFocus]](<span class="apiarg">profession</span>) : <span class="apiret">nearFocus</span>
: [[API C_TradeSkillUI.IsNPCCrafting|C_TradeSkillUI.IsNPCCrafting]]() : <span class="apiret">result</span> - Returns true if the trade skill window is displayed for an NPC.
: [[API C_TradeSkillUI.IsOriginalCraftRecipeLearned|C_TradeSkillUI.IsOriginalCraftRecipeLearned]](<span class="apiarg">itemGUID</span>) : <span class="apiret">learned</span>
: [[API C_TradeSkillUI.IsRecipeCategoryFiltered|C_TradeSkillUI.IsRecipeCategoryFiltered]](<span class="apiarg">categoryID [, subCategoryID]</span>)
: [[API C_TradeSkillUI.IsRecipeFavorite|C_TradeSkillUI.IsRecipeFavorite]](<span class="apiarg">recipeID</span>)
: [[API C_TradeSkillUI.IsRecipeFirstCraft|C_TradeSkillUI.IsRecipeFirstCraft]](<span class="apiarg">recipeID</span>) : <span class="apiret">result</span>
: [[API C_TradeSkillUI.IsRecipeInBaseSkillLine|C_TradeSkillUI.IsRecipeInBaseSkillLine]](<span class="apiarg">recipeID</span>) : <span class="apiret">result</span>
: [[API C_TradeSkillUI.IsRecipeInSkillLine|C_TradeSkillUI.IsRecipeInSkillLine]](<span class="apiarg">recipeID, skillLineID</span>) : <span class="apiret">result</span>
: [[API C_TradeSkillUI.IsRecipeProfessionLearned|C_TradeSkillUI.IsRecipeProfessionLearned]](<span class="apiarg">recipeID</span>) : <span class="apiret">recipeProfessionLearned</span>
: [[API C_TradeSkillUI.IsRecipeRepeating|C_TradeSkillUI.IsRecipeRepeating]]()
: [[API C_TradeSkillUI.IsRecipeSearchInProgress|C_TradeSkillUI.IsRecipeSearchInProgress]]()
: [[API C_TradeSkillUI.IsRecipeSourceTypeFiltered|C_TradeSkillUI.IsRecipeSourceTypeFiltered]](<span class="apiarg">sourceType</span>)
: [[API C_TradeSkillUI.IsRecipeTracked|C_TradeSkillUI.IsRecipeTracked]](<span class="apiarg">recipeID, isRecraft</span>) : <span class="apiret">tracked</span>
: [[API C_TradeSkillUI.IsRecraftItemEquipped|C_TradeSkillUI.IsRecraftItemEquipped]](<span class="apiarg">recraftItemGUID</span>) : <span class="apiret">isEquipped</span>
: [[API C_TradeSkillUI.IsRecraftReagentValid|C_TradeSkillUI.IsRecraftReagentValid]](<span class="apiarg">itemGUID, itemID</span>) : <span class="apiret">valid</span>
: [[API C_TradeSkillUI.IsRuneforging|C_TradeSkillUI.IsRuneforging]]() : <span class="apiret">result</span>
: [[API C_TradeSkillUI.IsTradeSkillGuild|C_TradeSkillUI.IsTradeSkillGuild]]() : <span class="apiret">isGuild</span> - Checks if the Trade Skill UI is open for a profession in the guild.
: [[API C_TradeSkillUI.IsTradeSkillGuildMember|C_TradeSkillUI.IsTradeSkillGuildMember]]()
: [[API C_TradeSkillUI.IsTradeSkillLinked|C_TradeSkillUI.IsTradeSkillLinked]]() : <span class="apiret">isLinked</span> - Checks if the Trade Skill UI is open for a profession linked by another character.
: [[API C_TradeSkillUI.IsTradeSkillReady|C_TradeSkillUI.IsTradeSkillReady]]() : <span class="apiret">isReady</span>
: [[API C_TradeSkillUI.ObliterateItem|C_TradeSkillUI.ObliterateItem]]()
: [[API C_TradeSkillUI.OpenRecipe|C_TradeSkillUI.OpenRecipe]](<span class="apiarg">recipeID</span>)
: [[API C_TradeSkillUI.OpenTradeSkill|C_TradeSkillUI.OpenTradeSkill]](<span class="apiarg">skillLineID</span>) : <span class="apiret">opened</span>
: [[API C_TradeSkillUI.RecraftLimitCategoryValid|C_TradeSkillUI.RecraftLimitCategoryValid]](<span class="apiarg">reagentItemID</span>) : <span class="apiret">recraftValid</span>
: [[API C_TradeSkillUI.RecraftRecipe|C_TradeSkillUI.RecraftRecipe]](<span class="apiarg">itemGUID [, craftingReagents [, removedModifications [, applyConcentration]]]</span>) : <span class="apiret">result</span>
: [[API C_TradeSkillUI.RecraftRecipeForOrder|C_TradeSkillUI.RecraftRecipeForOrder]](<span class="apiarg">orderID, itemGUID [, craftingReagents [, removedModifications [, applyConcentration]]]</span>) : <span class="apiret">result</span>
: [[API C_TradeSkillUI.SetInventorySlotFilter|C_TradeSkillUI.SetInventorySlotFilter]](<span class="apiarg">index [, enable, exclusive]</span>)
: [[API C_TradeSkillUI.SetOnlyShowAvailableForOrders|C_TradeSkillUI.SetOnlyShowAvailableForOrders]](<span class="apiarg">flag</span>)
: [[API C_TradeSkillUI.SetOnlyShowFirstCraftRecipes|C_TradeSkillUI.SetOnlyShowFirstCraftRecipes]]()
: [[API C_TradeSkillUI.SetOnlyShowMakeableRecipes|C_TradeSkillUI.SetOnlyShowMakeableRecipes]](<span class="apiarg">onlyMakable</span>) - Controls whether only recipes you have the reagents to craft are shown.
: [[API C_TradeSkillUI.SetOnlyShowSkillUpRecipes|C_TradeSkillUI.SetOnlyShowSkillUpRecipes]]()
: [[API C_TradeSkillUI.SetProfessionChildSkillLineID|C_TradeSkillUI.SetProfessionChildSkillLineID]](<span class="apiarg">skillLineID</span>)
: [[API C_TradeSkillUI.SetRecipeCategoryFilter|C_TradeSkillUI.SetRecipeCategoryFilter]](<span class="apiarg">categoryID [, subCategoryID]</span>)
: [[API C_TradeSkillUI.SetRecipeFavorite|C_TradeSkillUI.SetRecipeFavorite]](<span class="apiarg">recipeID, favorite</span>)
: [[API C_TradeSkillUI.SetRecipeItemLevelFilter|C_TradeSkillUI.SetRecipeItemLevelFilter]](<span class="apiarg">minLevel, maxLevel</span>)
: [[API C_TradeSkillUI.SetRecipeItemNameFilter|C_TradeSkillUI.SetRecipeItemNameFilter]](<span class="apiarg">text</span>)
: [[API C_TradeSkillUI.SetRecipeSourceTypeFilter|C_TradeSkillUI.SetRecipeSourceTypeFilter]](<span class="apiarg">sourceType, filtered</span>)
: [[API C_TradeSkillUI.SetRecipeTracked|C_TradeSkillUI.SetRecipeTracked]](<span class="apiarg">recipeID, tracked, isRecraft</span>)
: [[API C_TradeSkillUI.SetShowLearned|C_TradeSkillUI.SetShowLearned]](<span class="apiarg">flag</span>)
: [[API C_TradeSkillUI.SetShowUnlearned|C_TradeSkillUI.SetShowUnlearned]](<span class="apiarg">flag</span>)
: [[API C_TradeSkillUI.SetSourceTypeFilter|C_TradeSkillUI.SetSourceTypeFilter]](<span class="apiarg">sourceTypeFilter</span>)
: [[API C_TradeSkillUI.StopRecipeRepeat|C_TradeSkillUI.StopRecipeRepeat]]() - Stops creating additional queued items.
: [[API AbandonSkill|AbandonSkill]](<span class="apiarg">skillLineID</span>) - The player abandons a skill.
: [[API GetProfessionInfo|GetProfessionInfo]](<span class="apiarg">index</span>) : <span class="apiret">name, icon, skillLevel, maxSkillLevel, numAbilities, spelloffset, skillLine, skillModifier, specializationIndex, specializationOffset</span> - Gets details on a profession from its index including name, icon, and skill level.
: [[API GetProfessions|GetProfessions]]() : <span class="apiret">prof1, prof2, archaeology, fishing, cooking</span> - Returns the spell tab indices of the character's current professions.

==C_Traits==
: [[API C_Traits.CanPurchaseRank|C_Traits.CanPurchaseRank]](<span class="apiarg">configID, nodeID, nodeEntryID</span>) : <span class="apiret">canPurchase</span>
: [[API C_Traits.CanRefundRank|C_Traits.CanRefundRank]](<span class="apiarg">configID, nodeID</span>) : <span class="apiret">canRefund</span>
: [[API C_Traits.CascadeRepurchaseRanks|C_Traits.CascadeRepurchaseRanks]](<span class="apiarg">configID, nodeID [, entryID]</span>) : <span class="apiret">success</span>
: [[API C_Traits.ClearCascadeRepurchaseHistory|C_Traits.ClearCascadeRepurchaseHistory]](<span class="apiarg">configID</span>)
: [[API C_Traits.CloseTraitSystemInteraction|C_Traits.CloseTraitSystemInteraction]]()
: [[API C_Traits.CommitConfig|C_Traits.CommitConfig]](<span class="apiarg">configID</span>) : <span class="apiret">success</span>
: [[API C_Traits.ConfigHasStagedChanges|C_Traits.ConfigHasStagedChanges]](<span class="apiarg">configID</span>) : <span class="apiret">hasChanges</span>
: [[API C_Traits.GenerateImportString|C_Traits.GenerateImportString]](<span class="apiarg">configID</span>) : <span class="apiret">importString</span>
: [[API C_Traits.GenerateInspectImportString|C_Traits.GenerateInspectImportString]](<span class="apiarg">target</span>) : <span class="apiret">importString</span>
: [[API C_Traits.GetConditionInfo|C_Traits.GetConditionInfo]](<span class="apiarg">configID, condID</span>) : <span class="apiret">condInfo</span>
: [[API C_Traits.GetConfigIDBySystemID|C_Traits.GetConfigIDBySystemID]](<span class="apiarg">systemID</span>) : <span class="apiret">configID</span>
: [[API C_Traits.GetConfigIDByTreeID|C_Traits.GetConfigIDByTreeID]](<span class="apiarg">treeID</span>) : <span class="apiret">configID</span>
: [[API C_Traits.GetConfigInfo|C_Traits.GetConfigInfo]](<span class="apiarg">configID</span>) : <span class="apiret">configInfo</span>
: [[API C_Traits.GetConfigsByType|C_Traits.GetConfigsByType]](<span class="apiarg">configType</span>) : <span class="apiret">configIDs</span>
: [[API C_Traits.GetDefinitionInfo|C_Traits.GetDefinitionInfo]](<span class="apiarg">definitionID</span>) : <span class="apiret">definitionInfo</span>
: [[API C_Traits.GetEntryInfo|C_Traits.GetEntryInfo]](<span class="apiarg">configID, entryID</span>) : <span class="apiret">entryInfo</span>
: [[API C_Traits.GetLoadoutSerializationVersion|C_Traits.GetLoadoutSerializationVersion]]() : <span class="apiret">serializationVersion</span>
: [[API C_Traits.GetNodeCost|C_Traits.GetNodeCost]](<span class="apiarg">configID, nodeID</span>) : <span class="apiret">costs</span>
: [[API C_Traits.GetNodeInfo|C_Traits.GetNodeInfo]](<span class="apiarg">configID, nodeID</span>) : <span class="apiret">nodeInfo</span>
: [[API C_Traits.GetStagedChanges|C_Traits.GetStagedChanges]](<span class="apiarg">configID</span>) : <span class="apiret">nodeIDsWithPurchases, nodeIDsWithRefunds, nodeIDsWithSelectionSwaps</span>
: [[API C_Traits.GetStagedChangesCost|C_Traits.GetStagedChangesCost]](<span class="apiarg">configID</span>) : <span class="apiret">costs</span>
: [[API C_Traits.GetSubTreeInfo|C_Traits.GetSubTreeInfo]](<span class="apiarg">configID, subTreeID</span>) : <span class="apiret">subTreeInfo</span>
: [[API C_Traits.GetSystemIDByTreeID|C_Traits.GetSystemIDByTreeID]](<span class="apiarg">treeID</span>) : <span class="apiret">systemID</span>
: [[API C_Traits.GetTraitCurrencyInfo|C_Traits.GetTraitCurrencyInfo]](<span class="apiarg">traitCurrencyID</span>) : <span class="apiret">flags, type, currencyTypesID, icon</span>
: [[API C_Traits.GetTraitDescription|C_Traits.GetTraitDescription]](<span class="apiarg">entryID, rank</span>) : <span class="apiret">description</span>
: [[API C_Traits.GetTraitSystemFlags|C_Traits.GetTraitSystemFlags]](<span class="apiarg">configID</span>) : <span class="apiret">flags</span>
: [[API C_Traits.GetTraitSystemWidgetSetID|C_Traits.GetTraitSystemWidgetSetID]](<span class="apiarg">configID</span>) : <span class="apiret">uiWidgetSetID</span>
: [[API C_Traits.GetTreeCurrencyInfo|C_Traits.GetTreeCurrencyInfo]](<span class="apiarg">configID, treeID, excludeStagedChanges</span>) : <span class="apiret">treeCurrencyInfo</span>
: [[API C_Traits.GetTreeHash|C_Traits.GetTreeHash]](<span class="apiarg">treeID</span>) : <span class="apiret">result</span>
: [[API C_Traits.GetTreeInfo|C_Traits.GetTreeInfo]](<span class="apiarg">configID, treeID</span>) : <span class="apiret">treeInfo</span>
: [[API C_Traits.GetTreeNodes|C_Traits.GetTreeNodes]](<span class="apiarg">treeID</span>) : <span class="apiret">nodeIDs</span>
: [[API C_Traits.HasValidInspectData|C_Traits.HasValidInspectData]]() : <span class="apiret">hasValidInspectData</span>
: [[API C_Traits.IsReadyForCommit|C_Traits.IsReadyForCommit]]() : <span class="apiret">isReadyForCommit</span>
: [[API C_Traits.PurchaseRank|C_Traits.PurchaseRank]](<span class="apiarg">configID, nodeID</span>) : <span class="apiret">success</span>
: [[API C_Traits.RefundAllRanks|C_Traits.RefundAllRanks]](<span class="apiarg">configID, nodeID</span>) : <span class="apiret">success</span>
: [[API C_Traits.RefundRank|C_Traits.RefundRank]](<span class="apiarg">configID, nodeID [, clearEdges]</span>) : <span class="apiret">success</span>
: [[API C_Traits.ResetTree|C_Traits.ResetTree]](<span class="apiarg">configID, treeID</span>) : <span class="apiret">success</span>
: [[API C_Traits.ResetTreeByCurrency|C_Traits.ResetTreeByCurrency]](<span class="apiarg">configID, treeID, traitCurrencyID</span>) : <span class="apiret">success</span>
: [[API C_Traits.RollbackConfig|C_Traits.RollbackConfig]](<span class="apiarg">configID</span>) : <span class="apiret">success</span>
: [[API C_Traits.SetSelection|C_Traits.SetSelection]](<span class="apiarg">configID, nodeID [, nodeEntryID [, clearEdges]]</span>) : <span class="apiret">success</span>
: [[API C_Traits.StageConfig|C_Traits.StageConfig]](<span class="apiarg">configID</span>) : <span class="apiret">success</span>
: [[API C_Traits.TalentTestUnlearnSpells|C_Traits.TalentTestUnlearnSpells]]()

==C_Transmog==
[[Transmogrification]] was added in [[Patch 4.3.0]]. See also [[#Wardrobe|Wardrobe]] functions.
: [[API C_Transmog.ApplyAllPending|C_Transmog.ApplyAllPending]](<span class="apiarg">[currentSpecOnly]</span>) : <span class="apiret">requestSent</span> - Confirms all pending transmogs.
: [[API C_Transmog.CanHaveSecondaryAppearanceForSlotID|C_Transmog.CanHaveSecondaryAppearanceForSlotID]](<span class="apiarg">slotID</span>) : <span class="apiret">canHaveSecondaryAppearance</span>
: [[API C_Transmog.CanTransmogItem|C_Transmog.CanTransmogItem]](<span class="apiarg">itemInfo</span>) : <span class="apiret">canBeTransmogged, selfFailureReason, canTransmogOthers, othersFailureReason</span>
: [[API C_Transmog.CanTransmogItemWithItem|C_Transmog.CanTransmogItemWithItem]](<span class="apiarg">targetItemInfo, sourceItemInfo</span>) : <span class="apiret">canTransmog, failureReason</span> - Returns whether an item can be transmogrified to look like another item.
: [[API C_Transmog.ClearAllPending|C_Transmog.ClearAllPending]]()
: [[API C_Transmog.ClearPending|C_Transmog.ClearPending]](<span class="apiarg">transmogLocation</span>) - Clears an equipment slot of pending transmogs.
: [[API C_Transmog.Close|C_Transmog.Close]]()
: [[API C_Transmog.ExtractTransmogIDList|C_Transmog.ExtractTransmogIDList]](<span class="apiarg">input</span>) : <span class="apiret">transmogIDList</span>
: [[API C_Transmog.GetAllSetAppearancesByID|C_Transmog.GetAllSetAppearancesByID]](<span class="apiarg">setID</span>) : <span class="apiret">setItems</span>
: [[API C_Transmog.GetApplyCost|C_Transmog.GetApplyCost]]() : <span class="apiret">cost</span>
: [[API C_Transmog.GetApplyWarnings|C_Transmog.GetApplyWarnings]]() : <span class="apiret">warnings</span>
: [[API C_Transmog.GetBaseCategory|C_Transmog.GetBaseCategory]](<span class="apiarg">transmogID</span>) : <span class="apiret">categoryID</span>
: [[API C_Transmog.GetCreatureDisplayIDForSource|C_Transmog.GetCreatureDisplayIDForSource]](<span class="apiarg">itemModifiedAppearanceID</span>) : <span class="apiret">creatureDisplayID</span>
: [[API C_Transmog.GetItemIDForSource|C_Transmog.GetItemIDForSource]](<span class="apiarg">itemModifiedAppearanceID</span>) : <span class="apiret">itemID</span>
: [[API C_Transmog.GetPending|C_Transmog.GetPending]](<span class="apiarg">transmogLocation</span>) : <span class="apiret">pendingInfo</span>
: [[API C_Transmog.GetSlotEffectiveCategory|C_Transmog.GetSlotEffectiveCategory]](<span class="apiarg">transmogLocation</span>) : <span class="apiret">categoryID</span>
: [[API C_Transmog.GetSlotForInventoryType|C_Transmog.GetSlotForInventoryType]](<span class="apiarg">inventoryType</span>) : <span class="apiret">slot</span> - Returns the equipment slot for an inventory type.
: [[API C_Transmog.GetSlotInfo|C_Transmog.GetSlotInfo]](<span class="apiarg">transmogLocation</span>) : <span class="apiret">isTransmogrified, hasPending, isPendingCollected, canTransmogrify, cannotTransmogrifyReason, hasUndo, isHideVisual, texture</span>
: [[API C_Transmog.GetSlotUseError|C_Transmog.GetSlotUseError]](<span class="apiarg">transmogLocation</span>) : <span class="apiret">errorCode, errorString</span>
: [[API C_Transmog.GetSlotVisualInfo|C_Transmog.GetSlotVisualInfo]](<span class="apiarg">transmogLocation</span>) : <span class="apiret">baseSourceID, baseVisualID, appliedSourceID, appliedVisualID, pendingSourceID, pendingVisualID, hasUndo, isHideVisual, itemSubclass</span>
: [[API C_Transmog.IsAtTransmogNPC|C_Transmog.IsAtTransmogNPC]]() : <span class="apiret">isAtNPC</span>
: [[API C_Transmog.IsSlotBeingCollapsed|C_Transmog.IsSlotBeingCollapsed]](<span class="apiarg">transmogLocation</span>) : <span class="apiret">isBeingCollapsed</span>
: [[API C_Transmog.LoadOutfit|C_Transmog.LoadOutfit]](<span class="apiarg">outfitID</span>)
: [[API C_Transmog.SetPending|C_Transmog.SetPending]](<span class="apiarg">transmogLocation, pendingInfo</span>)
: [[API C_Item.CanItemTransmogAppearance|C_Item.CanItemTransmogAppearance]](<span class="apiarg">itemLoc</span>) : <span class="apiret">canTransmog, errorCode</span>
: [[API C_Item.GetAppliedItemTransmogInfo|C_Item.GetAppliedItemTransmogInfo]](<span class="apiarg">itemLoc</span>) : <span class="apiret">info</span>
: [[API C_Item.GetBaseItemTransmogInfo|C_Item.GetBaseItemTransmogInfo]](<span class="apiarg">itemLoc</span>) : <span class="apiret">info</span>
: [[API C_Item.GetCurrentItemTransmogInfo|C_Item.GetCurrentItemTransmogInfo]](<span class="apiarg">itemLoc</span>) : <span class="apiret">info</span>
: [[API C_Item.IsDressableItemByID|C_Item.IsDressableItemByID]](<span class="apiarg">itemInfo</span>) : <span class="apiret">isDressableItem</span>

==C_TransmogCollection==
The wardrobe, also known as the [[Appearances]] tab was added in [[Patch 7.0.3]]. See also [[#Transmogrification|Transmogrification]] functions.
: [[API C_TransmogCollection.AccountCanCollectSource|C_TransmogCollection.AccountCanCollectSource]](<span class="apiarg">sourceID</span>) : <span class="apiret">hasItemData, canCollect</span>
: [[API C_TransmogCollection.AreAllCollectionTypeFiltersChecked|C_TransmogCollection.AreAllCollectionTypeFiltersChecked]]() : <span class="apiret">areAllCollectionTypeFiltersChecked</span>
: [[API C_TransmogCollection.AreAllSourceTypeFiltersChecked|C_TransmogCollection.AreAllSourceTypeFiltersChecked]]() : <span class="apiret">areAllSourceTypeFiltersChecked</span>
: [[API C_TransmogCollection.CanAppearanceBeDisplayedOnPlayer|C_TransmogCollection.CanAppearanceBeDisplayedOnPlayer]](<span class="apiarg">itemAppearanceID</span>) : <span class="apiret">canAppearanceBeDisplayedOnPlayer</span>
: [[API C_TransmogCollection.CanAppearanceHaveIllusion|C_TransmogCollection.CanAppearanceHaveIllusion]](<span class="apiarg">appearanceID</span>) : <span class="apiret">canHaveIllusion</span>
: [[API C_TransmogCollection.ClearNewAppearance|C_TransmogCollection.ClearNewAppearance]](<span class="apiarg">visualID</span>)
: [[API C_TransmogCollection.ClearSearch|C_TransmogCollection.ClearSearch]](<span class="apiarg">searchType</span>) : <span class="apiret">completed</span>
: [[API C_TransmogCollection.DeleteOutfit|C_TransmogCollection.DeleteOutfit]](<span class="apiarg">outfitID</span>)
: [[API C_TransmogCollection.EndSearch|C_TransmogCollection.EndSearch]]()
: [[API C_TransmogCollection.GetAllAppearanceSources|C_TransmogCollection.GetAllAppearanceSources]](<span class="apiarg">itemAppearanceID</span>) : <span class="apiret">itemModifiedAppearanceIDs</span>
: [[API C_TransmogCollection.GetAllFactionsShown|C_TransmogCollection.GetAllFactionsShown]]() : <span class="apiret">shown</span>
: [[API C_TransmogCollection.GetAllRacesShown|C_TransmogCollection.GetAllRacesShown]]() : <span class="apiret">shown</span>
: [[API C_TransmogCollection.GetAppearanceCameraID|C_TransmogCollection.GetAppearanceCameraID]](<span class="apiarg">itemAppearanceID [, variation]</span>) : <span class="apiret">cameraID</span>
: [[API C_TransmogCollection.GetAppearanceCameraIDBySource|C_TransmogCollection.GetAppearanceCameraIDBySource]](<span class="apiarg">itemModifiedAppearanceID [, variation]</span>) : <span class="apiret">cameraID</span>
: [[API C_TransmogCollection.GetAppearanceInfoBySource|C_TransmogCollection.GetAppearanceInfoBySource]](<span class="apiarg">itemModifiedAppearanceID</span>) : <span class="apiret">info</span>
: [[API C_TransmogCollection.GetAppearanceSourceDrops|C_TransmogCollection.GetAppearanceSourceDrops]](<span class="apiarg">itemModifiedAppearanceID</span>) : <span class="apiret">encounterInfo</span>
: [[API C_TransmogCollection.GetAppearanceSourceInfo|C_TransmogCollection.GetAppearanceSourceInfo]](<span class="apiarg">itemModifiedAppearanceID</span>) : <span class="apiret">category, itemAppearanceID, canHaveIllusion, icon, isCollected, itemLink, transmoglink, sourceType, itemSubClass</span>
: [[API C_TransmogCollection.GetAppearanceSources|C_TransmogCollection.GetAppearanceSources]](<span class="apiarg">appearanceID [, categoryType [, transmogLocation]]</span>) : <span class="apiret">sources</span>
: [[API C_TransmogCollection.GetArtifactAppearanceStrings|C_TransmogCollection.GetArtifactAppearanceStrings]](<span class="apiarg">appearanceID</span>) : <span class="apiret">name, hyperlink</span>
: [[API C_TransmogCollection.GetCategoryAppearances|C_TransmogCollection.GetCategoryAppearances]](<span class="apiarg">category [, transmogLocation]</span>) : <span class="apiret">appearances</span>
: [[API C_TransmogCollection.GetCategoryCollectedCount|C_TransmogCollection.GetCategoryCollectedCount]](<span class="apiarg">category</span>) : <span class="apiret">count</span>
: [[API C_TransmogCollection.GetCategoryForItem|C_TransmogCollection.GetCategoryForItem]](<span class="apiarg">itemModifiedAppearanceID</span>) : <span class="apiret">collectionCategory</span>
: [[API C_TransmogCollection.GetCategoryInfo|C_TransmogCollection.GetCategoryInfo]](<span class="apiarg">category</span>) : <span class="apiret">name, isWeapon, canHaveIllusions, canMainHand, canOffHand</span>
: [[API C_TransmogCollection.GetCategoryTotal|C_TransmogCollection.GetCategoryTotal]](<span class="apiarg">category</span>) : <span class="apiret">total</span>
: [[API C_TransmogCollection.GetClassFilter|C_TransmogCollection.GetClassFilter]]() : <span class="apiret">classID</span>
: [[API C_TransmogCollection.GetCollectedShown|C_TransmogCollection.GetCollectedShown]]() : <span class="apiret">shown</span>
: [[API C_TransmogCollection.GetFallbackWeaponAppearance|C_TransmogCollection.GetFallbackWeaponAppearance]]() : <span class="apiret">appearanceID</span>
: [[API C_TransmogCollection.GetFilteredCategoryCollectedCount|C_TransmogCollection.GetFilteredCategoryCollectedCount]](<span class="apiarg">category</span>) : <span class="apiret">count</span>
: [[API C_TransmogCollection.GetFilteredCategoryTotal|C_TransmogCollection.GetFilteredCategoryTotal]](<span class="apiarg">category</span>) : <span class="apiret">total</span>
: [[API C_TransmogCollection.GetIllusionInfo|C_TransmogCollection.GetIllusionInfo]](<span class="apiarg">illusionID</span>) : <span class="apiret">info</span>
: [[API C_TransmogCollection.GetIllusions|C_TransmogCollection.GetIllusions]]() : <span class="apiret">illusions</span>
: [[API C_TransmogCollection.GetIllusionStrings|C_TransmogCollection.GetIllusionStrings]](<span class="apiarg">illusionID</span>) : <span class="apiret">name, hyperlink, sourceText</span>
: [[API C_TransmogCollection.GetInspectItemTransmogInfoList|C_TransmogCollection.GetInspectItemTransmogInfoList]]() : <span class="apiret">list</span>
: [[API C_TransmogCollection.GetIsAppearanceFavorite|C_TransmogCollection.GetIsAppearanceFavorite]](<span class="apiarg">itemAppearanceID</span>) : <span class="apiret">isFavorite</span>
: [[API C_TransmogCollection.GetItemInfo|C_TransmogCollection.GetItemInfo]](<span class="apiarg">itemInfo</span>) : <span class="apiret">itemAppearanceID, itemModifiedAppearanceID</span>
: [[API C_TransmogCollection.GetItemTransmogInfoListFromOutfitHyperlink|C_TransmogCollection.GetItemTransmogInfoListFromOutfitHyperlink]](<span class="apiarg">hyperlink</span>) : <span class="apiret">list</span>
: [[API C_TransmogCollection.GetLatestAppearance|C_TransmogCollection.GetLatestAppearance]]() : <span class="apiret">visualID, category</span>
: [[API C_TransmogCollection.GetNumMaxOutfits|C_TransmogCollection.GetNumMaxOutfits]]() : <span class="apiret">maxOutfits</span>
: [[API C_TransmogCollection.GetNumTransmogSources|C_TransmogCollection.GetNumTransmogSources]]() : <span class="apiret">count</span>
: [[API C_TransmogCollection.GetOutfitHyperlinkFromItemTransmogInfoList|C_TransmogCollection.GetOutfitHyperlinkFromItemTransmogInfoList]](<span class="apiarg">itemTransmogInfoList</span>) : <span class="apiret">hyperlink</span>
: [[API C_TransmogCollection.GetOutfitInfo|C_TransmogCollection.GetOutfitInfo]](<span class="apiarg">outfitID</span>) : <span class="apiret">name, icon</span>
: [[API C_TransmogCollection.GetOutfitItemTransmogInfoList|C_TransmogCollection.GetOutfitItemTransmogInfoList]](<span class="apiarg">outfitID</span>) : <span class="apiret">list</span>
: [[API C_TransmogCollection.GetOutfits|C_TransmogCollection.GetOutfits]]() : <span class="apiret">outfitID</span>
: [[API C_TransmogCollection.GetPairedArtifactAppearance|C_TransmogCollection.GetPairedArtifactAppearance]](<span class="apiarg">itemModifiedAppearanceID</span>) : <span class="apiret">pairedItemModifiedAppearanceID</span>
: [[API C_TransmogCollection.GetSourceIcon|C_TransmogCollection.GetSourceIcon]](<span class="apiarg">itemModifiedAppearanceID</span>) : <span class="apiret">icon</span>
: [[API C_TransmogCollection.GetSourceInfo|C_TransmogCollection.GetSourceInfo]](<span class="apiarg">sourceID</span>) : <span class="apiret">sourceInfo</span>
: [[API C_TransmogCollection.GetSourceItemID|C_TransmogCollection.GetSourceItemID]](<span class="apiarg">itemModifiedAppearanceID</span>) : <span class="apiret">itemID</span>
: [[API C_TransmogCollection.GetSourceRequiredHoliday|C_TransmogCollection.GetSourceRequiredHoliday]](<span class="apiarg">itemModifiedAppearanceID</span>) : <span class="apiret">holidayName</span>
: [[API C_TransmogCollection.GetUncollectedShown|C_TransmogCollection.GetUncollectedShown]]() : <span class="apiret">shown</span>
: [[API C_TransmogCollection.GetValidAppearanceSourcesForClass|C_TransmogCollection.GetValidAppearanceSourcesForClass]](<span class="apiarg">appearanceID, classID [, categoryType [, transmogLocation]]</span>) : <span class="apiret">sources</span>
: [[API C_TransmogCollection.HasFavorites|C_TransmogCollection.HasFavorites]]() : <span class="apiret">hasFavorites</span>
: [[API C_TransmogCollection.IsAppearanceHiddenVisual|C_TransmogCollection.IsAppearanceHiddenVisual]](<span class="apiarg">appearanceID</span>) : <span class="apiret">isHiddenVisual</span>
: [[API C_TransmogCollection.IsCategoryValidForItem|C_TransmogCollection.IsCategoryValidForItem]](<span class="apiarg">category, itemInfo</span>) : <span class="apiret">isValid</span>
: [[API C_TransmogCollection.IsNewAppearance|C_TransmogCollection.IsNewAppearance]](<span class="apiarg">visualID</span>) : <span class="apiret">isNew</span>
: [[API C_TransmogCollection.IsSearchDBLoading|C_TransmogCollection.IsSearchDBLoading]]() : <span class="apiret">isLoading</span>
: [[API C_TransmogCollection.IsSearchInProgress|C_TransmogCollection.IsSearchInProgress]](<span class="apiarg">searchType</span>) : <span class="apiret">inProgress</span>
: [[API C_TransmogCollection.IsSourceTypeFilterChecked|C_TransmogCollection.IsSourceTypeFilterChecked]](<span class="apiarg">index</span>) : <span class="apiret">checked</span>
: [[API C_TransmogCollection.IsUsingDefaultFilters|C_TransmogCollection.IsUsingDefaultFilters]]() : <span class="apiret">isUsingDefaultFilters</span>
: [[API C_TransmogCollection.ModifyOutfit|C_TransmogCollection.ModifyOutfit]](<span class="apiarg">outfitID, itemTransmogInfoList</span>)
: [[API C_TransmogCollection.NewOutfit|C_TransmogCollection.NewOutfit]](<span class="apiarg">name, icon, itemTransmogInfoList</span>) : <span class="apiret">outfitID</span>
: [[API C_TransmogCollection.PlayerCanCollectSource|C_TransmogCollection.PlayerCanCollectSource]](<span class="apiarg">sourceID</span>) : <span class="apiret">hasItemData, canCollect</span>
: [[API C_TransmogCollection.PlayerHasTransmog|C_TransmogCollection.PlayerHasTransmog]](<span class="apiarg">itemID [, itemAppearanceModID]</span>) : <span class="apiret">hasTransmog</span>
: [[API C_TransmogCollection.PlayerHasTransmogByItemInfo|C_TransmogCollection.PlayerHasTransmogByItemInfo]](<span class="apiarg">itemInfo</span>) : <span class="apiret">hasTransmog</span>
: [[API C_TransmogCollection.PlayerHasTransmogItemModifiedAppearance|C_TransmogCollection.PlayerHasTransmogItemModifiedAppearance]](<span class="apiarg">itemModifiedAppearanceID</span>) : <span class="apiret">hasTransmog</span>
: [[API C_TransmogCollection.PlayerKnowsSource|C_TransmogCollection.PlayerKnowsSource]](<span class="apiarg">sourceID</span>) : <span class="apiret">isKnown</span>
: [[API C_TransmogCollection.RenameOutfit|C_TransmogCollection.RenameOutfit]](<span class="apiarg">outfitID, name</span>)
: [[API C_TransmogCollection.SearchProgress|C_TransmogCollection.SearchProgress]](<span class="apiarg">searchType</span>) : <span class="apiret">progress</span>
: [[API C_TransmogCollection.SearchSize|C_TransmogCollection.SearchSize]](<span class="apiarg">searchType</span>) : <span class="apiret">size</span>
: [[API C_TransmogCollection.SetAllCollectionTypeFilters|C_TransmogCollection.SetAllCollectionTypeFilters]](<span class="apiarg">checked</span>)
: [[API C_TransmogCollection.SetAllFactionsShown|C_TransmogCollection.SetAllFactionsShown]](<span class="apiarg">shown</span>)
: [[API C_TransmogCollection.SetAllRacesShown|C_TransmogCollection.SetAllRacesShown]](<span class="apiarg">shown</span>)
: [[API C_TransmogCollection.SetAllSourceTypeFilters|C_TransmogCollection.SetAllSourceTypeFilters]](<span class="apiarg">checked</span>)
: [[API C_TransmogCollection.SetClassFilter|C_TransmogCollection.SetClassFilter]](<span class="apiarg">classID</span>)
: [[API C_TransmogCollection.SetCollectedShown|C_TransmogCollection.SetCollectedShown]](<span class="apiarg">shown</span>)
: [[API C_TransmogCollection.SetDefaultFilters|C_TransmogCollection.SetDefaultFilters]]()
: [[API C_TransmogCollection.SetIsAppearanceFavorite|C_TransmogCollection.SetIsAppearanceFavorite]](<span class="apiarg">itemAppearanceID, isFavorite</span>)
: [[API C_TransmogCollection.SetSearch|C_TransmogCollection.SetSearch]](<span class="apiarg">searchType, searchText</span>) : <span class="apiret">completed</span>
: [[API C_TransmogCollection.SetSearchAndFilterCategory|C_TransmogCollection.SetSearchAndFilterCategory]](<span class="apiarg">category</span>)
: [[API C_TransmogCollection.SetSourceTypeFilter|C_TransmogCollection.SetSourceTypeFilter]](<span class="apiarg">index, checked</span>)
: [[API C_TransmogCollection.SetUncollectedShown|C_TransmogCollection.SetUncollectedShown]](<span class="apiarg">shown</span>)
: [[API C_TransmogCollection.UpdateUsableAppearances|C_TransmogCollection.UpdateUsableAppearances]]()

==C_TransmogSets==
: [[API C_TransmogSets.ClearLatestSource|C_TransmogSets.ClearLatestSource]]()
: [[API C_TransmogSets.ClearNewSource|C_TransmogSets.ClearNewSource]](<span class="apiarg">sourceID</span>)
: [[API C_TransmogSets.ClearSetNewSourcesForSlot|C_TransmogSets.ClearSetNewSourcesForSlot]](<span class="apiarg">transmogSetID, slot</span>)
: [[API C_TransmogSets.GetAllSets|C_TransmogSets.GetAllSets]]() : <span class="apiret">sets</span>
: [[API C_TransmogSets.GetAllSourceIDs|C_TransmogSets.GetAllSourceIDs]](<span class="apiarg">transmogSetID</span>) : <span class="apiret">sources</span>
: [[API C_TransmogSets.GetBaseSetID|C_TransmogSets.GetBaseSetID]](<span class="apiarg">transmogSetID</span>) : <span class="apiret">baseTransmogSetID</span>
: [[API C_TransmogSets.GetBaseSets|C_TransmogSets.GetBaseSets]]() : <span class="apiret">sets</span>
: [[API C_TransmogSets.GetBaseSetsFilter|C_TransmogSets.GetBaseSetsFilter]](<span class="apiarg">index</span>) : <span class="apiret">isChecked</span>
: [[API C_TransmogSets.GetCameraIDs|C_TransmogSets.GetCameraIDs]]() : <span class="apiret">detailsCameraID, vendorCameraID</span>
: [[API C_TransmogSets.GetFilteredBaseSetsCounts|C_TransmogSets.GetFilteredBaseSetsCounts]]() : <span class="apiret">numCollected, numTotal</span>
: [[API C_TransmogSets.GetFullBaseSetsCounts|C_TransmogSets.GetFullBaseSetsCounts]]() : <span class="apiret">numCollected, numTotal</span>
: [[API C_TransmogSets.GetIsFavorite|C_TransmogSets.GetIsFavorite]](<span class="apiarg">transmogSetID</span>) : <span class="apiret">isFavorite, isGroupFavorite</span>
: [[API C_TransmogSets.GetLatestSource|C_TransmogSets.GetLatestSource]]() : <span class="apiret">sourceID</span>
: [[API C_TransmogSets.GetSetInfo|C_TransmogSets.GetSetInfo]](<span class="apiarg">transmogSetID</span>) : <span class="apiret">set</span>
: [[API C_TransmogSets.GetSetNewSources|C_TransmogSets.GetSetNewSources]](<span class="apiarg">transmogSetID</span>) : <span class="apiret">sourceIDs</span>
: [[API C_TransmogSets.GetSetPrimaryAppearances|C_TransmogSets.GetSetPrimaryAppearances]](<span class="apiarg">transmogSetID</span>) : <span class="apiret">apppearances</span>
: [[API C_TransmogSets.GetSetsContainingSourceID|C_TransmogSets.GetSetsContainingSourceID]](<span class="apiarg">sourceID</span>) : <span class="apiret">setIDs</span>
: [[API C_TransmogSets.GetSourceIDsForSlot|C_TransmogSets.GetSourceIDsForSlot]](<span class="apiarg">transmogSetID, slot</span>) : <span class="apiret">sources</span>
: [[API C_TransmogSets.GetSourcesForSlot|C_TransmogSets.GetSourcesForSlot]](<span class="apiarg">transmogSetID, slot</span>) : <span class="apiret">sources</span>
: [[API C_TransmogSets.GetTransmogSetsClassFilter|C_TransmogSets.GetTransmogSetsClassFilter]]() : <span class="apiret">classID</span>
: [[API C_TransmogSets.GetUsableSets|C_TransmogSets.GetUsableSets]]() : <span class="apiret">sets</span>
: [[API C_TransmogSets.GetValidBaseSetsCountsForCharacter|C_TransmogSets.GetValidBaseSetsCountsForCharacter]]() : <span class="apiret">numCollected, numTotal</span>
: [[API C_TransmogSets.GetVariantSets|C_TransmogSets.GetVariantSets]](<span class="apiarg">transmogSetID</span>) : <span class="apiret">sets</span>
: [[API C_TransmogSets.HasUsableSets|C_TransmogSets.HasUsableSets]]() : <span class="apiret">hasUsableSets</span>
: [[API C_TransmogSets.IsBaseSetCollected|C_TransmogSets.IsBaseSetCollected]](<span class="apiarg">transmogSetID</span>) : <span class="apiret">isCollected</span>
: [[API C_TransmogSets.IsNewSource|C_TransmogSets.IsNewSource]](<span class="apiarg">sourceID</span>) : <span class="apiret">isNew</span>
: [[API C_TransmogSets.IsSetVisible|C_TransmogSets.IsSetVisible]](<span class="apiarg">transmogSetID</span>) : <span class="apiret">isVisible</span>
: [[API C_TransmogSets.IsUsingDefaultBaseSetsFilters|C_TransmogSets.IsUsingDefaultBaseSetsFilters]]() : <span class="apiret">isUsingDefaultBaseSetsFilters</span>
: [[API C_TransmogSets.SetBaseSetsFilter|C_TransmogSets.SetBaseSetsFilter]](<span class="apiarg">index, isChecked</span>)
: [[API C_TransmogSets.SetDefaultBaseSetsFilters|C_TransmogSets.SetDefaultBaseSetsFilters]]()
: [[API C_TransmogSets.SetHasNewSources|C_TransmogSets.SetHasNewSources]](<span class="apiarg">transmogSetID</span>) : <span class="apiret">hasNewSources</span>
: [[API C_TransmogSets.SetHasNewSourcesForSlot|C_TransmogSets.SetHasNewSourcesForSlot]](<span class="apiarg">transmogSetID, slot</span>) : <span class="apiret">hasNewSources</span>
: [[API C_TransmogSets.SetIsFavorite|C_TransmogSets.SetIsFavorite]](<span class="apiarg">transmogSetID, isFavorite</span>)
: [[API C_TransmogSets.SetTransmogSetsClassFilter|C_TransmogSets.SetTransmogSetsClassFilter]](<span class="apiarg">classID</span>)
: [[API IsUnitModelReadyForUI|IsUnitModelReadyForUI]](<span class="apiarg">unitToken</span>) : <span class="apiret">isReady</span>

==C_TTSSettings==
[[Wikipedia:Speech synthesis|Text-to-Speech]] was added in [[Patch 9.1.0]]
: [[API C_TTSSettings.GetChannelEnabled|C_TTSSettings.GetChannelEnabled]](<span class="apiarg">channelInfo</span>) : <span class="apiret">enabled</span>
: [[API C_TTSSettings.GetCharacterSettingsSaved|C_TTSSettings.GetCharacterSettingsSaved]]() : <span class="apiret">settingsBeenSaved</span>
: [[API C_TTSSettings.GetChatTypeEnabled|C_TTSSettings.GetChatTypeEnabled]](<span class="apiarg">chatName</span>) : <span class="apiret">enabled</span>
: [[API C_TTSSettings.GetSetting|C_TTSSettings.GetSetting]](<span class="apiarg">setting</span>) : <span class="apiret">enabled</span>
: [[API C_TTSSettings.GetSpeechRate|C_TTSSettings.GetSpeechRate]]() : <span class="apiret">rate</span>
: [[API C_TTSSettings.GetSpeechVolume|C_TTSSettings.GetSpeechVolume]]() : <span class="apiret">volume</span>
: [[API C_TTSSettings.GetVoiceOptionID|C_TTSSettings.GetVoiceOptionID]](<span class="apiarg">voiceType</span>) : <span class="apiret">voiceID</span>
: [[API C_TTSSettings.GetVoiceOptionName|C_TTSSettings.GetVoiceOptionName]](<span class="apiarg">voiceType</span>) : <span class="apiret">voiceName</span>
: [[API C_TTSSettings.MarkCharacterSettingsSaved|C_TTSSettings.MarkCharacterSettingsSaved]]()
: [[API C_TTSSettings.SetChannelEnabled|C_TTSSettings.SetChannelEnabled]](<span class="apiarg">channelInfo [, newVal]</span>)
: [[API C_TTSSettings.SetChannelKeyEnabled|C_TTSSettings.SetChannelKeyEnabled]](<span class="apiarg">channelKey [, newVal]</span>)
: [[API C_TTSSettings.SetChatTypeEnabled|C_TTSSettings.SetChatTypeEnabled]](<span class="apiarg">chatName [, newVal]</span>)
: [[API C_TTSSettings.SetDefaultSettings|C_TTSSettings.SetDefaultSettings]]()
: [[API C_TTSSettings.SetSetting|C_TTSSettings.SetSetting]](<span class="apiarg">setting [, newVal]</span>)
: [[API C_TTSSettings.SetSpeechRate|C_TTSSettings.SetSpeechRate]](<span class="apiarg">newVal</span>)
: [[API C_TTSSettings.SetSpeechVolume|C_TTSSettings.SetSpeechVolume]](<span class="apiarg">newVal</span>)
: [[API C_TTSSettings.SetVoiceOption|C_TTSSettings.SetVoiceOption]](<span class="apiarg">voiceType, voiceID</span>)
: [[API C_TTSSettings.SetVoiceOptionName|C_TTSSettings.SetVoiceOptionName]](<span class="apiarg">voiceType, voiceName</span>)
: [[API C_TTSSettings.ShouldOverrideMessage|C_TTSSettings.ShouldOverrideMessage]](<span class="apiarg">language, messageText</span>) : <span class="apiret">overrideMessage</span>

==C_UIWidgetManager==
The UI widget system was added in [[Patch_8.0.1/API_changes|Patch 8.0.1]] to replace the WorldStateFrame; see [[UPDATE_UI_WIDGET]] for usage information.

: [[API C_UIWidgetManager.GetAllWidgetsBySetID|C_UIWidgetManager.GetAllWidgetsBySetID]](<span class="apiarg">setID</span>) : <span class="apiret">widgets</span> - Returns all widgets for a widget set ID.
: [[API C_UIWidgetManager.GetBelowMinimapWidgetSetID|C_UIWidgetManager.GetBelowMinimapWidgetSetID]]() : <span class="apiret">setID</span>
: [[API C_UIWidgetManager.GetObjectiveTrackerWidgetSetID|C_UIWidgetManager.GetObjectiveTrackerWidgetSetID]]() : <span class="apiret">setID</span>
: [[API C_UIWidgetManager.GetPowerBarWidgetSetID|C_UIWidgetManager.GetPowerBarWidgetSetID]]() : <span class="apiret">setID</span>
: [[API C_UIWidgetManager.GetTopCenterWidgetSetID|C_UIWidgetManager.GetTopCenterWidgetSetID]]() : <span class="apiret">setID</span> - Returns the widget set ID for the top center part of the screen.
: [[API C_UIWidgetManager.GetWidgetSetInfo|C_UIWidgetManager.GetWidgetSetInfo]](<span class="apiarg">widgetSetID</span>) : <span class="apiret">widgetSetInfo</span>
: [[API UnitWidgetSet|UnitWidgetSet]](<span class="apiarg">unit</span>) : <span class="apiret">uiWidgetSet</span>

: [[API C_UIWidgetManager.GetBulletTextListWidgetVisualizationInfo|C_UIWidgetManager.GetBulletTextListWidgetVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetCaptureBarWidgetVisualizationInfo|C_UIWidgetManager.GetCaptureBarWidgetVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetCaptureZoneVisualizationInfo|C_UIWidgetManager.GetCaptureZoneVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetDiscreteProgressStepsVisualizationInfo|C_UIWidgetManager.GetDiscreteProgressStepsVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetDoubleIconAndTextWidgetVisualizationInfo|C_UIWidgetManager.GetDoubleIconAndTextWidgetVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetDoubleStateIconRowVisualizationInfo|C_UIWidgetManager.GetDoubleStateIconRowVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetDoubleStatusBarWidgetVisualizationInfo|C_UIWidgetManager.GetDoubleStatusBarWidgetVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetFillUpFramesWidgetVisualizationInfo|C_UIWidgetManager.GetFillUpFramesWidgetVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetHorizontalCurrenciesWidgetVisualizationInfo|C_UIWidgetManager.GetHorizontalCurrenciesWidgetVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetIconAndTextWidgetVisualizationInfo|C_UIWidgetManager.GetIconAndTextWidgetVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetIconTextAndBackgroundWidgetVisualizationInfo|C_UIWidgetManager.GetIconTextAndBackgroundWidgetVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetIconTextAndCurrenciesWidgetVisualizationInfo|C_UIWidgetManager.GetIconTextAndCurrenciesWidgetVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetItemDisplayVisualizationInfo|C_UIWidgetManager.GetItemDisplayVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetMapPinAnimationWidgetVisualizationInfo|C_UIWidgetManager.GetMapPinAnimationWidgetVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetScenarioHeaderCurrenciesAndBackgroundWidgetVisualizationInfo|C_UIWidgetManager.GetScenarioHeaderCurrenciesAndBackgroundWidgetVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetScenarioHeaderDelvesWidgetVisualizationInfo|C_UIWidgetManager.GetScenarioHeaderDelvesWidgetVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetScenarioHeaderTimerWidgetVisualizationInfo|C_UIWidgetManager.GetScenarioHeaderTimerWidgetVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetSpacerVisualizationInfo|C_UIWidgetManager.GetSpacerVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetSpellDisplayVisualizationInfo|C_UIWidgetManager.GetSpellDisplayVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetStackedResourceTrackerWidgetVisualizationInfo|C_UIWidgetManager.GetStackedResourceTrackerWidgetVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetStatusBarWidgetVisualizationInfo|C_UIWidgetManager.GetStatusBarWidgetVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetTextColumnRowVisualizationInfo|C_UIWidgetManager.GetTextColumnRowVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetTextureAndTextRowVisualizationInfo|C_UIWidgetManager.GetTextureAndTextRowVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetTextureAndTextVisualizationInfo|C_UIWidgetManager.GetTextureAndTextVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetTextureWithAnimationVisualizationInfo|C_UIWidgetManager.GetTextureWithAnimationVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetTextWithStateWidgetVisualizationInfo|C_UIWidgetManager.GetTextWithStateWidgetVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetTextWithSubtextWidgetVisualizationInfo|C_UIWidgetManager.GetTextWithSubtextWidgetVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetTugOfWarWidgetVisualizationInfo|C_UIWidgetManager.GetTugOfWarWidgetVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetUnitPowerBarWidgetVisualizationInfo|C_UIWidgetManager.GetUnitPowerBarWidgetVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>
: [[API C_UIWidgetManager.GetZoneControlVisualizationInfo|C_UIWidgetManager.GetZoneControlVisualizationInfo]](<span class="apiarg">widgetID</span>) : <span class="apiret">widgetInfo</span>

: [[API C_UIWidgetManager.RegisterUnitForWidgetUpdates|C_UIWidgetManager.RegisterUnitForWidgetUpdates]](<span class="apiarg">unitToken [, isGuid]</span>)
: [[API C_UIWidgetManager.SetProcessingUnit|C_UIWidgetManager.SetProcessingUnit]](<span class="apiarg">[unit]</span>)
: [[API C_UIWidgetManager.SetProcessingUnitGuid|C_UIWidgetManager.SetProcessingUnitGuid]](<span class="apiarg">[unit]</span>)
: [[API C_UIWidgetManager.UnregisterUnitForWidgetUpdates|C_UIWidgetManager.UnregisterUnitForWidgetUpdates]](<span class="apiarg">unitToken [, isGuid]</span>)

==C_UnitAuras==
: [[API C_UnitAuras.AddPrivateAuraAnchor|C_UnitAuras.AddPrivateAuraAnchor]](<span class="apiarg">args</span>) : <span class="apiret">anchorID</span>
: [[API C_UnitAuras.AddPrivateAuraAppliedSound|C_UnitAuras.AddPrivateAuraAppliedSound]](<span class="apiarg">sound</span>) : <span class="apiret">privateAuraSoundID</span>
: [[API C_UnitAuras.AuraIsPrivate|C_UnitAuras.AuraIsPrivate]](<span class="apiarg">spellID</span>) : <span class="apiret">isPrivate</span>
: [[API C_UnitAuras.GetAuraDataByAuraInstanceID|C_UnitAuras.GetAuraDataByAuraInstanceID]](<span class="apiarg">unitToken, auraInstanceID</span>) : <span class="apiret">aura</span>
: [[API C_UnitAuras.GetAuraDataByIndex|C_UnitAuras.GetAuraDataByIndex]](<span class="apiarg">unitToken, index [, filter]</span>) : <span class="apiret">aura</span>
: [[API C_UnitAuras.GetAuraDataBySlot|C_UnitAuras.GetAuraDataBySlot]](<span class="apiarg">unitToken, slot</span>) : <span class="apiret">aura</span>
: [[API C_UnitAuras.GetAuraDataBySpellName|C_UnitAuras.GetAuraDataBySpellName]](<span class="apiarg">unitToken, spellName [, filter]</span>) : <span class="apiret">aura</span>
: [[API C_UnitAuras.GetAuraSlots|C_UnitAuras.GetAuraSlots]](<span class="apiarg">unitToken [, filter [, maxSlots [, continuationToken]]]</span>) : <span class="apiret">outContinuationToken, slots</span>
: [[API C_UnitAuras.GetBuffDataByIndex|C_UnitAuras.GetBuffDataByIndex]](<span class="apiarg">unitToken, index [, filter]</span>) : <span class="apiret">aura</span>
: [[API C_UnitAuras.GetCooldownAuraBySpellID|C_UnitAuras.GetCooldownAuraBySpellID]](<span class="apiarg">spellID</span>) : <span class="apiret">cooldownSpellID</span>
: [[API C_UnitAuras.GetDebuffDataByIndex|C_UnitAuras.GetDebuffDataByIndex]](<span class="apiarg">unitToken, index [, filter]</span>) : <span class="apiret">aura</span>
: [[API C_UnitAuras.GetPlayerAuraBySpellID|C_UnitAuras.GetPlayerAuraBySpellID]](<span class="apiarg">spellID</span>) : <span class="apiret">aura</span>
: [[API C_UnitAuras.IsAuraFilteredOutByInstanceID|C_UnitAuras.IsAuraFilteredOutByInstanceID]](<span class="apiarg">unitToken, auraInstanceID, filterFlags</span>) : <span class="apiret">isFiltered</span>
: [[API C_UnitAuras.RemovePrivateAuraAnchor|C_UnitAuras.RemovePrivateAuraAnchor]](<span class="apiarg">anchorID</span>)
: [[API C_UnitAuras.RemovePrivateAuraAppliedSound|C_UnitAuras.RemovePrivateAuraAppliedSound]](<span class="apiarg">privateAuraSoundID</span>)
: [[API C_UnitAuras.SetPrivateWarningTextAnchor|C_UnitAuras.SetPrivateWarningTextAnchor]](<span class="apiarg">parent [, anchor]</span>)
: [[API C_UnitAuras.WantsAlteredForm|C_UnitAuras.WantsAlteredForm]](<span class="apiarg">unitToken</span>) : <span class="apiret">wantsAlteredForm</span>
: [[API CancelUnitBuff|CancelUnitBuff]](<span class="apiarg">unit, buffIndex, filter</span>) {{apitag|nocombat}} - Removes a specific buff from the character.
: [https://github.com/Gethe/wow-ui-source/search?q=FindAura AuraUtil.FindAura](<span class="apiarg">predicate, unit, filter, predicateArg1, predicateArg2, predicateArg3</span>) {{apitag|framexml}}
: [https://github.com/Gethe/wow-ui-source/search?q=FindAuraByName AuraUtil.FindAuraByName](<span class="apiarg">auraName, unit, filter</span>) {{apitag|framexml}} - Finds the first aura that matches the name.
: [https://github.com/Gethe/wow-ui-source/search?q=ForEachAura AuraUtil.ForEachAura](<span class="apiarg">unit, filter, maxCount, func</span>) {{apitag|framexml}}
: [https://github.com/Gethe/wow-ui-source/search?q=ShouldSkipAuraUpdate AuraUtil.ShouldSkipAuraUpdate](<span class="apiarg">isFullUpdate, updatedAuraInfos, isRelevantFunc, ...</span>) {{apitag|framexml}}
Weapon Enchants
: [[API CancelItemTempEnchantment|CancelItemTempEnchantment]](<span class="apiarg">weaponHand</span>) {{apitag|protected}} - Removes temporary weapon enchants (e.g. Rogue poisons and sharpening stones).
: [[API GetWeaponEnchantInfo|GetWeaponEnchantInfo]]() : <span class="apiret">hasMainHandEnchant, mainHandExpiration, mainHandCharges, mainHandEnchantID, hasOffHandEnchant, offHandExpiration, offHandCharges, offHandEnchantID, hasRangedEnchant, rangedExpiration, rangedCharges, rangedEnchantID</span> - Returns info for temporary weapon enchantments (e.g. sharpening stones).

==C_VignetteInfo==
[[Vignette]]s are used for one-time rare mobs and treasure chests.
: [[API C_VignetteInfo.FindBestUniqueVignette|C_VignetteInfo.FindBestUniqueVignette]](<span class="apiarg">vignetteGUIDs</span>) : <span class="apiret">bestUniqueVignetteIndex</span>
: [[API C_VignetteInfo.GetVignetteInfo|C_VignetteInfo.GetVignetteInfo]](<span class="apiarg">vignetteGUID</span>) : <span class="apiret">vignetteInfo</span>
: [[API C_VignetteInfo.GetVignettePosition|C_VignetteInfo.GetVignettePosition]](<span class="apiarg">vignetteGUID, uiMapID</span>) : <span class="apiret">vignettePosition, vignetteFacing</span>
: [[API C_VignetteInfo.GetVignettes|C_VignetteInfo.GetVignettes]]() : <span class="apiret">vignetteGUIDs</span>

==C_VoiceChat==
[[Voice Chat]] was added in [[Patch 2.2]] and reworked in [[Patch 8.0.1]]
: [[API C_VoiceChat.ActivateChannel|C_VoiceChat.ActivateChannel]](<span class="apiarg">channelID</span>)
: [[API C_VoiceChat.BeginLocalCapture|C_VoiceChat.BeginLocalCapture]](<span class="apiarg">listenToLocalUser</span>)
: [[API C_VoiceChat.CanAccessSettings|C_VoiceChat.CanAccessSettings]]() : <span class="apiret">canAccess</span>
: [[API C_VoiceChat.CanPlayerUseVoiceChat|C_VoiceChat.CanPlayerUseVoiceChat]]() : <span class="apiret">canUseVoiceChat</span>
: [[API C_VoiceChat.CreateChannel|C_VoiceChat.CreateChannel]](<span class="apiarg">channelDisplayName</span>) : <span class="apiret">status</span>
: [[API C_VoiceChat.DeactivateChannel|C_VoiceChat.DeactivateChannel]](<span class="apiarg">channelID</span>)
: [[API C_VoiceChat.EndLocalCapture|C_VoiceChat.EndLocalCapture]]()
: [[API C_VoiceChat.GetActiveChannelID|C_VoiceChat.GetActiveChannelID]]() : <span class="apiret">channelID</span>
: [[API C_VoiceChat.GetActiveChannelType|C_VoiceChat.GetActiveChannelType]]() : <span class="apiret">channelType</span>
: [[API C_VoiceChat.GetAvailableInputDevices|C_VoiceChat.GetAvailableInputDevices]]() : <span class="apiret">inputDevices</span>
: [[API C_VoiceChat.GetAvailableOutputDevices|C_VoiceChat.GetAvailableOutputDevices]]() : <span class="apiret">outputDevices</span>
: [[API C_VoiceChat.GetChannel|C_VoiceChat.GetChannel]](<span class="apiarg">channelID</span>) : <span class="apiret">channel</span>
: [[API C_VoiceChat.GetChannelForChannelType|C_VoiceChat.GetChannelForChannelType]](<span class="apiarg">channelType</span>) : <span class="apiret">channel</span>
: [[API C_VoiceChat.GetChannelForCommunityStream|C_VoiceChat.GetChannelForCommunityStream]](<span class="apiarg">clubId, streamId</span>) : <span class="apiret">channel</span>
: [[API C_VoiceChat.GetCommunicationMode|C_VoiceChat.GetCommunicationMode]]() : <span class="apiret">communicationMode</span>
: [[API C_VoiceChat.GetCurrentVoiceChatConnectionStatusCode|C_VoiceChat.GetCurrentVoiceChatConnectionStatusCode]]() : <span class="apiret">statusCode</span>
: [[API C_VoiceChat.GetInputVolume|C_VoiceChat.GetInputVolume]]() : <span class="apiret">volume</span>
: [[API C_VoiceChat.GetJoinClubVoiceChannelError|C_VoiceChat.GetJoinClubVoiceChannelError]](<span class="apiarg">clubId</span>) : <span class="apiret">errorReason</span>
: [[API C_VoiceChat.GetLocalPlayerActiveChannelMemberInfo|C_VoiceChat.GetLocalPlayerActiveChannelMemberInfo]]() : <span class="apiret">memberInfo</span>
: [[API C_VoiceChat.GetLocalPlayerMemberID|C_VoiceChat.GetLocalPlayerMemberID]](<span class="apiarg">channelID</span>) : <span class="apiret">memberID</span>
: [[API C_VoiceChat.GetMasterVolumeScale|C_VoiceChat.GetMasterVolumeScale]]() : <span class="apiret">scale</span>
: [[API C_VoiceChat.GetMemberGUID|C_VoiceChat.GetMemberGUID]](<span class="apiarg">memberID, channelID</span>) : <span class="apiret">memberGUID</span>
: [[API C_VoiceChat.GetMemberID|C_VoiceChat.GetMemberID]](<span class="apiarg">channelID, memberGUID</span>) : <span class="apiret">memberID</span>
: [[API C_VoiceChat.GetMemberInfo|C_VoiceChat.GetMemberInfo]](<span class="apiarg">memberID, channelID</span>) : <span class="apiret">memberInfo</span>
: [[API C_VoiceChat.GetMemberName|C_VoiceChat.GetMemberName]](<span class="apiarg">memberID, channelID</span>) : <span class="apiret">memberName</span>
: [[API C_VoiceChat.GetMemberVolume|C_VoiceChat.GetMemberVolume]](<span class="apiarg">playerLocation</span>) : <span class="apiret">volume</span>
: [[API C_VoiceChat.GetOutputVolume|C_VoiceChat.GetOutputVolume]]() : <span class="apiret">volume</span>
: [[API C_VoiceChat.GetProcesses|C_VoiceChat.GetProcesses]]() : <span class="apiret">processes</span>
: [[API C_VoiceChat.GetPTTButtonPressedState|C_VoiceChat.GetPTTButtonPressedState]]() : <span class="apiret">isPressed</span>
: [[API C_VoiceChat.GetPushToTalkBinding|C_VoiceChat.GetPushToTalkBinding]]() : <span class="apiret">keys</span>
: [[API C_VoiceChat.GetVADSensitivity|C_VoiceChat.GetVADSensitivity]]() : <span class="apiret">sensitivity</span>
: [[API C_VoiceChat.IsChannelJoinPending|C_VoiceChat.IsChannelJoinPending]](<span class="apiarg">channelType [, clubId [, streamId]]</span>) : <span class="apiret">isPending</span>
: [[API C_VoiceChat.IsDeafened|C_VoiceChat.IsDeafened]]() : <span class="apiret">isDeafened</span>
: [[API C_VoiceChat.IsEnabled|C_VoiceChat.IsEnabled]]() : <span class="apiret">isEnabled</span>
: [[API C_VoiceChat.IsLoggedIn|C_VoiceChat.IsLoggedIn]]() : <span class="apiret">isLoggedIn</span>
: [[API C_VoiceChat.IsMemberLocalPlayer|C_VoiceChat.IsMemberLocalPlayer]](<span class="apiarg">memberID, channelID</span>) : <span class="apiret">isLocalPlayer</span>
: [[API C_VoiceChat.IsMemberMuted|C_VoiceChat.IsMemberMuted]](<span class="apiarg">playerLocation</span>) : <span class="apiret">mutedForMe</span>
: [[API C_VoiceChat.IsMemberMutedForAll|C_VoiceChat.IsMemberMutedForAll]](<span class="apiarg">memberID, channelID</span>) : <span class="apiret">mutedForAll</span>
: [[API C_VoiceChat.IsMemberSilenced|C_VoiceChat.IsMemberSilenced]](<span class="apiarg">memberID, channelID</span>) : <span class="apiret">silenced</span>
: [[API C_VoiceChat.IsMuted|C_VoiceChat.IsMuted]]() : <span class="apiret">isMuted</span>
: [[API C_VoiceChat.IsParentalDisabled|C_VoiceChat.IsParentalDisabled]]() : <span class="apiret">isParentalDisabled</span>
: [[API C_VoiceChat.IsParentalMuted|C_VoiceChat.IsParentalMuted]]() : <span class="apiret">isParentalMuted</span>
: [[API C_VoiceChat.IsPlayerUsingVoice|C_VoiceChat.IsPlayerUsingVoice]](<span class="apiarg">playerLocation</span>) : <span class="apiret">isUsingVoice</span>
: [[API C_VoiceChat.IsSilenced|C_VoiceChat.IsSilenced]]() : <span class="apiret">isSilenced</span>
: [[API C_VoiceChat.IsTranscribing|C_VoiceChat.IsTranscribing]]() : <span class="apiret">isTranscribing</span>
: [[API C_VoiceChat.IsVoiceChatConnected|C_VoiceChat.IsVoiceChatConnected]]() : <span class="apiret">connected</span>
: [[API C_VoiceChat.LeaveChannel|C_VoiceChat.LeaveChannel]](<span class="apiarg">channelID</span>)
: [[API C_VoiceChat.Login|C_VoiceChat.Login]]() : <span class="apiret">status</span>
: [[API C_VoiceChat.Logout|C_VoiceChat.Logout]]() : <span class="apiret">status</span>
: [[API C_VoiceChat.MarkChannelsDiscovered|C_VoiceChat.MarkChannelsDiscovered]]()
: [[API C_VoiceChat.RequestJoinAndActivateCommunityStreamChannel|C_VoiceChat.RequestJoinAndActivateCommunityStreamChannel]](<span class="apiarg">clubId, streamId</span>)
: [[API C_VoiceChat.RequestJoinChannelByChannelType|C_VoiceChat.RequestJoinChannelByChannelType]](<span class="apiarg">channelType [, autoActivate]</span>)
: [[API C_VoiceChat.SetCommunicationMode|C_VoiceChat.SetCommunicationMode]](<span class="apiarg">communicationMode</span>)
: [[API C_VoiceChat.SetDeafened|C_VoiceChat.SetDeafened]](<span class="apiarg">isDeafened</span>)
: [[API C_VoiceChat.SetInputDevice|C_VoiceChat.SetInputDevice]](<span class="apiarg">deviceID</span>)
: [[API C_VoiceChat.SetInputVolume|C_VoiceChat.SetInputVolume]](<span class="apiarg">volume</span>)
: [[API C_VoiceChat.SetMasterVolumeScale|C_VoiceChat.SetMasterVolumeScale]](<span class="apiarg">scale</span>)
: [[API C_VoiceChat.SetMemberMuted|C_VoiceChat.SetMemberMuted]](<span class="apiarg">playerLocation, muted</span>)
: [[API C_VoiceChat.SetMemberVolume|C_VoiceChat.SetMemberVolume]](<span class="apiarg">playerLocation, volume</span>)
: [[API C_VoiceChat.SetMuted|C_VoiceChat.SetMuted]](<span class="apiarg">isMuted</span>)
: [[API C_VoiceChat.SetOutputDevice|C_VoiceChat.SetOutputDevice]](<span class="apiarg">deviceID</span>)
: [[API C_VoiceChat.SetOutputVolume|C_VoiceChat.SetOutputVolume]](<span class="apiarg">volume</span>)
: [[API C_VoiceChat.SetPortraitTexture|C_VoiceChat.SetPortraitTexture]](<span class="apiarg">textureObject, memberID, channelID</span>)
: [[API C_VoiceChat.SetPushToTalkBinding|C_VoiceChat.SetPushToTalkBinding]](<span class="apiarg">keys</span>)
: [[API C_VoiceChat.SetVADSensitivity|C_VoiceChat.SetVADSensitivity]](<span class="apiarg">sensitivity</span>)
: [[API C_VoiceChat.ShouldDiscoverChannels|C_VoiceChat.ShouldDiscoverChannels]]() : <span class="apiret">shouldDiscoverChannels</span>
: [[API C_VoiceChat.ToggleDeafened|C_VoiceChat.ToggleDeafened]]()
: [[API C_VoiceChat.ToggleMemberMuted|C_VoiceChat.ToggleMemberMuted]](<span class="apiarg">playerLocation</span>)
: [[API C_VoiceChat.ToggleMuted|C_VoiceChat.ToggleMuted]]()
Text-to-Speech
: [[API C_VoiceChat.ActivateChannelTranscription|C_VoiceChat.ActivateChannelTranscription]](<span class="apiarg">channelID</span>)
: [[API C_VoiceChat.DeactivateChannelTranscription|C_VoiceChat.DeactivateChannelTranscription]](<span class="apiarg">channelID</span>)
: [[API C_VoiceChat.GetRemoteTtsVoices|C_VoiceChat.GetRemoteTtsVoices]]() : <span class="apiret">ttsVoices</span>
: [[API C_VoiceChat.GetTtsVoices|C_VoiceChat.GetTtsVoices]]() : <span class="apiret">ttsVoices</span>
: [[API C_VoiceChat.IsSpeakForMeActive|C_VoiceChat.IsSpeakForMeActive]]() : <span class="apiret">isActive</span>
: [[API C_VoiceChat.IsSpeakForMeAllowed|C_VoiceChat.IsSpeakForMeAllowed]]() : <span class="apiret">isAllowed</span>
: [[API C_VoiceChat.IsTranscriptionAllowed|C_VoiceChat.IsTranscriptionAllowed]]() : <span class="apiret">isAllowed</span>
: [[API C_VoiceChat.SpeakRemoteTextSample|C_VoiceChat.SpeakRemoteTextSample]](<span class="apiarg">text</span>)
: [[API C_VoiceChat.SpeakText|C_VoiceChat.SpeakText]](<span class="apiarg">voiceID, text, destination, rate, volume</span>)
: [[API C_VoiceChat.StopSpeakingText|C_VoiceChat.StopSpeakingText]]()

==C_WeeklyRewards==
: [[API C_WeeklyRewards.AreRewardsForCurrentRewardPeriod|C_WeeklyRewards.AreRewardsForCurrentRewardPeriod]]() : <span class="apiret">isCurrentPeriod</span>
: [[API C_WeeklyRewards.CanClaimRewards|C_WeeklyRewards.CanClaimRewards]]() : <span class="apiret">canClaimRewards</span>
: [[API C_WeeklyRewards.ClaimReward|C_WeeklyRewards.ClaimReward]](<span class="apiarg">id</span>)
: [[API C_WeeklyRewards.CloseInteraction|C_WeeklyRewards.CloseInteraction]]()
: [[API C_WeeklyRewards.GetActivities|C_WeeklyRewards.GetActivities]](<span class="apiarg">[type]</span>) : <span class="apiret">activities</span>
: [[API C_WeeklyRewards.GetActivityEncounterInfo|C_WeeklyRewards.GetActivityEncounterInfo]](<span class="apiarg">type, index</span>) : <span class="apiret">info</span>
: [[API C_WeeklyRewards.GetConquestWeeklyProgress|C_WeeklyRewards.GetConquestWeeklyProgress]]() : <span class="apiret">weeklyProgress</span>
: [[API C_WeeklyRewards.GetDifficultyIDForActivityTier|C_WeeklyRewards.GetDifficultyIDForActivityTier]](<span class="apiarg">activityTierID</span>) : <span class="apiret">difficultyID</span>
: [[API C_WeeklyRewards.GetExampleRewardItemHyperlinks|C_WeeklyRewards.GetExampleRewardItemHyperlinks]](<span class="apiarg">id</span>) : <span class="apiret">hyperlink, upgradeHyperlink</span>
: [[API C_WeeklyRewards.GetItemHyperlink|C_WeeklyRewards.GetItemHyperlink]](<span class="apiarg">itemDBID</span>) : <span class="apiret">hyperlink</span>
: [[API C_WeeklyRewards.GetNextActivitiesIncrease|C_WeeklyRewards.GetNextActivitiesIncrease]](<span class="apiarg">activityTierID, level</span>) : <span class="apiret">hasSeasonData, nextActivityTierID, nextLevel, itemLevel</span>
: [[API C_WeeklyRewards.GetNextMythicPlusIncrease|C_WeeklyRewards.GetNextMythicPlusIncrease]](<span class="apiarg">mythicPlusLevel</span>) : <span class="apiret">hasSeasonData, nextMythicPlusLevel, itemLevel</span>
: [[API C_WeeklyRewards.GetNumCompletedDungeonRuns|C_WeeklyRewards.GetNumCompletedDungeonRuns]]() : <span class="apiret">numHeroic, numMythic, numMythicPlus</span>
: [[API C_WeeklyRewards.HasAvailableRewards|C_WeeklyRewards.HasAvailableRewards]]() : <span class="apiret">hasAvailableRewards</span>
: [[API C_WeeklyRewards.HasGeneratedRewards|C_WeeklyRewards.HasGeneratedRewards]]() : <span class="apiret">hasGeneratedRewards</span>
: [[API C_WeeklyRewards.HasInteraction|C_WeeklyRewards.HasInteraction]]() : <span class="apiret">isInteracting</span>
: [[API C_WeeklyRewards.IsWeeklyChestRetired|C_WeeklyRewards.IsWeeklyChestRetired]]() : <span class="apiret">isRetired</span>
: [[API C_WeeklyRewards.OnUIInteract|C_WeeklyRewards.OnUIInteract]]()
: [[API C_WeeklyRewards.ShouldShowFinalRetirementMessage|C_WeeklyRewards.ShouldShowFinalRetirementMessage]]() : <span class="apiret">showRetirementMessage</span>
: [[API C_WeeklyRewards.ShouldShowRetirementMessage|C_WeeklyRewards.ShouldShowRetirementMessage]]() : <span class="apiret">showRetirementMessage</span>

==C_WorldLootObject==
: [[API C_WorldLootObject.GetCurrentWorldLootObjectSwapInventoryType|C_WorldLootObject.GetCurrentWorldLootObjectSwapInventoryType]]() : <span class="apiret">inventoryType</span>
: [[API C_WorldLootObject.GetWorldLootObjectInfo|C_WorldLootObject.GetWorldLootObjectInfo]](<span class="apiarg">unitToken</span>) : <span class="apiret">info</span>
: [[API C_WorldLootObject.IsWorldLootObject|C_WorldLootObject.IsWorldLootObject]](<span class="apiarg">unitToken</span>) : <span class="apiret">isWorldLootObject</span>
: [[API C_WorldLootObject.IsWorldLootObjectInRange|C_WorldLootObject.IsWorldLootObjectInRange]](<span class="apiarg">unitToken</span>) : <span class="apiret">isWorldLootObjectInRange</span>
: [[API C_WorldLootObject.OnWorldLootObjectClick|C_WorldLootObject.OnWorldLootObjectClick]](<span class="apiarg">unitToken</span>)
: [[API WorldLootObjectExists|WorldLootObjectExists]](<span class="apiarg">[unit]</span>) : <span class="apiret">result</span>

==C_WowLabs==
[[Plunderstorm]] was added in [[Patch 10.2.6]]
: [[API C_WowLabsDataManager.PushCircleInfoToLua|C_WowLabsDataManager.PushCircleInfoToLua]]()
: [[API C_WoWLabsMatchmaking.AcceptPartyInvite|C_WoWLabsMatchmaking.AcceptPartyInvite]]()
: [[API C_WoWLabsMatchmaking.CanEnterMatchmaking|C_WoWLabsMatchmaking.CanEnterMatchmaking]]()
: [[API C_WoWLabsMatchmaking.DeclinePartyInvite|C_WoWLabsMatchmaking.DeclinePartyInvite]]()
: [[API C_WoWLabsMatchmaking.GetCurrentParty|C_WoWLabsMatchmaking.GetCurrentParty]]()
: [[API C_WoWLabsMatchmaking.GetInQueueTimeStart|C_WoWLabsMatchmaking.GetInQueueTimeStart]]()
: [[API C_WoWLabsMatchmaking.GetNumPartyInvites|C_WoWLabsMatchmaking.GetNumPartyInvites]]()
: [[API C_WoWLabsMatchmaking.GetPartyInviteByIndex|C_WoWLabsMatchmaking.GetPartyInviteByIndex]]()
: [[API C_WoWLabsMatchmaking.GetPartyPlaylistEntry|C_WoWLabsMatchmaking.GetPartyPlaylistEntry]]()
: [[API C_WoWLabsMatchmaking.GetPartySize|C_WoWLabsMatchmaking.GetPartySize]]()
: [[API C_WoWLabsMatchmaking.IsAloneInWoWLabsParty|C_WoWLabsMatchmaking.IsAloneInWoWLabsParty]]()
: [[API C_WoWLabsMatchmaking.IsFindingMatch|C_WoWLabsMatchmaking.IsFindingMatch]]()
: [[API C_WoWLabsMatchmaking.IsPartyFull|C_WoWLabsMatchmaking.IsPartyFull]]()
: [[API C_WoWLabsMatchmaking.IsPartyLeader|C_WoWLabsMatchmaking.IsPartyLeader]]()
: [[API C_WoWLabsMatchmaking.IsPlayer|C_WoWLabsMatchmaking.IsPlayer]]()
: [[API C_WoWLabsMatchmaking.IsPlayerReady|C_WoWLabsMatchmaking.IsPlayerReady]]()
: [[API C_WoWLabsMatchmaking.IsWowLabsMatchmakingMember|C_WoWLabsMatchmaking.IsWowLabsMatchmakingMember]]()
: [[API C_WoWLabsMatchmaking.LeaveParty|C_WoWLabsMatchmaking.LeaveParty]]()
: [[API C_WoWLabsMatchmaking.RemovePlayerFromParty|C_WoWLabsMatchmaking.RemovePlayerFromParty]]()
: [[API C_WoWLabsMatchmaking.SendPartyInvite|C_WoWLabsMatchmaking.SendPartyInvite]]()
: [[API C_WoWLabsMatchmaking.SetPartyPlaylistEntry|C_WoWLabsMatchmaking.SetPartyPlaylistEntry]]()
: [[API C_WoWLabsMatchmaking.SetPlayerReady|C_WoWLabsMatchmaking.SetPlayerReady]]()

==C_WowToken==
[[WoW Token]]s were added in [[Patch 6.1.2]]
: [[API C_WowTokenPublic.BuyToken|C_WowTokenPublic.BuyToken]]()
: [[API C_WowTokenPublic.GetCommerceSystemStatus|C_WowTokenPublic.GetCommerceSystemStatus]]()
: [[API C_WowTokenPublic.GetCurrentMarketPrice|C_WowTokenPublic.GetCurrentMarketPrice]]()
: [[API C_WowTokenPublic.GetGuaranteedPrice|C_WowTokenPublic.GetGuaranteedPrice]]()
: [[API C_WowTokenPublic.GetListedAuctionableTokenInfo|C_WowTokenPublic.GetListedAuctionableTokenInfo]](<span class="apiarg">index</span>)
: [[API C_WowTokenPublic.GetNumListedAuctionableTokens|C_WowTokenPublic.GetNumListedAuctionableTokens]]()
: [[API C_WowTokenPublic.IsAuctionableWowToken|C_WowTokenPublic.IsAuctionableWowToken]](<span class="apiarg">itemID</span>)
: [[API C_WowTokenPublic.IsConsumableWowToken|C_WowTokenPublic.IsConsumableWowToken]]()
: [[API C_WowTokenPublic.UpdateListedAuctionableTokens|C_WowTokenPublic.UpdateListedAuctionableTokens]]()
: [[API C_WowTokenPublic.UpdateMarketPrice|C_WowTokenPublic.UpdateMarketPrice]]()
: [[API C_WowTokenPublic.UpdateTokenCount|C_WowTokenPublic.UpdateTokenCount]]()
: [[API C_WowTokenUI.StartTokenSell|C_WowTokenUI.StartTokenSell]](<span class="apiarg">tokenGUID</span>)

==C_ZoneAbility==
: [[API C_ZoneAbility.GetActiveAbilities|C_ZoneAbility.GetActiveAbilities]]() : <span class="apiret">zoneAbilities</span>
: [[API C_ZoneAbility.GetZoneAbilityIcon|C_ZoneAbility.GetZoneAbilityIcon]](<span class="apiarg">zoneAbilitySpellID</span>) : <span class="apiret">zoneAbilityIconID</span>

==Account==
Relates to the subscription [[Account]]. See also [[#Battle.net|Battle.net]] functions.
: [[API C_AccountServices.IsAccountLockedPostSave|C_AccountServices.IsAccountLockedPostSave]]()
: [[API C_AccountServices.IsAccountSaveEnabled|C_AccountServices.IsAccountSaveEnabled]]()
: [[API C_AccountServices.IsAccountSaveInProgress|C_AccountServices.IsAccountSaveInProgress]]()
: [[API C_AccountServices.SaveAccountData|C_AccountServices.SaveAccountData]]()
: [[API GetBillingTimeRested|GetBillingTimeRested]]() : <span class="apiret">billingTimeRested</span> - Returns the amount of "healthy" time left for players on Chinese realms.
: [[API GetRestrictedAccountData|GetRestrictedAccountData]]() : <span class="apiret">maxLevel, maxMoney, professionCap</span> - Returns the cap on trial character level, money and profession skill.
: [[API GetSecondsUntilParentalControlsKick|GetSecondsUntilParentalControlsKick]]() : <span class="apiret">remaining</span>
: [[API IsAccountSecured|IsAccountSecured]]() : <span class="apiret">result</span> - Returns if the account has been secured with [[Blizzard Mobile Authenticator]].
: [[API IsRestrictedAccount|IsRestrictedAccount]]() : <span class="apiret">result</span> - Returns if the acount has trial account restrictions.
: [[API IsTrialAccount|IsTrialAccount]]() : <span class="apiret">isTrialAccount</span> - Returns whether the player is using a trial (free-to-play) account.
: [[API IsVeteranTrialAccount|IsVeteranTrialAccount]]() : <span class="apiret">isVeteranTrialAccount</span> - Returns whether the wow account has no game time.
: [[API NoPlayTime|NoPlayTime]]() : <span class="apiret">result</span> - Returns true if the account is considered "unhealthy" for players on Chinese realms.
: [[API PartialPlayTime|PartialPlayTime]]() : <span class="apiret">result</span> - Returns true if the account is considered "tired" for players on Chinese realms.
: [[API SendSubscriptionInterstitialResponse|SendSubscriptionInterstitialResponse]](<span class="apiarg">response</span>)

==Achievements==
[[Achievement]]s were added in [[Patch 3.0.2]]
: [[API C_AchievementInfo.AreGuildAchievementsEnabled|C_AchievementInfo.AreGuildAchievementsEnabled]]() : <span class="apiret">enabled</span>
: [[API C_AchievementInfo.GetRewardItemID|C_AchievementInfo.GetRewardItemID]](<span class="apiarg">achievementID</span>) : <span class="apiret">rewardItemID</span>
: [[API C_AchievementInfo.GetSupercedingAchievements|C_AchievementInfo.GetSupercedingAchievements]](<span class="apiarg">achievementID</span>) : <span class="apiret">supercedingAchievements</span> - Returns the next achievement in a series.
: [[API C_AchievementInfo.IsGuildAchievement|C_AchievementInfo.IsGuildAchievement]](<span class="apiarg">achievementId</span>) : <span class="apiret">isGuild</span>
: [[API C_AchievementInfo.IsValidAchievement|C_AchievementInfo.IsValidAchievement]](<span class="apiarg">achievementId</span>) : <span class="apiret">isValidAchievement</span>
: [[API C_AchievementInfo.SetPortraitTexture|C_AchievementInfo.SetPortraitTexture]](<span class="apiarg">textureObject</span>) - Sets a portrait texture for the unit being achievement compared.
: [[API AreAccountAchievementsHidden|AreAccountAchievementsHidden]]() : <span class="apiret">result</span>
: [[API CanShowAchievementUI|CanShowAchievementUI]]() : <span class="apiret">canShow</span> - Returns if the AchievementUI can be displayed.
: [[API ClearAchievementComparisonUnit|ClearAchievementComparisonUnit]]() - Remove the unit being compared.
: [[API ClearAchievementSearchString|ClearAchievementSearchString]]()
: [[API GetAchievementCategory|GetAchievementCategory]](<span class="apiarg">achievementID</span>) : <span class="apiret">categoryID</span> - Returns the category number the requested achievement belongs to.
: [[API GetAchievementComparisonInfo|GetAchievementComparisonInfo]](<span class="apiarg">achievementID</span>) : <span class="apiret">completed, month, day, year</span> - Returns information about the comparison unit's achievements.
: [[API GetAchievementCriteriaInfo|GetAchievementCriteriaInfo]](<span class="apiarg">achievementID, criteriaIndex [, countHidden]</span>) : <span class="apiret">criteriaString, criteriaType, completed, quantity, reqQuantity, charName, flags, assetID, quantityString, criteriaID, eligible, duration, elapsed</span> - Returns info for the specified achievement criteria.
: [[API GetAchievementCriteriaInfoByID|GetAchievementCriteriaInfoByID]](<span class="apiarg">achievementID, criteriaID</span>) : <span class="apiret">criteriaString, criteriaType, completed, quantity, reqQuantity, charName, flags, assetID, quantityString, criteriaID, eligible, duration, elapsed</span> - Returns achievement criteria info by criteriaIndex.
: [[API GetAchievementGuildRep|GetAchievementGuildRep]]()
: [[API GetAchievementInfo|GetAchievementInfo]](<span class="apiarg">achievementID</span>) : <span class="apiret">id, name, points, completed, month, day, year, description, flags, icon, rewardText, isGuild, wasEarnedByMe, earnedBy, isStatistic</span> - Returns info for an achievement.
: [[API GetAchievementLink|GetAchievementLink]](<span class="apiarg">id</span>) : <span class="apiret">link</span> - Returns an achievement link.
: [[API GetAchievementNumCriteria|GetAchievementNumCriteria]](<span class="apiarg">achievementID</span>) : <span class="apiret">numCriteria</span> - Returns the number of criteria for an achievement.
: [[API GetAchievementNumRewards|GetAchievementNumRewards]](<span class="apiarg">achievementID</span>) - Returns the number of rewards the requested achievement has.
: [[API GetAchievementReward|GetAchievementReward]](<span class="apiarg">achievementID, rewardIndex</span>) - Returns information about a reward item by rewardIndex.
: [[API GetAchievementSearchProgress|GetAchievementSearchProgress]]()
: [[API GetAchievementSearchSize|GetAchievementSearchSize]]()
: [[API GetCategoryAchievementPoints|GetCategoryAchievementPoints]](<span class="apiarg">categoryID, includeSubCategories</span>)
: [[API GetCategoryInfo|GetCategoryInfo]](<span class="apiarg">categoryID</span>) : <span class="apiret">title, parentCategoryID, flags</span> - Returns info for an achievement category.
: [[API GetCategoryList|GetCategoryList]]() : <span class="apiret">idTable</span> - Returns the list of achievement categories.
: [[API GetCategoryNumAchievements|GetCategoryNumAchievements]](<span class="apiarg">categoryId [, includeAll]</span>) : <span class="apiret">total, completed, incompleted</span> - Returns the number of achievements for a category.
: [[API GetComparisonAchievementPoints|GetComparisonAchievementPoints]]() - Returns the total number of achievement points the comparison unit has earned.
: [[API GetComparisonCategoryNumAchievements|GetComparisonCategoryNumAchievements]](<span class="apiarg">achievementID</span>) - Returns a number of achievements in a category for the comparison player.
: [[API GetFilteredAchievementID|GetFilteredAchievementID]](<span class="apiarg">index</span>) : <span class="apiret">achievementID</span> - Returns the ID of a filtered achievement by index.
: [[API GetGuildAchievementMemberInfo|GetGuildAchievementMemberInfo]](<span class="apiarg">achievementID, index</span>)
: [[API GetGuildAchievementMembers|GetGuildAchievementMembers]](<span class="apiarg">achievementID</span>)
: [[API GetGuildAchievementNumMembers|GetGuildAchievementNumMembers]](<span class="apiarg">achievementID</span>)
: [[API GetLatestCompletedAchievements|GetLatestCompletedAchievements]]() - Returns the ID's of the last 5 completed Achievements.
: [[API GetLatestCompletedComparisonAchievements|GetLatestCompletedComparisonAchievements]]() - Returns a list of the latest updated achievements for the comparison player.
: [[API GetNextAchievement|GetNextAchievement]](<span class="apiarg">achievementID</span>) : <span class="apiret">nextID, completed</span> - Returns the next achievement in a chain.
: [[API GetNumComparisonCompletedAchievements|GetNumComparisonCompletedAchievements]](<span class="apiarg">achievementID</span>) : <span class="apiret">total, completed</span> - Returns the number of completed achievements for the comparison player.
: [[API GetNumCompletedAchievements|GetNumCompletedAchievements]]() : <span class="apiret">total, completed</span> - Returns the total and completed number of achievements.
: [[API GetNumFilteredAchievements|GetNumFilteredAchievements]]() : <span class="apiret">numFiltered</span> - Returns the number of achievements after filtering.
: [[API GetPreviousAchievement|GetPreviousAchievement]](<span class="apiarg">achievementID</span>) : <span class="apiret">previousAchievementID</span> - Returns the previous achievement in a chain.
: [[API GetTotalAchievementPoints|GetTotalAchievementPoints]](<span class="apiarg">[guild]</span>) : <span class="apiret">points</span> - Returns the total number of achievement points earned.
: [[API HasCompletedAnyAchievement|HasCompletedAnyAchievement]](<span class="apiarg">achievementID</span>)
: [[API IsAchievementEligible|IsAchievementEligible]](<span class="apiarg">achievementID</span>) : <span class="apiret">eligible</span>
: [[API SetAchievementComparisonUnit|SetAchievementComparisonUnit]](<span class="apiarg">unit</span>) : <span class="apiret">success</span> - Sets the unit to be compared to.
: [[API SetAchievementSearchString|SetAchievementSearchString]](<span class="apiarg">searchText</span>) : <span class="apiret">searchFinished</span> - Starts a search for achievements containing the specified text.
: [[API SetFocusedAchievement|SetFocusedAchievement]](<span class="apiarg">achievementID</span>)
: [[API ShowAccountAchievements|ShowAccountAchievements]](<span class="apiarg">[hide]</span>)
: [[API SwitchAchievementSearchTab|SwitchAchievementSearchTab]](<span class="apiarg">index</span>)

===Statistics===
: [[API GetComparisonStatistic|GetComparisonStatistic]](<span class="apiarg">achievementID</span>) : <span class="apiret">value</span> - Returns the specified statistic from the comparison player unit.
: [[API GetLatestUpdatedComparisonStats|GetLatestUpdatedComparisonStats]]() - Returns a list of the latest updated statistics for the comparison player.
: [[API GetLatestUpdatedStats|GetLatestUpdatedStats]]() - Returns the ID's of the last 5 updated Statistics.
: [[API GetStatistic|GetStatistic]](<span class="apiarg">category [, index]</span>) : <span class="apiret">value, skip, id</span> - Returns a character statistic.
: [[API GetStatisticsCategoryList|GetStatisticsCategoryList]]() : <span class="apiret">categories</span> - Returns the list of statistic categories.

==Adventure Guide==
The [[Adventure Guide]] was added in [[Patch 6.2.0]]
: [[API C_AdventureJournal.ActivateEntry|C_AdventureJournal.ActivateEntry]](<span class="apiarg">index</span>)
: [[API C_AdventureJournal.CanBeShown|C_AdventureJournal.CanBeShown]]()
: [[API C_AdventureJournal.GetNumAvailableSuggestions|C_AdventureJournal.GetNumAvailableSuggestions]]()
: [[API C_AdventureJournal.GetPrimaryOffset|C_AdventureJournal.GetPrimaryOffset]]()
: [[API C_AdventureJournal.GetReward|C_AdventureJournal.GetReward]]()
: [[API C_AdventureJournal.GetSuggestions|C_AdventureJournal.GetSuggestions]](<span class="apiarg">[suggestions]</span>)
: [[API C_AdventureJournal.SetPrimaryOffset|C_AdventureJournal.SetPrimaryOffset]](<span class="apiarg">offset</span>)
: [[API C_AdventureJournal.UpdateSuggestions|C_AdventureJournal.UpdateSuggestions]](<span class="apiarg">[levelUp]</span>)
===Encounter Journal===
The Encounter Journal was added in [[Patch 4.2.0]]
: [[API C_EncounterJournal.GetDungeonEntrancesForMap|C_EncounterJournal.GetDungeonEntrancesForMap]](<span class="apiarg">uiMapID</span>) : <span class="apiret">dungeonEntrances</span> - Returns the instance entrances for a map.
: [[API C_EncounterJournal.GetEncounterJournalLink|C_EncounterJournal.GetEncounterJournalLink]](<span class="apiarg">linkType, ID, displayText, difficultyID</span>) : <span class="apiret">link</span>
: [[API C_EncounterJournal.GetEncountersOnMap|C_EncounterJournal.GetEncountersOnMap]](<span class="apiarg">uiMapID</span>) : <span class="apiret">encounters</span> - Returns boss pin locations for an instance map.
: [[API C_EncounterJournal.GetInstanceForGameMap|C_EncounterJournal.GetInstanceForGameMap]](<span class="apiarg">mapID</span>) : <span class="apiret">journalInstanceID</span>
: [[API C_EncounterJournal.GetSectionIconFlags|C_EncounterJournal.GetSectionIconFlags]](<span class="apiarg">sectionID</span>) : <span class="apiret">iconFlags</span> - Returns the icon flags for a section, such as Magic Effect and Heroic Difficulty
: [[API C_EncounterJournal.GetSectionInfo|C_EncounterJournal.GetSectionInfo]](<span class="apiarg">sectionID</span>) : <span class="apiret">info</span> - Returns information about an entry in the Abilities section of the Encounter Journal.
: [[API C_EncounterJournal.InitalizeSelectedTier|C_EncounterJournal.InitalizeSelectedTier]]()
: [[API C_EncounterJournal.InstanceHasLoot|C_EncounterJournal.InstanceHasLoot]](<span class="apiarg">[instanceID]</span>) : <span class="apiret">hasLoot</span> - Returns whether an instance has a loot table in the journal.
: [[API C_EncounterJournal.IsEncounterComplete|C_EncounterJournal.IsEncounterComplete]](<span class="apiarg">journalEncounterID</span>) : <span class="apiret">isEncounterComplete</span> - Returns if a boss encounter has been completed.
: [[API C_EncounterJournal.OnClose|C_EncounterJournal.OnClose]]()
: [[API C_EncounterJournal.OnOpen|C_EncounterJournal.OnOpen]]()
: [[API C_EncounterJournal.SetPreviewMythicPlusLevel|C_EncounterJournal.SetPreviewMythicPlusLevel]](<span class="apiarg">level</span>)
: [[API C_EncounterJournal.SetPreviewPvpTier|C_EncounterJournal.SetPreviewPvpTier]](<span class="apiarg">tier</span>)
: [[API C_EncounterJournal.SetTab|C_EncounterJournal.SetTab]](<span class="apiarg">tabIdx</span>)
: [[API C_RaidLocks.IsEncounterComplete|C_RaidLocks.IsEncounterComplete]](<span class="apiarg">mapID, encounterID [, difficultyID]</span>) : <span class="apiret">encounterIsComplete</span>
: [[API EJ_ClearSearch|EJ_ClearSearch]]() - Clears the encounter journal search results.
: [[API EJ_EndSearch|EJ_EndSearch]]() - Ends any active encounter journal search.
: [[API EJ_GetContentTuningID|EJ_GetContentTuningID]]() : <span class="apiret">tuningID</span> - Returns the currently selected content tuning ID for BFA instances.
: [[API EJ_GetCreatureInfo|EJ_GetCreatureInfo]](<span class="apiarg">index [, encounterID]</span>) : <span class="apiret">id, name, description, displayInfo, iconImage, uiModelSceneID</span> - Returns encounter boss info.
: [[API EJ_GetCurrentTier|EJ_GetCurrentTier]]() : <span class="apiret">index</span> - Returns the currently active encounter journal tier index.
: [[API EJ_GetDifficulty|EJ_GetDifficulty]]() : <span class="apiret">difficultyId</span> - Returns the currently viewed difficulty in the journal.
: [[API EJ_GetEncounterInfo|EJ_GetEncounterInfo]](<span class="apiarg">journalEncounterID</span>) : <span class="apiret">name, description, journalEncounterID, rootSectionID, link, journalInstanceID, dungeonEncounterID, instanceID</span> - Returns encounter info from the journal.
: [[API EJ_GetEncounterInfoByIndex|EJ_GetEncounterInfoByIndex]](<span class="apiarg">index [, journalInstanceID]</span>) : <span class="apiret">name, description, journalEncounterID, rootSectionID, link, journalInstanceID, dungeonEncounterID, instanceID</span> - idem
: [[API EJ_GetInstanceByIndex|EJ_GetInstanceByIndex]](<span class="apiarg">index, isRaid</span>) : <span class="apiret">instanceID, name, description, bgImage, buttonImage1, loreImage, buttonImage2, dungeonAreaMapID, link, shouldDisplayDifficulty, mapID</span> - Returns instance info for the Encounter Journal.
: [[API EJ_GetInstanceForMap|EJ_GetInstanceForMap]](<span class="apiarg">mapID</span>) : <span class="apiret">instanceID</span> - Returns any corresponding instance ID for a UiMapID.
: [[API EJ_GetInstanceInfo|EJ_GetInstanceInfo]](<span class="apiarg">[journalInstanceID]</span>) : <span class="apiret">name, description, bgImage, buttonImage1, loreImage, buttonImage2, dungeonAreaMapID, link, shouldDisplayDifficulty, mapID</span> - Returns instance info for the Encounter Journal.
: [[API EJ_GetMapEncounter|EJ_GetMapEncounter]](<span class="apiarg">uiMapID, index [, fromJournal]</span>) : <span class="apiret">x, y, instanceID, name, description, encounterID, rootSectionID, link</span> - Returns boss pin locations on instance maps.
: [[API EJ_GetNumEncountersForLootByIndex|EJ_GetNumEncountersForLootByIndex]](<span class="apiarg">index</span>) : <span class="apiret">numLoot</span> - Returns the amount of encounters that drop the same loot item.
: [[API EJ_GetNumSearchResults|EJ_GetNumSearchResults]]() : <span class="apiret">numResults</span> - Returns the number of search results for the Encounter Journal.
: [[API EJ_GetNumTiers|EJ_GetNumTiers]]() : <span class="apiret">numTiers</span> - Returns the number of valid encounter journal tier indices.
: [[API EJ_GetSearchProgress|EJ_GetSearchProgress]]() : <span class="apiret">searchProgress</span> - Returns the search bar's progress ratio.
: [[API EJ_GetSearchResult|EJ_GetSearchResult]](<span class="apiarg">index</span>) : <span class="apiret">id, stype, difficultyID, instanceID, encounterID, itemLink</span> - Returns search results for the Encounter Journal.
: [[API EJ_GetSearchSize|EJ_GetSearchSize]]() : <span class="apiret">searchSize</span> - Returns the amount of Encounter Journal objects to search through.
: [[API EJ_GetSectionPath|EJ_GetSectionPath]](<span class="apiarg">sectionID</span>) : <span class="apiret">sectionID, parentSectionID, grandParentSectionID</span> - Returns the parent Section ID if available.
: [[API EJ_GetTierInfo|EJ_GetTierInfo]](<span class="apiarg">index</span>) : <span class="apiret">name, link</span> - Get some information about the encounter journal tier for index.
: [[API EJ_HandleLinkPath|EJ_HandleLinkPath]](<span class="apiarg">journalType, id</span>) : <span class="apiret">instanceID, encounterID, sectionID, tierIndex</span> - Returns the supplementary instance and encounter ID for an encounter or section ID.
: [[API EJ_InstanceIsRaid|EJ_InstanceIsRaid]]() : <span class="apiret">isRaid</span> - Returns whether the selected instance is a raid.
: [[API EJ_IsSearchFinished|EJ_IsSearchFinished]]() : <span class="apiret">isFinished</span> - Returns whether the current search has finished.
: [[API EJ_IsValidInstanceDifficulty|EJ_IsValidInstanceDifficulty]](<span class="apiarg">difficultyID</span>) : <span class="apiret">isValid</span> - Returns whether the difficultyID is valid for use in the journal.
: [[API EJ_SelectEncounter|EJ_SelectEncounter]](<span class="apiarg">encounterID</span>) - Selects an encounter for the Encounter Journal API state.
: [[API EJ_SelectInstance|EJ_SelectInstance]](<span class="apiarg">journalInstanceID</span>) - Selects an instance for the Encounter Journal API state.
: [[API EJ_SelectTier|EJ_SelectTier]](<span class="apiarg">index</span>) - Selects a tier for the Encounter Journal API state.
: [[API EJ_SetDifficulty|EJ_SetDifficulty]](<span class="apiarg">difficultyID</span>) - Sets the encounter difficulty shown in the Encounter Journal.
: [[API EJ_SetSearch|EJ_SetSearch]](<span class="apiarg">text</span>) - Starts a search in the journal.
: [[API GetJournalInfoForSpellConfirmation|GetJournalInfoForSpellConfirmation]](<span class="apiarg">spellID</span>)
: [[API SetPortraitTextureFromCreatureDisplayID|SetPortraitTextureFromCreatureDisplayID]](<span class="apiarg">textureObject, creatureDisplayID</span>)
Loot Journal
: [[API C_LootJournal.GetItemSetItems|C_LootJournal.GetItemSetItems]](<span class="apiarg">setID</span>) : <span class="apiret">items</span>
: [[API C_LootJournal.GetItemSets|C_LootJournal.GetItemSets]](<span class="apiarg">[classID [, specID]]</span>) : <span class="apiret">itemSets</span>
: [[API C_EncounterJournal.GetLootInfo|C_EncounterJournal.GetLootInfo]](<span class="apiarg">id</span>) : <span class="apiret">itemInfo</span> - Returns info for loot items available from an encounter.
: [[API C_EncounterJournal.GetLootInfoByIndex|C_EncounterJournal.GetLootInfoByIndex]](<span class="apiarg">index [, encounterIndex]</span>) : <span class="apiret">itemInfo</span> - Returns loot info for an encounter or instance.
: [[API C_EncounterJournal.GetSlotFilter|C_EncounterJournal.GetSlotFilter]]() : <span class="apiret">filter</span> - Returns the current item slot filter for loot items.
: [[API C_EncounterJournal.ResetSlotFilter|C_EncounterJournal.ResetSlotFilter]]() - Resets the item slot filter for loot items.
: [[API C_EncounterJournal.SetSlotFilter|C_EncounterJournal.SetSlotFilter]](<span class="apiarg">filterSlot</span>) - Sets the item slot filter for loot items.
: [[API EJ_GetInvTypeSortOrder|EJ_GetInvTypeSortOrder]](<span class="apiarg">invType</span>) : <span class="apiret">sortOrder</span> - Returns the sort order for an inventory type.
: [[API EJ_GetLootFilter|EJ_GetLootFilter]]() : <span class="apiret">classID, specID</span> - Returns the currently used loot filter.
: [[API EJ_GetNumLoot|EJ_GetNumLoot]]() : <span class="apiret">numLoot</span> - Returns the amount of loot for the currently selected instance or encounter.
: [[API EJ_IsLootListOutOfDate|EJ_IsLootListOutOfDate]]() : <span class="apiret">listOutOfDate</span> - Returns whether the loot list is out of date in relation to any filters when getting new loot data.
: [[API EJ_ResetLootFilter|EJ_ResetLootFilter]]() - Clears any current loot filter in the journal.
: [[API EJ_SetLootFilter|EJ_SetLootFilter]](<span class="apiarg">classID, specID</span>) - Sets the loot filter for a specialization.

==Bags==
: [[API HasKey|HasKey]]() : <span class="apiret">hasKey</span>
: [[API IsInventoryItemProfessionBag|IsInventoryItemProfessionBag]](<span class="apiarg">unit, slot</span>)
: [[API PutItemInBackpack|PutItemInBackpack]]() - Places the item on the cursor into the player's backpack.
: [[API PutItemInBag|PutItemInBag]](<span class="apiarg">[inventoryID]</span>) : <span class="apiret">hadItem</span> - Places the item on the cursor into the specified bag slot.
: [[API SetBarSlotFromIntro|SetBarSlotFromIntro]](<span class="apiarg">slot</span>)
: {{api|CloseAllBags}}(<span class="apiarg">callingFrame, forceUpdate</span>) {{apitag|framexml}}
: {{api|CloseBackpack}}() {{apitag|framexml}}
: {{api|CloseBag}}(<span class="apiarg">bagID</span>) {{apitag|framexml}}
: {{api|IsBagOpen}}(<span class="apiarg">bagID</span>) {{apitag|framexml}}
: {{api|OpenAllBags}}(<span class="apiarg">callingFrame, forceUpdate</span>) {{apitag|framexml}}
: {{api|OpenBackpack}}() {{apitag|framexml}}
: {{api|OpenBag}}(<span class="apiarg">bagID, force</span>) {{apitag|framexml}}
: {{api|ToggleAllBags}}() {{apitag|framexml}}
: {{api|ToggleBackpack}}() {{apitag|framexml}} - Toggles your backpack open/closed.
: {{api|ToggleBag|ToggleBag}}(<span class="apiarg">bagID</span>) {{apitag|framexml}} - Opens or closes the specified bag.

===Inventory===
These functions manage your inventory, specifically '''equipped items'''.
: [[API CancelPendingEquip|CancelPendingEquip]](<span class="apiarg">index</span>) - Cancels a pending equip confirmation.
: [[API EquipPendingItem|EquipPendingItem]](<span class="apiarg">index</span>) - Equips the currently pending Bind-on-Equip or Bind-on-Pickup item from the specified inventory slot.
: [[API GetAverageItemLevel|GetAverageItemLevel]]() : <span class="apiret">avgItemLevel, avgItemLevelEquipped, avgItemLevelPvp</span> - Returns the character's average item level.
: [[API GetInventoryAlertStatus|GetInventoryAlertStatus]](<span class="apiarg">index</span>) : <span class="apiret">alertStatus</span> - Returns the durability status of an equipped item.
: [[API GetInventoryItemBroken|GetInventoryItemBroken]](<span class="apiarg">unit, invSlotId</span>) : <span class="apiret">isBroken</span> - Returns true if an inventory item has zero durability.
: [[API GetInventoryItemCooldown|GetInventoryItemCooldown]](<span class="apiarg">unit, invSlotId</span>) : <span class="apiret">start, duration, enable</span> - Get cooldown information for an inventory item.
: [[API GetInventoryItemCount|GetInventoryItemCount]](<span class="apiarg">unit, invSlotId</span>) : <span class="apiret">count</span> - Determine the quantity of an item in an inventory slot.
: [[API GetInventoryItemDurability|GetInventoryItemDurability]](<span class="apiarg">invSlotId</span>) : <span class="apiret">current, maximum</span> - Returns the durability of an equipped item.
: [[API GetInventoryItemID|GetInventoryItemID]](<span class="apiarg">unit, invSlotId</span>) : <span class="apiret">itemId, unknown</span> - Returns the item ID for an equipped item.
: [[API GetInventoryItemLink|GetInventoryItemLink]](<span class="apiarg">unit, invSlotId</span>) : <span class="apiret">itemLink</span> - Returns the item link for an equipped item.
: [[API GetInventoryItemQuality|GetInventoryItemQuality]](<span class="apiarg">unit, invSlotId</span>) : <span class="apiret">quality</span> - Returns the quality of an equipped item.
: [[API GetInventoryItemTexture|GetInventoryItemTexture]](<span class="apiarg">unit, invSlotId</span>) : <span class="apiret">texture</span> - Returns the texture for an equipped item.
: [[API GetInventorySlotInfo|GetInventorySlotInfo]](<span class="apiarg">invSlotName</span>) : <span class="apiret">invSlotId, textureName, checkRelic</span> - Returns info for an equipment slot.
: [[API HasWandEquipped|HasWandEquipped]]() : <span class="apiret">wandEquipped</span> - Returns true if a wand is equipped.
: [[API IsInventoryItemLocked|IsInventoryItemLocked]](<span class="apiarg">slotId</span>) : <span class="apiret">isLocked</span> - Returns whether an inventory item is locked, usually as it awaits pending action.
: [[API UpdateInventoryAlertStatus|UpdateInventoryAlertStatus]]()
: [[API UseInventoryItem|UseInventoryItem]](<span class="apiarg">slot</span>) {{apitag|protected}} - Use an item in a specific inventory slot.

==Bank==
Relates to the [[Bank]].
: [[API C_Bank.AutoDepositItemsIntoBank|C_Bank.AutoDepositItemsIntoBank]](<span class="apiarg">bankType</span>)
: [[API C_Bank.CanDepositMoney|C_Bank.CanDepositMoney]](<span class="apiarg">bankType</span>) : <span class="apiret">canDepositMoney</span>
: [[API C_Bank.CanPurchaseBankTab|C_Bank.CanPurchaseBankTab]](<span class="apiarg">bankType</span>) : <span class="apiret">canPurchaseBankTab</span>
: [[API C_Bank.CanUseBank|C_Bank.CanUseBank]](<span class="apiarg">bankType</span>) : <span class="apiret">canUseBank</span>
: [[API C_Bank.CanViewBank|C_Bank.CanViewBank]](<span class="apiarg">bankType</span>) : <span class="apiret">canViewBank</span>
: [[API C_Bank.CanWithdrawMoney|C_Bank.CanWithdrawMoney]](<span class="apiarg">bankType</span>) : <span class="apiret">canWithdrawMoney</span>
: [[API C_Bank.CloseBankFrame|C_Bank.CloseBankFrame]]()
: [[API C_Bank.DepositMoney|C_Bank.DepositMoney]](<span class="apiarg">bankType, amount</span>)
: [[API C_Bank.FetchDepositedMoney|C_Bank.FetchDepositedMoney]](<span class="apiarg">bankType</span>) : <span class="apiret">amount</span>
: [[API C_Bank.FetchNextPurchasableBankTabCost|C_Bank.FetchNextPurchasableBankTabCost]](<span class="apiarg">bankType</span>) : <span class="apiret">nextPurchasableTabCost</span>
: [[API C_Bank.FetchNumPurchasedBankTabs|C_Bank.FetchNumPurchasedBankTabs]](<span class="apiarg">bankType</span>) : <span class="apiret">numPurchasedBankTabs</span>
: [[API C_Bank.FetchPurchasedBankTabData|C_Bank.FetchPurchasedBankTabData]](<span class="apiarg">bankType</span>) : <span class="apiret">purchasedBankTabData</span>
: [[API C_Bank.FetchPurchasedBankTabIDs|C_Bank.FetchPurchasedBankTabIDs]](<span class="apiarg">bankType</span>) : <span class="apiret">purchasedBankTabIDs</span>
: [[API C_Bank.HasMaxBankTabs|C_Bank.HasMaxBankTabs]](<span class="apiarg">bankType</span>) : <span class="apiret">hasMaxBankTabs</span>
: [[API C_Bank.IsItemAllowedInBankType|C_Bank.IsItemAllowedInBankType]](<span class="apiarg">bankType, itemLocation</span>) : <span class="apiret">isItemAllowedInBankType</span>
: [[API C_Bank.PurchaseBankTab|C_Bank.PurchaseBankTab]](<span class="apiarg">bankType</span>)
: [[API C_Bank.UpdateBankTabSettings|C_Bank.UpdateBankTabSettings]](<span class="apiarg">bankType, tabID, tabName, tabIcon, depositFlags</span>)
: [[API C_Bank.WithdrawMoney|C_Bank.WithdrawMoney]](<span class="apiarg">bankType, amount</span>)
: [[API BankButtonIDToInvSlotID|BankButtonIDToInvSlotID]](<span class="apiarg">buttonID [, isBag]</span>) : <span class="apiret">invSlot</span> - Maps a BankButtonID to InventorySlotID.
: [[API BuyReagentBank|BuyReagentBank]]()
: [[API DepositReagentBank|DepositReagentBank]]()
: [[API GetBankSlotCost|GetBankSlotCost]](<span class="apiarg">numSlots</span>) : <span class="apiret">cost</span> - Returns the cost of the next bank bag slot.
: [[API GetNumBankSlots|GetNumBankSlots]]() : <span class="apiret">numSlots, full</span> - Returns the number of purchased bank bag slots.
: [[API GetReagentBankCost|GetReagentBankCost]]()
: [[API IsReagentBankUnlocked|IsReagentBankUnlocked]]()
: [[API PurchaseSlot|PurchaseSlot]]() - Buys another bank slot if available.
: [[API ReagentBankButtonIDToInvSlotID|ReagentBankButtonIDToInvSlotID]]()

===Guild Bank===
The [[Guild bank]] was added in [[Patch 2.3.0]]
: [[API C_GuildBank.IsGuildBankEnabled|C_GuildBank.IsGuildBankEnabled]]() : <span class="apiret">enabled</span>
: [[API AutoStoreGuildBankItem|AutoStoreGuildBankItem]](<span class="apiarg">tab, slot</span>) - Withdraws an item from the Guild Bank to the character's inventory.
: [[API BuyGuildBankTab|BuyGuildBankTab]]() - Buys a guild bank tab, without confirmation.
: [[API CanEditGuildBankTabInfo|CanEditGuildBankTabInfo]]()
: [[API CanGuildBankRepair|CanGuildBankRepair]]()
: [[API CanWithdrawGuildBankMoney|CanWithdrawGuildBankMoney]]() - Boolean, true if player is permitted to withdraw funds. No bank proximity required.
: [[API CloseGuildBankFrame|CloseGuildBankFrame]]() - Closes the guild bank frame.
: [[API DepositGuildBankMoney|DepositGuildBankMoney]](<span class="apiarg">money</span>) - Deposits "money" amount in copper.
: [[API GetCurrentGuildBankTab|GetCurrentGuildBankTab]]() - Integer of selected tab, >= 1.
: [[API GetGuildBankBonusDepositMoney|GetGuildBankBonusDepositMoney]]()
: [[API GetGuildBankItemInfo|GetGuildBankItemInfo]](<span class="apiarg">tab, slot</span>) : <span class="apiret">texture, itemCount, locked, isFiltered, quality</span> - Returns item info for a guild bank slot.
: [[API GetGuildBankItemLink|GetGuildBankItemLink]](<span class="apiarg">tab, slot</span>) : <span class="apiret">itemLink</span> - Returns the item link for a guild bank slot.
: [[API GetGuildBankMoney|GetGuildBankMoney]]() : <span class="apiret">retVal1</span> - Returns the amount of money in the guild bank.
: [[API GetGuildBankMoneyTransaction|GetGuildBankMoneyTransaction]](<span class="apiarg">index</span>) : <span class="apiret">transactionType, name, amount, years, months, days, hours</span> - Returns info for a money transaction from the guild bank.
: [[API GetGuildBankTabCost|GetGuildBankTabCost]]() - Integer OR nil - cost in copper OR no tabs available to buy.
: [[API GetGuildBankTabInfo|GetGuildBankTabInfo]](<span class="apiarg">tab</span>) : <span class="apiret">name, icon, isViewable, canDeposit, numWithdrawals, remainingWithdrawals, filtered</span> - Returns info for a guild bank tab.
: [[API GetGuildBankTabPermissions|GetGuildBankTabPermissions]](<span class="apiarg">tab</span>) : <span class="apiret">canView, canDeposit, canEdit, stacksPerDay</span> - Gets display / player's access info. Limited data available without bank proximity.
: [[API GetGuildBankText|GetGuildBankText]](<span class="apiarg">tab</span>) - Returns info text for a tab.
: [[API GetGuildBankTransaction|GetGuildBankTransaction]](<span class="apiarg">tab, index</span>) : <span class="apiret">type, name, itemLink, count, tab1, tab2, year, month, day, hour</span> - Returns info for an item transaction from the guild bank.
: [[API GetGuildBankWithdrawGoldLimit|GetGuildBankWithdrawGoldLimit]]() : <span class="apiret">dailyWithdrawLimit</span> - Returns withdraw limit for currently selected rank in guild control.
: [[API GetGuildBankWithdrawMoney|GetGuildBankWithdrawMoney]]() : <span class="apiret">withdrawLimit</span>
: [[API GetNumGuildBankMoneyTransactions|GetNumGuildBankMoneyTransactions]]() - Returns number of money log entries.
: [[API GetNumGuildBankTabs|GetNumGuildBankTabs]]() - Integer count of bought tabs, >= 0. No bank proximity required.
: [[API GetNumGuildBankTransactions|GetNumGuildBankTransactions]](<span class="apiarg">tab</span>) - Returns number of log transactions for tab "tab".
: [[API QueryGuildBankLog|QueryGuildBankLog]](<span class="apiarg">tab</span>) - Updates bank log data from the server, called before all transaction functions. "Money tab" is MAX_GUILDBANK_TABS+1.
: [[API QueryGuildBankTab|QueryGuildBankTab]](<span class="apiarg">tab</span>) - Updates bank tab data from the server, called before all item functions.
: [[API QueryGuildBankText|QueryGuildBankText]]()
: [[API SetCurrentGuildBankTab|SetCurrentGuildBankTab]](<span class="apiarg">tab</span>) - Select different bank tab in the UI.
: [[API SetGuildBankTabInfo|SetGuildBankTabInfo]](<span class="apiarg">tab, name, icon</span>) - Sets the name and icon of a guild bank tab.
: [[API SetGuildBankTabItemWithdraw|SetGuildBankTabItemWithdraw]]()
: [[API SetGuildBankTabPermissions|SetGuildBankTabPermissions]](<span class="apiarg">tab, index, enabled</span>) - Modifies the permissions for a guild bank tab.
: [[API SetGuildBankText|SetGuildBankText]](<span class="apiarg">tab, infoText</span>) - Modifies info text for a tab.
: [[API SetGuildBankWithdrawGoldLimit|SetGuildBankWithdrawGoldLimit]](<span class="apiarg">amount</span>) - Sets the gold withdraw limit for the guild bank.
: [[API SplitGuildBankItem|SplitGuildBankItem]](<span class="apiarg">tab, slot, amount</span>) - Picks up part of a stack.
: [[API WithdrawGuildBankMoney|WithdrawGuildBankMoney]](<span class="apiarg">money</span>) - Withdraws "money" copper from the guild bank.

===Void Storage===
[[Void Storage]] was added in [[Patch 4.3.0]]
: [[API CanUseVoidStorage|CanUseVoidStorage]]() : <span class="apiret">canUse</span> - Returns if the player has access to the Void Storage.
: [[API ClearVoidTransferDepositSlot|ClearVoidTransferDepositSlot]](<span class="apiarg">slotIndex</span>) - Clears the specified Void Transfer deposit slot.
: [[API ClickVoidStorageSlot|ClickVoidStorageSlot]](<span class="apiarg">slotIndex [, isRightClick]</span>) - Clicks the specified Void Storage slot.
: [[API ClickVoidTransferDepositSlot|ClickVoidTransferDepositSlot]](<span class="apiarg">slotIndex, isRightClick</span>) - Clicks the specified Void Transfer deposit slot.
: [[API ClickVoidTransferWithdrawalSlot|ClickVoidTransferWithdrawalSlot]](<span class="apiarg">slotIndex, isRightClick</span>) - Clicks the specified Void Transfer withdrawal slot.
: [[API ExecuteVoidTransfer|ExecuteVoidTransfer]]() - Applies all pending void transfers (and pays for the cost of any deposited items).
: [[API GetNumVoidTransferDeposit|GetNumVoidTransferDeposit]]() : <span class="apiret">numDeposits</span> - Returns the number of items being deposited into the Void Storage.
: [[API GetNumVoidTransferWithdrawal|GetNumVoidTransferWithdrawal]]() : <span class="apiret">numWithdrawals</span> - Returns the number of items being withdrawed from the Void Storage.
: [[API GetVoidItemHyperlinkString|GetVoidItemHyperlinkString]](<span class="apiarg">voidSlot</span>) : <span class="apiret">itemLink</span> - Returns the item link of an item in void storage.
: [[API GetVoidItemInfo|GetVoidItemInfo]](<span class="apiarg">tabIndex, slotIndex</span>) : <span class="apiret">itemID, textureName, locked, recentDeposit, isFiltered, quality</span> - Returns info for a Void Storage slot.
: [[API GetVoidTransferCost|GetVoidTransferCost]]() : <span class="apiret">cost</span> - Returns the total Void Transfer cost.
: [[API GetVoidTransferDepositInfo|GetVoidTransferDepositInfo]](<span class="apiarg">slotIndex</span>) : <span class="apiret">itemID, textureName</span> - Returns info for the item being deposited into the Void Storage.
: [[API GetVoidTransferWithdrawalInfo|GetVoidTransferWithdrawalInfo]](<span class="apiarg">slotIndex</span>) : <span class="apiret">itemID, textureName</span> - Returns info for the item being withdrawn from the Void Storage.
: [[API IsVoidStorageReady|IsVoidStorageReady]]()
: [[API UnlockVoidStorage|UnlockVoidStorage]]() - Purchases the Void Storage.
: [[API GetVoidStorageSlotPageIndex|GetVoidStorageSlotPageIndex]](<span class="apiarg">slot</span>)
: [[API GetVoidUnlockCost|GetVoidUnlockCost]]()

==Books==
Relates to item text from books, etc.
: [[API CloseItemText|CloseItemText]]() - Close an open item text (book, plaque, etc).
: [[API ItemTextGetCreator|ItemTextGetCreator]]() : <span class="apiret">creatorName</span> - Returns the name of the character who created the item text.
: [[API ItemTextGetItem|ItemTextGetItem]]() : <span class="apiret">textName</span> - Returns the item name that the item text belongs to.
: [[API ItemTextGetMaterial|ItemTextGetMaterial]]() : <span class="apiret">materialName</span> - Returns the material texture for the item text.
: [[API ItemTextGetPage|ItemTextGetPage]]() : <span class="apiret">pageNum</span> - Returns the page number of the currently displayed page.
: [[API ItemTextGetText|ItemTextGetText]]() : <span class="apiret">pageBody</span> - Returns the contents of the currently displayed page.
: [[API ItemTextHasNextPage|ItemTextHasNextPage]]() : <span class="apiret">hasNext</span> - Returns true if there is a page after the current page.
: [[API ItemTextIsFullPage|ItemTextIsFullPage]]()
: [[API ItemTextNextPage|ItemTextNextPage]]() - Moves to the next page of the item text.
: [[API ItemTextPrevPage|ItemTextPrevPage]]() - Moves to the previous page of the item text.

==Chat==
These are specific to chat messages and channels.
: [[API C_ChatInfo.CanPlayerSpeakLanguage|C_ChatInfo.CanPlayerSpeakLanguage]](<span class="apiarg">languageId</span>) : <span class="apiret">canSpeakLanguage</span>
: [[API C_ChatInfo.GetChannelInfoFromIdentifier|C_ChatInfo.GetChannelInfoFromIdentifier]](<span class="apiarg">channelIdentifier</span>) : <span class="apiret">info</span>
: [[API C_ChatInfo.GetChannelRosterInfo|C_ChatInfo.GetChannelRosterInfo]](<span class="apiarg">channelIndex, rosterIndex</span>) : <span class="apiret">name, owner, moderator, guid</span>
: [[API C_ChatInfo.GetChannelRuleset|C_ChatInfo.GetChannelRuleset]](<span class="apiarg">channelIndex</span>) : <span class="apiret">ruleset</span>
: [[API C_ChatInfo.GetChannelRulesetForChannelID|C_ChatInfo.GetChannelRulesetForChannelID]](<span class="apiarg">channelID</span>) : <span class="apiret">ruleset</span>
: [[API C_ChatInfo.GetChannelShortcut|C_ChatInfo.GetChannelShortcut]](<span class="apiarg">channelIndex</span>) : <span class="apiret">shortcut</span>
: [[API C_ChatInfo.GetChannelShortcutForChannelID|C_ChatInfo.GetChannelShortcutForChannelID]](<span class="apiarg">channelID</span>) : <span class="apiret">shortcut</span>
: [[API C_ChatInfo.GetChatLineSenderGUID|C_ChatInfo.GetChatLineSenderGUID]](<span class="apiarg">chatLine</span>) : <span class="apiret">guid</span>
: [[API C_ChatInfo.GetChatLineSenderName|C_ChatInfo.GetChatLineSenderName]](<span class="apiarg">chatLine</span>) : <span class="apiret">name</span>
: [[API C_ChatInfo.GetChatLineText|C_ChatInfo.GetChatLineText]](<span class="apiarg">chatLine</span>) : <span class="apiret">text</span>
: [[API C_ChatInfo.GetChatTypeName|C_ChatInfo.GetChatTypeName]](<span class="apiarg">typeID</span>) : <span class="apiret">name</span>
: [[API C_ChatInfo.GetClubStreamIDs|C_ChatInfo.GetClubStreamIDs]](<span class="apiarg">clubID</span>) : <span class="apiret">ids</span>
: [[API C_ChatInfo.GetColorForChatType|C_ChatInfo.GetColorForChatType]](<span class="apiarg">chatType</span>) : <span class="apiret">color</span>
: [[API C_ChatInfo.GetGeneralChannelID|C_ChatInfo.GetGeneralChannelID]]() : <span class="apiret">channelID</span>
: [[API C_ChatInfo.GetGeneralChannelLocalID|C_ChatInfo.GetGeneralChannelLocalID]]() : <span class="apiret">localID</span>
: [[API C_ChatInfo.GetMentorChannelID|C_ChatInfo.GetMentorChannelID]]() : <span class="apiret">channelID</span>
: [[API C_ChatInfo.GetNumActiveChannels|C_ChatInfo.GetNumActiveChannels]]() : <span class="apiret">numChannels</span>
: [[API C_ChatInfo.GetNumReservedChatWindows|C_ChatInfo.GetNumReservedChatWindows]]() : <span class="apiret">numReserved</span>
: [[API C_ChatInfo.IsChannelRegional|C_ChatInfo.IsChannelRegional]](<span class="apiarg">channelIndex</span>) : <span class="apiret">isRegional</span>
: [[API C_ChatInfo.IsChannelRegionalForChannelID|C_ChatInfo.IsChannelRegionalForChannelID]](<span class="apiarg">channelID</span>) : <span class="apiret">isRegional</span>
: [[API C_ChatInfo.IsChatLineCensored|C_ChatInfo.IsChatLineCensored]](<span class="apiarg">chatLine</span>) : <span class="apiret">isCensored</span>
: [[API C_ChatInfo.IsPartyChannelType|C_ChatInfo.IsPartyChannelType]](<span class="apiarg">channelType</span>) : <span class="apiret">isPartyChannelType</span>
: [[API C_ChatInfo.IsRegionalServiceAvailable|C_ChatInfo.IsRegionalServiceAvailable]]() : <span class="apiret">available</span>
: [[API C_ChatInfo.IsTimerunningPlayer|C_ChatInfo.IsTimerunningPlayer]](<span class="apiarg">playerGUID</span>) : <span class="apiret">isTimerunning</span>
: [[API C_ChatInfo.IsValidChatLine|C_ChatInfo.IsValidChatLine]](<span class="apiarg">[chatLine]</span>) : <span class="apiret">isValid</span>
: [[API C_ChatInfo.IsValidCombatFilterName|C_ChatInfo.IsValidCombatFilterName]](<span class="apiarg">name</span>) : <span class="apiret">isApproved</span>
: [[API C_ChatInfo.ReplaceIconAndGroupExpressions|C_ChatInfo.ReplaceIconAndGroupExpressions]](<span class="apiarg">input [, noIconReplacement [, noGroupReplacement]]</span>) : <span class="apiret">output</span> - Replaces icon and group tags like {rt4}, {diamond} and {g1}.
: [[API C_ChatInfo.RequestCanLocalWhisperTarget|C_ChatInfo.RequestCanLocalWhisperTarget]](<span class="apiarg">whisperTarget</span>)
: [[API C_ChatInfo.ResetDefaultZoneChannels|C_ChatInfo.ResetDefaultZoneChannels]]()
: [[API C_ChatInfo.SwapChatChannelsByChannelIndex|C_ChatInfo.SwapChatChannelsByChannelIndex]](<span class="apiarg">firstChannelIndex, secondChannelIndex</span>)
: [[API C_ChatInfo.UncensorChatLine|C_ChatInfo.UncensorChatLine]](<span class="apiarg">chatLine</span>)
: [[API C_ChatBubbles.GetAllChatBubbles|C_ChatBubbles.GetAllChatBubbles]](<span class="apiarg">[includeForbidden]</span>) : <span class="apiret">chatBubbles</span> - Returns all active chat bubbles.
: [[API CancelEmote|CancelEmote]]() - Stops an active emote, e.g. when closing the map.
: [[API ChannelBan|ChannelBan]](<span class="apiarg">channelName, playerName</span>) - Bans a player from the specified channel.
: [[API ChannelInvite|ChannelInvite]](<span class="apiarg">channelName, playerName</span>) - Invites the specified user to the channel.
: [[API ChannelKick|ChannelKick]](<span class="apiarg">channelName, playerName</span>) - Kicks a player from the specified channel.
: [[API ChannelModerator|ChannelModerator]](<span class="apiarg">channelName, playerName</span>) - Sets the specified player as the channel moderator.
: [[API ChannelSetAllSilent|ChannelSetAllSilent]](<span class="apiarg">[channelNumber | channelName], memberName, silenceOn</span>)
: [[API ChannelSetPartyMemberSilent|ChannelSetPartyMemberSilent]](<span class="apiarg">partyMemberName, silenceOn</span>)
: [[API ChannelToggleAnnouncements|ChannelToggleAnnouncements]](<span class="apiarg">channelName, playerName</span>) - Toggles the channel to display announcements either on or off.
: [[API ChannelUnban|ChannelUnban]](<span class="apiarg">channelName, playerName</span>) - Unbans a player from the specified channel.
: [[API ChannelUnmoderator|ChannelUnmoderator]](<span class="apiarg">channelName, playerName</span>) - Takes the specified user away from the moderator status.
: [[API DeclineChannelInvite|DeclineChannelInvite]](<span class="apiarg">channel</span>)
: [[API DisplayChannelOwner|DisplayChannelOwner]](<span class="apiarg">channelName</span>) - Prints the name of the owner of the specified channel.
: [[API DoEmote|DoEmote]](<span class="apiarg">token [, unit [, hold]]</span>) : <span class="apiret">restricted</span> - Performs an emote.
: [[API EnumerateServerChannels|EnumerateServerChannels]]() : <span class="apiret">...</span> - Returns all available server channels (zone dependent).
: [[API GetAlternativeDefaultLanguage|GetAlternativeDefaultLanguage]]()
: [[API GetChannelDisplayInfo|GetChannelDisplayInfo]](<span class="apiarg">index</span>) : <span class="apiret">name, header, collapsed, channelNumber, count, active, category, channelType</span> - Returns info for chat channels and headers in the Chat Pane.
: [[API GetChannelList|GetChannelList]]() : <span class="apiret">id, name, disabled</span> - Returns the list of joined chat channels.
: [[API GetChannelName|GetChannelName]](<span class="apiarg">name</span>) : <span class="apiret">id, name, instanceID, isCommunitiesChannel</span> - Returns info for a chat channel.
: [[API GetDefaultLanguage|GetDefaultLanguage]]() : <span class="apiret">language, languageID</span> - Returns the character's default language.
: [[API GetLanguageByIndex|GetLanguageByIndex]](<span class="apiarg">index</span>) : <span class="apiret">language, languageID</span> - Returns the languages that the character can speak by index.
: [[API GetNumChannelMembers|GetNumChannelMembers]]()
: [[API GetNumDisplayChannels|GetNumDisplayChannels]]() : <span class="apiret">channelCount</span>
: [[API GetNumGroupChannels|GetNumGroupChannels]]()
: [[API GetNumLanguages|GetNumLanguages]]() : <span class="apiret">numLanguages</span> - Returns the number of languages your character can speak.
: [[API GetSelectedDisplayChannel|GetSelectedDisplayChannel]]()
: [[API IsChatChannelRaid|IsChatChannelRaid]]()
: [[API IsDisplayChannelModerator|IsDisplayChannelModerator]]()
: [[API IsDisplayChannelOwner|IsDisplayChannelOwner]]()
: [[API JoinChannelByName|JoinChannelByName]](<span class="apiarg">channelName [, password [, frameID, hasVoice]]</span>) : <span class="apiret">type, name</span> - Joins the specified chat channel.
: [[API JoinPermanentChannel|JoinPermanentChannel]](<span class="apiarg">channelName [, password [, frameID [, hasVoice]]]</span>) : <span class="apiret">type, name</span> - Joins the specified chat channel; the channel will be rejoined after relogging.
: [[API JoinTemporaryChannel|JoinTemporaryChannel]](<span class="apiarg">channelName [, password [, frameID [, hasVoice]]]</span>) : <span class="apiret">type, name</span> - Joins the specified chat channel; the channel will be left on logout.
: [[API LeaveChannelByLocalID|LeaveChannelByLocalID]](<span class="apiarg">localID</span>)
: [[API LeaveChannelByName|LeaveChannelByName]](<span class="apiarg">channelName</span>) - Leaves the channel with the specified name.
: [[API ListChannelByName|ListChannelByName]](<span class="apiarg">channel</span>) - Prints the list of members in the specified channel.
: [[API ListChannels|ListChannels]]() - Prints the list of currently joined chat channel.
: [[API LoggingChat|LoggingChat]](<span class="apiarg">[newState]</span>) : <span class="apiret">isLogging</span> - Gets or sets whether logging chat to Logs\WoWChatLog.txt is enabled.
: [[API LoggingCombat|LoggingCombat]](<span class="apiarg">[newState]</span>) : <span class="apiret">isLogging</span> - Gets or sets whether logging combat to Logs\WoWCombatLog.txt is enabled.
: [[API SendChatMessage|SendChatMessage]](<span class="apiarg">msg [, chatType [, languageID [, target]]]</span>) - Sends a chat message.
: [[API SetChannelOwner|SetChannelOwner]](<span class="apiarg">channel, newowner</span>) - Sets the channel owner.
: [[API SetChannelPassword|SetChannelPassword]](<span class="apiarg">channelName, password</span>) - Changes the password of the current channel.
: [[API SetSelectedDisplayChannel|SetSelectedDisplayChannel]](<span class="apiarg">channelID</span>)

===Chat Window===
These are specific to chat ''window'' management.
: [[API AddChatWindowChannel|AddChatWindowChannel]](<span class="apiarg">windowId, channelName</span>) - Enables messages from a chat channel index for a chat window.
: [[API AddChatWindowMessages|AddChatWindowMessages]](<span class="apiarg">index, messageGroup</span>) - Enables messages from the chat message type (e.g. "SAY") for a chat window.
: [[API ChangeChatColor|ChangeChatColor]](<span class="apiarg">channelName, red, green, blue</span>) - Updates the color for a type of chat message.
: [[API GetChatTypeIndex|GetChatTypeIndex]](<span class="apiarg">messageGroup</span>) : <span class="apiret">index</span> - Returns the index for a chat type.
: [[API GetChatWindowChannels|GetChatWindowChannels]](<span class="apiarg">frameId</span>) : <span class="apiret">channelName1, channelId1, ...</span> - Returns subscribed channels for a chat window.
: [[API GetChatWindowInfo|GetChatWindowInfo]](<span class="apiarg">frameIndex</span>) : <span class="apiret">name, fontSize, r, g, b, alpha, shown, locked, docked, uninteractable</span> - Returns info for a chat window.
: [[API GetChatWindowMessages|GetChatWindowMessages]](<span class="apiarg">index</span>) : <span class="apiret">...</span> - Returns subscribed message types for a chat window.
: [[API GetChatWindowSavedDimensions|GetChatWindowSavedDimensions]](<span class="apiarg">index</span>)
: [[API GetChatWindowSavedPosition|GetChatWindowSavedPosition]](<span class="apiarg">index</span>)
: [[API RedockChatWindows|RedockChatWindows]]()
: [[API RemoveChatWindowChannel|RemoveChatWindowChannel]](<span class="apiarg">windowId, channelName</span>) - Removes the specified chat channel from a chat window.
: [[API RemoveChatWindowMessages|RemoveChatWindowMessages]](<span class="apiarg">index, messageGroup</span>) - Removes the specified chat message type from a chat window.
: [[API ResetChatColors|ResetChatColors]]()
: [[API ResetChatWindows|ResetChatWindows]]()
: [[API SetChatColorNameByClass|SetChatColorNameByClass]](<span class="apiarg">chatType, colorNameByClass</span>)
: [[API SetChatWindowAlpha|SetChatWindowAlpha]](<span class="apiarg">index, alpha</span>) - Sets the Alpha value(transparency) of ChatFrame<index> (alpha - 0-100)
: [[API SetChatWindowColor|SetChatWindowColor]](<span class="apiarg">index, r, g, b</span>) - Sets the background color of a a chat window. (r/g/b - 0-255)
: [[API SetChatWindowDocked|SetChatWindowDocked]](<span class="apiarg">index, docked</span>) - Set whether a chat window is docked. (docked - 0/1)
: [[API SetChatWindowLocked|SetChatWindowLocked]](<span class="apiarg">index, locked</span>) - Sets ChatFrame<index> so that it is or is not movable. (locked - 0/1)
: [[API SetChatWindowName|SetChatWindowName]](<span class="apiarg">index, name</span>) - Sets the alpha value of ChatFrame.
: [[API SetChatWindowSavedDimensions|SetChatWindowSavedDimensions]](<span class="apiarg">index, width, height</span>)
: [[API SetChatWindowSavedPosition|SetChatWindowSavedPosition]](<span class="apiarg">index, point, xOffsetRatio, yOffsetRatio</span>)
: [[API SetChatWindowShown|SetChatWindowShown]](<span class="apiarg">index, shown</span>) - Shows or Hides ChatFrame<index> depending on value of <shown> (shown - 0/1)
: [[API SetChatWindowSize|SetChatWindowSize]](<span class="apiarg">index, size</span>) - Sets the font size of a chat window. (size - default 14)
: [[API SetChatWindowUninteractable|SetChatWindowUninteractable]](<span class="apiarg">id, isUninteractable</span>)
: [[API ChatFrame_AddChannel|ChatFrame_AddChannel]](<span class="apiarg">chatFrame, channelName</span>) {{apitag|framexml}} - Activate channel in chatFrame.
: [[API ChatFrame_AddMessageEventFilter|ChatFrame_AddMessageEventFilter]](<span class="apiarg">event, filterFunc</span>) {{apitag|framexml}} - Add a chat message filtering function.
: [[API ChatFrame_GetMessageEventFilters|ChatFrame_GetMessageEventFilters]](<span class="apiarg">event</span>) {{apitag|framexml}} - Retreive the list of chat message filtering functions.
: [[API ChatFrame_OnHyperlinkShow|ChatFrame_OnHyperlinkShow]](<span class="apiarg">reference, link, button</span>) {{apitag|framexml}} - Called when the user clicks on a chatlink.
: [[API ChatFrame_RemoveMessageEventFilter|ChatFrame_RemoveMessageEventFilter]](<span class="apiarg">event, filterFunc</span>) {{apitag|framexml}} - Unregister a chat message filtering function.

===AddOn Messages===
: [[API C_ChatInfo.GetRegisteredAddonMessagePrefixes|C_ChatInfo.GetRegisteredAddonMessagePrefixes]]() : <span class="apiret">registeredPrefixes</span> - Returns addon message prefixes the client is currently registered to receive.
: [[API C_ChatInfo.IsAddonMessagePrefixRegistered|C_ChatInfo.IsAddonMessagePrefixRegistered]](<span class="apiarg">prefix</span>) : <span class="apiret">isRegistered</span> - Returns whether the prefix is registered.
: [[API C_ChatInfo.RegisterAddonMessagePrefix|C_ChatInfo.RegisterAddonMessagePrefix]](<span class="apiarg">prefix</span>) : <span class="apiret">result</span> - Registers an addon message prefix to receive messages for that prefix.
: [[API C_ChatInfo.SendAddonMessage|C_ChatInfo.SendAddonMessage]](<span class="apiarg">prefix, message [, chatType [, target]]</span>) : <span class="apiret">result</span> - Sends a message over an addon comm channel.
: [[API C_ChatInfo.SendAddonMessageLogged|C_ChatInfo.SendAddonMessageLogged]](<span class="apiarg">prefix, message [, chatType [, target]]</span>) : <span class="apiret">result</span> - Sends a message to the hidden addon channel, the messages are logged server side.

==Character==
: [[API Dismount|Dismount]]() - Dismounts the character.
: [[API GetBindLocation|GetBindLocation]]() : <span class="apiret">result</span> - Returns the subzone the character's Hearthstone is set to.
: [[API GetComboPoints|GetComboPoints]](<span class="apiarg">unit, target</span>) : <span class="apiret">result</span> - Returns the amount of current combo points.
: [[API GetCurrentLevelFeatures|GetCurrentLevelFeatures]](<span class="apiarg">level</span>) - For Level Up Display
: [[API GetCurrentTitle|GetCurrentTitle]]() : <span class="apiret">result</span> - Returns the current [[title]].
: [[API GetMirrorTimerInfo|GetMirrorTimerInfo]](<span class="apiarg">timerIndex</span>) : <span class="apiret">name, startValue, maxValue, scale, paused, label, spellID</span> - Returns info for the mirror timer, e.g. fatigue, breath and feign death.
: [[API GetMirrorTimerProgress|GetMirrorTimerProgress]](<span class="apiarg">timerName</span>) : <span class="apiret">progress</span> - Returns the current value of the mirror timer.
: [[API GetMoney|GetMoney]]() : <span class="apiret">result</span> - Returns the amount of money the player character owns.
: [[API GetNumTitles|GetNumTitles]]() : <span class="apiret">result</span> - Returns the number of titles, specifically the highest title ID.
: [[API GetRestState|GetRestState]]() : <span class="apiret">exhaustionID, name, factor</span> - Returns if the character is in a [[Rest|rested]] or normal state.
: [[API GetRuneCooldown|GetRuneCooldown]](<span class="apiarg">runeIndex</span>) : <span class="apiret">startTime, duration, isRuneReady</span> - Returns the Death Knight's cooldown info for the specified rune.
: [[API GetRuneCount|GetRuneCount]](<span class="apiarg">runeIndex</span>) : <span class="apiret">result</span> - Returns the Death Knight's number of runes for a slot.
: [[API GetSheathState|GetSheathState]]() : <span class="apiret">result</span> - Returns which type of weapon the player currently has unsheathed.
: [[API GetSpellsForCharacterUpgradeTier|GetSpellsForCharacterUpgradeTier]](<span class="apiarg">tierIndex</span>) - For Level Up Display
: [[API GetTitleName|GetTitleName]](<span class="apiarg">titleMaskID</span>) : <span class="apiret">titleString, playerTitle</span> - Returns the name of a player title.
: [[API GetXPExhaustion|GetXPExhaustion]]() : <span class="apiret">result</span> - Returns the amount of current rested XP for the character.
: [[API HasFullControl|HasFullControl]]() : <span class="apiret">result</span>
: [[API IsAdvancedFlyableArea|IsAdvancedFlyableArea]]() : <span class="apiret">result</span>
: [[API IsChatAFK|IsChatAFK]]()
: [[API IsChatDND|IsChatDND]]()
: [[API IsEncounterInProgress|IsEncounterInProgress]]()
: [[API IsFalling|IsFalling]](<span class="apiarg">[unit]</span>) : <span class="apiret">result</span> - Returns true if the character is currently falling.
: [[API IsFlyableArea|IsFlyableArea]]() : <span class="apiret">result</span> - Returns true if the current zone is a flyable area.
: [[API IsFlying|IsFlying]](<span class="apiarg">[unit]</span>) : <span class="apiret">result</span> - Returns true if the character is currently on a flying mount.
: [[API IsIndoors|IsIndoors]]() : <span class="apiret">result</span> - Returns true if the character is currently indoors.
: [[API IsInsane|IsInsane]]() : <span class="apiret">result</span> - Used for the Insanity bar
: [[API IsItemPreferredArmorType|IsItemPreferredArmorType]](<span class="apiarg">itemLocation</span>) : <span class="apiret">isItemPreferredArmorType</span>
: [[API IsMounted|IsMounted]]() : <span class="apiret">result</span> - Returns true if the character is currently mounted.
: [[API IsOutdoors|IsOutdoors]]() : <span class="apiret">result</span> - Returns true if the character is currently outdoors.
: [[API IsOutOfBounds|IsOutOfBounds]]() : <span class="apiret">result</span> - Returns true if the player is currently outside of map boundaries.
: [[API IsPlayerInWorld|IsPlayerInWorld]]() : <span class="apiret">result</span>
: [[API IsPlayerNeutral|IsPlayerNeutral]]() : <span class="apiret">isNeutral</span>
: [[API IsResting|IsResting]]() : <span class="apiret">result</span> - Returns true if the character is currently resting.
: [[API IsStealthed|IsStealthed]]() : <span class="apiret">result</span> - Returns true if the character is currently stealthed.
: [[API IsSubmerged|IsSubmerged]](<span class="apiarg">[unit]</span>) : <span class="apiret">result</span>
: [[API IsSwimming|IsSwimming]](<span class="apiarg">[unit]</span>) : <span class="apiret">result</span> - Returns true if the character is currently swimming.
: [[API IsThreatWarningEnabled|IsThreatWarningEnabled]]() : <span class="apiret">result</span> - Returns true if threat warnings are currently enabled.
: [[API IsTitleKnown|IsTitleKnown]](<span class="apiarg">titleMaskID</span>) : <span class="apiret">result</span> - Returns true if the character can use a player title.
: [[API IsXPUserDisabled|IsXPUserDisabled]]() : <span class="apiret">result</span> - Returns 1 if the character has disabled experience gain.
: [[API RandomRoll|RandomRoll]](<span class="apiarg">min, max</span>) - Performs a random roll between two values.
: [[API SetCurrentTitle|SetCurrentTitle]](<span class="apiarg">titleMaskID</span>) {{apitag|hwevent}} - Sets the player's displayed title.
: [[API ToggleSheath|ToggleSheath]]() - Toggles sheathed or unsheathed weapons.

===Paper Doll===
Relates to the [[Paper doll]] (also known as Character sheet).
: [[API C_PaperDollInfo.CanAutoEquipCursorItem|C_PaperDollInfo.CanAutoEquipCursorItem]]() : <span class="apiret">canAutoEquip</span>
: [[API C_PaperDollInfo.CanCursorCanGoInSlot|C_PaperDollInfo.CanCursorCanGoInSlot]](<span class="apiarg">slotIndex</span>) : <span class="apiret">canOccupySlot</span>
: [[API C_PaperDollInfo.GetArmorEffectiveness|C_PaperDollInfo.GetArmorEffectiveness]](<span class="apiarg">armor, attackerLevel</span>) : <span class="apiret">effectiveness</span>
: [[API C_PaperDollInfo.GetArmorEffectivenessAgainstTarget|C_PaperDollInfo.GetArmorEffectivenessAgainstTarget]](<span class="apiarg">armor</span>) : <span class="apiret">effectiveness</span>
: [[API C_PaperDollInfo.GetInspectGuildInfo|C_PaperDollInfo.GetInspectGuildInfo]](<span class="apiarg">unitString</span>) : <span class="apiret">achievementPoints, numMembers, guildName, realmName</span>
: [[API C_PaperDollInfo.GetInspectItemLevel|C_PaperDollInfo.GetInspectItemLevel]](<span class="apiarg">unit</span>) : <span class="apiret">equippedItemLevel</span> - Returns the average item level for the unit being inspected.
: [[API C_PaperDollInfo.GetInspectRatedBGBlitzData|C_PaperDollInfo.GetInspectRatedBGBlitzData]]() : <span class="apiret">ratedBGBlitzData</span>
: [[API C_PaperDollInfo.GetInspectRatedSoloShuffleData|C_PaperDollInfo.GetInspectRatedSoloShuffleData]]() : <span class="apiret">ratedSoloShuffleData</span>
: [[API C_PaperDollInfo.GetMinItemLevel|C_PaperDollInfo.GetMinItemLevel]]() : <span class="apiret">minItemLevel</span>
: [[API C_PaperDollInfo.GetStaggerPercentage|C_PaperDollInfo.GetStaggerPercentage]](<span class="apiarg">unit</span>) : <span class="apiret">stagger, staggerAgainstTarget</span>
: [[API C_PaperDollInfo.OffhandHasShield|C_PaperDollInfo.OffhandHasShield]]() : <span class="apiret">offhandHasShield</span>
: [[API C_PaperDollInfo.OffhandHasWeapon|C_PaperDollInfo.OffhandHasWeapon]]() : <span class="apiret">offhandHasWeapon</span>
: [[API CanDualWield|CanDualWield]]() : <span class="apiret">result</span>
: [[API GetAttackPowerForStat|GetAttackPowerForStat]](<span class="apiarg">stat, value</span>) : <span class="apiret">result</span> - Returns the amount of attack power contributed by a specific amount of a stat.
: [[API GetAvoidance|GetAvoidance]]() : <span class="apiret">result</span>
: [[API GetBlockChance|GetBlockChance]]() : <span class="apiret">result</span> - Returns the block chance percentage.
: [[API GetCombatRating|GetCombatRating]](<span class="apiarg">ratingIndex</span>) : <span class="apiret">result</span> - Returns a specific combat rating.
: [[API GetCombatRatingBonus|GetCombatRatingBonus]](<span class="apiarg">ratingIndex</span>) : <span class="apiret">result</span> - Returns the bonus percentage for a specific combat rating.
: [[API GetCombatRatingBonusForCombatRatingValue|GetCombatRatingBonusForCombatRatingValue]](<span class="apiarg">ratingIndex, value</span>) : <span class="apiret">result</span>
: [[API GetCritChance|GetCritChance]]() : <span class="apiret">result</span> - Returns the melee critical hit chance percentage.
: [[API GetCritChanceProvidesParryEffect|GetCritChanceProvidesParryEffect]]() : <span class="apiret">result</span>
: [[API GetDodgeChance|GetDodgeChance]]() : <span class="apiret">result</span> - Returns the dodge chance percentage.
: [[API GetDodgeChanceFromAttribute|GetDodgeChanceFromAttribute]]() : <span class="apiret">result</span>
: [[API GetExpertise|GetExpertise]]() : <span class="apiret">mainhandExpertise, offhandExpertise, rangedExpertise</span> - Returns the player's expertise percentage for main hand, offhand and ranged attacks.
: [[API GetHaste|GetHaste]]() : <span class="apiret">result</span> - Returns the player's haste percentage.
: [[API GetHitModifier|GetHitModifier]]() : <span class="apiret">result</span>
: [[API GetLifesteal|GetLifesteal]]() : <span class="apiret">result</span>
: [[API GetManaRegen|GetManaRegen]]() : <span class="apiret">baseManaRegen, castingManaRegen</span> - Returns the mana regeneration per second.
: [[API GetMastery|GetMastery]]() : <span class="apiret">result</span> - Returns the base mastery percentage.
: [[API GetMasteryEffect|GetMasteryEffect]]() : <span class="apiret">masteryEffect, bonusCoefficient</span> - Returns the effective mastery percentage.
: [[API GetMaxCombatRatingBonus|GetMaxCombatRatingBonus]](<span class="apiarg">ratingIndex</span>) : <span class="apiret">result</span>
: [[API GetMeleeHaste|GetMeleeHaste]]() : <span class="apiret">result</span> - Returns the player's melee haste percentage.
: [[API GetModResilienceDamageReduction|GetModResilienceDamageReduction]]() : <span class="apiret">result</span>
: [[API GetOverrideAPBySpellPower|GetOverrideAPBySpellPower]]() : <span class="apiret">result</span>
: [[API GetOverrideSpellPowerByAP|GetOverrideSpellPowerByAP]]() : <span class="apiret">result</span>
: [[API GetParryChance|GetParryChance]]() : <span class="apiret">result</span> - Returns the parry chance percentage.
: [[API GetParryChanceFromAttribute|GetParryChanceFromAttribute]]() : <span class="apiret">result</span>
: [[API GetPetMeleeHaste|GetPetMeleeHaste]]() : <span class="apiret">result</span>
: [[API GetPetSpellBonusDamage|GetPetSpellBonusDamage]]() : <span class="apiret">result</span>
: [[API GetPowerRegen|GetPowerRegen]]() : <span class="apiret">basePowerRegen, castingPowerRegen</span> - Returns normal and combat power regeneration rates.
: [[API GetPowerRegenForPowerType|GetPowerRegenForPowerType]](<span class="apiarg">powerType</span>) : <span class="apiret">basePowerRegen, castingPowerRegen</span>
: [[API GetPVPGearStatRules|GetPVPGearStatRules]]() : <span class="apiret">result</span>
: [[API GetPvpPowerDamage|GetPvpPowerDamage]]() : <span class="apiret">result</span>
: [[API GetPvpPowerHealing|GetPvpPowerHealing]]() : <span class="apiret">result</span>
: [[API GetRangedCritChance|GetRangedCritChance]]() : <span class="apiret">result</span> - Returns the ranged critical hit chance.
: [[API GetRangedHaste|GetRangedHaste]]() : <span class="apiret">result</span>
: [[API GetShieldBlock|GetShieldBlock]]() : <span class="apiret">result</span>
: [[API GetSpeed|GetSpeed]]() : <span class="apiret">result</span>
: [[API GetSpellBonusDamage|GetSpellBonusDamage]](<span class="apiarg">school</span>) : <span class="apiret">result</span> - Returns the raw spell damage bonus for the specified spell tree.
: [[API GetSpellBonusHealing|GetSpellBonusHealing]]() : <span class="apiret">result</span> - Returns the raw spell healing bonus.
: [[API GetSpellCritChance|GetSpellCritChance]]() : <span class="apiret">result</span> - Returns the critical hit chance for the specified spell school.
: [[API GetSpellHitModifier|GetSpellHitModifier]]() : <span class="apiret">result</span>
: [[API GetSpellPenetration|GetSpellPenetration]]() : <span class="apiret">result</span>
: [[API GetSturdiness|GetSturdiness]]() : <span class="apiret">result</span>
: [[API GetUnitHealthModifier|GetUnitHealthModifier]](<span class="apiarg">unit</span>) : <span class="apiret">result</span>
: [[API GetUnitMaxHealthModifier|GetUnitMaxHealthModifier]](<span class="apiarg">unit</span>) : <span class="apiret">result</span>
: [[API GetUnitPowerModifier|GetUnitPowerModifier]](<span class="apiarg">unit</span>) : <span class="apiret">result</span>
: [[API GetVersatilityBonus|GetVersatilityBonus]](<span class="apiarg">combatRating</span>) : <span class="apiret">result</span>
: [[API HasAPEffectsSpellPower|HasAPEffectsSpellPower]]() : <span class="apiret">result</span>
: [[API HasDualWieldPenalty|HasDualWieldPenalty]]() : <span class="apiret">result</span>
: [[API HasIgnoreDualWieldWeapon|HasIgnoreDualWieldWeapon]]() : <span class="apiret">result</span>
: [[API HasSPEffectsAttackPower|HasSPEffectsAttackPower]]() : <span class="apiret">result</span>
: [[API IsDualWielding|IsDualWielding]]() : <span class="apiret">result</span>
: [[API IsRangedWeapon|IsRangedWeapon]]() : <span class="apiret">result</span>
: [[API PlayerEffectiveAttackPower|PlayerEffectiveAttackPower]]() : <span class="apiret">mainHandAttackPower, offHandAttackPower, rangedAttackPower</span>
: [[API ResistancePercent|ResistancePercent]](<span class="apiarg">resistance, casterLevel</span>) : <span class="apiret">result</span>

===Equipment Manager===
The [[Equipment Manager]] was added in [[Patch 3.1.2]]
: [[API C_EquipmentSet.AssignSpecToEquipmentSet|C_EquipmentSet.AssignSpecToEquipmentSet]](<span class="apiarg">equipmentSetID, specIndex</span>) - Assigns an equipment set to a specialization.
: [[API C_EquipmentSet.CanUseEquipmentSets|C_EquipmentSet.CanUseEquipmentSets]]() : <span class="apiret">canUseEquipmentSets</span> - Returns whether any equipment sets can be used.
: [[API C_EquipmentSet.ClearIgnoredSlotsForSave|C_EquipmentSet.ClearIgnoredSlotsForSave]]() - Clears ignored slots for saving.
: [[API C_EquipmentSet.CreateEquipmentSet|C_EquipmentSet.CreateEquipmentSet]](<span class="apiarg">equipmentSetName [, icon]</span>) - Creates an equipment set.
: [[API C_EquipmentSet.DeleteEquipmentSet|C_EquipmentSet.DeleteEquipmentSet]](<span class="apiarg">equipmentSetID</span>) - Deletes an equipment set.
: [[API C_EquipmentSet.EquipmentSetContainsLockedItems|C_EquipmentSet.EquipmentSetContainsLockedItems]](<span class="apiarg">equipmentSetID</span>) : <span class="apiret">hasLockedItems</span> - Returns whether an equipment set has locked items
: [[API C_EquipmentSet.GetEquipmentSetAssignedSpec|C_EquipmentSet.GetEquipmentSetAssignedSpec]](<span class="apiarg">equipmentSetID</span>) : <span class="apiret">specIndex</span> - Returns the specialization assigned to an equipment set.
: [[API C_EquipmentSet.GetEquipmentSetForSpec|C_EquipmentSet.GetEquipmentSetForSpec]](<span class="apiarg">specIndex</span>) : <span class="apiret">equipmentSetID</span> - Returns the equipment set currently assigned to a specific specialization.
: [[API C_EquipmentSet.GetEquipmentSetID|C_EquipmentSet.GetEquipmentSetID]](<span class="apiarg">equipmentSetName</span>) : <span class="apiret">equipmentSetID</span> - Returns the set ID of an equipment set with the specified name.
: [[API C_EquipmentSet.GetEquipmentSetIDs|C_EquipmentSet.GetEquipmentSetIDs]]() : <span class="apiret">equipmentSetIDs</span> - Returns an array containing all currently saved equipment set IDs.
: [[API C_EquipmentSet.GetEquipmentSetInfo|C_EquipmentSet.GetEquipmentSetInfo]](<span class="apiarg">equipmentSetID</span>) : <span class="apiret">name, iconFileID, setID, isEquipped, numItems, numEquipped, numInInventory, numLost, numIgnored</span> - Returns information about a saved equipment set.
: [[API C_EquipmentSet.GetIgnoredSlots|C_EquipmentSet.GetIgnoredSlots]](<span class="apiarg">equipmentSetID</span>) : <span class="apiret">slotIgnored</span> - Returns ignored slots of an equipment set.
: [[API C_EquipmentSet.GetItemIDs|C_EquipmentSet.GetItemIDs]](<span class="apiarg">equipmentSetID</span>) : <span class="apiret">itemIDs</span> - Returns the item IDs of an equipment set.
: [[API C_EquipmentSet.GetItemLocations|C_EquipmentSet.GetItemLocations]](<span class="apiarg">equipmentSetID</span>) : <span class="apiret">locations</span> - Returns the location of all items in an equipment set.
: [[API C_EquipmentSet.GetNumEquipmentSets|C_EquipmentSet.GetNumEquipmentSets]]() : <span class="apiret">numEquipmentSets</span> - Returns the number of saved equipment sets.
: [[API C_EquipmentSet.IgnoreSlotForSave|C_EquipmentSet.IgnoreSlotForSave]](<span class="apiarg">slot</span>) - Ignores an equipment slot for saving.
: [[API C_EquipmentSet.IsSlotIgnoredForSave|C_EquipmentSet.IsSlotIgnoredForSave]](<span class="apiarg">slot</span>) : <span class="apiret">isSlotIgnored</span> - Returns whether a slot is ignored for saving.
: [[API C_EquipmentSet.ModifyEquipmentSet|C_EquipmentSet.ModifyEquipmentSet]](<span class="apiarg">equipmentSetID, newName [, newIcon]</span>) - Modifies an equipment set.
: [[API C_EquipmentSet.PickupEquipmentSet|C_EquipmentSet.PickupEquipmentSet]](<span class="apiarg">equipmentSetID</span>) - Picks up an equipment set, placing it on the cursor.
: [[API C_EquipmentSet.SaveEquipmentSet|C_EquipmentSet.SaveEquipmentSet]](<span class="apiarg">equipmentSetID [, icon]</span>) - Saves your currently equipped items into an equipment set.
: [[API C_EquipmentSet.UnassignEquipmentSetSpec|C_EquipmentSet.UnassignEquipmentSetSpec]](<span class="apiarg">equipmentSetID</span>) - Unassigns an equipment set from a specialization.
: [[API C_EquipmentSet.UnignoreSlotForSave|C_EquipmentSet.UnignoreSlotForSave]](<span class="apiarg">slot</span>) - Unignores a slot for saving.
: [[API C_EquipmentSet.UseEquipmentSet|C_EquipmentSet.UseEquipmentSet]](<span class="apiarg">equipmentSetID</span>) : <span class="apiret">setWasEquipped</span> {{apitag|nocombat}} - Equips items from a specified equipment set.
: [[API GetInventoryItemEquippedUnusable|GetInventoryItemEquippedUnusable]](<span class="apiarg">unit, slot</span>)
: [[API GetInventoryItemsForSlot|GetInventoryItemsForSlot]](<span class="apiarg">slot, returnTable [, transmogrify]</span>) : <span class="apiret">returnTable</span>
: [[API EquipmentManager_UnpackLocation|EquipmentManager_UnpackLocation]]() {{apitag|framexml}} - Unpacks a location integer to determine the actual inventory location.

===Dressing Room===
The [[Dressing room]] was added in [[Patch 1.7.0]]
: [https://www.townlong-yak.com/framexml/go/DressUpItemLink DressUpItemLink](<span class="apiarg">itemLink</span>) {{apitag|framexml}} - Shows the Dressing Room with the given item equipped.
: [https://www.townlong-yak.com/framexml/go/DressUpMountLink DressUpMountLink](<span class="apiarg">itemLink | spellLink</span>) {{apitag|framexml}} - Shows the Dressing Room for the mount.
: [https://www.townlong-yak.com/framexml/go/DressUpTransmogLink DressUpTransmogLink](<span class="apiarg">transmogLink</span>) {{apitag|framexml}} - Shows the Dressing Room for transmog appearance or illusion.
: [https://www.townlong-yak.com/framexml/go/SetDressUpBackground SetDressUpBackground](<span class="apiarg">frame, fileName, atlasPostfix</span>) {{apitag|framexml}}

==Cinematics==
Relates to in-game cinematics/cutscenes.
: [[API CanCancelScene|CanCancelScene]]()
: [[API CancelScene|CancelScene]]()
: [[API CinematicFinished|CinematicFinished]](<span class="apiarg">movieType [, userCanceled [, didError]]</span>)
: [[API CinematicStarted|CinematicStarted]](<span class="apiarg">movieType, movieID [, canCancel]</span>)
: [[API InCinematic|InCinematic]]() : <span class="apiret">inCinematic</span>
: [[API IsInCinematicScene|IsInCinematicScene]]() : <span class="apiret">inCinematicScene</span>
: [[API MouseOverrideCinematicDisable|MouseOverrideCinematicDisable]](<span class="apiarg">[doOverride]</span>)
: [[API OpeningCinematic|OpeningCinematic]]() - Shows the opening cinematic for a player's race. Only works as long as the player has earned zero exp.
: [[API StopCinematic|StopCinematic]]()
Relates to pre-rendered movies.
: [[API CancelPreloadingMovie|CancelPreloadingMovie]](<span class="apiarg">movieId</span>)
: [[API GetMovieDownloadProgress|GetMovieDownloadProgress]](<span class="apiarg">movieId</span>) : <span class="apiret">inProgress, downloaded, total</span>
: [[API IsMovieLocal|IsMovieLocal]](<span class="apiarg">movieId</span>) : <span class="apiret">isLocal</span>
: [[API IsMoviePlayable|IsMoviePlayable]](<span class="apiarg">movieId</span>) : <span class="apiret">isPlayable</span> - Returns true if the specified movie exists and can be played.
: [[API IsMovieReadable|IsMovieReadable]](<span class="apiarg">movieId</span>) : <span class="apiret">readable</span>
: [[API PreloadMovie|PreloadMovie]](<span class="apiarg">movieId</span>)
: [[API MovieFrame_PlayMovie|MovieFrame_PlayMovie]](<span class="apiarg">MovieFrame, movieID</span>) {{apitag|framexml}} - Plays a movie.

==Class==
: [[API C_ClassColor.GetClassColor|C_ClassColor.GetClassColor]](<span class="apiarg">className</span>) : <span class="apiret">classColor</span> - Returns a ColorMixin for a class.
: [[API C_CreatureInfo.GetClassInfo|C_CreatureInfo.GetClassInfo]](<span class="apiarg">classID</span>) : <span class="apiret">classInfo</span> - Returns info for a class by ID.
: [[API GetClassColor|GetClassColor]](<span class="apiarg">classFilename</span>) {{apitag|framexml}} - Returns a class color from RAID_CLASS_COLORS.
: [[API GetClassInfo|GetClassInfo]](<span class="apiarg">classID</span>) : <span class="apiret">className, classFile, classID</span> - Returns information about a class.
: [[API GetNumClasses|GetNumClasses]]() : <span class="apiret">numClasses</span> - Returns the number of player classes in the game.
: [[API IsDemonHunterAvailable|IsDemonHunterAvailable]]() : <span class="apiret">available</span>
: [[API LocalizedClassList|LocalizedClassList]](<span class="apiarg">[isFemale]</span>) : <span class="apiret">result</span> - Returns a table with localized class names.

===Reincarnation===
: [[API C_Reincarnation.GetReincarnatingCharacter|C_Reincarnation.GetReincarnatingCharacter]]()
: [[API C_Reincarnation.IsReincarnating|C_Reincarnation.IsReincarnating]]()
: [[API C_Reincarnation.StartReincarnation|C_Reincarnation.StartReincarnation]]()
: [[API C_Reincarnation.StopReincarnation|C_Reincarnation.StopReincarnation]]()

===[[Shaman totem]]s===
: [[API DestroyTotem|DestroyTotem]](<span class="apiarg">slot</span>) {{apitag|protected}} - Destroys a totem/minion.
: [[API GetMultiCastTotemSpells|GetMultiCastTotemSpells]](<span class="apiarg">slot</span>) : <span class="apiret">totem1, totem2, totem3, totem4, totem5, totem6, totem7</span> - Returns a list of valid spells for a totem bar slot.
: [[API GetTotemCannotDismiss|GetTotemCannotDismiss]](<span class="apiarg">slot</span>) : <span class="apiret">cannotDismiss</span>
: [[API GetTotemInfo|GetTotemInfo]](<span class="apiarg">slot</span>) : <span class="apiret">haveTotem, totemName, startTime, duration, icon</span> - Returns info for the specified totem.
: [[API GetTotemTimeLeft|GetTotemTimeLeft]](<span class="apiarg">slot</span>) : <span class="apiret">timeLeft</span>
: [[API TargetTotem|TargetTotem]](<span class="apiarg">slot</span>)
: [[API SetMultiCastSpell|SetMultiCastSpell]](<span class="apiarg">actionID, spellID</span>) {{apitag|protected}} - Sets the totem spell for a specific totem bar slot.

===Shapeshift forms===
: [[API CancelShapeshiftForm|CancelShapeshiftForm]]() {{apitag|protected}} - Cancels a shapeshift form.
: [[API CastShapeshiftForm|CastShapeshiftForm]](<span class="apiarg">index</span>) {{apitag|protected}}
: [[API GetNumShapeshiftForms|GetNumShapeshiftForms]]() : <span class="apiret">numForms</span>
: [[API GetShapeshiftForm|GetShapeshiftForm]](<span class="apiarg">[flag]</span>) : <span class="apiret">index</span> - Returns the zero-based index of current form/stance.
: [[API GetShapeshiftFormCooldown|GetShapeshiftFormCooldown]](<span class="apiarg">index</span>) : <span class="apiret">startTime, duration, isActive</span>
: [[API GetShapeshiftFormID|GetShapeshiftFormID]]() : <span class="apiret">index</span> - Returns the ID of the form or stance the player is currently in.
: [[API GetShapeshiftFormInfo|GetShapeshiftFormInfo]](<span class="apiarg">index</span>) : <span class="apiret">icon, active, castable, spellID</span> - Returns info for an available form or stance.

==Combat Log==
Relates to the [[Combat Log]].
: [[API CombatLogAddFilter|CombatLogAddFilter]](<span class="apiarg">[eList, sourceFlags, destFlags]</span>)
: [[API CombatLogAdvanceEntry|CombatLogAdvanceEntry]](<span class="apiarg">count [, ignoreFilter]</span>) : <span class="apiret">isValidIndex</span>
: [[API CombatLogClearEntries|CombatLogClearEntries]]()
: [[API CombatLogGetCurrentEntry|CombatLogGetCurrentEntry]]() : <span class="apiret">timestamp, subevent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, ...</span>
: [[API CombatLogGetCurrentEventInfo|CombatLogGetCurrentEventInfo]]() : <span class="apiret">timestamp, subevent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, ...</span> - Returns the current {{api|t=e|COMBAT_LOG_EVENT}} payload.
: [[API CombatLogGetNumEntries|CombatLogGetNumEntries]]()
: [[API CombatLogGetRetentionTime|CombatLogGetRetentionTime]]()
: [[API CombatLogResetFilter|CombatLogResetFilter]]()
: [[API CombatLogSetCurrentEntry|CombatLogSetCurrentEntry]](<span class="apiarg">index [, ignoreFilter]</span>) : <span class="apiret">isValidIndex</span>
: [[API CombatLogSetRetentionTime|CombatLogSetRetentionTime]](<span class="apiarg">seconds</span>)
: [[API CombatLogShowCurrentEntry|CombatLogShowCurrentEntry]]()
: [[API CombatLog_Object_IsA|CombatLog_Object_IsA]](<span class="apiarg">unitFlags, mask</span>) : <span class="apiret">isMatch</span>
: [[API CombatTextSetActiveUnit|CombatTextSetActiveUnit]](<span class="apiarg">unit</span>) - Changes the entity for which {{api|t=e|COMBAT_TEXT_UPDATE}} events fire.
: [[API GetCurrentCombatTextEventInfo|GetCurrentCombatTextEventInfo]]() : <span class="apiret">desc1, desc2</span>

==Combat Pets==
Relates to [[Combat pet|Combat Pet]]s.
: [[API CancelPetPossess|CancelPetPossess]]()
: [[API CastPetAction|CastPetAction]](<span class="apiarg">index [, target]</span>) {{apitag|protected}} - Cast the corresponding pet skill.
: [[API GetCallPetSpellInfo|GetCallPetSpellInfo]](<span class="apiarg">spellID</span>)
: [[API GetPetActionCooldown|GetPetActionCooldown]](<span class="apiarg">index</span>) : <span class="apiret">startTime, duration, enable</span> - Returns cooldown info for an action on the pet action bar.
: [[API GetPetActionInfo|GetPetActionInfo]](<span class="apiarg">index</span>) : <span class="apiret">name, texture, isToken, isActive, autoCastAllowed, autoCastEnabled, spellID, checksRange, inRange</span> - Returns info for an action on the pet action bar.
: [[API GetPetActionSlotUsable|GetPetActionSlotUsable]](<span class="apiarg">index</span>) : <span class="apiret">isUsable</span>
: [[API GetPetActionsUsable|GetPetActionsUsable]]() - Returns a value indicating if the player's pet's actions can be used at this time.
: [[API GetPetExperience|GetPetExperience]]() : <span class="apiret">currXP, nextXP</span> - Returns the pet's current and total XP required for the next level.
: [[API GetPetFoodTypes|GetPetFoodTypes]]() : <span class="apiret">...</span> - Returns the food types the pet can eat.
: [[API GetPetIcon|GetPetIcon]]() - Returns the path to the texture to use as the icon for the player's pet.
: [[API GetPetTimeRemaining|GetPetTimeRemaining]]() - Returns in milliseconds about some timeout for the player's pet.
: [[API HasPetUI|HasPetUI]]() : <span class="apiret">hasUI, isHunterPet</span> - Returns true if the player currently has an active (hunter) pet out.
: [[API IsPetActive|IsPetActive]]()
: [[API IsPetAttackActive|IsPetAttackActive]]() : <span class="apiret">isActive</span> - Returns true if the pet is currently auto attacking.
: [[API PetAggressiveMode|PetAggressiveMode]]() {{apitag|protected}}
: [[API PetAssistMode|PetAssistMode]]() {{apitag|protected}} - Set your pet to Assist mode.
: [[API PetAttack|PetAttack]]() {{apitag|protected}} - Instruct your pet to attack your target.
: [[API PetCanBeAbandoned|PetCanBeAbandoned]]() : <span class="apiret">canAbandon</span> - Returns true if the pet can be abandoned.
: [[API PetMoveTo|PetMoveTo]](<span class="apiarg">target</span>) {{apitag|protected}}
: [[API PetCanBeDismissed|PetCanBeDismissed]]()
: [[API PetDefensiveMode|PetDefensiveMode]]() {{apitag|protected}} - Set your pet in defensive mode.
: [[API PetDefensiveAssistMode|PetDefensiveAssistMode]]()
: [[API PetDismiss|PetDismiss]]() - Dismiss your pet.
: [[API PetFollow|PetFollow]]() {{apitag|protected}} - Instruct your pet to follow you.
: [[API PetHasSpellbook|PetHasSpellbook]]()
: [[API PetPassiveMode|PetPassiveMode]]() {{apitag|protected}} - Set your pet into passive mode.
: [[API PetStopAttack|PetStopAttack]]() - Stops the pet from attacking.
: [[API PetUsesPetFrame|PetUsesPetFrame]]()
: [[API PetWait|PetWait]]() {{apitag|protected}} - Instruct your pet to remain still.
: [[API TogglePetAutocast|TogglePetAutocast]](<span class="apiarg">index</span>) {{apitag|protected}} - Toggles whether the specified pet ability should autocast or not.

==Controls==
===Action Bars===
: [[API C_ActionBar.EnableActionRangeCheck|C_ActionBar.EnableActionRangeCheck]](<span class="apiarg">actionID, enable</span>)
: [[API C_ActionBar.GetBonusBarIndexForSlot|C_ActionBar.GetBonusBarIndexForSlot]](<span class="apiarg">slotID</span>) : <span class="apiret">bonusBarIndex</span>
: [[API C_ActionBar.GetItemActionOnEquipSpellID|C_ActionBar.GetItemActionOnEquipSpellID]](<span class="apiarg">actionID</span>) : <span class="apiret">onEquipSpellID</span>
: [[API C_ActionBar.GetProfessionQuality|C_ActionBar.GetProfessionQuality]](<span class="apiarg">actionID</span>) : <span class="apiret">quality</span>
: [[API C_ActionBar.GetSpell|C_ActionBar.GetSpell]](<span class="apiarg">actionID</span>) : <span class="apiret">spellID</span>
: [[API C_ActionBar.IsHarmfulAction|C_ActionBar.IsHarmfulAction]](<span class="apiarg">actionID, useNeutral</span>) : <span class="apiret">isHarmful</span>
: [[API C_ActionBar.IsHelpfulAction|C_ActionBar.IsHelpfulAction]](<span class="apiarg">actionID, useNeutral</span>) : <span class="apiret">isHelpful</span>
: [[API C_ActionBar.IsOnBarOrSpecialBar|C_ActionBar.IsOnBarOrSpecialBar]](<span class="apiarg">spellID</span>) : <span class="apiret">isOnBarOrSpecialBar</span>
: [[API C_ActionBar.PutActionInSlot|C_ActionBar.PutActionInSlot]](<span class="apiarg">slotID</span>)
: [[API C_ActionBar.ShouldOverrideBarShowHealthBar|C_ActionBar.ShouldOverrideBarShowHealthBar]]() : <span class="apiret">showHealthBar</span>
: [[API C_ActionBar.ShouldOverrideBarShowManaBar|C_ActionBar.ShouldOverrideBarShowManaBar]]() : <span class="apiret">showManaBar</span>
: [[API ChangeActionBarPage|ChangeActionBarPage]](<span class="apiarg">page</span>) {{apitag|nocombat}} - Changes the current action bar page.
: [[API GetActionBarPage|GetActionBarPage]]() : <span class="apiret">index</span> - Returns the current action bar page.
: [[API GetActionBarToggles|GetActionBarToggles]]() : <span class="apiret">bar1, bar2, bar3, bar4, bar5, bar6, bar7</span> - Returns the enabled states for the extra action bars.
: [[API GetBonusBarIndex|GetBonusBarIndex]]()
: [[API GetBonusBarOffset|GetBonusBarOffset]]() : <span class="apiret">offset</span> - Returns the current bonus action bar index (e.g. for the Rogue stealth bar).
: [[API GetExtraBarIndex|GetExtraBarIndex]]() : <span class="apiret">extraPage</span>
: [[API GetMultiCastBarIndex|GetMultiCastBarIndex]]()
: [[API GetOverrideBarIndex|GetOverrideBarIndex]]()
: [[API GetOverrideBarSkin|GetOverrideBarSkin]]()
: [[API GetTempShapeshiftBarIndex|GetTempShapeshiftBarIndex]]()
: [[API GetVehicleBarIndex|GetVehicleBarIndex]]()
: [[API HasBonusActionBar|HasBonusActionBar]]()
: [[API HasExtraActionBar|HasExtraActionBar]]() : <span class="apiret">hasBar</span>
: [[API HasOverrideActionBar|HasOverrideActionBar]]()
: [[API HasTempShapeshiftActionBar|HasTempShapeshiftActionBar]]()
: [[API HasVehicleActionBar|HasVehicleActionBar]]()
: [[API IsPossessBarVisible|IsPossessBarVisible]]()
: [[API PetHasActionBar|PetHasActionBar]]() : <span class="apiret">hasActionBar</span> - Determine if player has a pet with an action bar.
: [[API SetActionBarToggles|SetActionBarToggles]](<span class="apiarg">bar1, bar2, bar3, bar4, bar5, bar6, bar7, alwaysShow</span>) - Sets the visible state for each action bar.

===Action Buttons===
: [[API C_ActionBar.FindPetActionButtons|C_ActionBar.FindPetActionButtons]](<span class="apiarg">petActionID</span>) : <span class="apiret">slots</span>
: [[API C_ActionBar.FindSpellActionButtons|C_ActionBar.FindSpellActionButtons]](<span class="apiarg">spellID</span>) : <span class="apiret">slots</span>
: [[API C_ActionBar.GetPetActionPetBarIndices|C_ActionBar.GetPetActionPetBarIndices]](<span class="apiarg">petActionID</span>) : <span class="apiret">slots</span>
: [[API C_ActionBar.HasPetActionButtons|C_ActionBar.HasPetActionButtons]](<span class="apiarg">petActionID</span>) : <span class="apiret">hasPetActionButtons</span>
: [[API C_ActionBar.HasPetActionPetBarIndices|C_ActionBar.HasPetActionPetBarIndices]](<span class="apiarg">petActionID</span>) : <span class="apiret">hasPetActionPetBarIndices</span>
: [[API C_ActionBar.HasSpellActionButtons|C_ActionBar.HasSpellActionButtons]](<span class="apiarg">spellID</span>) : <span class="apiret">hasSpellActionButtons</span>
: [[API C_ActionBar.IsAutoCastPetAction|C_ActionBar.IsAutoCastPetAction]](<span class="apiarg">slotID</span>) : <span class="apiret">isAutoCastPetAction</span>
: [[API C_ActionBar.IsEnabledAutoCastPetAction|C_ActionBar.IsEnabledAutoCastPetAction]](<span class="apiarg">slotID</span>) : <span class="apiret">isEnabledAutoCastPetAction</span>
: [[API C_ActionBar.ToggleAutoCastPetAction|C_ActionBar.ToggleAutoCastPetAction]](<span class="apiarg">slotID</span>)
: [[API ActionHasRange|ActionHasRange]](<span class="apiarg">slotID</span>) : <span class="apiret">hasRange</span> - Returns true if the action has has a range requirement.
: [[API ClickWorldMapActionButton|ClickWorldMapActionButton]]()
: [[API GetActionAutocast|GetActionAutocast]](<span class="apiarg">slot</span>)
: [[API GetActionCharges|GetActionCharges]](<span class="apiarg">slot</span>) : <span class="apiret">currentCharges, maxCharges, cooldownStart, cooldownDuration, chargeModRate</span> - Returns information about the charges of a charge-accumulating player ability.
: [[API GetActionCooldown|GetActionCooldown]](<span class="apiarg">slot</span>) : <span class="apiret">start, duration, enable, modRate</span> - Returns cooldown info for the specified action slot.
: [[API GetActionCount|GetActionCount]](<span class="apiarg">actionSlot</span>) : <span class="apiret">text</span> - Returns the available number of uses for an action.
: [[API GetActionInfo|GetActionInfo]](<span class="apiarg">slot</span>) : <span class="apiret">actionType, id, subType</span> - Returns info for an action.
: [[API GetActionText|GetActionText]](<span class="apiarg">actionSlot</span>) : <span class="apiret">text</span> - Returns the label text for an action.
: [[API GetActionTexture|GetActionTexture]](<span class="apiarg">actionSlot</span>) : <span class="apiret">texture</span> - Returns the icon texture for an action.
: [[API GetPossessInfo|GetPossessInfo]](<span class="apiarg">index</span>) : <span class="apiret">texture, spellID, enabled</span> - Returns info for an action on the possession bar.
: [[API GetWorldMapActionButtonSpellInfo|GetWorldMapActionButtonSpellInfo]]()
: [[API HasAction|HasAction]](<span class="apiarg">actionSlot</span>) : <span class="apiret">hasAction</span> - Returns true if an action slot is occupied.
: [[API IsActionInRange|IsActionInRange]](<span class="apiarg">actionSlot [, unit]</span>) : <span class="apiret">inRange</span> - Returns true if the specified action is in range.
: [[API IsAttackAction|IsAttackAction]](<span class="apiarg">actionSlot</span>) : <span class="apiret">isAttack</span> - Returns true if an action is the "Auto Attack" action.
: [[API IsAutoRepeatAction|IsAutoRepeatAction]](<span class="apiarg">actionSlot</span>) : <span class="apiret">isRepeating</span> - Returns true if an action is currently auto-repeating (e.g. Shoot for wand and Auto Shot for Hunters).
: [[API IsConsumableAction|IsConsumableAction]](<span class="apiarg">slotID</span>) : <span class="apiret">isConsumable</span> - Returns true if an action is a consumable, i.e. it has a count.
: [[API IsCurrentAction|IsCurrentAction]](<span class="apiarg">actionSlot</span>) : <span class="apiret">isCurrent</span> - Returns true if the specified action is currently being used.
: [[API IsEquippedAction|IsEquippedAction]](<span class="apiarg">slotID</span>) : <span class="apiret">isEquipped</span> - Returns true if the specified action slot is an equipped item.
: [[API IsItemAction|IsItemAction]](<span class="apiarg">slot</span>)
: [[API IsPetAttackAction|IsPetAttackAction]](<span class="apiarg">index</span>)
: [[API IsStackableAction|IsStackableAction]](<span class="apiarg">slot</span>)
: [[API IsUsableAction|IsUsableAction]](<span class="apiarg">slot</span>) : <span class="apiret">isUsable, notEnoughMana</span> - Returns true if the character can currently use the specified action (sufficient mana, reagents and not on cooldown).
: [[API SetActionUIButton|SetActionUIButton]](<span class="apiarg">checkboxFrame, actionSlot, cooldownFrame</span>)
: [[API SetSpellbookPetAction|SetSpellbookPetAction]](<span class="apiarg">slot, target</span>)
: [[API UseAction|UseAction]](<span class="apiarg">slot [, checkCursor [, onSelf]]</span>) {{apitag|protected}} - Perform the action in the specified action slot.
: [[API UseWorldMapActionButtonSpellOnQuest|UseWorldMapActionButtonSpellOnQuest]]()
Flyout Buttons
: [[API C_ActionBar.FindFlyoutActionButtons|C_ActionBar.FindFlyoutActionButtons]](<span class="apiarg">flyoutID</span>) : <span class="apiret">slots</span>
: [[API C_ActionBar.HasFlyoutActionButtons|C_ActionBar.HasFlyoutActionButtons]](<span class="apiarg">flyoutID</span>) : <span class="apiret">hasFlyoutActionButtons</span>
: [[API FindFlyoutSlotBySpellID|FindFlyoutSlotBySpellID]](<span class="apiarg">spellID</span>)
: [[API FlyoutHasSpell|FlyoutHasSpell]](<span class="apiarg">flyoutID, spellID</span>) : <span class="apiret">hasSpell</span>
: [[API GetFlyoutID|GetFlyoutID]](<span class="apiarg">index</span>)
: [[API GetFlyoutInfo|GetFlyoutInfo]](<span class="apiarg">flyoutID</span>) : <span class="apiret">name, description, numSlots, isKnown</span>
: [[API GetFlyoutSlotInfo|GetFlyoutSlotInfo]](<span class="apiarg">flyoutID, slot</span>) : <span class="apiret">flyoutSpellID, overrideSpellID, isKnown, spellName, slotSpecID</span>
: [[API GetNumFlyouts|GetNumFlyouts]]()

===Key Bindings===
Relates to [[Key Bindings]].
: [[API C_KeyBindings.GetBindingIndex|C_KeyBindings.GetBindingIndex]](<span class="apiarg">action</span>) : <span class="apiret">bindingIndex</span>
: [[API C_KeyBindings.GetCustomBindingType|C_KeyBindings.GetCustomBindingType]](<span class="apiarg">bindingIndex</span>) : <span class="apiret">customBindingType</span> - Returns the type of a custom binding.
: [[API GetBinding|GetBinding]](<span class="apiarg">index [, alwaysIncludeGamepad]</span>) : <span class="apiret">command, category, key1, key2, ...</span> - Returns the name and keys for a binding by index.
: [[API GetBindingAction|GetBindingAction]](<span class="apiarg">binding [, checkOverride]</span>) : <span class="apiret">action</span> - Returns the binding name for a key (combination).
: [[API GetBindingByKey|GetBindingByKey]](<span class="apiarg">key</span>) : <span class="apiret">bindingAction</span> - Returns the binding action performed when the specified key combination is triggered.
: [[API GetBindingKey|GetBindingKey]](<span class="apiarg">command</span>) : <span class="apiret">...</span> - Returns the keys bound to the given command.
: [[API GetBindingText|GetBindingText]](<span class="apiarg">[key [, prefix [, abbreviate]]]</span>) : <span class="apiret">text</span> - Returns the string for the given key and prefix. Essentially a specialized getglobal() for bindings.
: [[API GetCurrentBindingSet|GetCurrentBindingSet]]() : <span class="apiret">which</span> - Returns if either account or character-specific bindings are active.
: [[API GetNumBindings|GetNumBindings]]() : <span class="apiret">numKeyBindings</span> - Returns the number of bindings and headers in the key bindings window.
: [[API LoadBindings|LoadBindings]](<span class="apiarg">bindingSet</span>) - Loads default, account or character specific key bindings.
: [[API RunBinding|RunBinding]](<span class="apiarg">command [, up]</span>) - Executes a key binding.
: [[API SaveBindings|SaveBindings]](<span class="apiarg">which</span>) - Saves account or character specific key bindings.
: [[API SetBinding|SetBinding]](<span class="apiarg">key [, command [, mode]]</span>) : <span class="apiret">ok</span> {{apitag|nocombat}} - Sets a key binding to an action.
: [[API SetBindingSpell|SetBindingSpell]](<span class="apiarg">key, spell</span>) : <span class="apiret">ok</span> {{apitag|nocombat}} - Sets a binding to cast the specified spell.
: [[API SetBindingClick|SetBindingClick]](<span class="apiarg">key, buttonName, button</span>) : <span class="apiret">ok</span> {{apitag|nocombat}} - Sets a binding to click the specified Button widget.
: [[API SetBindingItem|SetBindingItem]](<span class="apiarg">key, item</span>) : <span class="apiret">ok</span> {{apitag|nocombat}}
: [[API SetBindingMacro|SetBindingMacro]](<span class="apiarg">key, name</span>) : <span class="apiret">success</span> {{apitag|nocombat}}
: [[API SetOverrideBinding|SetOverrideBinding]](<span class="apiarg">owner, isPriority, key, command</span>) {{apitag|nocombat}} - Sets an override key binding.
: [[API SetOverrideBindingSpell|SetOverrideBindingSpell]](<span class="apiarg">owner, isPriority, key, spell</span>) {{apitag|nocombat}}
: [[API SetOverrideBindingClick|SetOverrideBindingClick]](<span class="apiarg">owner, isPriority, key, buttonName [, mouseClick]</span>) {{apitag|nocombat}} - Sets an override binding that performs a button click.
: [[API SetOverrideBindingItem|SetOverrideBindingItem]](<span class="apiarg">owner, isPriority, key, item</span>) {{apitag|nocombat}}
: [[API SetOverrideBindingMacro|SetOverrideBindingMacro]](<span class="apiarg">owner, isPriority, key, macro</span>) {{apitag|nocombat}}
: [[API ClearOverrideBindings|ClearOverrideBindings]](<span class="apiarg">owner</span>) {{apitag|nocombat}} - Removes all override bindings owned by a specific frame.
: [[API SetMouselookOverrideBinding|SetMouselookOverrideBinding]](<span class="apiarg">key [, command]</span>)

===Click Bindings===
: [[API C_ClickBindings.CanSpellBeClickBound|C_ClickBindings.CanSpellBeClickBound]](<span class="apiarg">spellID</span>) : <span class="apiret">canBeBound</span>
: [[API C_ClickBindings.ExecuteBinding|C_ClickBindings.ExecuteBinding]](<span class="apiarg">targetToken, button, modifiers</span>)
: [[API C_ClickBindings.GetBindingType|C_ClickBindings.GetBindingType]](<span class="apiarg">button, modifiers</span>) : <span class="apiret">type</span>
: [[API C_ClickBindings.GetEffectiveInteractionButton|C_ClickBindings.GetEffectiveInteractionButton]](<span class="apiarg">button, modifiers</span>) : <span class="apiret">effectiveButton</span>
: [[API C_ClickBindings.GetProfileInfo|C_ClickBindings.GetProfileInfo]]() : <span class="apiret">infoVec</span>
: [[API C_ClickBindings.GetStringFromModifiers|C_ClickBindings.GetStringFromModifiers]](<span class="apiarg">modifiers</span>) : <span class="apiret">modifierString</span>
: [[API C_ClickBindings.GetTutorialShown|C_ClickBindings.GetTutorialShown]]() : <span class="apiret">tutorialShown</span>
: [[API C_ClickBindings.MakeModifiers|C_ClickBindings.MakeModifiers]]() : <span class="apiret">modifiers</span>
: [[API C_ClickBindings.ResetCurrentProfile|C_ClickBindings.ResetCurrentProfile]]()
: [[API C_ClickBindings.SetProfileByInfo|C_ClickBindings.SetProfileByInfo]](<span class="apiarg">infoVec</span>)
: [[API C_ClickBindings.SetTutorialShown|C_ClickBindings.SetTutorialShown]]()

===Key Modifiers===
: [[API GetModifiedClick|GetModifiedClick]](<span class="apiarg">action</span>) : <span class="apiret">key</span>
: [[API GetModifiedClickAction|GetModifiedClickAction]](<span class="apiarg">index</span>)
: [[API GetMouseButtonClicked|GetMouseButtonClicked]]() : <span class="apiret">buttonName</span> - Returns the mouse button responsible during an OnClick event (e.g. "RightButton").
: [[API GetNumModifiedClickActions|GetNumModifiedClickActions]]()
: [[API IsAltKeyDown|IsAltKeyDown]]() : <span class="apiret">down</span> - Returns true if the alt key is currently depressed.
: [[API IsControlKeyDown|IsControlKeyDown]]() : <span class="apiret">down</span> - Returns true if the control key is currently depressed.
: [[API IsKeyDown|IsKeyDown]](<span class="apiarg">keyOrMouseName [, excludeBindingState]</span>) : <span class="apiret">down</span>
: [[API IsLeftAltKeyDown|IsLeftAltKeyDown]]() : <span class="apiret">down</span> - Returns true if the left alt key is currently depressed.
: [[API IsLeftControlKeyDown|IsLeftControlKeyDown]]() : <span class="apiret">down</span> - Returns true if the left control key is currently depressed.
: [[API IsLeftMetaKeyDown|IsLeftMetaKeyDown]]() : <span class="apiret">down</span>
: [[API IsLeftShiftKeyDown|IsLeftShiftKeyDown]]() : <span class="apiret">down</span> - Returns true if the left shift key is currently depressed.
: [[API IsMetaKeyDown|IsMetaKeyDown]]() : <span class="apiret">down</span>
: [[API IsModifiedClick|IsModifiedClick]](<span class="apiarg">[action]</span>) : <span class="apiret">isHeld</span> - Returns true if the modifier key needed for an an action is pressed.
: [[API IsModifierKeyDown|IsModifierKeyDown]]() : <span class="apiret">down</span> - Returns true if a modifier key is currently pressed down.
: [[API IsMouseButtonDown|IsMouseButtonDown]](<span class="apiarg">[button]</span>) : <span class="apiret">down</span>
: [[API IsRightAltKeyDown|IsRightAltKeyDown]]() : <span class="apiret">down</span> - Returns true if the right alt key is currently depressed.
: [[API IsRightControlKeyDown|IsRightControlKeyDown]]() : <span class="apiret">down</span> - Returns true if the right control key is currently depressed.
: [[API IsRightMetaKeyDown|IsRightMetaKeyDown]]() : <span class="apiret">down</span>
: [[API IsRightShiftKeyDown|IsRightShiftKeyDown]]() : <span class="apiret">down</span> - Returns true if the right shift key is currently depressed.
: [[API IsShiftKeyDown|IsShiftKeyDown]]() : <span class="apiret">down</span> - Returns true if the shift key is currently depressed.
: [[API SetModifiedClick|SetModifiedClick]](<span class="apiarg">action, key</span>)

===Cursor===
Relates to the [[Cursor]].
: [[API AutoEquipCursorItem|AutoEquipCursorItem]]() - Equips the item currently held by the cursor.
: [[API C_CurrencyInfo.PickupCurrency|C_CurrencyInfo.PickupCurrency]](<span class="apiarg">type</span>)
: [[API C_Cursor.GetCursorItem|C_Cursor.GetCursorItem]]() : <span class="apiret">item</span>
: [[API ClearCursor|ClearCursor]]() - Clears any objects from the cursor.
: [[API ClearCursorHoveredItem|ClearCursorHoveredItem]]()
: [[API ClickSocketButton|ClickSocketButton]](<span class="apiarg">id</span>) - If the cursor is currently holding a gem, tentatively insert it into the socket.
: [[API CursorHasItem|CursorHasItem]]() : <span class="apiret">result</span> - Returns true if the cursor currently holds an item.
: [[API CursorHasMacro|CursorHasMacro]]() : <span class="apiret">result</span> - Returns 1 if the cursor is currently dragging a macro.
: [[API CursorHasMoney|CursorHasMoney]]() : <span class="apiret">result</span> - Returns true if the cursor currently holds money.
: [[API CursorHasSpell|CursorHasSpell]]() : <span class="apiret">result</span> - Returns true if the cursor currently holds a spell.
: [[API DeleteCursorItem|DeleteCursorItem]]() {{apitag|hwevent,noscript}} - Destroys the item held by the cursor.
: [[API DropCursorMoney|DropCursorMoney]]() - Drops money held by the cursor back into your bag.
: [[API EquipCursorItem|EquipCursorItem]](<span class="apiarg">slot</span>) - Equips the currently picked up item to a specific inventory slot.
: [[API GetCursorDelta|GetCursorDelta]]() : <span class="apiret">deltaX, deltaY</span>
: [[API GetCursorInfo|GetCursorInfo]]() - Returns what the mouse cursor is holding.
: [[API GetCursorMoney|GetCursorMoney]]() : <span class="apiret">amount</span> - Returns the amount of money held by the cursor.
: [[API GetCursorPosition|GetCursorPosition]]() : <span class="apiret">posX, posY</span> - Returns the cursor's position on the screen.
: [[API HideRepairCursor|HideRepairCursor]]() - Takes the cursor out of repair mode.
: [[API InRepairMode|InRepairMode]]() : <span class="apiret">inRepairMode</span> - Returns true if the cursor is in repair mode.
: [[API PickupAction|PickupAction]](<span class="apiarg">slot</span>) - Places an action onto the cursor.
: [[API PickupBagFromSlot|PickupBagFromSlot]](<span class="apiarg">slot</span>) - Picks up the bag from the specified slot, placing it in the cursor.
: [[API PickupCompanion|PickupCompanion]](<span class="apiarg">type, index</span>) - Places a mount onto the cursor.
: [[API PickupGuildBankItem|PickupGuildBankItem]](<span class="apiarg">tab, slot</span>) - Picks up an item from the guild bank.
: [[API PickupGuildBankMoney|PickupGuildBankMoney]](<span class="apiarg">money</span>) - Picks up "money" copper from the guild bank.
: [[API PickupInventoryItem|PickupInventoryItem]](<span class="apiarg">slotId</span>) {{apitag|nocombat}} - Picks up / interacts with an equipment slot.
: [[API PickupMacro|PickupMacro]](<span class="apiarg">name</span>) - Places a macro onto the cursor.
: [[API PickupMerchantItem|PickupMerchantItem]](<span class="apiarg">index</span>) - Places a merchant item onto the cursor. If the cursor already has an item, it will be sold.
: [[API PickupPetAction|PickupPetAction]](<span class="apiarg">petActionSlot</span>) - Places a pet action onto the cursor.
: [[API PickupPetSpell|PickupPetSpell]](<span class="apiarg">spellID</span>)
: [[API PickupPlayerMoney|PickupPlayerMoney]](<span class="apiarg">amount</span>) - Picks up an amount of money from the player onto the cursor.
: [[API PickupPvpTalent|PickupPvpTalent]]()
: [[API PickupTalent|PickupTalent]](<span class="apiarg">talentID</span>) - Grabs the selected talent spell for placement on an action bar.
: [[API PickupTradeMoney|PickupTradeMoney]](<span class="apiarg">copper</span>) - Places an amount of money from the player's trade offer onto the cursor.
: [[API PlaceAction|PlaceAction]](<span class="apiarg">slot</span>) - Places an action onto into the specified action slot.
: [[API ResetCursor|ResetCursor]]()
: [[API SellCursorItem|SellCursorItem]]()
: [[API SetCursor|SetCursor]](<span class="apiarg">[name]</span>) : <span class="apiret">result</span> - Sets the current cursor texture.
: [[API SetCursorHoveredItem|SetCursorHoveredItem]](<span class="apiarg">item</span>)
: [[API SetCursorHoveredItemTradeItem|SetCursorHoveredItemTradeItem]](<span class="apiarg">enabled</span>)
: [[API SetUnitCursorTexture|SetUnitCursorTexture]](<span class="apiarg">textureObject, unit [, style [, includeLowPriority]]</span>) : <span class="apiret">hasCursor</span>
: [[API ShowBuybackSellCursor|ShowBuybackSellCursor]](<span class="apiarg">index</span>)
: [[API ShowRepairCursor|ShowRepairCursor]]()

===Camera===
: [[API CameraOrSelectOrMoveStart|CameraOrSelectOrMoveStart]]() {{apitag|protected}} - Begin "Left click" in the 3D world.
: [[API CameraOrSelectOrMoveStop|CameraOrSelectOrMoveStop]](<span class="apiarg">[stickyFlag]</span>) {{apitag|protected}} - Called when you release the "Left-Click" mouse button.
: [[API CameraZoomIn|CameraZoomIn]](<span class="apiarg">increment</span>) - Zooms the camera in.
: [[API CameraZoomOut|CameraZoomOut]](<span class="apiarg">increment</span>) - Zooms the camera out.
: [[API CenterCamera|CenterCamera]]()
: [[API FlipCameraYaw|FlipCameraYaw]](<span class="apiarg">angle</span>) - Rotates the camera around the Z-axis.
: [[API GetCameraFOVDefaults|GetCameraFOVDefaults]]() : <span class="apiret">fieldOfViewDegreesDefault, fieldOfViewDegreesPlayerMin, fieldOfViewDegreesPlayerMax</span>
: [[API GetCameraZoom|GetCameraZoom]]() : <span class="apiret">zoom</span> - Returns the current zoom level of the camera.
: [[API IsMouselooking|IsMouselooking]]() : <span class="apiret">isMouseLooking</span> - Returns true if the player is currently in mouselook mode.
: [[API MouselookStart|MouselookStart]]() - Enters mouse look mode; alters the character's movement/facing direction.
: [[API MouselookStop|MouselookStop]]() - Exits mouse look mode.
: [[API MoveViewDownStart|MoveViewDownStart]](<span class="apiarg">speed</span>) - Starts rotating the camera downward.
: [[API MoveViewDownStop|MoveViewDownStop]]() - Stops rotating the camera downward.
: [[API MoveViewInStart|MoveViewInStart]](<span class="apiarg">speed</span>) - Begins zooming the camera in.
: [[API MoveViewInStop|MoveViewInStop]]() - Stops zooming the camera in.
: [[API MoveViewLeftStart|MoveViewLeftStart]](<span class="apiarg">speed</span>) - Starts rotating the camera to the left.
: [[API MoveViewLeftStop|MoveViewLeftStop]]() - Stops rotating the camera to the left.
: [[API MoveViewOutStart|MoveViewOutStart]](<span class="apiarg">speed</span>) - Begins zooming the camera out.
: [[API MoveViewOutStop|MoveViewOutStop]]() - Stops zooming the camera out.
: [[API MoveViewRightStart|MoveViewRightStart]](<span class="apiarg">speed</span>) - Starts rotating the camera to the right.
: [[API MoveViewRightStop|MoveViewRightStop]]() - Stops rotating the camera to the right.
: [[API MoveViewUpStart|MoveViewUpStart]](<span class="apiarg">speed</span>) - Starts rotating the camera upward.
: [[API MoveViewUpStop|MoveViewUpStop]]() - Stops rotating the camera upward.
: [[API NextView|NextView]]() - Cycles forward through the five predefined camera positions.
: [[API PitchDownStart|PitchDownStart]]() {{apitag|protected}} - Begins pitching the camera Downward.
: [[API PitchDownStop|PitchDownStop]]() {{apitag|protected}} - Stops pitching the camera after [[API PitchDownStart|PitchDownStart]]() is called.
: [[API PitchUpStart|PitchUpStart]]() {{apitag|protected}} - Begins pitching the camera Upward.
: [[API PitchUpStop|PitchUpStop]]() {{apitag|protected}} - Stops pitching the camera after [[API PitchUpStart|PitchUpStart]]() is called.
: [[API PrevView|PrevView]]() - Cycles backward through the five predefined camera positions.
: [[API ResetView|ResetView]](<span class="apiarg">index</span>) - Resets the specified (1-5) predefined camera position to it's default if it was changed using [[API SaveView|SaveView]](index).
: [[API SaveView|SaveView]](<span class="apiarg">viewIndex</span>) - Saves a camera angle. The last position loaded is stored in the [[CVar cameraView]].
: [[API SetView|SetView]](<span class="apiarg">viewIndex</span>) - Sets the camera to a predefined camera position (1-5).

===Targeting===
Relates to [[Target]]s.
: [[API AssistUnit|AssistUnit]](<span class="apiarg">[name [, exactMatch]]</span>) {{apitag|protected}} - Assists the unit by targeting the same target.
: [[API ClearFocus|ClearFocus]]() {{apitag|protected}} - Clears the focus target.
: [[API ClearTarget|ClearTarget]]() : <span class="apiret">willMakeChange</span> {{apitag|protected}} - Clears the selected target.
: [[API FocusUnit|FocusUnit]](<span class="apiarg">[name]</span>) {{apitag|protected}} - Sets the [[focus target]].
: [[API IsTargetLoose|IsTargetLoose]]() : <span class="apiret">isTargetLoose</span>
: [[API TargetDirectionEnemy|TargetDirectionEnemy]](<span class="apiarg">facing [, coneAngle]</span>) {{apitag|protected}}
: [[API TargetDirectionFinished|TargetDirectionFinished]]() {{apitag|protected}}
: [[API TargetDirectionFriend|TargetDirectionFriend]](<span class="apiarg">facing [, coneAngle]</span>) {{apitag|protected}}
: [[API TargetLastEnemy|TargetLastEnemy]]() {{apitag|protected}} - Targets the previously targeted enemy.
: [[API TargetLastFriend|TargetLastFriend]]() {{apitag|protected}}
: [[API TargetLastTarget|TargetLastTarget]]() {{apitag|protected}} - Selects the last target as the current target.
: [[API TargetNearest|TargetNearest]](<span class="apiarg">[reverse]</span>) {{apitag|protected}}
: [[API TargetNearestEnemy|TargetNearestEnemy]](<span class="apiarg">[reverse]</span>) {{apitag|protected}} - Selects the nearest enemy as the current target.
: [[API TargetNearestEnemyPlayer|TargetNearestEnemyPlayer]](<span class="apiarg">[reverse]</span>) {{apitag|protected}} - Selects the nearest enemy player as the current target.
: [[API TargetNearestFriend|TargetNearestFriend]](<span class="apiarg">[reverse]</span>) {{apitag|protected}} - Targets the nearest friendly unit.
: [[API TargetNearestFriendPlayer|TargetNearestFriendPlayer]](<span class="apiarg">[reverse]</span>) {{apitag|protected}} - Selects the nearest friendly player as the current target.
: [[API TargetNearestPartyMember|TargetNearestPartyMember]](<span class="apiarg">[reverse]</span>) {{apitag|protected}} - Selects the nearest Party member as the current target.
: [[API TargetNearestRaidMember|TargetNearestRaidMember]](<span class="apiarg">[reverse]</span>) {{apitag|protected}} - Selects the nearest Raid member as the current target.
: [[API TargetPriorityHighlightEnd|TargetPriorityHighlightEnd]]() {{apitag|protected}}
: [[API TargetPriorityHighlightStart|TargetPriorityHighlightStart]](<span class="apiarg">[useStartDelay]</span>) {{apitag|protected}}
: [[API TargetToggle|TargetToggle]]()
: [[API TargetUnit|TargetUnit]](<span class="apiarg">[name [, exactMatch]]</span>) {{apitag|protected}} - Targets the specified unit.

===Movement===
Most of these functions may only be called on a hardware event from '''secure''' code.
: [[API AscendStop|AscendStop]]() {{apitag|protected}} - Called when the player releases the jump key.
: [[API AttackTarget|AttackTarget]]() {{apitag|protected}} - Toggles auto-attacking of the current target.
: [[API DescendStop|DescendStop]]() {{apitag|protected}} - Stops descending while flying or swimming.
: [[API FollowUnit|FollowUnit]](<span class="apiarg">[name [, exactMatch]]</span>) {{apitag|hwevent}} - Follows a friendly player unit.
: [[API IsPlayerMoving|IsPlayerMoving]]() : <span class="apiret">result</span>
: [[API JumpOrAscendStart|JumpOrAscendStart]]() {{apitag|protected}} - Makes the character jump or swim/fly upwards.
: [[API MoveAndSteerStart|MoveAndSteerStart]]() {{apitag|protected}}
: [[API MoveAndSteerStop|MoveAndSteerStop]]() {{apitag|protected}}
: [[API MoveBackwardStart|MoveBackwardStart]](<span class="apiarg">startTime</span>) {{apitag|protected}} - The player begins moving backward at the specified time.
: [[API MoveBackwardStop|MoveBackwardStop]]() {{apitag|protected}} - The player stops moving backward at the specified time.
: [[API MoveForwardStart|MoveForwardStart]](<span class="apiarg">startTime</span>) {{apitag|protected}} - The player begins moving forward at the specified time.
: [[API MoveForwardStop|MoveForwardStop]]() {{apitag|protected}} - The player stops moving forward at the specified time.
: [[API SetMoveEnabled|SetMoveEnabled]]() {{apitag|protected}}
: [[API SetTurnEnabled|SetTurnEnabled]]() {{apitag|protected}}
: [[API SitStandOrDescendStart|SitStandOrDescendStart]]() {{apitag|protected}} - Makes the player sit, stand, or descend (while swimming or flying).
: [[API StartAttack|StartAttack]](<span class="apiarg">[name [, exactMatch]]</span>) {{apitag|protected}}
: [[API StopAttack|StopAttack]]() - Turns off auto-attack, if currently active.
: [[API StartAutoRun|StartAutoRun]]() {{apitag|protected}}
: [[API StopAutoRun|StopAutoRun]]() {{apitag|protected}}
: [[API StrafeLeftStart|StrafeLeftStart]]() {{apitag|protected}} - The player begins strafing left at the specified time.
: [[API StrafeLeftStop|StrafeLeftStop]]() {{apitag|protected}} - The player stops strafing left at the specified time.
: [[API StrafeRightStart|StrafeRightStart]]() {{apitag|protected}} - The player begins strafing right at the specified time.
: [[API StrafeRightStop|StrafeRightStop]]() {{apitag|protected}} - The player stops strafing right at the specified time.
: [[API ToggleAutoRun|ToggleAutoRun]]() {{apitag|protected}} - Turns auto-run on or off.
: [[API ToggleRun|ToggleRun]]() {{apitag|protected}} - Toggle between running and walking.
: [[API TurnLeftStart|TurnLeftStart]](<span class="apiarg">startTime</span>) {{apitag|protected}} - Turns the player left at the specified time.
: [[API TurnLeftStop|TurnLeftStop]]() {{apitag|protected}} - The player stops turning left at the specified time.
: [[API TurnOrActionStart|TurnOrActionStart]]() {{apitag|protected}} - Starts a "right click" in the 3D game world.
: [[API TurnOrActionStop|TurnOrActionStop]]() {{apitag|protected}} - Stops a "right click" in the 3D game world.
: [[API TurnRightStart|TurnRightStart]](<span class="apiarg">startTime</span>) {{apitag|protected}} - Turns the player right at the specified time.
: [[API TurnRightStop|TurnRightStop]]() {{apitag|protected}} - The player stops turning right at the specified time.

==Customer Support==
Relates to [[Customer Support]].
: [[API AcknowledgeSurvey|AcknowledgeSurvey]](<span class="apiarg">caseIndex</span>)
: [[API DeleteGMTicket|DeleteGMTicket]]() {{apitag|protected}}
: [[API GetWebTicket|GetWebTicket]]()
: [[API GMEuropaBugsEnabled|GMEuropaBugsEnabled]]()
: [[API GMEuropaComplaintsEnabled|GMEuropaComplaintsEnabled]]()
: [[API GMEuropaSuggestionsEnabled|GMEuropaSuggestionsEnabled]]()
: [[API GMEuropaTicketsEnabled|GMEuropaTicketsEnabled]]()
: [[API GMItemRestorationButtonEnabled|GMItemRestorationButtonEnabled]]()
: [[API GMQuickTicketSystemEnabled|GMQuickTicketSystemEnabled]]()
: [[API GMQuickTicketSystemThrottled|GMQuickTicketSystemThrottled]]()
: [[API GMReportLag|GMReportLag]]()
: [[API GMRequestPlayerInfo|GMRequestPlayerInfo]]()
: [[API GMResponseResolve|GMResponseResolve]]()
: [[API C_UserFeedback.SubmitBug|C_UserFeedback.SubmitBug]](<span class="apiarg">bugInfo [, suppressNotification]</span>) : <span class="apiret">success</span>
: [[API C_UserFeedback.SubmitSuggestion|C_UserFeedback.SubmitSuggestion]](<span class="apiarg">suggestion</span>) : <span class="apiret">success</span>
: [[API GMSurveyAnswerSubmit|GMSurveyAnswerSubmit]](<span class="apiarg">question, rank, comment</span>)
: [[API GMSurveyAnswer|GMSurveyAnswer]]()
: [[API GMSurveyCommentSubmit|GMSurveyCommentSubmit]](<span class="apiarg">comment</span>)
: [[API GMSurveyNumAnswers|GMSurveyNumAnswers]]()
: [[API GMSurveyQuestion|GMSurveyQuestion]](<span class="apiarg">index</span>)
: [[API GMSurveySubmit|GMSurveySubmit]]()
: [[API GetGMStatus|GetGMStatus]]()
: [[API GetGMTicket|GetGMTicket]]()
: [[API RegisterStaticConstants|RegisterStaticConstants]](<span class="apiarg">table</span>) - Populates the STATIC_CONSTANTS table for [[API GetGMTicketCategories|GetGMTicketCategories]].
: [[API ReportBug|ReportBug]](<span class="apiarg">description</span>)
: [[API ReportSuggestion|ReportSuggestion]](<span class="apiarg">description</span>)

==Expansions==
Relates to [[Expansion]]s.
: [[API C_ExpansionTrial.OnTrialLevelUpDialogClicked|C_ExpansionTrial.OnTrialLevelUpDialogClicked]]()
: [[API C_ExpansionTrial.OnTrialLevelUpDialogShown|C_ExpansionTrial.OnTrialLevelUpDialogShown]]()
: [[API C_ReturningPlayerUI.AcceptPrompt|C_ReturningPlayerUI.AcceptPrompt]]()
: [[API C_ReturningPlayerUI.DeclinePrompt|C_ReturningPlayerUI.DeclinePrompt]]()
: [[API CanUpgradeExpansion|CanUpgradeExpansion]]() : <span class="apiret">canUpgradeExpansion</span>
: [[API ClassicExpansionAtLeast|ClassicExpansionAtLeast]](<span class="apiarg">expansionLevel</span>) : <span class="apiret">isAtLeast</span>
: [[API DoesCurrentLocaleSellExpansionLevels|DoesCurrentLocaleSellExpansionLevels]]() : <span class="apiret">regionSellsExpansions</span>
: [[API GetAccountExpansionLevel|GetAccountExpansionLevel]]() : <span class="apiret">expansionLevel</span> - Returns the expansion level the account has been flagged for.
: [[API GetClassicExpansionLevel|GetClassicExpansionLevel]]() : <span class="apiret">expansionLevel</span>
: [[API GetClientDisplayExpansionLevel|GetClientDisplayExpansionLevel]]() : <span class="apiret">expansionLevel</span> - Returns the expansion level of the game client.
: [[API GetExpansionDisplayInfo|GetExpansionDisplayInfo]](<span class="apiarg">expansionLevel</span>) : <span class="apiret">info</span>
: [[API GetExpansionForLevel|GetExpansionForLevel]](<span class="apiarg">playerLevel</span>) : <span class="apiret">expansionLevel</span>
: [[API GetExpansionLevel|GetExpansionLevel]]() : <span class="apiret">expansionLevel</span> - Returns the expansion level currently accessible by the player.
: [[API GetExpansionTrialInfo|GetExpansionTrialInfo]]() : <span class="apiret">isExpansionTrialAccount, expansionTrialRemainingSeconds</span>
: [[API GetMaximumExpansionLevel|GetMaximumExpansionLevel]]() : <span class="apiret">expansionLevel</span>
: [[API GetMaxLevelForExpansionLevel|GetMaxLevelForExpansionLevel]](<span class="apiarg">expansionLevel</span>) : <span class="apiret">maxLevel</span>
: [[API GetMaxLevelForLatestExpansion|GetMaxLevelForLatestExpansion]]() : <span class="apiret">maxLevel</span>
: [[API GetMaxLevelForPlayerExpansion|GetMaxLevelForPlayerExpansion]]() : <span class="apiret">maxLevel</span>
: [[API GetMaxPlayerLevel|GetMaxPlayerLevel]]() : <span class="apiret">maxPlayerLevel</span>
: [[API GetMinimumExpansionLevel|GetMinimumExpansionLevel]]() : <span class="apiret">expansionLevel</span>
: [[API GetNumExpansions|GetNumExpansions]]() : <span class="apiret">numExpansions</span>
: [[API GetServerExpansionLevel|GetServerExpansionLevel]]() : <span class="apiret">serverExpansionLevel</span> - Returns the expansion level currently active on the server.
: [[API IsExpansionTrial|IsExpansionTrial]]() : <span class="apiret">isExpansionTrialAccount</span>
: [[API PlayerGetTimerunningSeasonID|PlayerGetTimerunningSeasonID]]() : <span class="apiret">timerunningSeasonID</span> - Returns the timerunning season.

===Battle.net===
[[Real ID]] friends were added in [[Patch 3.3.5]]
: [[API C_BattleNet.GetFriendAccountInfo|C_BattleNet.GetFriendAccountInfo]](<span class="apiarg">friendIndex [, wowAccountGUID]</span>) : <span class="apiret">accountInfo</span> - Returns information about a Battle.net friend account.
: [[API C_BattleNet.GetAccountInfoByID|C_BattleNet.GetAccountInfoByID]](<span class="apiarg">id [, wowAccountGUID]</span>) : <span class="apiret">accountInfo</span>
: [[API C_BattleNet.GetAccountInfoByGUID|C_BattleNet.GetAccountInfoByGUID]](<span class="apiarg">guid</span>) : <span class="apiret">accountInfo</span>
: [[API C_BattleNet.GetFriendGameAccountInfo|C_BattleNet.GetFriendGameAccountInfo]](<span class="apiarg">friendIndex, accountIndex</span>) : <span class="apiret">gameAccountInfo</span> - Returns information on the game the Battle.net friend is playing.
: [[API C_BattleNet.GetGameAccountInfoByID|C_BattleNet.GetGameAccountInfoByID]](<span class="apiarg">id</span>) : <span class="apiret">gameAccountInfo</span>
: [[API C_BattleNet.GetGameAccountInfoByGUID|C_BattleNet.GetGameAccountInfoByGUID]](<span class="apiarg">guid</span>) : <span class="apiret">gameAccountInfo</span>
: [[API C_BattleNet.GetFriendNumGameAccounts|C_BattleNet.GetFriendNumGameAccounts]](<span class="apiarg">friendIndex</span>) : <span class="apiret">numGameAccounts</span> - Returns the number of game accounts for the Battle.net friend.
: [[API C_AccountInfo.GetIDFromBattleNetAccountGUID|C_AccountInfo.GetIDFromBattleNetAccountGUID]](<span class="apiarg">battleNetAccountGUID</span>) : <span class="apiret">battleNetAccountID</span>
: [[API C_AccountInfo.IsGUIDBattleNetAccountType|C_AccountInfo.IsGUIDBattleNetAccountType]](<span class="apiarg">guid</span>) : <span class="apiret">isBNet</span>
: [[API C_AccountInfo.IsGUIDRelatedToLocalAccount|C_AccountInfo.IsGUIDRelatedToLocalAccount]](<span class="apiarg">guid</span>) : <span class="apiret">isLocalUser</span>
: [[API BNAcceptFriendInvite|BNAcceptFriendInvite]](<span class="apiarg">ID</span>)
: [[API BNCheckBattleTagInviteToGuildMember|BNCheckBattleTagInviteToGuildMember]](<span class="apiarg">fullname</span>)
: [[API BNCheckBattleTagInviteToUnit|BNCheckBattleTagInviteToUnit]](<span class="apiarg">unit</span>)
: [[API BNConnected|BNConnected]]() : <span class="apiret">connected</span> - Returns true if the WoW Client is connected to Battle.net.
: [[API BNDeclineFriendInvite|BNDeclineFriendInvite]](<span class="apiarg">ID</span>)
: [[API BNFeaturesEnabledAndConnected|BNFeaturesEnabledAndConnected]]()
: [[API BNFeaturesEnabled|BNFeaturesEnabled]]()
: [[API BNGetBlockedInfo|BNGetBlockedInfo]](<span class="apiarg">index</span>)
: [[API BNGetDisplayName|BNGetDisplayName]](<span class="apiarg">bnetIdAccount</span>)
: [[API BNGetFOFInfo|BNGetFOFInfo]](<span class="apiarg">mutual, nonMutual, index</span>) : <span class="apiret">friendID, accountName, isMutual</span> - Returns info for the specified friend of a Battle.net friend.
: [[API BNGetFriendIndex|BNGetFriendIndex]](<span class="apiarg">presenceID</span>) : <span class="apiret">index</span>
: [[API BNGetFriendInviteInfo|BNGetFriendInviteInfo]](<span class="apiarg">inviteIndex</span>) : <span class="apiret">inviteID, accountName, isBattleTag, message, sentTime</span> - Returns info for a Battle.net friend invite.
: [[API BNGetInfo|BNGetInfo]]() : <span class="apiret">presenceID, battleTag, toonID, currentBroadcast, bnetAFK, bnetDND, isRIDEnabled</span> - Returns the player's own Battle.net info.
: [[API BNGetNumBlocked|BNGetNumBlocked]]()
: [[API BNGetNumFOF|BNGetNumFOF]](<span class="apiarg">ID, mutual, non</span>)
: [[API BNGetNumFriendInvites|BNGetNumFriendInvites]]()
: [[API BNGetNumFriends|BNGetNumFriends]]() : <span class="apiret">numBNetTotal, numBNetOnline, numBNetFavorite, numBNetFavoriteOnline</span> - Returns the amount of (online) Battle.net friends.
: [[API BNGetSelectedBlock|BNGetSelectedBlock]]()
: [[API BNGetSelectedFriend|BNGetSelectedFriend]]()
: [[API BNInviteFriend|BNInviteFriend]](<span class="apiarg">bnetIDGameAccount</span>)
: [[API BNIsBlocked|BNIsBlocked]](<span class="apiarg">ID</span>)
: [[API BNIsFriend|BNIsFriend]](<span class="apiarg">presenceID</span>)
: [[API BNIsSelf|BNIsSelf]](<span class="apiarg">presenceID</span>) - Returns true if the specified presenceID is your own, false otherwise.
: [[API BNRemoveFriend|BNRemoveFriend]](<span class="apiarg">ID</span>)
: [[API BNRequestFOFInfo|BNRequestFOFInfo]](<span class="apiarg">bnetIDAccount</span>)
: [[API BNRequestInviteFriend|BNRequestInviteFriend]](<span class="apiarg">presenceID [, tank, heal, dps]</span>)
: [[API BNSendFriendInviteByID|BNSendFriendInviteByID]](<span class="apiarg">ID, noteText</span>)
: [[API BNSendFriendInvite|BNSendFriendInvite]](<span class="apiarg">text, noteText</span>)
: [[API BNSendGameData|BNSendGameData]](<span class="apiarg">gameAccountID, prefix, text</span>) - Sends an addon comm message to a Battle.net friend.
: [[API BNSendVerifiedBattleTagInvite|BNSendVerifiedBattleTagInvite]]() - Unit should have been set with [[API BNCheckBattleTagInviteToUnit|BNCheckBattleTagInviteToUnit]] or [[API BNCheckBattleTagInviteToGuildMember|BNCheckBattleTagInviteToGuildMember]].
: [[API BNSendWhisper|BNSendWhisper]](<span class="apiarg">bnetAccountID, message</span>)
: [[API BNSetAFK|BNSetAFK]](<span class="apiarg">bool</span>) - Sets the player's online AFK status.
: [[API BNSetBlocked|BNSetBlocked]](<span class="apiarg">ID, bool</span>)
: [[API BNSetCustomMessage|BNSetCustomMessage]](<span class="apiarg">text</span>)
: [[API BNSetDND|BNSetDND]](<span class="apiarg">bool</span>) - Sets the player's online DND status.
: [[API BNSetFriendFavoriteFlag|BNSetFriendFavoriteFlag]](<span class="apiarg">id, isFavorite</span>) - Favorites a Battle.net friend.
: [[API BNSetFriendNote|BNSetFriendNote]](<span class="apiarg">bnetIDAccount, noteText</span>)
: [[API BNSetSelectedBlock|BNSetSelectedBlock]](<span class="apiarg">index</span>)
: [[API BNSetSelectedFriend|BNSetSelectedFriend]](<span class="apiarg">index</span>)
: [[API BNSummonFriendByIndex|BNSummonFriendByIndex]](<span class="apiarg">id</span>)
: [[API BNTokenFindName|BNTokenFindName]](<span class="apiarg">target</span>)
: [[API GetAutoCompletePresenceID|GetAutoCompletePresenceID]](<span class="apiarg">name</span>)
: [[API IsBNLogin|IsBNLogin]]()

==Groups==
: [[API C_PartyInfo.AllowedToDoPartyConversion|C_PartyInfo.AllowedToDoPartyConversion]](<span class="apiarg">toRaid</span>) : <span class="apiret">allowed</span>
: [[API C_PartyInfo.CanInvite|C_PartyInfo.CanInvite]]() : <span class="apiret">allowedToInvite</span>
: [[API C_PartyInfo.ConfirmConvertToRaid|C_PartyInfo.ConfirmConvertToRaid]]()
: [[API C_PartyInfo.ConfirmInviteTravelPass|C_PartyInfo.ConfirmInviteTravelPass]](<span class="apiarg">targetName, targetGUID</span>)
: [[API C_PartyInfo.ConfirmInviteUnit|C_PartyInfo.ConfirmInviteUnit]](<span class="apiarg">targetName</span>)
: [[API C_PartyInfo.ConfirmLeaveParty|C_PartyInfo.ConfirmLeaveParty]](<span class="apiarg">[category]</span>)
: [[API C_PartyInfo.ConvertToParty|C_PartyInfo.ConvertToParty]]() - Converts a raid group with 5 or less members to a party.
: [[API C_PartyInfo.ConvertToRaid|C_PartyInfo.ConvertToRaid]]() - Converts a party to a raid.
: [[API C_PartyInfo.DoCountdown|C_PartyInfo.DoCountdown]](<span class="apiarg">seconds</span>) : <span class="apiret">success</span>
: [[API C_PartyInfo.GetMinItemLevel|C_PartyInfo.GetMinItemLevel]](<span class="apiarg">avgItemLevelCategory</span>) : <span class="apiret">minItemLevel, playerNameWithLowestItemLevel</span>
: [[API C_PartyInfo.GetMinLevel|C_PartyInfo.GetMinLevel]](<span class="apiarg">[category]</span>) : <span class="apiret">minLevel</span>
: [[API C_PartyInfo.GetRestrictPings|C_PartyInfo.GetRestrictPings]]() : <span class="apiret">restrictTo</span>
: [[API C_PartyInfo.InviteUnit|C_PartyInfo.InviteUnit]](<span class="apiarg">targetName</span>) - Invites a player to your group.
: [[API C_PartyInfo.IsDelveInProgress|C_PartyInfo.IsDelveInProgress]]() : <span class="apiret">isInDelve</span>
: [[API C_PartyInfo.IsPartyFull|C_PartyInfo.IsPartyFull]](<span class="apiarg">[category]</span>) : <span class="apiret">isFull</span>
: [[API C_PartyInfo.IsPartyWalkIn|C_PartyInfo.IsPartyWalkIn]]() : <span class="apiret">isPartyWalkIn</span>
: [[API C_PartyInfo.LeaveParty|C_PartyInfo.LeaveParty]](<span class="apiarg">[category]</span>) - Leaves the group.
: [[API C_PartyInfo.SetRestrictPings|C_PartyInfo.SetRestrictPings]](<span class="apiarg">restrictTo</span>)
: [[API AcceptGroup|AcceptGroup]]() - Accepts the invitation from a group.
: [[API ConfirmReadyCheck|ConfirmReadyCheck]](<span class="apiarg">[isReady]</span>) - Responds to a ready check.
: [[API DeclineGroup|DeclineGroup]]() - Declines an invitation to a group.
: [[API DoReadyCheck|DoReadyCheck]]() - Initiates a ready check.
: [[API GetHomePartyInfo|GetHomePartyInfo]](<span class="apiarg">homePlayers</span>) : <span class="apiret">homePlayers</span>
: [[API GetInviteConfirmationInfo|GetInviteConfirmationInfo]](<span class="apiarg">guid</span>) : <span class="apiret">confirmationType, name, guid, rolesInvalid, willConvertToRaid, level, spec, itemLevel</span>
: [[API GetNextPendingInviteConfirmation|GetNextPendingInviteConfirmation]]()
: [[API GetNumGroupMembers|GetNumGroupMembers]](<span class="apiarg">[groupType]</span>) : <span class="apiret">numMembers</span> - Returns the number of players in the group.
: [[API GetNumSubgroupMembers|GetNumSubgroupMembers]](<span class="apiarg">[groupType]</span>) : <span class="apiret">numSubgroupMembers</span> - Returns the number of other players in the party or raid subgroup.
: [[API GetPendingInviteConfirmations|GetPendingInviteConfirmations]]()
: [[API GetReadyCheckStatus|GetReadyCheckStatus]](<span class="apiarg">unit</span>) - Returns a group member's response to the current ready check.
: [[API GetReadyCheckTimeLeft|GetReadyCheckTimeLeft]]()
: [[API InGuildParty|InGuildParty]]() : <span class="apiret">inGroup, numGuildPresent, numGuildRequired, xpMultiplier</span>
: [[API IsGUIDInGroup|IsGUIDInGroup]](<span class="apiarg">guid [, groupType]</span>) : <span class="apiret">inGroup</span>
: [[API IsInGroup|IsInGroup]](<span class="apiarg">[groupType]</span>) : <span class="apiret">inGroup</span> - Returns true if the player is in a group.
: [[API IsInGuildGroup|IsInGuildGroup]]() : <span class="apiret">inGuildGroup</span>
: [[API IsInRaid|IsInRaid]](<span class="apiarg">[groupType]</span>) : <span class="apiret">isInRaid</span> - Returns true if the player is in a raid.
: [[API PromoteToLeader|PromoteToLeader]](<span class="apiarg">unit</span>) - Promotes a unit to group leader.
: [[API RespondToInviteConfirmation|RespondToInviteConfirmation]](<span class="apiarg">guid, accept</span>)
: [[API UninviteUnit|UninviteUnit]](<span class="apiarg">name [, reason]</span>) {{apitag|hwevent}} - Removes a player from the group if you're the leader, or initiates a vote to kick.
: [[API UnitInAnyGroup|UnitInAnyGroup]](<span class="apiarg">[unit [, partyIndex]]</span>) : <span class="apiret">result</span>
: [[API UnitInParty|UnitInParty]](<span class="apiarg">[unit [, partyIndex]]</span>) : <span class="apiret">result</span> - Returns true if the unit is a member of your party.
: [[API UnitIsGroupLeader|UnitIsGroupLeader]](<span class="apiarg">unit [, partyCategory]</span>) : <span class="apiret">isLeader</span> - Returns whether the unit is the leader of a party or raid.
Cross Realm
: [[API C_PartyInfo.CanFormCrossFactionParties|C_PartyInfo.CanFormCrossFactionParties]]() : <span class="apiret">canFormCrossFactionParties</span>
: [[API C_PartyInfo.IsCrossFactionParty|C_PartyInfo.IsCrossFactionParty]](<span class="apiarg">[category]</span>) : <span class="apiret">isCrossFactionParty</span>

===Raid Groups===
: [[API ClearPartyAssignment|ClearPartyAssignment]]()
: [[API DemoteAssistant|DemoteAssistant]](<span class="apiarg">unit</span>) - Demotes player from assistant status. Requires raid leadership.
: [[API GetAllowLowLevelRaid|GetAllowLowLevelRaid]]() : <span class="apiret">result</span> - Returns whether joining low-level raids is enabled for the current character.
: [[API GetPartyAssignment|GetPartyAssignment]](<span class="apiarg">assignment [, raidmember [, exactMatch]]</span>) : <span class="apiret">isAssigned</span> - Returns true if a group member is assigned the main tank/assist role.
: [[API GetRaidRosterInfo|GetRaidRosterInfo]](<span class="apiarg">raidIndex</span>) : <span class="apiret">name, rank, subgroup, level, class, fileName, zone, online, isDead, role, isML, combatRole</span> - Returns info for a member of your raid.
: [[API InitiateRolePoll|InitiateRolePoll]]() : <span class="apiret">result</span>
: [[API IsEveryoneAssistant|IsEveryoneAssistant]]()
: [[API PromoteToAssistant|PromoteToAssistant]](<span class="apiarg">unit</span>) - Promotes player to assistant status. Requires raid leadership.
: [[API SetAllowLowLevelRaid|SetAllowLowLevelRaid]](<span class="apiarg">[allow]</span>) - Controls whether the current character can join low-level raids.
: [[API SetEveryoneIsAssistant|SetEveryoneIsAssistant]]()
: [[API SetPartyAssignment|SetPartyAssignment]](<span class="apiarg">assignment, player</span>) {{apitag|protected}}
: [[API SetRaidSubgroup|SetRaidSubgroup]](<span class="apiarg">index, subgroup</span>) {{apitag|nocombat}} - Move a raid member from his current subgroup into a different (non-full) subgroup.
: [[API SwapRaidSubgroup|SwapRaidSubgroup]](<span class="apiarg">index1, index2</span>) {{apitag|nocombat}} - Swaps two raid members into different groups.
: [[API UnitInRaid|UnitInRaid]](<span class="apiarg">[unit [, partyIndex]]</span>) : <span class="apiret">result</span> - Returns the index if the unit is in your raid group.
: [[API UnitInSubgroup|UnitInSubgroup]](<span class="apiarg">[unit [, partyIndex]]</span>) : <span class="apiret">result</span>
Relates to [[Target_marker|Raid Target]]s and [[World Marker]]s.
: [[API CanBeRaidTarget|CanBeRaidTarget]](<span class="apiarg">unit</span>) : <span class="apiret">canBeRaidTarget</span> - Returns true if the unit can be marked with a raid target icon.
: [[API ClearRaidMarker|ClearRaidMarker]](<span class="apiarg">index</span>) - Removes a raid marker from the world.
: [[API GetRaidTargetIndex|GetRaidTargetIndex]](<span class="apiarg">unit</span>) : <span class="apiret">index</span> - Returns the [[Target marker|raid target]] of a unit.
: [[API IsRaidMarkerActive|IsRaidMarkerActive]](<span class="apiarg">index</span>) - Returns whether or not the raid marker specified by index is active.
: [[API PlaceRaidMarker|PlaceRaidMarker]](<span class="apiarg">index</span>) {{apitag|protected}} - Brings up a targeting circle to place a raid marker in the world.
: [[API SetRaidTarget|SetRaidTarget]](<span class="apiarg">unit, index</span>) - Assigns a [[Target marker|raid target]] icon to a unit.
: [[API SetRaidTargetProtected|SetRaidTargetProtected]](<span class="apiarg">unit, index</span>)
: [[API SetRaidTargetIcon|SetRaidTargetIcon]](<span class="apiarg">unit, index</span>) {{apitag|framexml}} - Sets or resets a raid icon on a unit.
Raid Profiles
: [[API CreateNewRaidProfile|CreateNewRaidProfile]](<span class="apiarg">name [, baseOnProfile]</span>)
: [[API DeleteRaidProfile|DeleteRaidProfile]](<span class="apiarg">profile</span>)
: [[API GetMaxNumCUFProfiles|GetMaxNumCUFProfiles]]()
: [[API GetNumRaidProfiles|GetNumRaidProfiles]]()
: [[API GetRaidProfileFlattenedOptions|GetRaidProfileFlattenedOptions]](<span class="apiarg">profile</span>)
: [[API GetRaidProfileName|GetRaidProfileName]](<span class="apiarg">index</span>)
: [[API GetRaidProfileOption|GetRaidProfileOption]](<span class="apiarg">profile, optionName</span>)
: [[API GetRaidProfileSavedPosition|GetRaidProfileSavedPosition]](<span class="apiarg">profile</span>)
: [[API HasLoadedCUFProfiles|HasLoadedCUFProfiles]]()
: [[API RaidProfileExists|RaidProfileExists]](<span class="apiarg">profile</span>)
: [[API RaidProfileHasUnsavedChanges|RaidProfileHasUnsavedChanges]]()
: [[API RestoreRaidProfileFromCopy|RestoreRaidProfileFromCopy]]()
: [[API SaveRaidProfileCopy|SaveRaidProfileCopy]](<span class="apiarg">profile</span>)
: [[API SetRaidProfileOption|SetRaidProfileOption]](<span class="apiarg">profile, optionName, value</span>)
: [[API SetRaidProfileSavedPosition|SetRaidProfileSavedPosition]](<span class="apiarg">profile, isDynamic, topPoint, topOffset, bottomPoint, bottomOffset, leftPoint, leftOffset</span>)

===Party Sync===
[[Party Sync]] was added in [[Patch 8.2.5]]
: [[API C_LevelLink.IsActionLocked|C_LevelLink.IsActionLocked]](<span class="apiarg">actionID</span>) : <span class="apiret">isLocked</span>
: [[API C_LevelLink.IsSpellLocked|C_LevelLink.IsSpellLocked]](<span class="apiarg">spellID</span>) : <span class="apiret">isLocked</span>
: [[API C_QuestLog.IsQuestDisabledForSession|C_QuestLog.IsQuestDisabledForSession]](<span class="apiarg">questID</span>) : <span class="apiret">isDisabled</span>
: [[API C_QuestLog.IsQuestReplayable|C_QuestLog.IsQuestReplayable]](<span class="apiarg">questID</span>) : <span class="apiret">isReplayable</span>
: [[API C_QuestLog.IsQuestReplayedRecently|C_QuestLog.IsQuestReplayedRecently]](<span class="apiarg">questID</span>) : <span class="apiret">recentlyReplayed</span>
: [[API C_QuestLog.QuestHasQuestSessionBonus|C_QuestLog.QuestHasQuestSessionBonus]](<span class="apiarg">questID</span>) : <span class="apiret">hasBonus</span>
: [[API C_QuestSession.CanStart|C_QuestSession.CanStart]]() : <span class="apiret">allowed</span>
: [[API C_QuestSession.CanStop|C_QuestSession.CanStop]]() : <span class="apiret">allowed</span>
: [[API C_QuestSession.Exists|C_QuestSession.Exists]]() : <span class="apiret">exists</span>
: [[API C_QuestSession.GetAvailableSessionCommand|C_QuestSession.GetAvailableSessionCommand]]() : <span class="apiret">command</span>
: [[API C_QuestSession.GetPendingCommand|C_QuestSession.GetPendingCommand]]() : <span class="apiret">command</span>
: [[API C_QuestSession.GetProposedMaxLevelForSession|C_QuestSession.GetProposedMaxLevelForSession]]() : <span class="apiret">proposedMaxLevel</span>
: [[API C_QuestSession.GetSessionBeginDetails|C_QuestSession.GetSessionBeginDetails]]() : <span class="apiret">details</span>
: [[API C_QuestSession.GetSuperTrackedQuest|C_QuestSession.GetSuperTrackedQuest]]() : <span class="apiret">questID</span>
: [[API C_QuestSession.HasJoined|C_QuestSession.HasJoined]]() : <span class="apiret">hasJoined</span>
: [[API C_QuestSession.HasPendingCommand|C_QuestSession.HasPendingCommand]]() : <span class="apiret">hasPendingCommand</span>
: [[API C_QuestSession.RequestSessionStart|C_QuestSession.RequestSessionStart]]()
: [[API C_QuestSession.RequestSessionStop|C_QuestSession.RequestSessionStop]]()
: [[API C_QuestSession.SendSessionBeginResponse|C_QuestSession.SendSessionBeginResponse]](<span class="apiarg">beginSession</span>)
: [[API C_QuestSession.SetQuestIsSuperTracked|C_QuestSession.SetQuestIsSuperTracked]](<span class="apiarg">questID, superTrack</span>)
: [[API ConfirmBNRequestInviteFriend|ConfirmBNRequestInviteFriend]](<span class="apiarg">presenceID [, tank [, healer [, dps]]]</span>)

==Group Finder==
The Looking For Group tool was added in [[Patch 2.0.1]]. It was renamed to the [[Dungeon Finder]] in [[Patch 3.3.0]] and raid queuing moved to a separate [[Raid Browser]]. The [[Raid Finder]] was added in [[Patch 4.3.0]] and merged into the Dungeon Finder in [[Patch 5.0.4]]. The Dungeon Finder was reworked in [[Patch 6.0.2]] into the [[Group Finder]].
: [[API C_LFGInfo.CanPlayerUseGroupFinder|C_LFGInfo.CanPlayerUseGroupFinder]]() : <span class="apiret">canUse, failureReason</span>
: [[API C_LFGInfo.CanPlayerUseLFD|C_LFGInfo.CanPlayerUseLFD]]() : <span class="apiret">canUse, failureReason</span>
: [[API C_LFGInfo.CanPlayerUseLFR|C_LFGInfo.CanPlayerUseLFR]]() : <span class="apiret">canUse, failureReason</span>
: [[API C_LFGInfo.CanPlayerUsePremadeGroup|C_LFGInfo.CanPlayerUsePremadeGroup]]() : <span class="apiret">canUse, failureReason</span>
: [[API C_LFGInfo.CanPlayerUsePVP|C_LFGInfo.CanPlayerUsePVP]]() : <span class="apiret">canUse, failureReason</span>
: [[API C_LFGInfo.CanPlayerUseScenarioFinder|C_LFGInfo.CanPlayerUseScenarioFinder]]() : <span class="apiret">canUse, failureReason</span>
: [[API C_LFGInfo.ConfirmLfgExpandSearch|C_LFGInfo.ConfirmLfgExpandSearch]]()
: [[API C_LFGInfo.GetAllEntriesForCategory|C_LFGInfo.GetAllEntriesForCategory]](<span class="apiarg">category</span>) : <span class="apiret">lfgDungeonIDs</span>
: [[API C_LFGInfo.GetDungeonInfo|C_LFGInfo.GetDungeonInfo]](<span class="apiarg">lfgDungeonID</span>) : <span class="apiret">dungeonInfo</span>
: [[API C_LFGInfo.GetLFDLockStates|C_LFGInfo.GetLFDLockStates]]() : <span class="apiret">lockInfo</span>
: [[API C_LFGInfo.GetRoleCheckDifficultyDetails|C_LFGInfo.GetRoleCheckDifficultyDetails]]() : <span class="apiret">maxLevel, isLevelReduced</span>
: [[API C_LFGInfo.HideNameFromUI|C_LFGInfo.HideNameFromUI]](<span class="apiarg">dungeonID</span>) : <span class="apiret">shouldHide</span>
: [[API C_LFGInfo.IsGroupFinderEnabled|C_LFGInfo.IsGroupFinderEnabled]]() : <span class="apiret">enabled</span>
: [[API C_LFGInfo.IsInLFGFollowerDungeon|C_LFGInfo.IsInLFGFollowerDungeon]]() : <span class="apiret">result</span>
: [[API C_LFGInfo.IsLFDEnabled|C_LFGInfo.IsLFDEnabled]]() : <span class="apiret">enabled</span>
: [[API C_LFGInfo.IsLFGFollowerDungeon|C_LFGInfo.IsLFGFollowerDungeon]](<span class="apiarg">dungeonID</span>) : <span class="apiret">result</span>
: [[API C_LFGInfo.IsLFREnabled|C_LFGInfo.IsLFREnabled]]() : <span class="apiret">enabled</span>
: [[API C_LFGInfo.IsPremadeGroupEnabled|C_LFGInfo.IsPremadeGroupEnabled]]() : <span class="apiret">enabled</span>
: [[API AcceptProposal|AcceptProposal]]() - Enters the Dungeon if the LFG queue is ready.
: [[API GetDungeonForRandomSlot|GetDungeonForRandomSlot]](<span class="apiarg">randomID, index</span>)
: [[API GetGroupMemberCounts|GetGroupMemberCounts]]()
: [[API GetNumDungeonForRandomSlot|GetNumDungeonForRandomSlot]](<span class="apiarg">randomID</span>)
: [[API GetNumRandomDungeons|GetNumRandomDungeons]]() : <span class="apiret">numRandomDungeons</span> - Returns the number of specific dungeons that can be queued for.
: [[API GetRandomDungeonBestChoice|GetRandomDungeonBestChoice]]() - Returns the suggested random dungeon ID.
: [[API GroupHasOfflineMember|GroupHasOfflineMember]]()
: [[API IsAllowedToUserTeleport|IsAllowedToUserTeleport]]() : <span class="apiret">allowedToTeleport</span>
: [[API IsServerControlledBackfill|IsServerControlledBackfill]]()
: [[API RejectProposal|RejectProposal]]() - Declines a LFG invite and leaves the queue.
: [[API RequestBattlegroundInstanceInfo|RequestBattlegroundInstanceInfo]](<span class="apiarg">index</span>) - Requests the available instances of a battleground.

===LFGList===
: [[API C_LFGList.AcceptInvite|C_LFGList.AcceptInvite]](<span class="apiarg">resultID</span>)
: [[API C_LFGList.ApplyToGroup|C_LFGList.ApplyToGroup]](<span class="apiarg">resultID [, tankOK [, healerOK [, damageOK]]]</span>)
: [[API C_LFGList.CanActiveEntryUseAutoAccept|C_LFGList.CanActiveEntryUseAutoAccept]]() : <span class="apiret">canUseAutoAccept</span>
: [[API C_LFGList.CancelApplication|C_LFGList.CancelApplication]](<span class="apiarg">resultID</span>) {{apitag|hwevent}}
: [[API C_LFGList.CanCreateQuestGroup|C_LFGList.CanCreateQuestGroup]](<span class="apiarg">questID</span>) : <span class="apiret">canCreate</span>
: [[API C_LFGList.CanCreateScenarioGroup|C_LFGList.CanCreateScenarioGroup]](<span class="apiarg">scenarioID</span>) : <span class="apiret">canCreate</span>
: [[API C_LFGList.ClearApplicationTextFields|C_LFGList.ClearApplicationTextFields]]()
: [[API C_LFGList.ClearCreationTextFields|C_LFGList.ClearCreationTextFields]]()
: [[API C_LFGList.ClearSearchResults|C_LFGList.ClearSearchResults]]()
: [[API C_LFGList.ClearSearchTextFields|C_LFGList.ClearSearchTextFields]]()
: [[API C_LFGList.CopyActiveEntryInfoToCreationFields|C_LFGList.CopyActiveEntryInfoToCreationFields]]()
: [[API C_LFGList.CreateListing|C_LFGList.CreateListing]](<span class="apiarg">activityID, itemLevel, honorLevel [, autoAccept [, privateGroup [, questID]]]</span>) : <span class="apiret">success</span> {{apitag|hwevent}} - Creates a group finder listing.
: [[API C_LFGList.CreateScenarioListing|C_LFGList.CreateScenarioListing]](<span class="apiarg">activityID, itemLevel, autoAccept, privateGroup, scenarioID</span>) : <span class="apiret">canCreate</span>
: [[API C_LFGList.DeclineApplicant|C_LFGList.DeclineApplicant]](<span class="apiarg">applicantID</span>)
: [[API C_LFGList.DeclineInvite|C_LFGList.DeclineInvite]](<span class="apiarg">searchResultID</span>)
: [[API C_LFGList.DoesEntryTitleMatchPrebuiltTitle|C_LFGList.DoesEntryTitleMatchPrebuiltTitle]](<span class="apiarg">activityID, groupID [, playstyle]</span>) : <span class="apiret">matches</span>
: [[API C_LFGList.GetActiveEntryInfo|C_LFGList.GetActiveEntryInfo]]() : <span class="apiret">entryData</span> - Returns information about your currently listed group.
: [[API C_LFGList.GetActivityFullName|C_LFGList.GetActivityFullName]](<span class="apiarg">activityID [, questID [, showWarmode]]</span>) : <span class="apiret">fullName</span>
: [[API C_LFGList.GetActivityGroupInfo|C_LFGList.GetActivityGroupInfo]](<span class="apiarg">groupID</span>) : <span class="apiret">name, orderIndex</span> - Returns info for an activity group.
: [[API C_LFGList.GetActivityIDForQuestID|C_LFGList.GetActivityIDForQuestID]](<span class="apiarg">questID</span>)
: [[API C_LFGList.GetActivityInfoExpensive|C_LFGList.GetActivityInfoExpensive]](<span class="apiarg">activityID</span>) : <span class="apiret">currentArea</span> - Returns the zone associated with an activity.
: [[API C_LFGList.GetActivityInfoTable|C_LFGList.GetActivityInfoTable]](<span class="apiarg">activityID [, questID [, showWarmode]]</span>) : <span class="apiret">activityInfo</span>
: [[API C_LFGList.GetAdvancedFilter|C_LFGList.GetAdvancedFilter]]() : <span class="apiret">options</span>
: [[API C_LFGList.GetApplicantBestDungeonScore|C_LFGList.GetApplicantBestDungeonScore]](<span class="apiarg">localID, applicantIndex</span>) : <span class="apiret">bestDungeonScoreForListing</span>
: [[API C_LFGList.GetApplicantDungeonScoreForListing|C_LFGList.GetApplicantDungeonScoreForListing]](<span class="apiarg">localID, applicantIndex, activityID</span>) : <span class="apiret">bestDungeonScoreForListing</span>
: [[API C_LFGList.GetApplicantInfo|C_LFGList.GetApplicantInfo]](<span class="apiarg">applicantID</span>) : <span class="apiret">applicantData</span> - Returns status informations and custom message of an applicant.
: [[API C_LFGList.GetApplicantMemberInfo|C_LFGList.GetApplicantMemberInfo]](<span class="apiarg">applicantID, memberIndex</span>) : <span class="apiret">name, class, localizedClass, level, itemLevel, honorLevel, tank, healer, damage, assignedRole, relationship, dungeonScore, pvpItemLevel</span> - Returns info for an applicant.
: [[API C_LFGList.GetApplicantMemberStats|C_LFGList.GetApplicantMemberStats]](<span class="apiarg">applicantID, memberIndex</span>) : <span class="apiret">stats</span> - Returns the [[Proving Grounds]] stats of an applicant.
: [[API C_LFGList.GetApplicantPvpRatingInfoForListing|C_LFGList.GetApplicantPvpRatingInfoForListing]](<span class="apiarg">localID, applicantIndex, activityID</span>) : <span class="apiret">pvpRatingInfo</span>
: [[API C_LFGList.GetApplicants|C_LFGList.GetApplicants]]() : <span class="apiret">applicants</span> - Returns the list of applicants to your group.
: [[API C_LFGList.GetApplicationInfo|C_LFGList.GetApplicationInfo]](<span class="apiarg">searchResultID</span>)
: [[API C_LFGList.GetApplications|C_LFGList.GetApplications]]()
: [[API C_LFGList.GetAvailableActivities|C_LFGList.GetAvailableActivities]](<span class="apiarg">[categoryID [, groupID [, filter]]]</span>) : <span class="apiret">activities</span> - Returns a list of available LFG activities.
: [[API C_LFGList.GetAvailableActivityGroups|C_LFGList.GetAvailableActivityGroups]](<span class="apiarg">categoryID [, filter]</span>) : <span class="apiret">groups</span> - Returns a list of available LFG groups.
: [[API C_LFGList.GetAvailableCategories|C_LFGList.GetAvailableCategories]](<span class="apiarg">[filter]</span>) : <span class="apiret">categories</span> - Returns a list of available LFG categories.
: [[API C_LFGList.GetAvailableLanguageSearchFilter|C_LFGList.GetAvailableLanguageSearchFilter]]()
: [[API C_LFGList.GetAvailableRoles|C_LFGList.GetAvailableRoles]]()
: [[API C_LFGList.GetDefaultLanguageSearchFilter|C_LFGList.GetDefaultLanguageSearchFilter]]()
: [[API C_LFGList.GetFilteredSearchResults|C_LFGList.GetFilteredSearchResults]]() : <span class="apiret">totalResultsFound, filteredResults</span>
: [[API C_LFGList.GetKeystoneForActivity|C_LFGList.GetKeystoneForActivity]](<span class="apiarg">activityID</span>) : <span class="apiret">level</span>
: [[API C_LFGList.GetLanguageSearchFilter|C_LFGList.GetLanguageSearchFilter]]()
: [[API C_LFGList.GetLfgCategoryInfo|C_LFGList.GetLfgCategoryInfo]](<span class="apiarg">categoryID</span>) : <span class="apiret">categoryData</span>
: [[API C_LFGList.GetNumApplicants|C_LFGList.GetNumApplicants]]()
: [[API C_LFGList.GetNumApplications|C_LFGList.GetNumApplications]]()
: [[API C_LFGList.GetNumInvitedApplicantMembers|C_LFGList.GetNumInvitedApplicantMembers]]()
: [[API C_LFGList.GetNumPendingApplicantMembers|C_LFGList.GetNumPendingApplicantMembers]]()
: [[API C_LFGList.GetOwnedKeystoneActivityAndGroupAndLevel|C_LFGList.GetOwnedKeystoneActivityAndGroupAndLevel]](<span class="apiarg">[getTimewalking]</span>) : <span class="apiret">activityID, groupID, keystoneLevel</span>
: [[API C_LFGList.GetPlaystyleString|C_LFGList.GetPlaystyleString]](<span class="apiarg">playstyle, activityInfo</span>) : <span class="apiret">playstyleString</span>
: [[API C_LFGList.GetRoleCheckInfo|C_LFGList.GetRoleCheckInfo]]()
: [[API C_LFGList.GetSearchResultEncounterInfo|C_LFGList.GetSearchResultEncounterInfo]](<span class="apiarg">searchResultID</span>)
: [[API C_LFGList.GetSearchResultFriends|C_LFGList.GetSearchResultFriends]](<span class="apiarg">searchResultID</span>)
: [[API C_LFGList.GetSearchResultInfo|C_LFGList.GetSearchResultInfo]](<span class="apiarg">searchResultID</span>) : <span class="apiret">searchResultData</span>
: [[API C_LFGList.GetSearchResultMemberCounts|C_LFGList.GetSearchResultMemberCounts]](<span class="apiarg">searchResultID</span>)
: [[API C_LFGList.GetSearchResultMemberInfo|C_LFGList.GetSearchResultMemberInfo]](<span class="apiarg">searchResultID, memberIndex</span>)
: [[API C_LFGList.GetSearchResults|C_LFGList.GetSearchResults]]() : <span class="apiret">totalResultsFound, results</span>
: [[API C_LFGList.HasActiveEntryInfo|C_LFGList.HasActiveEntryInfo]]() : <span class="apiret">hasActiveEntryInfo</span>
: [[API C_LFGList.HasActivityList|C_LFGList.HasActivityList]]()
: [[API C_LFGList.HasSearchResultInfo|C_LFGList.HasSearchResultInfo]](<span class="apiarg">searchResultID</span>) : <span class="apiret">hasSearchResultInfo</span>
: [[API C_LFGList.InviteApplicant|C_LFGList.InviteApplicant]](<span class="apiarg">applicantID</span>)
: [[API C_LFGList.IsCurrentlyApplying|C_LFGList.IsCurrentlyApplying]]()
: [[API C_LFGList.IsPlayerAuthenticatedForLFG|C_LFGList.IsPlayerAuthenticatedForLFG]](<span class="apiarg">[activityID]</span>) : <span class="apiret">isAuthenticated</span>
: [[API C_LFGList.RefreshApplicants|C_LFGList.RefreshApplicants]]()
: [[API C_LFGList.RemoveApplicant|C_LFGList.RemoveApplicant]](<span class="apiarg">applicantID</span>)
: [[API C_LFGList.RemoveListing|C_LFGList.RemoveListing]]()
: [[API C_LFGList.RequestAvailableActivities|C_LFGList.RequestAvailableActivities]]()
: [[API C_LFGList.SaveAdvancedFilter|C_LFGList.SaveAdvancedFilter]](<span class="apiarg">options</span>)
: [[API C_LFGList.SaveLanguageSearchFilter|C_LFGList.SaveLanguageSearchFilter]](<span class="apiarg">enabled</span>)
: [[API C_LFGList.Search|C_LFGList.Search]](<span class="apiarg">categoryID [, filter [, preferredFilters [, languageFilter [, searchCrossFactionListings [, advancedFilter]]]]]</span>)
: [[API C_LFGList.SetApplicantMemberRole|C_LFGList.SetApplicantMemberRole]](<span class="apiarg">applicantID, memberIndex, role</span>)
: [[API C_LFGList.SetEntryTitle|C_LFGList.SetEntryTitle]](<span class="apiarg">activityID, groupID [, playstyle]</span>)
: [[API C_LFGList.SetSearchToActivity|C_LFGList.SetSearchToActivity]](<span class="apiarg">activityID</span>)
: [[API C_LFGList.SetSearchToQuestID|C_LFGList.SetSearchToQuestID]](<span class="apiarg">questID</span>)
: [[API C_LFGList.SetSearchToScenarioID|C_LFGList.SetSearchToScenarioID]](<span class="apiarg">scenarioID</span>)
: [[API C_LFGList.UpdateListing|C_LFGList.UpdateListing]](<span class="apiarg">activityID, itemLevel, honorLevel, autoAccept, privateGroup [, questID [, mythicPlusRating [, pvpRating [, selectedPlaystyle [, isCrossFaction]]]]]</span>)
: [[API C_LFGList.ValidateRequiredDungeonScore|C_LFGList.ValidateRequiredDungeonScore]](<span class="apiarg">dungeonScore</span>) : <span class="apiret">passes</span>
: [[API C_LFGList.ValidateRequiredPvpRatingForActivity|C_LFGList.ValidateRequiredPvpRatingForActivity]](<span class="apiarg">activityID, rating</span>) : <span class="apiret">passes</span>

===LFG===
LFG is used for for generic functions/values that may be used for LFD, LFR, and any other LF_ system we may implement in the future.<sup>[https://github.com/Gethe/wow-ui-source/blob/live/Interface/FrameXML/LFGFrame.lua]</sup>
: [[API CanPartyLFGBackfill|CanPartyLFGBackfill]]() - Returns whether the party is eligible to recruit additional members from the LFG pool.
: [[API ClearAllLFGDungeons|ClearAllLFGDungeons]](<span class="apiarg">category</span>)
: [[API CompleteLFGReadyCheck|CompleteLFGReadyCheck]](<span class="apiarg">isReady</span>)
: [[API CompleteLFGRoleCheck|CompleteLFGRoleCheck]](<span class="apiarg">isReady</span>) - Returns true if the role check was successful.
: [[API GetLFGBootProposal|GetLFGBootProposal]]() : <span class="apiret">inProgress, didVote, myVote, targetName, totalVotes, bootVotes, timeLeft, reason</span> - Returns info for a LFG votekick in progress.
: [[API GetLFGCategoryForID|GetLFGCategoryForID]](<span class="apiarg">partySlot</span>)
: [[API GetLFGCompletionReward|GetLFGCompletionReward]]()
: [[API GetLFGCompletionRewardItem|GetLFGCompletionRewardItem]](<span class="apiarg">rewardIndex</span>)
: [[API GetLFGCompletionRewardItemLink|GetLFGCompletionRewardItemLink]](<span class="apiarg">rewardIndex</span>)
: [[API GetLFGDeserterExpiration|GetLFGDeserterExpiration]]() : <span class="apiret">expiryTime</span> - Returns the time at which you may once again use the dungeon finder after prematurely leaving a group.
: [[API GetLFGDungeonEncounterInfo|GetLFGDungeonEncounterInfo]](<span class="apiarg">dungeonID, encounterIndex</span>) : <span class="apiret">bossName, texture, isKilled, unknown4</span>
: [[API GetLFGDungeonInfo|GetLFGDungeonInfo]](<span class="apiarg">dungeonID</span>) : <span class="apiret">name, typeID, subtypeID, minLevel, maxLevel, recLevel, minRecLevel, maxRecLevel, expansionLevel, groupID, textureFilename, difficulty, maxPlayers, description, isHoliday, bonusRepAmount, minPlayers, isTimeWalker, name2, minGearLevel, isScalingDungeon, lfgMapID</span> - Returns info for a LFG dungeon.
: [[API GetLFGDungeonNumEncounters|GetLFGDungeonNumEncounters]](<span class="apiarg">dungeonID</span>) : <span class="apiret">numEncounters, numCompleted</span>
: [[API GetLFGDungeonRewardCapBarInfo|GetLFGDungeonRewardCapBarInfo]](<span class="apiarg">dungeonID</span>) : <span class="apiret">currencyID, dungeonID, quantity, limit, overallQuantity, overallLimit, periodPurseQuantity, periodPurseLimit, purseQuantity, purseLimit</span> - Returns the weekly limits reward for a currency (e.g. Valor Point Cap).
: [[API GetLFGDungeonRewardCapInfo|GetLFGDungeonRewardCapInfo]](<span class="apiarg">dungeonID</span>)
: [[API GetLFGDungeonRewardInfo|GetLFGDungeonRewardInfo]](<span class="apiarg">dungeonID, rewardIndex</span>)
: [[API GetLFGDungeonRewardLink|GetLFGDungeonRewardLink]](<span class="apiarg">dungeonID, rewardIndex</span>)
: [[API GetLFGDungeonRewards|GetLFGDungeonRewards]](<span class="apiarg">dungeonID</span>)
: [[API GetLFGDungeonShortageRewardInfo|GetLFGDungeonShortageRewardInfo]](<span class="apiarg">dungeonID, shortageIndex, rewardIndex</span>)
: [[API GetLFGDungeonShortageRewardLink|GetLFGDungeonShortageRewardLink]](<span class="apiarg">dungeonID, shortageIndex, rewardIndex</span>)
: [[API GetLFGInfoServer|GetLFGInfoServer]](<span class="apiarg">category [, lfgID]</span>)
: [[API GetLFGInviteRoleAvailability|GetLFGInviteRoleAvailability]](<span class="apiarg">roleID</span>)
: [[API GetLFGInviteRoleRestrictions|GetLFGInviteRoleRestrictions]](<span class="apiarg">roleID</span>)
: [[API GetLFGProposal|GetLFGProposal]]() : <span class="apiret">proposalExists, id, typeID, subtypeID, name, texture, role, hasResponded, totalEncounters, completedEncounters, numMembers, isLeader, isHoliday, proposalCategory</span>
: [[API GetLFGProposalEncounter|GetLFGProposalEncounter]](<span class="apiarg">encounterIndex</span>)
: [[API GetLFGProposalMember|GetLFGProposalMember]](<span class="apiarg">memberIndex</span>) - Returns info about the players in the LFG proposal.
: [[API GetLFGQueuedList|GetLFGQueuedList]](<span class="apiarg">category [, table]</span>)
: [[API GetLFGQueueStats|GetLFGQueueStats]](<span class="apiarg">category [, activeID]</span>) : <span class="apiret">hasData, leaderNeeds, tankNeeds, healerNeeds, dpsNeeds, totalTanks, totalHealers, totalDPS, instanceType, instanceSubType, instanceName, averageWait, tankWait, healerWait, dpsWait, myWait, queuedTime, activeID</span> - Returns info for the current LFG queue.
: [[API GetLFGRandomCooldownExpiration|GetLFGRandomCooldownExpiration]]() : <span class="apiret">expiryTime</span> - Returns the time at which you may once again queue for a random dungeon.
: [[API GetLFGRandomDungeonInfo|GetLFGRandomDungeonInfo]](<span class="apiarg">index</span>) : <span class="apiret">id, name, typeID, subtypeID, minLevel, maxLevel, recLevel, minRecLevel, maxRecLevel, expansionLevel, groupID, textureFilename, difficultyID, maxPlayers, description, isHoliday, bonusRepAmount, minPlayers, isTimeWalker, name2, minGearLevel, isScalingDungeon</span> - Returns information about a random dungeon queue.
: [[API GetLFGReadyCheckUpdate|GetLFGReadyCheckUpdate]]()
: [[API GetLFGReadyCheckUpdateBattlegroundInfo|GetLFGReadyCheckUpdateBattlegroundInfo]]()
: [[API GetLFGRoles|GetLFGRoles]]() : <span class="apiret">isLeader, isTank, isHealer, isDPS</span> - Returns the roles the player signed up for in the Dungeon Finder.
: [[API GetLFGRoleShortageRewards|GetLFGRoleShortageRewards]](<span class="apiarg">dungeonID, shortageSeverity</span>) : <span class="apiret">eligible, forTank, forHealer, forDamage, itemCount, money, xp</span> - Returns info for the LFG [[Call_to_Arms_(dungeon)|Call to Arms]] rewards.
: [[API GetLFGRoleUpdate|GetLFGRoleUpdate]]()
: [[API GetLFGRoleUpdateBattlegroundInfo|GetLFGRoleUpdateBattlegroundInfo]]() : <span class="apiret">queueName</span>
: [[API GetLFGRoleUpdateMember|GetLFGRoleUpdateMember]](<span class="apiarg">memberIndex</span>)
: [[API GetLFGRoleUpdateSlot|GetLFGRoleUpdateSlot]](<span class="apiarg">index</span>) : <span class="apiret">dungeonID, dungeonType, dungeonSubType</span>
: [[API GetLFGSuspendedPlayers|GetLFGSuspendedPlayers]](<span class="apiarg">category</span>)
: [[API GetPartyLFGBackfillInfo|GetPartyLFGBackfillInfo]]() - Returns information about the dungeon for which you may currently recruit additional members from the LFG pool.
: [[API GetPartyLFGID|GetPartyLFGID]]()
: [[API HasLFGRestrictions|HasLFGRestrictions]]() : <span class="apiret">isRestricted</span> - Returns whether the player is in a random party formed by the dungeon finder system.
: [[API IsInLFGDungeon|IsInLFGDungeon]]() : <span class="apiret">inLFGDungeon</span>
: [[API IsLFGComplete|IsLFGComplete]]() : <span class="apiret">isComplete</span> - Returns whether you have currently finished a Dungeon Finder instance.
: [[API IsLFGDungeonJoinable|IsLFGDungeonJoinable]](<span class="apiarg">dungeonID</span>) : <span class="apiret">isAvailableForAll, isAvailableForPlayer, hideIfNotJoinable, totalGroupSizeRequired</span> - Returns whether you can queue for a particular dungeon
: [[API IsPartyLFG|IsPartyLFG]]()
: [[API JoinLFG|JoinLFG]](<span class="apiarg">category</span>)
: [[API JoinSingleLFG|JoinSingleLFG]](<span class="apiarg">category, lfgID</span>)
: [[API LeaveLFG|LeaveLFG]](<span class="apiarg">category</span>)
: [[API LeaveSingleLFG|LeaveSingleLFG]](<span class="apiarg">category, lfgID</span>)
: [[API LFGTeleport|LFGTeleport]](<span class="apiarg">toSafety</span>) - Teleports the player to or from a LFG dungeon.
: [[API PartyLFGStartBackfill|PartyLFGStartBackfill]]()
: [[API RefreshLFGList|RefreshLFGList]]()
: [[API SearchLFGGetEncounterResults|SearchLFGGetEncounterResults]](<span class="apiarg">index, encounterIndex</span>)
: [[API SearchLFGGetJoinedID|SearchLFGGetJoinedID]]() - Returns the currently selected raid ID.
: [[API SearchLFGGetNumResults|SearchLFGGetNumResults]]() : <span class="apiret">numResults, totalResults</span>
: [[API SearchLFGGetPartyResults|SearchLFGGetPartyResults]](<span class="apiarg">index, partyIndex</span>) : <span class="apiret">...</span>
: [[API SearchLFGGetResults|SearchLFGGetResults]](<span class="apiarg">index</span>) : <span class="apiret">...</span>
: [[API SearchLFGLeave|SearchLFGLeave]]() - Removes yourself from looking through the Raid Browser. Equivalent to selecting "none" in the Raid Browser.
: [[API SearchLFGJoin|SearchLFGJoin]](<span class="apiarg">typeID, lfgID</span>) {{apitag|hwevent}}
: [[API SearchLFGSort|SearchLFGSort]](<span class="apiarg">type</span>)
: [[API SetLFGBootVote|SetLFGBootVote]](<span class="apiarg">shouldKick</span>) - Responds to a vote-kick.
: [[API SetLFGComment|SetLFGComment]](<span class="apiarg">comment</span>) - Sets the comment in the LFG browser.
: [[API SetLFGDungeon|SetLFGDungeon]](<span class="apiarg">LE_LFG_CATEGORY, type</span>)
: [[API SetLFGDungeonEnabled|SetLFGDungeonEnabled]](<span class="apiarg">dungeonID, isEnabled</span>)
: [[API SetLFGHeaderCollapsed|SetLFGHeaderCollapsed]](<span class="apiarg">headerID, isCollapsed</span>)
: [[API SetLFGRoles|SetLFGRoles]](<span class="apiarg">[leader, tank, healer, dps]</span>) - Changes the selected roles.

===LFD===
LFD is used for Dungeon-specific functions and values
: [[API DungeonAppearsInRandomLFD|DungeonAppearsInRandomLFD]](<span class="apiarg">dungeonID</span>)
: [[API GetLFDChoiceCollapseState|GetLFDChoiceCollapseState]](<span class="apiarg">[LFGCollapseList]</span>)
: [[API GetLFDChoiceEnabledState|GetLFDChoiceEnabledState]](<span class="apiarg">[LFGEnabledList]</span>)
: [[API GetLFDChoiceOrder|GetLFDChoiceOrder]](<span class="apiarg">[LFDDungeonList]</span>)
: [[API GetLFDLockInfo|GetLFDLockInfo]](<span class="apiarg">dungeonID, playerIndex</span>)
: [[API GetLFDLockPlayerCount|GetLFDLockPlayerCount]]()
: [[API GetLFDRoleLockInfo|GetLFDRoleLockInfo]](<span class="apiarg">dungeonID, roleID</span>)
: [[API GetLFDRoleRestrictions|GetLFDRoleRestrictions]](<span class="apiarg">dungeonID</span>)
: [[API RequestLFDPartyLockInfo|RequestLFDPartyLockInfo]]()
: [[API RequestLFDPlayerLockInfo|RequestLFDPlayerLockInfo]]()

===Flex Raid===
: [[API GetBestFlexRaidChoice|GetBestFlexRaidChoice]]() : <span class="apiret">flexDungeonID</span>
: [[API GetFlexRaidDungeonInfo|GetFlexRaidDungeonInfo]](<span class="apiarg">index</span>)
: [[API GetNumFlexRaidDungeons|GetNumFlexRaidDungeons]]() : <span class="apiret">numInstances</span>

===Raid Finder===
: [[API GetBestRFChoice|GetBestRFChoice]]() : <span class="apiret">dungeonId</span> - Returns the suggested raid for the Raid Finder.
: [[API GetLFRChoiceOrder|GetLFRChoiceOrder]](<span class="apiarg">LFRRaidList</span>) : <span class="apiret">raidList</span>
: [[API GetNumRFDungeons|GetNumRFDungeons]]() : <span class="apiret">numRFDungeons</span>
: [[API GetRFDungeonInfo|GetRFDungeonInfo]](<span class="apiarg">index</span>) : <span class="apiret">id, name, typeID, subtypeID, minLevel, maxLevel, recLevel, minRecLevel, maxRecLevel, expansionLevel, groupID, textureFilename, difficulty, maxPlayers, description, isHoliday, bonusRepAmount, minPlayers, isTimeWalking, name2, minGearLevel, isScaling, lfgMapID</span>

===Quick Join===
[[Quick Join]] was added in [[Patch 7.1.0]]
: [[API C_PartyInfo.ConfirmRequestInviteFromUnit|C_PartyInfo.ConfirmRequestInviteFromUnit]](<span class="apiarg">targetName [, tank [, healer [, dps]]]</span>)
: [[API C_PartyInfo.GetActiveCategories|C_PartyInfo.GetActiveCategories]]() : <span class="apiret">categories</span>
: [[API C_PartyInfo.GetInviteConfirmationInvalidQueues|C_PartyInfo.GetInviteConfirmationInvalidQueues]](<span class="apiarg">inviteGUID</span>) : <span class="apiret">invalidQueues</span>
: [[API C_PartyInfo.GetInviteReferralInfo|C_PartyInfo.GetInviteReferralInfo]](<span class="apiarg">inviteGUID</span>) : <span class="apiret">outReferredByGuid, outReferredByName, outRelationType, outIsQuickJoin, outClubId</span> - Returns info for Quick join invites.
: [[API C_PartyInfo.RequestInviteFromUnit|C_PartyInfo.RequestInviteFromUnit]](<span class="apiarg">targetName [, tank [, healer [, dps]]]</span>)
: [[API C_SocialQueue.GetAllGroups|C_SocialQueue.GetAllGroups]](<span class="apiarg">[allowNonJoinable [, allowNonQueuedGroups]]</span>) : <span class="apiret">groupGUIDs</span>
: [[API C_SocialQueue.GetConfig|C_SocialQueue.GetConfig]]() : <span class="apiret">config</span>
: [[API C_SocialQueue.GetGroupForPlayer|C_SocialQueue.GetGroupForPlayer]](<span class="apiarg">playerGUID</span>) : <span class="apiret">groupGUID, isSoloQueueParty</span>
: [[API C_SocialQueue.GetGroupInfo|C_SocialQueue.GetGroupInfo]](<span class="apiarg">groupGUID</span>) : <span class="apiret">canJoin, numQueues, needTank, needHealer, needDamage, isSoloQueueParty, questSessionActive, leaderGUID</span>
: [[API C_SocialQueue.GetGroupMembers|C_SocialQueue.GetGroupMembers]](<span class="apiarg">groupGUID</span>) : <span class="apiret">groupMembers</span>
: [[API C_SocialQueue.GetGroupQueues|C_SocialQueue.GetGroupQueues]](<span class="apiarg">groupGUID</span>) : <span class="apiret">queues</span>
: [[API C_SocialQueue.RequestToJoin|C_SocialQueue.RequestToJoin]](<span class="apiarg">groupGUID [, applyAsTank [, applyAsHealer [, applyAsDamage]]]</span>) : <span class="apiret">requestSuccessful</span>
: [[API C_SocialQueue.SignalToastDisplayed|C_SocialQueue.SignalToastDisplayed]](<span class="apiarg">groupGUID, priority</span>)

==Guild==
: [[API AcceptGuild|AcceptGuild]]() - Accepts a guild invite.
: [[API BuyGuildCharter|BuyGuildCharter]](<span class="apiarg">guildName</span>) - Purchases a [[Guild Charter]].
: [[API C_GuildInfo.AreGuildEventsEnabled|C_GuildInfo.AreGuildEventsEnabled]]() : <span class="apiret">enabled</span>
: [[API C_GuildInfo.CanEditOfficerNote|C_GuildInfo.CanEditOfficerNote]]() : <span class="apiret">canEditOfficerNote</span> - Returns true if the player can edit guild officer notes.
: [[API C_GuildInfo.CanSpeakInGuildChat|C_GuildInfo.CanSpeakInGuildChat]]() : <span class="apiret">canSpeakInGuildChat</span> - Returns true if the player can use guild chat.
: [[API C_GuildInfo.CanViewOfficerNote|C_GuildInfo.CanViewOfficerNote]]() : <span class="apiret">canViewOfficerNote</span> - Returns true if the player can view guild officer notes.
: [[API C_GuildInfo.Demote|C_GuildInfo.Demote]](<span class="apiarg">name</span>) {{apitag|protected}} - Demotes the specified player in the guild.
: [[API C_GuildInfo.Disband|C_GuildInfo.Disband]]() {{apitag|protected}} - Disbands the guild; no warning is given.
: [[API C_GuildInfo.GetGuildNewsInfo|C_GuildInfo.GetGuildNewsInfo]](<span class="apiarg">index</span>) : <span class="apiret">newsInfo</span>
: [[API C_GuildInfo.GetGuildRankOrder|C_GuildInfo.GetGuildRankOrder]](<span class="apiarg">guid</span>) : <span class="apiret">rankOrder</span> - Returns the current rank of a guild member.
: [[API C_GuildInfo.GetGuildTabardInfo|C_GuildInfo.GetGuildTabardInfo]](<span class="apiarg">[unit]</span>) : <span class="apiret">tabardInfo</span>
: [[API C_GuildInfo.GuildControlGetRankFlags|C_GuildInfo.GuildControlGetRankFlags]](<span class="apiarg">rankOrder</span>) : <span class="apiret">permissions</span> - Returns the permission flags for a rank index.
: [[API C_GuildInfo.GuildRoster|C_GuildInfo.GuildRoster]]() - Requests updated guild roster information from the server.
: [[API C_GuildInfo.Invite|C_GuildInfo.Invite]](<span class="apiarg">name</span>) {{apitag|hwevent}} - Invites a player to the guild.
: [[API C_GuildInfo.IsEncounterGuildNewsEnabled|C_GuildInfo.IsEncounterGuildNewsEnabled]]() : <span class="apiret">enabled</span>
: [[API C_GuildInfo.IsGuildOfficer|C_GuildInfo.IsGuildOfficer]]() : <span class="apiret">isOfficer</span>
: [[API C_GuildInfo.IsGuildRankAssignmentAllowed|C_GuildInfo.IsGuildRankAssignmentAllowed]](<span class="apiarg">guid, rankOrder</span>) : <span class="apiret">isGuildRankAssignmentAllowed</span>
: [[API C_GuildInfo.IsGuildReputationEnabled|C_GuildInfo.IsGuildReputationEnabled]]() : <span class="apiret">enabled</span>
: [[API C_GuildInfo.Leave|C_GuildInfo.Leave]]() {{apitag|protected}} - Removes you from your current guild.
: [[API C_GuildInfo.MemberExistsByName|C_GuildInfo.MemberExistsByName]](<span class="apiarg">name</span>) : <span class="apiret">exists</span>
: [[API C_GuildInfo.Promote|C_GuildInfo.Promote]](<span class="apiarg">name</span>) {{apitag|protected}} - Promotes the specified player in the guild.
: [[API C_GuildInfo.QueryGuildMemberRecipes|C_GuildInfo.QueryGuildMemberRecipes]](<span class="apiarg">guildMemberGUID, skillLineID</span>) - Shows the guild member recipes for a profession.
: [[API C_GuildInfo.QueryGuildMembersForRecipe|C_GuildInfo.QueryGuildMembersForRecipe]](<span class="apiarg">skillLineID, recipeSpellID [, recipeLevel]</span>) : <span class="apiret">updatedRecipeSpellID</span>
: [[API C_GuildInfo.RemoveFromGuild|C_GuildInfo.RemoveFromGuild]](<span class="apiarg">guid</span>) - Removes a member from the guild.
: [[API C_GuildInfo.SetGuildRankOrder|C_GuildInfo.SetGuildRankOrder]](<span class="apiarg">guid, rankOrder</span>) - Sets the guild rank for a member.
: [[API C_GuildInfo.SetLeader|C_GuildInfo.SetLeader]](<span class="apiarg">name</span>) {{apitag|protected}} - Transfers guild leadership to another player.
: [[API C_GuildInfo.SetMOTD|C_GuildInfo.SetMOTD]](<span class="apiarg">motd</span>) - Sets the guild message of the day.
: [[API C_GuildInfo.SetNote|C_GuildInfo.SetNote]](<span class="apiarg">guid, note, isPublic</span>) - Sets the guild note for a member.
: [[API C_GuildInfo.Uninvite|C_GuildInfo.Uninvite]](<span class="apiarg">name</span>) {{apitag|protected}} - Removes a player from the guild.
: [[API CanEditGuildEvent|CanEditGuildEvent]]() - Returns true if you are allowed to edit guild events (in the calendar).
: [[API CanEditGuildInfo|CanEditGuildInfo]]() - Returns true if you are allowed to edit the guild info.
: [[API CanEditGuildTabInfo|CanEditGuildTabInfo]](<span class="apiarg">tab</span>)
: [[API CanEditMOTD|CanEditMOTD]]() : <span class="apiret">canEdit</span> - Returns true if the player can edit the guild message of the day.
: [[API CanEditPublicNote|CanEditPublicNote]]() - Returns true if you are allowed to edit a guild member's public note.
: [[API CanGuildDemote|CanGuildDemote]]() : <span class="apiret">canDemote</span> - Returns true if the player can demote guild members.
: [[API CanGuildInvite|CanGuildInvite]]() : <span class="apiret">canInvite</span> - Returns true if the player can invite new members to the guild.
: [[API CanGuildPromote|CanGuildPromote]]() : <span class="apiret">canPromote</span> - Returns true if the player can promote guild members.
: [[API CanGuildRemove|CanGuildRemove]]() - Returns true if you are allowed to remove a guild member.
: [[API CanReplaceGuildMaster|CanReplaceGuildMaster]]() : <span class="apiret">canReplace</span> - Returns whether you can impeach the Guild Master due to inactivity.
: [[API CanViewGuildRecipes|CanViewGuildRecipes]](<span class="apiarg">skillID</span>) : <span class="apiret">canView</span>
: [[API CloseGuildRegistrar|CloseGuildRegistrar]]()
: [[API CloseGuildRoster|CloseGuildRoster]]()
: [[API CloseTabardCreation|CloseTabardCreation]]()
: [[API CollapseGuildTradeSkillHeader|CollapseGuildTradeSkillHeader]](<span class="apiarg">tradeSkillID</span>)
: [[API DeclineGuild|DeclineGuild]]() - Declines a guild invite.
: [[API ExpandGuildTradeSkillHeader|ExpandGuildTradeSkillHeader]](<span class="apiarg">tradeSkillID</span>)
: [[API GetAutoDeclineGuildInvites|GetAutoDeclineGuildInvites]]() : <span class="apiret">result</span> - Returns true if guild invites are being automatically declined.
: [[API GetDemotionRank|GetDemotionRank]](<span class="apiarg">index</span>)
: [[API GetGuildCategoryList|GetGuildCategoryList]]()
: [[API GetGuildChallengeInfo|GetGuildChallengeInfo]](<span class="apiarg">index</span>)
: [[API GetGuildCharterCost|GetGuildCharterCost]]() - Returns the cost of purchasing a guild charter.
: [[API GetGuildEventInfo|GetGuildEventInfo]](<span class="apiarg">index</span>) - Returns the event information.
: [[API GetGuildFactionGroup|GetGuildFactionGroup]]()
: [[API GetGuildInfo|GetGuildInfo]](<span class="apiarg">unit</span>) : <span class="apiret">guildName, guildRankName, guildRankIndex, realm</span> - Returns guild info for a player unit.
: [[API GetGuildInfoText|GetGuildInfoText]]() - Returns the persistant Guild Information data.
: [[API GetGuildLogoInfo|GetGuildLogoInfo]]()
: [[API GetGuildMemberRecipes|GetGuildMemberRecipes]](<span class="apiarg">name, skillLineID</span>)
: [[API GetGuildNewsFilters|GetGuildNewsFilters]]()
: [[API GetGuildNewsMemberName|GetGuildNewsMemberName]](<span class="apiarg">index, nameIndex</span>)
: [[API GetGuildNewsSort|GetGuildNewsSort]]()
: [[API GetGuildPerkInfo|GetGuildPerkInfo]]()
: [[API GetGuildRecipeInfoPostQuery|GetGuildRecipeInfoPostQuery]]() : <span class="apiret">professionID, recipeID, numMembers</span>
: [[API GetGuildRecipeMember|GetGuildRecipeMember]](<span class="apiarg">index</span>) : <span class="apiret">name, online</span>
: [[API GetGuildRenameRequired|GetGuildRenameRequired]]()
: [[API GetGuildRewardInfo|GetGuildRewardInfo]](<span class="apiarg">index</span>)
: [[API GetGuildRosterInfo|GetGuildRosterInfo]](<span class="apiarg">index</span>) : <span class="apiret">name, rankName, rankIndex, level, classDisplayName, zone, publicNote, officerNote, isOnline, status, class, achievementPoints, achievementRank, isMobile, canSoR, repStanding, guid</span> - Returns info for a guild member.
: [[API GetGuildRosterLargestAchievementPoints|GetGuildRosterLargestAchievementPoints]]() - Returns max achievements points.
: [[API GetGuildRosterLastOnline|GetGuildRosterLastOnline]](<span class="apiarg">index</span>) : <span class="apiret">yearsOffline, monthsOffline, daysOffline, hoursOffline</span> - Returns time since the guild member was last online.
: [[API GetGuildRosterMOTD|GetGuildRosterMOTD]]() : <span class="apiret">motd</span> - Returns the guild message of the day.
: [[API GetGuildRosterSelection|GetGuildRosterSelection]]() : <span class="apiret">index</span> - Returns the index of the selected guild member in the roster.
: [[API GetGuildRosterShowOffline|GetGuildRosterShowOffline]]() : <span class="apiret">showoffline</span> - Returns true if the guild roster is showing offline members.
: [[API GetGuildTabardFiles|GetGuildTabardFiles]]() : <span class="apiret">tabardBackgroundUpper, tabardBackgroundLower, tabardEmblemUpper, tabardEmblemLower, tabardBorderUpper, tabardBorderLower</span> - Returns File IDs of tabard textures used in guild bank logo.
: [[API GetGuildTradeSkillInfo|GetGuildTradeSkillInfo]](<span class="apiarg">index</span>) : <span class="apiret">skillID, isCollapsed, iconTexture, headerName, numOnline, numVisible, numPlayers, playerName, playerNameWithRealm, class, online, zone, skill, classFileName, isMobile, isAway</span> - Returns info for a profession in the guild roster.
: [[API GetNumGuildChallenges|GetNumGuildChallenges]]()
: [[API GetNumGuildEvents|GetNumGuildEvents]]() - Returns the number of guild events.
: [[API GetNumGuildMembers|GetNumGuildMembers]]() : <span class="apiret">numTotalGuildMembers, numOnlineGuildMembers, numOnlineAndMobileMembers</span> - Returns the number of total and online guild members.
: [[API GetNumGuildNews|GetNumGuildNews]]()
: [[API GetNumGuildPerks|GetNumGuildPerks]]()
: [[API GetNumGuildRewards|GetNumGuildRewards]]()
: [[API GetNumGuildTradeSkill|GetNumGuildTradeSkill]]() - Returns the number of tradeskills available to the guild UI.
: [[API GetNumMembersInRank|GetNumMembersInRank]](<span class="apiarg">index</span>)
: [[API GetPromotionRank|GetPromotionRank]](<span class="apiarg">index</span>)
: [[API GetTabardCreationCost|GetTabardCreationCost]]() - Returns cost in coppers.
: [[API GetTabardInfo|GetTabardInfo]]()
: [[API GuildControlAddRank|GuildControlAddRank]](<span class="apiarg">name</span>) - Add another rank called "name". Only Guildmaster.
: [[API GuildControlDelRank|GuildControlDelRank]](<span class="apiarg">index</span>) - Deletes a guild rank.
: [[API GuildControlGetAllowedShifts|GuildControlGetAllowedShifts]](<span class="apiarg">rankOrder</span>)
: [[API GuildControlGetNumRanks|GuildControlGetNumRanks]]() - Returns number of ranks after guild frame open. Any guild member can use this.
: [[API GuildControlGetRank|GuildControlGetRank]]()
: [[API GuildControlGetRankName|GuildControlGetRankName]](<span class="apiarg">index</span>) : <span class="apiret">rankName</span> - Returns a guild rank name by index.
: [[API GuildControlSaveRank|GuildControlSaveRank]](<span class="apiarg">name</span>) - Saves the current rank name.
: [[API GuildControlSetRank|GuildControlSetRank]](<span class="apiarg">rankOrder</span>) {{apitag|protected}} - Selects a guild rank.
: [[API GuildControlSetRankFlag|GuildControlSetRankFlag]](<span class="apiarg">index, enabled</span>) {{apitag|protected}} - Sets guild rank permissions.
: [[API GuildControlShiftRankDown|GuildControlShiftRankDown]](<span class="apiarg">rankOrder</span>)
: [[API GuildControlShiftRankUp|GuildControlShiftRankUp]](<span class="apiarg">rankOrder</span>)
: [[API GuildInfo|GuildInfo]]() - Prints info for the guild the player belongs to.
: [[API GuildMasterAbsent|GuildMasterAbsent]]()
: [[API GuildNewsSetSticky|GuildNewsSetSticky]](<span class="apiarg">index, bool</span>)
: [[API GuildNewsSort|GuildNewsSort]](<span class="apiarg">byDate</span>)
: [[API GuildRosterSetOfficerNote|GuildRosterSetOfficerNote]](<span class="apiarg">index, note</span>) - Sets the officer note of a guild member.
: [[API GuildRosterSetPublicNote|GuildRosterSetPublicNote]](<span class="apiarg">index, note</span>) - Sets the public note of a guild member.
: [[API IsGuildLeader|IsGuildLeader]]() : <span class="apiret">result</span> - Returns true if the player is the guild master.
: [[API IsGuildMember|IsGuildMember]](<span class="apiarg">guid or unitToken</span>)
: [[API IsGuildRankAssignmentAllowed|IsGuildRankAssignmentAllowed]](<span class="apiarg">playerIndex, rankIndex</span>)
: [[API IsInAuthenticatedRank|IsInAuthenticatedRank]]()
: [[API IsInGuild|IsInGuild]]() : <span class="apiret">result</span> - Lets you know whether you are in a guild.
: [[API QueryGuildEventLog|QueryGuildEventLog]]() - Fetches the guild event list and fires a GUILD_EVENT_LOG_UPDATE event.
: [[API QueryGuildNews|QueryGuildNews]]()
: [[API QueryGuildRecipes|QueryGuildRecipes]]()
: [[API ReplaceGuildMaster|ReplaceGuildMaster]]() - Impeaches the current Guild Master.
: [[API RequestGuildChallengeInfo|RequestGuildChallengeInfo]]()
: [[API RequestGuildPartyState|RequestGuildPartyState]]()
: [[API RequestGuildRewards|RequestGuildRewards]]()
: [[API SetAutoDeclineGuildInvites|SetAutoDeclineGuildInvites]](<span class="apiarg">[allow]</span>) - Sets whether guild invites should be automatically declined.
: [[API SetGuildInfoText|SetGuildInfoText]](<span class="apiarg">text</span>) - Sets the guild info text.
: [[API SetGuildMemberRank|SetGuildMemberRank]](<span class="apiarg">playerIndex, rankIndex</span>)
: [[API SetGuildNewsFilter|SetGuildNewsFilter]](<span class="apiarg">index, bool</span>)
: [[API SetGuildRosterSelection|SetGuildRosterSelection]](<span class="apiarg">index</span>) - Selects a guild member in the roster.
: [[API SetGuildRosterShowOffline|SetGuildRosterShowOffline]](<span class="apiarg">enabled</span>) - Sets the show offline guild members flag.
: [[API SetGuildTradeSkillCategoryFilter|SetGuildTradeSkillCategoryFilter]](<span class="apiarg">tradeSkillID</span>)
: [[API SetGuildTradeSkillItemNameFilter|SetGuildTradeSkillItemNameFilter]](<span class="apiarg">itemName</span>)
: [[API SortGuildRoster|SortGuildRoster]](<span class="apiarg">sortType</span>) - Sorts the guild roster on a certain column.
: [[API SortGuildTradeSkill|SortGuildTradeSkill]](<span class="apiarg">type</span>)
: [[API SubmitRequiredGuildRename|SubmitRequiredGuildRename]]()
: [[API ViewGuildRecipes|ViewGuildRecipes]](<span class="apiarg">skillLineID</span>)

===Petitions===
Petitions are signup documents for guilds and arena teams. Some functions below only apply to a particular petition type
: [[API CanSignPetition|CanSignPetition]]() - Returns nil if the player cannot sign the current petition.
: [[API ClosePetition|ClosePetition]]() - Closes the current petition.
: [[API GetNumPetitionNames|GetNumPetitionNames]]() : <span class="apiret">numNames</span> - Returns the number of signatures on the current petition.
: [[API GetPetitionInfo|GetPetitionInfo]]() : <span class="apiret">petitionType, title, bodyText, maxSigs, originator, isOriginator, minSigs</span> - Returns info for the petition being viewed.
: [[API GetPetitionNameInfo|GetPetitionNameInfo]](<span class="apiarg">index</span>) - Retrieves information about a signature on the petition.
: [[API OfferPetition|OfferPetition]]() - Offers a petition to your target.
: [[API RenamePetition|RenamePetition]](<span class="apiarg">name</span>) - Renames the current petition.
: [[API SignPetition|SignPetition]]() - Signs the currently viewed petition.
: [[API TurnInGuildCharter|TurnInGuildCharter]]() - Founds a guild.

==Instances==
: [[API C_ModifiedInstance.GetModifiedInstanceInfoFromMapID|C_ModifiedInstance.GetModifiedInstanceInfoFromMapID]](<span class="apiarg">mapID</span>) : <span class="apiret">info</span>
: [[API C_PlayerInfo.GetInstancesUnlockedAtLevel|C_PlayerInfo.GetInstancesUnlockedAtLevel]](<span class="apiarg">level, isRaid</span>) : <span class="apiret">dungeonID</span>
: [[API CanChangePlayerDifficulty|CanChangePlayerDifficulty]]() : <span class="apiret">canChange, notOnCooldown</span>
: [[API CanMapChangeDifficulty|CanMapChangeDifficulty]](<span class="apiarg">[mapID]</span>) : <span class="apiret">canChange</span>
: [[API CanShowResetInstances|CanShowResetInstances]]() : <span class="apiret">result</span> - Returns true if the character can currently reset their instances.
: [[API GetDifficultyInfo|GetDifficultyInfo]](<span class="apiarg">difficultyID</span>) : <span class="apiret">name, instanceType, isHeroic, isChallengeMode, displayHeroic, displayMythic, toggleDifficultyID, isLFR, minPlayers, maxPlayers</span> - Returns information about a difficulty.
: [[API GetDungeonDifficultyID|GetDungeonDifficultyID]]() : <span class="apiret">result</span> - Returns the selected dungeon difficulty.
: [[API GetInstanceBootTimeRemaining|GetInstanceBootTimeRemaining]]() : <span class="apiret">result</span> - Gets the time in seconds after which the player will be ejected from an instance.
: [[API GetInstanceInfo|GetInstanceInfo]]() : <span class="apiret">name, instanceType, difficultyID, difficultyName, maxPlayers, dynamicDifficulty, isDynamic, instanceID, instanceGroupSize, lfgDungeonID</span> - Returns info for the map instance the character is currently in.
: [[API GetLegacyRaidDifficultyID|GetLegacyRaidDifficultyID]]() : <span class="apiret">result</span>
: [[API GetRaidDifficultyID|GetRaidDifficultyID]]() : <span class="apiret">result</span> - Returns the player's currently selected raid difficulty.
: [[API IsInInstance|IsInInstance]]() : <span class="apiret">isInInstance, instanceType</span> - Returns true if the player is in an instance, and the type of instance.
: [[API IsLegacyDifficulty|IsLegacyDifficulty]](<span class="apiarg">difficultyID</span>) : <span class="apiret">result</span>
: [[API ResetInstances|ResetInstances]]() - Resets all instances for the character.
: [[API SetDungeonDifficultyID|SetDungeonDifficultyID]](<span class="apiarg">difficultyID</span>) - Sets the player's dungeon difficulty.
: [[API SetLegacyRaidDifficultyID|SetLegacyRaidDifficultyID]](<span class="apiarg">difficultyID [, force]</span>)
: [[API SetRaidDifficultyID|SetRaidDifficultyID]](<span class="apiarg">difficultyID [, force]</span>) - Sets the raid difficulty.
: [[API ShowBossFrameWhenUninteractable|ShowBossFrameWhenUninteractable]](<span class="apiarg">unit</span>) : <span class="apiret">result</span>
Relates to [[Raid lockout|Instance Locks]]
: [[API GetInstanceLockTimeRemaining|GetInstanceLockTimeRemaining]]() : <span class="apiret">timeLeft, extending, encountersTotal, encountersCompleted</span> - Returns info for the instance lock timer for the current instance.
: [[API GetInstanceLockTimeRemainingEncounter|GetInstanceLockTimeRemainingEncounter]](<span class="apiarg">encounterIndex</span>) : <span class="apiret">encounterName, texture, isKilled, ineligible</span> - Returns information about bosses in the instance the player is about to be saved to.
: [[API GetNumSavedInstances|GetNumSavedInstances]]() : <span class="apiret">numInstances</span> - Returns the number of instances for which the character is locked out.
: [[API GetNumSavedWorldBosses|GetNumSavedWorldBosses]]() : <span class="apiret">numSavedWorldBosses</span>
: [[API GetSavedInstanceChatLink|GetSavedInstanceChatLink]](<span class="apiarg">index</span>) : <span class="apiret">instanceChatLink</span>
: [[API GetSavedInstanceEncounterInfo|GetSavedInstanceEncounterInfo]](<span class="apiarg">instanceIndex, encounterIndex</span>) : <span class="apiret">bossName, fileDataID, isKilled, unknown4</span>
: [[API GetSavedInstanceInfo|GetSavedInstanceInfo]](<span class="apiarg">index</span>) : <span class="apiret">name, lockoutId, reset, difficultyId, locked, extended, instanceIDMostSig, isRaid, maxPlayers, difficultyName, numEncounters, encounterProgress, extendDisabled, instanceId</span> - Returns instance lock info.
: [[API GetSavedWorldBossInfo|GetSavedWorldBossInfo]](<span class="apiarg">index</span>) : <span class="apiret">name, worldBossID, reset</span>
: [[API RequestRaidInfo|RequestRaidInfo]]() - Requests which instances the player is saved to.
: [[API RespondInstanceLock|RespondInstanceLock]](<span class="apiarg">acceptLock</span>)
: [[API SetSavedInstanceExtend|SetSavedInstanceExtend]](<span class="apiarg">index, extend</span>)

===Scenarios===
[[Scenarios]] were added in [[Patch 5.0.4]]
: [[API C_Scenario.GetBonusStepRewardQuestID|C_Scenario.GetBonusStepRewardQuestID]](<span class="apiarg">stepIndex</span>)
: [[API C_Scenario.GetBonusSteps|C_Scenario.GetBonusSteps]]()
: [[API C_Scenario.GetInfo|C_Scenario.GetInfo]]()
: [[API C_Scenario.GetProvingGroundsInfo|C_Scenario.GetProvingGroundsInfo]]() : <span class="apiret">difficulty, curWave, maxWave, duration</span> - Returns info for the current [[Proving Grounds]] trial.
: [[API C_Scenario.GetScenarioIconInfo|C_Scenario.GetScenarioIconInfo]](<span class="apiarg">uiMapID</span>)
: [[API C_Scenario.GetStepInfo|C_Scenario.GetStepInfo]](<span class="apiarg">[bonusStepIndex]</span>)
: [[API C_Scenario.GetSupersededObjectives|C_Scenario.GetSupersededObjectives]]()
: [[API C_Scenario.IsInScenario|C_Scenario.IsInScenario]]()
: [[API C_Scenario.ShouldShowCriteria|C_Scenario.ShouldShowCriteria]]()
: [[API C_Scenario.TreatScenarioAsDungeon|C_Scenario.TreatScenarioAsDungeon]]()
: [[API C_ScenarioInfo.GetCriteriaInfo|C_ScenarioInfo.GetCriteriaInfo]](<span class="apiarg">criteriaIndex</span>) : <span class="apiret">scenarioCriteriaInfo</span>
: [[API C_ScenarioInfo.GetCriteriaInfoByStep|C_ScenarioInfo.GetCriteriaInfoByStep]](<span class="apiarg">stepID, criteriaIndex</span>) : <span class="apiret">scenarioCriteriaInfo</span>
: [[API C_ScenarioInfo.GetScenarioInfo|C_ScenarioInfo.GetScenarioInfo]]() : <span class="apiret">scenarioInfo</span>
: [[API C_ScenarioInfo.GetScenarioStepInfo|C_ScenarioInfo.GetScenarioStepInfo]](<span class="apiarg">[scenarioStepID]</span>) : <span class="apiret">scenarioStepInfo</span>
: [[API GetNumRandomScenarios|GetNumRandomScenarios]]()
: [[API GetNumScenarios|GetNumScenarios]]()
: [[API GetRandomScenarioBestChoice|GetRandomScenarioBestChoice]]()
: [[API GetRandomScenarioInfo|GetRandomScenarioInfo]](<span class="apiarg">index</span>)
: [[API GetScenariosChoiceOrder|GetScenariosChoiceOrder]](<span class="apiarg">[allScenarios]</span>) : <span class="apiret">allScenarios</span>
: [[API GetWorldElapsedTimers|GetWorldElapsedTimers]]()
: [[API GetWorldElapsedTime|GetWorldElapsedTime]](<span class="apiarg">timerID</span>) : <span class="apiret">description, elapsedTime, type</span>
: [[API IsInScenarioGroup|IsInScenarioGroup]]()

==Looting==
Relates to [[Loot]].
: [[API C_Loot.GetLootRollDuration|C_Loot.GetLootRollDuration]](<span class="apiarg">rollID</span>) : <span class="apiret">duration</span>
: [[API C_Loot.IsLegacyLootModeEnabled|C_Loot.IsLegacyLootModeEnabled]]() : <span class="apiret">isLegacyLootModeEnabled</span>
: [[API C_LootHistory.GetAllEncounterInfos|C_LootHistory.GetAllEncounterInfos]]() : <span class="apiret">infos</span>
: [[API C_LootHistory.GetInfoForEncounter|C_LootHistory.GetInfoForEncounter]](<span class="apiarg">encounterID</span>) : <span class="apiret">info</span>
: [[API C_LootHistory.GetLootHistoryTime|C_LootHistory.GetLootHistoryTime]]() : <span class="apiret">time</span>
: [[API C_LootHistory.GetSortedDropsForEncounter|C_LootHistory.GetSortedDropsForEncounter]](<span class="apiarg">encounterID</span>) : <span class="apiret">drops</span>
: [[API C_LootHistory.GetSortedInfoForDrop|C_LootHistory.GetSortedInfoForDrop]](<span class="apiarg">encounterID, lootListID</span>) : <span class="apiret">info</span>
: [[API C_PlayerInfo.CanPlayerUseAreaLoot|C_PlayerInfo.CanPlayerUseAreaLoot]]() : <span class="apiret">canUseAreaLoot</span>
: [[API CanLootUnit|CanLootUnit]](<span class="apiarg">targetUnit</span>) : <span class="apiret">hasLoot, canLoot</span>
: [[API CancelMasterLootRoll|CancelMasterLootRoll]](<span class="apiarg">slot</span>)
: [[API CloseLoot|CloseLoot]](<span class="apiarg">[errNum]</span>)
: [[API ConfirmLootRoll|ConfirmLootRoll]](<span class="apiarg">rollID, roll</span>) - Confirms a loot roll.
: [[API ConfirmLootSlot|ConfirmLootSlot]](<span class="apiarg">slot</span>) - Confirms looting of a BoP item.
: [[API DoMasterLootRoll|DoMasterLootRoll]](<span class="apiarg">slot</span>)
: [[API GetActiveLootRollIDs|GetActiveLootRollIDs]]()
: [[API GetLootInfo|GetLootInfo]]() : <span class="apiret">info</span>
: [[API GetLootMethod|GetLootMethod]]() : <span class="apiret">lootmethod, masterlooterPartyID, masterlooterRaidID</span> - Returns the current loot method.
: [[API GetLootRollItemInfo|GetLootRollItemInfo]](<span class="apiarg">rollID</span>) : <span class="apiret">texture, name, count, quality, bindOnPickUp, canNeed, canGreed, canDisenchant, reasonNeed, reasonGreed, reasonDisenchant, deSkillRequired, canTransmog</span>
: [[API GetLootRollItemLink|GetLootRollItemLink]](<span class="apiarg">id</span>) : <span class="apiret">itemLink</span>
: [[API GetLootRollTimeLeft|GetLootRollTimeLeft]](<span class="apiarg">rollID</span>) : <span class="apiret">timeLeft</span>
: [[API GetLootSlotInfo|GetLootSlotInfo]](<span class="apiarg">slot</span>) : <span class="apiret">lootIcon, lootName, lootQuantity, currencyID, lootQuality, locked, isQuestItem, questID, isActive</span> - Returns info for a loot slot.
: [[API GetLootSlotLink|GetLootSlotLink]](<span class="apiarg">index</span>) : <span class="apiret">itemLink</span> - Returns the item link for a loot slot.
: [[API GetLootSlotType|GetLootSlotType]](<span class="apiarg">slotIndex</span>) : <span class="apiret">slotType</span>
: [[API GetLootSourceInfo|GetLootSourceInfo]](<span class="apiarg">lootSlot</span>) : <span class="apiret">guid, quantity</span> - Returns information about the source of the objects in a loot slot.
: [[API GetLootSpecialization|GetLootSpecialization]]() : <span class="apiret">specializationID</span>
: [[API GetLootThreshold|GetLootThreshold]]() : <span class="apiret">threshold</span> - Returns the loot threshold quality for e.g. master loot.
: [[API GetMasterLootCandidate|GetMasterLootCandidate]](<span class="apiarg">slot, index</span>) : <span class="apiret">candidate</span> - Returns the name of an eligible player for receiving master loot by index.
: [[API GetNumLootItems|GetNumLootItems]]() : <span class="apiret">numLootItems</span> - Returns the number of items in the loot window.
: [[API GetOptOutOfLoot|GetOptOutOfLoot]]() : <span class="apiret">optedOut</span> - Returns true if the player is automatically passing on all loot.
: [[API GiveMasterLoot|GiveMasterLoot]](<span class="apiarg">slot, index</span>)
: [[API IsFishingLoot|IsFishingLoot]]() : <span class="apiret">isFishingLoot</span>
: [[API IsMasterLooter|IsMasterLooter]]()
: [[API LootMoneyNotify|LootMoneyNotify]](<span class="apiarg">money, soleLooter</span>)
: [[API LootSlot|LootSlot]](<span class="apiarg">slot</span>) - Loots the specified slot; can require confirmation with [[API ConfirmLootSlot|ConfirmLootSlot]].
: [[API LootSlotHasItem|LootSlotHasItem]](<span class="apiarg">lootSlot</span>) : <span class="apiret">isLootItem</span>
: [[API RollOnLoot|RollOnLoot]](<span class="apiarg">rollID [, rollType]</span>) - Rolls or passes on loot.
: [[API SetLootMethod|SetLootMethod]](<span class="apiarg">method, playerName, threshold</span>) - Set the current loot method.
: [[API SetLootPortrait|SetLootPortrait]]()
: [[API SetLootSpecialization|SetLootSpecialization]](<span class="apiarg">specializationID</span>)
: [[API SetLootThreshold|SetLootThreshold]](<span class="apiarg">threshold</span>) - Sets the loot quality threshold for group/master loot.
: [[API SetOptOutOfLoot|SetOptOutOfLoot]](<span class="apiarg">optOut</span>) - Sets whether to automatically pass on all loot.

==Macros==
Relates to [[Macro]]s.
: [[API C_Macro.RunMacroText|C_Macro.RunMacroText]](<span class="apiarg">text, button</span>)
: [[API CreateMacro|CreateMacro]](<span class="apiarg">name, iconFileID [, body [, perCharacter]]</span>) : <span class="apiret">macroId</span> {{apitag|nocombat}} - Creates a macro.
: [[API DeleteMacro|DeleteMacro]](<span class="apiarg">indexOrName</span>) - Deletes a macro.
: [[API EditMacro|EditMacro]](<span class="apiarg">macroInfo [, name [, icon [, body]]]</span>) : <span class="apiret">macroID</span> {{apitag|nocombat}} - Modifies an existing macro.
: [[API GetLooseMacroIcons|GetLooseMacroIcons]]()
: [[API GetLooseMacroItemIcons|GetLooseMacroItemIcons]]()
: [[API GetMacroBody|GetMacroBody]](<span class="apiarg">macro</span>) : <span class="apiret">body</span> - Returns the body (macro text) of a macro.
: [[API GetMacroIcons|GetMacroIcons]](<span class="apiarg">table</span>) - Returns an array of available macro texture paths (but not icons of items).
: [[API GetMacroIndexByName|GetMacroIndexByName]](<span class="apiarg">name</span>) : <span class="apiret">macroSlot</span> - Returns the index for a macro by name.
: [[API GetMacroInfo|GetMacroInfo]](<span class="apiarg">macro</span>) : <span class="apiret">name, icon, body</span> - Returns info for a macro.
: [[API GetMacroItemIcons|GetMacroItemIcons]](<span class="apiarg">table</span>) - Returns an array of available macro texture paths (icons of items).
: [[API GetMacroItem|GetMacroItem]](<span class="apiarg">name</span>) : <span class="apiret">itemName, itemLink</span>
: [[API GetMacroSpell|GetMacroSpell]](<span class="apiarg">name</span>) : <span class="apiret">id</span>
: [[API GetNumMacros|GetNumMacros]]() : <span class="apiret">global, perChar</span> - Returns the number of account and character macros.
: [[API GetRunningMacroButton|GetRunningMacroButton]]()
: [[API GetRunningMacro|GetRunningMacro]]()
: [[API RunMacro|RunMacro]](<span class="apiarg">name</span>) {{apitag|protected}} - Executes a macro.
: [[API SecureCmdOptionParse|SecureCmdOptionParse]](<span class="apiarg">options</span>) : <span class="apiret">result, target</span> - Evaluates macro conditionals without the need of a macro.
: [[API SetMacroItem|SetMacroItem]](<span class="apiarg">macro, item [, target]</span>)
: [[API SetMacroSpell|SetMacroSpell]](<span class="apiarg">name, spell, target</span>)
: [[API StopMacro|StopMacro]]() {{apitag|protected}} - Stops the currently executing macro.

==Mail==
Relates to [[Mail]].
: [[API C_Mail.CanCheckInbox|C_Mail.CanCheckInbox]]() : <span class="apiret">canCheckInbox, secondsUntilAllowed</span>
: [[API C_Mail.GetCraftingOrderMailInfo|C_Mail.GetCraftingOrderMailInfo]](<span class="apiarg">inboxIndex</span>) : <span class="apiret">info</span>
: [[API C_Mail.HasInboxMoney|C_Mail.HasInboxMoney]](<span class="apiarg">inboxIndex</span>) : <span class="apiret">inboxItemHasMoneyAttached</span> - Returns true if a mail has money attached.
: [[API C_Mail.IsCommandPending|C_Mail.IsCommandPending]]() : <span class="apiret">isCommandPending</span> - Returns true if the current mail command is still processing.
: [[API C_Mail.SetOpeningAll|C_Mail.SetOpeningAll]](<span class="apiarg">openingAll</span>)
: [[API AutoLootMailItem|AutoLootMailItem]](<span class="apiarg">index</span>) - Loot all items from mail message.
: [[API CanComplainInboxItem|CanComplainInboxItem]](<span class="apiarg">mailID</span>) : <span class="apiret">canComplain</span> - Determines if we should show the “report spam” button on a mail item.
: [[API CheckInbox|CheckInbox]]() - Queries the server for mail.
: [[API ClearSendMail|ClearSendMail]]() - Clears the text and item attachments in the Send Mail tab.
: [[API ClickSendMailItemButton|ClickSendMailItemButton]](<span class="apiarg">itemIndex [, clearItem]</span>) - Drops or picks up an item from the cursor to the Send Mail tab.
: [[API CloseMail|CloseMail]]() - Closes the mail window.
: [[API DeleteInboxItem|DeleteInboxItem]](<span class="apiarg">index</span>) - Requests the server to remove a mailbox message.
: [[API GetInboxHeaderInfo|GetInboxHeaderInfo]](<span class="apiarg">index</span>) : <span class="apiret">packageIcon, stationeryIcon, sender, subject, money, CODAmount, daysLeft, hasItem, wasRead, wasReturned, textCreated, canReply, isGM</span> - Returns info for a message in the mailbox.
: [[API GetInboxItem|GetInboxItem]](<span class="apiarg">index, itemIndex</span>) : <span class="apiret">name, itemID, texture, count, quality, canUse</span> - Returns info for an item attached to a message in the mailbox.
: [[API GetInboxItemLink|GetInboxItemLink]](<span class="apiarg">message, attachment</span>) : <span class="apiret">itemLink</span> - Returns the item link of an item attached to a message in the mailbox.
: [[API GetInboxNumItems|GetInboxNumItems]]() : <span class="apiret">numItems, totalItems</span> - Returns the number of messages in the mailbox.
: [[API GetInboxText|GetInboxText]](<span class="apiarg">index</span>) : <span class="apiret">bodyText, stationaryMiddle, stationaryEdge, isTakeable, isInvoice, isConsortium</span> - Returns the text of a message in the mailbox.
: [[API GetInboxInvoiceInfo|GetInboxInvoiceInfo]](<span class="apiarg">index</span>) : <span class="apiret">invoiceType, itemName, playerName, bid, buyout, deposit, consignment</span> - Returns info for an auction house invoice.
: [[API GetLatestThreeSenders|GetLatestThreeSenders]]() : <span class="apiret">sender1, sender2, sender3</span> - Returns up to three senders of unread mail.
: [[API GetSendMailCOD|GetSendMailCOD]]() : <span class="apiret">amount</span> - Returns the Cash-On-Delivery cost of the outgoing message.
: [[API GetSendMailItem|GetSendMailItem]](<span class="apiarg">index</span>) : <span class="apiret">name, itemID, texture, count, quality</span> - Returns info for an item attached in the outgoing message.
: [[API GetSendMailItemLink|GetSendMailItemLink]](<span class="apiarg">attachment</span>) : <span class="apiret">itemLink</span> - Returns the item link of an item attached in the outgoing message.
: [[API GetSendMailMoney|GetSendMailMoney]]()
: [[API GetSendMailPrice|GetSendMailPrice]]() : <span class="apiret">sendPrice</span> - Gets the cost for sending mail.
: [[API HasInboxItem|HasInboxItem]]()
: [[API HasNewMail|HasNewMail]]() - Returns nil if there is no new mail.
: [[API HasSendMailItem|HasSendMailItem]](<span class="apiarg">index</span>) - Returns boolean if item is attached to send mail frame in specified slot.
: [[API InboxItemCanDelete|InboxItemCanDelete]](<span class="apiarg">index</span>) : <span class="apiret">canDelete</span> - Returns true if a message can be deleted, false if it can be returned to sender.
: [[API RespondMailLockSendItem|RespondMailLockSendItem]](<span class="apiarg">slot, keepItem</span>) - Confirm item wont be refunded, keepItem boolean.
: [[API ReturnInboxItem|ReturnInboxItem]](<span class="apiarg">index</span>) - Returns to the sender the attached item in the mail message at the specified index.
: [[API SendMail|SendMail]](<span class="apiarg">recipient, subject [, body]</span>) {{apitag|noscript}} - Sends in-game mail.
: [[API SetSendMailCOD|SetSendMailCOD]](<span class="apiarg">amount</span>) {{apitag|protected}} - Make next mail sent using SendMail() COD target for amount.
: [[API SetSendMailMoney|SetSendMailMoney]](<span class="apiarg">amount</span>) {{apitag|protected}} - Add money to next mail sent using SendMail().
: [[API SetSendMailShowing|SetSendMailShowing]]()
: [[API TakeInboxItem|TakeInboxItem]](<span class="apiarg">messageIndex, attachIndex</span>) - Takes the attached item from the mailbox message.
: [[API TakeInboxMoney|TakeInboxMoney]](<span class="apiarg">index</span>) - Take the attached money from the mailbox message at index.
: [[API TakeInboxTextItem|TakeInboxTextItem]](<span class="apiarg">index</span>) - Creates a permanent copy of letter (readable "Plain Letter").

===Waypoints===
Tracked waypoints were added in [[Patch 9.0.1]]
: [[API C_Map.CanSetUserWaypointOnMap|C_Map.CanSetUserWaypointOnMap]](<span class="apiarg">uiMapID</span>) : <span class="apiret">canSet</span>
: [[API C_Map.ClearUserWaypoint|C_Map.ClearUserWaypoint]]()
: [[API C_Map.GetUserWaypoint|C_Map.GetUserWaypoint]]() : <span class="apiret">point</span>
: [[API C_Map.GetUserWaypointFromHyperlink|C_Map.GetUserWaypointFromHyperlink]](<span class="apiarg">hyperlink</span>) : <span class="apiret">point</span>
: [[API C_Map.GetUserWaypointHyperlink|C_Map.GetUserWaypointHyperlink]]() : <span class="apiret">hyperlink</span>
: [[API C_Map.GetUserWaypointPositionForMap|C_Map.GetUserWaypointPositionForMap]](<span class="apiarg">uiMapID</span>) : <span class="apiret">mapPosition</span>
: [[API C_Map.HasUserWaypoint|C_Map.HasUserWaypoint]]() : <span class="apiret">hasUserWaypoint</span>
: [[API C_Map.SetUserWaypoint|C_Map.SetUserWaypoint]](<span class="apiarg">point</span>)
: [[API C_Navigation.GetDistance|C_Navigation.GetDistance]]() : <span class="apiret">distance</span>
: [[API C_Navigation.GetFrame|C_Navigation.GetFrame]]() : <span class="apiret">frame</span>
: [[API C_Navigation.GetNearestPartyMemberToken|C_Navigation.GetNearestPartyMemberToken]]() : <span class="apiret">unitToken</span>
: [[API C_Navigation.GetTargetState|C_Navigation.GetTargetState]]() : <span class="apiret">state</span>
: [[API C_Navigation.HasValidScreenPosition|C_Navigation.HasValidScreenPosition]]() : <span class="apiret">hasValidScreenPosition</span>
: [[API C_Navigation.WasClampedToScreen|C_Navigation.WasClampedToScreen]]() : <span class="apiret">wasClamped</span>
Controls what's actively being tracked.
: [[API C_SuperTrack.ClearAllSuperTracked|C_SuperTrack.ClearAllSuperTracked]]()
: [[API C_SuperTrack.ClearSuperTrackedContent|C_SuperTrack.ClearSuperTrackedContent]]()
: [[API C_SuperTrack.ClearSuperTrackedMapPin|C_SuperTrack.ClearSuperTrackedMapPin]]()
: [[API C_SuperTrack.GetHighestPrioritySuperTrackingType|C_SuperTrack.GetHighestPrioritySuperTrackingType]]() : <span class="apiret">type</span>
: [[API C_SuperTrack.GetSuperTrackedContent|C_SuperTrack.GetSuperTrackedContent]]() : <span class="apiret">trackableType, trackableID</span>
: [[API C_SuperTrack.GetSuperTrackedMapPin|C_SuperTrack.GetSuperTrackedMapPin]]() : <span class="apiret">type, typeID</span>
: [[API C_SuperTrack.GetSuperTrackedQuestID|C_SuperTrack.GetSuperTrackedQuestID]]() : <span class="apiret">questID</span>
: [[API C_SuperTrack.GetSuperTrackedVignette|C_SuperTrack.GetSuperTrackedVignette]]() : <span class="apiret">vignetteGUID</span>
: [[API C_SuperTrack.IsSuperTrackingAnything|C_SuperTrack.IsSuperTrackingAnything]]() : <span class="apiret">isSuperTracking</span>
: [[API C_SuperTrack.IsSuperTrackingContent|C_SuperTrack.IsSuperTrackingContent]]() : <span class="apiret">isSuperTracking</span>
: [[API C_SuperTrack.IsSuperTrackingCorpse|C_SuperTrack.IsSuperTrackingCorpse]]() : <span class="apiret">isSuperTracking</span>
: [[API C_SuperTrack.IsSuperTrackingMapPin|C_SuperTrack.IsSuperTrackingMapPin]]() : <span class="apiret">isSuperTracking</span>
: [[API C_SuperTrack.IsSuperTrackingQuest|C_SuperTrack.IsSuperTrackingQuest]]() : <span class="apiret">isSuperTracking</span>
: [[API C_SuperTrack.IsSuperTrackingUserWaypoint|C_SuperTrack.IsSuperTrackingUserWaypoint]]() : <span class="apiret">isSuperTracking</span>
: [[API C_SuperTrack.SetSuperTrackedContent|C_SuperTrack.SetSuperTrackedContent]](<span class="apiarg">trackableType, trackableID</span>)
: [[API C_SuperTrack.SetSuperTrackedMapPin|C_SuperTrack.SetSuperTrackedMapPin]](<span class="apiarg">type, typeID</span>)
: [[API C_SuperTrack.SetSuperTrackedQuestID|C_SuperTrack.SetSuperTrackedQuestID]](<span class="apiarg">questID</span>)
: [[API C_SuperTrack.SetSuperTrackedUserWaypoint|C_SuperTrack.SetSuperTrackedUserWaypoint]](<span class="apiarg">superTracked</span>)
: [[API C_SuperTrack.SetSuperTrackedVignette|C_SuperTrack.SetSuperTrackedVignette]](<span class="apiarg">vignetteGUID</span>)
: [[API C_QuestLog.GetNextWaypoint|C_QuestLog.GetNextWaypoint]](<span class="apiarg">questID</span>) : <span class="apiret">mapID, x, y</span>
: [[API C_QuestLog.GetNextWaypointForMap|C_QuestLog.GetNextWaypointForMap]](<span class="apiarg">questID, uiMapID</span>) : <span class="apiret">x, y</span>
: [[API C_QuestLog.GetNextWaypointText|C_QuestLog.GetNextWaypointText]](<span class="apiarg">questID</span>) : <span class="apiret">waypointText</span>

===Flight Master===
Relates to [[Flight master]] taxi services.
: [[API C_TaxiMap.GetAllTaxiNodes|C_TaxiMap.GetAllTaxiNodes]](<span class="apiarg">uiMapID</span>) : <span class="apiret">taxiNodes</span>
: [[API C_TaxiMap.GetTaxiNodesForMap|C_TaxiMap.GetTaxiNodesForMap]](<span class="apiarg">uiMapID</span>) : <span class="apiret">mapTaxiNodes</span>
: [[API C_TaxiMap.ShouldMapShowTaxiNodes|C_TaxiMap.ShouldMapShowTaxiNodes]](<span class="apiarg">uiMapID</span>) : <span class="apiret">shouldShowNodes</span>
: [[API CloseTaxiMap|CloseTaxiMap]]() - Closes the [[Flight Map]].
: [[API GetNumRoutes|GetNumRoutes]](<span class="apiarg">slot</span>) - Gets the number of hops between current-slot and slot.
: [[API GetTaxiBenchmarkMode|GetTaxiBenchmarkMode]]() : <span class="apiret">result</span>
: [[API GetTaxiMapID|GetTaxiMapID]]() : <span class="apiret">taxiMapID</span>
: [[API NumTaxiNodes|NumTaxiNodes]]() : <span class="apiret">numNodes</span> - Returns the number of flight paths on the taxi map.
: [[API SetTaxiBenchmarkMode|SetTaxiBenchmarkMode]](<span class="apiarg">[enable]</span>)
: [[API SetTaxiMap|SetTaxiMap]](<span class="apiarg">texture</span>)
: [[API TakeTaxiNode|TakeTaxiNode]](<span class="apiarg">index</span>) - Travels to the specified flight path node.
: [[API TaxiGetDestX|TaxiGetDestX]](<span class="apiarg">[destinationIndex [, routeIndex]]</span>) : <span class="apiret">dX</span>
: [[API TaxiGetDestY|TaxiGetDestY]](<span class="apiarg">[destinationIndex [, routeIndex]]</span>) : <span class="apiret">dY</span>
: [[API TaxiGetNodeSlot|TaxiGetNodeSlot]]()
: [[API TaxiGetSrcX|TaxiGetSrcX]](<span class="apiarg">[destinationIndex [, routeIndex]]</span>) : <span class="apiret">sX</span>
: [[API TaxiGetSrcY|TaxiGetSrcY]](<span class="apiarg">[destinationIndex [, routeIndex]]</span>) : <span class="apiret">sY</span>
: [[API TaxiIsDirectFlight|TaxiIsDirectFlight]]()
: [[API TaxiNodeCost|TaxiNodeCost]](<span class="apiarg">slot</span>) : <span class="apiret">cost</span> - Returns the cost of the flight path in copper.
: [[API TaxiNodeGetType|TaxiNodeGetType]](<span class="apiarg">index</span>) : <span class="apiret">type</span> - Returns the type of a flight path node.
: [[API TaxiNodeName|TaxiNodeName]](<span class="apiarg">index</span>) : <span class="apiret">name</span> - Returns the name of a flight path node.
: [[API TaxiNodePosition|TaxiNodePosition]](<span class="apiarg">index</span>) : <span class="apiret">x, y</span> - Returns the position of a flight point on the taxi map.
: [[API TaxiRequestEarlyLanding|TaxiRequestEarlyLanding]]()
: [[API UnitOnTaxi|UnitOnTaxi]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns true if the unit is on a flight path.

==Merchants==
===Vendor===
Relates to [[Vendor]]s.
: [[API C_MerchantFrame.GetBuybackItemID|C_MerchantFrame.GetBuybackItemID]](<span class="apiarg">buybackSlotIndex</span>) : <span class="apiret">buybackItemID</span>
: [[API C_MerchantFrame.GetNumJunkItems|C_MerchantFrame.GetNumJunkItems]]() : <span class="apiret">numJunkItems</span>
: [[API C_MerchantFrame.IsMerchantItemRefundable|C_MerchantFrame.IsMerchantItemRefundable]](<span class="apiarg">index</span>) : <span class="apiret">refundable</span>
: [[API C_MerchantFrame.IsSellAllJunkEnabled|C_MerchantFrame.IsSellAllJunkEnabled]]() : <span class="apiret">enabled</span>
: [[API C_MerchantFrame.SellAllJunkItems|C_MerchantFrame.SellAllJunkItems]]()
: [[API BuyMerchantItem|BuyMerchantItem]](<span class="apiarg">index [, quantity]</span>) - Buys an item from a merchant.
: [[API BuybackItem|BuybackItem]](<span class="apiarg">slot</span>) - Buys back an item from the merchant.
: [[API CanAffordMerchantItem|CanAffordMerchantItem]](<span class="apiarg">index</span>)
: [[API CanMerchantRepair|CanMerchantRepair]]() : <span class="apiret">canRepair</span> - Returns true if the merchant can repair items.
: [[API CloseMerchant|CloseMerchant]]() - Closes the merchant window.
: [[API GetBuybackItemInfo|GetBuybackItemInfo]](<span class="apiarg">slotIndex</span>) : <span class="apiret">name, icon, price, quantity, numAvailable, isUsable, isBound</span> - Returns info for an item that can be bought back from a merchant.
: [[API GetBuybackItemLink|GetBuybackItemLink]](<span class="apiarg">index</span>) - Returns an [[itemLink]] for the buyback item.
: [[API GetMerchantCurrencies|GetMerchantCurrencies]]()
: [[API GetMerchantFilter|GetMerchantFilter]]()
: [[API GetMerchantItemCostInfo|GetMerchantItemCostInfo]](<span class="apiarg">index</span>) : <span class="apiret">itemCount</span> - Returns "alternative currency" information about an item.
: [[API GetMerchantItemCostItem|GetMerchantItemCostItem]](<span class="apiarg">index, itemIndex</span>) : <span class="apiret">itemTexture, itemValue, itemLink, currencyName</span> - Returns info for the currency cost for a merchant item.
: [[API GetMerchantItemID|GetMerchantItemID]](<span class="apiarg">index</span>) : <span class="apiret">itemID</span>
: [[API GetMerchantItemInfo|GetMerchantItemInfo]](<span class="apiarg">index</span>) : <span class="apiret">name, texture, price, quantity, numAvailable, isPurchasable, isUsable, extendedCost, currencyID, spellID</span> - Returns info for a merchant item.
: [[API GetMerchantItemLink|GetMerchantItemLink]](<span class="apiarg">index</span>) : <span class="apiret">link</span> - Returns the item link for a merchant item.
: [[API GetMerchantItemMaxStack|GetMerchantItemMaxStack]](<span class="apiarg">index</span>) : <span class="apiret">maxStack</span> - Returns the maximum stack size for a merchant item.
: [[API GetMerchantNumItems|GetMerchantNumItems]]() : <span class="apiret">numItems</span> - Returns the number of different items a merchant sells.
: [[API GetNumBuybackItems|GetNumBuybackItems]]() : <span class="apiret">numItems</span> - Returns the number of items available for buyback.
: [[API GetRepairAllCost|GetRepairAllCost]]() : <span class="apiret">repairAllCost, canRepair</span>
: [[API RepairAllItems|RepairAllItems]](<span class="apiarg">[guildBankRepair]</span>) - Repairs all equipped and inventory items.
: [[API ResetSetMerchantFilter|ResetSetMerchantFilter]]()
: [[API SetMerchantFilter|SetMerchantFilter]]()

===Trainer===
Relates to [[Trainer]]s.
: [[API BuyTrainerService|BuyTrainerService]](<span class="apiarg">index</span>) - Buys a trainer service (e.g. class skills and profession recipes).
: [[API CloseTrainer|CloseTrainer]]() - Closes the trainer window.
: [[API GetNumTrainerServices|GetNumTrainerServices]]() : <span class="apiret">numTrainerServices</span> - Returns the number of trainer services.
: [[API GetTrainerGreetingText|GetTrainerGreetingText]]() : <span class="apiret">greetingText</span> - Returns the trainer's greeting text.
: [[API GetTrainerSelectionIndex|GetTrainerSelectionIndex]]() : <span class="apiret">selectionIndex</span> - Returns the index of the selected trainer service.
: [[API GetTrainerServiceAbilityReq|GetTrainerServiceAbilityReq]](<span class="apiarg">trainerIndex, reqIndex</span>) : <span class="apiret">ability, hasReq</span> - Returns the name of a requirement for training a skill and if the player meets the requirement.
: [[API GetTrainerServiceCost|GetTrainerServiceCost]](<span class="apiarg">index</span>) : <span class="apiret">serviceCost, talentCost, professionCost</span> - Returns the cost of the specified trainer service.
: [[API GetTrainerServiceDescription|GetTrainerServiceDescription]](<span class="apiarg">index</span>) : <span class="apiret">serviceDescription</span> - Returns the description of a specific trainer service.
: [[API GetTrainerServiceIcon|GetTrainerServiceIcon]](<span class="apiarg">index</span>) : <span class="apiret">icon</span> - Returns the icon texture for a specific trainer service.
: [[API GetTrainerServiceInfo|GetTrainerServiceInfo]](<span class="apiarg">index</span>) : <span class="apiret">name, rank, category, expanded</span> - Returns information about a trainer service.
: [[API GetTrainerServiceItemLink|GetTrainerServiceItemLink]](<span class="apiarg">index</span>) : <span class="apiret">link</span> - Returns an item link for a trainer service.
: [[API GetTrainerServiceLevelReq|GetTrainerServiceLevelReq]](<span class="apiarg">id</span>) : <span class="apiret">reqLevel</span> - Returns the required level to learn a skill from the trainer.
: [[API GetTrainerServiceNumAbilityReq|GetTrainerServiceNumAbilityReq]]() - Get the maximum number of requirements that [[API GetTrainerServiceAbilityReq|GetTrainerServiceAbilityReq]] has.
: [[API GetTrainerServiceSkillLine|GetTrainerServiceSkillLine]](<span class="apiarg">index</span>) : <span class="apiret">skillLine</span>
: [[API GetTrainerServiceSkillReq|GetTrainerServiceSkillReq]](<span class="apiarg">index</span>) : <span class="apiret">skillName, skillLevel, hasReq</span> - Returns the name of the required skill and the amount needed in that skill.
: [[API GetTrainerServiceStepIndex|GetTrainerServiceStepIndex]]()
: [[API GetTrainerServiceTypeFilter|GetTrainerServiceTypeFilter]](<span class="apiarg">type</span>) : <span class="apiret">status</span> - Returns the status of a skill filter in the trainer window.
: [[API GetTrainerTradeskillRankValues|GetTrainerTradeskillRankValues]]()
: [[API IsTradeskillTrainer|IsTradeskillTrainer]]() : <span class="apiret">isTradeskillTrainer</span> - Returns true if the training window is used for a profession trainer.
: [[API OpenTrainer|OpenTrainer]]()
: [[API SelectTrainerService|SelectTrainerService]](<span class="apiarg">index</span>)
: [[API SetTrainerServiceTypeFilter|SetTrainerServiceTypeFilter]](<span class="apiarg">type, enable, exclusive</span>) - Sets the status of a skill filter in the trainer window.

==Players==
: [[API Ambiguate|Ambiguate]](<span class="apiarg">fullName, context</span>) : <span class="apiret">result</span> - Returns a version of a character-realm string suitable for use in a given context.
: [[API GetAutoCompleteResults|GetAutoCompleteResults]](<span class="apiarg">text, numResults, cursorPosition, allowFullMatch, includeBitField, excludeBitField</span>) : <span class="apiret">results</span> - Returns possible player names matching a given prefix string and specified requirements.
: [[API GetPlayerInfoByGUID|GetPlayerInfoByGUID]](<span class="apiarg">guid</span>) : <span class="apiret">localizedClass, englishClass, localizedRace, englishRace, sex, name, realmName</span> - Returns character info for another player from their GUID.

===Inspection===
: [[API CanInspect|CanInspect]](<span class="apiarg">targetGUID</span>) : <span class="apiret">result</span> - Returns true if the player can inspect the unit.
: [[API CheckInteractDistance|CheckInteractDistance]](<span class="apiarg">unitGUID, distIndex</span>) : <span class="apiret">result</span> {{apitag|nocombat}} - Returns true if the player is in range to perform a specific interaction with the unit.
: [[API ClearInspectPlayer|ClearInspectPlayer]]() - Reset inspect data once finished with it.
: [[API GetInspectArenaData|GetInspectArenaData]](<span class="apiarg">bracketId</span>) : <span class="apiret">rating, seasonPlayed, seasonWon, weeklyPlayed, weeklyWon</span>
: [[API GetInspectHonorData|GetInspectHonorData]]() : <span class="apiret">todayHK, todayHonor, yesterdayHK, yesterdayHonor, lifetimeHK, lifetimeRank</span> - Returns honor info for the inspected player unit.
: [[API GetInspectRatedBGData|GetInspectRatedBGData]]()
: [[API GetInspectSpecialization|GetInspectSpecialization]](<span class="apiarg">unit</span>) : <span class="apiret">id</span> - Returns the specialization for the inspected player unit.
: [[API GetInspectTalent|GetInspectTalent]]()
: [[API NotifyInspect|NotifyInspect]](<span class="apiarg">targetGUID</span>) - Requests another player's inventory and talent info before inspecting.
: [[API InspectUnit|InspectUnit]](<span class="apiarg">unit</span>) {{apitag|framexml}} - Instructs FrameXML to inspect a particular unit (query server; show UI).

===Trading===
Relates to [[Trade|Trading]].
: [[API AcceptTrade|AcceptTrade]]() {{apitag|hwevent}} - Accepts the current trade offer.
: [[API AddTradeMoney|AddTradeMoney]]() - Adds money currently held by the cursor to the trade offer.
: [[API BeginTrade|BeginTrade]]()
: [[API CancelTrade|CancelTrade]]() - Declines the current trade offer.
: [[API CancelTradeAccept|CancelTradeAccept]]() - Cancels the trade attempt which required an accept.
: [[API ClickTargetTradeButton|ClickTargetTradeButton]](<span class="apiarg">index</span>)
: [[API ClickTradeButton|ClickTradeButton]](<span class="apiarg">index</span>) - Equivalent of a mouseclick on the trade window buttons [1-7].
: [[API CloseTrade|CloseTrade]]() - Closes the trade window.
: [[API GetPlayerTradeMoney|GetPlayerTradeMoney]]() : <span class="apiret">tradeMoney</span> - Returns the amount of money the player has in the trade window.
: [[API GetTargetTradeMoney|GetTargetTradeMoney]]() : <span class="apiret">amount</span> - Returns the amount of money in the trade window for the other player.
: [[API GetTradePlayerItemInfo|GetTradePlayerItemInfo]](<span class="apiarg">id</span>) : <span class="apiret">name, texture, numItems, quality, enchantment, canLoseTransmog</span> - Returns information about a trade item.
: [[API GetTradePlayerItemLink|GetTradePlayerItemLink]](<span class="apiarg">index</span>) : <span class="apiret">itemLink</span> - Returns the item link for an item in the trade window.
: [[API GetTradeTargetItemInfo|GetTradeTargetItemInfo]](<span class="apiarg">index</span>) : <span class="apiret">name, texture, quantity, quality, isUsable, enchant</span> - Returns item info for the other player in the trade window.
: [[API GetTradeTargetItemLink|GetTradeTargetItemLink]](<span class="apiarg">index</span>) : <span class="apiret">itemLink</span> - Returns the item link for an item from the other player in the trade window.
: [[API InitiateTrade|InitiateTrade]](<span class="apiarg">guid</span>) - Opens a trade with the specified unit.
: [[API SetTradeMoney|SetTradeMoney]](<span class="apiarg">copper</span>) - Sets the amount of money offered as part of the player's trade offer.

===Summoning===
: [[API C_IncomingSummon.HasIncomingSummon|C_IncomingSummon.HasIncomingSummon]](<span class="apiarg">unit</span>) : <span class="apiret">summon</span> - Returns whether a group member has an incoming summon.
: [[API C_IncomingSummon.IncomingSummonStatus|C_IncomingSummon.IncomingSummonStatus]](<span class="apiarg">unit</span>) : <span class="apiret">status</span> - Returns the status of an group member's incoming summon.
: [[API C_SummonInfo.CancelSummon|C_SummonInfo.CancelSummon]]() - Declines a summon request.
: [[API C_SummonInfo.ConfirmSummon|C_SummonInfo.ConfirmSummon]]() - Accepts a summon request.
: [[API C_SummonInfo.GetSummonConfirmAreaName|C_SummonInfo.GetSummonConfirmAreaName]]() : <span class="apiret">areaName</span> - Returns the zone where you will be summoned to.
: [[API C_SummonInfo.GetSummonConfirmSummoner|C_SummonInfo.GetSummonConfirmSummoner]]() : <span class="apiret">summoner</span> - Returns the name of the player summoning you.
: [[API C_SummonInfo.GetSummonConfirmTimeLeft|C_SummonInfo.GetSummonConfirmTimeLeft]]() : <span class="apiret">timeLeft</span> - Returns the time left in seconds for accepting a summon.
: [[API C_SummonInfo.GetSummonReason|C_SummonInfo.GetSummonReason]]() : <span class="apiret">summonReason</span>
: [[API C_SummonInfo.IsSummonSkippingStartExperience|C_SummonInfo.IsSummonSkippingStartExperience]]() : <span class="apiret">isSummonSkippingStartExperience</span>
: [[API PlayerCanTeleport|PlayerCanTeleport]]() : <span class="apiret">result</span>

===Death===
: [[API C_DeathInfo.GetCorpseMapPosition|C_DeathInfo.GetCorpseMapPosition]](<span class="apiarg">uiMapID</span>) : <span class="apiret">position</span> - Returns the location of the player's corpse on the map.
: [[API C_DeathInfo.GetDeathReleasePosition|C_DeathInfo.GetDeathReleasePosition]](<span class="apiarg">uiMapID</span>) : <span class="apiret">position</span> - When the player is dead and hasn't released spirit, returns the location of the graveyard they will release to.
: [[API C_DeathInfo.GetGraveyardsForMap|C_DeathInfo.GetGraveyardsForMap]](<span class="apiarg">uiMapID</span>) : <span class="apiret">graveyards</span> - Returns graveyard info and location for a map.
: [[API C_DeathInfo.GetSelfResurrectOptions|C_DeathInfo.GetSelfResurrectOptions]]() : <span class="apiret">options</span> - Returns self resurrect options for your character, including from soulstones.
: [[API C_DeathInfo.UseSelfResurrectOption|C_DeathInfo.UseSelfResurrectOption]](<span class="apiarg">optionType, id</span>) - Uses a soulstone or similar means of self resurrection.
: [[API AcceptResurrect|AcceptResurrect]]() - Accepts a resurrection offer.
: [[API CannotBeResurrected|CannotBeResurrected]]()
: [[API DeathRecap_GetEvents|DeathRecap_GetEvents]](<span class="apiarg">recapID</span>) : <span class="apiret">events</span>
: [[API DeathRecap_HasEvents|DeathRecap_HasEvents]]() : <span class="apiret">hasEvents</span>
: [[API DeclineResurrect|DeclineResurrect]]() - Declines a resurrection offer.
: [[API GetCemeteryPreference|GetCemeteryPreference]]() : <span class="apiret">result</span>
: [[API GetCorpseRecoveryDelay|GetCorpseRecoveryDelay]]() : <span class="apiret">result</span> - Time left before a player can accept a resurrection.
: [[API GetDeathRecapLink|GetDeathRecapLink]](<span class="apiarg">recapID</span>) : <span class="apiret">recapLink</span>
: [[API GetReleaseTimeRemaining|GetReleaseTimeRemaining]]() : <span class="apiret">result</span> - Returns the amount of time left before your ghost is pulled from your body.
: [[API GetResSicknessDuration|GetResSicknessDuration]]() : <span class="apiret">result</span>
: [[API HasNoReleaseAura|HasNoReleaseAura]]() : <span class="apiret">hasCannotReleaseEffect, longestDuration, hasUntilCancelledDuration</span>
: [[API IsCemeterySelectionAvailable|IsCemeterySelectionAvailable]]() : <span class="apiret">result</span>
: [[API IsEncounterLimitingResurrections|IsEncounterLimitingResurrections]]()
: [[API IsEncounterSuppressingRelease|IsEncounterSuppressingRelease]]()
: [[API NotWhileDeadError|NotWhileDeadError]]() - Generates an error message saying you cannot do that while dead.
: [[API PortGraveyard|PortGraveyard]]() {{apitag|protected}}
: [[API RepopMe|RepopMe]]() - Releases your ghost to the graveyard when dead.
: [[API ResurrectGetOfferer|ResurrectGetOfferer]]() : <span class="apiret">name</span> - Returns the name of the person offering to resurrect you.
: [[API ResurrectHasSickness|ResurrectHasSickness]]() : <span class="apiret">result</span> - Appears to be used when accepting a resurrection will give you resurrection sickessness.
: [[API ResurrectHasTimer|ResurrectHasTimer]]() : <span class="apiret">result</span> - Does the player have to wait before accepting a resurrection.
: [[API RetrieveCorpse|RetrieveCorpse]]() - Resurrects when the player is standing near its corpse.
: [[API SetCemeteryPreference|SetCemeteryPreference]](<span class="apiarg">cemetaryID</span>)
: [[API TimeoutResurrect|TimeoutResurrect]]()

===Archaeology===
[[Archaeology]] was added in [[Patch 4.0.1]]
: [[API C_ResearchInfo.GetDigSitesForMap|C_ResearchInfo.GetDigSitesForMap]](<span class="apiarg">uiMapID</span>) : <span class="apiret">digSites</span> - Returns the dig sites on a map.
: [[API ArchaeologyMapUpdateAll|ArchaeologyMapUpdateAll]](<span class="apiarg">uiMapID</span>) : <span class="apiret">numSites</span> - Updates and returns the amount of [[digsite]]s in a zone.
: [[API ArchaeologyGetIconInfo|ArchaeologyGetIconInfo]](<span class="apiarg">index</span>)
: [[API ArcheologyGetVisibleBlobID|ArcheologyGetVisibleBlobID]](<span class="apiarg">index</span>) - Returns BlobID of a digsite in the current map-zone.
: [[API CanItemBeSocketedToArtifact|CanItemBeSocketedToArtifact]](<span class="apiarg">itemID</span>) - Returns 1 if item could be added to the [[API SetSelectedArtifact|selected]] artifact.
: [[API CanScanResearchSite|CanScanResearchSite]]() : <span class="apiret">onSite</span> - Returns true if the character is on a [[digsite]].
: [[API CanSolveArtifact|CanSolveArtifact]]() - Returns true if artifact can be solved.
: [[API CloseResearch|CloseResearch]]()
: [[API GetActiveArtifactByRace|GetActiveArtifactByRace]](<span class="apiarg">branchIndex, artifactIndex</span>) : <span class="apiret">artifactName, artifactDescription, artifactRarity, artifactIcon, hoverDescription, keystoneCount, bgTexture</span> - Returns the active Archaeology artifact for a race.
: [[API GetArchaeologyInfo|GetArchaeologyInfo]]() : <span class="apiret">localizedName</span> - Returns the localized name for the Archaeology profession.
: [[API GetArchaeologyRaceInfo|GetArchaeologyRaceInfo]](<span class="apiarg">raceIndex</span>) : <span class="apiret">raceName, raceTexture, raceItemID, numFragmentsCollected, numFragmentsRequired, maxFragments</span> - Returns the information for a specific race used in Archaeology.
: [[API GetArchaeologyRaceInfoByID|GetArchaeologyRaceInfoByID]](<span class="apiarg">branchID</span>) : <span class="apiret">raceName, raceTextureID, raceItemID, numFragmentsCollected, numFragmentsRequired, maxFragments</span> - Returns info for an Archaeology race.
: [[API GetArtifactInfoByRace|GetArtifactInfoByRace]](<span class="apiarg">raceIndex, artifactIndex</span>) : <span class="apiret">artifactName, artifactDescription, artifactRarity, artifactIcon, hoverDescription, keystoneCount, bgTexture, firstCompletionTime, completionCount</span> - Returns the information for a specific race's artifact.
: [[API GetNumArchaeologyRaces|GetNumArchaeologyRaces]]() : <span class="apiret">numRaces</span> - Returns the number of Archaeology races in the game.
: [[API GetNumArtifactsByRace|GetNumArtifactsByRace]](<span class="apiarg">raceIndex</span>) : <span class="apiret">numProjects</span> - Returns the amount of artifacts the player has acquired from the provided race.
: [[API GetSelectedArtifactInfo|GetSelectedArtifactInfo]]() : <span class="apiret">artifactName, artifactDescription, artifactRarity, artifactIcon, hoverDescription, keystoneCount, bgTexture, spellID</span> - Returns info for the selected race's Archaeology artifact.
: [[API GetArtifactProgress|GetArtifactProgress]]() : <span class="apiret">numFragmentsCollected, numFragmentsAdded, numFragmentsRequired</span> - Returns progress info for the selected Archaeology artifact.
: [[API IsArtifactCompletionHistoryAvailable|IsArtifactCompletionHistoryAvailable]]()
: [[API ItemAddedToArtifact|ItemAddedToArtifact]](<span class="apiarg">keystoneindex</span>) - Returns if there is a keystone in the artifact.
: [[API SetSelectedArtifact|SetSelectedArtifact]](<span class="apiarg">raceIndex [, index]</span>) - Sets the selected artifact to an archaeology race.
: [[API RemoveItemFromArtifact|RemoveItemFromArtifact]]() : <span class="apiret">keystoneRemoved</span> - Removes a [[Keystone]] from the selected artifact.
: [[API SocketItemToArtifact|SocketItemToArtifact]]() : <span class="apiret">keystoneAdded</span> - Adds a [[keystone]] to the selected archaeology artifact.
: [[API SolveArtifact|SolveArtifact]]() - Solve the [[API SetSelectedArtifact|selected]] artifact.

===Glyphs===
[[Glyph]]s were added in [[Patch 3.0.2]]. After the Glyph interface was removed in [[Patch 7.0.3]] they were streamlined into the [[Spellbook]].
: [[API AttachGlyphToSpell|AttachGlyphToSpell]](<span class="apiarg">spellID</span>)
: [[API GetCurrentGlyphNameForSpell|GetCurrentGlyphNameForSpell]](<span class="apiarg">spellID</span>)
: [[API GetPendingGlyphName|GetPendingGlyphName]]()
: [[API HasAttachedGlyph|HasAttachedGlyph]](<span class="apiarg">spellID</span>)
: [[API HasPendingGlyphCast|HasPendingGlyphCast]]()
: [[API IsCastingGlyph|IsCastingGlyph]]()
: [[API IsPendingGlyphRemoval|IsPendingGlyphRemoval]]()
: [[API IsSpellValidForPendingGlyph|IsSpellValidForPendingGlyph]](<span class="apiarg">spellID</span>)

===Item Socketing===
The following were added along with socketed items and gems in [[Patch 2.0]]. ID refers to a 1-based index of the sockets in the item being considered for socketing.
: [[API C_ItemSocketInfo.CompleteSocketing|C_ItemSocketInfo.CompleteSocketing]]() - Completes socketing an item, binding it to the player.
: [[API AcceptSockets|AcceptSockets]]() - Confirms pending gems for socketing.
: [[API CloseSocketInfo|CloseSocketInfo]]() - Cancels pending gems for socketing.
: [[API GetExistingSocketInfo|GetExistingSocketInfo]](<span class="apiarg">id</span>) - Returns information about the existing gem in the socket.
: [[API GetExistingSocketLink|GetExistingSocketLink]](<span class="apiarg">id</span>) - Returns an item link for the existing gem in the socket.
: [[API GetNewSocketInfo|GetNewSocketInfo]](<span class="apiarg">id</span>) - Returns information about the new (tentative) gem in the socket.
: [[API GetNewSocketLink|GetNewSocketLink]](<span class="apiarg">id</span>) - Returns an item link for the new (tentative) gem in the socket.
: [[API GetNumSockets|GetNumSockets]]() : <span class="apiret">numSockets</span> - Returns the number of sockets for an item in the socketing window.
: [[API GetSocketItemBoundTradeable|GetSocketItemBoundTradeable]]() : <span class="apiret">isBoundTradeable</span> - Returns true if the item currently being socketed can be traded to other eligible players (BoP boss loot).
: [[API GetSocketItemInfo|GetSocketItemInfo]]() : <span class="apiret">name, icon, quality</span> - Returns info for the item currently being socketed.
: [[API GetSocketItemRefundable|GetSocketItemRefundable]]() : <span class="apiret">isRefundable</span> - Returns whether the item currently being socketed is refundable.
: [[API GetSocketTypes|GetSocketTypes]](<span class="apiarg">index</span>) : <span class="apiret">gemColor</span> - Returns the type (color) of a socket in the item.
: [[API HasBoundGemProposed|HasBoundGemProposed]]()
: [[API SocketInventoryItem|SocketInventoryItem]](<span class="apiarg">slot</span>) - Considers the item in the inventory slot for socketing.

==PvP==
Relates to [[Player vs. Player]].
: [[API C_PvP.ArePvpTalentsUnlocked|C_PvP.ArePvpTalentsUnlocked]]() : <span class="apiret">arePvpTalentsUnlocked</span>
: [[API C_PvP.CanDisplayDamage|C_PvP.CanDisplayDamage]]() : <span class="apiret">canDisplay</span>
: [[API C_PvP.CanDisplayDeaths|C_PvP.CanDisplayDeaths]]() : <span class="apiret">canDisplay</span>
: [[API C_PvP.CanDisplayHealing|C_PvP.CanDisplayHealing]]() : <span class="apiret">canDisplay</span>
: [[API C_PvP.CanDisplayHonorableKills|C_PvP.CanDisplayHonorableKills]]() : <span class="apiret">canDisplay</span>
: [[API C_PvP.CanDisplayKillingBlows|C_PvP.CanDisplayKillingBlows]]() : <span class="apiret">canDisplay</span>
: [[API C_PvP.CanPlayerUseRatedPVPUI|C_PvP.CanPlayerUseRatedPVPUI]]() : <span class="apiret">canUse, failureReason</span>
: [[API C_PvP.DoesMatchOutcomeAffectRating|C_PvP.DoesMatchOutcomeAffectRating]]() : <span class="apiret">doesAffect</span>
: [[API C_PvP.GetActiveMatchBracket|C_PvP.GetActiveMatchBracket]]() : <span class="apiret">bracket</span>
: [[API C_PvP.GetActiveMatchDuration|C_PvP.GetActiveMatchDuration]]() : <span class="apiret">seconds</span>
: [[API C_PvP.GetActiveMatchState|C_PvP.GetActiveMatchState]]() : <span class="apiret">state</span>
: [[API C_PvP.GetActiveMatchWinner|C_PvP.GetActiveMatchWinner]]() : <span class="apiret">winner</span>
: [[API C_PvP.GetAssignedSpecForBattlefieldQueue|C_PvP.GetAssignedSpecForBattlefieldQueue]](<span class="apiarg">queueID</span>) : <span class="apiret">specializationID</span>
: [[API C_PvP.GetBrawlSoloRBGMinItemLevel|C_PvP.GetBrawlSoloRBGMinItemLevel]]() : <span class="apiret">minItemLevel</span>
: [[API C_PvP.GetCustomVictoryStatID|C_PvP.GetCustomVictoryStatID]]() : <span class="apiret">statID</span>
: [[API C_PvP.GetGlobalPvpScalingInfoForSpecID|C_PvP.GetGlobalPvpScalingInfoForSpecID]](<span class="apiarg">specializationID</span>) : <span class="apiret">pvpScalingData</span>
: [[API C_PvP.GetHonorRewardInfo|C_PvP.GetHonorRewardInfo]](<span class="apiarg">honorLevel</span>) : <span class="apiret">info</span>
: [[API C_PvP.GetMatchPVPStatColumn|C_PvP.GetMatchPVPStatColumn]](<span class="apiarg">pvpStatID</span>) : <span class="apiret">info</span>
: [[API C_PvP.GetMatchPVPStatColumns|C_PvP.GetMatchPVPStatColumns]]() : <span class="apiret">columns</span>
: [[API C_PvP.GetNextHonorLevelForReward|C_PvP.GetNextHonorLevelForReward]](<span class="apiarg">honorLevel</span>) : <span class="apiret">nextHonorLevelWithReward</span>
: [[API C_PvP.GetOutdoorPvPWaitTime|C_PvP.GetOutdoorPvPWaitTime]](<span class="apiarg">uiMapID</span>) : <span class="apiret">pvpWaitTime</span> - Returns the time until the next battle in a PvP zone like Wintergrasp and Tol Barad.
: [[API C_PvP.GetPersonalRatedBGBlitzSpecStats|C_PvP.GetPersonalRatedBGBlitzSpecStats]]() : <span class="apiret">specStats</span>
: [[API C_PvP.GetPersonalRatedSoloShuffleSpecStats|C_PvP.GetPersonalRatedSoloShuffleSpecStats]]() : <span class="apiret">specStats</span>
: [[API C_PvP.GetPostMatchCurrencyRewards|C_PvP.GetPostMatchCurrencyRewards]]() : <span class="apiret">rewards</span>
: [[API C_PvP.GetPostMatchItemRewards|C_PvP.GetPostMatchItemRewards]]() : <span class="apiret">rewards</span>
: [[API C_PvP.GetPVPActiveMatchPersonalRatedInfo|C_PvP.GetPVPActiveMatchPersonalRatedInfo]]() : <span class="apiret">info</span>
: [[API C_PvP.GetPVPActiveRatedMatchDeserterPenalty|C_PvP.GetPVPActiveRatedMatchDeserterPenalty]]() : <span class="apiret">deserterPenalty</span>
: [[API C_PvP.GetPVPSeasonRewardAchievementID|C_PvP.GetPVPSeasonRewardAchievementID]]() : <span class="apiret">achievementID</span>
: [[API C_PvP.GetPvpTalentsUnlockedLevel|C_PvP.GetPvpTalentsUnlockedLevel]]() : <span class="apiret">unlockLevel</span>
: [[API C_PvP.GetPvpTierID|C_PvP.GetPvpTierID]](<span class="apiarg">tierEnum, bracketEnum</span>) : <span class="apiret">id</span>
: [[API C_PvP.GetPvpTierInfo|C_PvP.GetPvpTierInfo]](<span class="apiarg">tierID</span>) : <span class="apiret">pvpTierInfo</span>
: [[API C_PvP.GetRatedSoloRBGMinItemLevel|C_PvP.GetRatedSoloRBGMinItemLevel]]() : <span class="apiret">minItemLevel</span>
: [[API C_PvP.GetRatedSoloRBGRewards|C_PvP.GetRatedSoloRBGRewards]]() : <span class="apiret">honor, experience, itemRewards, currencyRewards, roleShortageBonus</span>
: [[API C_PvP.GetRatedSoloShuffleMinItemLevel|C_PvP.GetRatedSoloShuffleMinItemLevel]]() : <span class="apiret">minItemLevel</span>
: [[API C_PvP.GetRatedSoloShuffleRewards|C_PvP.GetRatedSoloShuffleRewards]]() : <span class="apiret">honor, experience, itemRewards, currencyRewards, roleShortageBonus</span>
: [[API C_PvP.GetRewardItemLevelsByTierEnum|C_PvP.GetRewardItemLevelsByTierEnum]](<span class="apiarg">pvpTierEnum</span>) : <span class="apiret">activityItemLevel, weeklyItemLevel</span>
: [[API C_PvP.GetScoreInfo|C_PvP.GetScoreInfo]](<span class="apiarg">offsetIndex</span>) : <span class="apiret">info</span>
: [[API C_PvP.GetScoreInfoByPlayerGuid|C_PvP.GetScoreInfoByPlayerGuid]](<span class="apiarg">guid</span>) : <span class="apiret">info</span>
: [[API C_PvP.GetSeasonBestInfo|C_PvP.GetSeasonBestInfo]]() : <span class="apiret">tierID, nextTierID</span>
: [[API C_PvP.GetSkirmishInfo|C_PvP.GetSkirmishInfo]](<span class="apiarg">pvpBracket</span>) : <span class="apiret">battlemasterListInfo</span>
: [[API C_PvP.GetTeamInfo|C_PvP.GetTeamInfo]](<span class="apiarg">factionIndex</span>) : <span class="apiret">info</span>
: [[API C_PvP.GetUIDisplaySeason|C_PvP.GetUIDisplaySeason]]() : <span class="apiret">uiDisplaySeason</span>
: [[API C_PvP.GetWeeklyChestInfo|C_PvP.GetWeeklyChestInfo]]() : <span class="apiret">rewardAchieved, lastWeekRewardAchieved, lastWeekRewardClaimed, pvpTierMaxFromWins</span>
: [[API C_PvP.GetZonePVPInfo|C_PvP.GetZonePVPInfo]]() : <span class="apiret">pvpType, isSubZonePvP, factionName</span> - Returns PVP info for the current zone.
: [[API C_PvP.IsActiveMatchRegistered|C_PvP.IsActiveMatchRegistered]]() : <span class="apiret">registered</span>
: [[API C_PvP.IsBrawlSoloRBG|C_PvP.IsBrawlSoloRBG]]() : <span class="apiret">isBrawlSoloRBG</span>
: [[API C_PvP.IsBrawlSoloShuffle|C_PvP.IsBrawlSoloShuffle]]() : <span class="apiret">isBrawlSoloShuffle</span>
: [[API C_PvP.IsInRatedMatchWithDeserterPenalty|C_PvP.IsInRatedMatchWithDeserterPenalty]]() : <span class="apiret">isInRatedMatchWithDeserterPenalty</span>
: [[API C_PvP.IsMatchActive|C_PvP.IsMatchActive]]() : <span class="apiret">isActive</span>
: [[API C_PvP.IsMatchComplete|C_PvP.IsMatchComplete]]() : <span class="apiret">isComplete</span>
: [[API C_PvP.IsMatchFactional|C_PvP.IsMatchFactional]]() : <span class="apiret">isFactional</span>
: [[API C_PvP.IsPVPMap|C_PvP.IsPVPMap]]() : <span class="apiret">isPVPMap</span>
: [[API C_PvP.IsRatedMap|C_PvP.IsRatedMap]]() : <span class="apiret">isRatedMap</span>
: [[API C_PvP.IsRatedSoloRBG|C_PvP.IsRatedSoloRBG]]() : <span class="apiret">isRatedSoloRBG</span>
: [[API C_PvP.IsRatedSoloShuffle|C_PvP.IsRatedSoloShuffle]]() : <span class="apiret">isRatedSoloShuffle</span>
: [[API C_PvP.IsSoloRBG|C_PvP.IsSoloRBG]]() : <span class="apiret">isSoloRBG</span>
: [[API C_PvP.IsSubZonePVPPOI|C_PvP.IsSubZonePVPPOI]]() : <span class="apiret">result</span>
: [[API C_PvP.JoinRatedBGBlitz|C_PvP.JoinRatedBGBlitz]]()
: [[API C_PvP.RequestCrowdControlSpell|C_PvP.RequestCrowdControlSpell]](<span class="apiarg">playerToken</span>)
: [[API C_PvP.SetPVP|C_PvP.SetPVP]](<span class="apiarg">[enablePVP]</span>) - Sets the player's PvP flag.
: [[API C_PvP.StartSoloRBGWarGameByName|C_PvP.StartSoloRBGWarGameByName]](<span class="apiarg">args</span>) : <span class="apiret">success</span>
: [[API C_PvP.StartSpectatorSoloRBGWarGame|C_PvP.StartSpectatorSoloRBGWarGame]](<span class="apiarg">opaqueID1, opaqueID2, specifiedMap, tournamentRules</span>) : <span class="apiret">success</span>
: [[API C_PvP.TogglePVP|C_PvP.TogglePVP]]() - Toggles the player's PvP flag on or off.
: [[API AcceptDuel|AcceptDuel]]() - Accepts a duel challenge.
: [[API CancelDuel|CancelDuel]]() - Forfeits the current duel or declines a duel invitation.
: [[API ClearBattlemaster|ClearBattlemaster]]()
: [[API ForfeitDuel|ForfeitDuel]]()
: [[API GetPVPDesired|GetPVPDesired]]() : <span class="apiret">result</span> - Returns true if the player has enabled their PvP flag.
: [[API GetPVPLifetimeStats|GetPVPLifetimeStats]]() : <span class="apiret">lifetimeHonorableKills, lifetimeMaxPVPRank</span> - Returns the character's lifetime PvP statistics.
: [[API GetPVPRoles|GetPVPRoles]]() : <span class="apiret">tank, healer, dps</span>
: [[API GetPVPSessionStats|GetPVPSessionStats]]() : <span class="apiret">honorableKills, dishonorableKills</span> - Returns the character's Honor statistics for this session.
: [[API GetPVPTimer|GetPVPTimer]]() : <span class="apiret">result</span> - Returns the time left in milliseconds until the player is unflagged for PvP.
: [[API GetPVPYesterdayStats|GetPVPYesterdayStats]]() : <span class="apiret">honorableKills, dishonorableKills</span> - Returns the character's Honor statistics for yesterday.
: [[API GetRewardPackArtifactPower|GetRewardPackArtifactPower]](<span class="apiarg">rewardPackID</span>)
: [[API GetRewardPackCurrencies|GetRewardPackCurrencies]](<span class="apiarg">rewardPackID</span>)
: [[API GetRewardPackItems|GetRewardPackItems]](<span class="apiarg">rewardPackID</span>)
: [[API GetRewardPackMoney|GetRewardPackMoney]](<span class="apiarg">rewardPackID</span>)
: [[API GetRewardPackTitleName|GetRewardPackTitleName]](<span class="apiarg">titleID</span>)
: [[API GetRewardPackTitle|GetRewardPackTitle]](<span class="apiarg">rewardPackID</span>)
: [[API IsInActiveWorldPVP|IsInActiveWorldPVP]]()
: [[API IsPartyWorldPVP|IsPartyWorldPVP]]()
: [[API PlayerIsPVPInactive|PlayerIsPVPInactive]](<span class="apiarg">unit</span>) : <span class="apiret">result</span>
: [[API RequestPVPOptionsEnabled|RequestPVPOptionsEnabled]]()
: [[API RequestPVPRewards|RequestPVPRewards]]()
: [[API SetPVPRoles|SetPVPRoles]](<span class="apiarg">tank, healer, dps</span>)
: [[API SortBGList|SortBGList]]()
: [[API StartDuel|StartDuel]](<span class="apiarg">unit</span>) - Challenges the specified player to a duel.
: [[API UnitHonor|UnitHonor]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns the current amount of honor the unit has for the current rank.
: [[API UnitHonorLevel|UnitHonorLevel]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns the current honor rank of the unit.
: [[API UnitHonorMax|UnitHonorMax]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns the maximum amount of honor for the current rank.
: [[API UnitIsMercenary|UnitIsMercenary]](<span class="apiarg">name</span>) : <span class="apiret">result</span>
: [[API UnitIsPVPFreeForAll|UnitIsPVPFreeForAll]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns true if the unit is flagged for free-for-all PVP (e.g. in a world arena).
: [[API UnitIsPVPSanctuary|UnitIsPVPSanctuary]](<span class="apiarg">[unit]</span>) : <span class="apiret">result</span> - Returns whether the unit is in a PvP sanctuary, and therefore cannot be attacked by other players.
: [[API UnitIsPVP|UnitIsPVP]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns true if the unit is flagged for PVP.
: [[API UnitPVPName|UnitPVPName]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns the unit's name with title (e.g. "Bob the Explorer").
: [[API UnitPvpClassification|UnitPvpClassification]](<span class="apiarg">unit</span>) : <span class="apiret">classification</span> - Returns whether the unit is a flag/orb carrier or cart runner.

===Arena===
: [[API C_PvP.GetArenaCrowdControlInfo|C_PvP.GetArenaCrowdControlInfo]](<span class="apiarg">playerToken</span>) : <span class="apiret">spellID, startTime, duration</span>
: [[API C_PvP.GetArenaRewards|C_PvP.GetArenaRewards]](<span class="apiarg">teamSize</span>) : <span class="apiret">honor, experience, itemRewards, currencyRewards, roleShortageBonus</span>
: [[API C_PvP.GetArenaSkirmishRewards|C_PvP.GetArenaSkirmishRewards]]() : <span class="apiret">honor, experience, itemRewards, currencyRewards, roleShortageBonus</span>
: [[API C_PvP.HasArenaSkirmishWinToday|C_PvP.HasArenaSkirmishWinToday]]() : <span class="apiret">hasArenaSkirmishWinToday</span>
: [[API C_PvP.IsArena|C_PvP.IsArena]]() : <span class="apiret">isArena</span>
: [[API C_PvP.IsMatchConsideredArena|C_PvP.IsMatchConsideredArena]]() : <span class="apiret">asArena</span>
: [[API C_PvP.IsRatedArena|C_PvP.IsRatedArena]]() : <span class="apiret">isRatedArena</span>
: [[API CanSurrenderArena|CanSurrenderArena]]()
: [[API GetArenaOpponentSpec|GetArenaOpponentSpec]](<span class="apiarg">id</span>) : <span class="apiret">specID, gender</span>
: [[API GetBattlefieldArenaFaction|GetBattlefieldArenaFaction]]() : <span class="apiret">myFaction</span>
: [[API GetBattlefieldTeamInfo|GetBattlefieldTeamInfo]](<span class="apiarg">index</span>) : <span class="apiret">teamName, oldTeamRating, newTeamRating, teamRating</span> - Returns info for an Arena team at the end of the match.
: [[API GetCurrentArenaSeason|GetCurrentArenaSeason]]() : <span class="apiret">season</span> - Returns the current arena season.
: [[API GetNumArenaOpponents|GetNumArenaOpponents]]()
: [[API GetNumArenaOpponentSpecs|GetNumArenaOpponentSpecs]]()
: [[API GetPreviousArenaSeason|GetPreviousArenaSeason]]() - Gets the previous Arena season.
: [[API IsActiveBattlefieldArena|IsActiveBattlefieldArena]]() : <span class="apiret">isArena, isRegistered</span> - Returns true if the player is inside a (rated) arena.
: [[API IsArenaSkirmish|IsArenaSkirmish]]()
: [[API JoinArena|JoinArena]]()
: [[API JoinSkirmish|JoinSkirmish]](<span class="apiarg">arenaID [, joinAsGroup]</span>) - Queue for a arena either solo or as a group.
: [[API RequeueSkirmish|RequeueSkirmish]]() - Requeues for an arena skirmish.
: [[API SurrenderArena|SurrenderArena]]()

===Solo Shuffle===
: [[API C_PvP.IsSoloShuffle|C_PvP.IsSoloShuffle]]() : <span class="apiret">isSoloShuffle</span>
: [[API JoinRatedSoloShuffle|JoinRatedSoloShuffle]]()
: [[API StartSoloShuffleWarGameByName|StartSoloShuffleWarGameByName]]()
: [[API StartSpectatorSoloShuffleWarGame|StartSpectatorSoloShuffleWarGame]]()

===Battlegrounds===
: [[API C_PvP.GetBattlefieldFlagPosition|C_PvP.GetBattlefieldFlagPosition]](<span class="apiarg">flagIndex, uiMapId</span>) : <span class="apiret">uiPosx, uiPosy, flagTexture</span>
: [[API C_PvP.GetLevelUpBattlegrounds|C_PvP.GetLevelUpBattlegrounds]](<span class="apiarg">level</span>) : <span class="apiret">battlefields</span>
: [[API C_PvP.GetRandomBGInfo|C_PvP.GetRandomBGInfo]]() : <span class="apiret">info</span>
: [[API C_PvP.GetRandomBGRewards|C_PvP.GetRandomBGRewards]]() : <span class="apiret">honor, experience, itemRewards, currencyRewards, roleShortageBonus</span>
: [[API C_PvP.GetRandomEpicBGInfo|C_PvP.GetRandomEpicBGInfo]]() : <span class="apiret">info</span>
: [[API C_PvP.GetRandomEpicBGRewards|C_PvP.GetRandomEpicBGRewards]]() : <span class="apiret">honor, experience, itemRewards, currencyRewards, roleShortageBonus</span>
: [[API C_PvP.GetRatedBGRewards|C_PvP.GetRatedBGRewards]]() : <span class="apiret">honor, experience, itemRewards, currencyRewards, roleShortageBonus</span>
: [[API C_PvP.IsBattleground|C_PvP.IsBattleground]]() : <span class="apiret">isBattleground</span>
: [[API C_PvP.IsBattlegroundEnlistmentBonusActive|C_PvP.IsBattlegroundEnlistmentBonusActive]]() : <span class="apiret">battlegroundActive, brawlActive</span>
: [[API C_PvP.IsRatedBattleground|C_PvP.IsRatedBattleground]]() : <span class="apiret">isRatedBattleground</span>
: [[API AcceptAreaSpiritHeal|AcceptAreaSpiritHeal]]() - Signs up for the Spirit Healer's resurrection timer in battlegrounds when in range.
: [[API AcceptBattlefieldPort|AcceptBattlefieldPort]](<span class="apiarg">index, accept</span>) - Enters the Battleground if the queue is ready.
: [[API CanJoinBattlefieldAsGroup|CanJoinBattlefieldAsGroup]]() : <span class="apiret">isTrue</span> - Returns true if the player can join a battlefield with a group.
: [[API CancelAreaSpiritHeal|CancelAreaSpiritHeal]]() - Cancels the Spirit Healer's resurrection in battlegrounds.
: [[API GetAreaSpiritHealerTime|GetAreaSpiritHealerTime]]() : <span class="apiret">result</span> - Returns the time left in seconds until the next Spirit Healer resurrection in battlegrounds.
: [[API GetBattlefieldEstimatedWaitTime|GetBattlefieldEstimatedWaitTime]]() : <span class="apiret">waitTime</span> - Returns the estimated queue time to enter the battlefield.
: [[API GetBattlefieldInstanceExpiration|GetBattlefieldInstanceExpiration]]() : <span class="apiret">expiration</span> - Get shutdown timer for the battlefield instance.
: [[API GetBattlefieldInstanceRunTime|GetBattlefieldInstanceRunTime]]() : <span class="apiret">time</span> - Returns the time passed since the battlefield started.
: [[API GetBattlefieldMapIconScale|GetBattlefieldMapIconScale]]() - Scale of the landmark icons on the battlefield minimap.
: [[API GetBattlefieldPortExpiration|GetBattlefieldPortExpiration]](<span class="apiarg">index</span>) : <span class="apiret">expiration</span> - Returns the remaining seconds before the battlefield port expires.
: [[API GetBattlefieldScore|GetBattlefieldScore]](<span class="apiarg">index</span>) : <span class="apiret">name, killingBlows, honorableKills, deaths, honorGained, faction, race, class, classToken, damageDone, healingDone, bgRating, ratingChange, preMatchMMR, mmrChange, talentSpec</span> {{apitag|deprecated}} - Returns info for a player's score in battlefields.
: [[API GetBattlefieldStatData|GetBattlefieldStatData]](<span class="apiarg">playerIndex, slotIndex</span>) : <span class="apiret">columnData</span> {{apitag|deprecated}} - Returns battlefield-specific info for a player (e.g. Warsong Gulch flag captures).
: [[API GetBattlefieldStatus|GetBattlefieldStatus]](<span class="apiarg">index</span>) : <span class="apiret">status, mapName, teamSize, registeredMatch, suspendedQueue, queueType, gameType, role, asGroup, shortDescription, longDescription, isSoloQueue</span> - Returns the status of the battlefield the player is either queued for or inside.
: [[API GetBattlefieldTimeWaited|GetBattlefieldTimeWaited]](<span class="apiarg">battlegroundQueuePosition</span>) : <span class="apiret">timeInQueue</span> - Returns the time the player has waited in the queue.
: [[API GetBattlefieldWinner|GetBattlefieldWinner]]() : <span class="apiret">winner</span> - Returns the winner of the battlefield.
: [[API GetBattlegroundInfo|GetBattlegroundInfo]](<span class="apiarg">index</span>) : <span class="apiret">localizedName, canEnter, isHoliday, isRandom, battleGroundID, mapDescription, bgInstanceID, maxPlayers, gameType, iconTexture, shortDescription, longDescription, hasControllingHoliday</span> - Returns information about a battleground type.
: [[API GetBattlegroundPoints|GetBattlegroundPoints]](<span class="apiarg">team</span>) : <span class="apiret">currentPoints, maxPoints</span>
: [[API GetMaxBattlefieldID|GetMaxBattlefieldID]]() : <span class="apiret">maxBattlefieldID</span> - Returns the max number of battlefields you can queue for.
: [[API GetNumBattlefieldFlagPositions|GetNumBattlefieldFlagPositions]]() - Get the number of flag positions available from GetBattlefieldFlagPosition().
: [[API GetNumBattlefieldScores|GetNumBattlefieldScores]]() : <span class="apiret">numBattlefieldScores</span> - Returns the number of players listed in the battlefield scoreboard.
: [[API GetNumBattlegroundTypes|GetNumBattlegroundTypes]]() : <span class="apiret">numBattlegrounds</span>
: [[API GetPersonalRatedInfo|GetPersonalRatedInfo]](<span class="apiarg">index</span>) : <span class="apiret">rating, seasonBest, weeklyBest, seasonPlayed, seasonWon, weeklyPlayed, weeklyWon, cap</span>
: [[API GetRatedBattleGroundInfo|GetRatedBattleGroundInfo]]()
: [[API IsPVPTimerRunning|IsPVPTimerRunning]]() : <span class="apiret">result</span>
: [[API JoinBattlefield|JoinBattlefield]](<span class="apiarg">index, asGroup, isRated</span>) {{apitag|protected}} - Joins the battleground queue solo or as a group.
: [[API JoinRatedBattlefield|JoinRatedBattlefield]]() {{apitag|protected}}
: [[API LeaveBattlefield|LeaveBattlefield]]() - Leaves the current battleground.
: [[API ReportPlayerIsPVPAFK|ReportPlayerIsPVPAFK]](<span class="apiarg">unit</span>) - Reports the specified player as AFK in a battleground.
: [[API RequestBattlefieldScoreData|RequestBattlefieldScoreData]]() - Requests the latest battlefield score data from the server.
: [[API RequestRandomBattlegroundInstanceInfo|RequestRandomBattlegroundInstanceInfo]]()
: [[API RequestRatedInfo|RequestRatedInfo]]()
: [[API SetBattlefieldScoreFaction|SetBattlefieldScoreFaction]](<span class="apiarg">faction</span>) - Sets the faction to show on the battlefield scoreboard.
: [[API SortBattlefieldScoreData|SortBattlefieldScoreData]](<span class="apiarg">type</span>)
: [[API UnitInBattleground|UnitInBattleground]](<span class="apiarg">[unit [, partyIndex]]</span>) : <span class="apiret">result</span> - Returns the unit index if the unit is in your battleground.

===World Battlefields===
The following functions are used for population-limited world PvP zones, like [[Lake Wintergrasp]] or [[Tol Barad]].
: [[API C_PvP.IsActiveBattlefield|C_PvP.IsActiveBattlefield]]() : <span class="apiret">isActiveBattlefield</span>
: [[API BattlefieldMgrEntryInviteResponse|BattlefieldMgrEntryInviteResponse]](<span class="apiarg">queueId, accept</span>)
: [[API BattlefieldMgrExitRequest|BattlefieldMgrExitRequest]](<span class="apiarg">queueId</span>)
: [[API BattlefieldMgrQueueInviteResponse|BattlefieldMgrQueueInviteResponse]](<span class="apiarg">queueId, accept</span>)
: [[API BattlefieldMgrQueueRequest|BattlefieldMgrQueueRequest]]()
: [[API CanHearthAndResurrectFromArea|CanHearthAndResurrectFromArea]]() - Returns whether you can currently be resurrected and teleported out of the world PvP zone.
: [[API HearthAndResurrectFromArea|HearthAndResurrectFromArea]]() - Resurrects the player, and ports them out of the world PvP zone.
: [[API GetWorldPVPQueueStatus|GetWorldPVPQueueStatus]](<span class="apiarg">queueId</span>)

===Brawl===
: [[API C_PvP.GetActiveBrawlInfo|C_PvP.GetActiveBrawlInfo]]() : <span class="apiret">brawlInfo</span>
: [[API C_PvP.GetAvailableBrawlInfo|C_PvP.GetAvailableBrawlInfo]]() : <span class="apiret">brawlInfo</span>
: [[API C_PvP.GetBrawlRewards|C_PvP.GetBrawlRewards]](<span class="apiarg">brawlType</span>) : <span class="apiret">honor, experience, itemRewards, currencyRewards, roleShortageBonus, hasWon</span>
: [[API C_PvP.GetSpecialEventBrawlInfo|C_PvP.GetSpecialEventBrawlInfo]]() : <span class="apiret">brawlInfo</span>
: [[API C_PvP.IsInBrawl|C_PvP.IsInBrawl]]() : <span class="apiret">isInBrawl</span>
: [[API C_PvP.JoinBrawl|C_PvP.JoinBrawl]](<span class="apiarg">[isSpecialBrawl]</span>)

===War Games===
[[War Game]]s were added in [[Patch 4.0.1]]
: [[API CanInitiateWarGame|CanInitiateWarGame]]()
: [[API CollapseWarGameHeader|CollapseWarGameHeader]](<span class="apiarg">index</span>)
: [[API ExpandWarGameHeader|ExpandWarGameHeader]](<span class="apiarg">index</span>)
: [[API GetNumWarGameTypes|GetNumWarGameTypes]]()
: [[API GetSelectedWarGameType|GetSelectedWarGameType]]()
: [[API GetWarGameQueueStatus|GetWarGameQueueStatus]]()
: [[API GetWarGameTypeInfo|GetWarGameTypeInfo]](<span class="apiarg">index</span>)
: [[API IsWargame|IsWargame]]() : <span class="apiret">isWargame</span>
: [[API SetSelectedWarGameType|SetSelectedWarGameType]](<span class="apiarg">index</span>)
: [[API StartSpectatorWarGame|StartSpectatorWarGame]](<span class="apiarg">target1, target2, size, area, isTournamentMode</span>)
: [[API StartWarGameByName|StartWarGameByName]](<span class="apiarg">msg</span>) - Starts a [[War Game]]. Parameters are <code>playername, area, isTournamentMode</code> but passed as a whitespace delimited string.
: [[API StartWarGame|StartWarGame]](<span class="apiarg">target, name [, isTournament]</span>)
: [[API UpdateWarGamesList|UpdateWarGamesList]]()
: [[API WarGameRespond|WarGameRespond]](<span class="apiarg">accept</span>)

===War Mode===
[[War Mode]] was added in [[Patch 8.0.1]]
: [[API C_PvP.CanToggleWarMode|C_PvP.CanToggleWarMode]](<span class="apiarg">toggle</span>) : <span class="apiret">canTogglePvP</span>
: [[API C_PvP.CanToggleWarModeInArea|C_PvP.CanToggleWarModeInArea]]() : <span class="apiret">canTogglePvPInArea</span>
: [[API C_PvP.GetWarModeRewardBonus|C_PvP.GetWarModeRewardBonus]]() : <span class="apiret">rewardBonus</span>
: [[API C_PvP.GetWarModeRewardBonusDefault|C_PvP.GetWarModeRewardBonusDefault]]() : <span class="apiret">defaultBonus</span>
: [[API C_PvP.IsWarModeActive|C_PvP.IsWarModeActive]]() : <span class="apiret">warModeActive</span>
: [[API C_PvP.IsWarModeDesired|C_PvP.IsWarModeDesired]]() : <span class="apiret">warModeDesired</span>
: [[API C_PvP.IsWarModeFeatureEnabled|C_PvP.IsWarModeFeatureEnabled]]() : <span class="apiret">warModeEnabled</span>
: [[API C_PvP.SetWarModeDesired|C_PvP.SetWarModeDesired]](<span class="apiarg">warModeDesired</span>)
: [[API C_PvP.ToggleWarMode|C_PvP.ToggleWarMode]]()

==Quests==
Relates to [[Quest]]s.
: [[API C_QuestHub.IsQuestCurrentlyRelatedToHub|C_QuestHub.IsQuestCurrentlyRelatedToHub]](<span class="apiarg">questID, areaPoiID</span>) : <span class="apiret">isRelated</span>
: [[API C_QuestInfoSystem.GetQuestClassification|C_QuestInfoSystem.GetQuestClassification]](<span class="apiarg">[questID]</span>) : <span class="apiret">classification</span>
: [[API C_QuestInfoSystem.GetQuestRewardCurrencies|C_QuestInfoSystem.GetQuestRewardCurrencies]](<span class="apiarg">[questID]</span>) : <span class="apiret">questRewardCurrencyInfo</span>
: [[API C_QuestInfoSystem.GetQuestRewardSpellInfo|C_QuestInfoSystem.GetQuestRewardSpellInfo]](<span class="apiarg">questID?, spellID</span>) : <span class="apiret">info</span>
: [[API C_QuestInfoSystem.GetQuestRewardSpells|C_QuestInfoSystem.GetQuestRewardSpells]](<span class="apiarg">[questID]</span>) : <span class="apiret">spellIDs</span>
: [[API C_QuestInfoSystem.GetQuestShouldToastCompletion|C_QuestInfoSystem.GetQuestShouldToastCompletion]](<span class="apiarg">[questID]</span>) : <span class="apiret">shouldToast</span>
: [[API C_QuestInfoSystem.HasQuestRewardCurrencies|C_QuestInfoSystem.HasQuestRewardCurrencies]](<span class="apiarg">[questID]</span>) : <span class="apiret">hasQuestRewardCurrencies</span>
: [[API C_QuestInfoSystem.HasQuestRewardSpells|C_QuestInfoSystem.HasQuestRewardSpells]](<span class="apiarg">[questID]</span>) : <span class="apiret">hasRewardSpells</span>
: [[API C_QuestItemUse.CanUseQuestItemOnObject|C_QuestItemUse.CanUseQuestItemOnObject]](<span class="apiarg">item, unit [, checkRange]</span>) : <span class="apiret">canUse</span>
: [[API C_QuestLine.GetAvailableQuestLines|C_QuestLine.GetAvailableQuestLines]](<span class="apiarg">uiMapID</span>) : <span class="apiret">questLines</span>
: [[API C_QuestLine.GetForceVisibleQuests|C_QuestLine.GetForceVisibleQuests]](<span class="apiarg">uiMapID</span>) : <span class="apiret">questIDs</span>
: [[API C_QuestLine.GetQuestLineInfo|C_QuestLine.GetQuestLineInfo]](<span class="apiarg">questID [, uiMapID [, displayableOnly]]</span>) : <span class="apiret">questLineInfo</span>
: [[API C_QuestLine.GetQuestLineQuests|C_QuestLine.GetQuestLineQuests]](<span class="apiarg">questLineID</span>) : <span class="apiret">questIDs</span>
: [[API C_QuestLine.IsComplete|C_QuestLine.IsComplete]](<span class="apiarg">questLineID</span>) : <span class="apiret">isComplete</span>
: [[API C_QuestLine.QuestLineIgnoresAccountCompletedFiltering|C_QuestLine.QuestLineIgnoresAccountCompletedFiltering]](<span class="apiarg">uiMapID, questLineID</span>) : <span class="apiret">questLineIgnoresAccountCompletedFiltering</span>
: [[API C_QuestLine.RequestQuestLinesForMap|C_QuestLine.RequestQuestLinesForMap]](<span class="apiarg">uiMapID</span>)
: [[API C_QuestOffer.GetHideRequiredItems|C_QuestOffer.GetHideRequiredItems]]() : <span class="apiret">hideRequiredItems</span>
: [[API C_QuestOffer.GetQuestOfferMajorFactionReputationRewards|C_QuestOffer.GetQuestOfferMajorFactionReputationRewards]]() : <span class="apiret">reputationRewards</span>
: [[API C_QuestOffer.GetQuestRequiredCurrencyInfo|C_QuestOffer.GetQuestRequiredCurrencyInfo]](<span class="apiarg">questRewardIndex</span>) : <span class="apiret">questRequiredCurrencyInfo</span>
: [[API C_QuestOffer.GetQuestRewardCurrencyInfo|C_QuestOffer.GetQuestRewardCurrencyInfo]](<span class="apiarg">questInfoType, questRewardIndex</span>) : <span class="apiret">questRewardCurrencyInfo</span>
: [[API AcknowledgeAutoAcceptQuest|AcknowledgeAutoAcceptQuest]]()
: [[API AddAutoQuestPopUp|AddAutoQuestPopUp]](<span class="apiarg">questID, type</span>) - Adds a notification to the ObjectiveTrackerFrame that a quest is available or completed.
: [[API ClearAutoAcceptQuestSound|ClearAutoAcceptQuestSound]]()
: [[API CollapseQuestHeader|CollapseQuestHeader]](<span class="apiarg">index, isAuto</span>) - Collapses a quest header.
: [[API ConfirmAcceptQuest|ConfirmAcceptQuest]]() - Accepts a quest started by a group member (e.g. escort quests).
: [[API ExpandQuestHeader|ExpandQuestHeader]](<span class="apiarg">index, isAuto</span>) - Expands/collapses a quest log header.
: [[API GetAutoQuestPopUp|GetAutoQuestPopUp]](<span class="apiarg">index</span>) : <span class="apiret">questID, type</span> - Returns info for a popup quest notification.
: [[API GetCriteriaSpell|GetCriteriaSpell]]()
: [[API GetDailyQuestsCompleted|GetDailyQuestsCompleted]]() - Returns the current number of daily quests completed today.
: [[API GetMaxRewardCurrencies|GetMaxRewardCurrencies]]()
: [[API GetNumAutoQuestPopUps|GetNumAutoQuestPopUps]]() : <span class="apiret">numPopups</span> - Returns the number of displayed popup quest notifications.
: [[API GetNumQuestCurrencies|GetNumQuestCurrencies]]()
: [[API GetNumQuestItemDrops|GetNumQuestItemDrops]]()
: [[API GetNumQuestItems|GetNumQuestItems]]() : <span class="apiret">numRequiredItems</span> - Returns the number of required items to complete the current quest.
: [[API GetNumQuestLeaderBoards|GetNumQuestLeaderBoards]](<span class="apiarg">[questID]</span>) : <span class="apiret">numObjectives</span> - Returns the number of objectives for a quest.
: [[API GetQuestBackgroundMaterial|GetQuestBackgroundMaterial]]() : <span class="apiret">material</span> - Returns the background texture for the displayed quest.
: [[API GetQuestCurrencyID|GetQuestCurrencyID]](<span class="apiarg">type, index</span>)
: [[API GetQuestExpansion|GetQuestExpansion]](<span class="apiarg">questID</span>)
: [[API GetQuestFactionGroup|GetQuestFactionGroup]](<span class="apiarg">questID</span>) : <span class="apiret">factionGroup</span>
: [[API GetQuestLink|GetQuestLink]](<span class="apiarg">questID</span>) : <span class="apiret">questLink</span> - Returns a [[QuestLink]] for a quest.
: [[API GetQuestObjectiveInfo|GetQuestObjectiveInfo]](<span class="apiarg">questID, objectiveIndex, displayComplete</span>) : <span class="apiret">text, objectiveType, finished, fulfilled, required</span>
: [[API GetQuestPOIBlobCount|GetQuestPOIBlobCount]](<span class="apiarg">questID</span>)
: [[API GetQuestPOILeaderBoard|GetQuestPOILeaderBoard]](<span class="apiarg">index</span>)
: [[API GetQuestPOIs|GetQuestPOIs]]()
: [[API GetQuestProgressBarPercent|GetQuestProgressBarPercent]](<span class="apiarg">questID</span>) : <span class="apiret">percent</span>
: [[API GetQuestResetTime|GetQuestResetTime]]() : <span class="apiret">nextReset</span> - Returns the number of seconds until daily quests reset.
: [[API GetQuestReward|GetQuestReward]](<span class="apiarg">itemChoice</span>) - Completes the quest and chooses a quest reward, if applicable.
: [[API GetQuestSortIndex|GetQuestSortIndex]](<span class="apiarg">questLogIndex</span>) : <span class="apiret">sortIndex</span>
: [[API GetQuestUiMapID|GetQuestUiMapID]](<span class="apiarg">questID</span>)
: [[API GetSuggestedGroupSize|GetSuggestedGroupSize]]()
: [[API HaveQuestData|HaveQuestData]](<span class="apiarg">questID</span>)
: [[API HaveQuestRewardData|HaveQuestRewardData]](<span class="apiarg">questID</span>)
: [[API IsBreadcrumbQuest|IsBreadcrumbQuest]](<span class="apiarg">questID</span>)
: [[API IsCurrentQuestFailed|IsCurrentQuestFailed]]()
: [[API IsQuestCompletable|IsQuestCompletable]]() : <span class="apiret">isQuestCompletable</span> - Returns true if the displayed quest at a quest giver can be completed.
: [[API IsQuestIDValidSpellTarget|IsQuestIDValidSpellTarget]](<span class="apiarg">questID</span>)
: [[API IsQuestItemHidden|IsQuestItemHidden]](<span class="apiarg">index</span>)
: [[API IsQuestSequenced|IsQuestSequenced]](<span class="apiarg">questID</span>)
: [[API IsStoryQuest|IsStoryQuest]](<span class="apiarg">questID</span>)
: [[API PlayAutoAcceptQuestSound|PlayAutoAcceptQuestSound]]()
: [[API QuestChooseRewardError|QuestChooseRewardError]]() - Throws an error when the quest reward method doesn't work.
: [[API QuestFlagsPVP|QuestFlagsPVP]]() - Determine if the quest will flag you you for PvP when accepted.
: [[API QuestGetAutoAccept|QuestGetAutoAccept]]() : <span class="apiret">isAutoAccepted</span> - Returns whether the last-offered quest was automatically accepted.
: [[API QuestGetAutoLaunched|QuestGetAutoLaunched]]()
: [[API QuestHasPOIInfo|QuestHasPOIInfo]](<span class="apiarg">questID</span>)
: [[API QuestIsDaily|QuestIsDaily]]() : <span class="apiret">isDaily</span> - Returns true if the offered quest is a daily quest.
: [[API QuestIsFromAreaTrigger|QuestIsFromAreaTrigger]]() : <span class="apiret">isFromArea</span>
: [[API QuestIsWeekly|QuestIsWeekly]]() : <span class="apiret">isWeekly</span> - Returns true if the offered quest is a weekly quest.
: [[API QuestMapUpdateAllQuests|QuestMapUpdateAllQuests]]()
: [[API QuestPOIUpdateIcons|QuestPOIUpdateIcons]]()
: [[API RemoveAutoQuestPopUp|RemoveAutoQuestPopUp]]()
: [[API ShowQuestComplete|ShowQuestComplete]](<span class="apiarg">questID</span>)
: [[API ShowQuestOffer|ShowQuestOffer]](<span class="apiarg">index</span>)
: [[API SortQuests|SortQuests]]()
: [[API SortQuestSortTypes|SortQuestSortTypes]]()
: [[API UnitQuestTrivialLevelRangeScaling|UnitQuestTrivialLevelRangeScaling]](<span class="apiarg">unit</span>) : <span class="apiret">levelRange</span>
: [https://www.townlong-yak.com/framexml/go/PVPGetConquestLevelInfo PVPGetConquestLevelInfo]() {{apitag|framexml}}
: [https://www.townlong-yak.com/framexml/go/QuestUtils_GetQuestName QuestUtils_GetQuestName]() {{apitag|framexml}} - Returns the name for a quest ID.

===Quest Log===
: [[API C_QuestLog.AbandonQuest|C_QuestLog.AbandonQuest]]() - Abandons the quest specified by {{api|C_QuestLog.SetAbandonQuest}}.
: [[API C_QuestLog.AddQuestWatch|C_QuestLog.AddQuestWatch]](<span class="apiarg">questID</span>) : <span class="apiret">wasWatched</span> - Tracks a quest.
: [[API C_QuestLog.AddWorldQuestWatch|C_QuestLog.AddWorldQuestWatch]](<span class="apiarg">questID [, watchType]</span>) : <span class="apiret">wasWatched</span> - Tracks a world quest.
: [[API C_QuestLog.CanAbandonQuest|C_QuestLog.CanAbandonQuest]](<span class="apiarg">questID</span>) : <span class="apiret">canAbandon</span>
: [[API C_QuestLog.DoesQuestAwardReputationWithFaction|C_QuestLog.DoesQuestAwardReputationWithFaction]](<span class="apiarg">questID, targetFactionID</span>) : <span class="apiret">awardsReputation</span>
: [[API C_QuestLog.GetAbandonQuest|C_QuestLog.GetAbandonQuest]]() : <span class="apiret">questID</span> - Returns the quest specified by {{api|C_QuestLog.SetAbandonQuest}}.
: [[API C_QuestLog.GetAbandonQuestItems|C_QuestLog.GetAbandonQuestItems]]() : <span class="apiret">itemIDs</span>
: [[API C_QuestLog.GetActiveThreatMaps|C_QuestLog.GetActiveThreatMaps]]() : <span class="apiret">uiMapIDs</span>
: [[API C_QuestLog.GetAllCompletedQuestIDs|C_QuestLog.GetAllCompletedQuestIDs]]() : <span class="apiret">quests</span> - Returns all completed quests for the character.
: [[API C_QuestLog.GetBountiesForMapID|C_QuestLog.GetBountiesForMapID]](<span class="apiarg">uiMapID</span>) : <span class="apiret">bounties</span>
: [[API C_QuestLog.GetBountySetInfoForMapID|C_QuestLog.GetBountySetInfoForMapID]](<span class="apiarg">uiMapID</span>) : <span class="apiret">displayLocation, lockQuestID, bountySetID, isActivitySet</span>
: [[API C_QuestLog.GetDistanceSqToQuest|C_QuestLog.GetDistanceSqToQuest]](<span class="apiarg">questID</span>) : <span class="apiret">distanceSq, onContinent</span>
: [[API C_QuestLog.GetHeaderIndexForQuest|C_QuestLog.GetHeaderIndexForQuest]](<span class="apiarg">questID</span>) : <span class="apiret">index</span>
: [[API C_QuestLog.GetInfo|C_QuestLog.GetInfo]](<span class="apiarg">questLogIndex</span>) : <span class="apiret">info</span> - Returns information about a quest in the player's quest log.
: [[API C_QuestLog.GetLogIndexForQuestID|C_QuestLog.GetLogIndexForQuestID]](<span class="apiarg">questID</span>) : <span class="apiret">questLogIndex</span> - Returns the quest log index for a quest ID.
: [[API C_QuestLog.GetMapForQuestPOIs|C_QuestLog.GetMapForQuestPOIs]]() : <span class="apiret">uiMapID</span>
: [[API C_QuestLog.GetMaxNumQuests|C_QuestLog.GetMaxNumQuests]]() : <span class="apiret">maxNumQuests</span> - This is the maximum number of quests a player can be on, including hidden quests, world quests, emissaries etc
: [[API C_QuestLog.GetMaxNumQuestsCanAccept|C_QuestLog.GetMaxNumQuestsCanAccept]]() : <span class="apiret">maxNumQuestsCanAccept</span> - This is the maximum number of standard quests a player can accept. These are quests that are normally visible in the quest log.
: [[API C_QuestLog.GetNumQuestLogEntries|C_QuestLog.GetNumQuestLogEntries]]() : <span class="apiret">numShownEntries, numQuests</span> - Returns the number of entries in the quest log.
: [[API C_QuestLog.GetNumQuestObjectives|C_QuestLog.GetNumQuestObjectives]](<span class="apiarg">questID</span>) : <span class="apiret">leaderboardCount</span>
: [[API C_QuestLog.GetNumQuestWatches|C_QuestLog.GetNumQuestWatches]]() : <span class="apiret">numQuestWatches</span> - Returns the number of tracked quests.
: [[API C_QuestLog.GetNumWorldQuestWatches|C_QuestLog.GetNumWorldQuestWatches]]() : <span class="apiret">numQuestWatches</span>
: [[API C_QuestLog.GetQuestAdditionalHighlights|C_QuestLog.GetQuestAdditionalHighlights]](<span class="apiarg">questID</span>) : <span class="apiret">uiMapID, worldQuests, worldQuestsElite, dungeons, treasures</span>
: [[API C_QuestLog.GetQuestDetailsTheme|C_QuestLog.GetQuestDetailsTheme]](<span class="apiarg">questID</span>) : <span class="apiret">theme</span>
: [[API C_QuestLog.GetQuestDifficultyLevel|C_QuestLog.GetQuestDifficultyLevel]](<span class="apiarg">questID</span>) : <span class="apiret">level</span>
: [[API C_QuestLog.GetQuestIDForLogIndex|C_QuestLog.GetQuestIDForLogIndex]](<span class="apiarg">questLogIndex</span>) : <span class="apiret">questID</span>
: [[API C_QuestLog.GetQuestIDForQuestWatchIndex|C_QuestLog.GetQuestIDForQuestWatchIndex]](<span class="apiarg">questWatchIndex</span>) : <span class="apiret">questID</span>
: [[API C_QuestLog.GetQuestIDForWorldQuestWatchIndex|C_QuestLog.GetQuestIDForWorldQuestWatchIndex]](<span class="apiarg">questWatchIndex</span>) : <span class="apiret">questID</span>
: [[API C_QuestLog.GetQuestLogMajorFactionReputationRewards|C_QuestLog.GetQuestLogMajorFactionReputationRewards]](<span class="apiarg">questID</span>) : <span class="apiret">reputationRewards</span>
: [[API C_QuestLog.GetQuestLogPortraitGiver|C_QuestLog.GetQuestLogPortraitGiver]](<span class="apiarg">[questLogIndex]</span>) : <span class="apiret">portraitGiver, portraitGiverText, portraitGiverName, portraitGiverMount, portraitGiverModelSceneID</span>
: [[API C_QuestLog.GetQuestObjectives|C_QuestLog.GetQuestObjectives]](<span class="apiarg">questID</span>) : <span class="apiret">objectives</span> - Returns info for the objectives of a quest.
: [[API C_QuestLog.GetQuestRewardCurrencies|C_QuestLog.GetQuestRewardCurrencies]](<span class="apiarg">questID</span>) : <span class="apiret">questRewardCurrencies</span>
: [[API C_QuestLog.GetQuestRewardCurrencyInfo|C_QuestLog.GetQuestRewardCurrencyInfo]](<span class="apiarg">questID, currencyIndex, isChoice</span>) : <span class="apiret">questRewardCurrencyInfo</span>
: [[API C_QuestLog.GetQuestsOnMap|C_QuestLog.GetQuestsOnMap]](<span class="apiarg">uiMapID</span>) : <span class="apiret">quests</span>
: [[API C_QuestLog.GetQuestTagInfo|C_QuestLog.GetQuestTagInfo]](<span class="apiarg">questID</span>) : <span class="apiret">info</span> - Returns metadata for a quest.
: [[API C_QuestLog.GetQuestType|C_QuestLog.GetQuestType]](<span class="apiarg">questID</span>) : <span class="apiret">questType</span>
: [[API C_QuestLog.GetQuestWatchType|C_QuestLog.GetQuestWatchType]](<span class="apiarg">questID</span>) : <span class="apiret">watchType</span>
: [[API C_QuestLog.GetRequiredMoney|C_QuestLog.GetRequiredMoney]](<span class="apiarg">[questID]</span>) : <span class="apiret">requiredMoney</span> - Returns the amount of money required for quest completion.
: [[API C_QuestLog.GetSelectedQuest|C_QuestLog.GetSelectedQuest]]() : <span class="apiret">questID</span> - Returns the quest specified by {{api|C_QuestLog.SetSelectedQuest}}.
: [[API C_QuestLog.GetSuggestedGroupSize|C_QuestLog.GetSuggestedGroupSize]](<span class="apiarg">questID</span>) : <span class="apiret">suggestedGroupSize</span> - Returns the suggested number of players for a quest.
: [[API C_QuestLog.GetTimeAllowed|C_QuestLog.GetTimeAllowed]](<span class="apiarg">questID</span>) : <span class="apiret">totalTime, elapsedTime</span> - Returns the time available to complete a quest.
: [[API C_QuestLog.GetTitleForLogIndex|C_QuestLog.GetTitleForLogIndex]](<span class="apiarg">questLogIndex</span>) : <span class="apiret">title</span>
: [[API C_QuestLog.GetTitleForQuestID|C_QuestLog.GetTitleForQuestID]](<span class="apiarg">questID</span>) : <span class="apiret">title</span> - Returns the name for a Quest ID.
: [[API C_QuestLog.GetZoneStoryInfo|C_QuestLog.GetZoneStoryInfo]](<span class="apiarg">uiMapID</span>) : <span class="apiret">achievementID, storyMapID</span>
: [[API C_QuestLog.HasActiveThreats|C_QuestLog.HasActiveThreats]]() : <span class="apiret">hasActiveThreats</span>
: [[API C_QuestLog.IsAccountQuest|C_QuestLog.IsAccountQuest]](<span class="apiarg">questID</span>) : <span class="apiret">isAccountQuest</span>
: [[API C_QuestLog.IsComplete|C_QuestLog.IsComplete]](<span class="apiarg">questID</span>) : <span class="apiret">isComplete</span>
: [[API C_QuestLog.IsFailed|C_QuestLog.IsFailed]](<span class="apiarg">questID</span>) : <span class="apiret">isFailed</span>
: [[API C_QuestLog.IsImportantQuest|C_QuestLog.IsImportantQuest]](<span class="apiarg">questID</span>) : <span class="apiret">isImportant</span>
: [[API C_QuestLog.IsLegendaryQuest|C_QuestLog.IsLegendaryQuest]](<span class="apiarg">questID</span>) : <span class="apiret">isLegendaryQuest</span>
: [[API C_QuestLog.IsMetaQuest|C_QuestLog.IsMetaQuest]](<span class="apiarg">questID</span>) : <span class="apiret">isMeta</span>
: [[API C_QuestLog.IsOnMap|C_QuestLog.IsOnMap]](<span class="apiarg">questID</span>) : <span class="apiret">onMap, hasLocalPOI</span>
: [[API C_QuestLog.IsOnQuest|C_QuestLog.IsOnQuest]](<span class="apiarg">questID</span>) : <span class="apiret">isOnQuest</span>
: [[API C_QuestLog.IsPushableQuest|C_QuestLog.IsPushableQuest]](<span class="apiarg">questID</span>) : <span class="apiret">isPushable</span> - Returns true if the quest can be shared with other players.
: [[API C_QuestLog.IsQuestBounty|C_QuestLog.IsQuestBounty]](<span class="apiarg">questID</span>) : <span class="apiret">isBounty</span>
: [[API C_QuestLog.IsQuestCalling|C_QuestLog.IsQuestCalling]](<span class="apiarg">questID</span>) : <span class="apiret">isCalling</span>
: [[API C_QuestLog.IsQuestCriteriaForBounty|C_QuestLog.IsQuestCriteriaForBounty]](<span class="apiarg">questID, bountyQuestID</span>) : <span class="apiret">isCriteriaForBounty</span>
: [[API C_QuestLog.IsQuestFlaggedCompleted|C_QuestLog.IsQuestFlaggedCompleted]](<span class="apiarg">questID</span>) : <span class="apiret">isCompleted</span> - Returns if a quest has been completed.
: [[API C_QuestLog.IsQuestFlaggedCompletedOnAccount|C_QuestLog.IsQuestFlaggedCompletedOnAccount]](<span class="apiarg">questID</span>) : <span class="apiret">isCompletedOnAccount</span>
: [[API C_QuestLog.IsQuestFromContentPush|C_QuestLog.IsQuestFromContentPush]](<span class="apiarg">questID</span>) : <span class="apiret">isFromContentPush</span>
: [[API C_QuestLog.IsQuestInvasion|C_QuestLog.IsQuestInvasion]](<span class="apiarg">questID</span>) : <span class="apiret">isInvasion</span>
: [[API C_QuestLog.IsQuestRepeatableType|C_QuestLog.IsQuestRepeatableType]](<span class="apiarg">questID</span>) : <span class="apiret">isRepeatableType</span>
: [[API C_QuestLog.IsQuestTrivial|C_QuestLog.IsQuestTrivial]](<span class="apiarg">questID</span>) : <span class="apiret">isTrivial</span>
: [[API C_QuestLog.IsRepeatableQuest|C_QuestLog.IsRepeatableQuest]](<span class="apiarg">questID</span>) : <span class="apiret">isRepeatable</span>
: [[API C_QuestLog.IsThreatQuest|C_QuestLog.IsThreatQuest]](<span class="apiarg">questID</span>) : <span class="apiret">isThreat</span>
: [[API C_QuestLog.IsUnitOnQuest|C_QuestLog.IsUnitOnQuest]](<span class="apiarg">unit, questID</span>) : <span class="apiret">isOnQuest</span> - Returns true if the unit is on the specified quest.
: [[API C_QuestLog.QuestCanHaveWarModeBonus|C_QuestLog.QuestCanHaveWarModeBonus]](<span class="apiarg">questID</span>) : <span class="apiret">hasBonus</span>
: [[API C_QuestLog.QuestContainsFirstTimeRepBonusForPlayer|C_QuestLog.QuestContainsFirstTimeRepBonusForPlayer]](<span class="apiarg">questID</span>) : <span class="apiret">questContainsFirstTimeRepBonusForPlayer</span>
: [[API C_QuestLog.QuestHasWarModeBonus|C_QuestLog.QuestHasWarModeBonus]](<span class="apiarg">questID</span>) : <span class="apiret">hasBonus</span>
: [[API C_QuestLog.QuestIgnoresAccountCompletedFiltering|C_QuestLog.QuestIgnoresAccountCompletedFiltering]](<span class="apiarg">questID</span>) : <span class="apiret">questIgnoresAccountCompletedFiltering</span>
: [[API C_QuestLog.ReadyForTurnIn|C_QuestLog.ReadyForTurnIn]](<span class="apiarg">questID</span>) : <span class="apiret">readyForTurnIn</span>
: [[API C_QuestLog.RemoveQuestWatch|C_QuestLog.RemoveQuestWatch]](<span class="apiarg">questID</span>) : <span class="apiret">wasRemoved</span> - Untracks a quest.
: [[API C_QuestLog.RemoveWorldQuestWatch|C_QuestLog.RemoveWorldQuestWatch]](<span class="apiarg">questID</span>) : <span class="apiret">wasRemoved</span> - Untracks a world quest.
: [[API C_QuestLog.RequestLoadQuestByID|C_QuestLog.RequestLoadQuestByID]](<span class="apiarg">questID</span>)
: [[API C_QuestLog.SetAbandonQuest|C_QuestLog.SetAbandonQuest]]() - Sets the selected quest to be abandoned.
: [[API C_QuestLog.SetMapForQuestPOIs|C_QuestLog.SetMapForQuestPOIs]](<span class="apiarg">uiMapID</span>)
: [[API C_QuestLog.SetSelectedQuest|C_QuestLog.SetSelectedQuest]](<span class="apiarg">questID</span>) - Selects a quest in the quest log.
: [[API C_QuestLog.ShouldDisplayTimeRemaining|C_QuestLog.ShouldDisplayTimeRemaining]](<span class="apiarg">questID</span>) : <span class="apiret">displayTimeRemaining</span>
: [[API C_QuestLog.ShouldShowQuestRewards|C_QuestLog.ShouldShowQuestRewards]](<span class="apiarg">questID</span>) : <span class="apiret">shouldShow</span>
: [[API C_QuestLog.SortQuestWatches|C_QuestLog.SortQuestWatches]]() - Sorts watched quests by proximity to the player character.
: [[API C_QuestLog.UnitIsRelatedToActiveQuest|C_QuestLog.UnitIsRelatedToActiveQuest]](<span class="apiarg">unit</span>) : <span class="apiret">isRelatedToActiveQuest</span>
: [[API C_QuestLog.UpdateCampaignHeaders|C_QuestLog.UpdateCampaignHeaders]]()
: [[API GetNumQuestLogChoices|GetNumQuestLogChoices]](<span class="apiarg">questID [, includeCurrencies]</span>) : <span class="apiret">numQuestChoices</span> - Returns the number of options someone has when getting a quest item.
: [[API GetNumQuestLogRewardFactions|GetNumQuestLogRewardFactions]]()
: [[API GetNumQuestLogRewards|GetNumQuestLogRewards]](<span class="apiarg">[questID]</span>) : <span class="apiret">numQuestRewards</span> - Returns the number of unconditional rewards for the current quest in the quest log.
: [[API GetNumTreasurePickerItems|GetNumTreasurePickerItems]]()
: [[API GetQuestLogChoiceInfoLootType|GetQuestLogChoiceInfoLootType]](<span class="apiarg">index</span>)
: [[API GetQuestLogCompletionText|GetQuestLogCompletionText]]()
: [[API GetQuestLogCriteriaSpell|GetQuestLogCriteriaSpell]]()
: [[API GetQuestLogItemDrop|GetQuestLogItemDrop]](<span class="apiarg">index</span>)
: [[API GetQuestLogItemLink|GetQuestLogItemLink]](<span class="apiarg">type, index</span>) : <span class="apiret">itemLink</span> - Returns item link for selected quest reward/choice/required item from quest log.
: [[API GetQuestLogLeaderBoard|GetQuestLogLeaderBoard]](<span class="apiarg">objIndex [, questIndex]</span>) : <span class="apiret">description, objectiveType, isCompleted</span> - Returns info for a quest objective in the quest log.
: [[API GetQuestLogPortraitTurnIn|GetQuestLogPortraitTurnIn]]()
: [[API GetQuestLogQuestText|GetQuestLogQuestText]](<span class="apiarg">[questLogIndex]</span>) : <span class="apiret">questDescription, questObjectives</span> - Returns the description and objective text in the quest log.
: [[API GetQuestLogQuestType|GetQuestLogQuestType]]()
: [[API GetQuestLogRewardArtifactXP|GetQuestLogRewardArtifactXP]]()
: [[API GetQuestLogRewardFactionInfo|GetQuestLogRewardFactionInfo]](<span class="apiarg">questIndex</span>)
: [[API GetQuestLogRewardHonor|GetQuestLogRewardHonor]]()
: [[API GetQuestLogRewardInfo|GetQuestLogRewardInfo]](<span class="apiarg">itemIndex [, questID]</span>) : <span class="apiret">itemName, itemTexture, numItems, quality, isUsable, itemID, itemLevel</span> - Returns info for an unconditional quest reward item in the quest log.
: [[API GetQuestLogRewardMoney|GetQuestLogRewardMoney]](<span class="apiarg">[questID]</span>) : <span class="apiret">money</span> - Returns the amount of money rewarded for a quest.
: [[API GetQuestLogRewardSkillPoints|GetQuestLogRewardSkillPoints]]()
: [[API GetQuestLogRewardTitle|GetQuestLogRewardTitle]]()
: [[API GetQuestLogRewardXP|GetQuestLogRewardXP]]()
: [[API GetQuestLogSpecialItemCooldown|GetQuestLogSpecialItemCooldown]](<span class="apiarg">questLogIndex</span>) : <span class="apiret">start, duration, enable</span>
: [[API GetQuestLogSpecialItemInfo|GetQuestLogSpecialItemInfo]](<span class="apiarg">questLogIndex</span>) : <span class="apiret">link, item, charges, showItemWhenComplete</span>
: [[API GetQuestLogTimeLeft|GetQuestLogTimeLeft]]() : <span class="apiret">timeLeft</span> - Returns the time left in seconds for the current quest.
: [[API GetTreasurePickerItemInfo|GetTreasurePickerItemInfo]](<span class="apiarg">index [, questID]</span>)
: [[API IsQuestLogSpecialItemInRange|IsQuestLogSpecialItemInRange]](<span class="apiarg">index [, target]</span>)
: [[API ProcessQuestLogRewardFactions|ProcessQuestLogRewardFactions]]()
: [[API QuestLogPushQuest|QuestLogPushQuest]]() - Shares the current quest in the quest log with other players.
: [[API QuestLogRewardHasTreasurePicker|QuestLogRewardHasTreasurePicker]]()
: [[API QuestLogShouldShowPortrait|QuestLogShouldShowPortrait]]()
: [[API UseQuestLogSpecialItem|UseQuestLogSpecialItem]](<span class="apiarg">index</span>)

===Gossip===
Gossip refers to interaction with an NPC.
: [[API C_GossipInfo.CloseGossip|C_GossipInfo.CloseGossip]]() - Closes the gossip window.
: [[API C_GossipInfo.ForceGossip|C_GossipInfo.ForceGossip]]() : <span class="apiret">forceGossip</span> - Returns true if gossip text must be displayed. For example making this return true shows the Banker gossip.
: [[API C_GossipInfo.GetActiveQuests|C_GossipInfo.GetActiveQuests]]() : <span class="apiret">info</span> - Returns the quests which can be turned in at a quest giver.
: [[API C_GossipInfo.GetAvailableQuests|C_GossipInfo.GetAvailableQuests]]() : <span class="apiret">info</span> - Returns the available quests at a quest giver.
: [[API C_GossipInfo.GetCompletedOptionDescriptionString|C_GossipInfo.GetCompletedOptionDescriptionString]]() : <span class="apiret">description</span>
: [[API C_GossipInfo.GetCustomGossipDescriptionString|C_GossipInfo.GetCustomGossipDescriptionString]]() : <span class="apiret">description</span>
: [[API C_GossipInfo.GetFriendshipReputation|C_GossipInfo.GetFriendshipReputation]](<span class="apiarg">friendshipFactionID</span>) : <span class="apiret">reputationInfo</span>
: [[API C_GossipInfo.GetFriendshipReputationRanks|C_GossipInfo.GetFriendshipReputationRanks]](<span class="apiarg">friendshipFactionID</span>) : <span class="apiret">rankInfo</span>
: [[API C_GossipInfo.GetNumActiveQuests|C_GossipInfo.GetNumActiveQuests]]() : <span class="apiret">numQuests</span> - Returns the number of active quests that you should eventually turn in to this NPC.
: [[API C_GossipInfo.GetNumAvailableQuests|C_GossipInfo.GetNumAvailableQuests]]() : <span class="apiret">numQuests</span> - Returns the number of quests (that you are not already on) offered by this NPC.
: [[API C_GossipInfo.GetOptions|C_GossipInfo.GetOptions]]() : <span class="apiret">info</span> - Returns the available gossip options at a quest giver.
: [[API C_GossipInfo.GetOptionUIWidgetSetsAndTypesByOptionID|C_GossipInfo.GetOptionUIWidgetSetsAndTypesByOptionID]](<span class="apiarg">gossipOptionID</span>) : <span class="apiret">gossipOptionUIWidgetSetsAndTypes</span>
: [[API C_GossipInfo.GetPoiForUiMapID|C_GossipInfo.GetPoiForUiMapID]](<span class="apiarg">uiMapID</span>) : <span class="apiret">gossipPoiID</span> - Returns any gossip point of interest on the map.
: [[API C_GossipInfo.GetPoiInfo|C_GossipInfo.GetPoiInfo]](<span class="apiarg">uiMapID, gossipPoiID</span>) : <span class="apiret">gossipPoiInfo</span> - Returns info for a gossip point of interest (e.g. the red flags when asking city guards for directions).
: [[API C_GossipInfo.GetText|C_GossipInfo.GetText]]() : <span class="apiret">gossipText</span> - Returns the gossip text.
: [[API C_GossipInfo.RefreshOptions|C_GossipInfo.RefreshOptions]]()
: [[API C_GossipInfo.SelectActiveQuest|C_GossipInfo.SelectActiveQuest]](<span class="apiarg">optionID</span>) - Selects an active quest from the gossip window.
: [[API C_GossipInfo.SelectAvailableQuest|C_GossipInfo.SelectAvailableQuest]](<span class="apiarg">optionID</span>) - Selects an available quest from the gossip window.
: [[API C_GossipInfo.SelectOption|C_GossipInfo.SelectOption]](<span class="apiarg">optionID [, text [, confirmed]]</span>) - Selects a gossip (conversation) option.
: [[API C_GossipInfo.SelectOptionByIndex|C_GossipInfo.SelectOptionByIndex]](<span class="apiarg">optionID [, text [, confirmed]]</span>)
: [[API AcceptQuest|AcceptQuest]]() - Accepts the currently offered quest.
: [[API CloseQuest|CloseQuest]]() - Closes the shown quest.
: [[API CompleteQuest|CompleteQuest]]() - Continues the quest dialog to the reward selection step.
: [[API DeclineQuest|DeclineQuest]]() - Declines the currently offered quest.
: [[API GetActiveLevel|GetActiveLevel]](<span class="apiarg">index</span>) - Gets the level of an active quest (only available after QUEST_GREETING event).
: [[API GetActiveQuestID|GetActiveQuestID]](<span class="apiarg">index</span>)
: [[API GetActiveTitle|GetActiveTitle]](<span class="apiarg">index</span>) - Gets the title of an active quest (only available after QUEST_GREETING event).
: [[API GetAvailableLevel|GetAvailableLevel]](<span class="apiarg">index</span>) - Gets the level of an available quest (only available after QUEST_GREETING event).
: [[API GetAvailableQuestInfo|GetAvailableQuestInfo]](<span class="apiarg">index</span>) : <span class="apiret">isTrivial, frequency, isRepeatable, isLegendary, questID, isImportant</span> - Returns info for an available quest.
: [[API GetAvailableTitle|GetAvailableTitle]](<span class="apiarg">index</span>) - Gets the title of an available quest (only available after QUEST_GREETING event).
: [[API GetGreetingText|GetGreetingText]]()
: [[API GetNumActiveQuests|GetNumActiveQuests]]() : <span class="apiret">numActiveQuests</span> - Returns the number of quests which can be turned in at a non-gossip quest giver.
: [[API GetNumAvailableQuests|GetNumAvailableQuests]]() : <span class="apiret">nbrAvailableQuests</span> - Returns the number of available quests at a non-gossip quest giver.
: [[API GetNumQuestRewards|GetNumQuestRewards]]() : <span class="apiret">numRewards</span> - Returns the number of unconditional rewards at a quest giver.
: [[API GetObjectiveText|GetObjectiveText]]() - Gets the objective of the current quest.
: [[API GetProgressText|GetProgressText]]() : <span class="apiret">progress</span> - Returns quest progress text at a quest giver.
: [[API GetQuestID|GetQuestID]]() : <span class="apiret">questID</span> - Returns the ID of the displayed quest at a quest giver.
: [[API GetQuestItemInfo|GetQuestItemInfo]](<span class="apiarg">type, index</span>) : <span class="apiret">name, texture, count, quality, isUsable, itemID</span> - Returns info for a required/reward/choice quest item.
: [[API GetQuestItemInfoLootType|GetQuestItemInfoLootType]](<span class="apiarg">type, index</span>)
: [[API GetQuestItemLink|GetQuestItemLink]](<span class="apiarg">type, index</span>) : <span class="apiret">itemLink</span> - Returns the item link for a required/reward/choice quest item.
: [[API GetQuestMoneyToGet|GetQuestMoneyToGet]]() - Returns amount of money required for quest currently displayed in gossip.
: [[API GetQuestPortraitGiver|GetQuestPortraitGiver]]()
: [[API GetQuestPortraitTurnIn|GetQuestPortraitTurnIn]]()
: [[API GetQuestText|GetQuestText]]() - Gets the description of the current quest.
: [[API GetRewardArtifactXP|GetRewardArtifactXP]]()
: [[API GetRewardHonor|GetRewardHonor]]()
: [[API GetRewardMoney|GetRewardMoney]]() - Returns a amount of copper rewarded for completion of quest displayed in gossip.
: [[API GetRewardNumSkillUps|GetRewardNumSkillUps]]()
: [[API GetRewardSkillLineID|GetRewardSkillLineID]]()
: [[API GetRewardSkillPoints|GetRewardSkillPoints]]()
: [[API GetRewardText|GetRewardText]]() : <span class="apiret">reward</span> - Returns quest reward text, displayed by the NPC before the player hits "Complete Quest".
: [[API GetRewardTitle|GetRewardTitle]]() - Returns the title awarded by the currently displayed quest.
: [[API GetRewardXP|GetRewardXP]]() : <span class="apiret">xp</span> - Returns the [[experience]] reward for the quest in the gossip window.
: [[API GetTitleText|GetTitleText]]() : <span class="apiret">title</span> - Returns the name of the quest at the quest giver.
: [[API IsActiveQuestLegendary|IsActiveQuestLegendary]](<span class="apiarg">index</span>)
: [[API IsActiveQuestTrivial|IsActiveQuestTrivial]](<span class="apiarg">index</span>)
: [[API IsAvailableQuestTrivial|IsAvailableQuestTrivial]](<span class="apiarg">index</span>)
: [[API SelectActiveQuest|SelectActiveQuest]]() - Selects an active quest from the NPC (only available after QUEST_GREETING event).
: [[API SelectAvailableQuest|SelectAvailableQuest]]() - Selects an available quest from the NPC (only available after QUEST_GREETING event).

===Quest Choices===
Relates to multiple quest choices, for instance at the [[Hero's Call Board]] and [[Warchief's Command Board]].
: [[API C_PlayerChoice.GetCurrentPlayerChoiceInfo|C_PlayerChoice.GetCurrentPlayerChoiceInfo]]() : <span class="apiret">choiceInfo</span>
: [[API C_PlayerChoice.GetNumRerolls|C_PlayerChoice.GetNumRerolls]]() : <span class="apiret">numRerolls</span>
: [[API C_PlayerChoice.GetRemainingTime|C_PlayerChoice.GetRemainingTime]]() : <span class="apiret">remainingTime</span>
: [[API C_PlayerChoice.IsWaitingForPlayerChoiceResponse|C_PlayerChoice.IsWaitingForPlayerChoiceResponse]]() : <span class="apiret">isWaitingForResponse</span>
: [[API C_PlayerChoice.OnUIClosed|C_PlayerChoice.OnUIClosed]]()
: [[API C_PlayerChoice.RequestRerollPlayerChoice|C_PlayerChoice.RequestRerollPlayerChoice]]()
: [[API C_PlayerChoice.SendPlayerChoiceResponse|C_PlayerChoice.SendPlayerChoiceResponse]](<span class="apiarg">responseID</span>)
: [[API GetNumQuestChoices|GetNumQuestChoices]]() : <span class="apiret">numChoices</span> - Returns the number of available rewards for the current quest.
: [[API GetQuestLogChoiceInfo|GetQuestLogChoiceInfo]](<span class="apiarg">index [, questID]</span>) : <span class="apiret">itemName, itemTexture, quantity, quality, isUsable, itemID</span> - Returns a bunch of data about a quest reward choice from the quest log.

===World Quests===
Task Quests refer to [[World Quest]]s or [[Quest#Bonus_Objectives|Bonus Objective]] quests.
: [[API C_TaskQuest.DoesMapShowTaskQuestObjectives|C_TaskQuest.DoesMapShowTaskQuestObjectives]](<span class="apiarg">uiMapID</span>) : <span class="apiret">showsTaskQuestObjectives</span>
: [[API C_TaskQuest.GetQuestIconUIWidgetSet|C_TaskQuest.GetQuestIconUIWidgetSet]](<span class="apiarg">questID</span>) : <span class="apiret">widgetSet</span>
: [[API C_TaskQuest.GetQuestInfoByQuestID|C_TaskQuest.GetQuestInfoByQuestID]](<span class="apiarg">questID</span>) : <span class="apiret">questTitle, factionID, capped, displayAsObjective</span>
: [[API C_TaskQuest.GetQuestLocation|C_TaskQuest.GetQuestLocation]](<span class="apiarg">questID, uiMapID</span>) : <span class="apiret">locationX, locationY</span>
: [[API C_TaskQuest.GetQuestProgressBarInfo|C_TaskQuest.GetQuestProgressBarInfo]](<span class="apiarg">questID</span>) : <span class="apiret">progress</span>
: [[API C_TaskQuest.GetQuestsForPlayerByMapID|C_TaskQuest.GetQuestsForPlayerByMapID]](<span class="apiarg">uiMapID</span>) : <span class="apiret">taskPOIs</span>
: [[API C_TaskQuest.GetQuestTimeLeftMinutes|C_TaskQuest.GetQuestTimeLeftMinutes]](<span class="apiarg">questID</span>) : <span class="apiret">minutesLeft</span>
: [[API C_TaskQuest.GetQuestTimeLeftSeconds|C_TaskQuest.GetQuestTimeLeftSeconds]](<span class="apiarg">questID</span>) : <span class="apiret">secondsLeft</span>
: [[API C_TaskQuest.GetQuestTooltipUIWidgetSet|C_TaskQuest.GetQuestTooltipUIWidgetSet]](<span class="apiarg">questID</span>) : <span class="apiret">widgetSet</span>
: [[API C_TaskQuest.GetQuestZoneID|C_TaskQuest.GetQuestZoneID]](<span class="apiarg">questID</span>) : <span class="apiret">uiMapID</span>
: [[API C_TaskQuest.GetThreatQuests|C_TaskQuest.GetThreatQuests]]() : <span class="apiret">quests</span>
: [[API C_TaskQuest.IsActive|C_TaskQuest.IsActive]](<span class="apiarg">questID</span>) : <span class="apiret">active</span>
: [[API C_TaskQuest.RequestPreloadRewardData|C_TaskQuest.RequestPreloadRewardData]](<span class="apiarg">questID</span>)
: [[API C_QuestLog.IsQuestTask|C_QuestLog.IsQuestTask]](<span class="apiarg">questID</span>) : <span class="apiret">isTask</span>
: [[API C_QuestLog.IsWorldQuest|C_QuestLog.IsWorldQuest]](<span class="apiarg">questID</span>) : <span class="apiret">isWorldQuest</span>
: [[API GetNumQuestLogTasks|GetNumQuestLogTasks]]()
: [[API GetTaskInfo|GetTaskInfo]](<span class="apiarg">questID</span>) : <span class="apiret">isInArea, isOnMap, numObjectives</span>
: [[API GetTaskPOIs|GetTaskPOIs]]()
: [[API GetTasksTable|GetTasksTable]]()

===Adventure Map===
The [[Scouting Map]] was added in [[Patch 7.0.3]]
: [[API C_AdventureMap.Close|C_AdventureMap.Close]]()
: [[API C_AdventureMap.GetAdventureMapTextureKit|C_AdventureMap.GetAdventureMapTextureKit]]() : <span class="apiret">adventureMapTextureKit</span>
: [[API C_AdventureMap.GetMapID|C_AdventureMap.GetMapID]]()
: [[API C_AdventureMap.GetMapInsetDetailTileInfo|C_AdventureMap.GetMapInsetDetailTileInfo]](<span class="apiarg">insetIndex, tileIndex</span>)
: [[API C_AdventureMap.GetMapInsetInfo|C_AdventureMap.GetMapInsetInfo]](<span class="apiarg">insetIndex</span>)
: [[API C_AdventureMap.GetNumMapInsets|C_AdventureMap.GetNumMapInsets]]()
: [[API C_AdventureMap.GetNumQuestOffers|C_AdventureMap.GetNumQuestOffers]]()
: [[API C_AdventureMap.GetNumZoneChoices|C_AdventureMap.GetNumZoneChoices]]()
: [[API C_AdventureMap.GetQuestInfo|C_AdventureMap.GetQuestInfo]](<span class="apiarg">questID</span>)
: [[API C_AdventureMap.GetQuestOfferInfo|C_AdventureMap.GetQuestOfferInfo]](<span class="apiarg">offerIndex</span>)
: [[API C_AdventureMap.GetZoneChoiceInfo|C_AdventureMap.GetZoneChoiceInfo]](<span class="apiarg">choiceIndex</span>)
: [[API C_AdventureMap.StartQuest|C_AdventureMap.StartQuest]](<span class="apiarg">questID</span>)
: [[API QuestIsFromAdventureMap|QuestIsFromAdventureMap]]()

===War Campaigns===
[[War Campaign]]s were added in [[Patch 8.0.1]]
: [[API C_CampaignInfo.GetAvailableCampaigns|C_CampaignInfo.GetAvailableCampaigns]]() : <span class="apiret">campaignIDs</span>
: [[API C_CampaignInfo.GetCampaignChapterInfo|C_CampaignInfo.GetCampaignChapterInfo]](<span class="apiarg">campaignChapterID</span>) : <span class="apiret">campaignChapterInfo</span>
: [[API C_CampaignInfo.GetCampaignID|C_CampaignInfo.GetCampaignID]](<span class="apiarg">questID</span>) : <span class="apiret">campaignID</span>
: [[API C_CampaignInfo.GetCampaignInfo|C_CampaignInfo.GetCampaignInfo]](<span class="apiarg">campaignID</span>) : <span class="apiret">campaignInfo</span>
: [[API C_CampaignInfo.GetChapterIDs|C_CampaignInfo.GetChapterIDs]](<span class="apiarg">campaignID</span>) : <span class="apiret">chapterIDs</span>
: [[API C_CampaignInfo.GetCurrentChapterID|C_CampaignInfo.GetCurrentChapterID]](<span class="apiarg">campaignID</span>) : <span class="apiret">currentChapterID</span>
: [[API C_CampaignInfo.GetFailureReason|C_CampaignInfo.GetFailureReason]](<span class="apiarg">campaignID</span>) : <span class="apiret">failureReason</span>
: [[API C_CampaignInfo.GetState|C_CampaignInfo.GetState]](<span class="apiarg">campaignID</span>) : <span class="apiret">state</span>
: [[API C_CampaignInfo.IsCampaignQuest|C_CampaignInfo.IsCampaignQuest]](<span class="apiarg">questID</span>) : <span class="apiret">isCampaignQuest</span>
: [[API C_CampaignInfo.SortAsNormalQuest|C_CampaignInfo.SortAsNormalQuest]](<span class="apiarg">campaignID</span>) : <span class="apiret">sortAsNormalQuest</span>
: [[API C_LoreText.RequestLoreTextForCampaignID|C_LoreText.RequestLoreTextForCampaignID]](<span class="apiarg">campaignID</span>)

===Talking Head===
These functions were added in [[Patch 7.0.3]]
: [[API C_TalkingHead.GetConversationsDeferred|C_TalkingHead.GetConversationsDeferred]]()
: [[API C_TalkingHead.GetCurrentLineAnimationInfo|C_TalkingHead.GetCurrentLineAnimationInfo]]()
: [[API C_TalkingHead.GetCurrentLineInfo|C_TalkingHead.GetCurrentLineInfo]]()
: [[API C_TalkingHead.IgnoreCurrentTalkingHead|C_TalkingHead.IgnoreCurrentTalkingHead]]()
: [[API C_TalkingHead.IsCurrentTalkingHeadIgnored|C_TalkingHead.IsCurrentTalkingHeadIgnored]]()
: [[API C_TalkingHead.SetConversationsDeferred|C_TalkingHead.SetConversationsDeferred]](<span class="apiarg">deferred</span>)

==Races==
: [[API C_CreatureInfo.GetFactionInfo|C_CreatureInfo.GetFactionInfo]](<span class="apiarg">raceID</span>) : <span class="apiret">factionInfo</span> - Returns the faction name for a race.
: [[API C_CreatureInfo.GetRaceInfo|C_CreatureInfo.GetRaceInfo]](<span class="apiarg">raceID</span>) : <span class="apiret">raceInfo</span> - Returns both localized and locale-independent race names.
: [[API NeutralPlayerSelectFaction|NeutralPlayerSelectFaction]](<span class="apiarg">factionIndex</span>) - Allows a Pandaren to choose a faction.
[[Allied Races]] were added in [[Patch 7.3.5]]
: [[API C_AlliedRaces.GetAllRacialAbilitiesFromID|C_AlliedRaces.GetAllRacialAbilitiesFromID]](<span class="apiarg">raceID</span>) : <span class="apiret">allDisplayInfo</span> - Returns the racial spells from an allied race.
: [[API C_AlliedRaces.GetRaceInfoByID|C_AlliedRaces.GetRaceInfoByID]](<span class="apiarg">raceID</span>) : <span class="apiret">info</span> - Returns allied race info.
: [[API UnitAlliedRaceInfo|UnitAlliedRaceInfo]](<span class="apiarg">unit</span>) : <span class="apiret">isAlliedRace, hasHeritageArmorUnlocked</span>

==Realms==
Relates to [[Realm]]s.
: [[API GetAutoCompleteRealms|GetAutoCompleteRealms]](<span class="apiarg">[realmNames]</span>) : <span class="apiret">realmNames</span>
: [[API GetCurrentRegion|GetCurrentRegion]]() : <span class="apiret">region</span>
: [[API GetCurrentRegionName|GetCurrentRegionName]]() : <span class="apiret">regionName</span>
: [[API GetNormalizedRealmName|GetNormalizedRealmName]]() : <span class="apiret">result</span> - Returns the name of the server, but omitting spaces and hyphens.
: [[API GetRealmID|GetRealmID]]() : <span class="apiret">realmID</span>
: [[API GetRealmName|GetRealmName]]() : <span class="apiret">realmName</span> - Returns the realm name.
: [[API IsOnTournamentRealm|IsOnTournamentRealm]]() : <span class="apiret">result</span> - Returns true if currently on a tournament realm, nil otherwise.

==Specialization==
Relates to [[Specialization|Specializations]].
: [[API AreTalentsLocked|AreTalentsLocked]]()
: [[API C_SpecializationInfo.CanPlayerUsePVPTalentUI|C_SpecializationInfo.CanPlayerUsePVPTalentUI]]() : <span class="apiret">canUse, failureReason</span>
: [[API C_SpecializationInfo.CanPlayerUseTalentSpecUI|C_SpecializationInfo.CanPlayerUseTalentSpecUI]]() : <span class="apiret">canUse, failureReason</span>
: [[API C_SpecializationInfo.CanPlayerUseTalentUI|C_SpecializationInfo.CanPlayerUseTalentUI]]() : <span class="apiret">canUse, failureReason</span>
: [[API C_SpecializationInfo.GetAllSelectedPvpTalentIDs|C_SpecializationInfo.GetAllSelectedPvpTalentIDs]]() : <span class="apiret">selectedPvpTalentIDs</span>
: [[API C_SpecializationInfo.GetClassIDFromSpecID|C_SpecializationInfo.GetClassIDFromSpecID]](<span class="apiarg">specID</span>) : <span class="apiret">classID</span>
: [[API C_SpecializationInfo.GetInspectSelectedPvpTalent|C_SpecializationInfo.GetInspectSelectedPvpTalent]](<span class="apiarg">inspectedUnit, talentIndex</span>) : <span class="apiret">selectedTalentID</span>
: [[API C_SpecializationInfo.GetPvpTalentAlertStatus|C_SpecializationInfo.GetPvpTalentAlertStatus]]() : <span class="apiret">hasUnspentSlot, hasNewTalent</span>
: [[API C_SpecializationInfo.GetPvpTalentInfo|C_SpecializationInfo.GetPvpTalentInfo]](<span class="apiarg">talentID</span>) : <span class="apiret">talentInfo</span>
: [[API C_SpecializationInfo.GetPvpTalentSlotInfo|C_SpecializationInfo.GetPvpTalentSlotInfo]](<span class="apiarg">talentIndex</span>) : <span class="apiret">slotInfo</span>
: [[API C_SpecializationInfo.GetPvpTalentSlotUnlockLevel|C_SpecializationInfo.GetPvpTalentSlotUnlockLevel]](<span class="apiarg">talentIndex</span>) : <span class="apiret">requiredLevel</span>
: [[API C_SpecializationInfo.GetPvpTalentUnlockLevel|C_SpecializationInfo.GetPvpTalentUnlockLevel]](<span class="apiarg">talentID</span>) : <span class="apiret">requiredLevel</span>
: [[API C_SpecializationInfo.GetSpecIDs|C_SpecializationInfo.GetSpecIDs]](<span class="apiarg">specSetID</span>) : <span class="apiret">specIDs</span>
: [[API C_SpecializationInfo.GetSpellsDisplay|C_SpecializationInfo.GetSpellsDisplay]](<span class="apiarg">specializationID</span>) : <span class="apiret">spellID</span>
: [[API C_SpecializationInfo.IsInitialized|C_SpecializationInfo.IsInitialized]]() : <span class="apiret">isSpecializationDataInitialized</span>
: [[API C_SpecializationInfo.IsPvpTalentLocked|C_SpecializationInfo.IsPvpTalentLocked]](<span class="apiarg">talentID</span>) : <span class="apiret">locked</span>
: [[API C_SpecializationInfo.MatchesCurrentSpecSet|C_SpecializationInfo.MatchesCurrentSpecSet]](<span class="apiarg">specSetID</span>) : <span class="apiret">matches</span>
: [[API C_SpecializationInfo.SetPvpTalentLocked|C_SpecializationInfo.SetPvpTalentLocked]](<span class="apiarg">talentID, locked</span>)
: [[API CheckTalentMasterDist|CheckTalentMasterDist]]() : <span class="apiret">result</span>
: [[API ClearFailedPVPTalentIDs|ClearFailedPVPTalentIDs]]()
: [[API ClearFailedTalentIDs|ClearFailedTalentIDs]]()
: [[API ConfirmTalentWipe|ConfirmTalentWipe]]() - Confirms freeing all talent points.
: [[API GetActiveSpecGroup|GetActiveSpecGroup]](<span class="apiarg">[isInspect]</span>) : <span class="apiret">activeSpec</span> - Returns the index of the current active specialization/talent/glyph group.
: [[API GetFailedPVPTalentIDs|GetFailedPVPTalentIDs]]()
: [[API GetFailedTalentIDs|GetFailedTalentIDs]]()
: [[API GetMaxTalentTier|GetMaxTalentTier]]() : <span class="apiret">tiers</span> - Returns the number of available talent tiers.
: [[API GetNumSpecGroups|GetNumSpecGroups]](<span class="apiarg">b</span>) : <span class="apiret">numSpecGroups</span> - Returns the number of specialization group (dual specs) the player has.
: [[API GetNumSpecializations|GetNumSpecializations]](<span class="apiarg">[isInspect [, isPet]]</span>) : <span class="apiret">numSpecializations</span> - Returns the number of available specializations.
: [[API GetNumSpecializationsForClassID|GetNumSpecializationsForClassID]](<span class="apiarg">specID</span>) : <span class="apiret">specCount</span> - Returns the number of specializations available to a particular class.
: [[API GetNumUnspentPvpTalents|GetNumUnspentPvpTalents]]()
: [[API GetNumUnspentTalents|GetNumUnspentTalents]]() : <span class="apiret">numUnspentTalents</span> - Returns the number of unspent talents.
: [[API GetPetTalentTree|GetPetTalentTree]]()
: [[API GetPrimarySpecialization|GetPrimarySpecialization]]()
: [[API GetPvpTalentInfoByID|GetPvpTalentInfoByID]](<span class="apiarg">talentID [, specGroupIndex [, isInspect [, inspectedUnit]]]</span>) : <span class="apiret">talentID, name, icon, selected, available, spellID, unlocked, row, column, known, grantedByAura</span>
: [[API GetPvpTalentInfoBySpecialization|GetPvpTalentInfoBySpecialization]]()
: [[API GetPvpTalentLink|GetPvpTalentLink]]()
: [[API GetSpecChangeCost|GetSpecChangeCost]]()
: [[API GetSpecialization|GetSpecialization]](<span class="apiarg">[isInspect [, isPet [, specGroup]]]</span>) : <span class="apiret">currentSpec</span> - Returns the index of the player's current specialization.
: [[API GetSpecializationInfo|GetSpecializationInfo]](<span class="apiarg">specIndex [, isInspect [, isPet [, inspectTarget [, sex]]]]</span>) : <span class="apiret">id, name, description, icon, role, primaryStat</span> - Returns info for a specialization.
: [[API GetSpecializationInfoByID|GetSpecializationInfoByID]](<span class="apiarg">specID</span>) : <span class="apiret">id, name, description, icon, role, classFile, className</span> - Returns information about the specified specialization.
: [[API GetSpecializationInfoForClassID|GetSpecializationInfoForClassID]](<span class="apiarg">classID, index [, gender]</span>) : <span class="apiret">id, name, description, icon, role, recommended, allowedForBoost, masterySpell1, masterySpell2</span> - Returns information about the specified specialization.
: [[API GetSpecializationInfoForSpecID|GetSpecializationInfoForSpecID]](<span class="apiarg">specID [, gender]</span>) : <span class="apiret">id, name, description, icon, role, recommended, allowedForBoost, masterySpell1, masterySpell2</span>
: [[API GetSpecializationMasterySpells|GetSpecializationMasterySpells]](<span class="apiarg">specIndex [, isInspect [, isPet]]</span>) : <span class="apiret">masterySpell, masterySpell2</span> - Returns the mastery spell ID of the specified specialization.
: [[API GetSpecializationNameForSpecID|GetSpecializationNameForSpecID]](<span class="apiarg">specID [, gender]</span>) : <span class="apiret">name</span>
: [[API GetSpecializationRole|GetSpecializationRole]](<span class="apiarg">specIndex [, isInspect [, isPet]]</span>) : <span class="apiret">roleToken</span> - Returns the role a specialization is intended to perform.
: [[API GetSpecializationRoleByID|GetSpecializationRoleByID]](<span class="apiarg">specID</span>) : <span class="apiret">roleToken</span> - Returns the role a specialization is intended to perform.
: [[API GetSpecializationRoleEnum|GetSpecializationRoleEnum]]()
: [[API GetSpecializationRoleEnumByID|GetSpecializationRoleEnumByID]]()
: [[API GetSpecializationSpells|GetSpecializationSpells]](<span class="apiarg">specIndex [, isInspect [, isPet]]</span>) : <span class="apiret">spellID, level, ...</span> - Returns the spells learned as part of the specified specialization.
: [[API GetSpecsForSpell|GetSpecsForSpell]](<span class="apiarg">spellName or spellIndex, bookType</span>) - Returns the specs for which the specified spell can be used.
: [[API GetTalentInfo|GetTalentInfo]](<span class="apiarg">tier, column [, specGroupIndex [, isInspect [, inspectUnit]]]</span>) : <span class="apiret">talentID, name, texture, selected, available, spellID, unknown, row, column, known, grantedByAura</span> - Returns info for the specified talent.
: [[API GetTalentInfoByID|GetTalentInfoByID]](<span class="apiarg">talentID, specGroupIndex [, isInspect [, inspectUnit]]</span>) : <span class="apiret">talentID, name, texture, selected, available, spellID, unknown, row, column, known, grantedByAura</span> - Returns information about a talent.
: [[API GetTalentInfoBySpecialization|GetTalentInfoBySpecialization]](<span class="apiarg">specIndex, tier, column</span>) : <span class="apiret">talentID, name, texture, selected, available, spellID, unknown, row, column, known, grantedByAura</span>
: [[API GetTalentLink|GetTalentLink]](<span class="apiarg">talentID [, isInspect, specGroup, inspectID, classID]</span>) - Returns the talent link.
: [[API GetTalentTierInfo|GetTalentTierInfo]](<span class="apiarg">tier, specGroupIndex [, isInspect [, inspectUnit]]</span>) : <span class="apiret">tierAvailable, selectedTalent, tierUnlockLevel</span>
: [[API IsSpecializationActivateSpell|IsSpecializationActivateSpell]]()
: [[API IsSpellClassOrSpec|IsSpellClassOrSpec]](<span class="apiarg">spellName</span>) : <span class="apiret">spec, class</span> - Returns whether a given spell is specific to a specialization and/or class.
: [[API LearnPvpTalent|LearnPvpTalent]](<span class="apiarg">talentID, slotIndex</span>)
: [[API LearnPvpTalents|LearnPvpTalents]]()
: [[API LearnTalent|LearnTalent]](<span class="apiarg">talentID</span>) : <span class="apiret">success</span>
: [[API LearnTalents|LearnTalents]](<span class="apiarg">talentID1, talentID2, ...</span>) {{apitag|nocombat}} - Learns the talents listed.
: [[API RemovePvpTalent|RemovePvpTalent]]()
: [[API RemoveTalent|RemoveTalent]](<span class="apiarg">talentID</span>) {{apitag|nocombat}} - Removes the specified talent.
: [[API SetSpecialization|SetSpecialization]](<span class="apiarg">specIndex [, isPet]</span>) {{apitag|nocombat}} - Selects a specialization.
: [[API UnlearnSpecialization|UnlearnSpecialization]](<span class="apiarg">specIndex [, isPet]</span>) {{apitag|nocombat}}

==Store==
The [[In-Game Store]] was added in [[Patch 5.4.0]]
: [[API C_StorePublic.DoesGroupHavePurchaseableProducts|C_StorePublic.DoesGroupHavePurchaseableProducts]](<span class="apiarg">groupID</span>) : <span class="apiret">hasPurchaseableProducts</span>
: [[API C_StorePublic.IsDisabledByParentalControls|C_StorePublic.IsDisabledByParentalControls]]() : <span class="apiret">disabled</span> - Returns whether access to the in-game shop is disabled by parental controls.
: [[API C_StorePublic.IsEnabled|C_StorePublic.IsEnabled]]() : <span class="apiret">enabled</span> - Returns whether the In-Game Store is available for the player.
[[Character Boost]]s were added in [[Patch 5.4.7]]
: [[API C_CharacterServices.ArePaidCharacterTransfersBetweenBnetAccountsEnabled|C_CharacterServices.ArePaidCharacterTransfersBetweenBnetAccountsEnabled]]()
: [[API C_CharacterServices.AssignNameChangeDistribution|C_CharacterServices.AssignNameChangeDistribution]]()
: [[API C_CharacterServices.AssignPCTDistribution|C_CharacterServices.AssignPCTDistribution]]() {{apitag|protected}}
: [[API C_CharacterServices.AssignRaceOrFactionChangeDistribution|C_CharacterServices.AssignRaceOrFactionChangeDistribution]]()
: [[API C_CharacterServices.AssignUpgradeDistribution|C_CharacterServices.AssignUpgradeDistribution]]() {{apitag|protected}}
: [[API C_CharacterServices.CapitalizeCharName|C_CharacterServices.CapitalizeCharName]]()
: [[API C_CharacterServices.GetActiveCharacterUpgradeBoostType|C_CharacterServices.GetActiveCharacterUpgradeBoostType]]() {{apitag|protected}}
: [[API C_CharacterServices.GetActiveClassTrialBoostType|C_CharacterServices.GetActiveClassTrialBoostType]]() {{apitag|protected}}
: [[API C_CharacterServices.GetAutomaticBoost|C_CharacterServices.GetAutomaticBoost]]() {{apitag|protected}}
: [[API C_CharacterServices.GetAutomaticBoostCharacter|C_CharacterServices.GetAutomaticBoostCharacter]]() {{apitag|protected}}
: [[API C_CharacterServices.GetCharacterServiceDisplayData|C_CharacterServices.GetCharacterServiceDisplayData]]() {{apitag|protected}}
: [[API C_CharacterServices.GetCharacterServiceDisplayDataByVASType|C_CharacterServices.GetCharacterServiceDisplayDataByVASType]]() {{apitag|protected}}
: [[API C_CharacterServices.GetCharacterServiceDisplayInfo|C_CharacterServices.GetCharacterServiceDisplayInfo]]() {{apitag|protected}}
: [[API C_CharacterServices.GetVASDistributions|C_CharacterServices.GetVASDistributions]]() {{apitag|protected}}
: [[API C_CharacterServices.HasRequiredBoostForClassTrial|C_CharacterServices.HasRequiredBoostForClassTrial]]() {{apitag|protected}}
: [[API C_CharacterServices.HasRequiredBoostForUnrevoke|C_CharacterServices.HasRequiredBoostForUnrevoke]]() {{apitag|protected}}
: [[API C_CharacterServices.RPEResetCharacter|C_CharacterServices.RPEResetCharacter]]()
: [[API C_CharacterServices.SetAutomaticBoost|C_CharacterServices.SetAutomaticBoost]]() {{apitag|protected}}
: [[API C_CharacterServices.SetAutomaticBoostCharacter|C_CharacterServices.SetAutomaticBoostCharacter]]() {{apitag|protected}}
: [[API IsCharacterNewlyBoosted|IsCharacterNewlyBoosted]]() : <span class="apiret">newlyBoosted</span>
[[Class Trial]]s were added in [[Patch 6.0.2]]
: [[API C_ClassTrial.GetClassTrialLogoutTimeSeconds|C_ClassTrial.GetClassTrialLogoutTimeSeconds]]()
: [[API C_ClassTrial.IsClassTrialCharacter|C_ClassTrial.IsClassTrialCharacter]]()
: [[API C_CharacterServicesPublic.ShouldSeeControlPopup|C_CharacterServicesPublic.ShouldSeeControlPopup]]()
: [[API C_SharedCharacterServices.GetLastSeenCharacterUpgradePopup|C_SharedCharacterServices.GetLastSeenCharacterUpgradePopup]]()
: [[API C_SharedCharacterServices.GetLastSeenExpansionTrialPopup|C_SharedCharacterServices.GetLastSeenExpansionTrialPopup]]()
: [[API C_SharedCharacterServices.GetUpgradeDistributions|C_SharedCharacterServices.GetUpgradeDistributions]]()
: [[API C_SharedCharacterServices.HasFreePromotionalUpgrade|C_SharedCharacterServices.HasFreePromotionalUpgrade]]()
: [[API C_SharedCharacterServices.HasSeenFreePromotionalUpgradePopup|C_SharedCharacterServices.HasSeenFreePromotionalUpgradePopup]]()
: [[API C_SharedCharacterServices.IsPurchaseIDPendingUpgrade|C_SharedCharacterServices.IsPurchaseIDPendingUpgrade]]()
: [[API C_SharedCharacterServices.QueryClassTrialBoostResult|C_SharedCharacterServices.QueryClassTrialBoostResult]]()
: [[API C_SharedCharacterServices.SetCharacterUpgradePopupSeen|C_SharedCharacterServices.SetCharacterUpgradePopupSeen]](<span class="apiarg">expansion_id</span>)
: [[API C_SharedCharacterServices.SetExpansionTrialPopupSeen|C_SharedCharacterServices.SetExpansionTrialPopupSeen]](<span class="apiarg">expansion_id</span>)
: [[API C_SharedCharacterServices.SetPromotionalPopupSeen|C_SharedCharacterServices.SetPromotionalPopupSeen]](<span class="apiarg">seen</span>)

==System==
: [[API C_EventUtils.IsEventValid|C_EventUtils.IsEventValid]](<span class="apiarg">eventName</span>) : <span class="apiret">valid</span>
: [[API C_EventUtils.NotifySettingsLoaded|C_EventUtils.NotifySettingsLoaded]]()
: [[API C_FunctionContainers.CreateCallback|C_FunctionContainers.CreateCallback]](<span class="apiarg">func</span>) : <span class="apiret">container</span>
: [[API C_InterfaceFileManifest.GetInterfaceArtFiles|C_InterfaceFileManifest.GetInterfaceArtFiles]]() : <span class="apiret">images</span>
: [[API C_ScriptedAnimations.GetAllScriptedAnimationEffects|C_ScriptedAnimations.GetAllScriptedAnimationEffects]]() : <span class="apiret">scriptedAnimationEffects</span>
: [[API C_System.GetFrameStack|C_System.GetFrameStack]]() : <span class="apiret">objects</span>
: [[API C_SystemVisibilityManager.IsSystemVisible|C_SystemVisibilityManager.IsSystemVisible]](<span class="apiarg">system</span>) : <span class="apiret">visible</span>
: [[API C_UI.GetUIParent|C_UI.GetUIParent]]() : <span class="apiret">uiParent</span>
: [[API C_UI.GetWorldFrame|C_UI.GetWorldFrame]]() : <span class="apiret">worldFrame</span>
: [[API C_UI.Reload|C_UI.Reload]]() {{apitag|hwevent}} - Reloads the User Interface.
: [[API C_UIColor.GetColors|C_UIColor.GetColors]]() : <span class="apiret">colors</span>
: [[API C_XMLUtil.GetTemplateInfo|C_XMLUtil.GetTemplateInfo]](<span class="apiarg">name</span>) : <span class="apiret">info</span>
: [[API C_XMLUtil.GetTemplates|C_XMLUtil.GetTemplates]]() : <span class="apiret">templates</span>
: [[API CancelLogout|CancelLogout]]() - Cancels the logout timer (from camping or quitting).
: [[API CopyToClipboard|CopyToClipboard]](<span class="apiarg">text [, removeMarkup]</span>) : <span class="apiret">length</span> {{apitag|protected}} - Copies text to the clipboard.
: [[API DetectWowMouse|DetectWowMouse]]() - Attempts to detect the world of warcraft MMO mouse.
: [[API FlashClientIcon|FlashClientIcon]]() - Flashes the game client icon in the Operating System.
: [[API ForceLogout|ForceLogout]]() {{apitag|protected}}
: [[API ForceQuit|ForceQuit]]() {{apitag|protected}} - Instantly quits the game, ignoring the 20 seconds timer.
: [[API GetBuildInfo|GetBuildInfo]]() : <span class="apiret">buildVersion, buildNumber, buildDate, interfaceVersion, localizedVersion, buildInfo</span> - Returns info for the current client build.
: [[API GetFramerate|GetFramerate]]() : <span class="apiret">framerate</span> - Returns the current framerate.
: [[API GetTickTime|GetTickTime]]() : <span class="apiret">time</span> - Returns the time in seconds since the end of the previous frame and the start of the current frame.
: [[API Is64BitClient|Is64BitClient]]() : <span class="apiret">is64Bit</span>
: [[API IsBetaBuild|IsBetaBuild]]() : <span class="apiret">isBetaBuild</span>
: [[API IsDebugBuild|IsDebugBuild]]() : <span class="apiret">isDebugBuild</span>
: [[API IsGMClient|IsGMClient]]() : <span class="apiret">isGM</span>
: [[API IsLinuxClient|IsLinuxClient]]() : <span class="apiret">isLinux</span> - Returns true if on a Linux client.
: [[API IsLoggedIn|IsLoggedIn]]() : <span class="apiret">result</span> - Returns nil before the PLAYER_LOGIN event has fired, 1 afterwards.
: [[API IsMacClient|IsMacClient]]() : <span class="apiret">isMac</span> - Returns true if on a Mac client.
: [[API IsOnGlueScreen|IsOnGlueScreen]]() : <span class="apiret">isOnGlueScreen</span>
: [[API IsPublicBuild|IsPublicBuild]]() : <span class="apiret">isPublicBuild</span>
: [[API IsTestBuild|IsTestBuild]]() : <span class="apiret">isTestBuild</span>
: [[API IsUsingFixedTimeStep|IsUsingFixedTimeStep]]() : <span class="apiret">isUsingFixedTimeStep</span> - Whether the UI is updating at a fixed rate independent of the framerate.
: [[API IsUsingMouse|IsUsingMouse]]() : <span class="apiret">down</span>
: [[API IsWindowsClient|IsWindowsClient]]() : <span class="apiret">isWindows</span> - Returns true if on a Windows client.
: [[API LaunchURL|LaunchURL]](<span class="apiarg">url</span>) {{apitag|protected}}
: [[API LoadURLIndex|LoadURLIndex]](<span class="apiarg">index [, param]</span>)
: [[API Logout|Logout]]() {{apitag|protected}} - Logs the player out of the game.
: [[API ProcessExceptionClient|ProcessExceptionClient]](<span class="apiarg">description</span>)
: [[API Quit|Quit]]() {{apitag|protected}} - Quits the game.
: [[API Screenshot|Screenshot]]() - Takes a screenshot.
: [[API SendSystemMessage|SendSystemMessage]](<span class="apiarg">msg</span>) - Prints a yellow CHAT_MSG_SYSTEM message.
: [[API Stuck|Stuck]]() {{apitag|protected}} - Notifies the game engine that the player is stuck.
: [[API ToggleFramerate|ToggleFramerate]]() {{apitag|framexml}} - Show/Hide the FPS.

===Network===
: [[API GetAvailableBandwidth|GetAvailableBandwidth]]() : <span class="apiret">result</span>
: [[API GetBackgroundLoadingStatus|GetBackgroundLoadingStatus]]() : <span class="apiret">result</span>
: [[API GetDownloadedPercentage|GetDownloadedPercentage]]() : <span class="apiret">result</span>
: [[API GetFileStreamingStatus|GetFileStreamingStatus]]() : <span class="apiret">result</span>
: [[API GetNetIpTypes|GetNetIpTypes]]() : <span class="apiret">ipTypes</span>
: [[API GetNetStats|GetNetStats]]() : <span class="apiret">in, out, latencyList</span> - Returns bandwidth and latency network information.

===Console===
Relates to [[Console variables]] and commands.
: [[API C_CVar.GetCVarBitfield|C_CVar.GetCVarBitfield]](<span class="apiarg">name, index</span>) : <span class="apiret">value</span> - Returns the bitfield of a console variable.
: [[API C_CVar.GetCVarBool|C_CVar.GetCVarBool]](<span class="apiarg">name</span>) : <span class="apiret">value</span> - Returns the boolean value of a console variable.
: [[API C_CVar.GetCVarDefault|C_CVar.GetCVarDefault]](<span class="apiarg">name</span>) : <span class="apiret">defaultValue</span> - Returns the default value of a console variable.
: [[API C_CVar.GetCVarInfo|C_CVar.GetCVarInfo]](<span class="apiarg">name</span>) : <span class="apiret">value, defaultValue, isStoredServerAccount, isStoredServerCharacter, isLockedFromUser, isSecure, isReadOnly</span> - Returns information on a console variable.
: [[API C_CVar.GetCVar|C_CVar.GetCVar]](<span class="apiarg">name</span>) : <span class="apiret">value</span> - Returns the current value of a console variable.
: [[API C_CVar.RegisterCVar|C_CVar.RegisterCVar]](<span class="apiarg">name [, value]</span>) - Temporarily registers a custom console variable.
: [[API C_CVar.ResetTestCVars|C_CVar.ResetTestCVars]]() - Resets the {{api|t=c|ActionCam}} cvars.
: [[API C_CVar.SetCVarBitfield|C_CVar.SetCVarBitfield]](<span class="apiarg">name, index, value</span>) : <span class="apiret">success</span> - Sets the bitfield of a console variable.
: [[API C_CVar.SetCVar|C_CVar.SetCVar]](<span class="apiarg">name [, value]</span>) : <span class="apiret">success</span> - Sets a console variable.
: [[API C_ConsoleScriptCollection.GetCollectionDataByID|C_ConsoleScriptCollection.GetCollectionDataByID]](<span class="apiarg">collectionID</span>) : <span class="apiret">data</span>
: [[API C_ConsoleScriptCollection.GetCollectionDataByTag|C_ConsoleScriptCollection.GetCollectionDataByTag]](<span class="apiarg">collectionTag</span>) : <span class="apiret">data</span>
: [[API C_ConsoleScriptCollection.GetElements|C_ConsoleScriptCollection.GetElements]](<span class="apiarg">collectionID</span>) : <span class="apiret">elementIDs</span>
: [[API C_ConsoleScriptCollection.GetScriptData|C_ConsoleScriptCollection.GetScriptData]](<span class="apiarg">consoleScriptID</span>) : <span class="apiret">data</span>
: [[API ConsoleAddMessage|ConsoleAddMessage]](<span class="apiarg">message</span>) - Prints a message to the console window.
: [[API ConsoleExec|ConsoleExec]](<span class="apiarg">command [, addToHistory]</span>) : <span class="apiret">result</span> - Execute a console command.
: [[API ConsoleGetAllCommands|ConsoleGetAllCommands]]() : <span class="apiret">commands</span> - Returns all console variables and commands.
: [[API ConsoleGetColorFromType|ConsoleGetColorFromType]](<span class="apiarg">colorType</span>) : <span class="apiret">color</span> - Returns color info for a color type.
: [[API ConsoleGetFontHeight|ConsoleGetFontHeight]]() : <span class="apiret">fontHeightInPixels</span> - Returns the console's currently used font height.
: [[API ConsoleIsActive|ConsoleIsActive]]() : <span class="apiret">consoleIsActive</span>
: [[API ConsolePrintAllMatchingCommands|ConsolePrintAllMatchingCommands]](<span class="apiarg">partialCommandText</span>) - Prints all matching console commands.
: [[API ConsoleSetFontHeight|ConsoleSetFontHeight]](<span class="apiarg">fontHeightInPixels</span>) - Sets the console's font height.
: [[API SetConsoleKey|SetConsoleKey]](<span class="apiarg">keystring</span>) - Sets the console key (normally ~).

===Date & Time===
: [[API C_DateAndTime.AdjustTimeByDays|C_DateAndTime.AdjustTimeByDays]](<span class="apiarg">date, days</span>) : <span class="apiret">newDate</span> - Returns the date after a specified amount of days.
: [[API C_DateAndTime.AdjustTimeByMinutes|C_DateAndTime.AdjustTimeByMinutes]](<span class="apiarg">date, minutes</span>) : <span class="apiret">newDate</span> - Returns the date after a given amount of minutes.
: [[API C_DateAndTime.AdjustTimeByMonths|C_DateAndTime.AdjustTimeByMonths]](<span class="apiarg">date, months</span>) : <span class="apiret">newDate</span>
: [[API C_DateAndTime.CompareCalendarTime|C_DateAndTime.CompareCalendarTime]](<span class="apiarg">lhsCalendarTime, rhsCalendarTime</span>) : <span class="apiret">comparison</span> - Compares two dates with eachother.
: [[API C_DateAndTime.GetCalendarTimeFromEpoch|C_DateAndTime.GetCalendarTimeFromEpoch]](<span class="apiarg">epoch</span>) : <span class="apiret">date</span> - Returns the date for a specified amount of time since the UNIX epoch for the OS time zone.
: [[API C_DateAndTime.GetCurrentCalendarTime|C_DateAndTime.GetCurrentCalendarTime]]() : <span class="apiret">date</span> - Returns the realm's current date and time.
: [[API C_DateAndTime.GetSecondsUntilDailyReset|C_DateAndTime.GetSecondsUntilDailyReset]]() : <span class="apiret">seconds</span>
: [[API C_DateAndTime.GetSecondsUntilWeeklyReset|C_DateAndTime.GetSecondsUntilWeeklyReset]]() : <span class="apiret">seconds</span>
: [[API C_DateAndTime.GetServerTimeLocal|C_DateAndTime.GetServerTimeLocal]]() : <span class="apiret">serverTimeLocal</span> - Returns the server's [[Wikipedia:Unix_time|Unix time]] offset by the server's timezone.
: [[API C_DateAndTime.GetWeeklyResetStartTime|C_DateAndTime.GetWeeklyResetStartTime]]() : <span class="apiret">seconds</span>
: [[API GetGameTime|GetGameTime]]() : <span class="apiret">hour, minute</span> - Returns the realm's current time in hours and minutes.
: [[API GetLocalGameTime|GetLocalGameTime]]() : <span class="apiret">hour, minute</span>
: [[API GetServerTime|GetServerTime]]() : <span class="apiret">time</span> - Returns the server's [[Wikipedia:Unix_time|Unix time]].
: [[API GetSessionTime|GetSessionTime]]() : <span class="apiret">time</span> - Returns the time since you opened the game client.
: [[API GetTime|GetTime]]() : <span class="apiret">time</span> - Returns the system uptime of your computer in seconds, with millisecond precision.
: [[API GetTimePreciseSec|GetTimePreciseSec]]() : <span class="apiret">time</span> - Returns a monotonic timestamp in seconds, with millisecond precision.
: [[API RequestTimePlayed|RequestTimePlayed]]() - Requests a summary of time played.

===Timers===
: [[API C_Timer.After|C_Timer.After]](<span class="apiarg">seconds, callback</span>) - Schedules a timer.
: [[API C_Timer.NewTimer|C_Timer.NewTimer]](<span class="apiarg">seconds, callback</span>) : <span class="apiret">cbObject</span> - Schedules a timer that can be canceled.
: [[API C_Timer.NewTicker|C_Timer.NewTicker]](<span class="apiarg">seconds, callback [, iterations]</span>) : <span class="apiret">cbObject</span> - Schedules a repeating timer that can be canceled.

===Debugging===
: [[API C_Debug.DashboardIsEnabled|C_Debug.DashboardIsEnabled]]() {{apitag|protected}}
: [[API C_Debug.FrameXMLDebug|C_Debug.FrameXMLDebug]](<span class="apiarg">[newDebugLevel]</span>) : <span class="apiret">result</span> - Sets FrameXML logging state which is output to <code>World of Warcraft/.../Logs/FrameXML.log</code> and <code>GlueXML.log</code>.
: [[API C_Debug.GetAllPortLocsForMap|C_Debug.GetAllPortLocsForMap]](<span class="apiarg">uiMapID</span>) {{apitag|protected}}
: [[API C_Debug.GetMapDebugObjects|C_Debug.GetMapDebugObjects]](<span class="apiarg">uiMapID</span>) {{apitag|protected}}
: [[API C_Debug.PrintToDebugWindow|C_Debug.PrintToDebugWindow]]()
: [[API C_Debug.TeleportToMapDebugObject|C_Debug.TeleportToMapDebugObject]](<span class="apiarg">pinIndex</span>) {{apitag|protected}}
: [[API C_Debug.TeleportToMapLocation|C_Debug.TeleportToMapLocation]](<span class="apiarg">uiMapID, mapX, mapY</span>) {{apitag|protected}}
: [[API C_Debug.ToggleWindDebugMenu|C_Debug.ToggleWindDebugMenu]]()
: [[API C_Debug.ViewInDebugWindow|C_Debug.ViewInDebugWindow]]()
: [[API AreDangerousScriptsAllowed|AreDangerousScriptsAllowed]]() : <span class="apiret">allowed</span>
: [[API CreateWindow|CreateWindow]](<span class="apiarg">[popupStyle]</span>) : <span class="apiret">window</span>
: [[API GetCallstackHeight|GetCallstackHeight]]() : <span class="apiret">height</span>
: [[API GetCurrentEventID|GetCurrentEventID]]() : <span class="apiret">eventID</span>
: [[API GetErrorCallstackHeight|GetErrorCallstackHeight]]() : <span class="apiret">height</span>
: [[API GetEventTime|GetEventTime]](<span class="apiarg">eventProfileIndex</span>) : <span class="apiret">totalElapsedTime, numExecutedHandlers, slowestHandlerName, slowestHandlerTime</span>
: [[API GetGameMessageInfo|GetGameMessageInfo]](<span class="apiarg">gameErrorIndex</span>) : <span class="apiret">errorName, soundKitID, voiceID</span> - Returns the error message for an id.
: [[API HandleAtlasMemberCommand|HandleAtlasMemberCommand]]()
: [[API RunScript|RunScript]](<span class="apiarg">text</span>) - Executes a string of Lua code.
: [[API SetAllowDangerousScripts|SetAllowDangerousScripts]](<span class="apiarg">[allowed]</span>)
: [[API SetErrorCallstackHeight|SetErrorCallstackHeight]](<span class="apiarg">[height]</span>)
: [[API addframetext|addframetext]](<span class="apiarg">text</span>)
: [[API debuglocals|debuglocals]](<span class="apiarg">level</span>) : <span class="apiret">locals</span>
: [[API debugprofilestart|debugprofilestart]]() - Starts a timer for profiling during debugging.
: [[API debugprofilestop|debugprofilestop]]() : <span class="apiret">elapsedMilliseconds</span> - Returns the time in milliseconds since the last call to debugprofilestart().
: [[API debugstack|debugstack]](<span class="apiarg">coroutine, start, count1, count2</span>) : <span class="apiret">description</span> - Returns a string representation of the current calling stack.
: [[API geterrorhandler|geterrorhandler]]() : <span class="apiret">handler</span> - Returns the currently set error handler.
: [[API issecurevalue|issecurevalue]]()
: [[API pcallwithenv|pcallwithenv]](<span class="apiarg">func, env</span>) : <span class="apiret">ok</span>
: [[API seterrorhandler|seterrorhandler]](<span class="apiarg">errFunc</span>) - Sets the error handler to the given function.
: [[API DevTools_Dump|DevTools_Dump]](<span class="apiarg">value [, startKey]</span>) {{apitag|framexml}} - Pretty prints a variable or value. Equivalent to the [[MACRO dump|<code>/dump</code> macro]].
: [[API print|print]](<span class="apiarg">...</span>) {{apitag|framexml}} - Calls the current print output handler with the provided values; by default printing the values to the default chat frame.
: [[API getprinthandler|getprinthandler]]() {{apitag|framexml}} - Returns the function currently handling print() output.
: [[API setprinthandler|setprinthandler]](<span class="apiarg">func</span>) {{apitag|framexml}} - Changes the function handling print() output.
: [[API message|message]](<span class="apiarg">text</span>) {{apitag|framexml}} - Displays a message box with your text message and an "Okay" button.

===Graphics===
: [[API AntiAliasingSupported|AntiAliasingSupported]]()
: [[API AutoChooseCurrentGraphicsSetting|AutoChooseCurrentGraphicsSetting]]()
: [[API C_VideoOptions.GetCurrentGameWindowSize|C_VideoOptions.GetCurrentGameWindowSize]]() : <span class="apiret">size</span>
: [[API C_VideoOptions.GetDefaultGameWindowSize|C_VideoOptions.GetDefaultGameWindowSize]](<span class="apiarg">monitor</span>) : <span class="apiret">size</span>
: [[API C_VideoOptions.GetGameWindowSizes|C_VideoOptions.GetGameWindowSizes]](<span class="apiarg">monitor, fullscreen</span>) : <span class="apiret">sizes</span>
: [[API C_VideoOptions.GetGxAdapterInfo|C_VideoOptions.GetGxAdapterInfo]]() : <span class="apiret">adapters</span> - Returns info about the system's graphics adapter.
: [[API C_VideoOptions.SetGameWindowSize|C_VideoOptions.SetGameWindowSize]](<span class="apiarg">x, y</span>)
: [[API GetCurrentGraphicsAPI|GetCurrentGraphicsAPI]]() : <span class="apiret">gxAPI</span>
: [[API GetCurrentGraphicsSetting|GetCurrentGraphicsSetting]]()
: [[API GetCurrentScaledResolution|GetCurrentScaledResolution]]()
: [[API GetGraphicsAPIs|GetGraphicsAPIs]]() : <span class="apiret">cvarValues</span> - Returns the supported graphics APIs for the system, D3D11_LEGACY, D3D11, D3D12, etc.
: [[API GetGraphicsCVarValueForQualityLevel|GetGraphicsCVarValueForQualityLevel]]()
: [[API GetMaxRenderScale|GetMaxRenderScale]]()
: [[API GetMinRenderScale|GetMinRenderScale]]()
: [[API GetMonitorAspectRatio|GetMonitorAspectRatio]]()
: [[API GetMonitorCount|GetMonitorCount]]()
: [[API GetMonitorName|GetMonitorName]]()
: [[API GetPhysicalScreenSize|GetPhysicalScreenSize]]() : <span class="apiret">sizeX, sizeY</span>
: [[API GetScreenDPIScale|GetScreenDPIScale]]() : <span class="apiret">scale</span>
: [[API GetScreenHeight|GetScreenHeight]]() : <span class="apiret">height</span> - Returns the height of the window at [[UIParent]] scale.
: [[API GetScreenWidth|GetScreenWidth]]() : <span class="apiret">width</span> - Returns the width of the window at [[UIParent]] scale.
: [[API GetVideoCaps|GetVideoCaps]]()
: [[API IsGraphicsCVarValueSupported|IsGraphicsCVarValueSupported]]()
: [[API IsGraphicsSettingValueSupported|IsGraphicsSettingValueSupported]]()
: [[API IsOutlineModeSupported|IsOutlineModeSupported]]()
: [[API MultiSampleAntiAliasingSupported|MultiSampleAntiAliasingSupported]]()
: [[API RestartGx|RestartGx]]() - Restarts the graphics engine.
: [[API SetCurrentGraphicsSetting|SetCurrentGraphicsSetting]](<span class="apiarg">setting{0=normal, 1=raid/BG}</span>)
: [[API SetSelectedScreenResolutionIndex|SetSelectedScreenResolutionIndex]](<span class="apiarg">integerIndex</span>)
: [[API SupportsClipCursor|SupportsClipCursor]]() : <span class="apiret">supportsClipCursor</span>
: [[API ToggleSelfHighlight|ToggleSelfHighlight]]() : <span class="apiret">enabled</span>
: [[API ToggleWindowed|ToggleWindowed]]()
: [[API UpdateWindow|UpdateWindow]]() - When in windowed mode, updates the window. This also aligns it to the top of the screen and increases the size to max widowed size.

===Locales===
: [[API BreakUpLargeNumbers|BreakUpLargeNumbers]](<span class="apiarg">largeNumber [, natural]</span>) : <span class="apiret">result</span> - Divides digits into groups using a localized delimiter character.
: [[API DeclineName|DeclineName]](<span class="apiarg">name, gender?, declensionSet</span>) : <span class="apiret">declinedNames</span> - Returns suggested [[wikipedia:Russian_declension#Nouns|declensions]] for a Russian name.
: [[API GetAvailableLocaleInfo|GetAvailableLocaleInfo]](<span class="apiarg">[ignoreLocaleRestrictions]</span>) : <span class="apiret">localeInfos</span>
: [[API GetAvailableLocales|GetAvailableLocales]](<span class="apiarg">[ignoreLocaleRestrictions]</span>) : <span class="apiret">unpackedPrimitiveType</span>
: [[API GetLocale|GetLocale]]() : <span class="apiret">localeName</span> - Returns the game client locale for localization.
: [[API GetNumDeclensionSets|GetNumDeclensionSets]](<span class="apiarg">name [, gender]</span>) : <span class="apiret">numDeclensionSets</span> - Returns the number of suggested declension sets for a Russian name.
: [[API GetOSLocale|GetOSLocale]]() : <span class="apiret">localeName</span>
: [[API GetText|GetText]](<span class="apiarg">token, gender, ordinal</span>) : <span class="apiret">text</span> - Returns localized text depending on the specified gender.
: [[API IsEuropeanNumbers|IsEuropeanNumbers]]() : <span class="apiret">enabled</span>
: [[API SetEuropeanNumbers|SetEuropeanNumbers]](<span class="apiarg">enabled</span>) - Sets the decimal separator to a comma instead of a dot.

===Script Profiling===
Note: CPU profiling is disabled by default since it has some overhead. CPU profiling is controlled by the [[CVar_scriptProfile|scriptProfile]] cvar, which persists across sessions, and takes effect after a UI reload. Memory profiling is always available. These functions have been added in Patch 2.1.
: [[API GetAddOnCPUUsage|GetAddOnCPUUsage]](<span class="apiarg">name</span>) : <span class="apiret">result</span> - Returns the total time used for an addon.
: [[API GetAddOnMemoryUsage|GetAddOnMemoryUsage]](<span class="apiarg">name</span>) : <span class="apiret">result</span> - Returns the memory used for an addon.
: [[API GetFrameCPUUsage|GetFrameCPUUsage]](<span class="apiarg">frame [, includeChildren]</span>) : <span class="apiret">call_time, call_count</span> - Returns the total time used by and number of calls of a frame's event handlers.
: [[API ResetCPUUsage|ResetCPUUsage]]() - Reset all CPU profiling statistics to zero.
: [[API UpdateAddOnCPUUsage|UpdateAddOnCPUUsage]]() - Scan through the profiling data and update the per-addon statistics.
: [[API UpdateAddOnMemoryUsage|UpdateAddOnMemoryUsage]]() - Scan through memory profiling data and update the per-addon statistics.

===Secure Execution===
Relates to [[Secure Execution and Tainting]].
: [[API InCombatLockdown|InCombatLockdown]]() : <span class="apiret">inCombatLockdown</span> - Returns true if the combat lockdown restrictions are active.
: [[API ReleaseAction|ReleaseAction]]()
: [[API StoreSecureReference|StoreSecureReference]](<span class="apiarg">name, obj</span>)
: [[API forceinsecure|forceinsecure]]() - Taints the current execution path.
: [[API hooksecurefunc|hooksecurefunc]](<span class="apiarg">tbl, name, hook</span>) - Securely posthooks the specified function. The hook will be called with the same arguments after the original call is performed.
: [[API issecurevariable|issecurevariable]](<span class="apiarg">tbl, variable</span>) : <span class="apiret">isSecure, taint</span> - Returns true if the specified variable is secure.
: [[API issecure|issecure]]() : <span class="apiret">secure</span> - Returns true if the current execution path is secure.
: [[API scrub|scrub]](<span class="apiarg">...</span>) : <span class="apiret">...</span> - Returns the argument list with non-number/boolean/string values changed to nil.
: [[API securecallfunction|securecallfunction]](<span class="apiarg">func, ...</span>) : <span class="apiret">...</span> - Calls the specified function without propagating taint to the caller.
: [[API securecall|securecall]](<span class="apiarg">func, ...</span>) : <span class="apiret">...</span> - Calls the specified function without propagating taint to the caller.
: [[API secureexecuterange|secureexecuterange]](<span class="apiarg">tbl, func, ...</span>)
: [https://www.townlong-yak.com/framexml/go/CanAccessObject CanAccessObject](<span class="apiarg">obj</span>) {{apitag|framexml}} - Returns true if an object is secure and not forbidden.

===Sound===
: [[API C_Sound.GetSoundScaledVolume|C_Sound.GetSoundScaledVolume]](<span class="apiarg">soundHandle</span>) : <span class="apiret">scaledVolume</span>
: [[API C_Sound.IsPlaying|C_Sound.IsPlaying]](<span class="apiarg">soundHandle</span>) : <span class="apiret">isPlaying</span>
: [[API C_Sound.PlayItemSound|C_Sound.PlayItemSound]](<span class="apiarg">soundType, itemLocation</span>)
: [[API C_Sound.PlayVocalErrorSound|C_Sound.PlayVocalErrorSound]](<span class="apiarg">vocalErrorSoundID</span>)
: [[API GetSoundEntryCount|GetSoundEntryCount]](<span class="apiarg">soundKit</span>) : <span class="apiret">entryCount</span>
: [[API MuteSoundFile|MuteSoundFile]](<span class="apiarg">sound</span>) - Mutes a sound file.
: [[API PlayMusic|PlayMusic]](<span class="apiarg">sound</span>) : <span class="apiret">willPlay</span> - Plays the specified sound file on loop to the "Music" sound channel.
: [[API PlaySound|PlaySound]](<span class="apiarg">soundKitID [, channel [, forceNoDuplicates [, runFinishCallback]]]</span>) : <span class="apiret">willPlay, soundHandle</span> - Plays the specified sound by SoundKitID.
: [[API PlaySoundFile|PlaySoundFile]](<span class="apiarg">sound [, channel]</span>) : <span class="apiret">willPlay, soundHandle</span> - Plays the specified sound by [[FileDataID]] or addon file path.
: [[API StopMusic|StopMusic]]() - Stops the currently playing music.
: [[API StopSound|StopSound]](<span class="apiarg">soundHandle [, fadeoutTime]</span>)
: [[API UnmuteSoundFile|UnmuteSoundFile]](<span class="apiarg">sound</span>) - Unmutes a sound file.
Sound Drivers
: [[API Sound_ChatSystem_GetInputDriverNameByIndex|Sound_ChatSystem_GetInputDriverNameByIndex]](<span class="apiarg">InputDriverIndex</span>)
: [[API Sound_ChatSystem_GetNumInputDrivers|Sound_ChatSystem_GetNumInputDrivers]]()
: [[API Sound_ChatSystem_GetNumOutputDrivers|Sound_ChatSystem_GetNumOutputDrivers]]()
: [[API Sound_ChatSystem_GetOutputDriverNameByIndex|Sound_ChatSystem_GetOutputDriverNameByIndex]](<span class="apiarg">OutputDriverIndex</span>)
: [[API Sound_GameSystem_GetInputDriverNameByIndex|Sound_GameSystem_GetInputDriverNameByIndex]](<span class="apiarg">InputDriverIndex</span>)
: [[API Sound_GameSystem_GetNumInputDrivers|Sound_GameSystem_GetNumInputDrivers]]()
: [[API Sound_GameSystem_GetNumOutputDrivers|Sound_GameSystem_GetNumOutputDrivers]]()
: [[API Sound_GameSystem_GetOutputDriverNameByIndex|Sound_GameSystem_GetOutputDriverNameByIndex]](<span class="apiarg">OutputDriverIndex</span>)
: [[API Sound_GameSystem_RestartSoundSystem|Sound_GameSystem_RestartSoundSystem]]()

===Util===
: [[API CalculateStringEditDistance|CalculateStringEditDistance]](<span class="apiarg">firstString, secondString</span>) : <span class="apiret">distance</span> - Returns [https://en.wikipedia.org/wiki/Levenshtein_distance Levenshtein] distance.
: [[API CaseAccentInsensitiveParse|CaseAccentInsensitiveParse]](<span class="apiarg">name</span>) : <span class="apiret">result</span> - Converts a string with accented letters to lowercase.
: [[API IsRecognizedName|IsRecognizedName]](<span class="apiarg">text, includeBitfield, excludeBitfield</span>) : <span class="apiret">isRecognized</span> - Returns true if a given character name is recognized by the client.
: [[API StripHyperlinks|StripHyperlinks]](<span class="apiarg">text [, maintainColor [, maintainBrackets [, stripNewlines [, maintainAtlases]]]]</span>) : <span class="apiret">stripped</span>

==Tutorials==
: [[API C_PlayerInfo.IsPlayerEligibleForNPE|C_PlayerInfo.IsPlayerEligibleForNPE]]() : <span class="apiret">isEligible, failureReason</span>
: [[API C_PlayerInfo.IsPlayerEligibleForNPEv2|C_PlayerInfo.IsPlayerEligibleForNPEv2]]() : <span class="apiret">isEligible, failureReason</span>
: [[API C_PlayerInfo.IsPlayerNPERestricted|C_PlayerInfo.IsPlayerNPERestricted]]() : <span class="apiret">isRestricted</span>
: [[API C_SplashScreen.AcknowledgeSplash|C_SplashScreen.AcknowledgeSplash]]()
: [[API C_SplashScreen.CanViewSplashScreen|C_SplashScreen.CanViewSplashScreen]]() : <span class="apiret">canView</span>
: [[API C_SplashScreen.RequestLatestSplashScreen|C_SplashScreen.RequestLatestSplashScreen]](<span class="apiarg">fromGameMenu</span>)
: [[API C_Tutorial.AbandonTutorialArea|C_Tutorial.AbandonTutorialArea]]()
: [[API C_Tutorial.ReturnToTutorialArea|C_Tutorial.ReturnToTutorialArea]]()
: [[API CanResetTutorials|CanResetTutorials]]()
: [[API ClearTutorials|ClearTutorials]]()
: [[API ClosestGameObjectPosition|ClosestGameObjectPosition]](<span class="apiarg">gameObjectID</span>) : <span class="apiret">xPos, yPos, distance</span>
: [[API ClosestUnitPosition|ClosestUnitPosition]](<span class="apiarg">creatureID</span>) : <span class="apiret">xPos, yPos, distance</span> - Returns the unit position of the closest creature by ID. Only works for mobs in the starting zones.
: [[API FlagTutorial|FlagTutorial]](<span class="apiarg">tutorial</span>)
: [[API GetNextCompleatedTutorial|GetNextCompleatedTutorial]](<span class="apiarg">tutorial</span>)
: [[API GetPrevCompleatedTutorial|GetPrevCompleatedTutorial]](<span class="apiarg">tutorial</span>)
: [[API GetTutorialsEnabled|GetTutorialsEnabled]]()
: [[API IsTutorialFlagged|IsTutorialFlagged]](<span class="apiarg">tutorial</span>)
: [[API RequestBottomLeftActionBar|RequestBottomLeftActionBar]]()
: [[API ResetTutorials|ResetTutorials]]()
: [[API ShouldShowSpecialSplashScreen|ShouldShowSpecialSplashScreen]]() : <span class="apiret">result</span>
: [[API SplashFrameCanBeShown|SplashFrameCanBeShown]]() : <span class="apiret">result</span>
: [[API TriggerTutorial|TriggerTutorial]](<span class="apiarg">tutorial</span>)

==UI Objects==
: [[API GetFileIDFromPath|GetFileIDFromPath]](<span class="apiarg">filePath</span>) : <span class="apiret">fileID</span> - Returns the FileID for an Interface file path.
: [[API SetUIVisibility|SetUIVisibility]](<span class="apiarg">visible</span>) - Hides or shows the entire UI.
: [[API EasyMenu|EasyMenu]](<span class="apiarg">menuList, menuFrame, anchor, x, y, displayMode, autoHideDelay</span>) {{apitag|framexml}}
: [[API ToggleDropDownMenu|ToggleDropDownMenu]](<span class="apiarg">level, value, dropDownFrame, anchorName, xOffset, yOffset</span>) {{apitag|framexml}}

===Frame===
: [[API C_FrameManager.GetFrameVisibilityState|C_FrameManager.GetFrameVisibilityState]](<span class="apiarg">frameType</span>) : <span class="apiret">shouldShow</span>
: [[API CreateFrame|CreateFrame]](<span class="apiarg">frameType [, name [, parent [, template [, id]]]]</span>) : <span class="apiret">frame</span> - Creates a {{api|t=o|Frame}} object.
: [[API DoesTemplateExist|DoesTemplateExist]](<span class="apiarg">template</span>) - Returns if a virtual frame template exists.
: [[API EnumerateFrames|EnumerateFrames]](<span class="apiarg">[currentFrame]</span>) : <span class="apiret">nextFrame</span> - Returns the frame which follows the current frame.
: [[API GetButtonMetatable|GetButtonMetatable]]() : <span class="apiret">metatable</span>
: [[API GetClickFrame|GetClickFrame]](<span class="apiarg">name</span>) : <span class="apiret">frame</span>
: [[API GetCurrentKeyBoardFocus|GetCurrentKeyBoardFocus]]() - Returns the [editbox] widget currently handling keyboard events.
: [[API GetDefaultScale|GetDefaultScale]]() : <span class="apiret">scale</span>
: [[API GetEditBoxMetatable|GetEditBoxMetatable]]() : <span class="apiret">metatable</span>
: [[API GetFontStringMetatable|GetFontStringMetatable]]() : <span class="apiret">metatable</span>
: [[API GetFrameMetatable|GetFrameMetatable]]() : <span class="apiret">metatable</span>
: [[API GetFramesRegisteredForEvent|GetFramesRegisteredForEvent]](<span class="apiarg">event</span>) : <span class="apiret">...</span> - Returns all frames registered for the specified event, in dispatch order.
: [[API GetMouseButtonName|GetMouseButtonName]](<span class="apiarg">button</span>) : <span class="apiret">buttonName</span>
: [[API GetMouseFoci|GetMouseFoci]]() : <span class="apiret">region</span>
: [[API MouseIsOver|MouseIsOver]](<span class="apiarg">region, topOffset, bottomOffset, leftOffset, rightOffset</span>) {{apitag|framexml}} - Checks whether the mouse is over the frame (or within specified offsets).
: [[API SetupFullscreenScale|SetupFullscreenScale]](<span class="apiarg">frame</span>) - Sizes a frame to take up the entire screen regardless of screen resolution.
: [[API UIFrameFadeIn|UIFrameFadeIn]](<span class="apiarg">frame, timeToFade, startAlpha, endAlpha</span>) {{apitag|framexml}} - Fades a frame in.
: [[API UIFrameFadeOut|UIFrameFadeOut]](<span class="apiarg">frame, timeToFade, startAlpha, endAlpha</span>) {{apitag|framexml}} - Fades a frame out.

===Font===
: [[API CreateFont|CreateFont]](<span class="apiarg">name</span>) : <span class="apiret">fontObject</span> - Creates a {{api|t=o|Font}} object.
: [[API GetFontInfo|GetFontInfo]](<span class="apiarg">fontObject</span>) : <span class="apiret">info</span>
: [[API GetFonts|GetFonts]]() : <span class="apiret">fontNames</span> - Returns a list of available fonts.

===Texture===
: [[API C_Texture.ClearTitleIconTexture|C_Texture.ClearTitleIconTexture]](<span class="apiarg">texture</span>)
: [[API C_Texture.GetAtlasElementID|C_Texture.GetAtlasElementID]](<span class="apiarg">atlas</span>) : <span class="apiret">elementID</span>
: [[API C_Texture.GetAtlasID|C_Texture.GetAtlasID]](<span class="apiarg">atlas</span>) : <span class="apiret">atlasID</span>
: [[API C_Texture.GetAtlasInfo|C_Texture.GetAtlasInfo]](<span class="apiarg">atlas</span>) : <span class="apiret">info</span> - Returns atlas info.
: [[API C_Texture.GetCraftingReagentQualityChatIcon|C_Texture.GetCraftingReagentQualityChatIcon]](<span class="apiarg">quality</span>) : <span class="apiret">textureMarkup</span>
: [[API C_Texture.GetFilenameFromFileDataID|C_Texture.GetFilenameFromFileDataID]](<span class="apiarg">fileDataID</span>) : <span class="apiret">filename</span>
: [[API C_Texture.GetTitleIconTexture|C_Texture.GetTitleIconTexture]](<span class="apiarg">titleID, version, callback</span>)
: [[API C_Texture.IsTitleIconTextureReady|C_Texture.IsTitleIconTextureReady]](<span class="apiarg">titleID, version</span>) : <span class="apiret">ready</span>
: [[API C_Texture.SetTitleIconTexture|C_Texture.SetTitleIconTexture]](<span class="apiarg">texture, titleID, version</span>)
: [[API SetPortraitTexture|SetPortraitTexture]](<span class="apiarg">textureObject, unitToken [, disableMasking]</span>) - Sets a texture to a unit's 2D portrait.
: [[API SetPortraitToTexture|SetPortraitToTexture]](<span class="apiarg">texture, asset</span>) - Applies a circular mask to a texture, making it resemble a portrait.
: [https://www.townlong-yak.com/framexml/go/CreateAtlasMarkup CreateAtlasMarkup](<span class="apiarg">atlasName [, height, width, offsetX, offsetY]</span>) {{apitag|framexml}} - Returns a texture fontstring for an atlas.
: [https://www.townlong-yak.com/framexml/go/CreateTextureMarkup CreateTextureMarkup](<span class="apiarg">file, fileWidth, fileHeight, width, height, left, right, top, bottom [, xOffset, yOffset]</span>) {{apitag|framexml}} - Returns a texture fontstring.
: [https://www.townlong-yak.com/framexml/go/GetTextureInfo GetTextureInfo](<span class="apiarg">obj</span>) {{apitag|framexml}} - Returns the type and info of a texture.

===ModelScene===
: [[API C_ModelInfo.AddActiveModelScene|C_ModelInfo.AddActiveModelScene]](<span class="apiarg">modelSceneFrame, modelSceneID</span>)
: [[API C_ModelInfo.AddActiveModelSceneActor|C_ModelInfo.AddActiveModelSceneActor]](<span class="apiarg">modelSceneFrameActor, modelSceneActorID</span>)
: [[API C_ModelInfo.ClearActiveModelScene|C_ModelInfo.ClearActiveModelScene]](<span class="apiarg">modelSceneFrame</span>)
: [[API C_ModelInfo.ClearActiveModelSceneActor|C_ModelInfo.ClearActiveModelSceneActor]](<span class="apiarg">modelSceneFrameActor</span>)
: [[API C_ModelInfo.GetModelSceneActorDisplayInfoByID|C_ModelInfo.GetModelSceneActorDisplayInfoByID]](<span class="apiarg">modelActorDisplayID</span>) : <span class="apiret">actorDisplayInfo</span>
: [[API C_ModelInfo.GetModelSceneActorInfoByID|C_ModelInfo.GetModelSceneActorInfoByID]](<span class="apiarg">modelActorID</span>) : <span class="apiret">actorInfo</span>
: [[API C_ModelInfo.GetModelSceneCameraInfoByID|C_ModelInfo.GetModelSceneCameraInfoByID]](<span class="apiarg">modelSceneCameraID</span>) : <span class="apiret">modelSceneCameraInfo</span>
: [[API C_ModelInfo.GetModelSceneInfoByID|C_ModelInfo.GetModelSceneInfoByID]](<span class="apiarg">modelSceneID</span>) : <span class="apiret">modelSceneType, modelCameraIDs, modelActorsIDs, flags</span>
: [[API GetUICameraInfo|GetUICameraInfo]](<span class="apiarg">uiCameraID</span>) : <span class="apiret">posX, posY, posZ, lookAtX, lookAtY, lookAtZ, animID, animVariation, animFrame, useModelCenter</span>

===Widget objects===
: [[API C_Widget.IsFrameWidget|C_Widget.IsFrameWidget]]()
: [[API C_Widget.IsRenderableWidget|C_Widget.IsRenderableWidget]]()
: [[API C_Widget.IsWidget|C_Widget.IsWidget]](<span class="apiarg">object</span>)
: [[API C_GenericWidgetDisplay.Acknowledge|C_GenericWidgetDisplay.Acknowledge]]()
: [[API C_GenericWidgetDisplay.Close|C_GenericWidgetDisplay.Close]]()

===Blizzard===
Used internally for the Blizzard_PrototypeDialog addon.
: [[API C_PrototypeDialog.EnsureRemoved|C_PrototypeDialog.EnsureRemoved]](<span class="apiarg">instanceID</span>)
: [[API C_PrototypeDialog.SelectOption|C_PrototypeDialog.SelectOption]](<span class="apiarg">instanceID, optionIndex</span>)

===Toasts===
: [[API C_EventToastManager.GetLevelUpDisplayToastsFromLevel|C_EventToastManager.GetLevelUpDisplayToastsFromLevel]](<span class="apiarg">level</span>) : <span class="apiret">toastInfo</span>
: [[API C_EventToastManager.GetNextToastToDisplay|C_EventToastManager.GetNextToastToDisplay]]() : <span class="apiret">toastInfo</span>
: [[API C_EventToastManager.RemoveCurrentToast|C_EventToastManager.RemoveCurrentToast]]()

===Macbook Pro Notch===
: [[API C_UI.DoesAnyDisplayHaveNotch|C_UI.DoesAnyDisplayHaveNotch]]() : <span class="apiret">notchPresent</span>
: [[API C_UI.GetTopLeftNotchSafeRegion|C_UI.GetTopLeftNotchSafeRegion]]() : <span class="apiret">left, right, top, bottom</span>
: [[API C_UI.GetTopRightNotchSafeRegion|C_UI.GetTopRightNotchSafeRegion]]() : <span class="apiret">left, right, top, bottom</span>
: [[API C_UI.ShouldUIParentAvoidNotch|C_UI.ShouldUIParentAvoidNotch]]() : <span class="apiret">willAvoidNotch</span>

==Units==
These are functions which act on one or more units. Units are identified by [[UnitId]]s.
: [[API CanShowSetRoleButton|CanShowSetRoleButton]]() : <span class="apiret">result</span>
: [[API GetThreatStatusColor|GetThreatStatusColor]](<span class="apiarg">gameErrorIndex</span>) : <span class="apiret">colorR, colorG, colorB</span> - Returns the color for a threat status.
: [[API GetUnitChargedPowerPoints|GetUnitChargedPowerPoints]](<span class="apiarg">unit</span>) : <span class="apiret">pointIndices</span>
: [[API GetUnitEmpowerHoldAtMaxTime|GetUnitEmpowerHoldAtMaxTime]](<span class="apiarg">unit</span>) : <span class="apiret">holdAtMaxTime</span>
: [[API GetUnitEmpowerMinHoldTime|GetUnitEmpowerMinHoldTime]](<span class="apiarg">unit</span>) : <span class="apiret">minHoldTime</span>
: [[API GetUnitEmpowerStageDuration|GetUnitEmpowerStageDuration]](<span class="apiarg">unit, index</span>) : <span class="apiret">duration</span>
: [[API GetUnitName|GetUnitName]](<span class="apiarg">unit [, showServerName]</span>) {{apitag|framexml}} - Returns the name and optionally the realm of the unit.
: [[API GetUnitSpeed|GetUnitSpeed]](<span class="apiarg">unit</span>) : <span class="apiret">currentSpeed, runSpeed, flightSpeed, swimSpeed</span> - Returns the movement speed of the unit.
: [[API GetUnitTotalModifiedMaxHealthPercent|GetUnitTotalModifiedMaxHealthPercent]](<span class="apiarg">unit</span>) : <span class="apiret">result</span>
: [[API IsPlayerInGuildFromGUID|IsPlayerInGuildFromGUID]](<span class="apiarg">playerGUID</span>) : <span class="apiret">IsInGuild</span>
: [[API UnitAffectingCombat|UnitAffectingCombat]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns true if the unit is in combat.
: [[API UnitArmor|UnitArmor]](<span class="apiarg">unit</span>) : <span class="apiret">base, effective, real, bonus</span> - Returns the armor stats for the unit.
: [[API UnitAttackPower|UnitAttackPower]](<span class="apiarg">unit</span>) : <span class="apiret">attackPower, posBuff, negBuff</span> - Returns the unit's melee attack power and modifiers.
: [[API UnitAttackSpeed|UnitAttackSpeed]](<span class="apiarg">unit</span>) : <span class="apiret">attackSpeed, offhandAttackSpeed</span> - Returns the unit's melee attack speed for each hand.
: [[API UnitCanAssist|UnitCanAssist]](<span class="apiarg">unit, target</span>) : <span class="apiret">result</span> - Indicates whether the first unit can assist the second unit.
: [[API UnitCanAttack|UnitCanAttack]](<span class="apiarg">unit, target</span>) : <span class="apiret">result</span> - Returns true if the first unit can attack the second.
: [[API UnitCanCooperate|UnitCanCooperate]](<span class="apiarg">unit, target</span>) : <span class="apiret">result</span> - Returns true if the first unit can cooperate with the second.
: [[API UnitCanPetBattle|UnitCanPetBattle]](<span class="apiarg">unit, target</span>) : <span class="apiret">result</span>
: [[API UnitCastingInfo|UnitCastingInfo]](<span class="apiarg">unit</span>) : <span class="apiret">name, displayName, textureID, startTimeMs, endTimeMs, isTradeskill, castID, notInterruptible, castingSpellID</span> - Returns information about the spell currently being cast by the specified unit.
: [[API UnitChannelInfo|UnitChannelInfo]](<span class="apiarg">unitToken</span>) : <span class="apiret">name, displayName, textureID, startTimeMs, endTimeMs, isTradeskill, notInterruptible, spellID, isEmpowered, numEmpowerStages</span> - Returns information about the spell currently being channeled by the specified unit.
: [[API UnitClass|UnitClass]](<span class="apiarg">unit</span>) : <span class="apiret">className, classFilename, classID</span> - Returns the class of the unit.
: [[API UnitClassBase|UnitClassBase]](<span class="apiarg">unit</span>) : <span class="apiret">classFilename, classID</span>
: [[API UnitClassification|UnitClassification]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns the classification of the specified unit (e.g., "elite" or "worldboss").
: [[API UnitCreatureFamily|UnitCreatureFamily]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns the creature type of the unit (e.g. Crab).
: [[API UnitCreatureType|UnitCreatureType]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns the creature classification type of the unit (e.g. Beast).
: [[API UnitDamage|UnitDamage]](<span class="apiarg">unit</span>) : <span class="apiret">minDamage, maxDamage, offhandMinDamage, offhandMaxDamage, posBuff, negBuff, percent</span> - Returns the damage stats for the unit.
: [[API UnitDetailedThreatSituation|UnitDetailedThreatSituation]](<span class="apiarg">unit, mobGUID</span>) : <span class="apiret">isTanking, status, scaledPercentage, rawPercentage, rawThreat</span> - Returns detailed info for the threat status of one unit against another.
: [[API UnitEffectiveLevel|UnitEffectiveLevel]](<span class="apiarg">name</span>) : <span class="apiret">result</span> - Returns the unit's effective (scaled) level.
: [[API UnitExists|UnitExists]](<span class="apiarg">[unit]</span>) : <span class="apiret">result</span> - Returns true if the unit exists.
: [[API UnitFactionGroup|UnitFactionGroup]](<span class="apiarg">unitName [, checkDisplayRace]</span>) : <span class="apiret">factionGroupTag, localized</span> - Returns the faction (Horde/Alliance) a unit belongs to.
: [[API UnitFullName|UnitFullName]](<span class="apiarg">unit</span>) : <span class="apiret">unitName, unitServer</span> - Returns the player's (unit's) name and server.
: [[API UnitGetAvailableRoles|UnitGetAvailableRoles]](<span class="apiarg">unit</span>) : <span class="apiret">tank, heal, dps</span>
: [[API UnitGetIncomingHeals|UnitGetIncomingHeals]](<span class="apiarg">unit [, healerGUID]</span>) : <span class="apiret">result</span> - Returns the predicted heals cast on the specified unit.
: [[API UnitGetTotalAbsorbs|UnitGetTotalAbsorbs]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns the total amount of damage the unit can absorb before losing health.
: [[API UnitGetTotalHealAbsorbs|UnitGetTotalHealAbsorbs]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns the total amount of healing the unit can absorb without gaining health.
: [[API UnitGroupRolesAssigned|UnitGroupRolesAssigned]](<span class="apiarg">[unit]</span>) : <span class="apiret">result</span> - Returns the assigned role for players in your group or raid.
: [[API UnitGroupRolesAssignedEnum|UnitGroupRolesAssignedEnum]](<span class="apiarg">[unit]</span>) : <span class="apiret">result</span>
: [[API UnitGUID|UnitGUID]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns the GUID of the unit.
: [[API UnitHasIncomingResurrection|UnitHasIncomingResurrection]](<span class="apiarg">unit</span>) : <span class="apiret">isBeingResurrected</span> - Returns true if the unit is currently being resurrected.
: [[API UnitHasLFGDeserter|UnitHasLFGDeserter]](<span class="apiarg">unit</span>) : <span class="apiret">isDeserter</span> - Returns whether the unit is currently unable to use the dungeon finder due to leaving a group prematurely.
: [[API UnitHasLFGRandomCooldown|UnitHasLFGRandomCooldown]](<span class="apiarg">unit</span>) : <span class="apiret">hasRandomCooldown</span> - Returns whether the unit is currently under the effects of the random dungeon cooldown.
: [[API UnitHasRelicSlot|UnitHasRelicSlot]](<span class="apiarg">unit</span>) : <span class="apiret">result</span>
: [[API UnitHealth|UnitHealth]](<span class="apiarg">unit [, usePredicted]</span>) : <span class="apiret">result</span> - Returns the current health of the unit.
: [[API UnitHealthMax|UnitHealthMax]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns the maximum health of the unit.
: [[API UnitHPPerStamina|UnitHPPerStamina]](<span class="apiarg">unit</span>) : <span class="apiret">result</span>
: [[API UnitInOtherParty|UnitInOtherParty]]()
: [[API UnitInPartyIsAI|UnitInPartyIsAI]](<span class="apiarg">[unit]</span>) : <span class="apiret">result</span>
: [[API UnitInRange|UnitInRange]](<span class="apiarg">unit</span>) : <span class="apiret">inRange, checkedRange</span> {{apitag|grouponly}} - Returns true if the unit is within 40 yards range (25 yards for Evokers).
: [[API UnitIsAFK|UnitIsAFK]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns true if a friendly unit is AFK (Away from keyboard).
: [[API UnitIsBossMob|UnitIsBossMob]](<span class="apiarg">unit</span>) : <span class="apiret">result</span>
: [[API UnitIsCharmed|UnitIsCharmed]](<span class="apiarg">[unit]</span>) : <span class="apiret">result</span> - Returns true if the unit is charmed.
: [[API UnitIsConnected|UnitIsConnected]](<span class="apiarg">unit</span>) : <span class="apiret">isConnected</span> - Returns true if the unit is connected to the game (i.e. not offline).
: [[API UnitIsControlling|UnitIsControlling]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns true if the local player is directly controlling the specified unit.
: [[API UnitIsCorpse|UnitIsCorpse]](<span class="apiarg">[unit]</span>) : <span class="apiret">result</span> - Returns true if the specified unit is a corpse, false otherwise.
: [[API UnitIsDead|UnitIsDead]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns true if the unit is dead.
: [[API UnitIsDeadOrGhost|UnitIsDeadOrGhost]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns true if the unit is dead or in ghost form.
: [[API UnitIsDND|UnitIsDND]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns true if a unit is DND (Do not disturb).
: [[API UnitIsEnemy|UnitIsEnemy]](<span class="apiarg">unit, target</span>) : <span class="apiret">result</span> - Returns true if the specified units are hostile to each other.
: [[API UnitIsFeignDeath|UnitIsFeignDeath]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns true if the unit (must be a group member) is feigning death.
: [[API UnitIsFriend|UnitIsFriend]](<span class="apiarg">unit, target</span>) : <span class="apiret">result</span> - Returns true if the specified units are friendly to each other.
: [[API UnitIsGameObject|UnitIsGameObject]](<span class="apiarg">[unit]</span>) : <span class="apiret">result</span>
: [[API UnitIsGhost|UnitIsGhost]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns true if the unit is in ghost form.
: [[API UnitIsGroupAssistant|UnitIsGroupAssistant]](<span class="apiarg">unit</span>) : <span class="apiret">isAssistant</span>
: [[API UnitIsInMyGuild|UnitIsInMyGuild]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns whether the specified unit is in the same guild as the player's character.
: [[API UnitIsInteractable|UnitIsInteractable]](<span class="apiarg">[unit]</span>) : <span class="apiret">result</span>
: [[API UnitIsOtherPlayersPet|UnitIsOtherPlayersPet]](<span class="apiarg">[unit]</span>) : <span class="apiret">result</span>
: [[API UnitIsOwnerOrControllerOfUnit|UnitIsOwnerOrControllerOfUnit]](<span class="apiarg">controllingUnit, controlledUnit</span>) : <span class="apiret">unitIsOwnerOrControllerOfUnit</span>
: [[API UnitIsPlayer|UnitIsPlayer]](<span class="apiarg">[unit [, partyIndex]]</span>) : <span class="apiret">result</span> - Returns true if the unit is a player character.
: [[API UnitIsPossessed|UnitIsPossessed]](<span class="apiarg">[unit]</span>) : <span class="apiret">result</span> - Returns true if the unit is currently under control of another (e.g. Mind Control).
: [[API UnitIsQuestBoss|UnitIsQuestBoss]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns true if the specified unit is the "boss" (objective) of a kill quest. If true, then the default UI displays a shield with a yellow "!" on it on the unit's unitframe.
: [[API UnitIsRaidOfficer|UnitIsRaidOfficer]](<span class="apiarg">[unit]</span>) : <span class="apiret">result</span> - Returns whether the specified unit is an officer in your raid.
: [[API UnitIsSameServer|UnitIsSameServer]](<span class="apiarg">unitName</span>) : <span class="apiret">result</span> - Returns true if the unit is from the same (connected) realm.
: [[API UnitIsTapDenied|UnitIsTapDenied]](<span class="apiarg">unit</span>) : <span class="apiret">result</span>
: [[API UnitIsTrivial|UnitIsTrivial]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns true if the unit is trivial (i.e. "grey" to the player).
: [[API UnitIsUnconscious|UnitIsUnconscious]](<span class="apiarg">unit</span>) : <span class="apiret">result</span>
: [[API UnitIsUnit|UnitIsUnit]](<span class="apiarg">unitName1, unitName2</span>) : <span class="apiret">result</span> - Returns true if the specified units are the same unit.
: [[API UnitIsVisible|UnitIsVisible]](<span class="apiarg">[unit]</span>) : <span class="apiret">result</span> - Returns true if the game client can see the unit.
: [[API UnitLeadsAnyGroup|UnitLeadsAnyGroup]]()
: [[API UnitLevel|UnitLevel]](<span class="apiarg">name</span>) : <span class="apiret">result</span> - Returns the level of the unit.
: [[API UnitName|UnitName]](<span class="apiarg">unit</span>) : <span class="apiret">unitName, unitServer</span> - Returns the name and realm of the unit.
: [[API UnitNameUnmodified|UnitNameUnmodified]](<span class="apiarg">unit</span>) : <span class="apiret">unitName, unitServer</span>
: [[API UnitPartialPower|UnitPartialPower]](<span class="apiarg">unitToken [, powerType [, unmodified]]</span>) : <span class="apiret">partialPower</span>
: [[API UnitPercentHealthFromGUID|UnitPercentHealthFromGUID]](<span class="apiarg">unitGUID</span>) : <span class="apiret">percentHealth</span>
: [[API UnitPlayerControlled|UnitPlayerControlled]](<span class="apiarg">[unit]</span>) : <span class="apiret">result</span> - Returns true if the unit is controlled by a player.
: [[API UnitPlayerOrPetInParty|UnitPlayerOrPetInParty]](<span class="apiarg">[unit [, partyIndex]]</span>) : <span class="apiret">result</span> - Returns true if a different unit or pet is a member of the party.
: [[API UnitPlayerOrPetInRaid|UnitPlayerOrPetInRaid]](<span class="apiarg">[unit [, partyIndex]]</span>) : <span class="apiret">result</span> - Returns true if a different unit or pet is a member of the raid.
: [[API UnitPower|UnitPower]](<span class="apiarg">unitToken [, powerType [, unmodified]]</span>) : <span class="apiret">power</span> - Returns the current power resource of the unit.
: [[API UnitPowerDisplayMod|UnitPowerDisplayMod]](<span class="apiarg">powerType</span>) : <span class="apiret">displayMod</span>
: [[API UnitPowerMax|UnitPowerMax]](<span class="apiarg">unitToken [, powerType [, unmodified]]</span>) : <span class="apiret">maxPower</span> - Returns the maximum power resource of the unit.
: [[API UnitPowerType|UnitPowerType]](<span class="apiarg">unit [, index]</span>) : <span class="apiret">powerType, powerTypeToken, rgbX, rgbY, rgbZ</span> - Returns a number corresponding to the power type (e.g., mana, rage or energy) of the specified unit.
: [[API UnitQuestTrivialLevelRange|UnitQuestTrivialLevelRange]](<span class="apiarg">unit</span>) : <span class="apiret">levelRange</span> - Returns the difference between the units' current level and the level at which fixed-level quests are of trivial difficulty.
: [[API UnitRace|UnitRace]](<span class="apiarg">name</span>) : <span class="apiret">localizedRaceName, englishRaceName, raceID</span> - Returns the race of the unit.
: [[API UnitRangedAttackPower|UnitRangedAttackPower]](<span class="apiarg">unit</span>) : <span class="apiret">attackPower, posBuff, negBuff</span> - Returns the ranged attack power of the unit.
: [[API UnitRangedDamage|UnitRangedDamage]](<span class="apiarg">unit</span>) : <span class="apiret">speed, minDamage, maxDamage, posBuff, negBuff, percent</span> - Returns the ranged attack speed and damage of the unit.
: [[API UnitReaction|UnitReaction]](<span class="apiarg">unit, target</span>) : <span class="apiret">result</span> - Returns the reaction of the specified unit to another unit.
: [[API UnitRealmRelationship|UnitRealmRelationship]](<span class="apiarg">unit</span>) : <span class="apiret">realmRelationship</span>
: [[API UnitSelectionColor|UnitSelectionColor]](<span class="apiarg">unit [, useExtendedColors]</span>) : <span class="apiret">resultR, resultG, resultB, resultA</span> - Returns the color of the outline and circle underneath the unit.
: [[API UnitSelectionType|UnitSelectionType]](<span class="apiarg">unit [, useExtendedColors]</span>) : <span class="apiret">result</span> - Returns the selection type of the outline and circle underneath the unit.
: [[API UnitSetRole|UnitSetRole]](<span class="apiarg">unit [, roleStr]</span>) : <span class="apiret">result</span>
: [[API UnitSetRoleEnum|UnitSetRoleEnum]](<span class="apiarg">unit [, role]</span>) : <span class="apiret">result</span>
: [[API UnitSex|UnitSex]](<span class="apiarg">unit</span>) : <span class="apiret">sex</span> - Returns the gender of the unit.
: [[API UnitShouldDisplayName|UnitShouldDisplayName]](<span class="apiarg">unit</span>) : <span class="apiret">result</span>
: [[API UnitSpellHaste|UnitSpellHaste]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns the current spell haste percentage for a unit.
: [[API UnitStagger|UnitStagger]](<span class="apiarg">unit</span>) : <span class="apiret">result</span>
: [[API UnitStat|UnitStat]](<span class="apiarg">unit, index</span>) : <span class="apiret">currentStat, effectiveStat, statPositiveBuff, statNegativeBuff</span> - Returns the basic attributes for a unit (strength, agility, stamina, intellect).
: [[API UnitThreatPercentageOfLead|UnitThreatPercentageOfLead]](<span class="apiarg">unit, mobGUID</span>) : <span class="apiret">result</span>
: [[API UnitThreatSituation|UnitThreatSituation]](<span class="apiarg">unit [, mobGUID]</span>) : <span class="apiret">result</span> - Returns the threat status of the specified unit to another unit.
: [[API UnitTokenFromGUID|UnitTokenFromGUID]](<span class="apiarg">unitGUID</span>) : <span class="apiret">unitToken</span>
: [[API UnitTreatAsPlayerForDisplay|UnitTreatAsPlayerForDisplay]](<span class="apiarg">unit</span>) : <span class="apiret">treatAsPlayer</span> - Whether a unit should be treated as if it was an actual player.
: [[API UnitTrialBankedLevels|UnitTrialBankedLevels]](<span class="apiarg">unit</span>) : <span class="apiret">bankedLevels, xpIntoCurrentLevel, xpForNextLevel</span>
: [[API UnitTrialXP|UnitTrialXP]](<span class="apiarg">unit</span>) : <span class="apiret">result</span>
: [[API UnitWeaponAttackPower|UnitWeaponAttackPower]](<span class="apiarg">unit</span>) : <span class="apiret">mainHandWeaponAttackPower, offHandWeaponAttackPower, rangedWeaponAttackPower</span>
: [[API UnitXP|UnitXP]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns the current XP of the unit; only works on the player.
: [[API UnitXPMax|UnitXPMax]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns the maximum XP of the unit; only works on the player.

===Phasing===
Players in different [[Phasing|Phases]] cannot see eachother.
: [[API UnitInPartyShard|UnitInPartyShard]](<span class="apiarg">unit</span>) : <span class="apiret">inPartyShard</span>
: [[API UnitPhaseReason|UnitPhaseReason]](<span class="apiarg">unit</span>) : <span class="apiret">reason</span> - Returns the reason if a unit is NOT in the same phase.

===Power Bar===
: [[API GetUnitPowerBarInfo|GetUnitPowerBarInfo]](<span class="apiarg">unitToken</span>) : <span class="apiret">info</span>
: [[API GetUnitPowerBarInfoByID|GetUnitPowerBarInfoByID]](<span class="apiarg">barID</span>) : <span class="apiret">info</span>
: [[API GetUnitPowerBarStrings|GetUnitPowerBarStrings]](<span class="apiarg">unitToken</span>) : <span class="apiret">name, tooltip, cost</span>
: [[API GetUnitPowerBarStringsByID|GetUnitPowerBarStringsByID]](<span class="apiarg">barID</span>) : <span class="apiret">name, tooltip, cost</span>
: [[API GetUnitPowerBarTextureInfo|GetUnitPowerBarTextureInfo]](<span class="apiarg">unitToken, textureIndex [, timerIndex]</span>) : <span class="apiret">texture, colorR, colorG, colorB, colorA</span>
: [[API GetUnitPowerBarTextureInfoByID|GetUnitPowerBarTextureInfoByID]](<span class="apiarg">barID, textureIndex</span>) : <span class="apiret">texture, colorR, colorG, colorB, colorA</span>
: [[API UnitNumPowerBarTimers|UnitNumPowerBarTimers]](<span class="apiarg">unit</span>) : <span class="apiret">result</span>
: [[API UnitPowerBarID|UnitPowerBarID]](<span class="apiarg">unitToken</span>) : <span class="apiret">barID</span>
: [[API UnitPowerBarTimerInfo|UnitPowerBarTimerInfo]](<span class="apiarg">unit [, index]</span>) : <span class="apiret">duration, expiration, barID, auraID</span>

==Vehicles==
These functions were added in [[Patch 3.0.2]]
: [[API C_PvP.GetBattlefieldVehicleInfo|C_PvP.GetBattlefieldVehicleInfo]](<span class="apiarg">vehicleIndex, uiMapID</span>) : <span class="apiret">info</span>
: [[API C_PvP.GetBattlefieldVehicles|C_PvP.GetBattlefieldVehicles]](<span class="apiarg">uiMapID</span>) : <span class="apiret">vehicles</span>
: [[API CanEjectPassengerFromSeat|CanEjectPassengerFromSeat]](<span class="apiarg">virtualSeatIndex</span>) : <span class="apiret">result</span> - Returns 1 if the player can eject a passenger from a seat.
: [[API CanExitVehicle|CanExitVehicle]]() - Returns 1 if the player can be exit the Vehicle.
: [[API CanSwitchVehicleSeat|CanSwitchVehicleSeat]]() : <span class="apiret">result</span>
: [[API CanSwitchVehicleSeats|CanSwitchVehicleSeats]]() - Returns 1 if the player can Switch Seats in the Vehicle.
: [[API EjectPassengerFromSeat|EjectPassengerFromSeat]](<span class="apiarg">virtualSeatIndex</span>) - Ejects a passenger from a seat.
: [[API GetNumBattlefieldVehicles|GetNumBattlefieldVehicles]](<span class="apiarg">index</span>)
: [[API GetVehicleUIIndicator|GetVehicleUIIndicator]](<span class="apiarg">vehicleIndicatorID</span>) : <span class="apiret">backgroundTextureID, numSeatIndicators</span>
: [[API GetVehicleUIIndicatorSeat|GetVehicleUIIndicatorSeat]](<span class="apiarg">vehicleIndicatorID, indicatorSeatIndex</span>) : <span class="apiret">virtualSeatIndex, xPos, yPos</span>
: [[API IsUsingVehicleControls|IsUsingVehicleControls]]()
: [[API IsVehicleAimAngleAdjustable|IsVehicleAimAngleAdjustable]]() - Returns 1 if the player can adjust the Aim Angle of the Vehicle.
: [[API IsVehicleAimPowerAdjustable|IsVehicleAimPowerAdjustable]]() - Returns 1 if the player can adjust the Aim Power of the Vehicle.
: [[API PlayerVehicleHasComboPoints|PlayerVehicleHasComboPoints]]() : <span class="apiret">vehicleHasComboPoints</span>
: [[API UnitControllingVehicle|UnitControllingVehicle]](<span class="apiarg">unit</span>) : <span class="apiret">result</span>
: [[API UnitHasVehiclePlayerFrameUI|UnitHasVehiclePlayerFrameUI]](<span class="apiarg">[unit]</span>) : <span class="apiret">result</span>
: [[API UnitHasVehicleUI|UnitHasVehicleUI]](<span class="apiarg">[unit]</span>) : <span class="apiret">result</span>
: [[API UnitInVehicle|UnitInVehicle]](<span class="apiarg">unit</span>) : <span class="apiret">result</span>
: [[API UnitInVehicleControlSeat|UnitInVehicleControlSeat]](<span class="apiarg">[unit]</span>) : <span class="apiret">result</span>
: [[API UnitInVehicleHidesPetFrame|UnitInVehicleHidesPetFrame]](<span class="apiarg">[unit]</span>) : <span class="apiret">result</span>
: [[API UnitSwitchToVehicleSeat|UnitSwitchToVehicleSeat]](<span class="apiarg">unit, virtualSeatIndex</span>)
: [[API UnitTargetsVehicleInRaidUI|UnitTargetsVehicleInRaidUI]](<span class="apiarg">[unit]</span>) : <span class="apiret">result</span>
: [[API UnitUsingVehicle|UnitUsingVehicle]](<span class="apiarg">unit</span>) : <span class="apiret">result</span> - Returns true if the unit is currently in a vehicle.
: [[API UnitVehicleSeatCount|UnitVehicleSeatCount]](<span class="apiarg">unit</span>) : <span class="apiret">result</span>
: [[API UnitVehicleSeatInfo|UnitVehicleSeatInfo]](<span class="apiarg">unit, virtualSeatIndex</span>) : <span class="apiret">controlType, occupantName, serverName, ejectable, canSwitchSeats</span>
: [[API UnitVehicleSkin|UnitVehicleSkin]](<span class="apiarg">[unit]</span>) : <span class="apiret">result</span>
: [[API VehicleAimDecrement|VehicleAimDecrement]]()
: [[API VehicleAimDownStart|VehicleAimDownStart]]()
: [[API VehicleAimDownStop|VehicleAimDownStop]]()
: [[API VehicleAimGetNormPower|VehicleAimGetNormPower]]()
: [[API VehicleAimIncrement|VehicleAimIncrement]]()
: [[API VehicleAimRequestAngle|VehicleAimRequestAngle]]()
: [[API VehicleAimSetNormPower|VehicleAimSetNormPower]]()
: [[API VehicleAimUpStart|VehicleAimUpStart]]()
: [[API VehicleAimUpStop|VehicleAimUpStop]]()
: [[API VehicleExit|VehicleExit]]() - Exit the current Vehicle.
: [[API VehicleNextSeat|VehicleNextSeat]]()
: [[API VehiclePrevSeat|VehiclePrevSeat]]()

==Warlords of Draenor==
===Garrison Tech===
[[Garrison]]s were added in [[Patch 6.0.2]] and also utilized in later expanions.
: [[API C_Garrison.CanUpgradeGarrison|C_Garrison.CanUpgradeGarrison]]()
: [[API C_Garrison.ClearCompleteTalent|C_Garrison.ClearCompleteTalent]](<span class="apiarg">garrisonType</span>)
: [[API C_Garrison.CloseArchitect|C_Garrison.CloseArchitect]]()
: [[API C_Garrison.CloseGarrisonTradeskillNPC|C_Garrison.CloseGarrisonTradeskillNPC]]()
: [[API C_Garrison.CloseTalentNPC|C_Garrison.CloseTalentNPC]]()
: [[API C_Garrison.CloseTradeskillCrafter|C_Garrison.CloseTradeskillCrafter]]()
: [[API C_Garrison.GetAllBonusAbilityEffects|C_Garrison.GetAllBonusAbilityEffects]]()
: [[API C_Garrison.GetCompleteTalent|C_Garrison.GetCompleteTalent]](<span class="apiarg">garrisonType</span>)
: [[API C_Garrison.GetCurrencyTypes|C_Garrison.GetCurrencyTypes]](<span class="apiarg">garrType</span>)
: [[API C_Garrison.GetCurrentGarrTalentTreeFriendshipFactionID|C_Garrison.GetCurrentGarrTalentTreeFriendshipFactionID]]() : <span class="apiret">currentGarrTalentTreeFriendshipFactionID</span>
: [[API C_Garrison.GetCurrentGarrTalentTreeID|C_Garrison.GetCurrentGarrTalentTreeID]]() : <span class="apiret">currentGarrTalentTreeID</span>
: [[API C_Garrison.GetGarrisonInfo|C_Garrison.GetGarrisonInfo]](<span class="apiarg">garrisonType</span>) : <span class="apiret">garrisonLevel, mapTexture, townHallX, townHallY</span>
: [[API C_Garrison.GetGarrisonTalentTreeCurrencyTypes|C_Garrison.GetGarrisonTalentTreeCurrencyTypes]](<span class="apiarg">garrTalentTreeID</span>) : <span class="apiret">garrTalentTreeCurrencyType</span>
: [[API C_Garrison.GetGarrisonTalentTreeType|C_Garrison.GetGarrisonTalentTreeType]](<span class="apiarg">garrTalentTreeID</span>) : <span class="apiret">garrTalentTreeType</span>
: [[API C_Garrison.GetGarrisonUpgradeCost|C_Garrison.GetGarrisonUpgradeCost]](<span class="apiarg">followerType</span>)
: [[API C_Garrison.GetLandingPageGarrisonType|C_Garrison.GetLandingPageGarrisonType]]()
: [[API C_Garrison.GetLandingPageItems|C_Garrison.GetLandingPageItems]](<span class="apiarg">garrTypeID [, noSort]</span>)
: [[API C_Garrison.GetLandingPageShipmentCount|C_Garrison.GetLandingPageShipmentCount]]()
: [[API C_Garrison.GetLandingPageShipmentInfoByContainerID|C_Garrison.GetLandingPageShipmentInfoByContainerID]](<span class="apiarg">containerID</span>) : <span class="apiret">name, texture, shipmentCapacity, shipmentsReady, shipmentsTotal, creationTime, duration, timeleftString, itemName, itemTexture, unk1, itemID, followerID</span>
: [[API C_Garrison.GetLooseShipments|C_Garrison.GetLooseShipments]](<span class="apiarg">garrisonType</span>) : <span class="apiret">looseShipments</span>
: [[API C_Garrison.GetNumPendingShipments|C_Garrison.GetNumPendingShipments]]()
: [[API C_Garrison.GetNumShipmentCurrencies|C_Garrison.GetNumShipmentCurrencies]]()
: [[API C_Garrison.GetNumShipmentReagents|C_Garrison.GetNumShipmentReagents]]()
: [[API C_Garrison.GetPendingShipmentInfo|C_Garrison.GetPendingShipmentInfo]](<span class="apiarg">index</span>)
: [[API C_Garrison.GetShipmentContainerInfo|C_Garrison.GetShipmentContainerInfo]]()
: [[API C_Garrison.GetShipmentItemInfo|C_Garrison.GetShipmentItemInfo]]()
: [[API C_Garrison.GetShipmentReagentCurrencyInfo|C_Garrison.GetShipmentReagentCurrencyInfo]](<span class="apiarg">currencyIndex</span>)
: [[API C_Garrison.GetShipmentReagentInfo|C_Garrison.GetShipmentReagentInfo]](<span class="apiarg">reagentIndex</span>)
: [[API C_Garrison.GetShipmentReagentItemLink|C_Garrison.GetShipmentReagentItemLink]](<span class="apiarg">reagentIndex</span>)
: [[API C_Garrison.GetSpecChangeCost|C_Garrison.GetSpecChangeCost]]()
: [[API C_Garrison.GetTalentInfo|C_Garrison.GetTalentInfo]](<span class="apiarg">talentID</span>) : <span class="apiret">info</span>
: [[API C_Garrison.GetTalentPointsSpentInTalentTree|C_Garrison.GetTalentPointsSpentInTalentTree]](<span class="apiarg">garrTalentTreeID</span>) : <span class="apiret">talentPoints</span>
: [[API C_Garrison.GetTalentTreeIDsByClassID|C_Garrison.GetTalentTreeIDsByClassID]](<span class="apiarg">garrType, classID</span>) : <span class="apiret">treeIDs</span>
: [[API C_Garrison.GetTalentTreeInfo|C_Garrison.GetTalentTreeInfo]](<span class="apiarg">treeID</span>) : <span class="apiret">info</span>
: [[API C_Garrison.GetTalentTreeResetInfo|C_Garrison.GetTalentTreeResetInfo]](<span class="apiarg">garrTalentTreeID</span>) : <span class="apiret">goldCost, currencyCosts</span>
: [[API C_Garrison.GetTalentTreeTalentPointResearchInfo|C_Garrison.GetTalentTreeTalentPointResearchInfo]](<span class="apiarg">garrTalentID, researchRank, garrTalentTreeID, talentPointIndex, isRespec</span>) : <span class="apiret">goldCost, currencyCosts, durationSecs</span>
: [[API C_Garrison.GetTalentUnlockWorldQuest|C_Garrison.GetTalentUnlockWorldQuest]](<span class="apiarg">talentID</span>) : <span class="apiret">worldQuestID</span>
: [[API C_Garrison.HasAdventures|C_Garrison.HasAdventures]]() : <span class="apiret">hasAdventures</span>
: [[API C_Garrison.HasGarrison|C_Garrison.HasGarrison]](<span class="apiarg">garrisonType</span>)
: [[API C_Garrison.IsFollowerOnCompletedMission|C_Garrison.IsFollowerOnCompletedMission]](<span class="apiarg">followerID</span>) : <span class="apiret">followerOnCompletedMission</span>
: [[API C_Garrison.IsInvasionAvailable|C_Garrison.IsInvasionAvailable]]()
: [[API C_Garrison.IsOnGarrisonMap|C_Garrison.IsOnGarrisonMap]]()
: [[API C_Garrison.IsOnShipmentQuestForNPC|C_Garrison.IsOnShipmentQuestForNPC]]()
: [[API C_Garrison.IsPlayerInGarrison|C_Garrison.IsPlayerInGarrison]](<span class="apiarg">garrType</span>)
: [[API C_Garrison.IsTalentConditionMet|C_Garrison.IsTalentConditionMet]](<span class="apiarg">talentID</span>) : <span class="apiret">isMet, failureString</span>
: [[API C_Garrison.IsUsingPartyGarrison|C_Garrison.IsUsingPartyGarrison]]() : <span class="apiret">usingPartyGarrison</span>
: [[API C_Garrison.IsVisitGarrisonAvailable|C_Garrison.IsVisitGarrisonAvailable]]()
: [[API C_Garrison.RequestGarrisonUpgradeable|C_Garrison.RequestGarrisonUpgradeable]](<span class="apiarg">followerType</span>)
: [[API C_Garrison.RequestLandingPageShipmentInfo|C_Garrison.RequestLandingPageShipmentInfo]]()
: [[API C_Garrison.RequestShipmentCreation|C_Garrison.RequestShipmentCreation]]()
: [[API C_Garrison.RequestShipmentInfo|C_Garrison.RequestShipmentInfo]]()
: [[API C_Garrison.ResearchTalent|C_Garrison.ResearchTalent]](<span class="apiarg">garrTalentID</span>)
: [[API C_Garrison.SetUsingPartyGarrison|C_Garrison.SetUsingPartyGarrison]](<span class="apiarg">enabled</span>)
: [[API C_Garrison.ShouldShowMapTab|C_Garrison.ShouldShowMapTab]](<span class="apiarg">garrType</span>)
: [[API C_Garrison.UpgradeGarrison|C_Garrison.UpgradeGarrison]](<span class="apiarg">followerType</span>)
: [[API GetEquipmentNameFromSpell|GetEquipmentNameFromSpell]]() - returns a garrison equipment for a spell.
: [[API GetFollowerTypeIDFromSpell|GetFollowerTypeIDFromSpell]]() - Returns the Garrison expansion type.

===Buildings===
: [[API C_Garrison.CancelConstruction|C_Garrison.CancelConstruction]](<span class="apiarg">plotInstanceID</span>)
: [[API C_Garrison.GetBuildingInfo|C_Garrison.GetBuildingInfo]](<span class="apiarg">buildingID</span>) : <span class="apiret">id, name, textureKit, icon, description, rank, currencyID, currencyQty, goldQty, buildTime, needsPlan, isPrebuilt, possSpecs, upgrades, canUpgrade, isMaxLevel, hasFollowerSlot</span>
: [[API C_Garrison.GetBuildingLockInfo|C_Garrison.GetBuildingLockInfo]]()
: [[API C_Garrison.GetBuildingSizes|C_Garrison.GetBuildingSizes]]()
: [[API C_Garrison.GetBuildingSpecInfo|C_Garrison.GetBuildingSpecInfo]]()
: [[API C_Garrison.GetBuildingTimeRemaining|C_Garrison.GetBuildingTimeRemaining]](<span class="apiarg">plotInstanceID</span>)
: [[API C_Garrison.GetBuildingTooltip|C_Garrison.GetBuildingTooltip]](<span class="apiarg">buildingID</span>)
: [[API C_Garrison.GetBuildingUpgradeInfo|C_Garrison.GetBuildingUpgradeInfo]](<span class="apiarg">buildingID</span>)
: [[API C_Garrison.GetBuildingsForPlot|C_Garrison.GetBuildingsForPlot]](<span class="apiarg">plotInstanceID</span>)
: [[API C_Garrison.GetBuildingsForSize|C_Garrison.GetBuildingsForSize]](<span class="apiarg">garrisonType, uiCategoryID</span>)
: [[API C_Garrison.GetBuildings|C_Garrison.GetBuildings]](<span class="apiarg">garrisonType</span>)
: [[API C_Garrison.GetGarrisonPlotsInstancesForMap|C_Garrison.GetGarrisonPlotsInstancesForMap]](<span class="apiarg">uiMapID</span>) : <span class="apiret">garrisonPlotInstances</span>
: [[API C_Garrison.GetLandingPageShipmentInfo|C_Garrison.GetLandingPageShipmentInfo]](<span class="apiarg">buildingID</span>)
: [[API C_Garrison.GetOwnedBuildingInfoAbbrev|C_Garrison.GetOwnedBuildingInfoAbbrev]](<span class="apiarg">plotID</span>) : <span class="apiret">id, name, textureKit, icon, rank, isBuilding, timeStart, buildTime, canActivate, canUpgrade, isPrebuilt</span>
: [[API C_Garrison.GetOwnedBuildingInfo|C_Garrison.GetOwnedBuildingInfo]](<span class="apiarg">plotInstanceID</span>)
: [[API C_Garrison.GetPlotsForBuilding|C_Garrison.GetPlotsForBuilding]](<span class="apiarg">buildingID</span>)
: [[API C_Garrison.GetPlots|C_Garrison.GetPlots]](<span class="apiarg">followerType</span>)
: [[API C_Garrison.GetShipDeathAnimInfo|C_Garrison.GetShipDeathAnimInfo]]()
: [[API C_Garrison.GetTabForPlot|C_Garrison.GetTabForPlot]](<span class="apiarg">plotInstanceID</span>)
: [[API C_Garrison.HasShipyard|C_Garrison.HasShipyard]]() : <span class="apiret">hasShipyard</span>
: [[API C_Garrison.IsOnShipyardMap|C_Garrison.IsOnShipyardMap]]()
: [[API C_Garrison.PlaceBuilding|C_Garrison.PlaceBuilding]](<span class="apiarg">plotInstanceID, buildingID</span>)
: [[API C_Garrison.SetBuildingActive|C_Garrison.SetBuildingActive]](<span class="apiarg">plotInstanceID</span>)
: [[API C_Garrison.SetBuildingSpecialization|C_Garrison.SetBuildingSpecialization]]()
: [[API C_Garrison.SwapBuildings|C_Garrison.SwapBuildings]](<span class="apiarg">plotInstanceID1, plotInstanceID2</span>)
: [[API C_Garrison.UpgradeBuilding|C_Garrison.UpgradeBuilding]](<span class="apiarg">plotInstanceID</span>)
Trophies
: [[API C_Trophy.MonumentChangeAppearanceToTrophyID|C_Trophy.MonumentChangeAppearanceToTrophyID]](<span class="apiarg">trophyID</span>)
: [[API C_Trophy.MonumentCloseMonumentUI|C_Trophy.MonumentCloseMonumentUI]]()
: [[API C_Trophy.MonumentGetCount|C_Trophy.MonumentGetCount]]()
: [[API C_Trophy.MonumentGetSelectedTrophyID|C_Trophy.MonumentGetSelectedTrophyID]]()
: [[API C_Trophy.MonumentGetTrophyInfoByIndex|C_Trophy.MonumentGetTrophyInfoByIndex]](<span class="apiarg">index</span>)
: [[API C_Trophy.MonumentLoadList|C_Trophy.MonumentLoadList]]()
: [[API C_Trophy.MonumentLoadSelectedTrophyID|C_Trophy.MonumentLoadSelectedTrophyID]]()
: [[API C_Trophy.MonumentRevertAppearanceToSaved|C_Trophy.MonumentRevertAppearanceToSaved]]()
: [[API C_Trophy.MonumentSaveSelection|C_Trophy.MonumentSaveSelection]](<span class="apiarg">trophyID</span>)

===Missions===
Relates to [[Follower]]s and [[Mission]]s.
: [[API C_Garrison.AddFollowerToMission|C_Garrison.AddFollowerToMission]](<span class="apiarg">missionID, followerID [, boardIndex]</span>) : <span class="apiret">followerAdded</span>
: [[API C_Garrison.AllowMissionStartAboveSoftCap|C_Garrison.AllowMissionStartAboveSoftCap]](<span class="apiarg">garrFollowerTypeID</span>)
: [[API C_Garrison.AreMissionFollowerRequirementsMet|C_Garrison.AreMissionFollowerRequirementsMet]](<span class="apiarg">missionRecID</span>)
: [[API C_Garrison.AssignFollowerToBuilding|C_Garrison.AssignFollowerToBuilding]](<span class="apiarg">plotInstanceID, followerID</span>)
: [[API C_Garrison.CanGenerateRecruits|C_Garrison.CanGenerateRecruits]]()
: [[API C_Garrison.CanOpenMissionChest|C_Garrison.CanOpenMissionChest]](<span class="apiarg">missionID</span>)
: [[API C_Garrison.CanSetRecruitmentPreference|C_Garrison.CanSetRecruitmentPreference]]()
: [[API C_Garrison.CanSpellTargetFollowerIDWithAddAbility|C_Garrison.CanSpellTargetFollowerIDWithAddAbility]](<span class="apiarg">followerID</span>)
: [[API C_Garrison.CastItemSpellOnFollowerAbility|C_Garrison.CastItemSpellOnFollowerAbility]](<span class="apiarg">followerID, abilityID</span>)
: [[API C_Garrison.CastSpellOnFollower|C_Garrison.CastSpellOnFollower]](<span class="apiarg">followerID</span>)
: [[API C_Garrison.CastSpellOnFollowerAbility|C_Garrison.CastSpellOnFollowerAbility]](<span class="apiarg">followerID, abilityID</span>)
: [[API C_Garrison.CastSpellOnMission|C_Garrison.CastSpellOnMission]](<span class="apiarg">missionID</span>)
: [[API C_Garrison.CloseMissionNPC|C_Garrison.CloseMissionNPC]]()
: [[API C_Garrison.CloseRecruitmentNPC|C_Garrison.CloseRecruitmentNPC]]()
: [[API C_Garrison.GenerateRecruits|C_Garrison.GenerateRecruits]](<span class="apiarg">mechanicTypeID, traitID</span>)
: [[API C_Garrison.GetAllEncounterThreats|C_Garrison.GetAllEncounterThreats]](<span class="apiarg">garrFollowerTypeID</span>)
: [[API C_Garrison.GetAvailableMissions|C_Garrison.GetAvailableMissions]](<span class="apiarg">garrFollowerTypeID</span>) : <span class="apiret">info</span>
: [[API C_Garrison.GetAvailableRecruits|C_Garrison.GetAvailableRecruits]]()
: [[API C_Garrison.GetBasicMissionInfo|C_Garrison.GetBasicMissionInfo]](<span class="apiarg">missionID</span>) : <span class="apiret">info</span>
: [[API C_Garrison.GetBuffedFollowersForMission|C_Garrison.GetBuffedFollowersForMission]](<span class="apiarg">missionID, displayingAbilities</span>)
: [[API C_Garrison.GetClassSpecCategoryInfo|C_Garrison.GetClassSpecCategoryInfo]](<span class="apiarg">garrFollowerType</span>)
: [[API C_Garrison.GetCombatAllyMission|C_Garrison.GetCombatAllyMission]](<span class="apiarg">garrFollowerTypeID</span>)
: [[API C_Garrison.GetCompleteMissions|C_Garrison.GetCompleteMissions]](<span class="apiarg">[missionList,] garrFollowerTypeID</span>)
: [[API C_Garrison.GetFollowerAbilities|C_Garrison.GetFollowerAbilities]](<span class="apiarg">followerID</span>) : <span class="apiret">abilities, extraAbilities</span>
: [[API C_Garrison.GetFollowerAbilityAtIndex|C_Garrison.GetFollowerAbilityAtIndex]](<span class="apiarg">followerID, index</span>) : <span class="apiret">abilityID</span>
: [[API C_Garrison.GetFollowerAbilityAtIndexByID|C_Garrison.GetFollowerAbilityAtIndexByID]](<span class="apiarg">garrFollowerID, index</span>)
: [[API C_Garrison.GetFollowerAbilityCounterMechanicInfo|C_Garrison.GetFollowerAbilityCounterMechanicInfo]](<span class="apiarg">garrAbilityID</span>)
: [[API C_Garrison.GetFollowerAbilityCountersForMechanicTypes|C_Garrison.GetFollowerAbilityCountersForMechanicTypes]](<span class="apiarg">garrFollowerTypeID</span>)
: [[API C_Garrison.GetFollowerAbilityDescription|C_Garrison.GetFollowerAbilityDescription]](<span class="apiarg">garrAbilityID</span>)
: [[API C_Garrison.GetFollowerAbilityIcon|C_Garrison.GetFollowerAbilityIcon]](<span class="apiarg">garrAbilityID</span>)
: [[API C_Garrison.GetFollowerAbilityInfo|C_Garrison.GetFollowerAbilityInfo]](<span class="apiarg">garrAbilityID</span>)
: [[API C_Garrison.GetFollowerAbilityIsTrait|C_Garrison.GetFollowerAbilityIsTrait]](<span class="apiarg">garrAbilityID</span>)
: [[API C_Garrison.GetFollowerAbilityLink|C_Garrison.GetFollowerAbilityLink]](<span class="apiarg">abilityID</span>)
: [[API C_Garrison.GetFollowerAbilityName|C_Garrison.GetFollowerAbilityName]](<span class="apiarg">garrAbilityID</span>)
: [[API C_Garrison.GetFollowerActivationCost|C_Garrison.GetFollowerActivationCost]]()
: [[API C_Garrison.GetFollowerBiasForMission|C_Garrison.GetFollowerBiasForMission]](<span class="apiarg">missionID, followerID</span>)
: [[API C_Garrison.GetFollowerClassSpec|C_Garrison.GetFollowerClassSpec]](<span class="apiarg">followerID</span>)
: [[API C_Garrison.GetFollowerClassSpecAtlas|C_Garrison.GetFollowerClassSpecAtlas]](<span class="apiarg">garrSpecID</span>)
: [[API C_Garrison.GetFollowerClassSpecByID|C_Garrison.GetFollowerClassSpecByID]](<span class="apiarg">garrFollowerID</span>)
: [[API C_Garrison.GetFollowerClassSpecName|C_Garrison.GetFollowerClassSpecName]](<span class="apiarg">garrFollowerID</span>)
: [[API C_Garrison.GetFollowerDisplayID|C_Garrison.GetFollowerDisplayID]](<span class="apiarg">followerID</span>)
: [[API C_Garrison.GetFollowerInfo|C_Garrison.GetFollowerInfo]](<span class="apiarg">followerID</span>) : <span class="apiret">info</span>
: [[API C_Garrison.GetFollowerInfoForBuilding|C_Garrison.GetFollowerInfoForBuilding]]()
: [[API C_Garrison.GetFollowerIsTroop|C_Garrison.GetFollowerIsTroop]](<span class="apiarg">guid|id</span>)
: [[API C_Garrison.GetFollowerItemLevelAverage|C_Garrison.GetFollowerItemLevelAverage]](<span class="apiarg">followerID</span>)
: [[API C_Garrison.GetFollowerItems|C_Garrison.GetFollowerItems]](<span class="apiarg">followerID</span>) : <span class="apiret">weaponItemID, weaponItemLevel, armorItemID, armorItemLevel</span>
: [[API C_Garrison.GetFollowerLevel|C_Garrison.GetFollowerLevel]](<span class="apiarg">followerID</span>)
: [[API C_Garrison.GetFollowerLevelXP|C_Garrison.GetFollowerLevelXP]](<span class="apiarg">followerID</span>)
: [[API C_Garrison.GetFollowerLink|C_Garrison.GetFollowerLink]](<span class="apiarg">followerID</span>)
: [[API C_Garrison.GetFollowerLinkByID|C_Garrison.GetFollowerLinkByID]](<span class="apiarg">garrFollowerID</span>)
: [[API C_Garrison.GetFollowerMissionCompleteInfo|C_Garrison.GetFollowerMissionCompleteInfo]](<span class="apiarg">followerID</span>) : <span class="apiret">followerMissionCompleteInfo</span>
: [[API C_Garrison.GetFollowerMissionTimeLeft|C_Garrison.GetFollowerMissionTimeLeft]](<span class="apiarg">followerID</span>)
: [[API C_Garrison.GetFollowerMissionTimeLeftSeconds|C_Garrison.GetFollowerMissionTimeLeftSeconds]](<span class="apiarg">followerID</span>)
: [[API C_Garrison.GetFollowerModelItems|C_Garrison.GetFollowerModelItems]](<span class="apiarg">followerID</span>)
: [[API C_Garrison.GetFollowerName|C_Garrison.GetFollowerName]](<span class="apiarg">followerID</span>)
: [[API C_Garrison.GetFollowerNameByID|C_Garrison.GetFollowerNameByID]](<span class="apiarg">garrFollowerID</span>)
: [[API C_Garrison.GetFollowerPortraitIconID|C_Garrison.GetFollowerPortraitIconID]](<span class="apiarg">followerID</span>)
: [[API C_Garrison.GetFollowerPortraitIconIDByID|C_Garrison.GetFollowerPortraitIconIDByID]](<span class="apiarg">garrFollowerID</span>)
: [[API C_Garrison.GetFollowerQuality|C_Garrison.GetFollowerQuality]](<span class="apiarg">followerID</span>)
: [[API C_Garrison.GetFollowerQualityTable|C_Garrison.GetFollowerQualityTable]](<span class="apiarg">garrFollowerTypeID</span>)
: [[API C_Garrison.GetFollowerRecentlyGainedAbilityIDs|C_Garrison.GetFollowerRecentlyGainedAbilityIDs]](<span class="apiarg">followerID</span>)
: [[API C_Garrison.GetFollowerRecentlyGainedTraitIDs|C_Garrison.GetFollowerRecentlyGainedTraitIDs]](<span class="apiarg">followerID</span>)
: [[API C_Garrison.GetFollowers|C_Garrison.GetFollowers]](<span class="apiarg">[followerType]</span>) : <span class="apiret">info</span> - Returns a list of garrison tech followers.
: [[API C_Garrison.GetFollowerShipments|C_Garrison.GetFollowerShipments]](<span class="apiarg">garrTypeID</span>)
: [[API C_Garrison.GetFollowerSoftCap|C_Garrison.GetFollowerSoftCap]](<span class="apiarg">garrFollowerTypeID</span>)
: [[API C_Garrison.GetFollowerSourceTextByID|C_Garrison.GetFollowerSourceTextByID]](<span class="apiarg">garrFollowerID</span>)
: [[API C_Garrison.GetFollowerSpecializationAtIndex|C_Garrison.GetFollowerSpecializationAtIndex]](<span class="apiarg">followerID, index</span>)
: [[API C_Garrison.GetFollowersSpellsForMission|C_Garrison.GetFollowersSpellsForMission]](<span class="apiarg">missionID</span>)
: [[API C_Garrison.GetFollowerStatus|C_Garrison.GetFollowerStatus]](<span class="apiarg">followerID</span>)
: [[API C_Garrison.GetFollowersTraitsForMission|C_Garrison.GetFollowersTraitsForMission]](<span class="apiarg">missionID</span>)
: [[API C_Garrison.GetFollowerTraitAtIndex|C_Garrison.GetFollowerTraitAtIndex]](<span class="apiarg">followerID, index</span>)
: [[API C_Garrison.GetFollowerTraitAtIndexByID|C_Garrison.GetFollowerTraitAtIndexByID]](<span class="apiarg">garrFollowerID, index</span>)
: [[API C_Garrison.GetFollowerTypeByID|C_Garrison.GetFollowerTypeByID]](<span class="apiarg">garrFollowerID</span>)
: [[API C_Garrison.GetFollowerTypeByMissionID|C_Garrison.GetFollowerTypeByMissionID]](<span class="apiarg">missionID</span>)
: [[API C_Garrison.GetFollowerUnderBiasReason|C_Garrison.GetFollowerUnderBiasReason]](<span class="apiarg">missionID, followerID</span>)
: [[API C_Garrison.GetFollowerXP|C_Garrison.GetFollowerXP]](<span class="apiarg">followerID</span>)
: [[API C_Garrison.GetFollowerXPTable|C_Garrison.GetFollowerXPTable]](<span class="apiarg">garrFollowerTypeID</span>)
: [[API C_Garrison.GetFollowerZoneSupportAbilities|C_Garrison.GetFollowerZoneSupportAbilities]](<span class="apiarg">guid|id</span>)
: [[API C_Garrison.GetInProgressMissions|C_Garrison.GetInProgressMissions]](<span class="apiarg">garrFollowerTypeID</span>) : <span class="apiret">info</span>
: [[API C_Garrison.GetMissionBonusAbilityEffects|C_Garrison.GetMissionBonusAbilityEffects]](<span class="apiarg">missionID</span>)
: [[API C_Garrison.GetMissionCompleteEncounters|C_Garrison.GetMissionCompleteEncounters]](<span class="apiarg">missionID</span>) : <span class="apiret">encounters</span>
: [[API C_Garrison.GetMissionCost|C_Garrison.GetMissionCost]](<span class="apiarg">missionID</span>)
: [[API C_Garrison.GetMissionDeploymentInfo|C_Garrison.GetMissionDeploymentInfo]](<span class="apiarg">missionID</span>) : <span class="apiret">missionDeploymentInfo</span>
: [[API C_Garrison.GetMissionDisplayIDs|C_Garrison.GetMissionDisplayIDs]](<span class="apiarg">missionID</span>)
: [[API C_Garrison.GetMissionEncounterIconInfo|C_Garrison.GetMissionEncounterIconInfo]](<span class="apiarg">missionID</span>) : <span class="apiret">missionEncounterIconInfo</span>
: [[API C_Garrison.GetMissionLink|C_Garrison.GetMissionLink]](<span class="apiarg">missionID</span>)
: [[API C_Garrison.GetMissionMaxFollowers|C_Garrison.GetMissionMaxFollowers]](<span class="apiarg">garrMissionID</span>)
: [[API C_Garrison.GetMissionName|C_Garrison.GetMissionName]](<span class="apiarg">garrMissionID</span>)
: [[API C_Garrison.GetMissionRewardInfo|C_Garrison.GetMissionRewardInfo]](<span class="apiarg">garrMissionID [, missionDBID]</span>)
: [[API C_Garrison.GetMissionSuccessChance|C_Garrison.GetMissionSuccessChance]](<span class="apiarg">missionID</span>)
: [[API C_Garrison.GetMissionTexture|C_Garrison.GetMissionTexture]](<span class="apiarg">offeredGarrMissionTextureID</span>)
: [[API C_Garrison.GetMissionTimes|C_Garrison.GetMissionTimes]](<span class="apiarg">missionID</span>)
: [[API C_Garrison.GetMissionUncounteredMechanics|C_Garrison.GetMissionUncounteredMechanics]](<span class="apiarg">missionID</span>)
: [[API C_Garrison.GetNumActiveFollowers|C_Garrison.GetNumActiveFollowers]]()
: [[API C_Garrison.GetNumFollowerActivationsRemaining|C_Garrison.GetNumFollowerActivationsRemaining]](<span class="apiarg">garrTypeID</span>)
: [[API C_Garrison.GetNumFollowerDailyActivations|C_Garrison.GetNumFollowerDailyActivations]]()
: [[API C_Garrison.GetNumFollowers|C_Garrison.GetNumFollowers]]()
: [[API C_Garrison.GetNumFollowersForMechanic|C_Garrison.GetNumFollowersForMechanic]](<span class="apiarg">followerType, mechanicID</span>)
: [[API C_Garrison.GetNumFollowersOnMission|C_Garrison.GetNumFollowersOnMission]](<span class="apiarg">missionID</span>)
: [[API C_Garrison.GetPartyBuffs|C_Garrison.GetPartyBuffs]](<span class="apiarg">missionID</span>)
: [[API C_Garrison.GetPartyMentorLevels|C_Garrison.GetPartyMentorLevels]](<span class="apiarg">missionID</span>)
: [[API C_Garrison.GetPartyMissionInfo|C_Garrison.GetPartyMissionInfo]](<span class="apiarg">missionID</span>)
: [[API C_Garrison.GetPossibleFollowersForBuilding|C_Garrison.GetPossibleFollowersForBuilding]](<span class="apiarg">followerType, plotInstanceID</span>)
: [[API C_Garrison.GetRecruitAbilities|C_Garrison.GetRecruitAbilities]](<span class="apiarg">index</span>)
: [[API C_Garrison.GetRecruiterAbilityCategories|C_Garrison.GetRecruiterAbilityCategories]]()
: [[API C_Garrison.GetRecruiterAbilityList|C_Garrison.GetRecruiterAbilityList]](<span class="apiarg">traits</span>)
: [[API C_Garrison.GetRecruitmentPreferences|C_Garrison.GetRecruitmentPreferences]]()
: [[API C_Garrison.IsAboveFollowerSoftCap|C_Garrison.IsAboveFollowerSoftCap]](<span class="apiarg">garrFollowerTypeID</span>)
: [[API C_Garrison.IsAtGarrisonMissionNPC|C_Garrison.IsAtGarrisonMissionNPC]]() : <span class="apiret">atGarrisonMissionNPC</span>
: [[API C_Garrison.IsEnvironmentCountered|C_Garrison.IsEnvironmentCountered]](<span class="apiarg">missionID</span>) : <span class="apiret">environmentCountered</span>
: [[API C_Garrison.IsFollowerCollected|C_Garrison.IsFollowerCollected]](<span class="apiarg">garrFollowerID</span>)
: [[API C_Garrison.IsMechanicFullyCountered|C_Garrison.IsMechanicFullyCountered]](<span class="apiarg">missionID, followerID, mechanicID</span>)
: [[API C_Garrison.MarkMissionComplete|C_Garrison.MarkMissionComplete]](<span class="apiarg">missionID</span>)
: [[API C_Garrison.MissionBonusRoll|C_Garrison.MissionBonusRoll]](<span class="apiarg">missionID</span>)
: [[API C_Garrison.RecruitFollower|C_Garrison.RecruitFollower]](<span class="apiarg">followerIndex</span>)
: [[API C_Garrison.RemoveFollower|C_Garrison.RemoveFollower]](<span class="apiarg">dbID</span>)
: [[API C_Garrison.RemoveFollowerFromBuilding|C_Garrison.RemoveFollowerFromBuilding]]()
: [[API C_Garrison.RemoveFollowerFromMission|C_Garrison.RemoveFollowerFromMission]](<span class="apiarg">missionID, followerID [, boardIndex]</span>)
: [[API C_Garrison.RenameFollower|C_Garrison.RenameFollower]](<span class="apiarg">followerID, name</span>)
: [[API C_Garrison.RequestClassSpecCategoryInfo|C_Garrison.RequestClassSpecCategoryInfo]](<span class="apiarg">garrFollowerTypeID</span>)
: [[API C_Garrison.RushHealAllFollowers|C_Garrison.RushHealAllFollowers]](<span class="apiarg">followerType</span>)
: [[API C_Garrison.RushHealFollower|C_Garrison.RushHealFollower]](<span class="apiarg">garrFollowerID</span>)
: [[API C_Garrison.SearchForFollower|C_Garrison.SearchForFollower]](<span class="apiarg">guid|id, searchString</span>)
: [[API C_Garrison.SetFollowerFavorite|C_Garrison.SetFollowerFavorite]]()
: [[API C_Garrison.SetFollowerInactive|C_Garrison.SetFollowerInactive]](<span class="apiarg">followerID, inactive</span>)
: [[API C_Garrison.SetRecruitmentPreferences|C_Garrison.SetRecruitmentPreferences]](<span class="apiarg">mechanicTypeID, traitID</span>)
: [[API C_Garrison.ShowFollowerNameInErrorMessage|C_Garrison.ShowFollowerNameInErrorMessage]](<span class="apiarg">missionRecID</span>)
: [[API C_Garrison.StartMission|C_Garrison.StartMission]](<span class="apiarg">missionID</span>)
: [[API C_Garrison.TargetSpellHasFollowerItemLevelUpgrade|C_Garrison.TargetSpellHasFollowerItemLevelUpgrade]]()
: [[API C_Garrison.TargetSpellHasFollowerReroll|C_Garrison.TargetSpellHasFollowerReroll]]()
: [[API C_Garrison.TargetSpellHasFollowerTemporaryAbility|C_Garrison.TargetSpellHasFollowerTemporaryAbility]]()
: [[API ItemCanTargetGarrisonFollowerAbility|ItemCanTargetGarrisonFollowerAbility]]()
: [[API SpellCanTargetGarrisonFollowerAbility|SpellCanTargetGarrisonFollowerAbility]]()
: [[API SpellCanTargetGarrisonFollower|SpellCanTargetGarrisonFollower]]()
: [[API SpellCanTargetGarrisonMission|SpellCanTargetGarrisonMission]]()

===Auto Missions===
: [[API C_Garrison.GetAutoCombatDamageClassValues|C_Garrison.GetAutoCombatDamageClassValues]]() : <span class="apiret">damageClassStrings</span>
: [[API C_Garrison.GetAutoMissionBoardState|C_Garrison.GetAutoMissionBoardState]](<span class="apiarg">missionID</span>) : <span class="apiret">targetInfo</span>
: [[API C_Garrison.GetAutoMissionEnvironmentEffect|C_Garrison.GetAutoMissionEnvironmentEffect]](<span class="apiarg">missionID</span>) : <span class="apiret">autoMissionEnvEffect</span>
: [[API C_Garrison.GetAutoMissionTargetingInfo|C_Garrison.GetAutoMissionTargetingInfo]](<span class="apiarg">missionID, followerID, casterBoardIndex</span>) : <span class="apiret">targetInfo</span>
: [[API C_Garrison.GetAutoMissionTargetingInfoForSpell|C_Garrison.GetAutoMissionTargetingInfoForSpell]](<span class="apiarg">missionID, autoCombatSpellID, casterBoardIndex</span>) : <span class="apiret">targetInfo</span>
: [[API C_Garrison.GetAutoTroops|C_Garrison.GetAutoTroops]](<span class="apiarg">followerType</span>) : <span class="apiret">autoTroopInfo</span>
: [[API C_Garrison.GetCombatLogSpellInfo|C_Garrison.GetCombatLogSpellInfo]](<span class="apiarg">autoCombatSpellID</span>) : <span class="apiret">spellInfo</span>
: [[API C_Garrison.GetFollowerAutoCombatSpells|C_Garrison.GetFollowerAutoCombatSpells]](<span class="apiarg">garrFollowerID, followerLevel</span>) : <span class="apiret">autoCombatSpells, autoCombatAutoAttack</span>
: [[API C_Garrison.GetFollowerAutoCombatStats|C_Garrison.GetFollowerAutoCombatStats]](<span class="apiarg">garrFollowerID</span>) : <span class="apiret">autoCombatInfo</span>
: [[API C_Garrison.RegenerateCombatLog|C_Garrison.RegenerateCombatLog]](<span class="apiarg">missionID</span>) : <span class="apiret">success</span>
: [[API C_Garrison.SetAutoCombatSpellFastForward|C_Garrison.SetAutoCombatSpellFastForward]](<span class="apiarg">state</span>)

==Legion==
===Artifacts===
[[Artifact]]s were added in [[Patch 7.0.3]]
: [[API C_ArtifactUI.AddPower|C_ArtifactUI.AddPower]](<span class="apiarg">powerID</span>) : <span class="apiret">success</span>
: [[API C_ArtifactUI.ApplyCursorRelicToSlot|C_ArtifactUI.ApplyCursorRelicToSlot]](<span class="apiarg">relicSlotIndex</span>)
: [[API C_ArtifactUI.CanApplyArtifactRelic|C_ArtifactUI.CanApplyArtifactRelic]](<span class="apiarg">relicItemID, onlyUnlocked</span>) : <span class="apiret">canApply</span>
: [[API C_ArtifactUI.CanApplyCursorRelicToSlot|C_ArtifactUI.CanApplyCursorRelicToSlot]](<span class="apiarg">relicSlotIndex</span>) : <span class="apiret">canApply</span>
: [[API C_ArtifactUI.CanApplyRelicItemIDToEquippedArtifactSlot|C_ArtifactUI.CanApplyRelicItemIDToEquippedArtifactSlot]](<span class="apiarg">relicItemID, relicSlotIndex</span>) : <span class="apiret">canApply</span>
: [[API C_ArtifactUI.CanApplyRelicItemIDToSlot|C_ArtifactUI.CanApplyRelicItemIDToSlot]](<span class="apiarg">relicItemID, relicSlotIndex</span>) : <span class="apiret">canApply</span>
: [[API C_ArtifactUI.CheckRespecNPC|C_ArtifactUI.CheckRespecNPC]]() : <span class="apiret">canRespec</span>
: [[API C_ArtifactUI.Clear|C_ArtifactUI.Clear]]() - Clears data of the last opened artifact weapon.
: [[API C_ArtifactUI.ClearForgeCamera|C_ArtifactUI.ClearForgeCamera]]()
: [[API C_ArtifactUI.ConfirmRespec|C_ArtifactUI.ConfirmRespec]]()
: [[API C_ArtifactUI.DoesEquippedArtifactHaveAnyRelicsSlotted|C_ArtifactUI.DoesEquippedArtifactHaveAnyRelicsSlotted]]() : <span class="apiret">hasAnyRelicsSlotted</span>
: [[API C_ArtifactUI.GetAppearanceInfo|C_ArtifactUI.GetAppearanceInfo]](<span class="apiarg">appearanceSetIndex, appearanceIndex</span>) : <span class="apiret">artifactAppearanceID, appearanceName, displayIndex, unlocked, failureDescription, uiCameraID, altHandCameraID, swatchColorR, swatchColorG, swatchColorB, modelOpacity, modelSaturation, obtainable</span> - Returns information about a selected artifact appearance.
: [[API C_ArtifactUI.GetAppearanceInfoByID|C_ArtifactUI.GetAppearanceInfoByID]](<span class="apiarg">artifactAppearanceID</span>) : <span class="apiret">artifactAppearanceSetID, artifactAppearanceID, appearanceName, displayIndex, unlocked, failureDescription, uiCameraID, altHandCameraID, swatchColorR, swatchColorG, swatchColorB, modelOpacity, modelSaturation, obtainable</span> - Returns information about a selected artifact appearance.
: [[API C_ArtifactUI.GetAppearanceSetInfo|C_ArtifactUI.GetAppearanceSetInfo]](<span class="apiarg">appearanceSetIndex</span>) : <span class="apiret">artifactAppearanceSetID, appearanceSetName, appearanceSetDescription, numAppearances</span>
: [[API C_ArtifactUI.GetArtifactArtInfo|C_ArtifactUI.GetArtifactArtInfo]]() : <span class="apiret">artifactArtInfo</span> - Returns information about the currently equipped artifact weapon.
: [[API C_ArtifactUI.GetArtifactInfo|C_ArtifactUI.GetArtifactInfo]]() : <span class="apiret">itemID, altItemID, name, icon, xp, pointsSpent, quality, artifactAppearanceID, appearanceModID, itemAppearanceID, altItemAppearanceID, altOnTop, tier</span>
: [[API C_ArtifactUI.GetArtifactItemID|C_ArtifactUI.GetArtifactItemID]]() : <span class="apiret">itemID</span>
: [[API C_ArtifactUI.GetArtifactTier|C_ArtifactUI.GetArtifactTier]]() : <span class="apiret">tier</span>
: [[API C_ArtifactUI.GetArtifactXPRewardTargetInfo|C_ArtifactUI.GetArtifactXPRewardTargetInfo]](<span class="apiarg">artifactCategoryID</span>) : <span class="apiret">name, icon</span>
: [[API C_ArtifactUI.GetCostForPointAtRank|C_ArtifactUI.GetCostForPointAtRank]](<span class="apiarg">rank, tier</span>) : <span class="apiret">cost</span>
: [[API C_ArtifactUI.GetEquippedArtifactArtInfo|C_ArtifactUI.GetEquippedArtifactArtInfo]]() : <span class="apiret">artifactArtInfo</span>
: [[API C_ArtifactUI.GetEquippedArtifactInfo|C_ArtifactUI.GetEquippedArtifactInfo]]() : <span class="apiret">itemID, altItemID, name, icon, xp, pointsSpent, quality, artifactAppearanceID, appearanceModID, itemAppearanceID, altItemAppearanceID, altOnTop, tier</span>
: [[API C_ArtifactUI.GetEquippedArtifactItemID|C_ArtifactUI.GetEquippedArtifactItemID]]() : <span class="apiret">itemID</span>
: [[API C_ArtifactUI.GetEquippedArtifactNumRelicSlots|C_ArtifactUI.GetEquippedArtifactNumRelicSlots]](<span class="apiarg">[onlyUnlocked]</span>) : <span class="apiret">numRelicSlots</span>
: [[API C_ArtifactUI.GetEquippedArtifactRelicInfo|C_ArtifactUI.GetEquippedArtifactRelicInfo]](<span class="apiarg">relicSlotIndex</span>) : <span class="apiret">name, icon, slotTypeName, link</span>
: [[API C_ArtifactUI.GetEquippedRelicLockedReason|C_ArtifactUI.GetEquippedRelicLockedReason]](<span class="apiarg">relicSlotIndex</span>) : <span class="apiret">lockedReason</span>
: [[API C_ArtifactUI.GetForgeRotation|C_ArtifactUI.GetForgeRotation]]() : <span class="apiret">forgeRotationX, forgeRotationY, forgeRotationZ</span>
: [[API C_ArtifactUI.GetItemLevelIncreaseProvidedByRelic|C_ArtifactUI.GetItemLevelIncreaseProvidedByRelic]](<span class="apiarg">itemLinkOrID</span>) : <span class="apiret">itemIevelIncrease</span>
: [[API C_ArtifactUI.GetMetaPowerInfo|C_ArtifactUI.GetMetaPowerInfo]]() : <span class="apiret">spellID, powerCost, currentRank</span>
: [[API C_ArtifactUI.GetNumAppearanceSets|C_ArtifactUI.GetNumAppearanceSets]]() : <span class="apiret">numAppearanceSets</span>
: [[API C_ArtifactUI.GetNumObtainedArtifacts|C_ArtifactUI.GetNumObtainedArtifacts]]() : <span class="apiret">numObtainedArtifacts</span>
: [[API C_ArtifactUI.GetNumRelicSlots|C_ArtifactUI.GetNumRelicSlots]](<span class="apiarg">[onlyUnlocked]</span>) : <span class="apiret">numRelicSlots</span>
: [[API C_ArtifactUI.GetPointsRemaining|C_ArtifactUI.GetPointsRemaining]]() : <span class="apiret">pointsRemaining</span>
: [[API C_ArtifactUI.GetPowerHyperlink|C_ArtifactUI.GetPowerHyperlink]](<span class="apiarg">powerID</span>) : <span class="apiret">link</span>
: [[API C_ArtifactUI.GetPowerInfo|C_ArtifactUI.GetPowerInfo]](<span class="apiarg">powerID</span>) : <span class="apiret">powerInfo</span>
: [[API C_ArtifactUI.GetPowerLinks|C_ArtifactUI.GetPowerLinks]](<span class="apiarg">powerID</span>) : <span class="apiret">linkingPowerID</span>
: [[API C_ArtifactUI.GetPowers|C_ArtifactUI.GetPowers]]() : <span class="apiret">powerID</span>
: [[API C_ArtifactUI.GetPowersAffectedByRelic|C_ArtifactUI.GetPowersAffectedByRelic]](<span class="apiarg">relicSlotIndex</span>) : <span class="apiret">powerIDs</span>
: [[API C_ArtifactUI.GetPowersAffectedByRelicItemLink|C_ArtifactUI.GetPowersAffectedByRelicItemLink]](<span class="apiarg">relicItemInfo</span>) : <span class="apiret">powerIDs</span>
: [[API C_ArtifactUI.GetPreviewAppearance|C_ArtifactUI.GetPreviewAppearance]]() : <span class="apiret">artifactAppearanceID</span>
: [[API C_ArtifactUI.GetRelicInfo|C_ArtifactUI.GetRelicInfo]](<span class="apiarg">relicSlotIndex</span>) : <span class="apiret">name, icon, slotTypeName, link</span>
: [[API C_ArtifactUI.GetRelicInfoByItemID|C_ArtifactUI.GetRelicInfoByItemID]](<span class="apiarg">itemID</span>) : <span class="apiret">name, icon, slotTypeName, link</span>
: [[API C_ArtifactUI.GetRelicLockedReason|C_ArtifactUI.GetRelicLockedReason]](<span class="apiarg">relicSlotIndex</span>) : <span class="apiret">lockedReason</span>
: [[API C_ArtifactUI.GetRelicSlotType|C_ArtifactUI.GetRelicSlotType]](<span class="apiarg">relicSlotIndex</span>) : <span class="apiret">slotTypeName</span>
: [[API C_ArtifactUI.GetRespecArtifactArtInfo|C_ArtifactUI.GetRespecArtifactArtInfo]]() : <span class="apiret">artifactArtInfo</span>
: [[API C_ArtifactUI.GetRespecArtifactInfo|C_ArtifactUI.GetRespecArtifactInfo]]() : <span class="apiret">itemID, altItemID, name, icon, xp, pointsSpent, quality, artifactAppearanceID, appearanceModID, itemAppearanceID, altItemAppearanceID, altOnTop, tier</span>
: [[API C_ArtifactUI.GetRespecCost|C_ArtifactUI.GetRespecCost]]() : <span class="apiret">cost</span>
: [[API C_ArtifactUI.GetTotalPowerCost|C_ArtifactUI.GetTotalPowerCost]](<span class="apiarg">startingTrait, numTraits, artifactTier</span>) : <span class="apiret">totalArtifactPowerCost</span>
: [[API C_ArtifactUI.GetTotalPurchasedRanks|C_ArtifactUI.GetTotalPurchasedRanks]]() : <span class="apiret">totalPurchasedRanks</span>
: [[API C_ArtifactUI.IsArtifactDisabled|C_ArtifactUI.IsArtifactDisabled]]() : <span class="apiret">artifactDisabled</span>
: [[API C_ArtifactUI.IsArtifactItem|C_ArtifactUI.IsArtifactItem]](<span class="apiarg">itemLocation</span>) : <span class="apiret">isArtifact</span>
: [[API C_ArtifactUI.IsAtForge|C_ArtifactUI.IsAtForge]]() : <span class="apiret">isAtForge</span>
: [[API C_ArtifactUI.IsEquippedArtifactDisabled|C_ArtifactUI.IsEquippedArtifactDisabled]]() : <span class="apiret">artifactDisabled</span>
: [[API C_ArtifactUI.IsEquippedArtifactMaxed|C_ArtifactUI.IsEquippedArtifactMaxed]]() : <span class="apiret">artifactMaxed</span>
: [[API C_ArtifactUI.IsMaxedByRulesOrEffect|C_ArtifactUI.IsMaxedByRulesOrEffect]]() : <span class="apiret">isEffectivelyMaxed</span>
: [[API C_ArtifactUI.IsPowerKnown|C_ArtifactUI.IsPowerKnown]](<span class="apiarg">powerID</span>) : <span class="apiret">known</span>
: [[API C_ArtifactUI.IsViewedArtifactEquipped|C_ArtifactUI.IsViewedArtifactEquipped]]() : <span class="apiret">isViewedArtifactEquipped</span>
: [[API C_ArtifactUI.SetAppearance|C_ArtifactUI.SetAppearance]](<span class="apiarg">artifactAppearanceID</span>)
: [[API C_ArtifactUI.SetForgeCamera|C_ArtifactUI.SetForgeCamera]]()
: [[API C_ArtifactUI.SetForgeRotation|C_ArtifactUI.SetForgeRotation]](<span class="apiarg">forgeRotationX, forgeRotationY, forgeRotationZ</span>)
: [[API C_ArtifactUI.SetPreviewAppearance|C_ArtifactUI.SetPreviewAppearance]](<span class="apiarg">[artifactAppearanceID]</span>)
: [[API C_ArtifactUI.ShouldSuppressForgeRotation|C_ArtifactUI.ShouldSuppressForgeRotation]]() : <span class="apiret">shouldSuppressForgeRotation</span>
: [[API HasArtifactEquipped|HasArtifactEquipped]]()
: [[API IsArtifactRelicItem|IsArtifactRelicItem]](<span class="apiarg">item</span>)

===Invasions===
[[Legion Invasions|Invasions]] were added in [[Patch 7.0.3]]
: [[API C_InvasionInfo.AreInvasionsAvailable|C_InvasionInfo.AreInvasionsAvailable]]() : <span class="apiret">areInvasionsAvailable</span> - Returns true if invasions are active in the same physical area as the player.
: [[API C_InvasionInfo.GetInvasionForUiMapID|C_InvasionInfo.GetInvasionForUiMapID]](<span class="apiarg">uiMapID</span>) : <span class="apiret">invasionID</span> - Returns any invasion for a map.
: [[API C_InvasionInfo.GetInvasionInfo|C_InvasionInfo.GetInvasionInfo]](<span class="apiarg">invasionID</span>) : <span class="apiret">invasionInfo</span> - Returns invasion info.
: [[API C_InvasionInfo.GetInvasionTimeLeft|C_InvasionInfo.GetInvasionTimeLeft]](<span class="apiarg">invasionID</span>) : <span class="apiret">timeLeftMinutes</span> - Returns the time left for an invasion.

===Contribution===
Relates to buildings on the [[Broken Shore]] or [[Warfront|Warfronts]]; added in [[Patch 7.2.0]].
: [[API C_ContributionCollector.Close|C_ContributionCollector.Close]]() - Closes the contribution collector API state.
: [[API C_ContributionCollector.Contribute|C_ContributionCollector.Contribute]](<span class="apiarg">contributionID</span>) - Contributes resources to a building.
: [[API C_ContributionCollector.GetActive|C_ContributionCollector.GetActive]]() : <span class="apiret">contributionID</span> - Returns the currently active buildings.
: [[API C_ContributionCollector.GetAtlases|C_ContributionCollector.GetAtlases]](<span class="apiarg">contributionID</span>) : <span class="apiret">atlasName</span> - Returns a table listing the possible states for a building.
: [[API C_ContributionCollector.GetBuffs|C_ContributionCollector.GetBuffs]](<span class="apiarg">contributionID</span>) : <span class="apiret">spellID</span> - Returns the buffs provided by a building (e.g. in a [[Warfront]]).
: [[API C_ContributionCollector.GetContributionAppearance|C_ContributionCollector.GetContributionAppearance]](<span class="apiarg">contributionID, contributionState</span>) : <span class="apiret">appearance</span> - Returns contribution appearance info.
: [[API C_ContributionCollector.GetContributionCollectorsForMap|C_ContributionCollector.GetContributionCollectorsForMap]](<span class="apiarg">uiMapID</span>) : <span class="apiret">contributionCollectors</span> - Returns contribution buildings on a map.
: [[API C_ContributionCollector.GetContributionResult|C_ContributionCollector.GetContributionResult]](<span class="apiarg">contributionID</span>) : <span class="apiret">result</span> - Returns a value indicating the result of a contribution.
: [[API C_ContributionCollector.GetDescription|C_ContributionCollector.GetDescription]](<span class="apiarg">contributionID</span>) : <span class="apiret">description</span> - Returns the description of a building.
: [[API C_ContributionCollector.GetManagedContributionsForCreatureID|C_ContributionCollector.GetManagedContributionsForCreatureID]](<span class="apiarg">creatureID</span>) : <span class="apiret">contributionID</span> - Returns contributions for a creature.
: [[API C_ContributionCollector.GetName|C_ContributionCollector.GetName]](<span class="apiarg">contributionID</span>) : <span class="apiret">name</span> - Returns the name of a building.
: [[API C_ContributionCollector.GetOrderIndex|C_ContributionCollector.GetOrderIndex]](<span class="apiarg">contributionID</span>) : <span class="apiret">orderIndex</span> - Returns the order in which buildings are displayed.
: [[API C_ContributionCollector.GetRequiredContributionCurrency|C_ContributionCollector.GetRequiredContributionCurrency]](<span class="apiarg">contributionID</span>) : <span class="apiret">currencyID, currencyAmount</span> - Returns the currencyID and amount needed to contribute to a building.
: [[API C_ContributionCollector.GetRequiredContributionItem|C_ContributionCollector.GetRequiredContributionItem]](<span class="apiarg">contributionID</span>) : <span class="apiret">itemID, itemCount</span> - Returns the itemID and amount needed to contribute to a building.
: [[API C_ContributionCollector.GetRewardQuestID|C_ContributionCollector.GetRewardQuestID]](<span class="apiarg">contributionID</span>) : <span class="apiret">questID</span> - Returns the hidden quest that is flagged completed when a contribution is made.
: [[API C_ContributionCollector.GetState|C_ContributionCollector.GetState]](<span class="apiarg">contributionID</span>) : <span class="apiret">contributionState, contributionPercentageComplete, timeOfNextStateChange, startTime</span> - Returns the current state of a building, its completion percentage, and time until next state change.
: [[API C_ContributionCollector.HasPendingContribution|C_ContributionCollector.HasPendingContribution]](<span class="apiarg">contributionID</span>) : <span class="apiret">hasPending</span> - Returns whether there is a pending contribution.
: [[API C_ContributionCollector.IsAwaitingRewardQuestData|C_ContributionCollector.IsAwaitingRewardQuestData]](<span class="apiarg">contributionID</span>) : <span class="apiret">awaitingData</span> - Returns true if the client is waiting for quest reward data.

==Battle for Azeroth==
===Azerite===
[[:Azerite]] was added in [[Patch 8.0.1]]
: [[API C_AzeriteItem.FindActiveAzeriteItem|C_AzeriteItem.FindActiveAzeriteItem]]() : <span class="apiret">activeAzeriteItemLocation</span>
: [[API C_AzeriteItem.GetAzeriteItemXPInfo|C_AzeriteItem.GetAzeriteItemXPInfo]](<span class="apiarg">azeriteItemLocation</span>) : <span class="apiret">xp, totalLevelXP</span>
: [[API C_AzeriteItem.GetPowerLevel|C_AzeriteItem.GetPowerLevel]](<span class="apiarg">azeriteItemLocation</span>) : <span class="apiret">powerLevel</span>
: [[API C_AzeriteItem.GetUnlimitedPowerLevel|C_AzeriteItem.GetUnlimitedPowerLevel]](<span class="apiarg">azeriteItemLocation</span>) : <span class="apiret">powerLevel</span>
: [[API C_AzeriteItem.HasActiveAzeriteItem|C_AzeriteItem.HasActiveAzeriteItem]]() : <span class="apiret">hasActiveAzeriteItem</span>
: [[API C_AzeriteItem.IsAzeriteItem|C_AzeriteItem.IsAzeriteItem]](<span class="apiarg">itemLocation</span>) : <span class="apiret">isAzeriteItem</span>
: [[API C_AzeriteItem.IsAzeriteItemAtMaxLevel|C_AzeriteItem.IsAzeriteItemAtMaxLevel]]() : <span class="apiret">isAtMax</span>
: [[API C_AzeriteItem.IsAzeriteItemByID|C_AzeriteItem.IsAzeriteItemByID]](<span class="apiarg">itemInfo</span>) : <span class="apiret">isAzeriteItem</span>
: [[API C_AzeriteItem.IsAzeriteItemEnabled|C_AzeriteItem.IsAzeriteItemEnabled]](<span class="apiarg">azeriteItemLocation</span>) : <span class="apiret">isEnabled</span>
: [[API C_AzeriteItem.IsUnlimitedLevelingUnlocked|C_AzeriteItem.IsUnlimitedLevelingUnlocked]]() : <span class="apiret">isUnlimitedLevelingUnlocked</span>
: [[API C_AzeriteEmpoweredItem.CanSelectPower|C_AzeriteEmpoweredItem.CanSelectPower]](<span class="apiarg">azeriteEmpoweredItemLocation, powerID</span>) : <span class="apiret">canSelect</span>
: [[API C_AzeriteEmpoweredItem.ConfirmAzeriteEmpoweredItemRespec|C_AzeriteEmpoweredItem.ConfirmAzeriteEmpoweredItemRespec]](<span class="apiarg">azeriteEmpoweredItemLocation</span>)
: [[API C_AzeriteEmpoweredItem.GetAllTierInfo|C_AzeriteEmpoweredItem.GetAllTierInfo]](<span class="apiarg">azeriteEmpoweredItemLocation</span>) : <span class="apiret">tierInfo</span>
: [[API C_AzeriteEmpoweredItem.GetAllTierInfoByItemID|C_AzeriteEmpoweredItem.GetAllTierInfoByItemID]](<span class="apiarg">itemInfo [, classID]</span>) : <span class="apiret">tierInfo</span>
: [[API C_AzeriteEmpoweredItem.GetAzeriteEmpoweredItemRespecCost|C_AzeriteEmpoweredItem.GetAzeriteEmpoweredItemRespecCost]]() : <span class="apiret">cost</span>
: [[API C_AzeriteEmpoweredItem.GetPowerInfo|C_AzeriteEmpoweredItem.GetPowerInfo]](<span class="apiarg">powerID</span>) : <span class="apiret">powerInfo</span>
: [[API C_AzeriteEmpoweredItem.GetPowerText|C_AzeriteEmpoweredItem.GetPowerText]](<span class="apiarg">azeriteEmpoweredItemLocation, powerID, level</span>) : <span class="apiret">powerText</span>
: [[API C_AzeriteEmpoweredItem.GetSpecsForPower|C_AzeriteEmpoweredItem.GetSpecsForPower]](<span class="apiarg">powerID</span>) : <span class="apiret">specInfo</span>
: [[API C_AzeriteEmpoweredItem.HasAnyUnselectedPowers|C_AzeriteEmpoweredItem.HasAnyUnselectedPowers]](<span class="apiarg">azeriteEmpoweredItemLocation</span>) : <span class="apiret">hasAnyUnselectedPowers</span>
: [[API C_AzeriteEmpoweredItem.HasBeenViewed|C_AzeriteEmpoweredItem.HasBeenViewed]](<span class="apiarg">azeriteEmpoweredItemLocation</span>) : <span class="apiret">hasBeenViewed</span>
: [[API C_AzeriteEmpoweredItem.IsAzeriteEmpoweredItem|C_AzeriteEmpoweredItem.IsAzeriteEmpoweredItem]](<span class="apiarg">itemLocation</span>) : <span class="apiret">isAzeriteEmpoweredItem</span>
: [[API C_AzeriteEmpoweredItem.IsAzeriteEmpoweredItemByID|C_AzeriteEmpoweredItem.IsAzeriteEmpoweredItemByID]](<span class="apiarg">itemInfo</span>) : <span class="apiret">isAzeriteEmpoweredItem</span>
: [[API C_AzeriteEmpoweredItem.IsAzeritePreviewSourceDisplayable|C_AzeriteEmpoweredItem.IsAzeritePreviewSourceDisplayable]](<span class="apiarg">itemInfo [, classID]</span>) : <span class="apiret">isAzeritePreviewSourceDisplayable</span>
: [[API C_AzeriteEmpoweredItem.IsHeartOfAzerothEquipped|C_AzeriteEmpoweredItem.IsHeartOfAzerothEquipped]]() : <span class="apiret">isHeartOfAzerothEquipped</span>
: [[API C_AzeriteEmpoweredItem.IsPowerAvailableForSpec|C_AzeriteEmpoweredItem.IsPowerAvailableForSpec]](<span class="apiarg">powerID, specID</span>) : <span class="apiret">isPowerAvailableForSpec</span>
: [[API C_AzeriteEmpoweredItem.IsPowerSelected|C_AzeriteEmpoweredItem.IsPowerSelected]](<span class="apiarg">azeriteEmpoweredItemLocation, powerID</span>) : <span class="apiret">isSelected</span>
: [[API C_AzeriteEmpoweredItem.SelectPower|C_AzeriteEmpoweredItem.SelectPower]](<span class="apiarg">azeriteEmpoweredItemLocation, powerID</span>) : <span class="apiret">success</span>
: [[API C_AzeriteEmpoweredItem.SetHasBeenViewed|C_AzeriteEmpoweredItem.SetHasBeenViewed]](<span class="apiarg">azeriteEmpoweredItemLocation</span>)
: [[API C_PaperDollInfo.GetInspectAzeriteItemEmpoweredChoices|C_PaperDollInfo.GetInspectAzeriteItemEmpoweredChoices]](<span class="apiarg">unit, equipmentSlotIndex</span>) : <span class="apiret">azeritePowerIDs</span>
Azerite Essences were added in [[Patch 8.2.0]]
: [[API C_AzeriteEssence.ActivateEssence|C_AzeriteEssence.ActivateEssence]](<span class="apiarg">essenceID, milestoneID</span>)
: [[API C_AzeriteEssence.CanActivateEssence|C_AzeriteEssence.CanActivateEssence]](<span class="apiarg">essenceID, milestoneID</span>) : <span class="apiret">canActivate</span>
: [[API C_AzeriteEssence.CanDeactivateEssence|C_AzeriteEssence.CanDeactivateEssence]](<span class="apiarg">milestoneID</span>) : <span class="apiret">canDeactivate</span>
: [[API C_AzeriteEssence.CanOpenUI|C_AzeriteEssence.CanOpenUI]]() : <span class="apiret">canOpen</span>
: [[API C_AzeriteEssence.ClearPendingActivationEssence|C_AzeriteEssence.ClearPendingActivationEssence]]()
: [[API C_AzeriteEssence.CloseForge|C_AzeriteEssence.CloseForge]]()
: [[API C_AzeriteEssence.GetEssenceHyperlink|C_AzeriteEssence.GetEssenceHyperlink]](<span class="apiarg">essenceID, rank</span>) : <span class="apiret">link</span>
: [[API C_AzeriteEssence.GetEssenceInfo|C_AzeriteEssence.GetEssenceInfo]](<span class="apiarg">essenceID</span>) : <span class="apiret">info</span>
: [[API C_AzeriteEssence.GetEssences|C_AzeriteEssence.GetEssences]]() : <span class="apiret">essences</span>
: [[API C_AzeriteEssence.GetMilestoneEssence|C_AzeriteEssence.GetMilestoneEssence]](<span class="apiarg">milestoneID</span>) : <span class="apiret">essenceID</span>
: [[API C_AzeriteEssence.GetMilestoneInfo|C_AzeriteEssence.GetMilestoneInfo]](<span class="apiarg">milestoneID</span>) : <span class="apiret">info</span>
: [[API C_AzeriteEssence.GetMilestones|C_AzeriteEssence.GetMilestones]]() : <span class="apiret">milestones</span>
: [[API C_AzeriteEssence.GetMilestoneSpell|C_AzeriteEssence.GetMilestoneSpell]](<span class="apiarg">milestoneID</span>) : <span class="apiret">spellID</span>
: [[API C_AzeriteEssence.GetNumUnlockedEssences|C_AzeriteEssence.GetNumUnlockedEssences]]() : <span class="apiret">numUnlockedEssences</span>
: [[API C_AzeriteEssence.GetNumUsableEssences|C_AzeriteEssence.GetNumUsableEssences]]() : <span class="apiret">numUsableEssences</span>
: [[API C_AzeriteEssence.GetPendingActivationEssence|C_AzeriteEssence.GetPendingActivationEssence]]() : <span class="apiret">essenceID</span>
: [[API C_AzeriteEssence.HasNeverActivatedAnyEssences|C_AzeriteEssence.HasNeverActivatedAnyEssences]]() : <span class="apiret">hasNeverActivatedAnyEssences</span>
: [[API C_AzeriteEssence.HasPendingActivationEssence|C_AzeriteEssence.HasPendingActivationEssence]]() : <span class="apiret">hasEssence</span>
: [[API C_AzeriteEssence.IsAtForge|C_AzeriteEssence.IsAtForge]]() : <span class="apiret">isAtForge</span>
: [[API C_AzeriteEssence.SetPendingActivationEssence|C_AzeriteEssence.SetPendingActivationEssence]](<span class="apiarg">essenceID</span>)
: [[API C_AzeriteEssence.UnlockMilestone|C_AzeriteEssence.UnlockMilestone]](<span class="apiarg">milestoneID</span>)

===Corruption===
[[Corrupted item]]s were added in [[Patch 8.3.0]]
: [[API C_Item.IsItemCorrupted|C_Item.IsItemCorrupted]](<span class="apiarg">itemLoc</span>) : <span class="apiret">isCorrupted</span>
: [[API C_Item.IsItemCorruptionRelated|C_Item.IsItemCorruptionRelated]](<span class="apiarg">itemLoc</span>) : <span class="apiret">isCorruptionRelated</span>
: [[API C_Item.IsItemCorruptionResistant|C_Item.IsItemCorruptionResistant]](<span class="apiarg">itemLoc</span>) : <span class="apiret">isCorruptionResistant</span>
: [[API GetCorruption|GetCorruption]]() : <span class="apiret">result</span>
: [[API GetCorruptionResistance|GetCorruptionResistance]]() : <span class="apiret">result</span>
: [[API GetNegativeCorruptionEffectInfo|GetNegativeCorruptionEffectInfo]]() : <span class="apiret">corruptionEffects</span>

===Island Expeditions===
[[Island Expeditions]] were added in [[Patch 8.0.1]]
: [[API C_IslandsQueue.CloseIslandsQueueScreen|C_IslandsQueue.CloseIslandsQueueScreen]]() - Closes the islands queue screen.
: [[API C_IslandsQueue.GetIslandDifficultyInfo|C_IslandsQueue.GetIslandDifficultyInfo]]() : <span class="apiret">islandDifficultyInfo</span> - Returns the island expedition modes.
: [[API C_IslandsQueue.GetIslandsMaxGroupSize|C_IslandsQueue.GetIslandsMaxGroupSize]]() : <span class="apiret">maxGroupSize</span> - Returns the max group size for expeditions.
: [[API C_IslandsQueue.GetIslandsWeeklyQuestID|C_IslandsQueue.GetIslandsWeeklyQuestID]]() : <span class="apiret">questID</span> - Returns the weekly island quest.
: [[API C_IslandsQueue.QueueForIsland|C_IslandsQueue.QueueForIsland]](<span class="apiarg">difficultyID</span>) - Queues for an island expedition.
: [[API C_IslandsQueue.RequestPreloadRewardData|C_IslandsQueue.RequestPreloadRewardData]](<span class="apiarg">questId</span>) - Preloads reward data for a quest id.
: [[API ShouldShowIslandsWeeklyPOI|ShouldShowIslandsWeeklyPOI]]() : <span class="apiret">result</span>

===Scrapping Machine===
The [[Scrapper]] was added in [[Patch 8.0.1]]
: [[API C_Item.CanScrapItem|C_Item.CanScrapItem]](<span class="apiarg">itemLoc</span>) : <span class="apiret">canBeScrapped</span>
: [[API C_ScrappingMachineUI.CloseScrappingMachine|C_ScrappingMachineUI.CloseScrappingMachine]]()
: [[API C_ScrappingMachineUI.DropPendingScrapItemFromCursor|C_ScrappingMachineUI.DropPendingScrapItemFromCursor]](<span class="apiarg">index</span>)
: [[API C_ScrappingMachineUI.GetCurrentPendingScrapItemLocationByIndex|C_ScrappingMachineUI.GetCurrentPendingScrapItemLocationByIndex]](<span class="apiarg">index</span>) : <span class="apiret">itemLoc</span>
: [[API C_ScrappingMachineUI.GetScrapSpellID|C_ScrappingMachineUI.GetScrapSpellID]]() : <span class="apiret">spellID</span>
: [[API C_ScrappingMachineUI.GetScrappingMachineName|C_ScrappingMachineUI.GetScrappingMachineName]]() : <span class="apiret">name</span>
: [[API C_ScrappingMachineUI.HasScrappableItems|C_ScrappingMachineUI.HasScrappableItems]]() : <span class="apiret">hasScrappableItems</span>
: [[API C_ScrappingMachineUI.RemoveAllScrapItems|C_ScrappingMachineUI.RemoveAllScrapItems]]()
: [[API C_ScrappingMachineUI.RemoveCurrentScrappingItem|C_ScrappingMachineUI.RemoveCurrentScrappingItem]]()
: [[API C_ScrappingMachineUI.RemoveItemToScrap|C_ScrappingMachineUI.RemoveItemToScrap]](<span class="apiarg">index</span>)
: [[API C_ScrappingMachineUI.ScrapItems|C_ScrappingMachineUI.ScrapItems]]()
: [[API C_ScrappingMachineUI.ValidateScrappingList|C_ScrappingMachineUI.ValidateScrappingList]]()

==Shadowlands==
Ardenweald
: [[API C_ArdenwealdGardening.GetGardenData|C_ArdenwealdGardening.GetGardenData]]() : <span class="apiret">data</span>
: [[API C_ArdenwealdGardening.IsGardenAccessible|C_ArdenwealdGardening.IsGardenAccessible]]() : <span class="apiret">accessible</span>
The Maw
: [[API C_Spell.GetMawPowerBorderAtlasBySpellID|C_Spell.GetMawPowerBorderAtlasBySpellID]](<span class="apiarg">spellID</span>) : <span class="apiret">rarityBorderAtlas</span>
Torghast
: [[API C_PartyInfo.IsPartyInJailersTower|C_PartyInfo.IsPartyInJailersTower]]() : <span class="apiret">isPartyInJailersTower</span>
: [[API C_ScenarioInfo.GetJailersTowerTypeString|C_ScenarioInfo.GetJailersTowerTypeString]](<span class="apiarg">runType</span>) : <span class="apiret">typeString</span>
: [[API GetJailersTowerLevel|GetJailersTowerLevel]]() : <span class="apiret">result</span>
: [[API IsInJailersTower|IsInJailersTower]]() : <span class="apiret">result</span>
: [[API IsJailersTowerLayerTimeLocked|IsJailersTowerLayerTimeLocked]](<span class="apiarg">layerLevel</span>) : <span class="apiret">result</span>
: [[API IsOnGroundFloorInJailersTower|IsOnGroundFloorInJailersTower]]() : <span class="apiret">result</span>

===Anima===
[[:Anima]] was added in [[Patch 9.0.1]]
: [[API C_AnimaDiversion.CloseUI|C_AnimaDiversion.CloseUI]]()
: [[API C_AnimaDiversion.GetAnimaDiversionNodes|C_AnimaDiversion.GetAnimaDiversionNodes]]() : <span class="apiret">animaNodes</span>
: [[API C_AnimaDiversion.GetOriginPosition|C_AnimaDiversion.GetOriginPosition]]() : <span class="apiret">normalizedPosition</span>
: [[API C_AnimaDiversion.GetReinforceProgress|C_AnimaDiversion.GetReinforceProgress]]() : <span class="apiret">progress</span>
: [[API C_AnimaDiversion.GetTextureKit|C_AnimaDiversion.GetTextureKit]]() : <span class="apiret">textureKit</span>
: [[API C_AnimaDiversion.OpenAnimaDiversionUI|C_AnimaDiversion.OpenAnimaDiversionUI]]()
: [[API C_AnimaDiversion.SelectAnimaNode|C_AnimaDiversion.SelectAnimaNode]](<span class="apiarg">talentID, temporary</span>)
: [[API C_Item.IsAnimaItemByID|C_Item.IsAnimaItemByID]](<span class="apiarg">itemInfo</span>) : <span class="apiret">isAnimaItem</span>

===Covenants===
[[Covenant]]s were added in [[Patch 9.0.1]]
: [[API C_Covenants.GetActiveCovenantID|C_Covenants.GetActiveCovenantID]]() : <span class="apiret">covenantID</span>
: [[API C_Covenants.GetCovenantData|C_Covenants.GetCovenantData]](<span class="apiarg">covenantID</span>) : <span class="apiret">data</span>
: [[API C_Covenants.GetCovenantIDs|C_Covenants.GetCovenantIDs]]() : <span class="apiret">covenantID</span>
: [[API C_CovenantCallings.AreCallingsUnlocked|C_CovenantCallings.AreCallingsUnlocked]]() : <span class="apiret">unlocked</span>
: [[API C_CovenantCallings.RequestCallings|C_CovenantCallings.RequestCallings]]()
: [[API C_CovenantPreview.CloseFromUI|C_CovenantPreview.CloseFromUI]]()
: [[API C_CovenantPreview.GetCovenantInfoForPlayerChoiceResponseID|C_CovenantPreview.GetCovenantInfoForPlayerChoiceResponseID]](<span class="apiarg">playerChoiceResponseID</span>) : <span class="apiret">previewInfo</span>
: [[API C_CovenantSanctumUI.CanAccessReservoir|C_CovenantSanctumUI.CanAccessReservoir]]() : <span class="apiret">canAccess</span>
: [[API C_CovenantSanctumUI.CanDepositAnima|C_CovenantSanctumUI.CanDepositAnima]]() : <span class="apiret">canDeposit</span>
: [[API C_CovenantSanctumUI.DepositAnima|C_CovenantSanctumUI.DepositAnima]]() {{apitag|protected}}
: [[API C_CovenantSanctumUI.EndInteraction|C_CovenantSanctumUI.EndInteraction]]()
: [[API C_CovenantSanctumUI.GetAnimaInfo|C_CovenantSanctumUI.GetAnimaInfo]]() : <span class="apiret">currencyID, maxDisplayableValue</span>
: [[API C_CovenantSanctumUI.GetCurrentTalentTreeID|C_CovenantSanctumUI.GetCurrentTalentTreeID]]() : <span class="apiret">currentTalentTreeID</span>
: [[API C_CovenantSanctumUI.GetFeatures|C_CovenantSanctumUI.GetFeatures]]() : <span class="apiret">features</span>
: [[API C_CovenantSanctumUI.GetRenownLevel|C_CovenantSanctumUI.GetRenownLevel]]() : <span class="apiret">level</span>
: [[API C_CovenantSanctumUI.GetRenownLevels|C_CovenantSanctumUI.GetRenownLevels]](<span class="apiarg">covenantID</span>) : <span class="apiret">levels</span>
: [[API C_CovenantSanctumUI.GetRenownRewardsForLevel|C_CovenantSanctumUI.GetRenownRewardsForLevel]](<span class="apiarg">covenantID, renownLevel</span>) : <span class="apiret">rewards</span>
: [[API C_CovenantSanctumUI.GetSanctumType|C_CovenantSanctumUI.GetSanctumType]]() : <span class="apiret">sanctumType</span>
: [[API C_CovenantSanctumUI.GetSoulCurrencies|C_CovenantSanctumUI.GetSoulCurrencies]]() : <span class="apiret">currencyIDs</span>
: [[API C_CovenantSanctumUI.HasMaximumRenown|C_CovenantSanctumUI.HasMaximumRenown]]() : <span class="apiret">hasMaxRenown</span>
: [[API C_CovenantSanctumUI.IsPlayerInRenownCatchUpMode|C_CovenantSanctumUI.IsPlayerInRenownCatchUpMode]]() : <span class="apiret">isInCatchUpMode</span>
: [[API C_CovenantSanctumUI.IsWeeklyRenownCapped|C_CovenantSanctumUI.IsWeeklyRenownCapped]]() : <span class="apiret">isWeeklyCapped</span>
: [[API C_CovenantSanctumUI.RequestCatchUpState|C_CovenantSanctumUI.RequestCatchUpState]]()

===Legendary Crafting===
Shadowlands legendaries can be crafted in the [[Forge of Domination]].
: [[API C_LegendaryCrafting.CloseRuneforgeInteraction|C_LegendaryCrafting.CloseRuneforgeInteraction]]()
: [[API C_LegendaryCrafting.CraftRuneforgeLegendary|C_LegendaryCrafting.CraftRuneforgeLegendary]](<span class="apiarg">description</span>)
: [[API C_LegendaryCrafting.GetRuneforgeItemPreviewInfo|C_LegendaryCrafting.GetRuneforgeItemPreviewInfo]](<span class="apiarg">baseItem [, runeforgePowerID [, modifiers]]</span>) : <span class="apiret">info</span>
: [[API C_LegendaryCrafting.GetRuneforgeLegendaryComponentInfo|C_LegendaryCrafting.GetRuneforgeLegendaryComponentInfo]](<span class="apiarg">runeforgeLegendary</span>) : <span class="apiret">componentInfo</span>
: [[API C_LegendaryCrafting.GetRuneforgeLegendaryCost|C_LegendaryCrafting.GetRuneforgeLegendaryCost]](<span class="apiarg">baseItem</span>) : <span class="apiret">cost</span>
: [[API C_LegendaryCrafting.GetRuneforgeLegendaryCraftSpellID|C_LegendaryCrafting.GetRuneforgeLegendaryCraftSpellID]]() : <span class="apiret">spellID</span>
: [[API C_LegendaryCrafting.GetRuneforgeLegendaryCurrencies|C_LegendaryCrafting.GetRuneforgeLegendaryCurrencies]]() : <span class="apiret">currencies</span>
: [[API C_LegendaryCrafting.GetRuneforgeLegendaryUpgradeCost|C_LegendaryCrafting.GetRuneforgeLegendaryUpgradeCost]](<span class="apiarg">runeforgeLegendary, upgradeItem</span>) : <span class="apiret">cost</span>
: [[API C_LegendaryCrafting.GetRuneforgeModifierInfo|C_LegendaryCrafting.GetRuneforgeModifierInfo]](<span class="apiarg">baseItem, powerID?, addedModifierIndex, modifiers</span>) : <span class="apiret">name, description</span>
: [[API C_LegendaryCrafting.GetRuneforgeModifiers|C_LegendaryCrafting.GetRuneforgeModifiers]]() : <span class="apiret">modifiedReagentItemIDs</span>
: [[API C_LegendaryCrafting.GetRuneforgePowerInfo|C_LegendaryCrafting.GetRuneforgePowerInfo]](<span class="apiarg">runeforgePowerID</span>) : <span class="apiret">power</span>
: [[API C_LegendaryCrafting.GetRuneforgePowers|C_LegendaryCrafting.GetRuneforgePowers]](<span class="apiarg">[baseItem [, filter]]</span>) : <span class="apiret">primaryRuneforgePowerIDs, otherRuneforgePowerIDs</span>
: [[API C_LegendaryCrafting.GetRuneforgePowersByClassSpecAndCovenant|C_LegendaryCrafting.GetRuneforgePowersByClassSpecAndCovenant]](<span class="apiarg">[classID [, specID [, covenantID [, filter]]]]</span>) : <span class="apiret">runeforgePowerIDs</span>
: [[API C_LegendaryCrafting.GetRuneforgePowerSlots|C_LegendaryCrafting.GetRuneforgePowerSlots]](<span class="apiarg">runeforgePowerID</span>) : <span class="apiret">slotNames</span>
: [[API C_LegendaryCrafting.IsRuneforgeLegendary|C_LegendaryCrafting.IsRuneforgeLegendary]](<span class="apiarg">item</span>) : <span class="apiret">isRuneforgeLegendary</span>
: [[API C_LegendaryCrafting.IsRuneforgeLegendaryMaxLevel|C_LegendaryCrafting.IsRuneforgeLegendaryMaxLevel]](<span class="apiarg">runeforgeLegendary</span>) : <span class="apiret">isMaxLevel</span>
: [[API C_LegendaryCrafting.IsUpgradeItemValidForRuneforgeLegendary|C_LegendaryCrafting.IsUpgradeItemValidForRuneforgeLegendary]](<span class="apiarg">runeforgeLegendary, upgradeItem</span>) : <span class="apiret">isValid</span>
: [[API C_LegendaryCrafting.IsValidRuneforgeBaseItem|C_LegendaryCrafting.IsValidRuneforgeBaseItem]](<span class="apiarg">baseItem</span>) : <span class="apiret">isValid</span>
: [[API C_LegendaryCrafting.MakeRuneforgeCraftDescription|C_LegendaryCrafting.MakeRuneforgeCraftDescription]](<span class="apiarg">baseItem, runeforgePowerID, modifiers</span>) : <span class="apiret">description</span>
: [[API C_LegendaryCrafting.UpgradeRuneforgeLegendary|C_LegendaryCrafting.UpgradeRuneforgeLegendary]](<span class="apiarg">runeforgeLegendary, upgradeItem</span>)

===Soulbinds===
Relates to [[Soulbinding]] and [[Conduit]]s.
: [[API C_Soulbinds.ActivateSoulbind|C_Soulbinds.ActivateSoulbind]](<span class="apiarg">soulbindID</span>)
: [[API C_Soulbinds.CanActivateSoulbind|C_Soulbinds.CanActivateSoulbind]](<span class="apiarg">soulbindID</span>) : <span class="apiret">result, errorDescription</span>
: [[API C_Soulbinds.CanModifySoulbind|C_Soulbinds.CanModifySoulbind]]() : <span class="apiret">result</span>
: [[API C_Soulbinds.CanResetConduitsInSoulbind|C_Soulbinds.CanResetConduitsInSoulbind]](<span class="apiarg">soulbindID</span>) : <span class="apiret">result, errorDescription</span>
: [[API C_Soulbinds.CanSwitchActiveSoulbindTreeBranch|C_Soulbinds.CanSwitchActiveSoulbindTreeBranch]]() : <span class="apiret">result</span>
: [[API C_Soulbinds.CloseUI|C_Soulbinds.CloseUI]]()
: [[API C_Soulbinds.CommitPendingConduitsInSoulbind|C_Soulbinds.CommitPendingConduitsInSoulbind]](<span class="apiarg">soulbindID</span>)
: [[API C_Soulbinds.FindNodeIDActuallyInstalled|C_Soulbinds.FindNodeIDActuallyInstalled]](<span class="apiarg">soulbindID, conduitID</span>) : <span class="apiret">nodeID</span>
: [[API C_Soulbinds.FindNodeIDAppearingInstalled|C_Soulbinds.FindNodeIDAppearingInstalled]](<span class="apiarg">soulbindID, conduitID</span>) : <span class="apiret">nodeID</span>
: [[API C_Soulbinds.FindNodeIDPendingInstall|C_Soulbinds.FindNodeIDPendingInstall]](<span class="apiarg">soulbindID, conduitID</span>) : <span class="apiret">nodeID</span>
: [[API C_Soulbinds.FindNodeIDPendingUninstall|C_Soulbinds.FindNodeIDPendingUninstall]](<span class="apiarg">soulbindID, conduitID</span>) : <span class="apiret">nodeID</span>
: [[API C_Soulbinds.GetActiveSoulbindID|C_Soulbinds.GetActiveSoulbindID]]() : <span class="apiret">soulbindID</span>
: [[API C_Soulbinds.GetConduitCollection|C_Soulbinds.GetConduitCollection]](<span class="apiarg">conduitType</span>) : <span class="apiret">collectionData</span>
: [[API C_Soulbinds.GetConduitCollectionCount|C_Soulbinds.GetConduitCollectionCount]]() : <span class="apiret">count</span>
: [[API C_Soulbinds.GetConduitCollectionData|C_Soulbinds.GetConduitCollectionData]](<span class="apiarg">conduitID</span>) : <span class="apiret">collectionData</span>
: [[API C_Soulbinds.GetConduitCollectionDataAtCursor|C_Soulbinds.GetConduitCollectionDataAtCursor]]() : <span class="apiret">collectionData</span>
: [[API C_Soulbinds.GetConduitCollectionDataByVirtualID|C_Soulbinds.GetConduitCollectionDataByVirtualID]](<span class="apiarg">virtualID</span>) : <span class="apiret">collectionData</span>
: [[API C_Soulbinds.GetConduitDisplayed|C_Soulbinds.GetConduitDisplayed]](<span class="apiarg">nodeID</span>) : <span class="apiret">conduitID</span>
: [[API C_Soulbinds.GetConduitHyperlink|C_Soulbinds.GetConduitHyperlink]](<span class="apiarg">conduitID, rank</span>) : <span class="apiret">link</span>
: [[API C_Soulbinds.GetConduitIDPendingInstall|C_Soulbinds.GetConduitIDPendingInstall]](<span class="apiarg">nodeID</span>) : <span class="apiret">conduitID</span>
: [[API C_Soulbinds.GetConduitQuality|C_Soulbinds.GetConduitQuality]](<span class="apiarg">conduitID, rank</span>) : <span class="apiret">quality</span>
: [[API C_Soulbinds.GetConduitRank|C_Soulbinds.GetConduitRank]](<span class="apiarg">conduitID</span>) : <span class="apiret">conduitRank</span>
: [[API C_Soulbinds.GetConduitSpellID|C_Soulbinds.GetConduitSpellID]](<span class="apiarg">conduitID, conduitRank</span>) : <span class="apiret">spellID</span>
: [[API C_Soulbinds.GetInstalledConduitID|C_Soulbinds.GetInstalledConduitID]](<span class="apiarg">nodeID</span>) : <span class="apiret">conduitID</span>
: [[API C_Soulbinds.GetNode|C_Soulbinds.GetNode]](<span class="apiarg">nodeID</span>) : <span class="apiret">node</span>
: [[API C_Soulbinds.GetSoulbindData|C_Soulbinds.GetSoulbindData]](<span class="apiarg">soulbindID</span>) : <span class="apiret">data</span>
: [[API C_Soulbinds.GetSpecsAssignedToSoulbind|C_Soulbinds.GetSpecsAssignedToSoulbind]](<span class="apiarg">soulbindID</span>) : <span class="apiret">specIDs</span>
: [[API C_Soulbinds.GetTree|C_Soulbinds.GetTree]](<span class="apiarg">treeID</span>) : <span class="apiret">tree</span>
: [[API C_Soulbinds.HasAnyInstalledConduitInSoulbind|C_Soulbinds.HasAnyInstalledConduitInSoulbind]](<span class="apiarg">soulbindID</span>) : <span class="apiret">result</span>
: [[API C_Soulbinds.HasAnyPendingConduits|C_Soulbinds.HasAnyPendingConduits]]() : <span class="apiret">result</span>
: [[API C_Soulbinds.HasPendingConduitsInSoulbind|C_Soulbinds.HasPendingConduitsInSoulbind]](<span class="apiarg">soulbindID</span>) : <span class="apiret">result</span>
: [[API C_Soulbinds.IsConduitInstalled|C_Soulbinds.IsConduitInstalled]](<span class="apiarg">nodeID</span>) : <span class="apiret">result</span>
: [[API C_Soulbinds.IsConduitInstalledInSoulbind|C_Soulbinds.IsConduitInstalledInSoulbind]](<span class="apiarg">soulbindID, conduitID</span>) : <span class="apiret">result</span>
: [[API C_Soulbinds.IsItemConduitByItemInfo|C_Soulbinds.IsItemConduitByItemInfo]](<span class="apiarg">itemInfo</span>) : <span class="apiret">result</span>
: [[API C_Soulbinds.IsNodePendingModify|C_Soulbinds.IsNodePendingModify]](<span class="apiarg">nodeID</span>) : <span class="apiret">result</span>
: [[API C_Soulbinds.IsUnselectedConduitPendingInSoulbind|C_Soulbinds.IsUnselectedConduitPendingInSoulbind]](<span class="apiarg">soulbindID</span>) : <span class="apiret">result</span>
: [[API C_Soulbinds.ModifyNode|C_Soulbinds.ModifyNode]](<span class="apiarg">nodeID, conduitID, type</span>)
: [[API C_Soulbinds.SelectNode|C_Soulbinds.SelectNode]](<span class="apiarg">nodeID</span>)
: [[API C_Soulbinds.UnmodifyNode|C_Soulbinds.UnmodifyNode]](<span class="apiarg">nodeID</span>)
: [[API C_Item.IsItemConduit|C_Item.IsItemConduit]](<span class="apiarg">itemLoc</span>) : <span class="apiret">isConduit</span>
: [[API SetCursorVirtualItem|SetCursorVirtualItem]](<span class="apiarg">itemInfo, cursorType</span>)

===Cypher Equipment===
: [[API C_Garrison.GetCurrentCypherEquipmentLevel|C_Garrison.GetCurrentCypherEquipmentLevel]]() : <span class="apiret">equipmentLevel</span>
: [[API C_Garrison.GetCyphersToNextEquipmentLevel|C_Garrison.GetCyphersToNextEquipmentLevel]]() : <span class="apiret">cyphersToNext</span>
: [[API C_Garrison.GetMaxCypherEquipmentLevel|C_Garrison.GetMaxCypherEquipmentLevel]]() : <span class="apiret">maxEquipmentLevel</span>

==The War Within==
===Delves===
[[Delves]] were added in [[Patch 11.0.2]]
: [[API C_AreaPoiInfo.GetDelvesForMap|C_AreaPoiInfo.GetDelvesForMap]](<span class="apiarg">uiMapID</span>) : <span class="apiret">areaPoiIDs</span>
: [[API C_DelvesUI.GetCreatureDisplayInfoForCompanion|C_DelvesUI.GetCreatureDisplayInfoForCompanion]](<span class="apiarg">[companionID]</span>) : <span class="apiret">creatureDisplayInfoID</span>
: [[API C_DelvesUI.GetCurioNodeForCompanion|C_DelvesUI.GetCurioNodeForCompanion]](<span class="apiarg">companionID?, curioType</span>) : <span class="apiret">nodeID</span>
: [[API C_DelvesUI.GetCurioRarityByTraitCondAccountElementID|C_DelvesUI.GetCurioRarityByTraitCondAccountElementID]](<span class="apiarg">traitCondAccountElementID</span>) : <span class="apiret">rarity</span>
: [[API C_DelvesUI.GetCurrentDelvesSeasonNumber|C_DelvesUI.GetCurrentDelvesSeasonNumber]]() : <span class="apiret">seasonNumber</span>
: [[API C_DelvesUI.GetDelvesAffixSpellsForSeason|C_DelvesUI.GetDelvesAffixSpellsForSeason]]() : <span class="apiret">affixSpellIDs</span>
: [[API C_DelvesUI.GetDelvesFactionForSeason|C_DelvesUI.GetDelvesFactionForSeason]]() : <span class="apiret">factionID</span>
: [[API C_DelvesUI.GetDelvesMinRequiredLevel|C_DelvesUI.GetDelvesMinRequiredLevel]]() : <span class="apiret">minRequiredLevel</span>
: [[API C_DelvesUI.GetFactionForCompanion|C_DelvesUI.GetFactionForCompanion]](<span class="apiarg">[companionID]</span>) : <span class="apiret">factionID</span>
: [[API C_DelvesUI.GetModelSceneForCompanion|C_DelvesUI.GetModelSceneForCompanion]](<span class="apiarg">[companionID]</span>) : <span class="apiret">modelSceneID</span>
: [[API C_DelvesUI.GetRoleNodeForCompanion|C_DelvesUI.GetRoleNodeForCompanion]](<span class="apiarg">[companionID]</span>) : <span class="apiret">nodeID</span>
: [[API C_DelvesUI.GetRoleSubtreeForCompanion|C_DelvesUI.GetRoleSubtreeForCompanion]](<span class="apiarg">companionID?, roleType</span>) : <span class="apiret">subTreeID</span>
: [[API C_DelvesUI.GetTraitTreeForCompanion|C_DelvesUI.GetTraitTreeForCompanion]](<span class="apiarg">[companionID]</span>) : <span class="apiret">treeID</span>
: [[API C_DelvesUI.GetUnseenCuriosBySlotType|C_DelvesUI.GetUnseenCuriosBySlotType]](<span class="apiarg">slotType, ownedCurioNodeIDs</span>) : <span class="apiret">unseenCurioNodeIDs</span>
: [[API C_DelvesUI.HasActiveDelve|C_DelvesUI.HasActiveDelve]](<span class="apiarg">[mapID]</span>) : <span class="apiret">result</span>
: [[API C_DelvesUI.IsEligibleForActiveDelveRewards|C_DelvesUI.IsEligibleForActiveDelveRewards]](<span class="apiarg">unit</span>) : <span class="apiret">result</span>
: [[API C_DelvesUI.RequestPartyEligibilityForDelveTiers|C_DelvesUI.RequestPartyEligibilityForDelveTiers]](<span class="apiarg">gossipOption</span>)
: [[API C_DelvesUI.SaveSeenCuriosBySlotType|C_DelvesUI.SaveSeenCuriosBySlotType]](<span class="apiarg">slotType, ownedCurioNodeIDs</span>)
: [[API C_GossipInfo.GetActiveDelveGossip|C_GossipInfo.GetActiveDelveGossip]]() : <span class="apiret">gossip</span>
: [[API C_GossipInfo.GetGossipDelveMapID|C_GossipInfo.GetGossipDelveMapID]]() : <span class="apiret">mapID</span>
: [[API C_Item.GetDelvePreviewItemLink|C_Item.GetDelvePreviewItemLink]](<span class="apiarg">itemID, context</span>) : <span class="apiret">itemLink</span>
: [[API C_PartyInfo.DelveTeleportOut|C_PartyInfo.DelveTeleportOut]]()
: [[API C_PartyInfo.IsDelveComplete|C_PartyInfo.IsDelveComplete]]() : <span class="apiret">isDelveComplete</span>
: [[API C_PartyInfo.IsDelveInProgress|C_PartyInfo.IsDelveInProgress]]() : <span class="apiret">isDelveInProgress</span>

==See also==
* [[Widget API]] documents methods that can be called on widgets objects
* [[Lua functions]] describe the language and library functions available in the WoW client.
* [[API change summaries]] document changes made in WoW patches, as summarized on the US official UI forum.
* [[User Defined Functions]] lists various useful user-contributed functions.
* [[:Category:Function Libraries]] contains some AddOns that do nothing but provide you with utility functions.
* [[:Category:World of Warcraft API/Protected Functions|Protected Functions]] for functions unusable by addons.
* [[:Category:World of Warcraft API/Removed Functions|Removed Functions]] for no longer available functions.
* [[World of Warcraft Non-Public API]] for functions not used in FrameXML.

==External links==
* {{elink|type=wowus|site=US official UI and Macro forum|link=https://us.forums.blizzard.com/en/wow/c/guides/ui-macro}}
* {{elink|type=woweu|site=EU official Interface and Macros forum|link=https://eu.forums.blizzard.com/en/wow/c/guides/interface-and-macros}}
* Townlong Yak [https://www.townlong-yak.com/framexml/live/Blizzard_APIDocumentation Blizzard API Documentation]
[[Category:Macros]]
[[Category:Interface customization]]
[[Category:API functions|World of Warcraft API]]
[[Category:UI]]
