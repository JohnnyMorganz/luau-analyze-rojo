declare Instance: {
	new: (className: string, parent: Instance?) -> Instance,
}

declare Ray: {
	new: (Origin: Vector3, Direction: Vector3) -> Ray,
	ClosestPoint: (point: Vector3) -> Vector3,
	Origin: Vector3,
	Unit: Ray,
	Distance: (point: Vector3) -> number,
	Direction: Vector3,
}

declare NumberRange: {
	new: (value: number) -> NumberRange,
	new: (min: number, max: number) -> NumberRange,
	Max: number,
	Min: number,
}

declare PathWaypoint: {
	new: (position: Vector3, action: Enum.PathWaypointAction) -> PathWaypoint,
	Position: Vector3,
	Action: Enum.PathWaypointAction,
}

declare BrickColor: {
	Red: () -> BrickColor,
	Yellow: () -> BrickColor,
	Blue: () -> BrickColor,
	Gray: () -> BrickColor,
	DarkGray: () -> BrickColor,
	White: () -> BrickColor,
	random: () -> BrickColor,
	Green: () -> BrickColor,
	Black: () -> BrickColor,
	palette: (paletteValue: number) -> BrickColor,
	new: (val: number) -> BrickColor,
	new: (r: number, g: number, b: number) -> BrickColor,
	new: (val: string) -> BrickColor,
	new: (color: Color3) -> BrickColor,
	r: number,
	Name: string,
	Number: number,
	Color: Color3,
	b: number,
	g: number,
}

declare Vector2: {
	new: (x: number?, y: number?) -> Vector2,
	zero: Vector2,
	one: Vector2,
	xAxis: Vector2,
	yAxis: Vector2,
	Y: number,
	X: number,
	Unit: Vector2,
	Magnitude: number,
	Lerp: (v: Vector2, alpha: number) -> Vector2,
	Cross: (other: Vector2) -> number,
	Dot: (v: Vector2) -> number,
	y: number,
	x: number,
	unit: Vector2,
	magnitude: number,
	lerp: (v: Vector2, alpha: number) -> Vector2,
}

declare Vector2int16: {
	new: (x: number, y: number) -> Vector2int16,
	X: number,
	Y: number,
}

declare Color3: {
	fromRGB: (red: number?, green: number?, blue: number?) -> Color3,
	fromHSV: (hue: number, saturation: number, value: number) -> Color3,
	toHSV: (color: Color3) -> (number, number, number),
	new: (red: number?, green: number?, blue: number?) -> Color3,
	fromHex: (hex: string) -> Color3,
	R: number,
	B: number,
	G: number,
	ToHSV: () -> (number, number, number),
	Lerp: (color: Color3, alpha: number) -> Color3,
	r: number,
	g: number,
	b: number,
	lerp: (color: Color3, alpha: number) -> Color3,
}

declare UDim: {
	new: (Scale: number?, Offset: number?) -> UDim,
	Scale: number,
	Offset: number,
}

declare PhysicalProperties: {
	new: (material: Enum.Material) -> PhysicalProperties,
	new: (density: number, friction: number, elasticy: number, frictionWeight: number?, elasticyWeight: number?) -> PhysicalProperties,
	ElasticityWeight: number,
	Elasticity: number,
	Density: number,
	FrictionWeight: number,
	Friction: number,
}

declare Axes: {
	new: (axes: any) -> Axes,
	Z: boolean,
	Y: boolean,
	Top: boolean,
	Left: boolean,
	X: boolean,
	Right: boolean,
	Bottom: boolean,
	Front: boolean,
	Back: boolean,
}

declare Region3: {
	new: (min: Vector3, max: Vector3) -> Region3,
	CFrame: CFrame,
	ExpandToGrid: (Region: number) -> Region3,
	Size: Vector3,
}

declare Region3int16: {
	new: (min: Vector3int16, max: Vector3int16) -> Region3int16,
	Min: Vector3int16,
	Max: Vector3int16,
}

declare UDim2: {
	fromScale: (xScale: number, yScale: number) -> UDim2,
	fromOffset: (xOffset: number, yOffset: number) -> UDim2,
	new: (x: UDim, y: UDim) -> UDim2,
	new: (xScale: number?, xOffset: number?, yScale: number?, yOffset: number?) -> UDim2,
	Y: UDim,
	Lerp: (goal: UDim2, alpha: number) -> UDim2,
	Height: UDim,
	X: UDim,
	Width: UDim,
}

declare CFrame: {
	fromEulerAnglesYXZ: (rx: number, ry: number, rz: number) -> CFrame,
	Angles: (rx: number, ry: number, rz: number) -> CFrame,
	fromMatrix: (pos: Vector3, vX: Vector3, vY: Vector3, vZ: Vector3) -> CFrame,
	fromAxisAngle: (v: Vector3, r: number) -> CFrame,
	fromOrientation: (rx: number, ry: number, rz: number) -> CFrame,
	fromEulerAnglesXYZ: (rx: number, ry: number, rz: number) -> CFrame,
	lookAt: (at: Vector3, target: Vector3, up: Vector3?) -> CFrame,
	new: () -> CFrame,
	new: (pos: Vector3) -> CFrame,
	new: (pos: Vector3, lookAt: Vector3) -> CFrame,
	new: (x: number, y: number, z: number) -> CFrame,
	new: (x: number, y: number, z: number, qX: number, qY: number, qZ: number, qW: number) -> CFrame,
	new: (x: number, y: number, z: number, R00: number, R01: number, R02: number, R10: number, R11: number, R12: number, R20: number, R21: number, R22: number) -> CFrame,
	identity: CFrame,
	Rotation: CFrame,
	Z: number,
	Y: number,
	X: number,
	PointToObjectSpace: (v3: Vector3) -> Vector3,
	YVector: Vector3,
	XVector: Vector3,
	ZVector: Vector3,
	Position: Vector3,
	RightVector: Vector3,
	VectorToWorldSpace: (v3: Vector3) -> Vector3,
	ToAxisAngle: () -> (Vector3, number),
	ToOrientation: () -> (number, number, number),
	ToEulerAnglesYXZ: () -> (number, number, number),
	Inverse: () -> CFrame,
	UpVector: Vector3,
	Lerp: (goal: CFrame, alpha: number) -> CFrame,
	GetComponents: () -> (number, number, number, number, number, number, number, number, number, number, number, number),
	VectorToObjectSpace: (v3: Vector3) -> Vector3,
	LookVector: Vector3,
	PointToWorldSpace: (v3: Vector3) -> Vector3,
	ToWorldSpace: (cf: CFrame) -> CFrame,
	ToObjectSpace: (cf: CFrame) -> CFrame,
	ToEulerAnglesXYZ: () -> (number, number, number),
	Orthonormalize: () -> CFrame,
	z: number,
	y: number,
	x: number,
	pointToObjectSpace: (v3: Vector3) -> Vector3,
	p: Vector3,
	rightVector: Vector3,
	vectorToWorldSpace: (v3: Vector3) -> Vector3,
	toAxisAngle: () -> (Vector3, number),
	inverse: () -> CFrame,
	upVector: Vector3,
	lerp: (goal: CFrame, alpha: number) -> CFrame,
	vectorToObjectSpace: (v3: Vector3) -> Vector3,
	lookVector: Vector3,
	pointToWorldSpace: (v3: Vector3) -> Vector3,
	toWorldSpace: (cf: CFrame) -> CFrame,
	toObjectSpace: (cf: CFrame) -> CFrame,
	toEulerAnglesXYZ: () -> (number, number, number),
	components: () -> (number, number, number, number, number, number, number, number, number, number, number, number),
}

declare Faces: {
	new: (normalIds: any) -> Faces,
	Bottom: boolean,
	Top: boolean,
	Front: boolean,
	Left: boolean,
	Right: boolean,
	Back: boolean,
}

declare Rect: {
	new: (min: Vector2, max: Vector2) -> Rect,
	new: (minX: number, minY: number, maxX: number, maxY: number) -> Rect,
	Max: Vector2,
	Min: Vector2,
	Height: number,
	Width: number,
}

declare Vector3: {
	fromNormalId: (normal: Enum.NormalId) -> Vector3,
	fromAxis: (axis: Enum.Axis) -> Vector3,
	FromNormalId: (normal: Enum.NormalId) -> Vector3,
	FromAxis: (axis: Enum.Axis) -> Vector3,
	new: (x: number?, y: number?, z: number?) -> Vector3,
	zero: Vector3,
	one: Vector3,
	xAxis: Vector3,
	yAxis: Vector3,
	zAxis: Vector3,
	Z: number,
	Y: number,
	X: number,
	Unit: Vector3,
	Magnitude: number,
	Dot: (other: Vector3) -> number,
	Lerp: (goal: Vector3, alpha: number) -> Vector3,
	Cross: (other: Vector3) -> Vector3,
	FuzzyEq: (other: Vector3, epsilon: number) -> boolean,
	lerp: (goal: Vector3, alpha: number) -> Vector3,
	z: number,
	y: number,
	x: number,
	unit: Vector3,
	magnitude: number,
}

declare Vector3int16: {
	new: (x: number?, y: number?, z: number?) -> Vector3int16,
	X: number,
	Y: number,
	Z: number,
}

declare Random: {
	new: (seed: number?) -> Random,
	NextInteger: (min: number, max: number) -> number,
	NextNumber: () -> number,
	NextNumber: (min: number, max: number) -> number,
	Clone: () -> Random,
}

declare TweenInfo: {
	new: (time: number?, easingStyle: Enum.EasingStyle?, easingDirection: Enum.EasingDirection?, repeatCount: number?, reverses: boolean?, delayTime: number?) -> TweenInfo,
	DelayTime: number,
	Time: number,
	EasingDirection: Enum.EasingDirection,
	RepeatCount: number,
	EasingStyle: Enum.EasingStyle,
	Reverses: boolean,
}

declare DateTime: {
	now: () -> DateTime,
	fromUnixTimestamp: (unixTimestamp: number) -> DateTime,
	fromUnixTimestampMillis: (unixTimestampMillis: number) -> DateTime,
	fromUniversalTime: (year: number?, month: number?, day: number?, hour: number?, minute: number?, second: number?, millisecond: number?) -> DateTime,
	fromLocalTime: (year: number?, month: number?, day: number?, hour: number?, minute: number?, second: number?, millisecond: number?) -> DateTime,
	fromIsoDate: (isoDate: string) -> DateTime,
	UnixTimestamp: number,
	UnixTimestampMillis: number,
	ToUniversalTime: () -> { any },
	ToLocalTime: () -> { any },
	ToIsoDate: () -> string,
	FormatUniversalTime: (format: string, locale: string) -> string,
	FormatLocalTime: (format: string, locale: string) -> string,
}

declare NumberSequence: {
	new: (n: number) -> NumberSequence,
	new: (n0: number, n1: number) -> NumberSequence,
	new: (keypoints: { any }) -> NumberSequence,
	Keypoints: { any },
}

declare ColorSequence: {
	new: (c: Color3) -> ColorSequence,
	new: (c0: Color3, c1: Color3) -> ColorSequence,
	new: (keypoints: { any }) -> ColorSequence,
	Keypoints: { any },
}

declare NumberSequenceKeypoint: {
	new: (time: number, value: number, envelop: number?) -> NumberSequenceKeypoint,
	Envelope: number,
	Time: number,
	Value: number,
}

declare ColorSequenceKeypoint: {
	new: (time: number, color: Color3) -> ColorSequenceKeypoint,
	Time: number,
	Value: Color3,
}

declare RaycastParams: {
	new: () -> RaycastParams,
	FilterDescendantsInstances: { Instance },
	FilterType: Enum.RaycastFilterType,
	IgnoreWater: boolean,
	CollisionGroup: string,
}

declare OverlapParams: {
	new: () -> OverlapParams,
	FilterDescendantsInstances: { Instance },
	FilterType: Enum.RaycastFilterType,
	IgnoreWater: boolean,
	CollisionGroup: string,
	MaxParts: number,
}

declare DockWidgetPluginGuiInfo: {
	new: (initDockState: Enum.InitialDockState?, initEnabled: boolean?, overrideEnabledRestore: boolean?, floatXSize: number?, floatYSize: number?, minWidth: number?, minHeight: number?) -> DockWidgetPluginGuiInfo,
	InitialEnabled: boolean,
	InitialEnabledShouldOverrideRestore: boolean,
	FloatingXSize: number,
	FloatingYSize: number,
	MinWidth: number,
	MinHeight: number,
}

declare CatalogSearchParams: {
	new: () -> CatalogSearchParams,
	SearchKeyword: string,
	MinPrice: number,
	MaxPrice: number,
	SortType: Enum.CatalogSortType,
	CategoryFilter: Enum.CatalogCategoryFilter,
	BundleType: { any },
	AssetTypes: { any },
}

declare EnumItem: {
	IsA: (enumName: string) -> boolean,
	EnumType: Enum,
	Value: number,
	Name: string,
}

declare Enum: {
	GetEnumItems: () -> { any },
}

declare Enums: {
	GetEnums: () -> { any },
}

declare RBXScriptConnection: {
	Disconnect: () -> nil,
	Connected: boolean,
	disconnect: () -> nil,
	connected: boolean,
}

declare RBXScriptSignal: {
	Wait: () -> any,
	Connect: (callback: (any) -> (any)) -> RBXScriptConnection,
	ConnectParallel: (callback: (any) -> (any)) -> RBXScriptConnection,
	wait: () -> any,
	connect: (callback: (any) -> (any)) -> RBXScriptConnection,
}

declare RaycastResult: {
	Instance: Instance,
	Position: Vector3,
	Material: Enum.Material,
	Normal: Vector3,
}

declare class Instance
	Archivable: boolean
	ClassName: string
	DataCost: number
	Name: string
	Parent: Instance
	RobloxLocked: boolean
	SourceAssetId: number
	archivable: boolean
	className: string
	function ClearAllChildren(self): nil
	function Clone(self): Instance
	function Destroy(self): nil
	function FindFirstAncestor(self, name: string): Instance
	function FindFirstAncestorOfClass(self, className: string): Instance
	function FindFirstAncestorWhichIsA(self, className: string): Instance
	function FindFirstChild(self, name: string, recursive: boolean?): Instance
	function FindFirstChildOfClass(self, className: string): Instance
	function FindFirstChildWhichIsA(self, className: string, recursive: boolean?): Instance
	function FindFirstDescendant(self, name: string): Instance
	function GetActor(self): Actor
	function GetAttribute(self, attribute: string): any
	function GetAttributeChangedSignal(self, attribute: string): RBXScriptSignal
	function GetAttributes(self): { [any]: any }
	function GetChildren(self): Objects
	function GetDebugId(self, scopeLength: number?): string
	function GetDescendants(self): { any }
	function GetFullName(self): string
	function GetPropertyChangedSignal(self, property: string): RBXScriptSignal
	function IsA(self, className: string): boolean
	function IsAncestorOf(self, descendant: Instance): boolean
	function IsDescendantOf(self, ancestor: Instance): boolean
	function Remove(self): nil
	function SetAttribute(self, attribute: string, value: any): nil
	function WaitForChild(self, childName: string, timeOut: number): Instance
	function children(self): Objects
	function clone(self): Instance
	function destroy(self): nil
	function findFirstChild(self, name: string, recursive: boolean?): Instance
	function getChildren(self): Objects
	function isA(self, className: string): boolean
	function isDescendantOf(self, ancestor: Instance): boolean
	function remove(self): nil
	AncestryChanged: RBXScriptSignal
	AttributeChanged: RBXScriptSignal
	Changed: RBXScriptSignal
	ChildAdded: RBXScriptSignal
	ChildRemoved: RBXScriptSignal
	DescendantAdded: RBXScriptSignal
	DescendantRemoving: RBXScriptSignal
	Destroying: RBXScriptSignal
	childAdded: RBXScriptSignal
end

declare class ABTestService extends Instance
	function ClearUserVariations(self): nil
	function GetBrowserTrackerABTestLoadingStatus(self): Enum.ABTestLoadingStatus
	function GetPendingOrInitializedUserId(self): number
	function GetUserABTestLoadingStatus(self): Enum.ABTestLoadingStatus
	function GetVariant(self, name: string): string
	function InitializeForUserId(self, userId: number): nil
	function WaitUntilBrowserTrackerABTestsInitialized(self): nil
	function WaitUntilUserABTestsInitialized(self): nil
	OnBrowserTrackerABTestLoadingStatusChanged: RBXScriptSignal
	OnUserABTestLoadingStatusChanged: RBXScriptSignal
end

declare class Accoutrement extends Instance
	AttachmentForward: Vector3
	AttachmentPoint: CFrame
	AttachmentPos: Vector3
	AttachmentRight: Vector3
	AttachmentUp: Vector3
end

declare class Accessory extends Accoutrement
	AccessoryType: Enum.AccessoryType
end

declare class Hat extends Accoutrement
end

declare class AdService extends Instance
	function ShowVideoAd(self): nil
	VideoAdClosed: RBXScriptSignal
end

declare class AdvancedDragger extends Instance
end

declare class AnalyticsService extends Instance
	ApiKey: string
	function FireCustomEvent(self, player: Instance, eventCategory: string, customData: any): nil
	function FireEvent(self, category: string, value: any): nil
	function FireInGameEconomyEvent(self, player: Instance, itemName: string, economyAction: Enum.AnalyticsEconomyAction, itemCategory: string, amount: number, currency: string, location: any, customData: any): nil
	function FireLogEvent(self, player: Instance, logLevel: Enum.AnalyticsLogLevel, message: string, debugInfo: any, customData: any): nil
	function FirePlayerProgressionEvent(self, player: Instance, category: string, progressionStatus: Enum.AnalyticsProgressionStatus, location: any, statistics: any, customData: any): nil
end

declare class Animation extends Instance
	AnimationId: Content
end

declare class AnimationClip extends Instance
	Loop: boolean
	Priority: Enum.AnimationPriority
end

declare class CurveAnimation extends AnimationClip
end

declare class KeyframeSequence extends AnimationClip
	AuthoredHipHeight: number
	function AddKeyframe(self, keyframe: Instance): nil
	function GetKeyframes(self): Objects
	function RemoveKeyframe(self, keyframe: Instance): nil
end

declare class AnimationClipProvider extends Instance
	function GetAnimationClip(self, assetId: Content): AnimationClip
	function GetAnimationClipById(self, assetId: number, useCache: boolean): AnimationClip
	function GetMemStats(self): { [any]: any }
	function RegisterActiveAnimationClip(self, animationClip: AnimationClip): Content
	function RegisterAnimationClip(self, animationClip: AnimationClip): Content
	function GetAnimationClipAsync(self, assetId: Content): AnimationClip
	function GetAnimations(self, userId: number): Instance
end

declare class AnimationController extends Instance
	function GetPlayingAnimationTracks(self): { any }
	function LoadAnimation(self, animation: Animation): AnimationTrack
	AnimationPlayed: RBXScriptSignal
end

declare class AnimationFromVideoCreatorService extends Instance
	function CreateJob(self, filePath: string): string
	function DownloadJobResult(self, jobId: string, outputFilePath: string): string
	function FullProcess(self, videoFilePath: string, progressCallback: Function): string
	function GetJobStatus(self, jobId: string): string
end

declare class AnimationFromVideoCreatorStudioService extends Instance
	function CreateAnimationByUploadingVideo(self, progressCallback: Function): string
	function ImportVideoWithPrompt(self): string
end

declare class AnimationRigData extends Instance
	function LoadFromHumanoid(self, humanoid: Instance): boolean
end

declare class AnimationTrack extends Instance
	Animation: Animation
	IsPlaying: boolean
	Length: number
	Looped: boolean
	Priority: Enum.AnimationPriority
	Speed: number
	TimePosition: number
	WeightCurrent: number
	WeightTarget: number
	function AdjustSpeed(self, speed: number?): nil
	function AdjustWeight(self, weight: number?, fadeTime: number?): nil
	function GetMarkerReachedSignal(self, name: string): RBXScriptSignal
	function GetTimeOfKeyframe(self, keyframeName: string): number
	function Play(self, fadeTime: number?, weight: number?, speed: number?): nil
	function Stop(self, fadeTime: number?): nil
	DidLoop: RBXScriptSignal
	KeyframeReached: RBXScriptSignal
	Stopped: RBXScriptSignal
end

declare class Animator extends Instance
	function ApplyJointVelocities(self, motors: any): nil
	function GetPlayingAnimationTracks(self): { any }
	function LoadAnimation(self, animation: Animation): AnimationTrack
	function StepAnimations(self, deltaTime: number): nil
	AnimationPlayed: RBXScriptSignal
end

declare class AppUpdateService extends Instance
	function CheckForUpdate(self, handler: Function?): nil
	function DisableDUAR(self): nil
	function DisableDUARAndOpenSurvey(self, surveyUrl: string): nil
	function PerformManagedUpdate(self): boolean
end

declare class AssetCounterService extends Instance
end

declare class AssetDeliveryProxy extends Instance
end

declare class AssetImportService extends Instance
	function GetCurrentImportMap(self): { [any]: any }
	function ImportMesh(self, fileName: string): any
	function IsAvatar(self): boolean
	function Upload(self): nil
	function ImportMeshWithPrompt(self): any
	ProgressUpdate: RBXScriptSignal
	SettingsChanged: RBXScriptSignal
	UploadFinished: RBXScriptSignal
end

declare class AssetManagerService extends Instance
	function GetMeshIdFromAliasName(self, aliasName: string): number
	function GetMeshIdFromAssetId(self, assetId: number): number
	function GetTextureIdFromAliasName(self, aliasName: string): number
	function GetTextureIdFromAssetId(self, assetId: number): number
	function HasUnpublishedChangesForLinkedSource(self, aliasName: string): boolean
	function InsertAudio(self, assetId: number, assetName: string): nil
	function InsertImage(self, assetId: number): nil
	function InsertLinkedSourceAsLocalScript(self, aliasName: string): nil
	function InsertLinkedSourceAsModuleScript(self, aliasName: string): nil
	function InsertLinkedSourceAsScript(self, aliasName: string): nil
	function InsertMesh(self, aliasName: string, insertWithLocation: boolean): nil
	function InsertMeshesWithLocation(self, aliasNames: { any }): nil
	function InsertModel(self, modelId: number): nil
	function InsertPackage(self, packageId: number): nil
	function OpenLinkedSource(self, aliasName: string): nil
	function OpenPlace(self, placeId: number): nil
	function RefreshLinkedSource(self, aliasName: string): nil
	function RevertLinkedSourceToLastPublishedVersion(self, aliasName: string): nil
	function ShowPackageDetails(self, packageId: number): nil
	function UpdateAllPackages(self, packageId: number): nil
	function ViewPackageOnWebsite(self, packageId: number): nil
	function AddNewPlace(self): number
	function CreateAlias(self, assetType: number, assetId: number, aliasName: string): nil
	function DeleteAlias(self, aliasName: string): nil
	function PublishLinkedSource(self, assetId: number, aliasName: string): nil
	function RemovePlace(self, placeId: number): nil
	function RenameAlias(self, assetType: number, assetId: number, oldAliasName: string, newAliasName: string): nil
	function RenameModel(self, modelId: number, newName: string): nil
	function RenamePlace(self, placeId: number, newName: string): nil
	AssetImportedSignal: RBXScriptSignal
	ImportSessionFinished: RBXScriptSignal
	ImportSessionStarted: RBXScriptSignal
	MayBeLinkedSourceModified: RBXScriptSignal
end

declare class AssetService extends Instance
	function GetBundleDetailsSync(self, bundleId: number): { [any]: any }
	function CreatePlaceAsync(self, placeName: string, templatePlaceID: number, description: string?): number
	function CreatePlaceInPlayerInventoryAsync(self, player: Instance, placeName: string, templatePlaceID: number, description: string?): number
	function GetAssetIdsForPackage(self, packageAssetId: number): { any }
	function GetAssetThumbnailAsync(self, assetId: number, thumbnailSize: Vector2, assetType: number?): any
	function GetBundleDetailsAsync(self, bundleId: number): { [any]: any }
	function GetCreatorAssetID(self, creationID: number): number
	function GetGamePlacesAsync(self): Instance
	function SavePlaceAsync(self): nil
end

declare class Atmosphere extends Instance
	Color: Color3
	Decay: Color3
	Density: number
	Glare: number
	Haze: number
	Offset: number
end

declare class Attachment extends Instance
	Axis: Vector3
	CFrame: CFrame
	Orientation: Vector3
	Position: Vector3
	Rotation: Vector3
	SecondaryAxis: Vector3
	Visible: boolean
	WorldAxis: Vector3
	WorldCFrame: CFrame
	WorldOrientation: Vector3
	WorldPosition: Vector3
	WorldRotation: Vector3
	WorldSecondaryAxis: Vector3
	function GetAxis(self): Vector3
	function GetSecondaryAxis(self): Vector3
	function SetAxis(self, axis: Vector3): nil
	function SetSecondaryAxis(self, axis: Vector3): nil
end

declare class Bone extends Attachment
	IsCFrameDriven: boolean
	Transform: CFrame
	TransformedCFrame: CFrame
	TransformedWorldCFrame: CFrame
end

declare class AvatarEditorService extends Instance
	function NoPromptCreateOutfit(self, humanoidDescription: HumanoidDescription, rigType: Enum.HumanoidRigType, name: string): boolean
	function NoPromptDeleteOutfit(self, outfitId: number): boolean
	function NoPromptRenameOutfit(self, outfitId: number, name: string): boolean
	function NoPromptSaveAvatar(self, humanoidDescription: HumanoidDescription, rigType: Enum.HumanoidRigType, saveDict: { [any]: any }, gearAssetId: number?): boolean
	function NoPromptSetFavorite(self, itemId: number, itemType: Enum.AvatarItemType, shouldFavorite: boolean): boolean
	function NoPromptUpdateOutfit(self, outfitId: number, humanoidDescription: HumanoidDescription, rigType: Enum.HumanoidRigType): boolean
	function PerformCreateOutfitWithDescription(self, humanoidDescription: HumanoidDescription, name: string): nil
	function PerformDeleteOutfit(self): nil
	function PerformRenameOutfit(self, name: string): nil
	function PerformSaveAvatarWithDescription(self, humanoidDescription: HumanoidDescription, addedAssets: { any }, removedAssets: { any }): nil
	function PerformSetFavorite(self): nil
	function PerformUpdateOutfit(self, humanoidDescription: HumanoidDescription): nil
	function PromptAllowInventoryReadAccess(self): nil
	function PromptCreateOutfit(self, outfit: HumanoidDescription, rigType: Enum.HumanoidRigType): nil
	function PromptDeleteOutfit(self, outfitId: number): nil
	function PromptRenameOutfit(self, outfitId: number): nil
	function PromptSaveAvatar(self, humanoidDescription: HumanoidDescription, rigType: Enum.HumanoidRigType): nil
	function PromptSetFavorite(self, itemId: number, itemType: Enum.AvatarItemType, shouldFavorite: boolean): nil
	function PromptUpdateOutfit(self, outfitId: number, updatedOutfit: HumanoidDescription, rigType: Enum.HumanoidRigType): nil
	function SetAllowInventoryReadAccess(self, inventoryReadAccessGranted: boolean): nil
	function SignalCreateOutfitFailed(self): nil
	function SignalCreateOutfitPermissionDenied(self): nil
	function SignalDeleteOutfitFailed(self): nil
	function SignalDeleteOutfitPermissionDenied(self): nil
	function SignalRenameOutfitFailed(self): nil
	function SignalRenameOutfitPermissionDenied(self): nil
	function SignalSaveAvatarFailed(self): nil
	function SignalSaveAvatarPermissionDenied(self): nil
	function SignalSetFavoriteFailed(self): nil
	function SignalSetFavoritePermissionDenied(self): nil
	function SignalUpdateOutfitFailed(self): nil
	function SignalUpdateOutfitPermissionDenied(self): nil
	function CheckApplyDefaultClothing(self, humanoidDescription: HumanoidDescription): HumanoidDescription
	function ConformToAvatarRules(self, humanoidDescription: HumanoidDescription): HumanoidDescription
	function GetAvatarRules(self): { [any]: any }
	function GetBatchItemDetails(self, itemIds: { any }, itemType: Enum.AvatarItemType): { any }
	function GetFavorite(self, itemId: number, itemType: Enum.AvatarItemType): boolean
	function GetInventory(self, assetTypes: { any }): InventoryPages
	function GetItemDetails(self, itemId: number, itemType: Enum.AvatarItemType): { [any]: any }
	function GetOutfits(self, outfitSource: Enum.OutfitSource?): OutfitPages
	function GetRecommendedAssets(self, assetType: Enum.AvatarAssetType, contextAssetId: number?): { any }
	function GetRecommendedBundles(self, bundleId: number): { any }
	function SearchCatalog(self, searchParameters: CatalogSearchParams): CatalogPages
	OpenAllowInventoryReadAccess: RBXScriptSignal
	OpenPromptCreateOufit: RBXScriptSignal
	OpenPromptDeleteOutfit: RBXScriptSignal
	OpenPromptRenameOutfit: RBXScriptSignal
	OpenPromptSaveAvatar: RBXScriptSignal
	OpenPromptSetFavorite: RBXScriptSignal
	OpenPromptUpdateOutfit: RBXScriptSignal
	PromptAllowInventoryReadAccessCompleted: RBXScriptSignal
	PromptCreateOutfitCompleted: RBXScriptSignal
	PromptDeleteOutfitCompleted: RBXScriptSignal
	PromptRenameOutfitCompleted: RBXScriptSignal
	PromptSaveAvatarCompleted: RBXScriptSignal
	PromptSetFavoriteCompleted: RBXScriptSignal
	PromptUpdateOutfitCompleted: RBXScriptSignal
end

declare class AvatarImportService extends Instance
	function ImportFBXAnimationFromFilePathUserMayChooseModel(self, fbxFilePath: string, selectedRig: Instance, userChooseModelThenImportCB: Function): Instance
	function ImportFBXAnimationUserMayChooseModel(self, selectedRig: Instance, userChooseModelThenImportCB: Function): Instance
	function ImportFbxRigWithoutSceneLoad(self, isR15: boolean?): Instance
	function ImportLoadedFBXAnimation(self, useFBXModel: boolean): Instance
	function LoadRigAndDetectType(self, promptR15Callback: Function): Instance
end

declare class Backpack extends Instance
end

declare class BackpackItem extends Instance
	TextureId: Content
end

declare class HopperBin extends BackpackItem
	Active: boolean
	BinType: Enum.BinType
	function Disable(self): nil
	function ToggleSelect(self): nil
	Deselected: RBXScriptSignal
	Selected: RBXScriptSignal
end

declare class Tool extends BackpackItem
	CanBeDropped: boolean
	Enabled: boolean
	Grip: CFrame
	GripForward: Vector3
	GripPos: Vector3
	GripRight: Vector3
	GripUp: Vector3
	ManualActivationOnly: boolean
	RequiresHandle: boolean
	ToolTip: string
	function Activate(self): nil
	function Deactivate(self): nil
	Activated: RBXScriptSignal
	Deactivated: RBXScriptSignal
	Equipped: RBXScriptSignal
	Unequipped: RBXScriptSignal
end

declare class Flag extends Tool
	TeamColor: BrickColor
end

declare class BadgeService extends Instance
	function AwardBadge(self, userId: number, badgeId: number): boolean
	function GetBadgeInfoAsync(self, badgeId: number): { [any]: any }
	function IsDisabled(self, badgeId: number): boolean
	function IsLegal(self, badgeId: number): boolean
	function UserHasBadge(self, userId: number, badgeId: number): boolean
	function UserHasBadgeAsync(self, userId: number, badgeId: number): boolean
	BadgeAwarded: RBXScriptSignal
	OnBadgeAwarded: RBXScriptSignal
end

declare class BasePlayerGui extends Instance
	function GetGuiObjectsAtPosition(self, x: number, y: number): Objects
	function GetGuiObjectsInCircle(self, position: Vector2, radius: number): Objects
end

declare class CoreGui extends BasePlayerGui
	SelectionImageObject: GuiObject
	Version: number
	function SetUserGuiRendering(self, enabled: boolean, guiAdornee: Instance, faceId: Enum.NormalId): nil
	function TakeScreenshot(self): nil
	function ToggleRecording(self): nil
end

declare class PlayerGui extends BasePlayerGui
	CurrentScreenOrientation: Enum.ScreenOrientation
	ScreenOrientation: Enum.ScreenOrientation
	SelectionImageObject: GuiObject
	function GetTopbarTransparency(self): number
	function SetTopbarTransparency(self, transparency: number): nil
	TopbarTransparencyChangedSignal: RBXScriptSignal
end

declare class StarterGui extends BasePlayerGui
	ProcessUserInput: boolean
	ResetPlayerGuiOnSpawn: boolean
	ScreenOrientation: Enum.ScreenOrientation
	ShowDevelopmentGui: boolean
	VirtualCursorMode: Enum.VirtualCursorMode
	function GetCoreGuiEnabled(self, coreGuiType: Enum.CoreGuiType): boolean
	function RegisterGetCore(self, parameterName: string, getFunction: Function): nil
	function RegisterSetCore(self, parameterName: string, setFunction: Function): nil
	function SetCore(self, parameterName: string, value: any): nil
	function SetCoreGuiEnabled(self, coreGuiType: Enum.CoreGuiType, enabled: boolean): nil
	function GetCore(self, parameterName: string): any
	CoreGuiChangedSignal: RBXScriptSignal
end

declare class BaseWrap extends Instance
	CageMeshId: Content
	CageOrigin: CFrame
	CageOriginWorld: CFrame
	HSRAssetId: Content
	ImportOrigin: CFrame
	ImportOriginWorld: CFrame
	function GetFaces(self, cageType: Enum.CageType): { any }
	function GetVertices(self, cageType: Enum.CageType): { any }
	function IsHSRReady(self): boolean
	function ModifyVertices(self, cageType: Enum.CageType, vertices: { any }): nil
end

declare class WrapLayer extends BaseWrap
	BindOffset: CFrame
	Color: Color3
	DebugMode: Enum.WrapLayerDebugMode
	Enabled: boolean
	Order: number
	Puffiness: number
	ReferenceMeshId: Content
	ReferenceOrigin: CFrame
	ReferenceOriginWorld: CFrame
	ShrinkFactor: number
end

declare class WrapTarget extends BaseWrap
	Color: Color3
	DebugMode: Enum.WrapTargetDebugMode
	Stiffness: number
end

declare class Beam extends Instance
	Attachment0: Attachment
	Attachment1: Attachment
	Brightness: number
	Color: ColorSequence
	CurveSize0: number
	CurveSize1: number
	Enabled: boolean
	FaceCamera: boolean
	LightEmission: number
	LightInfluence: number
	Segments: number
	Texture: Content
	TextureLength: number
	TextureMode: Enum.TextureMode
	TextureSpeed: number
	Transparency: NumberSequence
	Width0: number
	Width1: number
	ZOffset: number
	function SetTextureOffset(self, offset: number?): nil
end

declare class BindableEvent extends Instance
	function Fire(self, arguments: any): nil
	Event: RBXScriptSignal
end

declare class BindableFunction extends Instance
	function Invoke(self, arguments: any): any
	OnInvoke: (arguments: any) -> any
end

declare class BodyMover extends Instance
end

declare class BodyAngularVelocity extends BodyMover
	AngularVelocity: Vector3
	MaxTorque: Vector3
	P: number
	angularvelocity: Vector3
	maxTorque: Vector3
end

declare class BodyForce extends BodyMover
	Force: Vector3
	force: Vector3
end

declare class BodyGyro extends BodyMover
	CFrame: CFrame
	D: number
	MaxTorque: Vector3
	P: number
	cframe: CFrame
	maxTorque: Vector3
end

declare class BodyPosition extends BodyMover
	D: number
	MaxForce: Vector3
	P: number
	Position: Vector3
	maxForce: Vector3
	position: Vector3
	function GetLastForce(self): Vector3
	function lastForce(self): Vector3
	ReachedTarget: RBXScriptSignal
end

declare class BodyThrust extends BodyMover
	Force: Vector3
	Location: Vector3
	force: Vector3
	location: Vector3
end

declare class BodyVelocity extends BodyMover
	MaxForce: Vector3
	P: number
	Velocity: Vector3
	maxForce: Vector3
	velocity: Vector3
	function GetLastForce(self): Vector3
	function lastForce(self): Vector3
end

declare class RocketPropulsion extends BodyMover
	CartoonFactor: number
	MaxSpeed: number
	MaxThrust: number
	MaxTorque: Vector3
	Target: BasePart
	TargetOffset: Vector3
	TargetRadius: number
	ThrustD: number
	ThrustP: number
	TurnD: number
	TurnP: number
	function Abort(self): nil
	function Fire(self): nil
	function fire(self): nil
	ReachedTarget: RBXScriptSignal
end

declare class Breakpoint extends Instance
	Condition: string
	ContinueExecution: boolean
	Enabled: boolean
	Id: number
	Line: number
	LogMessage: string
	MetaBreakpointId: number
	Script: string
	Verified: boolean
end

declare class BreakpointManager extends Instance
	function AddBreakpoint(self, script: Instance, line: number, condition: Instance): Instance
	function GetBreakpointById(self, metaBreakpointId: number): MetaBreakpoint
	function RemoveBreakpointById(self, metaBreakpointId: number): nil
	MetaBreakpointAdded: RBXScriptSignal
	MetaBreakpointChanged: RBXScriptSignal
	MetaBreakpointRemoved: RBXScriptSignal
end

declare class BrowserService extends Instance
	function CloseBrowserWindow(self): nil
	function CopyAuthCookieFromBrowserToEngine(self): nil
	function EmitHybridEvent(self, moduleName: string, eventName: string, params: string): nil
	function ExecuteJavaScript(self, javascript: string): nil
	function OpenBrowserWindow(self, url: string): nil
	function OpenNativeOverlay(self, title: string, url: string): nil
	function OpenWeChatAuthWindow(self): nil
	function ReturnToJavaScript(self, callbackId: string, success: boolean, params: string): nil
	function SendCommand(self, command: string): nil
	AuthCookieCopiedToEngine: RBXScriptSignal
	BrowserWindowClosed: RBXScriptSignal
	BrowserWindowWillNavigate: RBXScriptSignal
	JavaScriptCallback: RBXScriptSignal
end

declare class BulkImportService extends Instance
	function LaunchBulkImport(self, assetTypeToImport: number): nil
	function ShowBulkImportView(self): nil
	AssetImported: RBXScriptSignal
	BulkImportFinished: RBXScriptSignal
	BulkImportStarted: RBXScriptSignal
end

declare class CacheableContentProvider extends Instance
end

declare class HSRDataContentProvider extends CacheableContentProvider
end

declare class MeshContentProvider extends CacheableContentProvider
	function GetContentMemoryData(self): { [any]: any }
end

declare class SolidModelContentProvider extends CacheableContentProvider
end

declare class CalloutService extends Instance
	function AttachCallout(self, definitionId: string, locationId: string, target: Instance): nil
	function DefineCallout(self, definitionId: string, title: string, description: string, learnMoreURL: string): nil
	function DetachCalloutsByDefinitionId(self, definitionId: string): nil
end

declare class Camera extends Instance
	CFrame: CFrame
	CameraSubject: Instance
	CameraType: Enum.CameraType
	CoordinateFrame: CFrame
	DiagonalFieldOfView: number
	FieldOfView: number
	FieldOfViewMode: Enum.FieldOfViewMode
	Focus: CFrame
	HeadLocked: boolean
	HeadScale: number
	MaxAxisFieldOfView: number
	NearPlaneZ: number
	ViewportSize: Vector2
	focus: CFrame
	function GetLargestCutoffDistance(self, ignoreList: Objects): number
	function GetPanSpeed(self): number
	function GetPartsObscuringTarget(self, castPoints: { any }, ignoreList: Objects): Objects
	function GetRenderCFrame(self): CFrame
	function GetRoll(self): number
	function GetTiltSpeed(self): number
	function Interpolate(self, endPos: CFrame, endFocus: CFrame, duration: number): nil
	function PanUnits(self, units: number): nil
	function ScreenPointToRay(self, x: number, y: number, depth: number?): Ray
	function SetCameraPanMode(self, mode: Enum.CameraPanMode?): nil
	function SetImageServerView(self, modelCoord: CFrame): nil
	function SetRoll(self, rollAngle: number): nil
	function TiltUnits(self, units: number): boolean
	function ViewportPointToRay(self, x: number, y: number, depth: number?): Ray
	function WorldToScreenPoint(self, worldPoint: Vector3): any
	function WorldToViewportPoint(self, worldPoint: Vector3): any
	function Zoom(self, distance: number): boolean
	FirstPersonTransition: RBXScriptSignal
	InterpolationFinished: RBXScriptSignal
end

declare class ChangeHistoryService extends Instance
	function GetCanRedo(self): any
	function GetCanUndo(self): any
	function Redo(self): nil
	function ResetWaypoints(self): nil
	function SetEnabled(self, state: boolean): nil
	function SetWaypoint(self, name: string): nil
	function Undo(self): nil
	OnRedo: RBXScriptSignal
	OnUndo: RBXScriptSignal
end

declare class CharacterAppearance extends Instance
end

declare class BodyColors extends CharacterAppearance
	HeadColor: BrickColor
	HeadColor3: Color3
	LeftArmColor: BrickColor
	LeftArmColor3: Color3
	LeftLegColor: BrickColor
	LeftLegColor3: Color3
	RightArmColor: BrickColor
	RightArmColor3: Color3
	RightLegColor: BrickColor
	RightLegColor3: Color3
	TorsoColor: BrickColor
	TorsoColor3: Color3
end

declare class CharacterMesh extends CharacterAppearance
	BaseTextureId: number
	BodyPart: Enum.BodyPart
	MeshId: number
	OverlayTextureId: number
end

declare class Clothing extends CharacterAppearance
	Color3: Color3
end

declare class Pants extends Clothing
	PantsTemplate: Content
end

declare class Shirt extends Clothing
	ShirtTemplate: Content
end

declare class ShirtGraphic extends CharacterAppearance
	Color3: Color3
	Graphic: Content
end

declare class Skin extends CharacterAppearance
	SkinColor: BrickColor
end

declare class Chat extends Instance
	BubbleChatEnabled: boolean
	LoadDefaultChat: boolean
	function Chat(self, partOrCharacter: Instance, message: string, color: Enum.ChatColor?): nil
	function ChatLocal(self, partOrCharacter: Instance, message: string, color: Enum.ChatColor?): nil
	function GetShouldUseLuaChat(self): boolean
	function InvokeChatCallback(self, callbackType: Enum.ChatCallbackType, callbackArguments: any): any
	function RegisterChatCallback(self, callbackType: Enum.ChatCallbackType, callbackFunction: Function): nil
	function SetBubbleChatSettings(self, settings: any): nil
	function CanUserChatAsync(self, userId: number): boolean
	function CanUsersChatAsync(self, userIdFrom: number, userIdTo: number): boolean
	function FilterStringAsync(self, stringToFilter: string, playerFrom: Player, playerTo: Player): string
	function FilterStringForBroadcast(self, stringToFilter: string, playerFrom: Player): string
	function FilterStringForPlayerAsync(self, stringToFilter: string, playerToFilterFor: Player): string
	BubbleChatSettingsChanged: RBXScriptSignal
	Chatted: RBXScriptSignal
end

declare class ClickDetector extends Instance
	CursorIcon: Content
	MaxActivationDistance: number
	MouseClick: RBXScriptSignal
	MouseHoverEnter: RBXScriptSignal
	MouseHoverLeave: RBXScriptSignal
	RightMouseClick: RBXScriptSignal
	mouseClick: RBXScriptSignal
end

declare class Clouds extends Instance
	Color: Color3
	Cover: number
	Density: number
	Enabled: boolean
end

declare class ClusterPacketCache extends Instance
end

declare class CollectionService extends Instance
	function AddTag(self, instance: Instance, tag: string): nil
	function GetCollection(self, class: string): Objects
	function GetInstanceAddedSignal(self, tag: string): RBXScriptSignal
	function GetInstanceRemovedSignal(self, tag: string): RBXScriptSignal
	function GetTagged(self, tag: string): Objects
	function GetTags(self, instance: Instance): { any }
	function HasTag(self, instance: Instance, tag: string): boolean
	function RemoveTag(self, instance: Instance, tag: string): nil
	ItemAdded: RBXScriptSignal
	ItemRemoved: RBXScriptSignal
end

declare class CommandInstance extends Instance
	AllowGUIAccessPoints: boolean
	Checked: boolean
	DefaultShortcut: string
	DisplayName: string
	Enabled: boolean
	Icon: string
	Name: string
	Permission: Enum.CommandPermission
	StatusTip: string
	function EnableGuiAccess(self, displayName: string, statusTip: string, defaultShortcut: string): nil
	function RegisterExecutionCallback(self, callbackFunction: Function): nil
end

declare class CommandService extends Instance
	function Execute(self, name: string, params: any): any
	function RegisterCommand(self, plugin: Plugin, name: string, context: string, permission: Enum.CommandPermission?): CommandInstance
	CommandExecuting: RBXScriptSignal
end

declare class Configuration extends Instance
end

declare class ConfigureServerService extends Instance
end

declare class Constraint extends Instance
	Active: boolean
	Attachment0: Attachment
	Attachment1: Attachment
	Color: BrickColor
	Enabled: boolean
	Visible: boolean
end

declare class AlignOrientation extends Constraint
	AlignType: Enum.AlignType
	CFrame: CFrame
	MaxAngularVelocity: number
	MaxTorque: number
	Mode: Enum.OrientationAlignmentMode
	PrimaryAxis: Vector3
	PrimaryAxisOnly: boolean
	ReactionTorqueEnabled: boolean
	Responsiveness: number
	RigidityEnabled: boolean
	SecondaryAxis: Vector3
end

declare class AlignPosition extends Constraint
	ApplyAtCenterOfMass: boolean
	MaxForce: number
	MaxVelocity: number
	Mode: Enum.PositionAlignmentMode
	Position: Vector3
	ReactionForceEnabled: boolean
	Responsiveness: number
	RigidityEnabled: boolean
end

declare class AngularVelocity extends Constraint
	AngularVelocity: Vector3
	MaxTorque: number
	ReactionTorqueEnabled: boolean
	RelativeTo: Enum.ActuatorRelativeTo
end

declare class BallSocketConstraint extends Constraint
	LimitsEnabled: boolean
	MaxFrictionTorque: number
	Radius: number
	Restitution: number
	TwistLimitsEnabled: boolean
	TwistLowerAngle: number
	TwistUpperAngle: number
	UpperAngle: number
end

declare class HingeConstraint extends Constraint
	ActuatorType: Enum.ActuatorType
	AngularResponsiveness: number
	AngularSpeed: number
	AngularVelocity: number
	CurrentAngle: number
	LimitsEnabled: boolean
	LowerAngle: number
	MotorMaxAcceleration: number
	MotorMaxTorque: number
	Radius: number
	Restitution: number
	ServoMaxTorque: number
	TargetAngle: number
	UpperAngle: number
end

declare class LineForce extends Constraint
	ApplyAtCenterOfMass: boolean
	InverseSquareLaw: boolean
	Magnitude: number
	MaxForce: number
	ReactionForceEnabled: boolean
end

declare class LinearVelocity extends Constraint
	LineDirection: Vector3
	LineVelocity: number
	MaxForce: number
	PlaneVelocity: Vector2
	PrimaryTangentAxis: Vector3
	RelativeTo: Enum.ActuatorRelativeTo
	SecondaryTangentAxis: Vector3
	VectorVelocity: Vector3
	VelocityConstraintMode: Enum.VelocityConstraintMode
end

declare class Plane extends Constraint
end

declare class RigidConstraint extends Constraint
	Broken: boolean
	DestructionEnabled: boolean
	DestructionForce: number
	DestructionTorque: number
end

declare class RodConstraint extends Constraint
	CurrentDistance: number
	Length: number
	LimitAngle0: number
	LimitAngle1: number
	LimitsEnabled: boolean
	Thickness: number
end

declare class RopeConstraint extends Constraint
	CurrentDistance: number
	Length: number
	Restitution: number
	Thickness: number
	WinchEnabled: boolean
	WinchForce: number
	WinchResponsiveness: number
	WinchSpeed: number
	WinchTarget: number
end

declare class SlidingBallConstraint extends Constraint
	ActuatorType: Enum.ActuatorType
	CurrentPosition: number
	LimitsEnabled: boolean
	LinearResponsiveness: number
	LowerLimit: number
	MotorMaxAcceleration: number
	MotorMaxForce: number
	Restitution: number
	ServoMaxForce: number
	Size: number
	Speed: number
	TargetPosition: number
	UpperLimit: number
	Velocity: number
end

declare class CylindricalConstraint extends SlidingBallConstraint
	AngularActuatorType: Enum.ActuatorType
	AngularLimitsEnabled: boolean
	AngularResponsiveness: number
	AngularRestitution: number
	AngularSpeed: number
	AngularVelocity: number
	CurrentAngle: number
	InclinationAngle: number
	LowerAngle: number
	MotorMaxAngularAcceleration: number
	MotorMaxTorque: number
	RotationAxisVisible: boolean
	ServoMaxTorque: number
	TargetAngle: number
	UpperAngle: number
	WorldRotationAxis: Vector3
end

declare class PrismaticConstraint extends SlidingBallConstraint
end

declare class SpringConstraint extends Constraint
	Coils: number
	CurrentLength: number
	Damping: number
	FreeLength: number
	LimitsEnabled: boolean
	MaxForce: number
	MaxLength: number
	MinLength: number
	Radius: number
	Stiffness: number
	Thickness: number
end

declare class Torque extends Constraint
	RelativeTo: Enum.ActuatorRelativeTo
	Torque: Vector3
end

declare class TorsionSpringConstraint extends Constraint
	Coils: number
	CurrentAngle: number
	Damping: number
	LimitEnabled: boolean
	LimitsEnabled: boolean
	MaxAngle: number
	MaxTorque: number
	Radius: number
	Restitution: number
	Stiffness: number
end

declare class UniversalConstraint extends Constraint
	LimitsEnabled: boolean
	MaxAngle: number
	Radius: number
	Restitution: number
end

declare class VectorForce extends Constraint
	ApplyAtCenterOfMass: boolean
	Force: Vector3
	RelativeTo: Enum.ActuatorRelativeTo
end

declare class ContentProvider extends Instance
	BaseUrl: string
	RequestQueueSize: number
	function CalculateNumTrianglesInMeshSync(self, meshId: string): number
	function GetDetailedFailedRequests(self): { any }
	function GetFailedRequests(self): { any }
	function ListEncryptedAssets(self): { any }
	function Preload(self, contentId: Content): nil
	function RegisterDefaultEncryptionKey(self, encryptionKey: string): nil
	function RegisterDefaultSessionKey(self, sessionKey: string): nil
	function RegisterEncryptedAsset(self, assetId: Content, encryptionKey: string): nil
	function RegisterSessionEncryptedAsset(self, contentId: Content, sessionKey: string): nil
	function SetBaseUrl(self, url: string): nil
	function UnregisterDefaultEncryptionKey(self): nil
	function UnregisterEncryptedAsset(self, assetId: Content): nil
	function CalculateNumTrianglesInMesh(self, meshId: string): number
	function PreloadAsync(self, contentIdList: { any }, callbackFunction: Function?): nil
	AssetFetchFailed: RBXScriptSignal
end

declare class ContextActionService extends Instance
	function BindAction(self, actionName: string, functionToBind: Function, createTouchButton: boolean, inputTypes: any): nil
	function BindActionAtPriority(self, actionName: string, functionToBind: Function, createTouchButton: boolean, priorityLevel: number, inputTypes: any): nil
	function BindActionToInputTypes(self, actionName: string, functionToBind: Function, createTouchButton: boolean, inputTypes: any): nil
	function BindActivate(self, userInputTypeForActivation: Enum.UserInputType, keyCodeForActivation: Enum.KeyCode?): nil
	function BindCoreAction(self, actionName: string, functionToBind: Function, createTouchButton: boolean, inputTypes: any): nil
	function BindCoreActionAtPriority(self, actionName: string, functionToBind: Function, createTouchButton: boolean, priorityLevel: number, inputTypes: any): nil
	function CallFunction(self, actionName: string, state: Enum.UserInputState, inputObject: Instance): any
	function FireActionButtonFoundSignal(self, actionName: string, actionButton: Instance): nil
	function GetAllBoundActionInfo(self): { [any]: any }
	function GetAllBoundCoreActionInfo(self): { [any]: any }
	function GetBoundActionInfo(self, actionName: string): { [any]: any }
	function GetBoundCoreActionInfo(self, actionName: string): { [any]: any }
	function GetCurrentLocalToolIcon(self): string
	function SetDescription(self, actionName: string, description: string): nil
	function SetImage(self, actionName: string, image: string): nil
	function SetPosition(self, actionName: string, position: UDim2): nil
	function SetTitle(self, actionName: string, title: string): nil
	function UnbindAction(self, actionName: string): nil
	function UnbindActivate(self, userInputTypeForActivation: Enum.UserInputType, keyCodeForActivation: Enum.KeyCode?): nil
	function UnbindAllActions(self): nil
	function UnbindCoreAction(self, actionName: string): nil
	function GetButton(self, actionName: string): Instance
	BoundActionAdded: RBXScriptSignal
	BoundActionChanged: RBXScriptSignal
	BoundActionRemoved: RBXScriptSignal
	GetActionButtonEvent: RBXScriptSignal
	LocalToolEquipped: RBXScriptSignal
	LocalToolUnequipped: RBXScriptSignal
end

declare class Controller extends Instance
	function BindButton(self, button: Enum.Button, caption: string): nil
	function GetButton(self, button: Enum.Button): boolean
	function UnbindButton(self, button: Enum.Button): nil
	function bindButton(self, button: Enum.Button, caption: string): nil
	function getButton(self, button: Enum.Button): boolean
	ButtonChanged: RBXScriptSignal
end

declare class HumanoidController extends Controller
end

declare class SkateboardController extends Controller
	Steer: number
	Throttle: number
	AxisChanged: RBXScriptSignal
end

declare class VehicleController extends Controller
end

declare class ControllerService extends Instance
end

declare class CookiesService extends Instance
end

declare class CorePackages extends Instance
end

declare class CoreScriptSyncService extends Instance
	function GetScriptFilePath(self, script: Instance): any
end

declare class CrossDMScriptChangeListener extends Instance
	function IsWatchingScriptLine(self, scriptRef: string, lineNumber: number): boolean
	function StartWatchingScriptLine(self, scriptRef: string, debuggerConnectionId: number, lineNumber: number): nil
	GuidLineContentsChanged: RBXScriptSignal
	GuidNameChanged: RBXScriptSignal
end

declare class CustomEvent extends Instance
	function GetAttachedReceivers(self): Objects
	function SetValue(self, newValue: number): nil
	ReceiverConnected: RBXScriptSignal
	ReceiverDisconnected: RBXScriptSignal
end

declare class CustomEventReceiver extends Instance
	Source: Instance
	function GetCurrentValue(self): number
	EventConnected: RBXScriptSignal
	EventDisconnected: RBXScriptSignal
	SourceValueChanged: RBXScriptSignal
end

declare class DataModelMesh extends Instance
	Offset: Vector3
	Scale: Vector3
	VertexColor: Vector3
end

declare class BevelMesh extends DataModelMesh
end

declare class BlockMesh extends BevelMesh
end

declare class CylinderMesh extends BevelMesh
end

declare class FileMesh extends DataModelMesh
	MeshId: Content
	TextureId: Content
end

declare class SpecialMesh extends FileMesh
	MeshType: Enum.MeshType
end

declare class DataModelPatchService extends Instance
	function GetPatch(self, patchName: string): Instance
	function RegisterPatch(self, patchName: string, behaviorName: string, localConfigPath: string, userId: number): nil
	function UpdatePatch(self, userId: number, patchName: string, callbackFunction: Function): nil
end

declare class DataModelSession extends Instance
	CurrentDataModelType: Enum.StudioDataModelType
	SessionId: string
	CurrentDataModelTypeAboutToChange: RBXScriptSignal
	CurrentDataModelTypeChanged: RBXScriptSignal
	DataModelCreated: RBXScriptSignal
	DataModelWillBeDestroyed: RBXScriptSignal
end

declare class DataStoreIncrementOptions extends Instance
	function GetMetadata(self): { [any]: any }
	function SetMetadata(self, attributes: { [any]: any }): nil
end

declare class DataStoreInfo extends Instance
	CreatedTime: number
	DataStoreName: string
	UpdatedTime: number
end

declare class DataStoreKey extends Instance
	KeyName: string
end

declare class DataStoreKeyInfo extends Instance
	CreatedTime: number
	UpdatedTime: number
	Version: string
	function GetMetadata(self): { [any]: any }
	function GetUserIds(self): { any }
end

declare class DataStoreObjectVersionInfo extends Instance
	CreatedTime: number
	IsDeleted: boolean
	Version: string
end

declare class DataStoreOptions extends Instance
	AllScopes: boolean
	function SetExperimentalFeatures(self, experimentalFeatures: { [any]: any }): nil
end

declare class DataStoreService extends Instance
	AutomaticRetry: boolean
	LegacyNamingScheme: boolean
	function GetDataStore(self, name: string, scope: string?, options: Instance?): GlobalDataStore
	function GetGlobalDataStore(self): GlobalDataStore
	function GetOrderedDataStore(self, name: string, scope: string?): OrderedDataStore
	function GetRequestBudgetForRequestType(self, requestType: Enum.DataStoreRequestType): number
	function ListDataStoresAsync(self, prefix: string?, pageSize: number?): DataStoreListingPages
end

declare class DataStoreSetOptions extends Instance
	function GetMetadata(self): { [any]: any }
	function SetMetadata(self, attributes: { [any]: any }): nil
end

declare class Debris extends Instance
	MaxItems: number
	function AddItem(self, item: Instance, lifetime: number?): nil
	function SetLegacyMaxItems(self, enabled: boolean): nil
	function addItem(self, item: Instance, lifetime: number?): nil
end

declare class DebugSettings extends Instance
	DataModel: number
	InstanceCount: number
	IsScriptStackTracingEnabled: boolean
	JobCount: number
	PlayerCount: number
	ReportSoundWarnings: boolean
	RobloxVersion: string
	TickCountPreciseOverride: Enum.TickCountSampleMethod
end

declare class DebuggablePluginWatcher extends Instance
end

declare class DebuggerBreakpoint extends Instance
	Condition: string
	ContinueExecution: boolean
	IsEnabled: boolean
	Line: number
	LogExpression: string
	isContextDependentBreakpoint: boolean
end

declare class DebuggerConnection extends Instance
	ErrorMessage: string
	HasError: boolean
	Id: number
	IsPaused: boolean
	function AddBreakpoint(self, script: string, line: number, breakpoint: Breakpoint): nil
	function Close(self): nil
	function EvaluateWatch(self, expression: string, frame: StackFrame, callback: Function): number
	function GetFrameById(self, id: number): StackFrame
	function GetSource(self, scriptRef: string, status: Function): number
	function GetThreadById(self, id: number): ThreadState
	function GetThreads(self, callback: Function): number
	function GetVariableById(self, id: number): DebuggerVariable
	function Pause(self, thread: ThreadState, status: Function): number
	function Populate(self, instance: Instance, callback: Function): number
	function RemoveBreakpoint(self, breakpoint: Breakpoint): nil
	function Resume(self, thread: ThreadState, status: Function): number
	function SetExceptionBreakMode(self, breakMode: Enum.DebuggerExceptionBreakMode, callback: Function): number
	function SetVariable(self, variable: DebuggerVariable, value: string, callback: Function): number
	function Step(self, thread: ThreadState, callback: Function): number
	function StepIn(self, thread: ThreadState, callback: Function): number
	function StepOut(self, thread: ThreadState, callback: Function): number
	BreakpointAdded: RBXScriptSignal
	BreakpointChanged: RBXScriptSignal
	BreakpointRemoved: RBXScriptSignal
	Paused: RBXScriptSignal
	Resumed: RBXScriptSignal
end

declare class LocalDebuggerConnection extends DebuggerConnection
end

declare class DebuggerConnectionManager extends Instance
	Timeout: number
	function ConnectLocal(self, dataModel: DataModel): number
	function ConnectRemote(self, host: string, port: number): number
	function FocusConnection(self, connection: DebuggerConnection): nil
	function GetConnectionById(self, id: number): DebuggerConnection
	ConnectionEnded: RBXScriptSignal
	ConnectionStarted: RBXScriptSignal
	FocusChanged: RBXScriptSignal
end

declare class DebuggerLuaResponse extends Instance
	IsError: boolean
	IsSuccess: boolean
	Message: string
	RequestId: number
	Status: Enum.DebuggerStatus
	function GetArg(self): any
end

declare class DebuggerManager extends Instance
	DebuggingEnabled: boolean
	function AddDebugger(self, script: Instance): Instance
	function EnableDebugging(self): nil
	function GetDebuggers(self): Objects
	function Resume(self): nil
	function StepIn(self): nil
	function StepOut(self): nil
	function StepOver(self): nil
	DebuggerAdded: RBXScriptSignal
	DebuggerRemoved: RBXScriptSignal
end

declare class DebuggerUIService extends Instance
	function EditBreakpoint(self, metaBreakpointId: number): nil
	function EditWatch(self, expression: string): nil
	function IsConnectionForPlayDataModel(self, debuggerConnectionId: number): boolean
	function OpenScriptAtLine(self, guid: string, debuggerConnectionId: number, line: number): nil
	function Pause(self): nil
	function RemoveScriptLineMarkers(self, debuggerConnectionId: number, allMarkers: boolean): nil
	function Resume(self): nil
	function SetCurrentThreadId(self, debuggerThreadId: number): nil
	function SetScriptLineMarker(self, guid: string, debuggerConnectionId: number, line: number, lineMarkerType: boolean): nil
end

declare class DebuggerVariable extends Instance
	Name: string
	Populated: boolean
	Type: string
	Value: string
	VariableId: number
	VariablesCount: number
	function GetVariableByIndex(self, index: number): DebuggerVariable
	function GetVariableByName(self, name: string): DebuggerVariable
end

declare class DebuggerWatch extends Instance
	Expression: string
end

declare class Dialog extends Instance
	BehaviorType: Enum.DialogBehaviorType
	ConversationDistance: number
	GoodbyeChoiceActive: boolean
	GoodbyeDialog: string
	InUse: boolean
	InitialPrompt: string
	Purpose: Enum.DialogPurpose
	Tone: Enum.DialogTone
	TriggerDistance: number
	TriggerOffset: Vector3
	function GetCurrentPlayers(self): Objects
	function SetPlayerIsUsing(self, player: Instance, isUsing: boolean): nil
	function SignalDialogChoiceSelected(self, player: Instance, dialogChoice: Instance): nil
	DialogChoiceSelected: RBXScriptSignal
end

declare class DialogChoice extends Instance
	GoodbyeChoiceActive: boolean
	GoodbyeDialog: string
	ResponseDialog: string
	UserDialog: string
end

declare class DraftsService extends Instance
	function DiscardEdits(self, scripts: Objects): nil
	function GetDraftStatus(self, script: Instance): Enum.DraftStatusCode
	function GetEditors(self, script: Instance): Objects
	function RestoreScripts(self, scripts: Objects): nil
	function ShowDiffsAgainstBase(self, scripts: Objects): nil
	function ShowDiffsAgainstServer(self, scripts: Objects): nil
	function CommitEdits(self, scripts: Objects): nil
	function GetDrafts(self): Objects
	function UpdateToLatestVersion(self, scripts: Objects): nil
	CommitStatusChanged: RBXScriptSignal
	DraftAdded: RBXScriptSignal
	DraftRemoved: RBXScriptSignal
	DraftStatusChanged: RBXScriptSignal
	EditorsListChanged: RBXScriptSignal
	UpdateStatusChanged: RBXScriptSignal
end

declare class Dragger extends Instance
	function AxisRotate(self, axis: Enum.Axis?): nil
	function MouseDown(self, mousePart: Instance, pointOnMousePart: Vector3, parts: Objects): nil
	function MouseMove(self, mouseRay: Ray): nil
	function MouseUp(self): nil
end

declare class DraggerService extends Instance
	AlignDraggedObjects: boolean
	AngleSnapEnabled: boolean
	AngleSnapIncrement: number
	AnimateHover: boolean
	CollisionsEnabled: boolean
	DraggerCoordinateSpace: Enum.DraggerCoordinateSpace
	DraggerMovementMode: Enum.DraggerMovementMode
	GeometrySnapColor: Color3
	HoverAnimateFrequency: number
	HoverThickness: number
	JointsEnabled: boolean
	LinearSnapEnabled: boolean
	LinearSnapIncrement: number
	PivotSnapToGeometry: boolean
	ShowHover: boolean
	ShowPivotIndicator: boolean
end

declare class EulerRotationCurve extends Instance
	RotationOrder: Enum.RotationOrder
	function GetAnglesAtTime(self, time: number): { any }
	function GetRotationAtTime(self, time: number): CFrame
	function X(self): FloatCurve
	function Y(self): FloatCurve
	function Z(self): FloatCurve
end

declare class EventIngestService extends Instance
	function SendEventDeferred(self, target: string, eventContext: string, eventName: string, additionalArgs: { [any]: any }): nil
	function SendEventImmediately(self, target: string, eventContext: string, eventName: string, additionalArgs: { [any]: any }): nil
	function SetRBXEvent(self, target: string, eventContext: string, eventName: string, additionalArgs: { [any]: any }): nil
	function SetRBXEventStream(self, target: string, eventContext: string, eventName: string, additionalArgs: { [any]: any }): nil
end

declare class Explosion extends Instance
	BlastPressure: number
	BlastRadius: number
	DestroyJointRadiusPercent: number
	ExplosionType: Enum.ExplosionType
	Position: Vector3
	TimeScale: number
	Visible: boolean
	Hit: RBXScriptSignal
end

declare class FaceControls extends Instance
	ChinRaiser: number
	ChinRaiserUpperLip: number
	Corrugator: number
	EyesLookDown: number
	EyesLookLeft: number
	EyesLookRight: number
	EyesLookUp: number
	FlatPucker: number
	Funneler: number
	JawDrop: number
	JawLeft: number
	JawRight: number
	LeftBrowLowerer: number
	LeftCheekPuff: number
	LeftCheekRaiser: number
	LeftDimpler: number
	LeftEyeClosed: number
	LeftEyeUpperLidRaiser: number
	LeftInnerBrowRaiser: number
	LeftLipCornerDown: number
	LeftLipCornerPuller: number
	LeftLipStretcher: number
	LeftLowerLipDepressor: number
	LeftNoseWrinkler: number
	LeftOuterBrowRaiser: number
	LeftUpperLipRaiser: number
	LipPresser: number
	LipsTogether: number
	LowerLipSuck: number
	MouthLeft: number
	MouthRight: number
	Pucker: number
	RightBrowLowerer: number
	RightCheekPuff: number
	RightCheekRaiser: number
	RightDimpler: number
	RightEyeClosed: number
	RightEyeUpperLidRaiser: number
	RightInnerBrowRaiser: number
	RightLipCornerDown: number
	RightLipCornerPuller: number
	RightLipStretcher: number
	RightLowerLipDepressor: number
	RightNoseWrinkler: number
	RightOuterBrowRaiser: number
	RightUpperLipRaiser: number
	TongueDown: number
	TongueOut: number
	TongueUp: number
	UpperLipSuck: number
end

declare class FaceInstance extends Instance
	Face: Enum.NormalId
end

declare class Decal extends FaceInstance
	Color3: Color3
	LocalTransparencyModifier: number
	Shiny: number
	Specular: number
	Texture: Content
	Transparency: number
	ZIndex: number
end

declare class Texture extends Decal
	OffsetStudsU: number
	OffsetStudsV: number
	StudsPerTileU: number
	StudsPerTileV: number
end

declare class Feature extends Instance
	FaceId: Enum.NormalId
	InOut: Enum.InOut
	LeftRight: Enum.LeftRight
	TopBottom: Enum.TopBottom
end

declare class Hole extends Feature
end

declare class MotorFeature extends Feature
end

declare class File extends Instance
	Size: number
	function GetBinaryContents(self): string
	function GetTemporaryId(self): Content
end

declare class Fire extends Instance
	Color: Color3
	Enabled: boolean
	Heat: number
	SecondaryColor: Color3
	Size: number
	TimeScale: number
	size: number
end

declare class FlagStandService extends Instance
end

declare class FloatCurve extends Instance
	Length: number
	function GetKeyAtIndex(self, index: number): FloatCurveKey
	function GetKeyIndicesAtTime(self, time: number): { any }
	function GetKeys(self): { any }
	function GetValueAtTime(self, time: number): number?
	function InsertKey(self, key: FloatCurveKey): { any }
	function RemoveKeyAtIndex(self, startingIndex: number, count: number?): number
	function SetKeys(self, keys: { any }): number
end

declare class FlyweightService extends Instance
end

declare class CSGDictionaryService extends FlyweightService
end

declare class NonReplicatedCSGDictionaryService extends FlyweightService
end

declare class Folder extends Instance
end

declare class ForceField extends Instance
	Visible: boolean
end

declare class FriendService extends Instance
	function GetPlatformFriends(self): { any }
	FriendsUpdated: RBXScriptSignal
end

declare class FunctionalTest extends Instance
	Description: string
	function Error(self, message: string?): nil
	function Failed(self, message: string?): nil
	function Pass(self, message: string?): nil
	function Passed(self, message: string?): nil
	function Warn(self, message: string?): nil
end

declare class GamePassService extends Instance
	function PlayerHasPass(self, player: Player, gamePassId: number): boolean
end

declare class GameSettings extends Instance
	AdditionalCoreIncludeDirs: string
	OverrideStarterScript: string
	VideoCaptureEnabled: boolean
	VideoRecording: boolean
	VideoRecordingChangeRequest: RBXScriptSignal
end

declare class GamepadService extends Instance
	GamepadCursorEnabled: boolean
	function DisableGamepadCursor(self): nil
	function EnableGamepadCursor(self, guiObject: Instance): nil
	function GetGamepadCursorPosition(self): Vector2
	function SetGamepadCursorPosition(self, position: Vector2): nil
	GamepadThumbstick1Changed: RBXScriptSignal
end

declare class Geometry extends Instance
end

declare class GlobalDataStore extends Instance
	function OnUpdate(self, key: string, callback: Function): RBXScriptConnection
	function GetAsync(self, key: string): any
	function IncrementAsync(self, key: string, delta: number?, userIds: { any }?, options: DataStoreIncrementOptions?): any
	function RemoveAsync(self, key: string): any
	function SetAsync(self, key: string, value: any, userIds: { any }?, options: DataStoreSetOptions?): any
	function UpdateAsync(self, key: string, transformFunction: Function): any
end

declare class DataStore extends GlobalDataStore
	function GetVersionAsync(self, key: string, version: string): any
	function ListKeysAsync(self, prefix: string?, pageSize: number?): DataStoreKeyPages
	function ListVersionsAsync(self, key: string, sortDirection: Enum.SortDirection?, minDate: number?, maxDate: number?, pageSize: number?): DataStoreVersionPages
	function RemoveVersionAsync(self, key: string, version: string): nil
end

declare class OrderedDataStore extends GlobalDataStore
	function GetSortedAsync(self, ascending: boolean, pagesize: number, minValue: any, maxValue: any): Instance
end

declare class GoogleAnalyticsConfiguration extends Instance
end

declare class GroupService extends Instance
	function GetAlliesAsync(self, groupId: number): StandardPages
	function GetEnemiesAsync(self, groupId: number): StandardPages
	function GetGroupInfoAsync(self, groupId: number): any
	function GetGroupsAsync(self, userId: number): { any }
end

declare class GuiBase extends Instance
end

declare class GuiBase2d extends GuiBase
	AbsolutePosition: Vector2
	AbsoluteRotation: number
	AbsoluteSize: Vector2
	AutoLocalize: boolean
	ClippedRect: Rect
	IsNotOccluded: boolean
	Localize: boolean
	RawRect2D: Rect
	RootLocalizationTable: LocalizationTable
	TotalGroupScale: number
end

declare class GuiObject extends GuiBase2d
	Active: boolean
	AnchorPoint: Vector2
	AutomaticSize: Enum.AutomaticSize
	BackgroundColor: BrickColor
	BackgroundColor3: Color3
	BackgroundTransparency: number
	BorderColor: BrickColor
	BorderColor3: Color3
	BorderMode: Enum.BorderMode
	BorderSizePixel: number
	ClipsDescendants: boolean
	Draggable: boolean
	LayoutOrder: number
	NextSelectionDown: GuiObject
	NextSelectionLeft: GuiObject
	NextSelectionRight: GuiObject
	NextSelectionUp: GuiObject
	Position: UDim2
	Rotation: number
	Selectable: boolean
	SelectionImageObject: GuiObject
	Size: UDim2
	SizeConstraint: Enum.SizeConstraint
	Transparency: number
	Visible: boolean
	ZIndex: number
	function TweenPosition(self, endPosition: UDim2, easingDirection: Enum.EasingDirection?, easingStyle: Enum.EasingStyle?, time: number?, override: boolean?, callback: Function?): boolean
	function TweenSize(self, endSize: UDim2, easingDirection: Enum.EasingDirection?, easingStyle: Enum.EasingStyle?, time: number?, override: boolean?, callback: Function?): boolean
	function TweenSizeAndPosition(self, endSize: UDim2, endPosition: UDim2, easingDirection: Enum.EasingDirection?, easingStyle: Enum.EasingStyle?, time: number?, override: boolean?, callback: Function?): boolean
	DragBegin: RBXScriptSignal
	DragStopped: RBXScriptSignal
	InputBegan: RBXScriptSignal
	InputChanged: RBXScriptSignal
	InputEnded: RBXScriptSignal
	MouseEnter: RBXScriptSignal
	MouseLeave: RBXScriptSignal
	MouseMoved: RBXScriptSignal
	MouseWheelBackward: RBXScriptSignal
	MouseWheelForward: RBXScriptSignal
	SelectionGained: RBXScriptSignal
	SelectionLost: RBXScriptSignal
	TouchLongPress: RBXScriptSignal
	TouchPan: RBXScriptSignal
	TouchPinch: RBXScriptSignal
	TouchRotate: RBXScriptSignal
	TouchSwipe: RBXScriptSignal
	TouchTap: RBXScriptSignal
end

declare class CanvasGroup extends GuiObject
	GroupColor: Color3
	GroupTransparency: number
end

declare class Frame extends GuiObject
	Style: Enum.FrameStyle
end

declare class GuiButton extends GuiObject
	AutoButtonColor: boolean
	Modal: boolean
	Selected: boolean
	Style: Enum.ButtonStyle
	Activated: RBXScriptSignal
	MouseButton1Click: RBXScriptSignal
	MouseButton1Down: RBXScriptSignal
	MouseButton1Up: RBXScriptSignal
	MouseButton2Click: RBXScriptSignal
	MouseButton2Down: RBXScriptSignal
	MouseButton2Up: RBXScriptSignal
end

declare class ImageButton extends GuiButton
	ContentImageSize: Vector2
	HoverImage: Content
	Image: Content
	ImageColor3: Color3
	ImageRectOffset: Vector2
	ImageRectSize: Vector2
	ImageTransparency: number
	IsLoaded: boolean
	PressedImage: Content
	ResampleMode: Enum.ResamplerMode
	ScaleType: Enum.ScaleType
	SliceCenter: Rect
	SliceScale: number
	TileSize: UDim2
	function SetEnableContentImageSizeChangedEvents(self, enabled: boolean): nil
end

declare class TextButton extends GuiButton
	ContentText: string
	Font: Enum.Font
	FontFace: Font
	FontSize: Enum.FontSize
	LineHeight: number
	LocalizedText: string
	MaxVisibleGraphemes: number
	RichText: boolean
	Text: string
	TextBounds: Vector2
	TextColor: BrickColor
	TextColor3: Color3
	TextFits: boolean
	TextScaled: boolean
	TextSize: number
	TextStrokeColor3: Color3
	TextStrokeTransparency: number
	TextTransparency: number
	TextTruncate: Enum.TextTruncate
	TextWrap: boolean
	TextWrapped: boolean
	TextXAlignment: Enum.TextXAlignment
	TextYAlignment: Enum.TextYAlignment
	function SetTextFromInput(self, text: string): nil
end

declare class GuiLabel extends GuiObject
end

declare class ImageLabel extends GuiLabel
	ContentImageSize: Vector2
	Image: Content
	ImageColor3: Color3
	ImageRectOffset: Vector2
	ImageRectSize: Vector2
	ImageTransparency: number
	IsLoaded: boolean
	ResampleMode: Enum.ResamplerMode
	ScaleType: Enum.ScaleType
	SliceCenter: Rect
	SliceScale: number
	TileSize: UDim2
	function SetEnableContentImageSizeChangedEvents(self, enabled: boolean): nil
end

declare class TextLabel extends GuiLabel
	ContentText: string
	Font: Enum.Font
	FontFace: Font
	FontSize: Enum.FontSize
	LineHeight: number
	LocalizedText: string
	MaxVisibleGraphemes: number
	RichText: boolean
	Text: string
	TextBounds: Vector2
	TextColor: BrickColor
	TextColor3: Color3
	TextFits: boolean
	TextScaled: boolean
	TextSize: number
	TextStrokeColor3: Color3
	TextStrokeTransparency: number
	TextTransparency: number
	TextTruncate: Enum.TextTruncate
	TextWrap: boolean
	TextWrapped: boolean
	TextXAlignment: Enum.TextXAlignment
	TextYAlignment: Enum.TextYAlignment
	function SetTextFromInput(self, text: string): nil
end

declare class ScrollingFrame extends GuiObject
	AbsoluteCanvasSize: Vector2
	AbsoluteWindowSize: Vector2
	AutomaticCanvasSize: Enum.AutomaticSize
	BottomImage: Content
	CanvasPosition: Vector2
	CanvasSize: UDim2
	ElasticBehavior: Enum.ElasticBehavior
	HorizontalBarRect: Rect
	HorizontalScrollBarInset: Enum.ScrollBarInset
	MaxCanvasPosition: Vector2
	MidImage: Content
	ScrollBarImageColor3: Color3
	ScrollBarImageTransparency: number
	ScrollBarThickness: number
	ScrollVelocity: Vector2
	ScrollingDirection: Enum.ScrollingDirection
	ScrollingEnabled: boolean
	TopImage: Content
	VerticalBarRect: Rect
	VerticalScrollBarInset: Enum.ScrollBarInset
	VerticalScrollBarPosition: Enum.VerticalScrollBarPosition
	function ClearInertialScrolling(self): nil
	function GetSampledInertialVelocity(self): Vector2
	function ScrollToTop(self): nil
end

declare class TextBox extends GuiObject
	ClearTextOnFocus: boolean
	ContentText: string
	CursorPosition: number
	EnableRealtimeFilteringHints: boolean
	Font: Enum.Font
	FontFace: Font
	FontSize: Enum.FontSize
	LineHeight: number
	ManualFocusRelease: boolean
	MaxVisibleGraphemes: number
	MultiLine: boolean
	OverlayNativeInput: boolean
	PlaceholderColor3: Color3
	PlaceholderText: string
	ReturnKeyType: Enum.ReturnKeyType
	RichText: boolean
	SelectionStart: number
	ShowNativeInput: boolean
	Text: string
	TextBounds: Vector2
	TextColor: BrickColor
	TextColor3: Color3
	TextEditable: boolean
	TextFits: boolean
	TextInputType: Enum.TextInputType
	TextScaled: boolean
	TextSize: number
	TextStrokeColor3: Color3
	TextStrokeTransparency: number
	TextTransparency: number
	TextTruncate: Enum.TextTruncate
	TextWrap: boolean
	TextWrapped: boolean
	TextXAlignment: Enum.TextXAlignment
	TextYAlignment: Enum.TextYAlignment
	function CaptureFocus(self): nil
	function IsFocused(self): boolean
	function ReleaseFocus(self, submitted: boolean?): nil
	function ResetKeyboardMode(self): nil
	function SetTextFromInput(self, text: string): nil
	FocusLost: RBXScriptSignal
	Focused: RBXScriptSignal
	ReturnPressedFromOnScreenKeyboard: RBXScriptSignal
end

declare class VideoFrame extends GuiObject
	IsLoaded: boolean
	Looped: boolean
	Playing: boolean
	Resolution: Vector2
	TimeLength: number
	TimePosition: number
	Video: Content
	Volume: number
	function Pause(self): nil
	function Play(self): nil
	DidLoop: RBXScriptSignal
	Ended: RBXScriptSignal
	Loaded: RBXScriptSignal
	Paused: RBXScriptSignal
	Played: RBXScriptSignal
end

declare class ViewportFrame extends GuiObject
	Ambient: Color3
	CurrentCamera: Camera
	ImageColor3: Color3
	ImageTransparency: number
	LightColor: Color3
	LightDirection: Vector3
end

declare class LayerCollector extends GuiBase2d
	Enabled: boolean
	ResetOnSpawn: boolean
	ZIndexBehavior: Enum.ZIndexBehavior
	function GetLayoutNodeTree(self): { [any]: any }
end

declare class BillboardGui extends LayerCollector
	Active: boolean
	Adornee: Instance
	AlwaysOnTop: boolean
	Brightness: number
	ClipsDescendants: boolean
	CurrentDistance: number
	DistanceLowerLimit: number
	DistanceStep: number
	DistanceUpperLimit: number
	ExtentsOffset: Vector3
	ExtentsOffsetWorldSpace: Vector3
	LightInfluence: number
	MaxDistance: number
	PlayerToHideFrom: Instance
	Size: UDim2
	SizeOffset: Vector2
	StudsOffset: Vector3
	StudsOffsetWorldSpace: Vector3
	function GetScreenSpaceBounds(self): any
end

declare class PluginGui extends LayerCollector
	Title: string
	function BindToClose(self, func: Function?): nil
	function GetRelativeMousePosition(self): Vector2
	PluginDragDropped: RBXScriptSignal
	PluginDragEntered: RBXScriptSignal
	PluginDragLeft: RBXScriptSignal
	PluginDragMoved: RBXScriptSignal
	WindowFocusReleased: RBXScriptSignal
	WindowFocused: RBXScriptSignal
end

declare class DockWidgetPluginGui extends PluginGui
	HostWidgetWasRestored: boolean
	function RequestRaise(self): nil
end

declare class QWidgetPluginGui extends PluginGui
end

declare class ScreenGui extends LayerCollector
	DisplayOrder: number
	IgnoreGuiInset: boolean
	OnTopOfCoreBlur: boolean
end

declare class GuiMain extends ScreenGui
end

declare class SurfaceGui extends LayerCollector
	Active: boolean
	Adornee: Instance
	AlwaysOnTop: boolean
	Brightness: number
	CanvasSize: Vector2
	ClipsDescendants: boolean
	Face: Enum.NormalId
	LightInfluence: number
	PixelsPerStud: number
	SizingMode: Enum.SurfaceGuiSizingMode
	ToolPunchThroughDistance: number
	ZOffset: number
end

declare class GuiBase3d extends GuiBase
	Color: BrickColor
	Color3: Color3
	Transparency: number
	Visible: boolean
end

declare class FloorWire extends GuiBase3d
	CycleOffset: number
	From: BasePart
	StudsBetweenTextures: number
	Texture: Content
	TextureSize: Vector2
	To: BasePart
	Velocity: number
	WireRadius: number
end

declare class InstanceAdornment extends GuiBase3d
	Adornee: Instance
end

declare class SelectionBox extends InstanceAdornment
	LineThickness: number
	SurfaceColor: BrickColor
	SurfaceColor3: Color3
	SurfaceTransparency: number
end

declare class PVAdornment extends GuiBase3d
	Adornee: PVInstance
end

declare class HandleAdornment extends PVAdornment
	AdornCullingMode: Enum.AdornCullingMode
	AlwaysOnTop: boolean
	CFrame: CFrame
	SizeRelativeOffset: Vector3
	ZIndex: number
	MouseButton1Down: RBXScriptSignal
	MouseButton1Up: RBXScriptSignal
	MouseEnter: RBXScriptSignal
	MouseLeave: RBXScriptSignal
end

declare class BoxHandleAdornment extends HandleAdornment
	Size: Vector3
end

declare class ConeHandleAdornment extends HandleAdornment
	Height: number
	Radius: number
end

declare class CylinderHandleAdornment extends HandleAdornment
	Angle: number
	Height: number
	InnerRadius: number
	Radius: number
end

declare class ImageHandleAdornment extends HandleAdornment
	Image: Content
	Size: Vector2
end

declare class LineHandleAdornment extends HandleAdornment
	Length: number
	Thickness: number
end

declare class SphereHandleAdornment extends HandleAdornment
	Radius: number
end

declare class ParabolaAdornment extends PVAdornment
	A: number
	B: number
	C: number
	Range: number
	Thickness: number
	function FindPartOnParabola(self, ignoreDescendentsTable: Objects): any
end

declare class SelectionSphere extends PVAdornment
	SurfaceColor: BrickColor
	SurfaceColor3: Color3
	SurfaceTransparency: number
end

declare class PartAdornment extends GuiBase3d
	Adornee: BasePart
end

declare class HandlesBase extends PartAdornment
end

declare class ArcHandles extends HandlesBase
	Axes: Axes
	MouseButton1Down: RBXScriptSignal
	MouseButton1Up: RBXScriptSignal
	MouseDrag: RBXScriptSignal
	MouseEnter: RBXScriptSignal
	MouseLeave: RBXScriptSignal
end

declare class Handles extends HandlesBase
	Faces: Faces
	Style: Enum.HandlesStyle
	MouseButton1Down: RBXScriptSignal
	MouseButton1Up: RBXScriptSignal
	MouseDrag: RBXScriptSignal
	MouseEnter: RBXScriptSignal
	MouseLeave: RBXScriptSignal
end

declare class SurfaceSelection extends PartAdornment
	TargetSurface: Enum.NormalId
end

declare class SelectionLasso extends GuiBase3d
	Humanoid: Humanoid
end

declare class SelectionPartLasso extends SelectionLasso
	Part: BasePart
end

declare class SelectionPointLasso extends SelectionLasso
	Point: Vector3
end

declare class GuiService extends Instance
	AutoSelectGuiEnabled: boolean
	CoreEffectFolder: Folder
	CoreGuiFolder: Folder
	CoreGuiNavigationEnabled: boolean
	GuiNavigationEnabled: boolean
	IsModalDialog: boolean
	IsWindows: boolean
	MenuIsOpen: boolean
	SelectedCoreObject: GuiObject
	SelectedObject: GuiObject
	TouchControlsEnabled: boolean
	function AddCenterDialog(self, dialog: Instance, centerDialogType: Enum.CenterDialogType, showFunction: Function, hideFunction: Function): nil
	function AddKey(self, key: string): nil
	function AddSelectionParent(self, selectionName: string, selectionParent: Instance): nil
	function AddSelectionTuple(self, selectionName: string, selections: any): nil
	function AddSpecialKey(self, key: Enum.SpecialKey): nil
	function BroadcastNotification(self, data: string, notificationType: number): nil
	function ClearError(self): nil
	function CloseInspectMenu(self): nil
	function CloseStatsBasedOnInputString(self, input: string): boolean
	function ForceTenFootInterface(self, isForced: boolean): nil
	function GetBrickCount(self): number
	function GetClosestDialogToPosition(self, position: Vector3): Instance
	function GetEmotesMenuOpen(self): boolean
	function GetErrorCode(self): Enum.ConnectionError
	function GetErrorMessage(self): string
	function GetErrorType(self): Enum.ConnectionError
	function GetGameplayPausedNotificationEnabled(self): boolean
	function GetGuiInset(self): any
	function GetInspectMenuEnabled(self): boolean
	function GetNotificationTypeList(self): { [any]: any }
	function GetResolutionScale(self): number
	function GetSafeZoneOffsets(self): { [any]: any }
	function GetUiMessage(self): string
	function InspectPlayerFromHumanoidDescription(self, humanoidDescription: Instance, name: string): nil
	function InspectPlayerFromUserId(self, userId: number): nil
	function InspectPlayerFromUserIdWithCtx(self, userId: number, ctx: string): nil
	function IsMemoryTrackerEnabled(self): boolean
	function IsTenFootInterface(self): boolean
	function OpenBrowserWindow(self, url: string): nil
	function OpenNativeOverlay(self, title: string, url: string): nil
	function RemoveCenterDialog(self, dialog: Instance): nil
	function RemoveKey(self, key: string): nil
	function RemoveSelectionGroup(self, selectionName: string): nil
	function RemoveSpecialKey(self, key: Enum.SpecialKey): nil
	function Select(self, selectionParent: Instance): nil
	function SetEmotesMenuOpen(self, isOpen: boolean): nil
	function SetGameplayPausedNotificationEnabled(self, enabled: boolean): nil
	function SetGlobalGuiInset(self, x1: number, y1: number, x2: number, y2: number): nil
	function SetInspectMenuEnabled(self, enabled: boolean): nil
	function SetMenuIsOpen(self, open: boolean, menuName: string?): nil
	function SetSafeZoneOffsets(self, top: number, bottom: number, left: number, right: number): nil
	function SetUiMessage(self, msgType: Enum.UiMessageType, uiMessage: string?): nil
	function ShowStatsBasedOnInputString(self, input: string): boolean
	function ToggleFullscreen(self): nil
	function GetScreenResolution(self): Vector2
	BrowserWindowClosed: RBXScriptSignal
	CloseInspectMenuRequest: RBXScriptSignal
	CoreGuiRenderOverflowed: RBXScriptSignal
	EmotesMenuOpenChanged: RBXScriptSignal
	ErrorMessageChanged: RBXScriptSignal
	InspectMenuEnabledChangedSignal: RBXScriptSignal
	InspectPlayerFromHumanoidDescriptionRequest: RBXScriptSignal
	InspectPlayerFromUserIdWithCtxRequest: RBXScriptSignal
	KeyPressed: RBXScriptSignal
	MenuClosed: RBXScriptSignal
	MenuOpened: RBXScriptSignal
	NativeClose: RBXScriptSignal
	NetworkPausedEnabledChanged: RBXScriptSignal
	Open9SliceEditor: RBXScriptSignal
	SafeZoneOffsetsChanged: RBXScriptSignal
	ShowLeaveConfirmation: RBXScriptSignal
	SpecialKeyPressed: RBXScriptSignal
	UiMessageChanged: RBXScriptSignal
	SendCoreUiNotification: (title: string, text: string) -> nil
end

declare class GuidRegistryService extends Instance
end

declare class HapticService extends Instance
	function GetMotor(self, inputType: Enum.UserInputType, vibrationMotor: Enum.VibrationMotor): any
	function IsMotorSupported(self, inputType: Enum.UserInputType, vibrationMotor: Enum.VibrationMotor): boolean
	function IsVibrationSupported(self, inputType: Enum.UserInputType): boolean
	function SetMotor(self, inputType: Enum.UserInputType, vibrationMotor: Enum.VibrationMotor, vibrationValues: any): nil
end

declare class HeightmapImporterService extends Instance
	function CancelImportHeightmap(self): nil
	function IsValidColormap(self, colormapAssetId: Content): any
	function IsValidHeightmap(self, heightmapAssetId: Content): any
	function SetImportHeightmapPaused(self, paused: boolean): nil
	function GetHeightmapPreviewAsync(self, heightmapAssetId: Content): any
	function ImportHeightmap(self, region: Region3, heightmapAssetId: Content, colormapAssetId: Content, defaultMaterial: Enum.Material): nil
	ColormapHasUnknownPixels: RBXScriptSignal
	ProgressUpdate: RBXScriptSignal
end

declare class HiddenSurfaceRemovalAsset extends Instance
end

declare class Highlight extends Instance
	Adornee: Instance
	DepthMode: Enum.HighlightDepthMode
	Enabled: boolean
	FillColor: Color3
	FillTransparency: number
	OutlineColor: Color3
	OutlineTransparency: number
end

declare class Hopper extends Instance
end

declare class HttpRbxApiService extends Instance
	function GetDocumentationUrl(self, partialUrl: string): string
	function GetAsync(self, apiUrlPath: string, priority: Enum.ThrottlingPriority?, httpRequestType: Enum.HttpRequestType?): string
	function GetAsyncFullUrl(self, apiUrl: string, priority: Enum.ThrottlingPriority?, httpRequestType: Enum.HttpRequestType?): string
	function PostAsync(self, apiUrlPath: string, data: string, priority: Enum.ThrottlingPriority?, content_type: Enum.HttpContentType?, httpRequestType: Enum.HttpRequestType?): string
	function PostAsyncFullUrl(self, apiUrl: string, data: string, priority: Enum.ThrottlingPriority?, content_type: Enum.HttpContentType?, httpRequestType: Enum.HttpRequestType?): string
	function RequestAsync(self, requestOptions: { [any]: any }, priority: Enum.ThrottlingPriority?, content_type: Enum.HttpContentType?, httpRequestType: Enum.HttpRequestType?): string
	function RequestLimitedAsync(self, requestOptions: { [any]: any }, priority: Enum.ThrottlingPriority?, content_type: Enum.HttpContentType?, httpRequestType: Enum.HttpRequestType?): string
end

declare class HttpRequest extends Instance
	function Cancel(self): nil
	function Start(self, callback: Function): nil
end

declare class HttpService extends Instance
	HttpEnabled: boolean
	function GenerateGUID(self, wrapInCurlyBraces: boolean?): string
	function GetHttpEnabled(self): boolean
	function GetUserAgent(self): string
	function JSONDecode(self, input: string): any
	function JSONEncode(self, input: any): string
	function RequestInternal(self, options: { [any]: any }): Instance
	function SetHttpEnabled(self, enabled: boolean): nil
	function UrlEncode(self, input: string): string
	function GetAsync(self, url: string, nocache: boolean?, headers: any): string
	function PostAsync(self, url: string, data: string, content_type: Enum.HttpContentType?, compress: boolean?, headers: any): string
	function RequestAsync(self, requestOptions: { [any]: any }): { [any]: any }
end

declare class Humanoid extends Instance
	AutoJumpEnabled: boolean
	AutoRotate: boolean
	AutomaticScalingEnabled: boolean
	BreakJointsOnDeath: boolean
	CameraOffset: Vector3
	CollisionType: Enum.HumanoidCollisionType
	DisplayDistanceType: Enum.HumanoidDisplayDistanceType
	DisplayName: string
	FloorMaterial: Enum.Material
	Health: number
	HealthDisplayDistance: number
	HealthDisplayType: Enum.HumanoidHealthDisplayType
	HipHeight: number
	Jump: boolean
	JumpHeight: number
	JumpPower: number
	LeftLeg: BasePart
	MaxHealth: number
	MaxSlopeAngle: number
	MoveDirection: Vector3
	NameDisplayDistance: number
	NameOcclusion: Enum.NameOcclusion
	PlatformStand: boolean
	RequiresNeck: boolean
	RigType: Enum.HumanoidRigType
	RightLeg: BasePart
	RootPart: BasePart
	SeatPart: BasePart
	Sit: boolean
	TargetPoint: Vector3
	Torso: BasePart
	UseJumpPower: boolean
	WalkSpeed: number
	WalkToPart: BasePart
	WalkToPoint: Vector3
	maxHealth: number
	function AddAccessory(self, accessory: Instance): nil
	function AddCustomStatus(self, status: string): boolean
	function AddStatus(self, status: Enum.Status?): boolean
	function ApplyDescriptionBlocking(self, humanoidDescription: HumanoidDescription): nil
	function BuildRigFromAttachments(self): nil
	function CacheDefaults(self): nil
	function ChangeState(self, state: Enum.HumanoidStateType?): nil
	function EquipTool(self, tool: Instance): nil
	function GetAccessories(self): { any }
	function GetAccessoryHandleScale(self, instance: Instance, partType: Enum.BodyPartR15): Vector3
	function GetAppliedDescription(self): HumanoidDescription
	function GetBodyPartR15(self, part: Instance): Enum.BodyPartR15
	function GetLimb(self, part: Instance): Enum.Limb
	function GetPlayingAnimationTracks(self): { any }
	function GetState(self): Enum.HumanoidStateType
	function GetStateEnabled(self, state: Enum.HumanoidStateType): boolean
	function GetStatuses(self): { any }
	function HasCustomStatus(self, status: string): boolean
	function HasStatus(self, status: Enum.Status?): boolean
	function LoadAnimation(self, animation: Animation): AnimationTrack
	function Move(self, moveDirection: Vector3, relativeToCamera: boolean?): nil
	function MoveTo(self, location: Vector3, part: Instance?): nil
	function RemoveAccessories(self): nil
	function RemoveCustomStatus(self, status: string): boolean
	function RemoveStatus(self, status: Enum.Status?): boolean
	function ReplaceBodyPartR15(self, bodyPart: Enum.BodyPartR15, part: BasePart): boolean
	function SetClickToWalkEnabled(self, enabled: boolean): nil
	function SetStateEnabled(self, state: Enum.HumanoidStateType, enabled: boolean): nil
	function TakeDamage(self, amount: number): nil
	function UnequipTools(self): nil
	function loadAnimation(self, animation: Animation): AnimationTrack
	function takeDamage(self, amount: number): nil
	function ApplyDescription(self, humanoidDescription: HumanoidDescription, assetTypeVerification: Enum.AssetTypeVerification?): nil
	function ApplyDescriptionClientServer(self, humanoidDescription: HumanoidDescription): nil
	function PlayEmote(self, emoteName: string): boolean
	function PlayEmoteAndGetAnimTrackById(self, emoteId: number): any
	AnimationPlayed: RBXScriptSignal
	Climbing: RBXScriptSignal
	ClusterCompositionFinished: RBXScriptSignal
	CustomStatusAdded: RBXScriptSignal
	CustomStatusRemoved: RBXScriptSignal
	Died: RBXScriptSignal
	FallingDown: RBXScriptSignal
	FreeFalling: RBXScriptSignal
	GettingUp: RBXScriptSignal
	HealthChanged: RBXScriptSignal
	Jumping: RBXScriptSignal
	MoveToFinished: RBXScriptSignal
	PlatformStanding: RBXScriptSignal
	Ragdoll: RBXScriptSignal
	Running: RBXScriptSignal
	Seated: RBXScriptSignal
	StateChanged: RBXScriptSignal
	StateEnabledChanged: RBXScriptSignal
	StatusAdded: RBXScriptSignal
	StatusRemoved: RBXScriptSignal
	Strafing: RBXScriptSignal
	Swimming: RBXScriptSignal
	Touched: RBXScriptSignal
end

declare class HumanoidDescription extends Instance
	AccessoryBlob: string
	BackAccessory: string
	BodyTypeScale: number
	ClimbAnimation: number
	DepthScale: number
	Face: number
	FaceAccessory: string
	FallAnimation: number
	FrontAccessory: string
	GraphicTShirt: number
	HairAccessory: string
	HatAccessory: string
	Head: number
	HeadColor: Color3
	HeadScale: number
	HeightScale: number
	IdleAnimation: number
	JumpAnimation: number
	LeftArm: number
	LeftArmColor: Color3
	LeftLeg: number
	LeftLegColor: Color3
	NeckAccessory: string
	NumberEmotesLoaded: number
	Pants: number
	ProportionScale: number
	RightArm: number
	RightArmColor: Color3
	RightLeg: number
	RightLegColor: Color3
	RunAnimation: number
	Shirt: number
	ShouldersAccessory: string
	SwimAnimation: number
	Torso: number
	TorsoColor: Color3
	WaistAccessory: string
	WalkAnimation: number
	WidthScale: number
	function AddEmote(self, name: string, assetId: number): nil
	function GetAccessories(self, includeRigidAccessories: boolean): { any }
	function GetEmotes(self): { [any]: any }
	function GetEquippedEmotes(self): { any }
	function RemoveEmote(self, name: string): nil
	function SetAccessories(self, accessories: { any }, includeRigidAccessories: boolean): nil
	function SetEmotes(self, emotes: { [any]: any }): nil
	function SetEquippedEmotes(self, equippedEmotes: { any }): nil
	EmotesChanged: RBXScriptSignal
	EquippedEmotesChanged: RBXScriptSignal
end

declare class ILegacyStudioBridge extends Instance
end

declare class LegacyStudioBridge extends ILegacyStudioBridge
end

declare class IXPService extends Instance
	function ClearUserLayers(self): nil
	function GetBrowserTrackerLayerLoadingStatus(self): Enum.IXPLoadingStatus
	function GetBrowserTrackerLayerVariables(self, layerName: string): { [any]: any }
	function GetUserLayerLoadingStatus(self): Enum.IXPLoadingStatus
	function GetUserLayerVariables(self, layerName: string): { [any]: any }
	function InitializeUserLayers(self, userId: number): nil
	function LogBrowserTrackerLayerExposure(self, layerName: string): nil
	function LogUserLayerExposure(self, layerName: string): nil
	function RegisterUserLayers(self, userLayers: any): nil
	OnBrowserTrackerLayerLoadingStatusChanged: RBXScriptSignal
	OnUserLayerLoadingStatusChanged: RBXScriptSignal
end

declare class ImporterBaseSettings extends Instance
	Id: string
	ImportName: string
	ShouldImport: boolean
	function GetStatuses(self): { [any]: any }
end

declare class ImporterAnimationSettings extends ImporterBaseSettings
end

declare class ImporterGroupSettings extends ImporterBaseSettings
	Anchored: boolean
	ImportAsModelAsset: boolean
	InsertInWorkspace: boolean
end

declare class ImporterJointSettings extends ImporterBaseSettings
end

declare class ImporterMaterialSettings extends ImporterBaseSettings
	DiffuseFilePath: string
	IsPbr: boolean
	MetalnessFilePath: string
	NormalFilePath: string
	RoughnessFilePath: string
end

declare class ImporterMeshSettings extends ImporterBaseSettings
	Anchored: boolean
	Dimensions: Vector3
	DoubleSided: boolean
	IgnoreVertexColors: boolean
	PolygonCount: number
end

declare class ImporterRootSettings extends ImporterBaseSettings
	Anchored: boolean
	FileDimensions: Vector3
	ImportAsModelAsset: boolean
	InsertInWorkspace: boolean
	InvertNegativeFaces: boolean
	MergeMeshes: boolean
	PolygonCount: number
	RigType: Enum.RigType
	ScaleUnit: Enum.MeshScaleUnit
	WorldForward: Enum.NormalId
	WorldUp: Enum.NormalId
end

declare class ImporterTextureSettings extends ImporterBaseSettings
	FilePath: string
end

declare class IncrementalPatchBuilder extends Instance
end

declare class InputObject extends Instance
	Delta: Vector3
	KeyCode: Enum.KeyCode
	Position: Vector3
	UserInputState: Enum.UserInputState
	UserInputType: Enum.UserInputType
	function IsModifierKeyDown(self, modifierKey: Enum.ModifierKey): boolean
end

declare class InsertService extends Instance
	AllowClientInsertModels: boolean
	AllowInsertFreeModels: boolean
	function ApproveAssetId(self, assetId: number): nil
	function ApproveAssetVersionId(self, assetVersionId: number): nil
	function Insert(self, instance: Instance): nil
	function LoadLocalAsset(self, assetPath: string): Instance
	function LoadPackageAsset(self, url: Content): Objects
	function CreateMeshPartAsync(self, meshId: Content, collisionFidelity: Enum.CollisionFidelity, renderFidelity: Enum.RenderFidelity): MeshPart
	function GetBaseCategories(self): { any }
	function GetBaseSets(self): { any }
	function GetCollection(self, categoryId: number): { any }
	function GetFreeDecals(self, searchText: string, pageNum: number): { any }
	function GetFreeModels(self, searchText: string, pageNum: number): { any }
	function GetLatestAssetVersionAsync(self, assetId: number): number
	function GetUserCategories(self, userId: number): { any }
	function GetUserSets(self, userId: number): { any }
	function LoadAsset(self, assetId: number): Instance
	function LoadAssetVersion(self, assetVersionId: number): Instance
	function LoadPackageAssetAsync(self, url: Content): Objects
	function loadAsset(self, assetId: number): Instance
end

declare class JointInstance extends Instance
	Active: boolean
	C0: CFrame
	C1: CFrame
	Enabled: boolean
	Part0: BasePart
	Part1: BasePart
	part1: BasePart
end

declare class DynamicRotate extends JointInstance
	BaseAngle: number
end

declare class RotateP extends DynamicRotate
end

declare class RotateV extends DynamicRotate
end

declare class Glue extends JointInstance
	F0: Vector3
	F1: Vector3
	F2: Vector3
	F3: Vector3
end

declare class ManualSurfaceJointInstance extends JointInstance
end

declare class ManualGlue extends ManualSurfaceJointInstance
end

declare class ManualWeld extends ManualSurfaceJointInstance
end

declare class Motor extends JointInstance
	CurrentAngle: number
	DesiredAngle: number
	MaxVelocity: number
	function SetDesiredAngle(self, value: number): nil
end

declare class Motor6D extends Motor
	ChildName: string
	ParentName: string
	Transform: CFrame
end

declare class Rotate extends JointInstance
end

declare class Snap extends JointInstance
end

declare class VelocityMotor extends JointInstance
	CurrentAngle: number
	DesiredAngle: number
	Hole: Hole
	MaxVelocity: number
end

declare class Weld extends JointInstance
end

declare class JointsService extends Instance
	function ClearJoinAfterMoveJoints(self): nil
	function CreateJoinAfterMoveJoints(self): nil
	function SetJoinAfterMoveInstance(self, joinInstance: Instance): nil
	function SetJoinAfterMoveTarget(self, joinTarget: Instance): nil
	function ShowPermissibleJoints(self): nil
end

declare class KeyboardService extends Instance
end

declare class Keyframe extends Instance
	Time: number
	function AddMarker(self, marker: Instance): nil
	function AddPose(self, pose: Instance): nil
	function GetMarkers(self): Objects
	function GetPoses(self): Objects
	function RemoveMarker(self, marker: Instance): nil
	function RemovePose(self, pose: Instance): nil
end

declare class KeyframeMarker extends Instance
	Value: string
end

declare class KeyframeSequenceProvider extends Instance
	function GetKeyframeSequence(self, assetId: Content): Instance
	function GetKeyframeSequenceById(self, assetId: number, useCache: boolean): Instance
	function GetMemStats(self): { [any]: any }
	function RegisterActiveKeyframeSequence(self, keyframeSequence: Instance): Content
	function RegisterKeyframeSequence(self, keyframeSequence: Instance): Content
	function GetAnimations(self, userId: number): Instance
	function GetKeyframeSequenceAsync(self, assetId: Content): Instance
end

declare class LSPService extends Instance
	function RegisterLSPCallback(self, methodToOverride: Enum.LSPMethodType, callbackFunction: Function): nil
end

declare class LanguageService extends Instance
end

declare class Light extends Instance
	Brightness: number
	Color: Color3
	Enabled: boolean
	Shadows: boolean
end

declare class PointLight extends Light
	Range: number
end

declare class SpotLight extends Light
	Angle: number
	Face: Enum.NormalId
	Range: number
end

declare class SurfaceLight extends Light
	Angle: number
	Face: Enum.NormalId
	Range: number
end

declare class Lighting extends Instance
	Ambient: Color3
	Brightness: number
	ClockTime: number
	ColorShift_Bottom: Color3
	ColorShift_Top: Color3
	EnvironmentDiffuseScale: number
	EnvironmentSpecularScale: number
	ExposureCompensation: number
	FogColor: Color3
	FogEnd: number
	FogStart: number
	GeographicLatitude: number
	GlobalShadows: boolean
	OutdoorAmbient: Color3
	Outlines: boolean
	ShadowColor: Color3
	ShadowSoftness: number
	Technology: Enum.Technology
	TempUseNewSkyRemovalBehaviour: boolean
	TimeOfDay: string
	function GetMinutesAfterMidnight(self): number
	function GetMoonDirection(self): Vector3
	function GetMoonPhase(self): number
	function GetSunDirection(self): Vector3
	function SetMinutesAfterMidnight(self, minutes: number): nil
	function getMinutesAfterMidnight(self): number
	function setMinutesAfterMidnight(self, minutes: number): nil
	LightingChanged: RBXScriptSignal
end

declare class LocalStorageService extends Instance
	function Flush(self): nil
	function GetItem(self, key: string): string
	function SetItem(self, key: string, value: string): nil
	function WhenLoaded(self, callback: Function): nil
	ItemWasSet: RBXScriptSignal
	StoreWasCleared: RBXScriptSignal
end

declare class AppStorageService extends LocalStorageService
end

declare class UserStorageService extends LocalStorageService
end

declare class LocalizationService extends Instance
	ForcePlayModeGameLocaleId: string
	ForcePlayModeRobloxLocaleId: string
	IsTextScraperRunning: boolean
	RobloxForcePlayModeGameLocaleId: string
	RobloxForcePlayModeRobloxLocaleId: string
	RobloxLocaleId: string
	SystemLocaleId: string
	function GetCorescriptLocalizations(self): Objects
	function GetTableEntries(self, instance: Instance?): { any }
	function GetTranslatorForPlayer(self, player: Instance): Instance
	function SetRobloxLocaleId(self, locale: string): nil
	function StartTextScraper(self): nil
	function StopTextScraper(self): nil
	function GetCountryRegionForPlayerAsync(self, player: Instance): string
	function GetTranslatorForLocaleAsync(self, locale: string): Instance
	function GetTranslatorForPlayerAsync(self, player: Instance): Instance
	function PromptDownloadGameTableToCSV(self, table: Instance): nil
	function PromptExportToCSVs(self): nil
	function PromptImportFromCSVs(self): nil
	function PromptUploadCSVToGameTable(self): Instance
	AutoTranslateWillRun: RBXScriptSignal
end

declare class LocalizationTable extends Instance
	DevelopmentLanguage: string
	Root: Instance
	SourceLocaleId: string
	function GetContents(self): string
	function GetEntries(self): { any }
	function GetString(self, targetLocaleId: string, key: string): string
	function GetTranslator(self, localeId: string): Instance
	function RemoveEntry(self, key: string, source: string, context: string): nil
	function RemoveEntryValue(self, key: string, source: string, context: string, localeId: string): nil
	function RemoveKey(self, key: string): nil
	function RemoveTargetLocale(self, localeId: string): nil
	function SetContents(self, contents: string): nil
	function SetEntries(self, entries: any): nil
	function SetEntry(self, key: string, targetLocaleId: string, text: string): nil
	function SetEntryContext(self, key: string, source: string, context: string, newContext: string): nil
	function SetEntryExample(self, key: string, source: string, context: string, example: string): nil
	function SetEntryKey(self, key: string, source: string, context: string, newKey: string): nil
	function SetEntrySource(self, key: string, source: string, context: string, newSource: string): nil
	function SetEntryValue(self, key: string, source: string, context: string, localeId: string, text: string): nil
	function SetIsExemptFromUGCAnalytics(self, value: boolean): nil
end

declare class LodDataEntity extends Instance
	EntityLodEnabled: boolean
end

declare class LodDataService extends Instance
end

declare class LogService extends Instance
	function ExecuteScript(self, source: string): nil
	function GetHttpResultHistory(self): { any }
	function GetLogHistory(self): { any }
	function RequestHttpResultApproved(self): nil
	function RequestServerHttpResult(self): nil
	function RequestServerOutput(self): nil
	HttpResultOut: RBXScriptSignal
	MessageOut: RBXScriptSignal
	OnHttpResultApproved: RBXScriptSignal
	ServerHttpResultOut: RBXScriptSignal
	ServerMessageOut: RBXScriptSignal
end

declare class LoginService extends Instance
	function Logout(self): nil
	function PromptLogin(self): nil
	LoginFailed: RBXScriptSignal
	LoginSucceeded: RBXScriptSignal
end

declare class LuaSettings extends Instance
end

declare class LuaSourceContainer extends Instance
	CurrentEditor: Instance
end

declare class BaseScript extends LuaSourceContainer
	Disabled: boolean
	LinkedSource: Content
end

declare class CoreScript extends BaseScript
end

declare class Script extends BaseScript
	Source: ProtectedString
	function GetHash(self): string
end

declare class LocalScript extends Script
end

declare class ModuleScript extends LuaSourceContainer
	LinkedSource: Content
	Source: ProtectedString
end

declare class LuaWebService extends Instance
end

declare class LuauScriptAnalyzerService extends Instance
end

declare class MarkerCurve extends Instance
	Length: number
	function GetMarkerAtIndex(self, index: number): { [any]: any }
	function GetMarkers(self): { any }
	function InsertMarkerAtTime(self, time: number, marker: string): { any }
	function RemoveMarkerAtIndex(self, startingIndex: number, count: number?): number
end

declare class MarketplaceService extends Instance
	function PlayerCanMakePurchases(self, player: Instance): boolean
	function PromptBundlePurchase(self, player: Instance, bundleId: number): nil
	function PromptGamePassPurchase(self, player: Instance, gamePassId: number): nil
	function PromptNativePurchase(self, player: Instance, productId: string): nil
	function PromptPremiumPurchase(self, player: Instance): nil
	function PromptProductPurchase(self, player: Instance, productId: number, equipIfPurchased: boolean?, currencyType: Enum.CurrencyType?): nil
	function PromptPurchase(self, player: Instance, assetId: number, equipIfPurchased: boolean?, currencyType: Enum.CurrencyType?): nil
	function PromptRobloxPurchase(self, assetId: number, equipIfPurchased: boolean): nil
	function PromptSubscriptionCancellation(self, player: Instance, subscriptionId: number): nil
	function PromptSubscriptionPurchase(self, player: Instance, subscriptionId: number): nil
	function PromptThirdPartyPurchase(self, player: Instance, productId: string): nil
	function ReportAssetSale(self, assetId: string, robuxAmount: number): nil
	function ReportRobuxUpsellStarted(self): nil
	function SignalAssetTypePurchased(self, player: Instance, assetType: Enum.AssetType): nil
	function SignalClientPurchaseSuccess(self, ticket: string, playerId: number, productId: number): nil
	function SignalMockPurchasePremium(self): nil
	function SignalPromptBundlePurchaseFinished(self, player: Instance, bundleId: number, success: boolean): nil
	function SignalPromptGamePassPurchaseFinished(self, player: Instance, gamePassId: number, success: boolean): nil
	function SignalPromptPremiumPurchaseFinished(self, didTryPurchasing: boolean): nil
	function SignalPromptProductPurchaseFinished(self, userId: number, productId: number, success: boolean): nil
	function SignalPromptPurchaseFinished(self, player: Instance, assetId: number, success: boolean): nil
	function SignalPromptSubscriptionCancellationFinished(self, player: Instance, subscriptionId: number, wasCanceled: boolean): nil
	function SignalPromptSubscriptionPurchaseFinished(self, player: Instance, subscriptionId: number, wasPurchased: boolean): nil
	function SignalServerLuaDialogClosed(self, value: boolean): nil
	function GetDeveloperProductsAsync(self): Instance
	function GetProductInfo(self, assetId: number, infoType: Enum.InfoType?): { [any]: any }
	function GetRobuxBalance(self): number
	function IsPlayerSubscribed(self, player: Instance, subscriptionId: number): boolean
	function PerformPurchase(self, infoType: Enum.InfoType, productId: number, expectedPrice: number, requestId: string, isRobloxPurchase: boolean): { [any]: any }
	function PlayerOwnsAsset(self, player: Instance, assetId: number): boolean
	function UserOwnsGamePassAsync(self, userId: number, gamePassId: number): boolean
	ClientLuaDialogRequested: RBXScriptSignal
	ClientPurchaseSuccess: RBXScriptSignal
	NativePurchaseFinished: RBXScriptSignal
	PromptBundlePurchaseFinished: RBXScriptSignal
	PromptBundlePurchaseRequested: RBXScriptSignal
	PromptGamePassPurchaseFinished: RBXScriptSignal
	PromptGamePassPurchaseRequested: RBXScriptSignal
	PromptPremiumPurchaseFinished: RBXScriptSignal
	PromptPremiumPurchaseRequested: RBXScriptSignal
	PromptProductPurchaseFinished: RBXScriptSignal
	PromptProductPurchaseRequested: RBXScriptSignal
	PromptPurchaseFinished: RBXScriptSignal
	PromptPurchaseRequested: RBXScriptSignal
	PromptRobloxPurchaseRequested: RBXScriptSignal
	PromptSubscriptionCancellationFinished: RBXScriptSignal
	PromptSubscriptionCancellationRequested: RBXScriptSignal
	PromptSubscriptionPurchaseFinished: RBXScriptSignal
	PromptSubscriptionPurchaseRequested: RBXScriptSignal
	ServerPurchaseVerification: RBXScriptSignal
	ThirdPartyPurchaseFinished: RBXScriptSignal
	ProcessReceipt: (receiptInfo: { [any]: any }) -> Enum.ProductPurchaseDecision
end

declare class MaterialService extends Instance
	AsphaltName: string
	BasaltName: string
	Brick: MaterialVariant
	BrickName: string
	Cobblestone: MaterialVariant
	CobblestoneName: string
	Concrete: MaterialVariant
	ConcreteName: string
	CorrodedMetal: MaterialVariant
	CorrodedMetalName: string
	CrackedLavaName: string
	DiamondPlate: MaterialVariant
	DiamondPlateName: string
	Fabric: MaterialVariant
	FabricName: string
	Foil: MaterialVariant
	FoilName: string
	GlacierName: string
	Granite: MaterialVariant
	GraniteName: string
	Grass: MaterialVariant
	GrassName: string
	GroundName: string
	Ice: MaterialVariant
	IceName: string
	LeafyGrassName: string
	LimestoneName: string
	Marble: MaterialVariant
	MarbleName: string
	Metal: MaterialVariant
	MetalName: string
	MudName: string
	PavementName: string
	Pebble: MaterialVariant
	PebbleName: string
	Plastic: MaterialVariant
	PlasticName: string
	RockName: string
	SaltName: string
	Sand: MaterialVariant
	SandName: string
	SandstoneName: string
	Slate: MaterialVariant
	SlateName: string
	SmoothPlastic: MaterialVariant
	SmoothPlasticName: string
	SnowName: string
	TerrainAsphalt: MaterialVariant
	TerrainBasalt: MaterialVariant
	TerrainBrick: MaterialVariant
	TerrainCobblestone: MaterialVariant
	TerrainConcrete: MaterialVariant
	TerrainCrackedLava: MaterialVariant
	TerrainGlacier: MaterialVariant
	TerrainGrass: MaterialVariant
	TerrainGround: MaterialVariant
	TerrainIce: MaterialVariant
	TerrainLeafyGrass: MaterialVariant
	TerrainLimestone: MaterialVariant
	TerrainMud: MaterialVariant
	TerrainPavement: MaterialVariant
	TerrainRock: MaterialVariant
	TerrainSalt: MaterialVariant
	TerrainSand: MaterialVariant
	TerrainSandstone: MaterialVariant
	TerrainSlate: MaterialVariant
	TerrainSnow: MaterialVariant
	TerrainWoodPlanks: MaterialVariant
	Use2022Materials: boolean
	Wood: MaterialVariant
	WoodName: string
	WoodPlanks: MaterialVariant
	WoodPlanksName: string
	hasPropertyWarningInStudio: boolean
	function ClearOverridePartMaterial(self, material: Enum.Material): nil
	function ClearOverrideTerrainMaterial(self, material: Enum.Material): nil
	function GetBaseMaterialOverride(self, material: Enum.Material): string
	function GetOverridePartMaterial(self, material: Enum.Material): MaterialVariant
	function GetOverrideTerrainMaterial(self, material: Enum.Material): MaterialVariant
	function SetBaseMaterialOverride(self, material: Enum.Material, name: string): nil
	function SetOverridePartMaterial(self, materialVariant: MaterialVariant): nil
	function SetOverrideTerrainMaterial(self, materialVariant: MaterialVariant): nil
end

declare class MaterialVariant extends Instance
	BaseMaterial: Enum.Material
	ColorMap: Content
	MaterialPattern: Enum.MaterialPattern
	MetalnessMap: Content
	NormalMap: Content
	RoughnessMap: Content
	StudsPerTile: number
end

declare class MemStorageConnection extends Instance
	function Disconnect(self): nil
end

declare class MemStorageService extends Instance
	function Bind(self, key: string, callback: Function): MemStorageConnection
	function BindAndFire(self, key: string, callback: Function): MemStorageConnection
	function Call(self, key: string, input: any): any
	function Fire(self, key: string, value: string?): nil
	function GetItem(self, key: string, defaultValue: string?): string
	function HasItem(self, key: string): boolean
	function RemoveItem(self, key: string): boolean
	function SetItem(self, key: string, value: string?): nil
end

declare class MemoryStoreQueue extends Instance
	function AddAsync(self, value: any, expiration: number, priority: number?): nil
	function ReadAsync(self, count: number, allOrNothing: boolean?, waitTimeout: number?): any
	function RemoveAsync(self, id: string): nil
end

declare class MemoryStoreService extends Instance
	function GetQueue(self, name: string, invisibilityTimeout: number?): MemoryStoreQueue
	function GetSortedMap(self, name: string): MemoryStoreSortedMap
end

declare class MemoryStoreSortedMap extends Instance
	function GetAsync(self, key: string): any
	function GetRangeAsync(self, direction: Enum.SortDirection, count: number, exclusiveLowerBound: string?, exclusiveUpperBound: string?): { any }
	function RemoveAsync(self, key: string): nil
	function SetAsync(self, key: string, value: any, expiration: number): boolean
	function UpdateAsync(self, key: string, transformFunction: Function, expiration: number): any
end

declare class Message extends Instance
	Text: string
end

declare class Hint extends Message
end

declare class MessageBusConnection extends Instance
	function Disconnect(self): nil
end

declare class MessageBusService extends Instance
	function Call(self, key: string, input: any): any
	function GetLast(self, mid: string): any
	function GetMessageId(self, domainName: string, messageName: string): string
	function GetProtocolMethodRequestMessageId(self, protocolName: string, methodName: string): string
	function GetProtocolMethodResponseMessageId(self, protocolName: string, methodName: string): string
	function Publish(self, mid: string, params: any): nil
	function PublishProtocolMethodRequest(self, protocolName: string, methodName: string, message: any, customTelemetryData: any): nil
	function PublishProtocolMethodResponse(self, protocolName: string, methodName: string, message: any, responseCode: number, customTelemetryData: any): nil
	function Subscribe(self, mid: string, callback: Function, once: boolean, sticky: boolean): Instance
	function SubscribeToProtocolMethodRequest(self, protocolName: string, methodName: string, callback: Function, once: boolean, sticky: boolean): Instance
	function SubscribeToProtocolMethodResponse(self, protocolName: string, methodName: string, callback: Function, once: boolean, sticky: boolean): Instance
end

declare class MessagingService extends Instance
	function PublishAsync(self, topic: string, message: any): nil
	function SubscribeAsync(self, topic: string, callback: Function): RBXScriptConnection
end

declare class MetaBreakpoint extends Instance
	Condition: string
	ContinueExecution: boolean
	Enabled: boolean
	Id: number
	IsLogpoint: boolean
	Line: number
	LogMessage: string
	Script: string
	function GetContextBreakpoints(self): { [any]: any }
	function Remove(self, status: Function): number
	function SetContinueExecution(self, enabled: boolean): nil
	function SetEnabled(self, enabled: boolean): nil
	function SetLine(self, line: number, status: Function): number
end

declare class MetaBreakpointContext extends Instance
end

declare class Mouse extends Instance
	Hit: CFrame
	Icon: Content
	Origin: CFrame
	Target: BasePart
	TargetFilter: Instance
	TargetSurface: Enum.NormalId
	UnitRay: Ray
	ViewSizeX: number
	ViewSizeY: number
	X: number
	Y: number
	hit: CFrame
	target: BasePart
	Button1Down: RBXScriptSignal
	Button1Up: RBXScriptSignal
	Button2Down: RBXScriptSignal
	Button2Up: RBXScriptSignal
	Idle: RBXScriptSignal
	KeyDown: RBXScriptSignal
	KeyUp: RBXScriptSignal
	Move: RBXScriptSignal
	WheelBackward: RBXScriptSignal
	WheelForward: RBXScriptSignal
	keyDown: RBXScriptSignal
end

declare class PlayerMouse extends Mouse
end

declare class PluginMouse extends Mouse
	DragEnter: RBXScriptSignal
end

declare class MouseService extends Instance
end

declare class MultipleDocumentInterfaceInstance extends Instance
	FocusedDataModelSession: Instance
	DataModelSessionEnded: RBXScriptSignal
	DataModelSessionStarted: RBXScriptSignal
end

declare class NetworkMarker extends Instance
	Received: RBXScriptSignal
end

declare class NetworkPeer extends Instance
	function SetOutgoingKBPSLimit(self, limit: number): nil
end

declare class NetworkClient extends NetworkPeer
	ConnectionAccepted: RBXScriptSignal
	ConnectionFailed: RBXScriptSignal
end

declare class NetworkServer extends NetworkPeer
	function EncryptStringForPlayerId(self, toEncrypt: string, playerId: number): string
end

declare class NetworkReplicator extends Instance
	function GetPlayer(self): Instance
end

declare class ClientReplicator extends NetworkReplicator
	function RequestRCCProfilerData(self, frameRate: number, timeFrame: number): nil
	function RequestServerStats(self, request: boolean): nil
	RCCProfilerDataComplete: RBXScriptSignal
	StatsReceived: RBXScriptSignal
end

declare class ServerReplicator extends NetworkReplicator
end

declare class NetworkSettings extends Instance
	EmulatedTotalMemoryInMB: number
	FreeMemoryMBytes: number
	HttpProxyEnabled: boolean
	HttpProxyURL: string
	IncomingReplicationLag: number
	PrintJoinSizeBreakdown: boolean
	PrintPhysicsErrors: boolean
	PrintStreamInstanceQuota: boolean
	RandomizeJoinInstanceOrder: boolean
	RenderStreamedRegions: boolean
	ShowActiveAnimationAsset: boolean
end

declare class NoCollisionConstraint extends Instance
	Enabled: boolean
	Part0: BasePart
	Part1: BasePart
end

declare class NotificationService extends Instance
	IsLuaChatEnabled: boolean
	IsLuaGameDetailsEnabled: boolean
	SelectedTheme: string
	function ActionEnabled(self, actionType: Enum.AppShellActionType): nil
	function ActionTaken(self, actionType: Enum.AppShellActionType): nil
	function CancelAllNotification(self, userId: number): nil
	function CancelNotification(self, userId: number, alertId: number): nil
	function ScheduleNotification(self, userId: number, alertId: number, alertMsg: string, minutesToFire: number): nil
	function SwitchedToAppShellFeature(self, appShellFeature: Enum.AppShellFeature): nil
	function GetScheduledNotifications(self, userId: number): { any }
	Roblox17sConnectionChanged: RBXScriptSignal
	Roblox17sEventReceived: RBXScriptSignal
	RobloxConnectionChanged: RBXScriptSignal
	RobloxEventReceived: RBXScriptSignal
end

declare class PVInstance extends Instance
	Origin_Orientation: Vector3
	Origin_Position: Vector3
	Pivot_Offset_Orientation: Vector3
	Pivot_Offset_Position: Vector3
	function GetPivot(self): CFrame
	function PivotTo(self, targetCFrame: CFrame): nil
end

declare class BasePart extends PVInstance
	Anchored: boolean
	AssemblyAngularVelocity: Vector3
	AssemblyCenterOfMass: Vector3
	AssemblyLinearVelocity: Vector3
	AssemblyMass: number
	AssemblyRootPart: BasePart
	BackParamA: number
	BackParamB: number
	BackSurface: Enum.SurfaceType
	BackSurfaceInput: Enum.InputType
	BottomParamA: number
	BottomParamB: number
	BottomSurface: Enum.SurfaceType
	BottomSurfaceInput: Enum.InputType
	BrickColor: BrickColor
	CFrame: CFrame
	CanCollide: boolean
	CanQuery: boolean
	CanTouch: boolean
	CastShadow: boolean
	CenterOfMass: Vector3
	CollisionGroupId: number
	Color: Color3
	CustomPhysicalProperties: PhysicalProperties
	Elasticity: number
	Friction: number
	FrontParamA: number
	FrontParamB: number
	FrontSurface: Enum.SurfaceType
	FrontSurfaceInput: Enum.InputType
	LeftParamA: number
	LeftParamB: number
	LeftSurface: Enum.SurfaceType
	LeftSurfaceInput: Enum.InputType
	LocalTransparencyModifier: number
	Locked: boolean
	Mass: number
	Massless: boolean
	Material: Enum.Material
	MaterialVariant: string
	Orientation: Vector3
	PivotOffset: CFrame
	Position: Vector3
	ReceiveAge: number
	Reflectance: number
	ResizeIncrement: number
	ResizeableFaces: Faces
	RightParamA: number
	RightParamB: number
	RightSurface: Enum.SurfaceType
	RightSurfaceInput: Enum.InputType
	RootPriority: number
	RotVelocity: Vector3
	Rotation: Vector3
	Size: Vector3
	SpecificGravity: number
	TopParamA: number
	TopParamB: number
	TopSurface: Enum.SurfaceType
	TopSurfaceInput: Enum.InputType
	Transparency: number
	Velocity: Vector3
	brickColor: BrickColor
	function ApplyAngularImpulse(self, impulse: Vector3): nil
	function ApplyImpulse(self, impulse: Vector3): nil
	function ApplyImpulseAtPosition(self, impulse: Vector3, position: Vector3): nil
	function BreakJoints(self): nil
	function CanCollideWith(self, part: BasePart): boolean
	function CanSetNetworkOwnership(self): any
	function GetConnectedParts(self, recursive: boolean?): Objects
	function GetJoints(self): Objects
	function GetMass(self): number
	function GetNetworkOwner(self): Instance
	function GetNetworkOwnershipAuto(self): boolean
	function GetRenderCFrame(self): CFrame
	function GetRootPart(self): Instance
	function GetTouchingParts(self): Objects
	function GetVelocityAtPosition(self, position: Vector3): Vector3
	function IsGrounded(self): boolean
	function MakeJoints(self): nil
	function Resize(self, normalId: Enum.NormalId, deltaAmount: number): boolean
	function SetNetworkOwner(self, playerInstance: Player?): nil
	function SetNetworkOwnershipAuto(self): nil
	function breakJoints(self): nil
	function getMass(self): number
	function makeJoints(self): nil
	function resize(self, normalId: Enum.NormalId, deltaAmount: number): boolean
	function SubtractAsync(self, parts: Objects, collisionfidelity: Enum.CollisionFidelity?, renderFidelity: Enum.RenderFidelity?): Instance
	function UnionAsync(self, parts: Objects, collisionfidelity: Enum.CollisionFidelity?, renderFidelity: Enum.RenderFidelity?): Instance
	LocalSimulationTouched: RBXScriptSignal
	OutfitChanged: RBXScriptSignal
	StoppedTouching: RBXScriptSignal
	TouchEnded: RBXScriptSignal
	Touched: RBXScriptSignal
end

declare class CornerWedgePart extends BasePart
end

declare class FormFactorPart extends BasePart
	FormFactor: Enum.FormFactor
	formFactor: Enum.FormFactor
end

declare class Part extends FormFactorPart
	Shape: Enum.PartType
end

declare class FlagStand extends Part
	TeamColor: BrickColor
	FlagCaptured: RBXScriptSignal
end

declare class Platform extends Part
end

declare class Seat extends Part
	Disabled: boolean
	Occupant: Humanoid
	function Sit(self, humanoid: Instance): nil
end

declare class SkateboardPlatform extends Part
	Controller: SkateboardController
	ControllingHumanoid: Humanoid
	Steer: number
	StickyWheels: boolean
	Throttle: number
	function ApplySpecificImpulse(self, impulseWorld: Vector3): nil
	Equipped: RBXScriptSignal
	MoveStateChanged: RBXScriptSignal
	Unequipped: RBXScriptSignal
	equipped: RBXScriptSignal
	unequipped: RBXScriptSignal
end

declare class SpawnLocation extends Part
	AllowTeamChangeOnTouch: boolean
	Duration: number
	Enabled: boolean
	Neutral: boolean
	TeamColor: BrickColor
end

declare class WedgePart extends FormFactorPart
end

declare class Terrain extends BasePart
	Decoration: boolean
	IsSmooth: boolean
	LastUsedModificationMethod: Enum.TerrainAcquisitionMethod
	MaterialColors: BinaryString
	MaxExtents: Region3int16
	WaterColor: Color3
	WaterReflectance: number
	WaterTransparency: number
	WaterWaveSize: number
	WaterWaveSpeed: number
	function AutowedgeCell(self, x: number, y: number, z: number): boolean
	function AutowedgeCells(self, region: Region3int16): nil
	function CellCenterToWorld(self, x: number, y: number, z: number): Vector3
	function CellCornerToWorld(self, x: number, y: number, z: number): Vector3
	function Clear(self): nil
	function ConvertToSmooth(self): nil
	function CopyRegion(self, region: Region3int16): TerrainRegion
	function CountCells(self): number
	function FillBall(self, center: Vector3, radius: number, material: Enum.Material): nil
	function FillBlock(self, cframe: CFrame, size: Vector3, material: Enum.Material): nil
	function FillCylinder(self, cframe: CFrame, height: number, radius: number, material: Enum.Material): nil
	function FillRegion(self, region: Region3, resolution: number, material: Enum.Material): nil
	function FillWedge(self, cframe: CFrame, size: Vector3, material: Enum.Material): nil
	function GetCell(self, x: number, y: number, z: number): any
	function GetMaterialColor(self, material: Enum.Material): Color3
	function GetWaterCell(self, x: number, y: number, z: number): any
	function PasteRegion(self, region: TerrainRegion, corner: Vector3int16, pasteEmptyCells: boolean): nil
	function ReadVoxels(self, region: Region3, resolution: number): any
	function ReplaceMaterial(self, region: Region3, resolution: number, sourceMaterial: Enum.Material, targetMaterial: Enum.Material): nil
	function SetCell(self, x: number, y: number, z: number, material: Enum.CellMaterial, block: Enum.CellBlock, orientation: Enum.CellOrientation): nil
	function SetCells(self, region: Region3int16, material: Enum.CellMaterial, block: Enum.CellBlock, orientation: Enum.CellOrientation): nil
	function SetMaterialColor(self, material: Enum.Material, value: Color3): nil
	function SetWaterCell(self, x: number, y: number, z: number, force: Enum.WaterForce, direction: Enum.WaterDirection): nil
	function WorldToCell(self, position: Vector3): Vector3
	function WorldToCellPreferEmpty(self, position: Vector3): Vector3
	function WorldToCellPreferSolid(self, position: Vector3): Vector3
	function WriteVoxels(self, region: Region3, resolution: number, materials: { any }, occupancy: { any }): nil
end

declare class TriangleMeshPart extends BasePart
	CollisionFidelity: Enum.CollisionFidelity
end

declare class MeshPart extends TriangleMeshPart
	DoubleSided: boolean
	HasJointOffset: boolean
	HasSkinnedMesh: boolean
	JointOffset: Vector3
	MeshID: Content
	MeshId: Content
	MeshSize: Vector3
	RenderFidelity: Enum.RenderFidelity
	TextureID: Content
	function ApplyMesh(self, meshPart: Instance): nil
end

declare class PartOperation extends TriangleMeshPart
	RenderFidelity: Enum.RenderFidelity
	SmoothingAngle: number
	TriangleCount: number
	UsePartColor: boolean
end

declare class NegateOperation extends PartOperation
end

declare class UnionOperation extends PartOperation
end

declare class TrussPart extends BasePart
	Style: Enum.Style
end

declare class VehicleSeat extends BasePart
	AreHingesDetected: number
	Disabled: boolean
	HeadsUpDisplay: boolean
	MaxSpeed: number
	Occupant: Humanoid
	Steer: number
	SteerFloat: number
	Throttle: number
	ThrottleFloat: number
	Torque: number
	TurnSpeed: number
	function Sit(self, humanoid: Instance): nil
end

declare class Model extends PVInstance
	LevelOfDetail: Enum.ModelLevelOfDetail
	PrimaryPart: BasePart
	World_Pivot_Orientation: Vector3
	World_Pivot_Position: Vector3
	WorldPivot: CFrame
	function BreakJoints(self): nil
	function GetBoundingBox(self): any
	function GetExtentsSize(self): Vector3
	function GetModelCFrame(self): CFrame
	function GetModelSize(self): Vector3
	function GetPrimaryPartCFrame(self): CFrame
	function MakeJoints(self): nil
	function MoveTo(self, position: Vector3): nil
	function ResetOrientationToIdentity(self): nil
	function SetIdentityOrientation(self): nil
	function SetPrimaryPartCFrame(self, cframe: CFrame): nil
	function TranslateBy(self, delta: Vector3): nil
	function breakJoints(self): nil
	function makeJoints(self): nil
	function move(self, location: Vector3): nil
	function moveTo(self, location: Vector3): nil
end

declare class Actor extends Model
end

declare class Status extends Model
end

declare class WorldRoot extends Model
	function ArePartsTouchingOthers(self, partList: Objects, overlapIgnored: number?): boolean
	function BulkMoveTo(self, partList: Objects, cframeList: { any }, eventMode: Enum.BulkMoveMode?): nil
	function FindPartOnRay(self, ray: Ray, ignoreDescendantsInstance: Instance?, terrainCellsAreCubes: boolean?, ignoreWater: boolean?): any
	function FindPartOnRayWithIgnoreList(self, ray: Ray, ignoreDescendantsTable: Objects, terrainCellsAreCubes: boolean?, ignoreWater: boolean?): any
	function FindPartOnRayWithWhitelist(self, ray: Ray, whitelistDescendantsTable: Objects, ignoreWater: boolean?): any
	function FindPartsInRegion3(self, region: Region3, ignoreDescendantsInstance: Instance?, maxParts: number?): Objects
	function FindPartsInRegion3WithIgnoreList(self, region: Region3, ignoreDescendantsTable: Objects, maxParts: number?): Objects
	function FindPartsInRegion3WithWhiteList(self, region: Region3, whitelistDescendantsTable: Objects, maxParts: number?): Objects
	function GetPartBoundsInBox(self, cframe: CFrame, size: Vector3, overlapParams: OverlapParams?): Objects
	function GetPartBoundsInRadius(self, position: Vector3, radius: number, overlapParams: OverlapParams?): Objects
	function GetPartsInPart(self, part: BasePart, overlapParams: OverlapParams?): Objects
	function IKMoveTo(self, part: BasePart, target: CFrame, translateStiffness: number?, rotateStiffness: number?, collisionsMode: Enum.IKCollisionsMode?): nil
	function IsRegion3Empty(self, region: Region3, ignoreDescendentsInstance: Instance?): boolean
	function IsRegion3EmptyWithIgnoreList(self, region: Region3, ignoreDescendentsTable: Objects): boolean
	function Raycast(self, origin: Vector3, direction: Vector3, raycastParams: RaycastParams?): RaycastResult
	function SetInsertPoint(self, point: Vector3, ignoreGrid: boolean?): nil
	function findPartOnRay(self, ray: Ray, ignoreDescendantsInstance: Instance?, terrainCellsAreCubes: boolean?, ignoreWater: boolean?): any
	function findPartsInRegion3(self, region: Region3, ignoreDescendantsInstance: Instance?, maxParts: number?): Objects
end

declare class Workspace extends WorldRoot
	AllowThirdPartySales: boolean
	AnimationWeightedBlendFix: Enum.NewAnimationRuntimeSetting
	ClientAnimatorThrottling: Enum.ClientAnimatorThrottlingMode
	CurrentCamera: Camera
	DistributedGameTime: number
	FallenPartsDestroyHeight: number
	FilteringEnabled: boolean
	GlobalWind: Vector3
	Gravity: number
	HumanoidOnlySetCollisionsOnStateChange: Enum.HumanoidOnlySetCollisionsOnStateChange
	InterpolationThrottling: Enum.InterpolationThrottlingMode
	MeshPartHeadsAndAccessories: Enum.MeshPartHeadsAndAccessories
	PhysicsSimulationRate: Enum.PhysicsSimulationRate
	PhysicsSteppingMethod: Enum.PhysicsSteppingMethod
	ReplicateInstanceDestroySetting: Enum.ReplicateInstanceDestroySetting
	Retargeting: Enum.AnimatorRetargetingMode
	SignalBehavior: Enum.SignalBehavior
	StreamOutBehavior: Enum.StreamOutBehavior
	StreamingEnabled: boolean
	StreamingMinRadius: number
	StreamingPauseMode: Enum.StreamingPauseMode
	StreamingTargetRadius: number
	Terrain: Terrain
	TouchesUseCollisionGroups: boolean
	function BreakJoints(self, objects: Objects): nil
	function CalculateJumpDistance(self, gravity: number, jumpPower: number, walkSpeed: number): number
	function CalculateJumpHeight(self, gravity: number, jumpPower: number): number
	function CalculateJumpPower(self, gravity: number, jumpHeight: number): number
	function ExperimentalSolverIsEnabled(self): boolean
	function GetNumAwakeParts(self): number
	function GetPhysicsThrottling(self): number
	function GetRealPhysicsFPS(self): number
	function GetServerTimeNow(self): number
	function JoinToOutsiders(self, objects: Objects, jointType: Enum.JointCreationMode): nil
	function MakeJoints(self, objects: Objects): nil
	function PGSIsEnabled(self): boolean
	function SetMeshPartHeadsAndAccessories(self, value: Enum.MeshPartHeadsAndAccessories): nil
	function SetPhysicsThrottleEnabled(self, value: boolean): nil
	function UnjoinFromOutsiders(self, objects: Objects): nil
	function ZoomToExtents(self): nil
end

declare class WorldModel extends WorldRoot
end

declare class PackageLink extends Instance
	AutoUpdate: boolean
	Creator: string
	PackageAssetName: string
	PackageId: Content
	PermissionLevel: Enum.PackagePermission
	Status: string
	VersionNumber: number
end

declare class PackageService extends Instance
end

declare class PackageUIService extends Instance
	function ConvertToPackageUpload(self, uploadUrl: string, cloneInstances: Objects, originalInstances: Objects): nil
	OnConvertToPackageResult: RBXScriptSignal
	OnOpenConvertToPackagePlugin: RBXScriptSignal
end

declare class Pages extends Instance
	IsFinished: boolean
	function GetCurrentPage(self): { any }
	function AdvanceToNextPageAsync(self): nil
end

declare class CatalogPages extends Pages
end

declare class DataStoreKeyPages extends Pages
end

declare class DataStoreListingPages extends Pages
end

declare class DataStorePages extends Pages
end

declare class DataStoreVersionPages extends Pages
end

declare class FriendPages extends Pages
end

declare class InventoryPages extends Pages
end

declare class EmotesPages extends InventoryPages
end

declare class OutfitPages extends Pages
end

declare class StandardPages extends Pages
end

declare class PartOperationAsset extends Instance
end

declare class ParticleEmitter extends Instance
	Acceleration: Vector3
	Brightness: number
	Color: ColorSequence
	Drag: number
	EmissionDirection: Enum.NormalId
	Enabled: boolean
	FlipbookFramerate: NumberRange
	FlipbookIncompatible: string
	FlipbookLayout: Enum.ParticleFlipbookLayout
	FlipbookMode: Enum.ParticleFlipbookMode
	FlipbookStartRandom: boolean
	Lifetime: NumberRange
	LightEmission: number
	LightInfluence: number
	LockedToPart: boolean
	Orientation: Enum.ParticleOrientation
	Rate: number
	RotSpeed: NumberRange
	Rotation: NumberRange
	Shape: Enum.ParticleEmitterShape
	ShapeInOut: Enum.ParticleEmitterShapeInOut
	ShapePartial: number
	ShapeStyle: Enum.ParticleEmitterShapeStyle
	Size: NumberSequence
	Speed: NumberRange
	SpreadAngle: Vector2
	Squash: NumberSequence
	Texture: Content
	TimeScale: number
	Transparency: NumberSequence
	VelocityInheritance: number
	VelocitySpread: number
	ZOffset: number
	function Clear(self): nil
	function Emit(self, particleCount: number?): nil
end

declare class Path extends Instance
	Status: Enum.PathStatus
	function GetPointCoordinates(self): { any }
	function GetWaypoints(self): { any }
	function CheckOcclusionAsync(self, start: number): number
	function ComputeAsync(self, start: Vector3, finish: Vector3): nil
	Blocked: RBXScriptSignal
	Unblocked: RBXScriptSignal
end

declare class PathfindingLink extends Instance
	Attachment0: Attachment
	Attachment1: Attachment
	IsBidirectional: boolean
	Label: string
end

declare class PathfindingModifier extends Instance
	Label: string
	PassThrough: boolean
end

declare class PathfindingService extends Instance
	EmptyCutoff: number
	function CreatePath(self, agentParameters: { [any]: any }?): Instance
	function ComputeRawPathAsync(self, start: Vector3, finish: Vector3, maxDistance: number): Instance
	function ComputeSmoothPathAsync(self, start: Vector3, finish: Vector3, maxDistance: number): Instance
	function FindPathAsync(self, start: Vector3, finish: Vector3): Instance
end

declare class PausedState extends Instance
	AllThreadsPaused: boolean
	Reason: Enum.DebuggerPauseReason
	ThreadId: number
end

declare class PausedStateBreakpoint extends PausedState
	Breakpoint: Breakpoint
end

declare class PausedStateException extends PausedState
	ExceptionText: string
end

declare class PermissionsService extends Instance
	function GetIsThirdPartyAssetAllowed(self): boolean
	function GetIsThirdPartyPurchaseAllowed(self): boolean
	function GetIsThirdPartyTeleportAllowed(self): boolean
	function GetPermissions(self, assetId: string): { any }
	function SetPermissions(self, assetId: string, permissions: { any }): nil
end

declare class PhysicsService extends Instance
	function CollisionGroupContainsPart(self, name: string, part: BasePart): boolean
	function CollisionGroupSetCollidable(self, name1: string, name2: string, collidable: boolean): nil
	function CollisionGroupsAreCollidable(self, name1: string, name2: string): boolean
	function CreateCollisionGroup(self, name: string): number
	function GetCollisionGroupId(self, name: string): number
	function GetCollisionGroupName(self, name: number): string
	function GetCollisionGroups(self): { any }
	function GetMaxCollisionGroups(self): number
	function IkSolve(self, part: BasePart, target: CFrame, translateStiffness: number, rotateStiffness: number): nil
	function LocalIkSolve(self, part: BasePart, target: CFrame, translateStiffness: number, rotateStiffness: number): nil
	function RemoveCollisionGroup(self, name: string): nil
	function RenameCollisionGroup(self, from: string, to: string): nil
	function SetPartCollisionGroup(self, part: BasePart, name: string): nil
end

declare class PhysicsSettings extends Instance
	AllowSleep: boolean
	AreAnchorsShown: boolean
	AreAssembliesShown: boolean
	AreAwakePartsHighlighted: boolean
	AreBodyTypesShown: boolean
	AreContactIslandsShown: boolean
	AreContactPointsShown: boolean
	AreJointCoordinatesShown: boolean
	AreMechanismsShown: boolean
	AreModelCoordsShown: boolean
	AreOwnersShown: boolean
	ArePartCoordsShown: boolean
	AreRegionsShown: boolean
	AreTerrainReplicationRegionsShown: boolean
	AreTimestepsShown: boolean
	AreUnalignedPartsShown: boolean
	AreWorldCoordsShown: boolean
	DisableCSGv2: boolean
	ForceCSGv2: boolean
	IsInterpolationThrottleShown: boolean
	IsReceiveAgeShown: boolean
	IsTreeShown: boolean
	PhysicsEnvironmentalThrottle: Enum.EnviromentalPhysicsThrottle
	ShowDecompositionGeometry: boolean
	ThrottleAdjustTime: number
	UseCSGv2: boolean
end

declare class Player extends Instance
	AccountAge: number
	AppearanceDidLoad: boolean
	AutoJumpEnabled: boolean
	CameraMaxZoomDistance: number
	CameraMinZoomDistance: number
	CameraMode: Enum.CameraMode
	CanLoadCharacterAppearance: boolean
	Character: Model
	CharacterAppearance: string
	CharacterAppearanceId: number
	ChatMode: Enum.ChatMode
	DataComplexity: number
	DataComplexityLimit: number
	DataReady: boolean
	DevCameraOcclusionMode: Enum.DevCameraOcclusionMode
	DevComputerCameraMode: Enum.DevComputerCameraMovementMode
	DevComputerMovementMode: Enum.DevComputerMovementMode
	DevEnableMouseLock: boolean
	DevTouchCameraMode: Enum.DevTouchCameraMovementMode
	DevTouchMovementMode: Enum.DevTouchMovementMode
	DisplayName: string
	FollowUserId: number
	GameplayPaused: boolean
	Guest: boolean
	HealthDisplayDistance: number
	LocaleId: string
	MaximumSimulationRadius: number
	MembershipType: Enum.MembershipType
	NameDisplayDistance: number
	Neutral: boolean
	OsPlatform: string
	PlatformName: string
	ReplicationFocus: Instance
	RespawnLocation: SpawnLocation
	SimulationRadius: number
	Team: Team
	TeamColor: BrickColor
	Teleported: boolean
	TeleportedIn: boolean
	UserId: number
	VRDevice: string
	userId: number
	function AddToBlockList(self, userIds: { any }): nil
	function ClearCharacterAppearance(self): nil
	function DistanceFromCharacter(self, point: Vector3): number
	function GetFriendStatus(self, player: Player): Enum.FriendStatus
	function GetGameSessionID(self): string
	function GetJoinData(self): { [any]: any }
	function GetMouse(self): Mouse
	function GetNetworkPing(self): number
	function GetUnder13(self): boolean
	function HasAppearanceLoaded(self): boolean
	function IsUserAvailableForExperiment(self): boolean
	function Kick(self, message: string?): nil
	function LoadBoolean(self, key: string): boolean
	function LoadCharacterAppearance(self, assetInstance: Instance): nil
	function LoadData(self): nil
	function LoadInstance(self, key: string): Instance
	function LoadNumber(self, key: string): number
	function LoadString(self, key: string): string
	function Move(self, walkDirection: Vector3, relativeToCamera: boolean?): nil
	function RemoveCharacter(self): nil
	function RequestFriendship(self, player: Player): nil
	function RevokeFriendship(self, player: Player): nil
	function SaveBoolean(self, key: string, value: boolean): nil
	function SaveData(self): nil
	function SaveInstance(self, key: string, value: Instance): nil
	function SaveNumber(self, key: string, value: number): nil
	function SaveString(self, key: string, value: string): nil
	function SetAccountAge(self, accountAge: number): nil
	function SetCharacterAppearanceJson(self, jsonBlob: string): nil
	function SetMembershipType(self, membershipType: Enum.MembershipType): nil
	function SetSuperSafeChat(self, value: boolean): nil
	function SetUnder13(self, value: boolean): nil
	function UpdatePlayerBlocked(self, userId: number, blocked: boolean): nil
	function loadBoolean(self, key: string): boolean
	function loadInstance(self, key: string): Instance
	function loadNumber(self, key: string): number
	function loadString(self, key: string): string
	function saveBoolean(self, key: string, value: boolean): nil
	function saveInstance(self, key: string, value: Instance): nil
	function saveNumber(self, key: string, value: number): nil
	function saveString(self, key: string, value: string): nil
	function GetFriendsOnline(self, maxFriends: number?): { any }
	function GetRankInGroup(self, groupId: number): number
	function GetRoleInGroup(self, groupId: number): string
	function IsBestFriendsWith(self, userId: number): boolean
	function IsFriendsWith(self, userId: number): boolean
	function IsInGroup(self, groupId: number): boolean
	function LoadCharacter(self): nil
	function LoadCharacterBlocking(self): nil
	function LoadCharacterWithHumanoidDescription(self, humanoidDescription: HumanoidDescription): nil
	function RequestStreamAroundAsync(self, position: Vector3, timeOut: number?): nil
	function WaitForDataReady(self): boolean
	function isFriendsWith(self, userId: number): boolean
	function waitForDataReady(self): boolean
	CharacterAdded: RBXScriptSignal
	CharacterAppearanceLoaded: RBXScriptSignal
	CharacterRemoving: RBXScriptSignal
	Chatted: RBXScriptSignal
	FriendStatusChanged: RBXScriptSignal
	Idled: RBXScriptSignal
	OnTeleport: RBXScriptSignal
	SimulationRadiusChanged: RBXScriptSignal
end

declare class PlayerEmulatorService extends Instance
	CustomPoliciesEnabled: boolean
	EmulatedCountryCode: string
	EmulatedGameLocale: string
	PlayerEmulationEnabled: boolean
	SerializedEmulatedPolicyInfo: BinaryString
	function GetEmulatedPolicyInfo(self): { [any]: any }
	function RegionCodeWillHaveAutomaticNonCustomPolicies(self, regionCode: string): boolean
	function SetEmulatedPolicyInfo(self, emulatedPolicyInfo: { [any]: any }): nil
end

declare class PlayerScripts extends Instance
	function ClearComputerCameraMovementModes(self): nil
	function ClearComputerMovementModes(self): nil
	function ClearTouchCameraMovementModes(self): nil
	function ClearTouchMovementModes(self): nil
	function GetRegisteredComputerCameraMovementModes(self): { any }
	function GetRegisteredComputerMovementModes(self): { any }
	function GetRegisteredTouchCameraMovementModes(self): { any }
	function GetRegisteredTouchMovementModes(self): { any }
	function RegisterComputerCameraMovementMode(self, cameraMovementMode: Enum.ComputerCameraMovementMode): nil
	function RegisterComputerMovementMode(self, movementMode: Enum.ComputerMovementMode): nil
	function RegisterTouchCameraMovementMode(self, cameraMovementMode: Enum.TouchCameraMovementMode): nil
	function RegisterTouchMovementMode(self, movementMode: Enum.TouchMovementMode): nil
	ComputerCameraMovementModeRegistered: RBXScriptSignal
	ComputerMovementModeRegistered: RBXScriptSignal
	TouchCameraMovementModeRegistered: RBXScriptSignal
	TouchMovementModeRegistered: RBXScriptSignal
end

declare class Players extends Instance
	BubbleChat: boolean
	CharacterAutoLoads: boolean
	ClassicChat: boolean
	LocalPlayer: Player
	MaxPlayers: number
	MaxPlayersInternal: number
	NumPlayers: number
	PreferredPlayers: number
	PreferredPlayersInternal: number
	RespawnTime: number
	localPlayer: Player
	numPlayers: number
	function Chat(self, message: string): nil
	function CreateLocalPlayer(self): Player
	function GetPlayerByUserId(self, userId: number): Player
	function GetPlayerFromCharacter(self, character: Model): Player
	function GetPlayers(self): Objects
	function ReportAbuse(self, player: Player, reason: string, optionalMessage: string): nil
	function SetChatStyle(self, style: Enum.ChatStyle?): nil
	function SetLocalPlayerInfo(self, userId: number, userName: string, displayName: string, membershipType: Enum.MembershipType, isUnder13: boolean): nil
	function TeamChat(self, message: string): nil
	function WhisperChat(self, message: string, player: Instance): nil
	function getPlayers(self): Objects
	function playerFromCharacter(self, character: Model): Player
	function players(self): Objects
	function CreateHumanoidModelFromDescription(self, description: HumanoidDescription, rigType: Enum.HumanoidRigType, assetTypeVerification: Enum.AssetTypeVerification?): Model
	function CreateHumanoidModelFromUserId(self, userId: number): Model
	function GetCharacterAppearanceAsync(self, userId: number): Model
	function GetCharacterAppearanceInfoAsync(self, userId: number): { [any]: any }
	function GetFriendsAsync(self, userId: number): FriendPages
	function GetHumanoidDescriptionFromOutfitId(self, outfitId: number): HumanoidDescription
	function GetHumanoidDescriptionFromUserId(self, userId: number): HumanoidDescription
	function GetNameFromUserIdAsync(self, userId: number): string
	function GetUserIdFromNameAsync(self, userName: string): number
	function GetUserThumbnailAsync(self, userId: number, thumbnailType: Enum.ThumbnailType, thumbnailSize: Enum.ThumbnailSize): any
	FriendRequestEvent: RBXScriptSignal
	GameAnnounce: RBXScriptSignal
	PlayerAdded: RBXScriptSignal
	PlayerChatted: RBXScriptSignal
	PlayerConnecting: RBXScriptSignal
	PlayerDisconnecting: RBXScriptSignal
	PlayerMembershipChanged: RBXScriptSignal
	PlayerRejoining: RBXScriptSignal
	PlayerRemoving: RBXScriptSignal
end

declare class Plugin extends Instance
	CollisionEnabled: boolean
	GridSize: number
	HostDataModelType: Enum.StudioDataModelType
	HostDataModelTypeIsCurrent: boolean
	MultipleDocumentInterfaceInstance: MultipleDocumentInterfaceInstance
	UsesAssetInsertionDrag: boolean
	function Activate(self, exclusiveMouse: boolean): nil
	function CreatePluginAction(self, actionId: string, text: string, statusTip: string, iconName: string?, allowBinding: boolean?): PluginAction
	function CreatePluginMenu(self, id: string, title: string?, icon: string?): PluginMenu
	function CreateToolbar(self, name: string): PluginToolbar
	function Deactivate(self): nil
	function GetItem(self, key: string, defaultValue: any): any
	function GetJoinMode(self): Enum.JointCreationMode
	function GetMouse(self): PluginMouse
	function GetSelectedRibbonTool(self): Enum.RibbonTool
	function GetSetting(self, key: string): any
	function GetStudioUserId(self): number
	function Invoke(self, key: string, arguments: any): nil
	function IsActivated(self): boolean
	function IsActivatedWithExclusiveMouse(self): boolean
	function Negate(self, objects: Objects): Objects
	function OnInvoke(self, key: string, callback: Function): Instance
	function OnSetItem(self, key: string, callback: Function): Instance
	function OpenScript(self, script: LuaSourceContainer, lineNumber: number?): nil
	function OpenWikiPage(self, url: string): nil
	function PauseSound(self, sound: Instance): nil
	function PlaySound(self, sound: Instance, normalizedTimePosition: number?): nil
	function ResumeSound(self, sound: Instance): nil
	function SaveSelectedToRoblox(self): nil
	function SelectRibbonTool(self, tool: Enum.RibbonTool, position: UDim2): nil
	function Separate(self, objects: Objects): Objects
	function SetItem(self, key: string, value: any): nil
	function SetReady(self): nil
	function SetSetting(self, key: string, value: any): nil
	function StartDecalDrag(self, decal: Instance): nil
	function StartDrag(self, dragData: { [any]: any }): nil
	function StopAllSounds(self): nil
	function Union(self, objects: Objects): Instance
	function CreateDockWidgetPluginGui(self, pluginGuiId: string, dockWidgetPluginGuiInfo: DockWidgetPluginGuiInfo): DockWidgetPluginGui
	function CreateQWidgetPluginGui(self, pluginGuiId: string, pluginGuiOptions: { [any]: any }): QWidgetPluginGui
	function ImportFbxAnimation(self, rigModel: Instance, isR15: boolean?): Instance
	function ImportFbxRig(self, isR15: boolean?): Instance
	function PromptForExistingAssetId(self, assetType: string): number
	function PromptSaveSelection(self, suggestedFileName: string?): boolean
	Deactivation: RBXScriptSignal
	Ready: RBXScriptSignal
	Unloading: RBXScriptSignal
end

declare class PluginAction extends Instance
	ActionId: string
	AllowBinding: boolean
	Checked: boolean
	DefaultShortcut: string
	Enabled: boolean
	StatusTip: string
	Text: string
	Triggered: RBXScriptSignal
end

declare class PluginDebugService extends Instance
end

declare class PluginDragEvent extends Instance
	Data: string
	MimeType: string
	Position: Vector2
	Sender: string
end

declare class PluginGuiService extends Instance
end

declare class PluginManager extends Instance
	function CreatePlugin(self): Instance
	function ExportPlace(self, filePath: string?): nil
	function ExportSelection(self, filePath: string?): nil
end

declare class PluginManagerInterface extends Instance
	function CreatePlugin(self): Instance
	function ExportPlace(self, filePath: string?): nil
	function ExportSelection(self, filePath: string?): nil
end

declare class PluginMenu extends Instance
	Icon: string
	Title: string
	function AddAction(self, action: Instance): nil
	function AddMenu(self, menu: Instance): nil
	function AddNewAction(self, actionId: string, text: string, icon: string?): Instance
	function AddSeparator(self): nil
	function Clear(self): nil
	function ShowAsync(self): Instance
end

declare class PluginPolicyService extends Instance
	function GetPluginPolicy(self, pluginName: string): { [any]: any }
end

declare class PluginToolbar extends Instance
	function CreateButton(self, buttonId: string, tooltip: string, iconname: string, text: string?): Instance
end

declare class PluginToolbarButton extends Instance
	ClickableWhenViewportHidden: boolean
	Enabled: boolean
	Icon: Content
	function SetActive(self, active: boolean): nil
	Click: RBXScriptSignal
end

declare class PointsService extends Instance
	function GetAwardablePoints(self): number
	function AwardPoints(self, userId: number, amount: number): any
	function GetGamePointBalance(self, userId: number): number
	function GetPointBalance(self, userId: number): number
	PointsAwarded: RBXScriptSignal
end

declare class PolicyService extends Instance
	IsLuobuServer: Enum.TriStateBoolean
	LuobuWhitelisted: Enum.TriStateBoolean
	function GetPolicyInfoForPlayerAsync(self, player: Instance): { [any]: any }
	function GetPolicyInfoForServerRobloxOnlyAsync(self): { [any]: any }
end

declare class PoseBase extends Instance
	EasingDirection: Enum.PoseEasingDirection
	EasingStyle: Enum.PoseEasingStyle
	Weight: number
end

declare class NumberPose extends PoseBase
	Value: number
end

declare class Pose extends PoseBase
	CFrame: CFrame
	MaskWeight: number
	function AddSubPose(self, pose: Instance): nil
	function GetSubPoses(self): Objects
	function RemoveSubPose(self, pose: Instance): nil
end

declare class PostEffect extends Instance
	Enabled: boolean
end

declare class BloomEffect extends PostEffect
	Intensity: number
	Size: number
	Threshold: number
end

declare class BlurEffect extends PostEffect
	Size: number
end

declare class ColorCorrectionEffect extends PostEffect
	Brightness: number
	Contrast: number
	Saturation: number
	TintColor: Color3
end

declare class DepthOfFieldEffect extends PostEffect
	FarIntensity: number
	FocusDistance: number
	InFocusRadius: number
	NearIntensity: number
end

declare class SunRaysEffect extends PostEffect
	Intensity: number
	Spread: number
end

declare class ProcessInstancePhysicsService extends Instance
end

declare class ProximityPrompt extends Instance
	ActionText: string
	AutoLocalize: boolean
	ClickablePrompt: boolean
	Enabled: boolean
	Exclusivity: Enum.ProximityPromptExclusivity
	GamepadKeyCode: Enum.KeyCode
	HoldDuration: number
	KeyboardKeyCode: Enum.KeyCode
	MaxActivationDistance: number
	ObjectText: string
	RequiresLineOfSight: boolean
	RootLocalizationTable: LocalizationTable
	Style: Enum.ProximityPromptStyle
	UIOffset: Vector2
	function InputHoldBegin(self): nil
	function InputHoldEnd(self): nil
	PromptButtonHoldBegan: RBXScriptSignal
	PromptButtonHoldEnded: RBXScriptSignal
	PromptHidden: RBXScriptSignal
	PromptShown: RBXScriptSignal
	TriggerEnded: RBXScriptSignal
	Triggered: RBXScriptSignal
end

declare class ProximityPromptService extends Instance
	Enabled: boolean
	MaxPromptsVisible: number
	PromptButtonHoldBegan: RBXScriptSignal
	PromptButtonHoldEnded: RBXScriptSignal
	PromptHidden: RBXScriptSignal
	PromptShown: RBXScriptSignal
	PromptTriggerEnded: RBXScriptSignal
	PromptTriggered: RBXScriptSignal
end

declare class PublishService extends Instance
	function PublishDescendantAssets(self, instance: Instance): boolean
	function PublishCageMeshAsync(self, wrap: Instance, cageType: Enum.CageType): Content
end

declare class RbxAnalyticsService extends Instance
	function AddGlobalPointsField(self, key: string, value: number): nil
	function AddGlobalPointsTag(self, key: string, value: string): nil
	function GetClientId(self): string
	function GetSessionId(self): string
	function ReleaseRBXEventStream(self, target: string): nil
	function RemoveGlobalPointsField(self, key: string): nil
	function RemoveGlobalPointsTag(self, key: string): nil
	function ReportCounter(self, counterName: string, amount: number?): nil
	function ReportInfluxSeries(self, seriesName: string, points: { [any]: any }, throttlingPercentage: number): nil
	function ReportStats(self, category: string, value: number): nil
	function ReportToDiagByCountryCode(self, featureName: string, measureName: string, seconds: number): nil
	function SendEventDeferred(self, target: string, eventContext: string, eventName: string, additionalArgs: { [any]: any }): nil
	function SendEventImmediately(self, target: string, eventContext: string, eventName: string, additionalArgs: { [any]: any }): nil
	function SetRBXEvent(self, target: string, eventContext: string, eventName: string, additionalArgs: { [any]: any }): nil
	function SetRBXEventStream(self, target: string, eventContext: string, eventName: string, additionalArgs: { [any]: any }): nil
	function TrackEvent(self, category: string, action: string, label: string, value: number?): nil
	function TrackEventWithArgs(self, category: string, action: string, label: string, args: { [any]: any }, value: number?): nil
	function UpdateHeartbeatObject(self, args: { [any]: any }): nil
end

declare class ReflectionMetadata extends Instance
end

declare class ReflectionMetadataCallbacks extends Instance
end

declare class ReflectionMetadataClasses extends Instance
end

declare class ReflectionMetadataEnums extends Instance
end

declare class ReflectionMetadataEvents extends Instance
end

declare class ReflectionMetadataFunctions extends Instance
end

declare class ReflectionMetadataItem extends Instance
	Browsable: boolean
	ClassCategory: string
	ClientOnly: boolean
	Constraint: string
	Deprecated: boolean
	EditingDisabled: boolean
	EditorType: string
	FFlag: string
	IsBackend: boolean
	PropertyOrder: number
	ScriptContext: string
	ServerOnly: boolean
	UIMaximum: number
	UIMinimum: number
	UINumTicks: number
end

declare class ReflectionMetadataClass extends ReflectionMetadataItem
	ExplorerImageIndex: number
	ExplorerOrder: number
	Insertable: boolean
	PreferredParent: string
end

declare class ReflectionMetadataEnum extends ReflectionMetadataItem
end

declare class ReflectionMetadataEnumItem extends ReflectionMetadataItem
end

declare class ReflectionMetadataMember extends ReflectionMetadataItem
end

declare class ReflectionMetadataProperties extends Instance
end

declare class ReflectionMetadataYieldFunctions extends Instance
end

declare class RemoteDebuggerServer extends Instance
end

declare class RemoteEvent extends Instance
	function FireAllClients(self, arguments: any): nil
	function FireClient(self, player: Player, arguments: any): nil
	function FireServer(self, arguments: any): nil
	OnClientEvent: RBXScriptSignal
	OnServerEvent: RBXScriptSignal
end

declare class RemoteFunction extends Instance
	function InvokeClient(self, player: Player, arguments: any): any
	function InvokeServer(self, arguments: any): any
	OnClientInvoke: (arguments: any) -> any
	OnServerInvoke: (player: Instance, arguments: any) -> any
end

declare class RenderSettings extends Instance
	AutoFRMLevel: number
	EagerBulkExecution: boolean
	EditQualityLevel: Enum.QualityLevel
	EnableFRM: boolean
	ExportMergeByMaterial: boolean
	FrameRateManager: Enum.FramerateManagerMode
	GraphicsMode: Enum.GraphicsMode
	MeshCacheSize: number
	MeshPartDetailLevel: Enum.MeshPartDetailLevel
	QualityLevel: Enum.QualityLevel
	ReloadAssets: boolean
	RenderCSGTrianglesDebug: boolean
	ShowBoundingBoxes: boolean
	function GetMaxQualityLevel(self): number
end

declare class RenderingTest extends Instance
	CFrame: CFrame
	ComparisonDiffThreshold: number
	ComparisonMethod: Enum.RenderingTestComparisonMethod
	ComparisonPsnrThreshold: number
	Description: string
	FieldOfView: number
	Orientation: Vector3
	Position: Vector3
	QualityLevel: number
	ShouldSkip: boolean
	Ticket: string
	function RenderdocTriggerCapture(self): nil
end

declare class ReplicatedFirst extends Instance
	function IsDefaultLoadingGuiRemoved(self): boolean
	function IsFinishedReplicating(self): boolean
	function RemoveDefaultLoadingScreen(self): nil
	function SetDefaultLoadingGuiRemoved(self): nil
	DefaultLoadingGuiRemoved: RBXScriptSignal
	FinishedReplicating: RBXScriptSignal
	RemoveDefaultLoadingGuiSignal: RBXScriptSignal
end

declare class ReplicatedScriptService extends Instance
end

declare class ReplicatedStorage extends Instance
end

declare class RobloxPluginGuiService extends Instance
end

declare class RobloxReplicatedStorage extends Instance
end

declare class RotationCurve extends Instance
	Length: number
	function GetKeyAtIndex(self, index: number): RotationCurveKey
	function GetKeyIndicesAtTime(self, time: number): { any }
	function GetKeys(self): { any }
	function GetValueAtTime(self, time: number): CoordinateFrame?
	function InsertKey(self, key: RotationCurveKey): { any }
	function RemoveKeyAtIndex(self, startingIndex: number, count: number?): number
	function SetKeys(self, keys: { any }): number
end

declare class RunService extends Instance
	ClientGitHash: string
	function BindToRenderStep(self, name: string, priority: number, func: Function): nil
	function GetCoreScriptVersion(self): string
	function GetRobloxVersion(self): string
	function IsClient(self): boolean
	function IsEdit(self): boolean
	function IsRunMode(self): boolean
	function IsRunning(self): boolean
	function IsServer(self): boolean
	function IsStudio(self): boolean
	function Pause(self): nil
	function Reset(self): nil
	function Run(self): nil
	function Set3dRenderingEnabled(self, enable: boolean): nil
	function SetRobloxGuiFocused(self, focus: boolean): nil
	function Stop(self): nil
	function UnbindFromRenderStep(self, name: string): nil
	function setThrottleFramerateEnabled(self, enable: boolean): nil
	Heartbeat: RBXScriptSignal
	PostSimulation: RBXScriptSignal
	PreAnimation: RBXScriptSignal
	PreRender: RBXScriptSignal
	PreSimulation: RBXScriptSignal
	RenderStepped: RBXScriptSignal
	Stepped: RBXScriptSignal
end

declare class RuntimeScriptService extends Instance
end

declare class ScriptChangeService extends Instance
	ScriptAdded: RBXScriptSignal
	ScriptBeingRemoved: RBXScriptSignal
	ScriptChanged: RBXScriptSignal
	ScriptFullNameChanged: RBXScriptSignal
	ScriptSourceChanged: RBXScriptSignal
	ScriptSourceEdited: RBXScriptSignal
end

declare class ScriptCloneWatcher extends Instance
end

declare class ScriptCloneWatcherHelper extends Instance
end

declare class ScriptContext extends Instance
	ScriptsDisabled: boolean
	function AddCoreScriptLocal(self, name: string, parent: Instance): nil
	function GetCoverageStats(self): { any }
	function SetTimeout(self, seconds: number): nil
	Error: RBXScriptSignal
	ErrorDetailed: RBXScriptSignal
end

declare class ScriptDebugger extends Instance
	CurrentLine: number
	IsDebugging: boolean
	IsPaused: boolean
	Script: Instance
	function AddWatch(self, expression: string): Instance
	function GetBreakpoints(self): Objects
	function GetGlobals(self, stackFrame: number?): { [any]: any }
	function GetLocals(self, stackFrame: number?): { [any]: any }
	function GetStack(self): { any }
	function GetUpvalues(self, stackFrame: number?): { [any]: any }
	function GetWatchValue(self, watch: Instance): any
	function GetWatches(self): Objects
	function SetBreakpoint(self, line: number, isContextDependentBreakpoint: boolean): Instance
	function SetGlobal(self, name: string, value: any, stackFrame: number): nil
	function SetLocal(self, name: string, value: any, stackFrame: number?): nil
	function SetUpvalue(self, name: string, value: any, stackFrame: number?): nil
	BreakpointAdded: RBXScriptSignal
	BreakpointRemoved: RBXScriptSignal
	EncounteredBreak: RBXScriptSignal
	Resuming: RBXScriptSignal
	WatchAdded: RBXScriptSignal
	WatchRemoved: RBXScriptSignal
end

declare class ScriptRegistrationService extends Instance
	function GetSourceContainerByScriptGuid(self, guid: string): LuaSourceContainer
end

declare class ScriptService extends Instance
end

declare class Selection extends Instance
	ActiveInstance: Instance
	SelectionThickness: number
	function Add(self, instancesToAdd: Objects): nil
	function ClearTerrainSelectionHack(self): nil
	function Get(self): Objects
	function Remove(self, instancesToRemove: Objects): nil
	function Set(self, selection: Objects): nil
	function SetTerrainSelectionHack(self, center: Vector3, size: Vector3): nil
	SelectionChanged: RBXScriptSignal
end

declare class ServerScriptService extends Instance
	LoadStringEnabled: boolean
end

declare class ServerStorage extends Instance
end

declare class ServiceProvider extends Instance
	function FindService(self, className: string): Instance
	function GetService(self, className: string): Instance
	function getService(self, className: string): Instance
	function service(self, className: string): Instance
	Close: RBXScriptSignal
	CloseLate: RBXScriptSignal
	ServiceAdded: RBXScriptSignal
	ServiceRemoving: RBXScriptSignal
end

declare class DataModel extends ServiceProvider
	CreatorId: number
	CreatorType: Enum.CreatorType
	GameId: number
	GearGenreSetting: Enum.GearGenreSetting
	Genre: Enum.Genre
	IsSFFlagsLoaded: boolean
	JobId: string
	PlaceId: number
	PlaceVersion: number
	PrivateServerId: string
	PrivateServerOwnerId: number
	VIPServerId: string
	VIPServerOwnerId: number
	Workspace: Workspace
	lighting: Instance
	workspace: Workspace
	function BindToClose(self, func: Function): nil
	function DefineFastFlag(self, name: string, defaultValue: boolean): boolean
	function DefineFastInt(self, name: string, defaultValue: number): number
	function DefineFastString(self, name: string, defaultValue: string): string
	function GetEngineFeature(self, name: string): boolean
	function GetFastFlag(self, name: string): boolean
	function GetFastInt(self, name: string): number
	function GetFastString(self, name: string): string
	function GetJobsInfo(self): { any }
	function GetMessage(self): string
	function GetObjects(self, url: Content): Objects
	function GetObjectsList(self, urls: { any }): { any }
	function GetRemoteBuildMode(self): boolean
	function IsGearTypeAllowed(self, gearType: Enum.GearType): boolean
	function IsLoaded(self): boolean
	function Load(self, url: Content): nil
	function OpenScreenshotsFolder(self): nil
	function OpenVideosFolder(self): nil
	function ReportInGoogleAnalytics(self, category: string, action: string?, label: string?, value: number?): nil
	function SetFastFlagForTesting(self, name: string, newValue: boolean): boolean
	function SetFastIntForTesting(self, name: string, newValue: number): number
	function SetFastStringForTesting(self, name: string, newValue: string): string
	function SetPlaceId(self, placeId: number): nil
	function SetUniverseId(self, universeId: number): nil
	function Shutdown(self): nil
	function GetObjectsAsync(self, url: Content): Objects
	function HttpGetAsync(self, url: string, httpRequestType: Enum.HttpRequestType?): string
	function HttpPostAsync(self, url: string, data: string, contentType: string?, httpRequestType: Enum.HttpRequestType?): string
	function InsertObjectsAndJoinIfLegacyAsync(self, url: Content): Objects
	function SavePlace(self, saveFilter: Enum.SaveFilter?): boolean
	AllowedGearTypeChanged: RBXScriptSignal
	GraphicsQualityChangeRequest: RBXScriptSignal
	ItemChanged: RBXScriptSignal
	Loaded: RBXScriptSignal
	ScreenshotReady: RBXScriptSignal
	ScreenshotSavedToAlbum: RBXScriptSignal
	OnClose: () -> any
end

declare class GenericSettings extends ServiceProvider
end

declare class AnalysticsSettings extends GenericSettings
end

declare class GlobalSettings extends GenericSettings
	function GetFFlag(self, name: string): boolean
	function GetFVariable(self, name: string): string
end

declare class UserSettings extends GenericSettings
	function IsUserFeatureEnabled(self, name: string): boolean
	function Reset(self): nil
end

declare class SessionService extends Instance
	function GetCreatedTimestampUtcMs(self, sid: string): number
	function GetMetadata(self, sid: string, key: string): any
	function GetRootSID(self): string
	function RemoveMetadata(self, sid: string, key: string): nil
	function RemoveSession(self, sid: string): nil
	function ReplaceSession(self, sid: string, tag: string): nil
	function SessionExists(self, sid: string): boolean
	function SetMetadata(self, sid: string, key: string, value: any): nil
	function SetSession(self, parentSid: string, childSid: string, tag: string): nil
end

declare class Sky extends Instance
	CelestialBodiesShown: boolean
	MoonAngularSize: number
	MoonTextureId: Content
	SkyboxBk: Content
	SkyboxDn: Content
	SkyboxFt: Content
	SkyboxLf: Content
	SkyboxRt: Content
	SkyboxUp: Content
	StarCount: number
	SunAngularSize: number
	SunTextureId: Content
end

declare class Smoke extends Instance
	Color: Color3
	Enabled: boolean
	Opacity: number
	RiseVelocity: number
	Size: number
	TimeScale: number
end

declare class SocialService extends Instance
	function InvokeGameInvitePromptClosed(self, player: Instance, recipientIds: { any }): nil
	function PromptGameInvite(self, player: Instance): nil
	function CanSendGameInviteAsync(self, player: Instance): boolean
	GameInvitePromptClosed: RBXScriptSignal
	PromptInviteRequested: RBXScriptSignal
end

declare class Sound extends Instance
	ChannelCount: number
	EmitterSize: number
	IsLoaded: boolean
	IsPaused: boolean
	IsPlaying: boolean
	Looped: boolean
	MaxDistance: number
	MinDistance: number
	Pitch: number
	PlayOnRemove: boolean
	PlaybackLoudness: number
	PlaybackSpeed: number
	Playing: boolean
	RollOffMaxDistance: number
	RollOffMinDistance: number
	RollOffMode: Enum.RollOffMode
	SoundGroup: SoundGroup
	SoundId: Content
	TimeLength: number
	TimePosition: number
	UsageContextPermission: Enum.UsageContext
	Volume: number
	isPlaying: boolean
	function Pause(self): nil
	function Play(self): nil
	function Resume(self): nil
	function Stop(self): nil
	function pause(self): nil
	function play(self): nil
	function stop(self): nil
	DidLoop: RBXScriptSignal
	Ended: RBXScriptSignal
	Loaded: RBXScriptSignal
	Paused: RBXScriptSignal
	Played: RBXScriptSignal
	Resumed: RBXScriptSignal
	Stopped: RBXScriptSignal
end

declare class SoundEffect extends Instance
	Enabled: boolean
	Priority: number
end

declare class ChorusSoundEffect extends SoundEffect
	Depth: number
	Mix: number
	Rate: number
end

declare class CompressorSoundEffect extends SoundEffect
	Attack: number
	GainMakeup: number
	Ratio: number
	Release: number
	SideChain: Instance
	Threshold: number
end

declare class CustomDspSoundEffect extends SoundEffect
end

declare class ChannelSelectorSoundEffect extends CustomDspSoundEffect
	Channel: number
end

declare class DistortionSoundEffect extends SoundEffect
	Level: number
end

declare class EchoSoundEffect extends SoundEffect
	Delay: number
	DryLevel: number
	Feedback: number
	WetLevel: number
end

declare class EqualizerSoundEffect extends SoundEffect
	HighGain: number
	LowGain: number
	MidGain: number
end

declare class FlangeSoundEffect extends SoundEffect
	Depth: number
	Mix: number
	Rate: number
end

declare class PitchShiftSoundEffect extends SoundEffect
	Octave: number
end

declare class ReverbSoundEffect extends SoundEffect
	DecayTime: number
	Density: number
	Diffusion: number
	DryLevel: number
	WetLevel: number
end

declare class TremoloSoundEffect extends SoundEffect
	Depth: number
	Duty: number
	Frequency: number
end

declare class SoundGroup extends Instance
	Volume: number
end

declare class SoundService extends Instance
	AmbientReverb: Enum.ReverbType
	DistanceFactor: number
	DopplerScale: number
	RespectFilteringEnabled: boolean
	RolloffScale: number
	function BeginRecording(self): boolean
	function GetListener(self): any
	function GetOutputDevice(self): any
	function GetOutputDevices(self): any
	function GetSoundMemoryData(self): { [any]: any }
	function PlayLocalSound(self, sound: Instance): nil
	function SetListener(self, listenerType: Enum.ListenerType, listener: any): nil
	function SetOutputDevice(self, name: string, guid: string): nil
	function SetRecordingDevice(self, deviceIndex: number): boolean
	function EndRecording(self): { [any]: any }
	function GetRecordingDevices(self): { [any]: any }
	DeviceListChanged: RBXScriptSignal
end

declare class Sparkles extends Instance
	Color: Color3
	Enabled: boolean
	SparkleColor: Color3
	TimeScale: number
end

declare class SpawnerService extends Instance
end

declare class Speaker extends Instance
	ChannelCount: number
	PlaybackLoudness: number
	RollOffMaxDistance: number
	RollOffMinDistance: number
	RollOffMode: Enum.RollOffMode
	SoundGroup: SoundGroup
	Source: Instance
	Volume: number
end

declare class StackFrame extends Instance
	FrameId: number
	FrameName: string
	FrameType: Enum.DebuggerFrameType
	Globals: DebuggerVariable
	Line: number
	Locals: DebuggerVariable
	Populated: boolean
	Script: string
	Upvalues: DebuggerVariable
end

declare class StandalonePluginScripts extends Instance
end

declare class StarterGear extends Instance
end

declare class StarterPack extends Instance
end

declare class StarterPlayer extends Instance
	AllowCustomAnimations: boolean
	AutoJumpEnabled: boolean
	CameraMaxZoomDistance: number
	CameraMinZoomDistance: number
	CameraMode: Enum.CameraMode
	CharacterJumpHeight: number
	CharacterJumpPower: number
	CharacterMaxSlopeAngle: number
	CharacterUseJumpPower: boolean
	CharacterWalkSpeed: number
	DevCameraOcclusionMode: Enum.DevCameraOcclusionMode
	DevComputerCameraMovementMode: Enum.DevComputerCameraMovementMode
	DevComputerMovementMode: Enum.DevComputerMovementMode
	DevTouchCameraMovementMode: Enum.DevTouchCameraMovementMode
	DevTouchMovementMode: Enum.DevTouchMovementMode
	EnableMouseLockOption: boolean
	GameSettingsAssetIDFace: number
	GameSettingsAssetIDHead: number
	GameSettingsAssetIDLeftArm: number
	GameSettingsAssetIDLeftLeg: number
	GameSettingsAssetIDPants: number
	GameSettingsAssetIDRightArm: number
	GameSettingsAssetIDRightLeg: number
	GameSettingsAssetIDShirt: number
	GameSettingsAssetIDTeeShirt: number
	GameSettingsAssetIDTorso: number
	GameSettingsAvatar: Enum.GameAvatarType
	GameSettingsR15Collision: Enum.R15CollisionType
	GameSettingsScaleRangeBodyType: NumberRange
	GameSettingsScaleRangeHead: NumberRange
	GameSettingsScaleRangeHeight: NumberRange
	GameSettingsScaleRangeProportion: NumberRange
	GameSettingsScaleRangeWidth: NumberRange
	HealthDisplayDistance: number
	LoadCharacterAppearance: boolean
	LoadCharacterLayeredClothing_: Enum.LoadCharacterLayeredClothing
	NameDisplayDistance: number
	UserEmotesEnabled: boolean
	function ClearDefaults(self): nil
end

declare class StarterPlayerScripts extends Instance
end

declare class StarterCharacterScripts extends StarterPlayerScripts
end

declare class Stats extends Instance
	ContactsCount: number
	DataReceiveKbps: number
	DataSendKbps: number
	HeartbeatTimeMs: number
	InstanceCount: number
	MovingPrimitivesCount: number
	PhysicsReceiveKbps: number
	PhysicsSendKbps: number
	PhysicsStepTimeMs: number
	PrimitivesCount: number
	function GetBrowserTrackerId(self): string
	function GetMemoryUsageMbForTag(self, tag: Enum.DeveloperMemoryTag): number
	function GetTotalMemoryUsageMb(self): number
	function GetPaginatedMemoryByTexture(self, queryType: Enum.TextureQueryType, pageIndex: number, pageSize: number): { [any]: any }
end

declare class StatsItem extends Instance
	DisplayName: string
	function GetValue(self): number
	function GetValueString(self): string
end

declare class RunningAverageItemDouble extends StatsItem
end

declare class RunningAverageItemInt extends StatsItem
end

declare class RunningAverageTimeIntervalItem extends StatsItem
end

declare class TotalCountTimeIntervalItem extends StatsItem
end

declare class StopWatchReporter extends Instance
	function FinishTask(self, taskId: number): nil
	function SendReport(self, reportName: string): nil
	function StartTask(self, reportName: string, taskName: string): number
end

declare class Studio extends Instance
	TODO_Color: Color3
	function_Color: Color3
	local_Color: Color3
	nil_Color: Color3
	self_Color: Color3
	Active_Color: Color3
	Active_Hover_Over_Color: Color3
	Always_Save_Script_Changes: boolean
	Animate_Hover_Over: boolean
	Auto_Clean_Empty_Line: boolean
	Auto_Closing_Brackets: boolean
	Auto_Closing_Quotes: boolean
	Auto_Indent_Rule: Enum.AutoIndentRule
	AutoRecovery_Enabled: boolean
	AutoRecovery_Interval_Minutes: number
	AutoRecovery_Path: QDir
	Background_Color: Color3
	Basic_Objects_Display_Mode: Enum.ListDisplayMode
	Bool_Color: Color3
	Bracket_Color: Color3
	Builtin_Function_Color: Color3
	Camera_Mouse_Wheel_Speed: number
	Camera_Shift_Speed: number
	Camera_Speed: number
	Camera_Zoom_to_Mouse_Position: boolean
	Clear_Output_On_Start: boolean
	CommandBarLocalState: boolean
	Comment_Color: Color3
	Current_Line_Highlight_Color: Color3
	Debugger_Current_Line_Color: Color3
	Debugger_Error_Line_Color: Color3
	DefaultScriptFileDir: QDir
	DeprecatedObjectsShown: boolean
	DisplayLanguage: string
	Doc_View_Code_Background_Color: Color3
	Drag_Multiple_Parts_As_Single_Part: boolean
	Enable_Autocomplete: boolean
	Enable_Autocomplete_Doc_View: boolean
	Enable_CoreScript_Debugger: boolean
	Enable_Http_Sandboxing: boolean
	Enable_Internal_Beta_Features: boolean
	Enable_Internal_Features: boolean
	Enable_Script_Analysis: boolean
	Enable_Scrollbar_Markers: boolean
	Enable_Signature_Help: boolean
	Enable_Signature_Help_Doc_View: boolean
	Enable_Temporary_Tabs: boolean
	Enable_Temporary_Tabs_In_Explorer: boolean
	Enable_Type_Hover: boolean
	EnableOnTypeAutocomplete: boolean
	Error_Color: Color3
	Find_Selection_Background_Color: Color3
	Font: QFont
	Format_On_Paste: boolean
	Format_On_Type: boolean
	Function_Name_Color: Color3
	Highlight_Current_Line: boolean
	Highlight_Occurances: boolean
	Hover_Animate_Speed: Enum.HoverAnimateSpeed
	Hover_Box_Thickness: number
	Hover_Over_Color: Color3
	Indent_Using_Spaces: boolean
	Keyword_Color: Color3
	Line_Thickness: number
	LocalAssetsFolder: QDir
	LuaDebuggerEnabled: boolean
	LuaDebuggerEnabledAtStartup: boolean
	Luau_Keyword_Color: Color3
	Matching_Word_Background_Color: Color3
	Maximum_Output_Lines: number
	Menu_Item_Background_Color: Color3
	Method_Color: Color3
	Number_Color: Color3
	Only_Play_Audio_from_Window_in_Focus: boolean
	Operator_Color: Color3
	Output_Font: QFont
	Output_Layout_Mode: Enum.OutputLayoutMode
	OverrideCoreScripts: boolean
	OverrideCoreScriptsDir: QDir
	PermissionLevelShown: Enum.PermissionLevelShown
	Physical_Draggers_Select_Scope_By_Default: boolean
	Pivot_Snap_To_Geometry_Color: Color3
	PluginDebuggingEnabled: boolean
	PluginsDir: QDir
	Primary_Text_Color: Color3
	Property_Color: Color3
	Render_Throttle_Percentage: number
	Respect_Studio_shortcuts_when_game_has_focus: boolean
	Ruler_Color: Color3
	Rulers: string
	RuntimeUndoBehavior: Enum.RuntimeUndoBehavior
	Script_Editor_Color_Preset: Enum.StudioScriptEditorColorPresets
	Script_Editor_Scrollbar_Background_Color: Color3
	Script_Editor_Scrollbar_Handle_Color: Color3
	ScriptEditorMenuBorderColor: Color3
	ScriptEditorShouldShowPluginMethods: boolean
	ScriptTimeoutLength: number
	Scroll_Past_Last_Line: boolean
	Search_Content_For_Core_Scripts: boolean
	Secondary_Text_Color: Color3
	Select_Color: Color3
	Select/Hover_Color: Color3
	Selected_Menu_Item_Background_Color: Color3
	Selected_Text_Color: Color3
	Selection_Background_Color: Color3
	Selection_Color: Color3
	Selection_Highlight_Thickness: number
	Server_Audio_Behavior: Enum.ServerAudioBehavior
	Set_Pivot_of_Imported_Parts: boolean
	Show_Core_GUI_in_Explorer_while_Playing: boolean
	Show_Deployment_Warnings: boolean
	Show_Diagnostics_Bar: boolean
	Show_FileSyncService: boolean
	Show_Hidden_Objects_in_Explorer: boolean
	Show_Hover_Over: boolean
	Show_Light_Guides: boolean
	Show_Navigation_Areas: boolean
	Show_Navigation_Mesh: boolean
	Show_Pathfinding_Links: boolean
	Show_Plugin_GUI_Service_in_Explorer: boolean
	Show_QT_warnings_in_output: boolean
	Show_Whitespace: boolean
	Show_plus_button_on_hover_in_Explorer: boolean
	ShowCorePackagesInExplorer: boolean
	Skip_Closing_Brackets_and_Quotes: boolean
	String_Color: Color3
	Tab_Width: number
	Text_Color: Color3
	Text_Wrapping: boolean
	Theme: Instance
	UI_Theme: Enum.UITheme
	Use_Bounding_Box_Move_Handles: boolean
	Warning_Color: Color3
	Whitespace_Color: Color3
	function GetAvailableThemes(self): { any }
	ThemeChanged: RBXScriptSignal
end

declare class StudioAssetService extends Instance
	function SerializeInstances(self, instances: Objects): string
end

declare class StudioData extends Instance
	EnableScriptCollabByDefaultOnLoad: boolean
	SrcPlaceId: number
	SrcUniverseId: number
end

declare class StudioDeviceEmulatorService extends Instance
	function EmulatePCDeviceWithResolution(self, deviceId: string, resolution: Vector2): boolean
	function GetCurrentDeviceId(self): string
	function GetCurrentOrientation(self): Enum.ScreenOrientation
	function HasDeviceWithId(self, deviceId: string): boolean
	function SetCurrentDeviceId(self, deviceId: string): nil
	function SetCurrentOrientation(self, orientation: Enum.ScreenOrientation): nil
	CurrentDeviceIdChanged: RBXScriptSignal
	OrientationChanged: RBXScriptSignal
end

declare class StudioHighDpiService extends Instance
	function IsNotHighDPIAwareBuild(self): boolean
end

declare class StudioPublishService extends Instance
	function PublishAs(self, universeId: number, placeId: number, groupId: number, isPublish: boolean, publishParameters: any): nil
	function SetTeamCreateOnPublishInfo(self, shouldTurnOnTcOnPublish: boolean, newPlaceName: string): nil
	function SetUploadNames(self, placeName: string, universeName: string): nil
end

declare class StudioScriptDebugEventListener extends Instance
end

declare class StudioService extends Instance
	ActiveScript: Instance
	AlignDraggedObjects: boolean
	DraggerSolveConstraints: boolean
	DrawConstraintsOnTop: boolean
	GridSize: number
	HoverInstance: Instance
	InstalledPluginData: string
	PivotSnapToGeometry: boolean
	RotateIncrement: number
	ShowActiveInstanceHighlight: boolean
	ShowConstraintDetails: boolean
	StudioLocaleId: string
	UseLocalSpace: boolean
	function AnimationIdSelected(self, id: number): nil
	function ConvertToPackageUpload(self, uploadUrl: string): nil
	function CopyToClipboard(self, stringToCopy: string): nil
	function DEPRECATED_SetTurnOnTeamCreateOnPublish(self, turnOn: boolean): nil
	function EmitPlacePublishedSignal(self): nil
	function GetBadgeConfigureUrl(self, badgeId: number): string
	function GetBadgeUploadUrl(self): string
	function GetClassIcon(self, className: string): { [any]: any }
	function GetPlaceIsPersistedToCloud(self): boolean
	function GetResourceByCategory(self, category: string): { [any]: any }
	function GetStartupAssetId(self): string
	function GetStartupPluginId(self): string
	function GetTermsOfUseUrl(self): string
	function GetUserId(self): number
	function GetUserIsInTeamCreateToggleRamp(self): boolean
	function GizmoRaycast(self, origin: Vector3, direction: Vector3, raycastParams: RaycastParams?): RaycastResult
	function HasInternalPermission(self): boolean
	function IsPluginInstalled(self, assetId: number): boolean
	function IsPluginUpToDate(self, assetId: number, currentAssetVersion: number): boolean
	function OpenInBrowser_DONOTUSE(self, url: string): nil
	function PublishAs(self, universeId: number, placeId: number, groupId: number): nil
	function RefreshDocumentDisplayName(self): nil
	function RequestClose(self, closeMode: Enum.StudioCloseMode): nil
	function SerializeInstances(self, instances: Objects): string
	function SetPluginEnabled(self, assetId: number, state: boolean): nil
	function SetUniverseDisplayName(self, newName: string): nil
	function ShowPlaceVersionHistoryDialog(self, placeId: number): nil
	function ShowPublishToRoblox(self): nil
	function ShowSaveOrPublishPlaceToRoblox(self, showGameSelect: boolean, isPublish: boolean, closeMode: Enum.StudioCloseMode): nil
	function UninstallPlugin(self, assetId: number): nil
	function UpdatePluginManagement(self): nil
	function PromptImportFile(self, fileTypeFilter: { any }?): Instance
	function PromptImportFiles(self, fileTypeFilter: { any }?): Objects
	function TryInstallPlugin(self, assetId: number, assetVersionId: number): nil
	GameNameUpdated: RBXScriptSignal
	GamePublishFinished: RBXScriptSignal
	OnConvertToPackageResult: RBXScriptSignal
	OnImportFromRoblox: RBXScriptSignal
	OnOpenConvertToPackagePlugin: RBXScriptSignal
	OnOpenGameSettings: RBXScriptSignal
	OnOpenManagePackagePlugin: RBXScriptSignal
	OnPluginInstalledFromToolbox: RBXScriptSignal
	OnPluginInstalledFromWeb: RBXScriptSignal
	OnPublishAsPlugin: RBXScriptSignal
	OnPublishPlaceToRoblox: RBXScriptSignal
	OnSaveOrPublishPlaceToRoblox: RBXScriptSignal
	OnSaveToRoblox: RBXScriptSignal
	PromptTransformPluginCheckEnable: RBXScriptSignal
	SaveLocallyAsComplete: RBXScriptSignal
end

declare class StudioTheme extends Instance
	function GetColor(self, styleguideitem: Enum.StudioStyleGuideColor, modifier: Enum.StudioStyleGuideModifier?): Color3
end

declare class SurfaceAppearance extends Instance
	AlphaMode: Enum.AlphaMode
	ColorMap: Content
	MetalnessMap: Content
	NormalMap: Content
	RoughnessMap: Content
	TexturePack: Content
end

declare class TaskScheduler extends Instance
	SchedulerDutyCycle: number
	SchedulerRate: number
	ThreadPoolConfig: Enum.ThreadPoolConfig
	ThreadPoolSize: number
end

declare class Team extends Instance
	AutoAssignable: boolean
	AutoColorCharacters: boolean
	ChildOrder: number
	Score: number
	TeamColor: BrickColor
	function GetPlayers(self): Objects
	PlayerAdded: RBXScriptSignal
	PlayerRemoved: RBXScriptSignal
end

declare class Teams extends Instance
	function GetTeams(self): Objects
	function RebalanceTeams(self): nil
end

declare class TeleportAsyncResult extends Instance
	PrivateServerId: string
	ReservedServerAccessCode: string
end

declare class TeleportOptions extends Instance
	ReservedServerAccessCode: string
	ServerInstanceId: string
	ShouldReserveServer: boolean
	function GetTeleportData(self): any
	function SetTeleportData(self, teleportData: any): nil
end

declare class TeleportService extends Instance
	CustomizedTeleportUI: boolean
	function GetArrivingTeleportGui(self): Instance
	function GetLocalPlayerTeleportData(self): any
	function GetTeleportSetting(self, setting: string): any
	function SetTeleportGui(self, gui: Instance): nil
	function SetTeleportSetting(self, setting: string, value: any): nil
	function Teleport(self, placeId: number, player: Instance?, teleportData: any, customLoadingScreen: Instance?): nil
	function TeleportCancel(self): nil
	function TeleportToPlaceInstance(self, placeId: number, instanceId: string, player: Instance?, spawnName: string?, teleportData: any, customLoadingScreen: Instance?): nil
	function TeleportToPrivateServer(self, placeId: number, reservedServerAccessCode: string, players: Objects, spawnName: string?, teleportData: any, customLoadingScreen: Instance?): nil
	function TeleportToSpawnByName(self, placeId: number, spawnName: string, player: Instance?, teleportData: any, customLoadingScreen: Instance?): nil
	function GetPlayerPlaceInstanceAsync(self, userId: number): any
	function ReserveServer(self, placeId: number): any
	function TeleportAsync(self, placeId: number, players: Objects, teleportOptions: Instance?): Instance
	function TeleportPartyAsync(self, placeId: number, players: Objects, teleportData: any, customLoadingScreen: Instance?): string
	LocalPlayerArrivedFromTeleport: RBXScriptSignal
	TeleportInitFailed: RBXScriptSignal
end

declare class TemporaryCageMeshProvider extends Instance
end

declare class TemporaryScriptService extends Instance
end

declare class TerrainRegion extends Instance
	IsSmooth: boolean
	SizeInCells: Vector3
	function ConvertToSmooth(self): nil
end

declare class TestService extends Instance
	AutoRuns: boolean
	Description: string
	ErrorCount: number
	ExecuteWithStudioRun: boolean
	Is30FpsThrottleEnabled: boolean
	IsPhysicsEnvironmentalThrottled: boolean
	IsSleepAllowed: boolean
	NumberOfPlayers: number
	SimulateSecondsLag: number
	TestCount: number
	Timeout: number
	WarnCount: number
	function Check(self, condition: boolean, description: string, source: Instance?, line: number?): nil
	function Checkpoint(self, text: string, source: Instance?, line: number?): nil
	function Done(self): nil
	function Error(self, description: string, source: Instance?, line: number?): nil
	function Fail(self, description: string, source: Instance?, line: number?): nil
	function Message(self, text: string, source: Instance?, line: number?): nil
	function Require(self, condition: boolean, description: string, source: Instance?, line: number?): nil
	function ScopeTime(self): { [any]: any }
	function Warn(self, condition: boolean, description: string, source: Instance?, line: number?): nil
	function isFeatureEnabled(self, name: string): boolean
	function Run(self): nil
	ServerCollectConditionalResult: RBXScriptSignal
	ServerCollectResult: RBXScriptSignal
end

declare class TextBoxService extends Instance
end

declare class TextChannel extends Instance
	function DisplaySystemMessage(self, systemMessage: string, metadata: string?): TextChatMessage
	function SendAsync(self, message: string, metadata: string?): TextChatMessage
	function AddUserAsync(self, userId: number): any
	MessageReceived: RBXScriptSignal
	OnIncomingMessage: (message: TextChatMessage) -> any
end

declare class TextChatCommand extends Instance
	Enabled: boolean
	PrimaryAlias: string
	SecondaryAlias: string
	Triggered: RBXScriptSignal
end

declare class TextChatConfigurations extends Instance
end

declare class ChatInputBarConfiguration extends TextChatConfigurations
	Enabled: boolean
	TargetTextChannel: TextChannel
end

declare class ChatWindowConfiguration extends TextChatConfigurations
	Enabled: boolean
end

declare class TextChatMessage extends Instance
	MessageId: string
	Metadata: string
	PrefixText: string
	Status: Enum.TextChatMessageStatus
	Text: string
	TextChannel: TextChannel
	TextSource: TextSource
	Timestamp: DateTime
end

declare class TextChatMessageProperties extends Instance
	PrefixText: string
	Text: string
end

declare class TextChatService extends Instance
	ChatVersion: Enum.ChatVersion
	CreateDefaultCommands: boolean
	CreateDefaultTextChannels: boolean
	MessageReceived: RBXScriptSignal
	SendingMessage: RBXScriptSignal
	OnIncomingMessage: (message: TextChatMessage) -> any
end

declare class TextFilterResult extends Instance
	function GetChatForUserAsync(self, toUserId: number): string
	function GetNonChatStringForBroadcastAsync(self): string
	function GetNonChatStringForUserAsync(self, toUserId: number): string
end

declare class TextService extends Instance
	function GetTextSize(self, string: string, fontSize: number, font: Enum.Font, frameSize: Vector2): Vector2
	function SetResolutionScale(self, scale: number): nil
	function FilterStringAsync(self, stringToFilter: string, fromUserId: number, textContext: Enum.TextFilterContext?): Instance
	function GetFamilyInfoAsync(self, assetId: Content): { [any]: any }
end

declare class TextSource extends Instance
	CanSend: boolean
	UserId: number
end

declare class ThirdPartyUserService extends Instance
	function GetUserPlatformId(self): string
	function GetUserPlatformName(self): string
	function HaveActiveUser(self): boolean
	function ReturnToEngagement(self): nil
	function ShowAccountPicker(self): nil
	function RegisterActiveUser(self, gamepadId: Enum.UserInputType): number
	ActiveGamepadAdded: RBXScriptSignal
	ActiveGamepadRemoved: RBXScriptSignal
	ActiveUserSignedOut: RBXScriptSignal
end

declare class ThreadState extends Instance
	FrameCount: number
	Populated: boolean
	ThreadId: number
	ThreadName: string
	function GetFrame(self, index: number): Instance
end

declare class TimerService extends Instance
end

declare class ToastNotificationService extends Instance
	function HideNotification(self, notificationId: string): nil
	function ShowNotification(self, message: string, notificationId: string): nil
end

declare class ToolboxService extends Instance
	ProcessAssetInsertionDrag: (assetId: string, assetTypeId: number, instances: Objects) -> Objects
	ProcessAssetInsertionDrop: () -> nil
end

declare class TouchInputService extends Instance
end

declare class TouchTransmitter extends Instance
end

declare class TracerService extends Instance
	function FinishSpan(self, spanId: string): nil
	function StartSpan(self, name: string, parentId: string): string
end

declare class Trail extends Instance
	Attachment0: Attachment
	Attachment1: Attachment
	Brightness: number
	Color: ColorSequence
	Enabled: boolean
	FaceCamera: boolean
	Lifetime: number
	LightEmission: number
	LightInfluence: number
	MaxLength: number
	MinLength: number
	Texture: Content
	TextureLength: number
	TextureMode: Enum.TextureMode
	Transparency: NumberSequence
	WidthScale: NumberSequence
	function Clear(self): nil
end

declare class Translator extends Instance
	LocaleId: string
	function FormatByKey(self, key: string, args: any): string
	function RobloxOnlyTranslate(self, context: Instance, text: string): string
	function Translate(self, context: Instance, text: string): string
end

declare class TweenBase extends Instance
	PlaybackState: Enum.PlaybackState
	function Cancel(self): nil
	function Pause(self): nil
	function Play(self): nil
	Completed: RBXScriptSignal
end

declare class Tween extends TweenBase
	Instance: Instance
	TweenInfo: TweenInfo
end

declare class TweenService extends Instance
	function Create(self, instance: Instance, tweenInfo: TweenInfo, propertyTable: { [any]: any }): Tween
	function GetValue(self, alpha: number, easingStyle: Enum.EasingStyle, easingDirection: Enum.EasingDirection): number
end

declare class UGCValidationService extends Instance
	function GetMeshTriCountSync(self, meshId: string): number
	function GetMeshVertsSync(self, meshId: string): { any }
	function GetTextureSizeSync(self, textureId: string): Vector2
	function SetMeshIdBlocking(self, meshPart: Instance, meshId: string): nil
	function FetchAssetWithFormat(self, url: Content, assetFormat: string): Objects
	function GetMeshTriCount(self, meshId: string): number
	function GetMeshVertColors(self, meshId: string): { any }
	function GetMeshVerts(self, meshId: string): { any }
	function GetTextureSize(self, textureId: string): Vector2
end

declare class UIBase extends Instance
end

declare class UIComponent extends UIBase
end

declare class UIConstraint extends UIComponent
end

declare class UIAspectRatioConstraint extends UIConstraint
	AspectRatio: number
	AspectType: Enum.AspectType
	DominantAxis: Enum.DominantAxis
end

declare class UISizeConstraint extends UIConstraint
	MaxSize: Vector2
	MinSize: Vector2
end

declare class UITextSizeConstraint extends UIConstraint
	MaxTextSize: number
	MinTextSize: number
end

declare class UICorner extends UIComponent
	CornerRadius: UDim
end

declare class UIGradient extends UIComponent
	Color: ColorSequence
	Enabled: boolean
	Offset: Vector2
	Rotation: number
	Transparency: NumberSequence
end

declare class UILayout extends UIComponent
end

declare class UIGridStyleLayout extends UILayout
	AbsoluteContentSize: Vector2
	FillDirection: Enum.FillDirection
	HorizontalAlignment: Enum.HorizontalAlignment
	SortOrder: Enum.SortOrder
	VerticalAlignment: Enum.VerticalAlignment
	function ApplyLayout(self): nil
	function SetCustomSortFunction(self, func: Function?): nil
end

declare class UIGridLayout extends UIGridStyleLayout
	AbsoluteCellCount: Vector2
	AbsoluteCellSize: Vector2
	CellPadding: UDim2
	CellSize: UDim2
	FillDirectionMaxCells: number
	StartCorner: Enum.StartCorner
end

declare class UIListLayout extends UIGridStyleLayout
	Padding: UDim
end

declare class UIPageLayout extends UIGridStyleLayout
	Animated: boolean
	Circular: boolean
	CurrentPage: GuiObject
	EasingDirection: Enum.EasingDirection
	EasingStyle: Enum.EasingStyle
	GamepadInputEnabled: boolean
	Padding: UDim
	ScrollWheelInputEnabled: boolean
	TouchInputEnabled: boolean
	TweenTime: number
	function JumpTo(self, page: Instance): nil
	function JumpToIndex(self, index: number): nil
	function Next(self): nil
	function Previous(self): nil
	PageEnter: RBXScriptSignal
	PageLeave: RBXScriptSignal
	Stopped: RBXScriptSignal
end

declare class UITableLayout extends UIGridStyleLayout
	FillEmptySpaceColumns: boolean
	FillEmptySpaceRows: boolean
	MajorAxis: Enum.TableMajorAxis
	Padding: UDim2
end

declare class UIPadding extends UIComponent
	PaddingBottom: UDim
	PaddingLeft: UDim
	PaddingRight: UDim
	PaddingTop: UDim
end

declare class UIScale extends UIComponent
	Scale: number
end

declare class UIStroke extends UIComponent
	ApplyStrokeMode: Enum.ApplyStrokeMode
	Color: Color3
	Enabled: boolean
	LineJoinMode: Enum.LineJoinMode
	Thickness: number
	Transparency: number
end

declare class UnvalidatedAssetService extends Instance
	function AppendTempAssetId(self, userId: number, id: number, lookAt: Vector3, camPos: Vector3, usage: string): nil
	function AppendVantagePoint(self, userId: number, id: number, lookAt: Vector3, camPos: Vector3): boolean
	function UpgradeTempAssetId(self, userId: number, tempId: number, assetId: number): boolean
end

declare class UserGameSettings extends Instance
	AllTutorialsDisabled: boolean
	CameraMode: Enum.CustomCameraMode
	CameraYInverted: boolean
	ChatVisible: boolean
	ComputerCameraMovementMode: Enum.ComputerCameraMovementMode
	ComputerMovementMode: Enum.ComputerMovementMode
	ControlMode: Enum.ControlMode
	Fullscreen: boolean
	GamepadCameraSensitivity: number
	GraphicsQualityLevel: number
	HasEverUsedVR: boolean
	IsUsingCameraYInverted: boolean
	IsUsingGamepadCameraSensitivity: boolean
	MasterVolume: number
	MicroProfilerWebServerEnabled: boolean
	MicroProfilerWebServerIP: string
	MicroProfilerWebServerPort: number
	MouseSensitivity: number
	MouseSensitivityFirstPerson: Vector2
	MouseSensitivityThirdPerson: Vector2
	OnScreenProfilerEnabled: boolean
	OnboardingsCompleted: string
	PerformanceStatsVisible: boolean
	RCCProfilerRecordFrameRate: number
	RCCProfilerRecordTimeFrame: number
	RotationType: Enum.RotationType
	SavedQualityLevel: Enum.SavedQualitySetting
	StartMaximized: boolean
	StartScreenPosition: Vector2
	StartScreenSize: Vector2
	TouchCameraMovementMode: Enum.TouchCameraMovementMode
	TouchMovementMode: Enum.TouchMovementMode
	UsedCoreGuiIsVisibleToggle: boolean
	UsedCustomGuiIsVisibleToggle: boolean
	UsedHideHudShortcut: boolean
	VREnabled: boolean
	VRRotationIntensity: number
	VignetteEnabled: boolean
	function GetCameraYInvertValue(self): number
	function GetOnboardingCompleted(self, onboardingId: string): boolean
	function GetTutorialState(self, tutorialId: string): boolean
	function InFullScreen(self): boolean
	function InStudioMode(self): boolean
	function ResetOnboardingCompleted(self, onboardingId: string): nil
	function SetCameraYInvertVisible(self): nil
	function SetGamepadCameraSensitivityVisible(self): nil
	function SetOnboardingCompleted(self, onboardingId: string): nil
	function SetTutorialState(self, tutorialId: string, value: boolean): nil
	FullscreenChanged: RBXScriptSignal
	PerformanceStatsVisibleChanged: RBXScriptSignal
	StudioModeChanged: RBXScriptSignal
end

declare class UserInputService extends Instance
	AccelerometerEnabled: boolean
	BottomBarSize: Vector2
	GamepadEnabled: boolean
	GazeSelectionEnabled: boolean
	GyroscopeEnabled: boolean
	KeyboardEnabled: boolean
	LegacyInputEventsEnabled: boolean
	ModalEnabled: boolean
	MouseBehavior: Enum.MouseBehavior
	MouseDeltaSensitivity: number
	MouseEnabled: boolean
	MouseIconEnabled: boolean
	NavBarSize: Vector2
	OnScreenKeyboardAnimationDuration: number
	OnScreenKeyboardPosition: Vector2
	OnScreenKeyboardSize: Vector2
	OnScreenKeyboardVisible: boolean
	OverrideMouseIconBehavior: Enum.OverrideMouseIconBehavior
	RightBarSize: Vector2
	StatusBarSize: Vector2
	TouchEnabled: boolean
	UserHeadCFrame: CFrame
	VREnabled: boolean
	function GamepadSupports(self, gamepadNum: Enum.UserInputType, gamepadKeyCode: Enum.KeyCode): boolean
	function GetConnectedGamepads(self): { any }
	function GetDeviceAcceleration(self): InputObject
	function GetDeviceGravity(self): InputObject
	function GetDeviceRotation(self): any
	function GetDeviceType(self): Enum.DeviceType
	function GetFocusedTextBox(self): TextBox
	function GetGamepadConnected(self, gamepadNum: Enum.UserInputType): boolean
	function GetGamepadState(self, gamepadNum: Enum.UserInputType): { any }
	function GetKeysPressed(self): { any }
	function GetLastInputType(self): Enum.UserInputType
	function GetMouseButtonsPressed(self): { any }
	function GetMouseDelta(self): Vector2
	function GetMouseLocation(self): Vector2
	function GetNavigationGamepads(self): { any }
	function GetPlatform(self): Enum.Platform
	function GetStringForKeyCode(self, keyCode: Enum.KeyCode): string
	function GetSupportedGamepadKeyCodes(self, gamepadNum: Enum.UserInputType): { any }
	function GetUserCFrame(self, type: Enum.UserCFrame): CFrame
	function IsGamepadButtonDown(self, gamepadNum: Enum.UserInputType, gamepadKeyCode: Enum.KeyCode): boolean
	function IsKeyDown(self, keyCode: Enum.KeyCode): boolean
	function IsMouseButtonPressed(self, mouseButton: Enum.UserInputType): boolean
	function IsNavigationGamepad(self, gamepadEnum: Enum.UserInputType): boolean
	function RecenterUserHeadCFrame(self): nil
	function SendAppUISizes(self, statusBarSize: Vector2, navBarSize: Vector2, bottomBarSize: Vector2, rightBarSize: Vector2): nil
	function SetNavigationGamepad(self, gamepadEnum: Enum.UserInputType, enabled: boolean): nil
	DeviceAccelerationChanged: RBXScriptSignal
	DeviceGravityChanged: RBXScriptSignal
	DeviceRotationChanged: RBXScriptSignal
	GamepadConnected: RBXScriptSignal
	GamepadDisconnected: RBXScriptSignal
	InputBegan: RBXScriptSignal
	InputChanged: RBXScriptSignal
	InputEnded: RBXScriptSignal
	JumpRequest: RBXScriptSignal
	LastInputTypeChanged: RBXScriptSignal
	PointerAction: RBXScriptSignal
	StatusBarTapped: RBXScriptSignal
	TextBoxFocusReleased: RBXScriptSignal
	TextBoxFocused: RBXScriptSignal
	TouchEnded: RBXScriptSignal
	TouchLongPress: RBXScriptSignal
	TouchMoved: RBXScriptSignal
	TouchPan: RBXScriptSignal
	TouchPinch: RBXScriptSignal
	TouchRotate: RBXScriptSignal
	TouchStarted: RBXScriptSignal
	TouchSwipe: RBXScriptSignal
	TouchTap: RBXScriptSignal
	TouchTapInWorld: RBXScriptSignal
	UserCFrameChanged: RBXScriptSignal
	WindowFocusReleased: RBXScriptSignal
	WindowFocused: RBXScriptSignal
end

declare class UserService extends Instance
	function GetUserInfosByUserIdsAsync(self, userIds: { any }): { any }
end

declare class VRService extends Instance
	GuiInputUserCFrame: Enum.UserCFrame
	VRDeviceAvailable: boolean
	VRDeviceName: string
	VREnabled: boolean
	function GetTouchpadMode(self, pad: Enum.VRTouchpad): Enum.VRTouchpadMode
	function GetUserCFrame(self, type: Enum.UserCFrame): CFrame
	function GetUserCFrameEnabled(self, type: Enum.UserCFrame): boolean
	function RecenterUserHeadCFrame(self): nil
	function RequestNavigation(self, cframe: CFrame, inputUserCFrame: Enum.UserCFrame): nil
	function SetTouchpadMode(self, pad: Enum.VRTouchpad, mode: Enum.VRTouchpadMode): nil
	NavigationRequested: RBXScriptSignal
	TouchpadModeChanged: RBXScriptSignal
	UserCFrameChanged: RBXScriptSignal
	UserCFrameEnabled: RBXScriptSignal
end

declare class ValueBase extends Instance
end

declare class BinaryStringValue extends ValueBase
	Changed: RBXScriptSignal
end

declare class BoolValue extends ValueBase
	Value: boolean
	Changed: RBXScriptSignal
	changed: RBXScriptSignal
end

declare class BrickColorValue extends ValueBase
	Value: BrickColor
	Changed: RBXScriptSignal
	changed: RBXScriptSignal
end

declare class CFrameValue extends ValueBase
	Value: CFrame
	Changed: RBXScriptSignal
	changed: RBXScriptSignal
end

declare class Color3Value extends ValueBase
	Value: Color3
	Changed: RBXScriptSignal
	changed: RBXScriptSignal
end

declare class DoubleConstrainedValue extends ValueBase
	ConstrainedValue: number
	MaxValue: number
	MinValue: number
	Value: number
	Changed: RBXScriptSignal
	changed: RBXScriptSignal
end

declare class IntConstrainedValue extends ValueBase
	ConstrainedValue: number
	MaxValue: number
	MinValue: number
	Value: number
	Changed: RBXScriptSignal
	changed: RBXScriptSignal
end

declare class IntValue extends ValueBase
	Value: number
	Changed: RBXScriptSignal
	changed: RBXScriptSignal
end

declare class NumberValue extends ValueBase
	Value: number
	Changed: RBXScriptSignal
	changed: RBXScriptSignal
end

declare class ObjectValue extends ValueBase
	Value: Instance
	Changed: RBXScriptSignal
	changed: RBXScriptSignal
end

declare class RayValue extends ValueBase
	Value: Ray
	Changed: RBXScriptSignal
	changed: RBXScriptSignal
end

declare class StringValue extends ValueBase
	Value: string
	Changed: RBXScriptSignal
	changed: RBXScriptSignal
end

declare class Vector3Value extends ValueBase
	Value: Vector3
	Changed: RBXScriptSignal
	changed: RBXScriptSignal
end

declare class Vector3Curve extends Instance
	function GetValueAtTime(self, time: number): { any }
	function X(self): FloatCurve
	function Y(self): FloatCurve
	function Z(self): FloatCurve
end

declare class VersionControlService extends Instance
	ScriptCollabEnabled: boolean
end

declare class VirtualInputManager extends Instance
	AdditionalLuaState: string
	function Dump(self): nil
	function HandleGamepadAxisInput(self, objectId: number, keyCode: Enum.KeyCode, x: number, y: number, z: number): nil
	function HandleGamepadButtonInput(self, deviceId: number, keyCode: Enum.KeyCode, buttonState: number): nil
	function HandleGamepadConnect(self, deviceId: number): nil
	function HandleGamepadDisconnect(self, deviceId: number): nil
	function SendAccelerometerEvent(self, x: number, y: number, z: number): nil
	function SendGravityEvent(self, x: number, y: number, z: number): nil
	function SendGyroscopeEvent(self, quatX: number, quatY: number, quatZ: number, quatW: number): nil
	function SendKeyEvent(self, isPressed: boolean, keyCode: Enum.KeyCode, isRepeatedKey: boolean, layerCollector: Instance): nil
	function SendMouseButtonEvent(self, x: number, y: number, mouseButton: number, isDown: boolean, layerCollector: Instance, repeatCount: number): nil
	function SendMouseMoveEvent(self, x: number, y: number, layerCollector: Instance): nil
	function SendMouseWheelEvent(self, x: number, y: number, isForwardScroll: boolean, layerCollector: Instance): nil
	function SendTextInputCharacterEvent(self, str: string, layerCollector: Instance): nil
	function SendTouchEvent(self, touchId: number, state: number, x: number, y: number): nil
	function SetInputTypesToIgnore(self, inputTypesToIgnore: any): nil
	function StartPlaying(self, fileName: string): nil
	function StartPlayingJSON(self, string: string): nil
	function StartRecording(self): nil
	function StopPlaying(self): nil
	function StopRecording(self): nil
	function sendRobloxEvent(self, namespace: string, detail: string, detailType: string): nil
	function sendThemeChangeEvent(self, themeName: string): nil
	function WaitForInputEventsProcessed(self): nil
	PlaybackCompleted: RBXScriptSignal
	RecordingCompleted: RBXScriptSignal
end

declare class VirtualUser extends Instance
	function Button1Down(self, position: Vector2, camera: CFrame?): nil
	function Button1Up(self, position: Vector2, camera: CFrame?): nil
	function Button2Down(self, position: Vector2, camera: CFrame?): nil
	function Button2Up(self, position: Vector2, camera: CFrame?): nil
	function CaptureController(self): nil
	function ClickButton1(self, position: Vector2, camera: CFrame?): nil
	function ClickButton2(self, position: Vector2, camera: CFrame?): nil
	function MoveMouse(self, position: Vector2, camera: CFrame?): nil
	function SetKeyDown(self, key: string): nil
	function SetKeyUp(self, key: string): nil
	function StartRecording(self): nil
	function StopRecording(self): string
	function TypeKey(self, key: string): nil
end

declare class VisibilityService extends Instance
end

declare class Visit extends Instance
end

declare class VoiceChannel extends Instance
	function AddUserAsync(self, userId: number?): VoiceSource
end

declare class VoiceChatInternal extends Instance
	VoiceChatState: Enum.VoiceChatState
	function GetAndClearCallFailureMessage(self): string
	function GetAudioProcessingSettings(self): any
	function GetGroupId(self): string
	function GetMicDevices(self): any
	function GetParticipants(self): { any }
	function GetSpeakerDevices(self): any
	function GetVoiceChatApiVersion(self): number
	function GetVoiceChatAvailable(self): number
	function IsContextVoiceEnabled(self): boolean
	function IsPublishPaused(self): boolean
	function IsSubscribePaused(self, userId: number): boolean
	function JoinByGroupId(self, groupId: string, isMicMuted: boolean?): boolean
	function JoinByGroupIdToken(self, groupId: string, isMicMuted: boolean?): boolean
	function Leave(self): nil
	function PublishPause(self, paused: boolean): boolean
	function SetMicDevice(self, micDeviceName: string, micDeviceGuid: string): nil
	function SetSpeakerDevice(self, speakerDeviceName: string, speakerDeviceGuid: string): nil
	function SubscribeBlock(self, userId: number): boolean
	function SubscribePause(self, userId: number, paused: boolean): boolean
	function SubscribePauseAll(self, paused: boolean): boolean
	function SubscribeRetry(self, userId: number): boolean
	function SubscribeUnblock(self, userId: number): boolean
	function IsVoiceEnabledForUserIdAsync(self, userId: number): boolean
	ParticipantsStateChanged: RBXScriptSignal
	PlayerMicActivitySignalChange: RBXScriptSignal
	StateChanged: RBXScriptSignal
end

declare class VoiceChatService extends Instance
	EnableDefaultVoice: boolean
	function IsVoiceEnabledForUserIdAsync(self, userId: number): boolean
end

declare class VoiceSource extends Instance
	UserId: number
end

declare class WeldConstraint extends Instance
	Active: boolean
	Enabled: boolean
	Part0: BasePart
	Part1: BasePart
end

