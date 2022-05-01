
type Content = string
type ProtectedString = string
type BinaryString = string
type QDir = string
type QFont = string
type Function = (any) -> any
type FloatCurveKey = any
type RotationCurveKey = any
type CoordinateFrame = CFrame

declare class Enum
	function GetEnumItems(self): { any }
end

declare class EnumItem
	Name: string
	Value: number
	EnumType: Enum
end

declare debug: {
    info: (<R...>(thread, number, string) -> R...) & (<R...>(number, string) -> R...) & (<A..., R1..., R2...>((A...) -> R1..., string) -> R2...),
    traceback: ((string?, number?) -> string) & ((thread, string?, number?) -> string),
    profilebegin: (label: string) -> (),
    profileend: () -> (),
    setmemorycategory: (tag: string) -> (),
    resetmemorycategory: () -> (),
}

declare task: {
    defer: <A..., R...>(f: thread | ((A...) -> R...), A...) -> (),
    spawn: <A..., R...>(f: thread | ((A...) -> R...), A...) -> (),
    delay: <A..., R...>(sec: number?, f: thread | ((A...) -> R...), A...) -> (),
    wait: (sec: number?) -> number,
    synchronize: () -> (),
    desynchronize: () -> (),
}

declare shared: any

declare function collectgarbage(mode: "count"): number
declare function warn<T...>(...: T...)
declare function tick(): number
declare function time(): number
declare function elapsedTime(): number
declare function wait(seconds: number?): (number, number)
declare function delay<T...>(delayTime: number?, callback: (T...) -> ())
declare function spawn<T...>(callback: (T...) -> ())
declare function version(): string
declare function printidentity(prefix: string?)

export type RBXScriptSignal<T... = ...any> = {
    Wait: (self: RBXScriptSignal<T...>) -> T...,
    Connect: (self: RBXScriptSignal<T...>, callback: (T...) -> ()) -> RBXScriptConnection,
    ConnectParallel: (self: RBXScriptSignal<T...>, callback: (T...) -> ()) -> RBXScriptConnection,
}

type EnumABTestLoadingStatus = {
	None: EnumItem,
	Pending: EnumItem,
	Initialized: EnumItem,
	Error: EnumItem,
	TimedOut: EnumItem,
	ShutOff: EnumItem,
}
type EnumAccessoryType = {
	Unknown: EnumItem,
	Hat: EnumItem,
	Hair: EnumItem,
	Face: EnumItem,
	Neck: EnumItem,
	Shoulder: EnumItem,
	Front: EnumItem,
	Back: EnumItem,
	Waist: EnumItem,
	TShirt: EnumItem,
	Shirt: EnumItem,
	Pants: EnumItem,
	Jacket: EnumItem,
	Sweater: EnumItem,
	Shorts: EnumItem,
	LeftShoe: EnumItem,
	RightShoe: EnumItem,
	DressSkirt: EnumItem,
	Eyebrow: EnumItem,
	Eyelash: EnumItem,
}
type EnumActionType = {
	Nothing: EnumItem,
	Pause: EnumItem,
	Lose: EnumItem,
	Draw: EnumItem,
	Win: EnumItem,
}
type EnumActuatorRelativeTo = {
	Attachment0: EnumItem,
	Attachment1: EnumItem,
	World: EnumItem,
}
type EnumActuatorType = {
	None: EnumItem,
	Motor: EnumItem,
	Servo: EnumItem,
}
type EnumAdornCullingMode = {
	Automatic: EnumItem,
	Never: EnumItem,
}
type EnumAlignType = {
	Parallel: EnumItem,
	Perpendicular: EnumItem,
}
type EnumAlphaMode = {
	Overlay: EnumItem,
	Transparency: EnumItem,
}
type EnumAnalyticsEconomyAction = {
	Default: EnumItem,
	Acquire: EnumItem,
	Spend: EnumItem,
}
type EnumAnalyticsLogLevel = {
	Trace: EnumItem,
	Debug: EnumItem,
	Information: EnumItem,
	Warning: EnumItem,
	Error: EnumItem,
	Fatal: EnumItem,
}
type EnumAnalyticsProgressionStatus = {
	Default: EnumItem,
	Begin: EnumItem,
	Complete: EnumItem,
	Abandon: EnumItem,
	Fail: EnumItem,
}
type EnumAnimationPriority = {
	Idle: EnumItem,
	Movement: EnumItem,
	Action: EnumItem,
	Action2: EnumItem,
	Action3: EnumItem,
	Action4: EnumItem,
	Core: EnumItem,
}
type EnumAnimatorRetargetingMode = {
	Default: EnumItem,
	Disabled: EnumItem,
	Enabled: EnumItem,
}
type EnumAppShellActionType = {
	None: EnumItem,
	OpenApp: EnumItem,
	TapChatTab: EnumItem,
	TapConversationEntry: EnumItem,
	TapAvatarTab: EnumItem,
	ReadConversation: EnumItem,
	TapGamePageTab: EnumItem,
	TapHomePageTab: EnumItem,
	GamePageLoaded: EnumItem,
	HomePageLoaded: EnumItem,
	AvatarEditorPageLoaded: EnumItem,
}
type EnumAppShellFeature = {
	None: EnumItem,
	Chat: EnumItem,
	AvatarEditor: EnumItem,
	GamePage: EnumItem,
	HomePage: EnumItem,
	More: EnumItem,
	Landing: EnumItem,
}
type EnumAppUpdateStatus = {
	Unknown: EnumItem,
	NotSupported: EnumItem,
	Failed: EnumItem,
	NotAvailable: EnumItem,
	Available: EnumItem,
}
type EnumApplyStrokeMode = {
	Contextual: EnumItem,
	Border: EnumItem,
}
type EnumAspectType = {
	FitWithinMaxSize: EnumItem,
	ScaleWithParentSize: EnumItem,
}
type EnumAssetFetchStatus = {
	Success: EnumItem,
	Failure: EnumItem,
}
type EnumAssetType = {
	Image: EnumItem,
	TShirt: EnumItem,
	Audio: EnumItem,
	Mesh: EnumItem,
	Lua: EnumItem,
	Hat: EnumItem,
	Place: EnumItem,
	Model: EnumItem,
	Shirt: EnumItem,
	Pants: EnumItem,
	Decal: EnumItem,
	Head: EnumItem,
	Face: EnumItem,
	Gear: EnumItem,
	Badge: EnumItem,
	Animation: EnumItem,
	Torso: EnumItem,
	RightArm: EnumItem,
	LeftArm: EnumItem,
	LeftLeg: EnumItem,
	RightLeg: EnumItem,
	Package: EnumItem,
	GamePass: EnumItem,
	Plugin: EnumItem,
	MeshPart: EnumItem,
	HairAccessory: EnumItem,
	FaceAccessory: EnumItem,
	NeckAccessory: EnumItem,
	ShoulderAccessory: EnumItem,
	FrontAccessory: EnumItem,
	BackAccessory: EnumItem,
	WaistAccessory: EnumItem,
	ClimbAnimation: EnumItem,
	DeathAnimation: EnumItem,
	FallAnimation: EnumItem,
	IdleAnimation: EnumItem,
	JumpAnimation: EnumItem,
	RunAnimation: EnumItem,
	SwimAnimation: EnumItem,
	WalkAnimation: EnumItem,
	PoseAnimation: EnumItem,
	EarAccessory: EnumItem,
	EyeAccessory: EnumItem,
	EmoteAnimation: EnumItem,
	Video: EnumItem,
	TShirtAccessory: EnumItem,
	ShirtAccessory: EnumItem,
	PantsAccessory: EnumItem,
	JacketAccessory: EnumItem,
	SweaterAccessory: EnumItem,
	ShortsAccessory: EnumItem,
	LeftShoeAccessory: EnumItem,
	RightShoeAccessory: EnumItem,
	DressSkirtAccessory: EnumItem,
	EyebrowAccessory: EnumItem,
	EyelashAccessory: EnumItem,
}
type EnumAssetTypeVerification = {
	Default: EnumItem,
	ClientOnly: EnumItem,
	Always: EnumItem,
}
type EnumAutoIndentRule = {
	Off: EnumItem,
	Absolute: EnumItem,
	Relative: EnumItem,
}
type EnumAutomaticSize = {
	None: EnumItem,
	X: EnumItem,
	Y: EnumItem,
	XY: EnumItem,
}
type EnumAvatarAssetType = {
	TShirt: EnumItem,
	Hat: EnumItem,
	HairAccessory: EnumItem,
	FaceAccessory: EnumItem,
	NeckAccessory: EnumItem,
	ShoulderAccessory: EnumItem,
	FrontAccessory: EnumItem,
	BackAccessory: EnumItem,
	WaistAccessory: EnumItem,
	Shirt: EnumItem,
	Pants: EnumItem,
	Gear: EnumItem,
	Head: EnumItem,
	Face: EnumItem,
	Torso: EnumItem,
	RightArm: EnumItem,
	LeftArm: EnumItem,
	LeftLeg: EnumItem,
	RightLeg: EnumItem,
	ClimbAnimation: EnumItem,
	FallAnimation: EnumItem,
	IdleAnimation: EnumItem,
	JumpAnimation: EnumItem,
	RunAnimation: EnumItem,
	SwimAnimation: EnumItem,
	WalkAnimation: EnumItem,
	EmoteAnimation: EnumItem,
	TShirtAccessory: EnumItem,
	ShirtAccessory: EnumItem,
	PantsAccessory: EnumItem,
	JacketAccessory: EnumItem,
	SweaterAccessory: EnumItem,
	ShortsAccessory: EnumItem,
	LeftShoeAccessory: EnumItem,
	RightShoeAccessory: EnumItem,
	DressSkirtAccessory: EnumItem,
	EyebrowAccessory: EnumItem,
	EyelashAccessory: EnumItem,
}
type EnumAvatarContextMenuOption = {
	Friend: EnumItem,
	Chat: EnumItem,
	Emote: EnumItem,
	InspectMenu: EnumItem,
}
type EnumAvatarItemType = {
	Asset: EnumItem,
	Bundle: EnumItem,
}
type EnumAvatarPromptResult = {
	Success: EnumItem,
	PermissionDenied: EnumItem,
	Failed: EnumItem,
}
type EnumAxis = {
	X: EnumItem,
	Y: EnumItem,
	Z: EnumItem,
}
type EnumBinType = {
	Script: EnumItem,
	GameTool: EnumItem,
	Grab: EnumItem,
	Clone: EnumItem,
	Hammer: EnumItem,
}
type EnumBodyPart = {
	Head: EnumItem,
	Torso: EnumItem,
	LeftArm: EnumItem,
	RightArm: EnumItem,
	LeftLeg: EnumItem,
	RightLeg: EnumItem,
}
type EnumBodyPartR15 = {
	Head: EnumItem,
	UpperTorso: EnumItem,
	LowerTorso: EnumItem,
	LeftFoot: EnumItem,
	LeftLowerLeg: EnumItem,
	LeftUpperLeg: EnumItem,
	RightFoot: EnumItem,
	RightLowerLeg: EnumItem,
	RightUpperLeg: EnumItem,
	LeftHand: EnumItem,
	LeftLowerArm: EnumItem,
	LeftUpperArm: EnumItem,
	RightHand: EnumItem,
	RightLowerArm: EnumItem,
	RightUpperArm: EnumItem,
	RootPart: EnumItem,
	Unknown: EnumItem,
}
type EnumBorderMode = {
	Outline: EnumItem,
	Middle: EnumItem,
	Inset: EnumItem,
}
type EnumBreakReason = {
	Other: EnumItem,
	Error: EnumItem,
	UserBreakpoint: EnumItem,
	SpecialBreakpoint: EnumItem,
}
type EnumBreakpointRemoveReason = {
	Requested: EnumItem,
	ScriptChanged: EnumItem,
	ScriptRemoved: EnumItem,
}
type EnumBulkMoveMode = {
	FireAllEvents: EnumItem,
	FireCFrameChanged: EnumItem,
}
type EnumBundleType = {
	BodyParts: EnumItem,
	Animations: EnumItem,
	Shoes: EnumItem,
}
type EnumButton = {
	Jump: EnumItem,
	Dismount: EnumItem,
}
type EnumButtonStyle = {
	Custom: EnumItem,
	RobloxButtonDefault: EnumItem,
	RobloxButton: EnumItem,
	RobloxRoundButton: EnumItem,
	RobloxRoundDefaultButton: EnumItem,
	RobloxRoundDropdownButton: EnumItem,
}
type EnumCageType = {
	Inner: EnumItem,
	Outer: EnumItem,
}
type EnumCameraMode = {
	Classic: EnumItem,
	LockFirstPerson: EnumItem,
}
type EnumCameraPanMode = {
	Classic: EnumItem,
	EdgeBump: EnumItem,
}
type EnumCameraType = {
	Fixed: EnumItem,
	Watch: EnumItem,
	Attach: EnumItem,
	Track: EnumItem,
	Follow: EnumItem,
	Custom: EnumItem,
	Scriptable: EnumItem,
	Orbital: EnumItem,
}
type EnumCatalogCategoryFilter = {
	None: EnumItem,
	Featured: EnumItem,
	Collectibles: EnumItem,
	CommunityCreations: EnumItem,
	Premium: EnumItem,
	Recommended: EnumItem,
}
type EnumCatalogSortType = {
	Relevance: EnumItem,
	PriceHighToLow: EnumItem,
	PriceLowToHigh: EnumItem,
	RecentlyUpdated: EnumItem,
	MostFavorited: EnumItem,
}
type EnumCellBlock = {
	Solid: EnumItem,
	VerticalWedge: EnumItem,
	CornerWedge: EnumItem,
	InverseCornerWedge: EnumItem,
	HorizontalWedge: EnumItem,
}
type EnumCellMaterial = {
	Empty: EnumItem,
	Grass: EnumItem,
	Sand: EnumItem,
	Brick: EnumItem,
	Granite: EnumItem,
	Asphalt: EnumItem,
	Iron: EnumItem,
	Aluminum: EnumItem,
	Gold: EnumItem,
	WoodPlank: EnumItem,
	WoodLog: EnumItem,
	Gravel: EnumItem,
	CinderBlock: EnumItem,
	MossyStone: EnumItem,
	Cement: EnumItem,
	RedPlastic: EnumItem,
	BluePlastic: EnumItem,
	Water: EnumItem,
}
type EnumCellOrientation = {
	NegZ: EnumItem,
	X: EnumItem,
	Z: EnumItem,
	NegX: EnumItem,
}
type EnumCenterDialogType = {
	UnsolicitedDialog: EnumItem,
	PlayerInitiatedDialog: EnumItem,
	ModalDialog: EnumItem,
	QuitDialog: EnumItem,
}
type EnumChatCallbackType = {
	OnCreatingChatWindow: EnumItem,
	OnClientSendingMessage: EnumItem,
	OnClientFormattingMessage: EnumItem,
	OnServerReceivingMessage: EnumItem,
}
type EnumChatColor = {
	Blue: EnumItem,
	Green: EnumItem,
	Red: EnumItem,
	White: EnumItem,
}
type EnumChatMode = {
	Menu: EnumItem,
	TextAndMenu: EnumItem,
}
type EnumChatPrivacyMode = {
	AllUsers: EnumItem,
	NoOne: EnumItem,
	Friends: EnumItem,
}
type EnumChatStyle = {
	Classic: EnumItem,
	Bubble: EnumItem,
	ClassicAndBubble: EnumItem,
}
type EnumChatVersion = {
	LegacyChatService: EnumItem,
	TextChatService: EnumItem,
}
type EnumClientAnimatorThrottlingMode = {
	Default: EnumItem,
	Disabled: EnumItem,
	Enabled: EnumItem,
}
type EnumCollisionFidelity = {
	Default: EnumItem,
	Hull: EnumItem,
	Box: EnumItem,
	PreciseConvexDecomposition: EnumItem,
}
type EnumCommandPermission = {
	Plugin: EnumItem,
	LocalUser: EnumItem,
}
type EnumComputerCameraMovementMode = {
	Default: EnumItem,
	Follow: EnumItem,
	Classic: EnumItem,
	Orbital: EnumItem,
	CameraToggle: EnumItem,
}
type EnumComputerMovementMode = {
	Default: EnumItem,
	KeyboardMouse: EnumItem,
	ClickToMove: EnumItem,
}
type EnumConnectionError = {
	OK: EnumItem,
	DisconnectErrors: EnumItem,
	DisconnectBadhash: EnumItem,
	DisconnectSecurityKeyMismatch: EnumItem,
	DisconnectNewSecurityKeyMismatch: EnumItem,
	DisconnectProtocolMismatch: EnumItem,
	DisconnectReceivePacketError: EnumItem,
	DisconnectReceivePacketStreamError: EnumItem,
	DisconnectSendPacketError: EnumItem,
	DisconnectIllegalTeleport: EnumItem,
	DisconnectDuplicatePlayer: EnumItem,
	DisconnectDuplicateTicket: EnumItem,
	DisconnectTimeout: EnumItem,
	DisconnectLuaKick: EnumItem,
	DisconnectOnRemoteSysStats: EnumItem,
	DisconnectHashTimeout: EnumItem,
	DisconnectCloudEditKick: EnumItem,
	DisconnectPlayerless: EnumItem,
	DisconnectEvicted: EnumItem,
	DisconnectDevMaintenance: EnumItem,
	DisconnectRobloxMaintenance: EnumItem,
	DisconnectRejoin: EnumItem,
	DisconnectConnectionLost: EnumItem,
	DisconnectIdle: EnumItem,
	DisconnectRaknetErrors: EnumItem,
	DisconnectWrongVersion: EnumItem,
	DisconnectBySecurityPolicy: EnumItem,
	DisconnectBlockedIP: EnumItem,
	DisconnectClientFailure: EnumItem,
	DisconnectClientRequest: EnumItem,
	DisconnectOutOfMemory: EnumItem,
	DisconnectModeratedGame: EnumItem,
	PlacelaunchErrors: EnumItem,
	PlacelaunchDisabled: EnumItem,
	PlacelaunchError: EnumItem,
	PlacelaunchGameEnded: EnumItem,
	PlacelaunchGameFull: EnumItem,
	PlacelaunchUserLeft: EnumItem,
	PlacelaunchRestricted: EnumItem,
	PlacelaunchUnauthorized: EnumItem,
	PlacelaunchFlooded: EnumItem,
	PlacelaunchHashExpired: EnumItem,
	PlacelaunchHashException: EnumItem,
	PlacelaunchPartyCannotFit: EnumItem,
	PlacelaunchHttpError: EnumItem,
	PlacelaunchCustomMessage: EnumItem,
	PlacelaunchOtherError: EnumItem,
	TeleportErrors: EnumItem,
	TeleportFailure: EnumItem,
	TeleportGameNotFound: EnumItem,
	TeleportGameEnded: EnumItem,
	TeleportGameFull: EnumItem,
	TeleportUnauthorized: EnumItem,
	TeleportFlooded: EnumItem,
	TeleportIsTeleporting: EnumItem,
}
type EnumConnectionState = {
	Connected: EnumItem,
	Disconnected: EnumItem,
}
type EnumContextActionPriority = {
	Low: EnumItem,
	Medium: EnumItem,
	Default: EnumItem,
	High: EnumItem,
}
type EnumContextActionResult = {
	Pass: EnumItem,
	Sink: EnumItem,
}
type EnumControlMode = {
	MouseLockSwitch: EnumItem,
	Classic: EnumItem,
}
type EnumCoreGuiType = {
	PlayerList: EnumItem,
	Health: EnumItem,
	Backpack: EnumItem,
	Chat: EnumItem,
	All: EnumItem,
	EmotesMenu: EnumItem,
}
type EnumCreateOutfitFailure = {
	InvalidName: EnumItem,
	OutfitLimitReached: EnumItem,
	Other: EnumItem,
}
type EnumCreatorType = {
	User: EnumItem,
	Group: EnumItem,
}
type EnumCurrencyType = {
	Default: EnumItem,
	Robux: EnumItem,
	Tix: EnumItem,
}
type EnumCustomCameraMode = {
	Default: EnumItem,
	Follow: EnumItem,
	Classic: EnumItem,
}
type EnumDataStoreRequestType = {
	GetAsync: EnumItem,
	SetIncrementAsync: EnumItem,
	UpdateAsync: EnumItem,
	GetSortedAsync: EnumItem,
	SetIncrementSortedAsync: EnumItem,
	OnUpdate: EnumItem,
}
type EnumDebuggerEndReason = {
	ClientRequest: EnumItem,
	Timeout: EnumItem,
	InvalidHost: EnumItem,
	Disconnected: EnumItem,
	ServerShutdown: EnumItem,
	ServerProtocolMismatch: EnumItem,
	ConfigurationFailed: EnumItem,
	RpcError: EnumItem,
}
type EnumDebuggerExceptionBreakMode = {
	Never: EnumItem,
	Unhandled: EnumItem,
	Always: EnumItem,
}
type EnumDebuggerFrameType = {
	C: EnumItem,
	Lua: EnumItem,
}
type EnumDebuggerPauseReason = {
	Unknown: EnumItem,
	Requested: EnumItem,
	Breakpoint: EnumItem,
	Exception: EnumItem,
	SingleStep: EnumItem,
	Entrypoint: EnumItem,
}
type EnumDebuggerStatus = {
	Success: EnumItem,
	Timeout: EnumItem,
	ConnectionLost: EnumItem,
	InvalidResponse: EnumItem,
	InternalError: EnumItem,
	InvalidState: EnumItem,
	RpcError: EnumItem,
	InvalidArgument: EnumItem,
	ConnectionClosed: EnumItem,
}
type EnumDevCameraOcclusionMode = {
	Zoom: EnumItem,
	Invisicam: EnumItem,
}
type EnumDevComputerCameraMovementMode = {
	UserChoice: EnumItem,
	Classic: EnumItem,
	Follow: EnumItem,
	Orbital: EnumItem,
	CameraToggle: EnumItem,
}
type EnumDevComputerMovementMode = {
	UserChoice: EnumItem,
	KeyboardMouse: EnumItem,
	ClickToMove: EnumItem,
	Scriptable: EnumItem,
}
type EnumDevTouchCameraMovementMode = {
	UserChoice: EnumItem,
	Classic: EnumItem,
	Follow: EnumItem,
	Orbital: EnumItem,
}
type EnumDevTouchMovementMode = {
	UserChoice: EnumItem,
	Thumbstick: EnumItem,
	DPad: EnumItem,
	Thumbpad: EnumItem,
	ClickToMove: EnumItem,
	Scriptable: EnumItem,
	DynamicThumbstick: EnumItem,
}
type EnumDeveloperMemoryTag = {
	Internal: EnumItem,
	HttpCache: EnumItem,
	Instances: EnumItem,
	Signals: EnumItem,
	LuaHeap: EnumItem,
	Script: EnumItem,
	PhysicsCollision: EnumItem,
	PhysicsParts: EnumItem,
	GraphicsSolidModels: EnumItem,
	GraphicsMeshParts: EnumItem,
	GraphicsParticles: EnumItem,
	GraphicsParts: EnumItem,
	GraphicsSpatialHash: EnumItem,
	GraphicsTerrain: EnumItem,
	GraphicsTexture: EnumItem,
	GraphicsTextureCharacter: EnumItem,
	Sounds: EnumItem,
	StreamingSounds: EnumItem,
	TerrainVoxels: EnumItem,
	Gui: EnumItem,
	Animation: EnumItem,
	Navigation: EnumItem,
}
type EnumDeviceType = {
	Unknown: EnumItem,
	Desktop: EnumItem,
	Tablet: EnumItem,
	Phone: EnumItem,
}
type EnumDialogBehaviorType = {
	SinglePlayer: EnumItem,
	MultiplePlayers: EnumItem,
}
type EnumDialogPurpose = {
	Quest: EnumItem,
	Help: EnumItem,
	Shop: EnumItem,
}
type EnumDialogTone = {
	Neutral: EnumItem,
	Friendly: EnumItem,
	Enemy: EnumItem,
}
type EnumDominantAxis = {
	Width: EnumItem,
	Height: EnumItem,
}
type EnumDraftStatusCode = {
	OK: EnumItem,
	DraftOutdated: EnumItem,
	ScriptRemoved: EnumItem,
	DraftCommitted: EnumItem,
}
type EnumDraggerCoordinateSpace = {
	Object: EnumItem,
	World: EnumItem,
}
type EnumDraggerMovementMode = {
	Geometric: EnumItem,
	Physical: EnumItem,
}
type EnumEasingDirection = {
	In: EnumItem,
	Out: EnumItem,
	InOut: EnumItem,
}
type EnumEasingStyle = {
	Linear: EnumItem,
	Sine: EnumItem,
	Back: EnumItem,
	Quad: EnumItem,
	Quart: EnumItem,
	Quint: EnumItem,
	Bounce: EnumItem,
	Elastic: EnumItem,
	Exponential: EnumItem,
	Circular: EnumItem,
	Cubic: EnumItem,
}
type EnumElasticBehavior = {
	WhenScrollable: EnumItem,
	Always: EnumItem,
	Never: EnumItem,
}
type EnumEnviromentalPhysicsThrottle = {
	DefaultAuto: EnumItem,
	Disabled: EnumItem,
	Always: EnumItem,
	Skip2: EnumItem,
	Skip4: EnumItem,
	Skip8: EnumItem,
	Skip16: EnumItem,
}
type EnumExplosionType = {
	NoCraters: EnumItem,
	Craters: EnumItem,
}
type EnumFieldOfViewMode = {
	Vertical: EnumItem,
	Diagonal: EnumItem,
	MaxAxis: EnumItem,
}
type EnumFillDirection = {
	Horizontal: EnumItem,
	Vertical: EnumItem,
}
type EnumFilterResult = {
	Rejected: EnumItem,
	Accepted: EnumItem,
}
type EnumFont = {
	Legacy: EnumItem,
	Arial: EnumItem,
	ArialBold: EnumItem,
	SourceSans: EnumItem,
	SourceSansBold: EnumItem,
	SourceSansSemibold: EnumItem,
	SourceSansLight: EnumItem,
	SourceSansItalic: EnumItem,
	Bodoni: EnumItem,
	Garamond: EnumItem,
	Cartoon: EnumItem,
	Code: EnumItem,
	Highway: EnumItem,
	SciFi: EnumItem,
	Arcade: EnumItem,
	Fantasy: EnumItem,
	Antique: EnumItem,
	Gotham: EnumItem,
	GothamSemibold: EnumItem,
	GothamBold: EnumItem,
	GothamBlack: EnumItem,
	AmaticSC: EnumItem,
	Bangers: EnumItem,
	Creepster: EnumItem,
	DenkOne: EnumItem,
	Fondamento: EnumItem,
	FredokaOne: EnumItem,
	GrenzeGotisch: EnumItem,
	IndieFlower: EnumItem,
	JosefinSans: EnumItem,
	Jura: EnumItem,
	Kalam: EnumItem,
	LuckiestGuy: EnumItem,
	Merriweather: EnumItem,
	Michroma: EnumItem,
	Nunito: EnumItem,
	Oswald: EnumItem,
	PatrickHand: EnumItem,
	PermanentMarker: EnumItem,
	Roboto: EnumItem,
	RobotoCondensed: EnumItem,
	RobotoMono: EnumItem,
	Sarpanch: EnumItem,
	SpecialElite: EnumItem,
	TitilliumWeb: EnumItem,
	Ubuntu: EnumItem,
	Unknown: EnumItem,
}
type EnumFontSize = {
	Size8: EnumItem,
	Size9: EnumItem,
	Size10: EnumItem,
	Size11: EnumItem,
	Size12: EnumItem,
	Size14: EnumItem,
	Size18: EnumItem,
	Size24: EnumItem,
	Size36: EnumItem,
	Size48: EnumItem,
	Size28: EnumItem,
	Size32: EnumItem,
	Size42: EnumItem,
	Size60: EnumItem,
	Size96: EnumItem,
}
type EnumFontStyle = {
	Normal: EnumItem,
	Italic: EnumItem,
}
type EnumFontWeight = {
	Thin: EnumItem,
	ExtraLight: EnumItem,
	Light: EnumItem,
	Regular: EnumItem,
	Medium: EnumItem,
	SemiBold: EnumItem,
	Bold: EnumItem,
	ExtraBold: EnumItem,
	Heavy: EnumItem,
}
type EnumFormFactor = {
	Symmetric: EnumItem,
	Brick: EnumItem,
	Plate: EnumItem,
	Custom: EnumItem,
}
type EnumFrameStyle = {
	Custom: EnumItem,
	ChatBlue: EnumItem,
	RobloxSquare: EnumItem,
	RobloxRound: EnumItem,
	ChatGreen: EnumItem,
	ChatRed: EnumItem,
	DropShadow: EnumItem,
}
type EnumFramerateManagerMode = {
	Automatic: EnumItem,
	On: EnumItem,
	Off: EnumItem,
}
type EnumFriendRequestEvent = {
	Issue: EnumItem,
	Revoke: EnumItem,
	Accept: EnumItem,
	Deny: EnumItem,
}
type EnumFriendStatus = {
	Unknown: EnumItem,
	NotFriend: EnumItem,
	Friend: EnumItem,
	FriendRequestSent: EnumItem,
	FriendRequestReceived: EnumItem,
}
type EnumFunctionalTestResult = {
	Passed: EnumItem,
	Warning: EnumItem,
	Error: EnumItem,
}
type EnumGameAvatarType = {
	R6: EnumItem,
	R15: EnumItem,
	PlayerChoice: EnumItem,
}
type EnumGearGenreSetting = {
	AllGenres: EnumItem,
	MatchingGenreOnly: EnumItem,
}
type EnumGearType = {
	MeleeWeapons: EnumItem,
	RangedWeapons: EnumItem,
	Explosives: EnumItem,
	PowerUps: EnumItem,
	NavigationEnhancers: EnumItem,
	MusicalInstruments: EnumItem,
	SocialItems: EnumItem,
	BuildingTools: EnumItem,
	Transport: EnumItem,
}
type EnumGenre = {
	All: EnumItem,
	TownAndCity: EnumItem,
	Fantasy: EnumItem,
	SciFi: EnumItem,
	Ninja: EnumItem,
	Scary: EnumItem,
	Pirate: EnumItem,
	Adventure: EnumItem,
	Sports: EnumItem,
	Funny: EnumItem,
	WildWest: EnumItem,
	War: EnumItem,
	SkatePark: EnumItem,
	Tutorial: EnumItem,
}
type EnumGraphicsMode = {
	Automatic: EnumItem,
	Direct3D11: EnumItem,
	OpenGL: EnumItem,
	Metal: EnumItem,
	Vulkan: EnumItem,
	NoGraphics: EnumItem,
}
type EnumHandlesStyle = {
	Resize: EnumItem,
	Movement: EnumItem,
}
type EnumHighlightDepthMode = {
	AlwaysOnTop: EnumItem,
	Occluded: EnumItem,
}
type EnumHorizontalAlignment = {
	Center: EnumItem,
	Left: EnumItem,
	Right: EnumItem,
}
type EnumHoverAnimateSpeed = {
	VerySlow: EnumItem,
	Slow: EnumItem,
	Medium: EnumItem,
	Fast: EnumItem,
	VeryFast: EnumItem,
}
type EnumHttpCachePolicy = {
	None: EnumItem,
	Full: EnumItem,
	DataOnly: EnumItem,
	Default: EnumItem,
	InternalRedirectRefresh: EnumItem,
}
type EnumHttpContentType = {
	ApplicationJson: EnumItem,
	ApplicationXml: EnumItem,
	ApplicationUrlEncoded: EnumItem,
	TextPlain: EnumItem,
	TextXml: EnumItem,
}
type EnumHttpError = {
	OK: EnumItem,
	InvalidUrl: EnumItem,
	DnsResolve: EnumItem,
	ConnectFail: EnumItem,
	OutOfMemory: EnumItem,
	TimedOut: EnumItem,
	TooManyRedirects: EnumItem,
	InvalidRedirect: EnumItem,
	NetFail: EnumItem,
	Aborted: EnumItem,
	SslConnectFail: EnumItem,
	SslVerificationFail: EnumItem,
	Unknown: EnumItem,
}
type EnumHttpRequestType = {
	Default: EnumItem,
	MarketplaceService: EnumItem,
	Players: EnumItem,
	Chat: EnumItem,
	Avatar: EnumItem,
	Analytics: EnumItem,
	Localization: EnumItem,
}
type EnumHumanoidCollisionType = {
	OuterBox: EnumItem,
	InnerBox: EnumItem,
}
type EnumHumanoidDisplayDistanceType = {
	Viewer: EnumItem,
	Subject: EnumItem,
	None: EnumItem,
}
type EnumHumanoidHealthDisplayType = {
	DisplayWhenDamaged: EnumItem,
	AlwaysOn: EnumItem,
	AlwaysOff: EnumItem,
}
type EnumHumanoidOnlySetCollisionsOnStateChange = {
	Default: EnumItem,
	Disabled: EnumItem,
	Enabled: EnumItem,
}
type EnumHumanoidRigType = {
	R6: EnumItem,
	R15: EnumItem,
}
type EnumHumanoidStateType = {
	FallingDown: EnumItem,
	Running: EnumItem,
	RunningNoPhysics: EnumItem,
	Climbing: EnumItem,
	StrafingNoPhysics: EnumItem,
	Ragdoll: EnumItem,
	GettingUp: EnumItem,
	Jumping: EnumItem,
	Landed: EnumItem,
	Flying: EnumItem,
	Freefall: EnumItem,
	Seated: EnumItem,
	PlatformStanding: EnumItem,
	Dead: EnumItem,
	Swimming: EnumItem,
	Physics: EnumItem,
	None: EnumItem,
}
type EnumIKCollisionsMode = {
	NoCollisions: EnumItem,
	OtherMechanismsAnchored: EnumItem,
	IncludeContactedMechanisms: EnumItem,
}
type EnumIXPLoadingStatus = {
	None: EnumItem,
	Pending: EnumItem,
	Initialized: EnumItem,
	ShutOff: EnumItem,
	ErrorTimedOut: EnumItem,
	ErrorConnection: EnumItem,
	ErrorJsonParse: EnumItem,
	ErrorInvalidUser: EnumItem,
}
type EnumInOut = {
	Edge: EnumItem,
	Inset: EnumItem,
	Center: EnumItem,
}
type EnumInfoType = {
	Asset: EnumItem,
	Product: EnumItem,
	GamePass: EnumItem,
	Subscription: EnumItem,
	Bundle: EnumItem,
}
type EnumInitialDockState = {
	Top: EnumItem,
	Bottom: EnumItem,
	Left: EnumItem,
	Right: EnumItem,
	Float: EnumItem,
}
type EnumInputType = {
	NoInput: EnumItem,
	Constant: EnumItem,
	Sin: EnumItem,
}
type EnumInterpolationThrottlingMode = {
	Default: EnumItem,
	Disabled: EnumItem,
	Enabled: EnumItem,
}
type EnumJointCreationMode = {
	All: EnumItem,
	Surface: EnumItem,
	None: EnumItem,
}
type EnumKeyCode = {
	Unknown: EnumItem,
	Backspace: EnumItem,
	Tab: EnumItem,
	Clear: EnumItem,
	Return: EnumItem,
	Pause: EnumItem,
	Escape: EnumItem,
	Space: EnumItem,
	QuotedDouble: EnumItem,
	Hash: EnumItem,
	Dollar: EnumItem,
	Percent: EnumItem,
	Ampersand: EnumItem,
	Quote: EnumItem,
	LeftParenthesis: EnumItem,
	RightParenthesis: EnumItem,
	Asterisk: EnumItem,
	Plus: EnumItem,
	Comma: EnumItem,
	Minus: EnumItem,
	Period: EnumItem,
	Slash: EnumItem,
	Zero: EnumItem,
	One: EnumItem,
	Two: EnumItem,
	Three: EnumItem,
	Four: EnumItem,
	Five: EnumItem,
	Six: EnumItem,
	Seven: EnumItem,
	Eight: EnumItem,
	Nine: EnumItem,
	Colon: EnumItem,
	Semicolon: EnumItem,
	LessThan: EnumItem,
	Equals: EnumItem,
	GreaterThan: EnumItem,
	Question: EnumItem,
	At: EnumItem,
	LeftBracket: EnumItem,
	BackSlash: EnumItem,
	RightBracket: EnumItem,
	Caret: EnumItem,
	Underscore: EnumItem,
	Backquote: EnumItem,
	A: EnumItem,
	B: EnumItem,
	C: EnumItem,
	D: EnumItem,
	E: EnumItem,
	F: EnumItem,
	G: EnumItem,
	H: EnumItem,
	I: EnumItem,
	J: EnumItem,
	K: EnumItem,
	L: EnumItem,
	M: EnumItem,
	N: EnumItem,
	O: EnumItem,
	P: EnumItem,
	Q: EnumItem,
	R: EnumItem,
	S: EnumItem,
	T: EnumItem,
	U: EnumItem,
	V: EnumItem,
	W: EnumItem,
	X: EnumItem,
	Y: EnumItem,
	Z: EnumItem,
	LeftCurly: EnumItem,
	Pipe: EnumItem,
	RightCurly: EnumItem,
	Tilde: EnumItem,
	Delete: EnumItem,
	KeypadZero: EnumItem,
	KeypadOne: EnumItem,
	KeypadTwo: EnumItem,
	KeypadThree: EnumItem,
	KeypadFour: EnumItem,
	KeypadFive: EnumItem,
	KeypadSix: EnumItem,
	KeypadSeven: EnumItem,
	KeypadEight: EnumItem,
	KeypadNine: EnumItem,
	KeypadPeriod: EnumItem,
	KeypadDivide: EnumItem,
	KeypadMultiply: EnumItem,
	KeypadMinus: EnumItem,
	KeypadPlus: EnumItem,
	KeypadEnter: EnumItem,
	KeypadEquals: EnumItem,
	Up: EnumItem,
	Down: EnumItem,
	Right: EnumItem,
	Left: EnumItem,
	Insert: EnumItem,
	Home: EnumItem,
	End: EnumItem,
	PageUp: EnumItem,
	PageDown: EnumItem,
	LeftShift: EnumItem,
	RightShift: EnumItem,
	LeftMeta: EnumItem,
	RightMeta: EnumItem,
	LeftAlt: EnumItem,
	RightAlt: EnumItem,
	LeftControl: EnumItem,
	RightControl: EnumItem,
	CapsLock: EnumItem,
	NumLock: EnumItem,
	ScrollLock: EnumItem,
	LeftSuper: EnumItem,
	RightSuper: EnumItem,
	Mode: EnumItem,
	Compose: EnumItem,
	Help: EnumItem,
	Print: EnumItem,
	SysReq: EnumItem,
	Break: EnumItem,
	Menu: EnumItem,
	Power: EnumItem,
	Euro: EnumItem,
	Undo: EnumItem,
	F1: EnumItem,
	F2: EnumItem,
	F3: EnumItem,
	F4: EnumItem,
	F5: EnumItem,
	F6: EnumItem,
	F7: EnumItem,
	F8: EnumItem,
	F9: EnumItem,
	F10: EnumItem,
	F11: EnumItem,
	F12: EnumItem,
	F13: EnumItem,
	F14: EnumItem,
	F15: EnumItem,
	World0: EnumItem,
	World1: EnumItem,
	World2: EnumItem,
	World3: EnumItem,
	World4: EnumItem,
	World5: EnumItem,
	World6: EnumItem,
	World7: EnumItem,
	World8: EnumItem,
	World9: EnumItem,
	World10: EnumItem,
	World11: EnumItem,
	World12: EnumItem,
	World13: EnumItem,
	World14: EnumItem,
	World15: EnumItem,
	World16: EnumItem,
	World17: EnumItem,
	World18: EnumItem,
	World19: EnumItem,
	World20: EnumItem,
	World21: EnumItem,
	World22: EnumItem,
	World23: EnumItem,
	World24: EnumItem,
	World25: EnumItem,
	World26: EnumItem,
	World27: EnumItem,
	World28: EnumItem,
	World29: EnumItem,
	World30: EnumItem,
	World31: EnumItem,
	World32: EnumItem,
	World33: EnumItem,
	World34: EnumItem,
	World35: EnumItem,
	World36: EnumItem,
	World37: EnumItem,
	World38: EnumItem,
	World39: EnumItem,
	World40: EnumItem,
	World41: EnumItem,
	World42: EnumItem,
	World43: EnumItem,
	World44: EnumItem,
	World45: EnumItem,
	World46: EnumItem,
	World47: EnumItem,
	World48: EnumItem,
	World49: EnumItem,
	World50: EnumItem,
	World51: EnumItem,
	World52: EnumItem,
	World53: EnumItem,
	World54: EnumItem,
	World55: EnumItem,
	World56: EnumItem,
	World57: EnumItem,
	World58: EnumItem,
	World59: EnumItem,
	World60: EnumItem,
	World61: EnumItem,
	World62: EnumItem,
	World63: EnumItem,
	World64: EnumItem,
	World65: EnumItem,
	World66: EnumItem,
	World67: EnumItem,
	World68: EnumItem,
	World69: EnumItem,
	World70: EnumItem,
	World71: EnumItem,
	World72: EnumItem,
	World73: EnumItem,
	World74: EnumItem,
	World75: EnumItem,
	World76: EnumItem,
	World77: EnumItem,
	World78: EnumItem,
	World79: EnumItem,
	World80: EnumItem,
	World81: EnumItem,
	World82: EnumItem,
	World83: EnumItem,
	World84: EnumItem,
	World85: EnumItem,
	World86: EnumItem,
	World87: EnumItem,
	World88: EnumItem,
	World89: EnumItem,
	World90: EnumItem,
	World91: EnumItem,
	World92: EnumItem,
	World93: EnumItem,
	World94: EnumItem,
	World95: EnumItem,
	ButtonX: EnumItem,
	ButtonY: EnumItem,
	ButtonA: EnumItem,
	ButtonB: EnumItem,
	ButtonR1: EnumItem,
	ButtonL1: EnumItem,
	ButtonR2: EnumItem,
	ButtonL2: EnumItem,
	ButtonR3: EnumItem,
	ButtonL3: EnumItem,
	ButtonStart: EnumItem,
	ButtonSelect: EnumItem,
	DPadLeft: EnumItem,
	DPadRight: EnumItem,
	DPadUp: EnumItem,
	DPadDown: EnumItem,
	Thumbstick1: EnumItem,
	Thumbstick2: EnumItem,
}
type EnumKeyInterpolationMode = {
	Constant: EnumItem,
	Linear: EnumItem,
	Cubic: EnumItem,
}
type EnumKeywordFilterType = {
	Include: EnumItem,
	Exclude: EnumItem,
}
type EnumLSPMethodType = {
	Initialize: EnumItem,
	Initialized: EnumItem,
	CancelRequest: EnumItem,
	TextDocument_didOpen: EnumItem,
	TextDocument_didChange: EnumItem,
	TextDocument_didClose: EnumItem,
	TextDocument_foldingRange: EnumItem,
	TextDocument_onTypeFormatting: EnumItem,
	TextDocument_formatting: EnumItem,
	TextDocument_rangeFormatting: EnumItem,
	TextDocument_hover: EnumItem,
	TextDocument_signatureHelp: EnumItem,
	Workspace_DidChangeConfiguration: EnumItem,
	ShutdownRequest: EnumItem,
	Completion: EnumItem,
	Declaration: EnumItem,
	DocumentSymbols: EnumItem,
	TextDocument_publishDiagnostics: EnumItem,
	Window_showMessage: EnumItem,
	Window_showMessageRequest: EnumItem,
	Roblox_registerSyntaxCategories: EnumItem,
	Roblox_signalQuiescence: EnumItem,
	Roblox_syntaxHighlight: EnumItem,
	Roblox_suggestExtraSelections: EnumItem,
	Roblox_findExecutablePosition: EnumItem,
	Roblox_findColor3: EnumItem,
}
type EnumLanguage = {
	Default: EnumItem,
}
type EnumLeftRight = {
	Left: EnumItem,
	Center: EnumItem,
	Right: EnumItem,
}
type EnumLevelOfDetailSetting = {
	High: EnumItem,
	Medium: EnumItem,
	Low: EnumItem,
}
type EnumLimb = {
	Head: EnumItem,
	Torso: EnumItem,
	LeftArm: EnumItem,
	RightArm: EnumItem,
	LeftLeg: EnumItem,
	RightLeg: EnumItem,
	Unknown: EnumItem,
}
type EnumLineJoinMode = {
	Round: EnumItem,
	Bevel: EnumItem,
	Miter: EnumItem,
}
type EnumListDisplayMode = {
	Horizontal: EnumItem,
	Vertical: EnumItem,
}
type EnumListenerType = {
	Camera: EnumItem,
	CFrame: EnumItem,
	ObjectPosition: EnumItem,
	ObjectCFrame: EnumItem,
}
type EnumLoadCharacterLayeredClothing = {
	Default: EnumItem,
	Disabled: EnumItem,
	Enabled: EnumItem,
}
type EnumMaterial = {
	Plastic: EnumItem,
	Wood: EnumItem,
	Slate: EnumItem,
	Concrete: EnumItem,
	CorrodedMetal: EnumItem,
	DiamondPlate: EnumItem,
	Foil: EnumItem,
	Grass: EnumItem,
	Ice: EnumItem,
	Marble: EnumItem,
	Granite: EnumItem,
	Brick: EnumItem,
	Pebble: EnumItem,
	Sand: EnumItem,
	Fabric: EnumItem,
	SmoothPlastic: EnumItem,
	Metal: EnumItem,
	WoodPlanks: EnumItem,
	Cobblestone: EnumItem,
	Air: EnumItem,
	Water: EnumItem,
	Rock: EnumItem,
	Glacier: EnumItem,
	Snow: EnumItem,
	Sandstone: EnumItem,
	Mud: EnumItem,
	Basalt: EnumItem,
	Ground: EnumItem,
	CrackedLava: EnumItem,
	Neon: EnumItem,
	Glass: EnumItem,
	Asphalt: EnumItem,
	LeafyGrass: EnumItem,
	Salt: EnumItem,
	Limestone: EnumItem,
	Pavement: EnumItem,
	ForceField: EnumItem,
}
type EnumMaterialPattern = {
	Regular: EnumItem,
	Organic: EnumItem,
}
type EnumMembershipType = {
	None: EnumItem,
	BuildersClub: EnumItem,
	TurboBuildersClub: EnumItem,
	OutrageousBuildersClub: EnumItem,
	Premium: EnumItem,
}
type EnumMeshPartDetailLevel = {
	DistanceBased: EnumItem,
	Level01: EnumItem,
	Level02: EnumItem,
	Level03: EnumItem,
	Level04: EnumItem,
}
type EnumMeshPartHeadsAndAccessories = {
	Default: EnumItem,
	Disabled: EnumItem,
	Enabled: EnumItem,
}
type EnumMeshScaleUnit = {
	Stud: EnumItem,
	Meter: EnumItem,
	CM: EnumItem,
	MM: EnumItem,
	Foot: EnumItem,
	Inch: EnumItem,
}
type EnumMeshType = {
	Head: EnumItem,
	Torso: EnumItem,
	Wedge: EnumItem,
	Prism: EnumItem,
	Pyramid: EnumItem,
	ParallelRamp: EnumItem,
	RightAngleRamp: EnumItem,
	CornerWedge: EnumItem,
	Brick: EnumItem,
	Sphere: EnumItem,
	Cylinder: EnumItem,
	FileMesh: EnumItem,
}
type EnumMessageType = {
	MessageOutput: EnumItem,
	MessageInfo: EnumItem,
	MessageWarning: EnumItem,
	MessageError: EnumItem,
}
type EnumModelLevelOfDetail = {
	Automatic: EnumItem,
	StreamingMesh: EnumItem,
	Disabled: EnumItem,
}
type EnumModifierKey = {
	Alt: EnumItem,
	Ctrl: EnumItem,
	Meta: EnumItem,
	Shift: EnumItem,
}
type EnumMouseBehavior = {
	Default: EnumItem,
	LockCenter: EnumItem,
	LockCurrentPosition: EnumItem,
}
type EnumMoveState = {
	Stopped: EnumItem,
	Coasting: EnumItem,
	Pushing: EnumItem,
	Stopping: EnumItem,
	AirFree: EnumItem,
}
type EnumNameOcclusion = {
	OccludeAll: EnumItem,
	EnemyOcclusion: EnumItem,
	NoOcclusion: EnumItem,
}
type EnumNetworkOwnership = {
	Automatic: EnumItem,
	Manual: EnumItem,
	OnContact: EnumItem,
}
type EnumNewAnimationRuntimeSetting = {
	Default: EnumItem,
	Disabled: EnumItem,
	Enabled: EnumItem,
}
type EnumNormalId = {
	Top: EnumItem,
	Bottom: EnumItem,
	Back: EnumItem,
	Front: EnumItem,
	Right: EnumItem,
	Left: EnumItem,
}
type EnumOrientationAlignmentMode = {
	OneAttachment: EnumItem,
	TwoAttachment: EnumItem,
}
type EnumOutfitSource = {
	All: EnumItem,
	Created: EnumItem,
	Purchased: EnumItem,
}
type EnumOutputLayoutMode = {
	Horizontal: EnumItem,
	Vertical: EnumItem,
}
type EnumOverrideMouseIconBehavior = {
	None: EnumItem,
	ForceShow: EnumItem,
	ForceHide: EnumItem,
}
type EnumPackagePermission = {
	None: EnumItem,
	NoAccess: EnumItem,
	Revoked: EnumItem,
	UseView: EnumItem,
	Edit: EnumItem,
	Own: EnumItem,
}
type EnumPartType = {
	Ball: EnumItem,
	Block: EnumItem,
	Cylinder: EnumItem,
}
type EnumParticleEmitterShape = {
	Box: EnumItem,
	Sphere: EnumItem,
	Cylinder: EnumItem,
	Disc: EnumItem,
}
type EnumParticleEmitterShapeInOut = {
	Outward: EnumItem,
	Inward: EnumItem,
	InAndOut: EnumItem,
}
type EnumParticleEmitterShapeStyle = {
	Volume: EnumItem,
	Surface: EnumItem,
}
type EnumParticleFlipbookLayout = {
	None: EnumItem,
	TwoByTwo: EnumItem,
	FourByFour: EnumItem,
	EightByEight: EnumItem,
}
type EnumParticleFlipbookMode = {
	Loop: EnumItem,
	OneShot: EnumItem,
	PingPong: EnumItem,
	Random: EnumItem,
}
type EnumParticleOrientation = {
	FacingCamera: EnumItem,
	FacingCameraWorldUp: EnumItem,
	VelocityParallel: EnumItem,
	VelocityPerpendicular: EnumItem,
}
type EnumPathStatus = {
	Success: EnumItem,
	ClosestNoPath: EnumItem,
	ClosestOutOfRange: EnumItem,
	FailStartNotEmpty: EnumItem,
	FailFinishNotEmpty: EnumItem,
	NoPath: EnumItem,
}
type EnumPathWaypointAction = {
	Walk: EnumItem,
	Jump: EnumItem,
	Custom: EnumItem,
}
type EnumPermissionLevelShown = {
	Game: EnumItem,
	RobloxGame: EnumItem,
	RobloxScript: EnumItem,
	Studio: EnumItem,
	Roblox: EnumItem,
}
type EnumPhysicsSimulationRate = {
	Fixed240Hz: EnumItem,
	Fixed120Hz: EnumItem,
	Fixed60Hz: EnumItem,
}
type EnumPhysicsSteppingMethod = {
	Default: EnumItem,
	Fixed: EnumItem,
	Adaptive: EnumItem,
}
type EnumPlatform = {
	Windows: EnumItem,
	OSX: EnumItem,
	IOS: EnumItem,
	Android: EnumItem,
	XBoxOne: EnumItem,
	PS4: EnumItem,
	PS3: EnumItem,
	XBox360: EnumItem,
	WiiU: EnumItem,
	NX: EnumItem,
	Ouya: EnumItem,
	AndroidTV: EnumItem,
	Chromecast: EnumItem,
	Linux: EnumItem,
	SteamOS: EnumItem,
	WebOS: EnumItem,
	DOS: EnumItem,
	BeOS: EnumItem,
	UWP: EnumItem,
	None: EnumItem,
}
type EnumPlaybackState = {
	Begin: EnumItem,
	Delayed: EnumItem,
	Playing: EnumItem,
	Paused: EnumItem,
	Completed: EnumItem,
	Cancelled: EnumItem,
}
type EnumPlayerActions = {
	CharacterForward: EnumItem,
	CharacterBackward: EnumItem,
	CharacterLeft: EnumItem,
	CharacterRight: EnumItem,
	CharacterJump: EnumItem,
}
type EnumPlayerChatType = {
	All: EnumItem,
	Team: EnumItem,
	Whisper: EnumItem,
}
type EnumPoseEasingDirection = {
	Out: EnumItem,
	InOut: EnumItem,
	In: EnumItem,
}
type EnumPoseEasingStyle = {
	Linear: EnumItem,
	Constant: EnumItem,
	Elastic: EnumItem,
	Cubic: EnumItem,
	Bounce: EnumItem,
}
type EnumPositionAlignmentMode = {
	OneAttachment: EnumItem,
	TwoAttachment: EnumItem,
}
type EnumPrivilegeType = {
	Owner: EnumItem,
	Admin: EnumItem,
	Member: EnumItem,
	Visitor: EnumItem,
	Banned: EnumItem,
}
type EnumProductLocationRestriction = {
	AvatarShop: EnumItem,
	AllowedGames: EnumItem,
	AllGames: EnumItem,
}
type EnumProductPurchaseDecision = {
	NotProcessedYet: EnumItem,
	PurchaseGranted: EnumItem,
}
type EnumPropertyStatus = {
	Ok: EnumItem,
	Warning: EnumItem,
	Error: EnumItem,
}
type EnumProximityPromptExclusivity = {
	OnePerButton: EnumItem,
	OneGlobally: EnumItem,
	AlwaysShow: EnumItem,
}
type EnumProximityPromptInputType = {
	Keyboard: EnumItem,
	Gamepad: EnumItem,
	Touch: EnumItem,
}
type EnumProximityPromptStyle = {
	Default: EnumItem,
	Custom: EnumItem,
}
type EnumQualityLevel = {
	Automatic: EnumItem,
	Level01: EnumItem,
	Level02: EnumItem,
	Level03: EnumItem,
	Level04: EnumItem,
	Level05: EnumItem,
	Level06: EnumItem,
	Level07: EnumItem,
	Level08: EnumItem,
	Level09: EnumItem,
	Level10: EnumItem,
	Level11: EnumItem,
	Level12: EnumItem,
	Level13: EnumItem,
	Level14: EnumItem,
	Level15: EnumItem,
	Level16: EnumItem,
	Level17: EnumItem,
	Level18: EnumItem,
	Level19: EnumItem,
	Level20: EnumItem,
	Level21: EnumItem,
}
type EnumR15CollisionType = {
	OuterBox: EnumItem,
	InnerBox: EnumItem,
}
type EnumRaycastFilterType = {
	Blacklist: EnumItem,
	Whitelist: EnumItem,
}
type EnumRenderFidelity = {
	Automatic: EnumItem,
	Precise: EnumItem,
	Performance: EnumItem,
}
type EnumRenderPriority = {
	First: EnumItem,
	Input: EnumItem,
	Camera: EnumItem,
	Character: EnumItem,
	Last: EnumItem,
}
type EnumRenderingTestComparisonMethod = {
	psnr: EnumItem,
	diff: EnumItem,
}
type EnumReplicateInstanceDestroySetting = {
	Default: EnumItem,
	Disabled: EnumItem,
	Enabled: EnumItem,
}
type EnumResamplerMode = {
	Default: EnumItem,
	Pixelated: EnumItem,
}
type EnumReturnKeyType = {
	Default: EnumItem,
	Done: EnumItem,
	Go: EnumItem,
	Next: EnumItem,
	Search: EnumItem,
	Send: EnumItem,
}
type EnumReverbType = {
	NoReverb: EnumItem,
	GenericReverb: EnumItem,
	PaddedCell: EnumItem,
	Room: EnumItem,
	Bathroom: EnumItem,
	LivingRoom: EnumItem,
	StoneRoom: EnumItem,
	Auditorium: EnumItem,
	ConcertHall: EnumItem,
	Cave: EnumItem,
	Arena: EnumItem,
	Hangar: EnumItem,
	CarpettedHallway: EnumItem,
	Hallway: EnumItem,
	StoneCorridor: EnumItem,
	Alley: EnumItem,
	Forest: EnumItem,
	City: EnumItem,
	Mountains: EnumItem,
	Quarry: EnumItem,
	Plain: EnumItem,
	ParkingLot: EnumItem,
	SewerPipe: EnumItem,
	UnderWater: EnumItem,
}
type EnumRibbonTool = {
	Select: EnumItem,
	Scale: EnumItem,
	Rotate: EnumItem,
	Move: EnumItem,
	Transform: EnumItem,
	ColorPicker: EnumItem,
	MaterialPicker: EnumItem,
	Group: EnumItem,
	Ungroup: EnumItem,
	None: EnumItem,
}
type EnumRigType = {
	R15: EnumItem,
	Rthro: EnumItem,
	RthroNarrow: EnumItem,
	Custom: EnumItem,
	None: EnumItem,
}
type EnumRollOffMode = {
	Inverse: EnumItem,
	Linear: EnumItem,
	InverseTapered: EnumItem,
	LinearSquare: EnumItem,
}
type EnumRotationOrder = {
	XYZ: EnumItem,
	XZY: EnumItem,
	YZX: EnumItem,
	YXZ: EnumItem,
	ZXY: EnumItem,
	ZYX: EnumItem,
}
type EnumRotationType = {
	MovementRelative: EnumItem,
	CameraRelative: EnumItem,
}
type EnumRuntimeUndoBehavior = {
	Aggregate: EnumItem,
	Snapshot: EnumItem,
	Hybrid: EnumItem,
}
type EnumSaveFilter = {
	SaveAll: EnumItem,
	SaveWorld: EnumItem,
	SaveGame: EnumItem,
}
type EnumSavedQualitySetting = {
	Automatic: EnumItem,
	QualityLevel1: EnumItem,
	QualityLevel2: EnumItem,
	QualityLevel3: EnumItem,
	QualityLevel4: EnumItem,
	QualityLevel5: EnumItem,
	QualityLevel6: EnumItem,
	QualityLevel7: EnumItem,
	QualityLevel8: EnumItem,
	QualityLevel9: EnumItem,
	QualityLevel10: EnumItem,
}
type EnumScaleType = {
	Stretch: EnumItem,
	Slice: EnumItem,
	Tile: EnumItem,
	Fit: EnumItem,
	Crop: EnumItem,
}
type EnumScreenOrientation = {
	LandscapeLeft: EnumItem,
	LandscapeRight: EnumItem,
	LandscapeSensor: EnumItem,
	Portrait: EnumItem,
	Sensor: EnumItem,
}
type EnumScrollBarInset = {
	None: EnumItem,
	ScrollBar: EnumItem,
	Always: EnumItem,
}
type EnumScrollingDirection = {
	X: EnumItem,
	Y: EnumItem,
	XY: EnumItem,
}
type EnumSelectionBehavior = {
	Escape: EnumItem,
	Stop: EnumItem,
}
type EnumServerAudioBehavior = {
	Enabled: EnumItem,
	Muted: EnumItem,
	OnlineGame: EnumItem,
}
type EnumSignalBehavior = {
	Default: EnumItem,
	Immediate: EnumItem,
	Deferred: EnumItem,
	AncestryDeferred: EnumItem,
}
type EnumSizeConstraint = {
	RelativeXY: EnumItem,
	RelativeXX: EnumItem,
	RelativeYY: EnumItem,
}
type EnumSortDirection = {
	Ascending: EnumItem,
	Descending: EnumItem,
}
type EnumSortOrder = {
	LayoutOrder: EnumItem,
	Name: EnumItem,
	Custom: EnumItem,
}
type EnumSpecialKey = {
	Insert: EnumItem,
	Home: EnumItem,
	End: EnumItem,
	PageUp: EnumItem,
	PageDown: EnumItem,
	ChatHotkey: EnumItem,
}
type EnumStartCorner = {
	TopLeft: EnumItem,
	TopRight: EnumItem,
	BottomLeft: EnumItem,
	BottomRight: EnumItem,
}
type EnumStatus = {
	Poison: EnumItem,
	Confusion: EnumItem,
}
type EnumStreamOutBehavior = {
	Default: EnumItem,
	LowMemory: EnumItem,
	Opportunistic: EnumItem,
}
type EnumStreamingPauseMode = {
	Default: EnumItem,
	Disabled: EnumItem,
	ClientPhysicsPause: EnumItem,
}
type EnumStudioCloseMode = {
	None: EnumItem,
	CloseStudio: EnumItem,
	CloseDoc: EnumItem,
}
type EnumStudioDataModelType = {
	Edit: EnumItem,
	PlayClient: EnumItem,
	PlayServer: EnumItem,
	Standalone: EnumItem,
	None: EnumItem,
}
type EnumStudioScriptEditorColorCategories = {
	Default: EnumItem,
	Operator: EnumItem,
	Number: EnumItem,
	String: EnumItem,
	Comment: EnumItem,
	Keyword: EnumItem,
	Builtin: EnumItem,
	Method: EnumItem,
	Property: EnumItem,
	Nil: EnumItem,
	Bool: EnumItem,
	Function: EnumItem,
	Local: EnumItem,
	Self: EnumItem,
	LuauKeyword: EnumItem,
	FunctionName: EnumItem,
	TODO: EnumItem,
	Background: EnumItem,
	SelectionText: EnumItem,
	SelectionBackground: EnumItem,
	FindSelectionBackground: EnumItem,
	MatchingWordBackground: EnumItem,
	Warning: EnumItem,
	Error: EnumItem,
	Whitespace: EnumItem,
	ActiveLine: EnumItem,
	DebuggerCurrentLine: EnumItem,
	DebuggerErrorLine: EnumItem,
	Ruler: EnumItem,
	Bracket: EnumItem,
	MenuPrimaryText: EnumItem,
	MenuSecondaryText: EnumItem,
	MenuSelectedText: EnumItem,
	MenuBackground: EnumItem,
	MenuSelectedBackground: EnumItem,
	MenuScrollbarBackground: EnumItem,
	MenuScrollbarHandle: EnumItem,
	MenuBorder: EnumItem,
	DocViewCodeBackground: EnumItem,
}
type EnumStudioScriptEditorColorPresets = {
	RobloxDefault: EnumItem,
	Extra1: EnumItem,
	Extra2: EnumItem,
	Custom: EnumItem,
}
type EnumStudioStyleGuideColor = {
	MainBackground: EnumItem,
	Titlebar: EnumItem,
	Dropdown: EnumItem,
	Tooltip: EnumItem,
	Notification: EnumItem,
	ScrollBar: EnumItem,
	ScrollBarBackground: EnumItem,
	TabBar: EnumItem,
	Tab: EnumItem,
	FilterButtonDefault: EnumItem,
	FilterButtonHover: EnumItem,
	FilterButtonChecked: EnumItem,
	FilterButtonAccent: EnumItem,
	FilterButtonBorder: EnumItem,
	FilterButtonBorderAlt: EnumItem,
	RibbonTab: EnumItem,
	RibbonTabTopBar: EnumItem,
	Button: EnumItem,
	MainButton: EnumItem,
	RibbonButton: EnumItem,
	ViewPortBackground: EnumItem,
	InputFieldBackground: EnumItem,
	Item: EnumItem,
	TableItem: EnumItem,
	CategoryItem: EnumItem,
	GameSettingsTableItem: EnumItem,
	GameSettingsTooltip: EnumItem,
	EmulatorBar: EnumItem,
	EmulatorDropDown: EnumItem,
	ColorPickerFrame: EnumItem,
	CurrentMarker: EnumItem,
	Border: EnumItem,
	DropShadow: EnumItem,
	Shadow: EnumItem,
	Light: EnumItem,
	Dark: EnumItem,
	Mid: EnumItem,
	MainText: EnumItem,
	SubText: EnumItem,
	TitlebarText: EnumItem,
	BrightText: EnumItem,
	DimmedText: EnumItem,
	LinkText: EnumItem,
	WarningText: EnumItem,
	ErrorText: EnumItem,
	InfoText: EnumItem,
	SensitiveText: EnumItem,
	ScriptSideWidget: EnumItem,
	ScriptBackground: EnumItem,
	ScriptText: EnumItem,
	ScriptSelectionText: EnumItem,
	ScriptSelectionBackground: EnumItem,
	ScriptFindSelectionBackground: EnumItem,
	ScriptMatchingWordSelectionBackground: EnumItem,
	ScriptOperator: EnumItem,
	ScriptNumber: EnumItem,
	ScriptString: EnumItem,
	ScriptComment: EnumItem,
	ScriptKeyword: EnumItem,
	ScriptBuiltInFunction: EnumItem,
	ScriptWarning: EnumItem,
	ScriptError: EnumItem,
	ScriptWhitespace: EnumItem,
	ScriptRuler: EnumItem,
	DocViewCodeBackground: EnumItem,
	DebuggerCurrentLine: EnumItem,
	DebuggerErrorLine: EnumItem,
	ScriptEditorCurrentLine: EnumItem,
	DiffFilePathText: EnumItem,
	DiffTextHunkInfo: EnumItem,
	DiffTextNoChange: EnumItem,
	DiffTextAddition: EnumItem,
	DiffTextDeletion: EnumItem,
	DiffTextSeparatorBackground: EnumItem,
	DiffTextNoChangeBackground: EnumItem,
	DiffTextAdditionBackground: EnumItem,
	DiffTextDeletionBackground: EnumItem,
	DiffLineNum: EnumItem,
	DiffLineNumSeparatorBackground: EnumItem,
	DiffLineNumNoChangeBackground: EnumItem,
	DiffLineNumAdditionBackground: EnumItem,
	DiffLineNumDeletionBackground: EnumItem,
	DiffFilePathBackground: EnumItem,
	DiffFilePathBorder: EnumItem,
	ChatIncomingBgColor: EnumItem,
	ChatIncomingTextColor: EnumItem,
	ChatOutgoingBgColor: EnumItem,
	ChatOutgoingTextColor: EnumItem,
	ChatModeratedMessageColor: EnumItem,
	Separator: EnumItem,
	ButtonBorder: EnumItem,
	ButtonText: EnumItem,
	InputFieldBorder: EnumItem,
	CheckedFieldBackground: EnumItem,
	CheckedFieldBorder: EnumItem,
	CheckedFieldIndicator: EnumItem,
	HeaderSection: EnumItem,
	Midlight: EnumItem,
	StatusBar: EnumItem,
	DialogButton: EnumItem,
	DialogButtonText: EnumItem,
	DialogButtonBorder: EnumItem,
	DialogMainButton: EnumItem,
	DialogMainButtonText: EnumItem,
	InfoBarWarningBackground: EnumItem,
	InfoBarWarningText: EnumItem,
	ScriptMethod: EnumItem,
	ScriptProperty: EnumItem,
	ScriptNil: EnumItem,
	ScriptBool: EnumItem,
	ScriptFunction: EnumItem,
	ScriptLocal: EnumItem,
	ScriptSelf: EnumItem,
	ScriptLuauKeyword: EnumItem,
	ScriptFunctionName: EnumItem,
	ScriptTodo: EnumItem,
	ScriptBracket: EnumItem,
	AttributeCog: EnumItem,
}
type EnumStudioStyleGuideModifier = {
	Default: EnumItem,
	Selected: EnumItem,
	Pressed: EnumItem,
	Disabled: EnumItem,
	Hover: EnumItem,
}
type EnumStyle = {
	AlternatingSupports: EnumItem,
	BridgeStyleSupports: EnumItem,
	NoSupports: EnumItem,
}
type EnumSurfaceConstraint = {
	None: EnumItem,
	Hinge: EnumItem,
	SteppingMotor: EnumItem,
	Motor: EnumItem,
}
type EnumSurfaceGuiSizingMode = {
	FixedSize: EnumItem,
	PixelsPerStud: EnumItem,
}
type EnumSurfaceType = {
	Smooth: EnumItem,
	Glue: EnumItem,
	Weld: EnumItem,
	Studs: EnumItem,
	Inlet: EnumItem,
	Universal: EnumItem,
	Hinge: EnumItem,
	Motor: EnumItem,
	SteppingMotor: EnumItem,
	SmoothNoOutlines: EnumItem,
}
type EnumSwipeDirection = {
	Right: EnumItem,
	Left: EnumItem,
	Up: EnumItem,
	Down: EnumItem,
	None: EnumItem,
}
type EnumTableMajorAxis = {
	RowMajor: EnumItem,
	ColumnMajor: EnumItem,
}
type EnumTechnology = {
	Compatibility: EnumItem,
	Voxel: EnumItem,
	ShadowMap: EnumItem,
	Legacy: EnumItem,
	Future: EnumItem,
}
type EnumTeleportMethod = {
	TeleportToSpawnByName: EnumItem,
	TeleportToPlaceInstance: EnumItem,
	TeleportToPrivateServer: EnumItem,
	TeleportPartyAsync: EnumItem,
	TeleportUnknown: EnumItem,
}
type EnumTeleportResult = {
	Success: EnumItem,
	Failure: EnumItem,
	GameNotFound: EnumItem,
	GameEnded: EnumItem,
	GameFull: EnumItem,
	Unauthorized: EnumItem,
	Flooded: EnumItem,
	IsTeleporting: EnumItem,
}
type EnumTeleportState = {
	RequestedFromServer: EnumItem,
	Started: EnumItem,
	WaitingForServer: EnumItem,
	Failed: EnumItem,
	InProgress: EnumItem,
}
type EnumTeleportType = {
	ToPlace: EnumItem,
	ToInstance: EnumItem,
	ToReservedServer: EnumItem,
}
type EnumTerrainAcquisitionMethod = {
	None: EnumItem,
	Legacy: EnumItem,
	Template: EnumItem,
	Generate: EnumItem,
	Import: EnumItem,
	Convert: EnumItem,
	EditAddTool: EnumItem,
	EditSeaLevelTool: EnumItem,
	EditReplaceTool: EnumItem,
	RegionFillTool: EnumItem,
	RegionPasteTool: EnumItem,
	Other: EnumItem,
}
type EnumTerrainFace = {
	Top: EnumItem,
	Side: EnumItem,
	Bottom: EnumItem,
}
type EnumTextChatMessageStatus = {
	Unknown: EnumItem,
	Success: EnumItem,
	Sending: EnumItem,
	TextFilterFailed: EnumItem,
	Floodchecked: EnumItem,
	InvalidPrivacySettings: EnumItem,
	InvalidTextChannelPermissions: EnumItem,
	MessageTooLong: EnumItem,
}
type EnumTextFilterContext = {
	PublicChat: EnumItem,
	PrivateChat: EnumItem,
}
type EnumTextInputType = {
	Default: EnumItem,
	NoSuggestions: EnumItem,
	Number: EnumItem,
	Email: EnumItem,
	Phone: EnumItem,
	Password: EnumItem,
	PasswordShown: EnumItem,
	Username: EnumItem,
	OneTimePassword: EnumItem,
}
type EnumTextTruncate = {
	None: EnumItem,
	AtEnd: EnumItem,
}
type EnumTextXAlignment = {
	Left: EnumItem,
	Center: EnumItem,
	Right: EnumItem,
}
type EnumTextYAlignment = {
	Top: EnumItem,
	Center: EnumItem,
	Bottom: EnumItem,
}
type EnumTextureMode = {
	Stretch: EnumItem,
	Wrap: EnumItem,
	Static: EnumItem,
}
type EnumTextureQueryType = {
	NonHumanoid: EnumItem,
	NonHumanoidOrphaned: EnumItem,
	Humanoid: EnumItem,
	HumanoidOrphaned: EnumItem,
}
type EnumThreadPoolConfig = {
	Auto: EnumItem,
	PerCore1: EnumItem,
	PerCore2: EnumItem,
	PerCore3: EnumItem,
	PerCore4: EnumItem,
	Threads1: EnumItem,
	Threads2: EnumItem,
	Threads3: EnumItem,
	Threads4: EnumItem,
	Threads8: EnumItem,
	Threads16: EnumItem,
}
type EnumThrottlingPriority = {
	Extreme: EnumItem,
	ElevatedOnServer: EnumItem,
	Default: EnumItem,
}
type EnumThumbnailSize = {
	Size48x48: EnumItem,
	Size180x180: EnumItem,
	Size420x420: EnumItem,
	Size60x60: EnumItem,
	Size100x100: EnumItem,
	Size150x150: EnumItem,
	Size352x352: EnumItem,
}
type EnumThumbnailType = {
	HeadShot: EnumItem,
	AvatarBust: EnumItem,
	AvatarThumbnail: EnumItem,
}
type EnumTickCountSampleMethod = {
	Fast: EnumItem,
	Benchmark: EnumItem,
	Precise: EnumItem,
}
type EnumTopBottom = {
	Top: EnumItem,
	Center: EnumItem,
	Bottom: EnumItem,
}
type EnumTouchCameraMovementMode = {
	Default: EnumItem,
	Follow: EnumItem,
	Classic: EnumItem,
	Orbital: EnumItem,
}
type EnumTouchMovementMode = {
	Default: EnumItem,
	Thumbstick: EnumItem,
	DPad: EnumItem,
	Thumbpad: EnumItem,
	ClickToMove: EnumItem,
	DynamicThumbstick: EnumItem,
}
type EnumTriStateBoolean = {
	Unknown: EnumItem,
	True: EnumItem,
	False: EnumItem,
}
type EnumTweenStatus = {
	Canceled: EnumItem,
	Completed: EnumItem,
}
type EnumUITheme = {
	Light: EnumItem,
	Dark: EnumItem,
}
type EnumUiMessageType = {
	UiMessageError: EnumItem,
	UiMessageInfo: EnumItem,
}
type EnumUsageContext = {
	Default: EnumItem,
	Preview: EnumItem,
}
type EnumUserCFrame = {
	Head: EnumItem,
	LeftHand: EnumItem,
	RightHand: EnumItem,
}
type EnumUserInputState = {
	Begin: EnumItem,
	Change: EnumItem,
	End: EnumItem,
	Cancel: EnumItem,
	None: EnumItem,
}
type EnumUserInputType = {
	MouseButton1: EnumItem,
	MouseButton2: EnumItem,
	MouseButton3: EnumItem,
	MouseWheel: EnumItem,
	MouseMovement: EnumItem,
	Touch: EnumItem,
	Keyboard: EnumItem,
	Focus: EnumItem,
	Accelerometer: EnumItem,
	Gyro: EnumItem,
	Gamepad1: EnumItem,
	Gamepad2: EnumItem,
	Gamepad3: EnumItem,
	Gamepad4: EnumItem,
	Gamepad5: EnumItem,
	Gamepad6: EnumItem,
	Gamepad7: EnumItem,
	Gamepad8: EnumItem,
	TextInput: EnumItem,
	InputMethod: EnumItem,
	None: EnumItem,
}
type EnumVRTouchpad = {
	Left: EnumItem,
	Right: EnumItem,
}
type EnumVRTouchpadMode = {
	Touch: EnumItem,
	VirtualThumbstick: EnumItem,
	ABXY: EnumItem,
}
type EnumVelocityConstraintMode = {
	Line: EnumItem,
	Plane: EnumItem,
	Vector: EnumItem,
}
type EnumVerticalAlignment = {
	Center: EnumItem,
	Top: EnumItem,
	Bottom: EnumItem,
}
type EnumVerticalScrollBarPosition = {
	Left: EnumItem,
	Right: EnumItem,
}
type EnumVibrationMotor = {
	Large: EnumItem,
	Small: EnumItem,
	LeftTrigger: EnumItem,
	RightTrigger: EnumItem,
	LeftHand: EnumItem,
	RightHand: EnumItem,
}
type EnumVirtualCursorMode = {
	Default: EnumItem,
	Disabled: EnumItem,
	Enabled: EnumItem,
}
type EnumVirtualInputMode = {
	Recording: EnumItem,
	Playing: EnumItem,
	None: EnumItem,
}
type EnumVoiceChatState = {
	Idle: EnumItem,
	Joining: EnumItem,
	JoiningRetry: EnumItem,
	Joined: EnumItem,
	Leaving: EnumItem,
	Ended: EnumItem,
	Failed: EnumItem,
}
type EnumWaterDirection = {
	NegX: EnumItem,
	X: EnumItem,
	NegY: EnumItem,
	Y: EnumItem,
	NegZ: EnumItem,
	Z: EnumItem,
}
type EnumWaterForce = {
	None: EnumItem,
	Small: EnumItem,
	Medium: EnumItem,
	Strong: EnumItem,
	Max: EnumItem,
}
type EnumWrapLayerDebugMode = {
	None: EnumItem,
	BoundCage: EnumItem,
	LayerCage: EnumItem,
	BoundCageAndLinks: EnumItem,
	Reference: EnumItem,
	Rbf: EnumItem,
	OuterCage: EnumItem,
	ReferenceMeshAfterMorph: EnumItem,
	HSROuterDetail: EnumItem,
	HSROuter: EnumItem,
	HSRInner: EnumItem,
	HSRInnerReverse: EnumItem,
}
type EnumWrapTargetDebugMode = {
	None: EnumItem,
	TargetCageOriginal: EnumItem,
	TargetCageCompressed: EnumItem,
	TargetCageInterface: EnumItem,
	TargetLayerCageOriginal: EnumItem,
	TargetLayerCageCompressed: EnumItem,
	TargetLayerInterface: EnumItem,
	Rbf: EnumItem,
	OuterCageDetail: EnumItem,
}
type EnumZIndexBehavior = {
	Global: EnumItem,
	Sibling: EnumItem,
}


declare Enum: {
	ABTestLoadingStatus: EnumABTestLoadingStatus,
	AccessoryType: EnumAccessoryType,
	ActionType: EnumActionType,
	ActuatorRelativeTo: EnumActuatorRelativeTo,
	ActuatorType: EnumActuatorType,
	AdornCullingMode: EnumAdornCullingMode,
	AlignType: EnumAlignType,
	AlphaMode: EnumAlphaMode,
	AnalyticsEconomyAction: EnumAnalyticsEconomyAction,
	AnalyticsLogLevel: EnumAnalyticsLogLevel,
	AnalyticsProgressionStatus: EnumAnalyticsProgressionStatus,
	AnimationPriority: EnumAnimationPriority,
	AnimatorRetargetingMode: EnumAnimatorRetargetingMode,
	AppShellActionType: EnumAppShellActionType,
	AppShellFeature: EnumAppShellFeature,
	AppUpdateStatus: EnumAppUpdateStatus,
	ApplyStrokeMode: EnumApplyStrokeMode,
	AspectType: EnumAspectType,
	AssetFetchStatus: EnumAssetFetchStatus,
	AssetType: EnumAssetType,
	AssetTypeVerification: EnumAssetTypeVerification,
	AutoIndentRule: EnumAutoIndentRule,
	AutomaticSize: EnumAutomaticSize,
	AvatarAssetType: EnumAvatarAssetType,
	AvatarContextMenuOption: EnumAvatarContextMenuOption,
	AvatarItemType: EnumAvatarItemType,
	AvatarPromptResult: EnumAvatarPromptResult,
	Axis: EnumAxis,
	BinType: EnumBinType,
	BodyPart: EnumBodyPart,
	BodyPartR15: EnumBodyPartR15,
	BorderMode: EnumBorderMode,
	BreakReason: EnumBreakReason,
	BreakpointRemoveReason: EnumBreakpointRemoveReason,
	BulkMoveMode: EnumBulkMoveMode,
	BundleType: EnumBundleType,
	Button: EnumButton,
	ButtonStyle: EnumButtonStyle,
	CageType: EnumCageType,
	CameraMode: EnumCameraMode,
	CameraPanMode: EnumCameraPanMode,
	CameraType: EnumCameraType,
	CatalogCategoryFilter: EnumCatalogCategoryFilter,
	CatalogSortType: EnumCatalogSortType,
	CellBlock: EnumCellBlock,
	CellMaterial: EnumCellMaterial,
	CellOrientation: EnumCellOrientation,
	CenterDialogType: EnumCenterDialogType,
	ChatCallbackType: EnumChatCallbackType,
	ChatColor: EnumChatColor,
	ChatMode: EnumChatMode,
	ChatPrivacyMode: EnumChatPrivacyMode,
	ChatStyle: EnumChatStyle,
	ChatVersion: EnumChatVersion,
	ClientAnimatorThrottlingMode: EnumClientAnimatorThrottlingMode,
	CollisionFidelity: EnumCollisionFidelity,
	CommandPermission: EnumCommandPermission,
	ComputerCameraMovementMode: EnumComputerCameraMovementMode,
	ComputerMovementMode: EnumComputerMovementMode,
	ConnectionError: EnumConnectionError,
	ConnectionState: EnumConnectionState,
	ContextActionPriority: EnumContextActionPriority,
	ContextActionResult: EnumContextActionResult,
	ControlMode: EnumControlMode,
	CoreGuiType: EnumCoreGuiType,
	CreateOutfitFailure: EnumCreateOutfitFailure,
	CreatorType: EnumCreatorType,
	CurrencyType: EnumCurrencyType,
	CustomCameraMode: EnumCustomCameraMode,
	DataStoreRequestType: EnumDataStoreRequestType,
	DebuggerEndReason: EnumDebuggerEndReason,
	DebuggerExceptionBreakMode: EnumDebuggerExceptionBreakMode,
	DebuggerFrameType: EnumDebuggerFrameType,
	DebuggerPauseReason: EnumDebuggerPauseReason,
	DebuggerStatus: EnumDebuggerStatus,
	DevCameraOcclusionMode: EnumDevCameraOcclusionMode,
	DevComputerCameraMovementMode: EnumDevComputerCameraMovementMode,
	DevComputerMovementMode: EnumDevComputerMovementMode,
	DevTouchCameraMovementMode: EnumDevTouchCameraMovementMode,
	DevTouchMovementMode: EnumDevTouchMovementMode,
	DeveloperMemoryTag: EnumDeveloperMemoryTag,
	DeviceType: EnumDeviceType,
	DialogBehaviorType: EnumDialogBehaviorType,
	DialogPurpose: EnumDialogPurpose,
	DialogTone: EnumDialogTone,
	DominantAxis: EnumDominantAxis,
	DraftStatusCode: EnumDraftStatusCode,
	DraggerCoordinateSpace: EnumDraggerCoordinateSpace,
	DraggerMovementMode: EnumDraggerMovementMode,
	EasingDirection: EnumEasingDirection,
	EasingStyle: EnumEasingStyle,
	ElasticBehavior: EnumElasticBehavior,
	EnviromentalPhysicsThrottle: EnumEnviromentalPhysicsThrottle,
	ExplosionType: EnumExplosionType,
	FieldOfViewMode: EnumFieldOfViewMode,
	FillDirection: EnumFillDirection,
	FilterResult: EnumFilterResult,
	Font: EnumFont,
	FontSize: EnumFontSize,
	FontStyle: EnumFontStyle,
	FontWeight: EnumFontWeight,
	FormFactor: EnumFormFactor,
	FrameStyle: EnumFrameStyle,
	FramerateManagerMode: EnumFramerateManagerMode,
	FriendRequestEvent: EnumFriendRequestEvent,
	FriendStatus: EnumFriendStatus,
	FunctionalTestResult: EnumFunctionalTestResult,
	GameAvatarType: EnumGameAvatarType,
	GearGenreSetting: EnumGearGenreSetting,
	GearType: EnumGearType,
	Genre: EnumGenre,
	GraphicsMode: EnumGraphicsMode,
	HandlesStyle: EnumHandlesStyle,
	HighlightDepthMode: EnumHighlightDepthMode,
	HorizontalAlignment: EnumHorizontalAlignment,
	HoverAnimateSpeed: EnumHoverAnimateSpeed,
	HttpCachePolicy: EnumHttpCachePolicy,
	HttpContentType: EnumHttpContentType,
	HttpError: EnumHttpError,
	HttpRequestType: EnumHttpRequestType,
	HumanoidCollisionType: EnumHumanoidCollisionType,
	HumanoidDisplayDistanceType: EnumHumanoidDisplayDistanceType,
	HumanoidHealthDisplayType: EnumHumanoidHealthDisplayType,
	HumanoidOnlySetCollisionsOnStateChange: EnumHumanoidOnlySetCollisionsOnStateChange,
	HumanoidRigType: EnumHumanoidRigType,
	HumanoidStateType: EnumHumanoidStateType,
	IKCollisionsMode: EnumIKCollisionsMode,
	IXPLoadingStatus: EnumIXPLoadingStatus,
	InOut: EnumInOut,
	InfoType: EnumInfoType,
	InitialDockState: EnumInitialDockState,
	InputType: EnumInputType,
	InterpolationThrottlingMode: EnumInterpolationThrottlingMode,
	JointCreationMode: EnumJointCreationMode,
	KeyCode: EnumKeyCode,
	KeyInterpolationMode: EnumKeyInterpolationMode,
	KeywordFilterType: EnumKeywordFilterType,
	LSPMethodType: EnumLSPMethodType,
	Language: EnumLanguage,
	LeftRight: EnumLeftRight,
	LevelOfDetailSetting: EnumLevelOfDetailSetting,
	Limb: EnumLimb,
	LineJoinMode: EnumLineJoinMode,
	ListDisplayMode: EnumListDisplayMode,
	ListenerType: EnumListenerType,
	LoadCharacterLayeredClothing: EnumLoadCharacterLayeredClothing,
	Material: EnumMaterial,
	MaterialPattern: EnumMaterialPattern,
	MembershipType: EnumMembershipType,
	MeshPartDetailLevel: EnumMeshPartDetailLevel,
	MeshPartHeadsAndAccessories: EnumMeshPartHeadsAndAccessories,
	MeshScaleUnit: EnumMeshScaleUnit,
	MeshType: EnumMeshType,
	MessageType: EnumMessageType,
	ModelLevelOfDetail: EnumModelLevelOfDetail,
	ModifierKey: EnumModifierKey,
	MouseBehavior: EnumMouseBehavior,
	MoveState: EnumMoveState,
	NameOcclusion: EnumNameOcclusion,
	NetworkOwnership: EnumNetworkOwnership,
	NewAnimationRuntimeSetting: EnumNewAnimationRuntimeSetting,
	NormalId: EnumNormalId,
	OrientationAlignmentMode: EnumOrientationAlignmentMode,
	OutfitSource: EnumOutfitSource,
	OutputLayoutMode: EnumOutputLayoutMode,
	OverrideMouseIconBehavior: EnumOverrideMouseIconBehavior,
	PackagePermission: EnumPackagePermission,
	PartType: EnumPartType,
	ParticleEmitterShape: EnumParticleEmitterShape,
	ParticleEmitterShapeInOut: EnumParticleEmitterShapeInOut,
	ParticleEmitterShapeStyle: EnumParticleEmitterShapeStyle,
	ParticleFlipbookLayout: EnumParticleFlipbookLayout,
	ParticleFlipbookMode: EnumParticleFlipbookMode,
	ParticleOrientation: EnumParticleOrientation,
	PathStatus: EnumPathStatus,
	PathWaypointAction: EnumPathWaypointAction,
	PermissionLevelShown: EnumPermissionLevelShown,
	PhysicsSimulationRate: EnumPhysicsSimulationRate,
	PhysicsSteppingMethod: EnumPhysicsSteppingMethod,
	Platform: EnumPlatform,
	PlaybackState: EnumPlaybackState,
	PlayerActions: EnumPlayerActions,
	PlayerChatType: EnumPlayerChatType,
	PoseEasingDirection: EnumPoseEasingDirection,
	PoseEasingStyle: EnumPoseEasingStyle,
	PositionAlignmentMode: EnumPositionAlignmentMode,
	PrivilegeType: EnumPrivilegeType,
	ProductLocationRestriction: EnumProductLocationRestriction,
	ProductPurchaseDecision: EnumProductPurchaseDecision,
	PropertyStatus: EnumPropertyStatus,
	ProximityPromptExclusivity: EnumProximityPromptExclusivity,
	ProximityPromptInputType: EnumProximityPromptInputType,
	ProximityPromptStyle: EnumProximityPromptStyle,
	QualityLevel: EnumQualityLevel,
	R15CollisionType: EnumR15CollisionType,
	RaycastFilterType: EnumRaycastFilterType,
	RenderFidelity: EnumRenderFidelity,
	RenderPriority: EnumRenderPriority,
	RenderingTestComparisonMethod: EnumRenderingTestComparisonMethod,
	ReplicateInstanceDestroySetting: EnumReplicateInstanceDestroySetting,
	ResamplerMode: EnumResamplerMode,
	ReturnKeyType: EnumReturnKeyType,
	ReverbType: EnumReverbType,
	RibbonTool: EnumRibbonTool,
	RigType: EnumRigType,
	RollOffMode: EnumRollOffMode,
	RotationOrder: EnumRotationOrder,
	RotationType: EnumRotationType,
	RuntimeUndoBehavior: EnumRuntimeUndoBehavior,
	SaveFilter: EnumSaveFilter,
	SavedQualitySetting: EnumSavedQualitySetting,
	ScaleType: EnumScaleType,
	ScreenOrientation: EnumScreenOrientation,
	ScrollBarInset: EnumScrollBarInset,
	ScrollingDirection: EnumScrollingDirection,
	SelectionBehavior: EnumSelectionBehavior,
	ServerAudioBehavior: EnumServerAudioBehavior,
	SignalBehavior: EnumSignalBehavior,
	SizeConstraint: EnumSizeConstraint,
	SortDirection: EnumSortDirection,
	SortOrder: EnumSortOrder,
	SpecialKey: EnumSpecialKey,
	StartCorner: EnumStartCorner,
	Status: EnumStatus,
	StreamOutBehavior: EnumStreamOutBehavior,
	StreamingPauseMode: EnumStreamingPauseMode,
	StudioCloseMode: EnumStudioCloseMode,
	StudioDataModelType: EnumStudioDataModelType,
	StudioScriptEditorColorCategories: EnumStudioScriptEditorColorCategories,
	StudioScriptEditorColorPresets: EnumStudioScriptEditorColorPresets,
	StudioStyleGuideColor: EnumStudioStyleGuideColor,
	StudioStyleGuideModifier: EnumStudioStyleGuideModifier,
	Style: EnumStyle,
	SurfaceConstraint: EnumSurfaceConstraint,
	SurfaceGuiSizingMode: EnumSurfaceGuiSizingMode,
	SurfaceType: EnumSurfaceType,
	SwipeDirection: EnumSwipeDirection,
	TableMajorAxis: EnumTableMajorAxis,
	Technology: EnumTechnology,
	TeleportMethod: EnumTeleportMethod,
	TeleportResult: EnumTeleportResult,
	TeleportState: EnumTeleportState,
	TeleportType: EnumTeleportType,
	TerrainAcquisitionMethod: EnumTerrainAcquisitionMethod,
	TerrainFace: EnumTerrainFace,
	TextChatMessageStatus: EnumTextChatMessageStatus,
	TextFilterContext: EnumTextFilterContext,
	TextInputType: EnumTextInputType,
	TextTruncate: EnumTextTruncate,
	TextXAlignment: EnumTextXAlignment,
	TextYAlignment: EnumTextYAlignment,
	TextureMode: EnumTextureMode,
	TextureQueryType: EnumTextureQueryType,
	ThreadPoolConfig: EnumThreadPoolConfig,
	ThrottlingPriority: EnumThrottlingPriority,
	ThumbnailSize: EnumThumbnailSize,
	ThumbnailType: EnumThumbnailType,
	TickCountSampleMethod: EnumTickCountSampleMethod,
	TopBottom: EnumTopBottom,
	TouchCameraMovementMode: EnumTouchCameraMovementMode,
	TouchMovementMode: EnumTouchMovementMode,
	TriStateBoolean: EnumTriStateBoolean,
	TweenStatus: EnumTweenStatus,
	UITheme: EnumUITheme,
	UiMessageType: EnumUiMessageType,
	UsageContext: EnumUsageContext,
	UserCFrame: EnumUserCFrame,
	UserInputState: EnumUserInputState,
	UserInputType: EnumUserInputType,
	VRTouchpad: EnumVRTouchpad,
	VRTouchpadMode: EnumVRTouchpadMode,
	VelocityConstraintMode: EnumVelocityConstraintMode,
	VerticalAlignment: EnumVerticalAlignment,
	VerticalScrollBarPosition: EnumVerticalScrollBarPosition,
	VibrationMotor: EnumVibrationMotor,
	VirtualCursorMode: EnumVirtualCursorMode,
	VirtualInputMode: EnumVirtualInputMode,
	VoiceChatState: EnumVoiceChatState,
	WaterDirection: EnumWaterDirection,
	WaterForce: EnumWaterForce,
	WrapLayerDebugMode: EnumWrapLayerDebugMode,
	WrapTargetDebugMode: EnumWrapTargetDebugMode,
	ZIndexBehavior: EnumZIndexBehavior,
}

type Ray = any
type NumberRange = any
type PathWaypoint = any
type BrickColor = any
type Vector2 = any
type Color3 = any
type UDim = any
type PhysicalProperties = any
type Axes = any
type Region3 = any
type UDim2 = any
type CFrame = any
type Faces = any
type EnumItem = any
type Enum = any
type Enums = any
type Rect = any
type Vector3 = any
type Random = any
type TweenInfo = any
type RBXScriptConnection = any
type DateTime = any
type NumberSequence = any
type ColorSequence = any
type NumberSequenceKeypoint = any
type ColorSequenceKeypoint = any
type RaycastParams = any
type OverlapParams = any
type RaycastResult = any
type DockWidgetPluginGuiInfo = any
type Vector2int16 = any
type Vector3int16 = any
type Region3int16 = any
type CatalogSearchParams = any
type Font = any
declare class Ray
	function ClosestPoint(self, point: Vector3): Vector3
	Origin: Vector3
	Unit: Ray
	function Distance(self, point: Vector3): number
	Direction: Vector3
end

declare class NumberRange
	Max: number
	Min: number
end

declare class PathWaypoint
	Position: Vector3
	Action: EnumPathWaypointAction
end

declare class BrickColor
	r: number
	Name: string
	Number: number
	Color: Color3
	b: number
	g: number
end

declare class Vector2
	Y: number
	X: number
	Unit: Vector2
	Magnitude: number
	function Lerp(self, v: Vector2, alpha: number): Vector2
	function Cross(self, other: Vector2): number
	function Dot(self, v: Vector2): number
	y: number
	x: number
	unit: Vector2
	magnitude: number
	function lerp(self, v: Vector2, alpha: number): Vector2
	function __add(self, other: Vector2): Vector2
	function __sub(self, other: Vector2): Vector2
	function __mul(self, other: Vector2 | number): Vector2
	function __div(self, other: Vector2 | number): Vector2
	function __unm(self): Vector2
end

declare class Color3
	R: number
	B: number
	G: number
	function ToHSV(self): (number, number, number)
	function Lerp(self, color: Color3, alpha: number): Color3
	r: number
	g: number
	b: number
	function lerp(self, color: Color3, alpha: number): Color3
end

declare class UDim
	Scale: number
	Offset: number
	function __add(self, other: UDim): UDim
	function __sub(self, other: UDim): UDim
	function __unm(self): UDim
end

declare class PhysicalProperties
	ElasticityWeight: number
	Elasticity: number
	Density: number
	FrictionWeight: number
	Friction: number
end

declare class Axes
	Z: boolean
	Y: boolean
	Top: boolean
	Left: boolean
	X: boolean
	Right: boolean
	Bottom: boolean
	Front: boolean
	Back: boolean
end

declare class Region3
	CFrame: CFrame
	function ExpandToGrid(self, Region: number): Region3
	Size: Vector3
end

declare class UDim2
	Y: UDim
	function Lerp(self, goal: UDim2, alpha: number): UDim2
	Height: UDim
	X: UDim
	Width: UDim
	function __add(self, other: UDim2): UDim2
	function __sub(self, other: UDim2): UDim2
	function __unm(self): UDim2
end

declare class CFrame
	Z: number
	Y: number
	X: number
	function PointToObjectSpace(self, v3: Vector3): Vector3
	YVector: Vector3
	XVector: Vector3
	ZVector: Vector3
	Position: Vector3
	RightVector: Vector3
	function VectorToWorldSpace(self, v3: Vector3): Vector3
	function ToAxisAngle(self): (Vector3, number)
	function ToOrientation(self): (number, number, number)
	function ToEulerAnglesYXZ(self): (number, number, number)
	function Inverse(self): CFrame
	UpVector: Vector3
	function Lerp(self, goal: CFrame, alpha: number): CFrame
	function GetComponents(self): (number, number, number, number, number, number, number, number, number, number, number, number)
	function VectorToObjectSpace(self, v3: Vector3): Vector3
	LookVector: Vector3
	function PointToWorldSpace(self, v3: Vector3): Vector3
	function ToWorldSpace(self, cf: CFrame): CFrame
	function ToObjectSpace(self, cf: CFrame): CFrame
	function ToEulerAnglesXYZ(self): (number, number, number)
	function Orthonormalize(self): CFrame
	z: number
	y: number
	x: number
	function pointToObjectSpace(self, v3: Vector3): Vector3
	p: Vector3
	rightVector: Vector3
	function vectorToWorldSpace(self, v3: Vector3): Vector3
	function toAxisAngle(self): (Vector3, number)
	function inverse(self): CFrame
	upVector: Vector3
	function lerp(self, goal: CFrame, alpha: number): CFrame
	function vectorToObjectSpace(self, v3: Vector3): Vector3
	lookVector: Vector3
	function pointToWorldSpace(self, v3: Vector3): Vector3
	function toWorldSpace(self, cf: CFrame): CFrame
	function toObjectSpace(self, cf: CFrame): CFrame
	function toEulerAnglesXYZ(self): (number, number, number)
	function components(self): (number, number, number, number, number, number, number, number, number, number, number, number)
	function __add(self, other: Vector3): CFrame
	function __sub(self, other: Vector3): CFrame
	function __mul(self, other: CFrame): CFrame
	function __mul(self, other: Vector3): Vector3
end

declare class Faces
	Bottom: boolean
	Top: boolean
	Front: boolean
	Left: boolean
	Right: boolean
	Back: boolean
end

declare class EnumItem
	function IsA(self, enumName: string): boolean
	EnumType: Enum
	Value: number
	Name: string
end

declare class Enum
	function GetEnumItems(self): { any }
end

declare class Enums
	function GetEnums(self): { any }
end

declare class Rect
	Max: Vector2
	Min: Vector2
	Height: number
	Width: number
end

declare class Vector3
	Z: number
	Y: number
	X: number
	Unit: Vector3
	Magnitude: number
	function Dot(self, other: Vector3): number
	function Lerp(self, goal: Vector3, alpha: number): Vector3
	function Cross(self, other: Vector3): Vector3
	function FuzzyEq(self, other: Vector3, epsilon: number): boolean
	function lerp(self, goal: Vector3, alpha: number): Vector3
	z: number
	y: number
	x: number
	unit: Vector3
	magnitude: number
	function __add(self, other: Vector3): Vector3
	function __sub(self, other: Vector3): Vector3
	function __mul(self, other: Vector3 | number): Vector3
	function __div(self, other: Vector3 | number): Vector3
	function __unm(self): Vector3
end

declare class Random
	function NextInteger(self, min: number, max: number): number
	function NextNumber(self): number
	function NextNumber(self, min: number, max: number): number
	function Clone(self): Random
end

declare class TweenInfo
	DelayTime: number
	Time: number
	EasingDirection: EnumEasingDirection
	RepeatCount: number
	EasingStyle: EnumEasingStyle
	Reverses: boolean
end

declare class RBXScriptConnection
	function Disconnect(self): nil
	Connected: boolean
	function disconnect(self): nil
	connected: boolean
end

declare class DateTime
	UnixTimestamp: number
	UnixTimestampMillis: number
	function ToUniversalTime(self): { any }
	function ToLocalTime(self): { any }
	function ToIsoDate(self): string
	function FormatUniversalTime(self, format: string, locale: string): string
	function FormatLocalTime(self, format: string, locale: string): string
end

declare class NumberSequence
	Keypoints: { any }
end

declare class ColorSequence
	Keypoints: { any }
end

declare class NumberSequenceKeypoint
	Envelope: number
	Time: number
	Value: number
end

declare class ColorSequenceKeypoint
	Time: number
	Value: Color3
end

declare class RaycastParams
	FilterDescendantsInstances: { Instance }
	FilterType: EnumRaycastFilterType
	IgnoreWater: boolean
	CollisionGroup: string
end

declare class OverlapParams
	FilterDescendantsInstances: { Instance }
	FilterType: EnumRaycastFilterType
	IgnoreWater: boolean
	CollisionGroup: string
	MaxParts: number
end

declare class RaycastResult
	Instance: Instance
	Position: Vector3
	Material: EnumMaterial
	Normal: Vector3
end

declare class DockWidgetPluginGuiInfo
	InitialEnabled: boolean
	InitialEnabledShouldOverrideRestore: boolean
	FloatingXSize: number
	FloatingYSize: number
	MinWidth: number
	MinHeight: number
end

declare class Vector2int16
	X: number
	Y: number
	function __add(self, other: Vector2int16): Vector2int16
	function __sub(self, other: Vector2int16): Vector2int16
	function __mul(self, other: Vector2int16 | number): Vector2int16
	function __div(self, other: Vector2int16 | number): Vector2int16
	function __unm(self): Vector2int16
end

declare class Vector3int16
	X: number
	Y: number
	Z: number
	function __add(self, other: Vector3int16): Vector3int16
	function __sub(self, other: Vector3int16): Vector3int16
	function __mul(self, other: Vector3int16 | number): Vector3int16
	function __div(self, other: Vector3int16 | number): Vector3int16
	function __unm(self): Vector3int16
end

declare class Region3int16
	Min: Vector3int16
	Max: Vector3int16
end

declare class CatalogSearchParams
	SearchKeyword: string
	MinPrice: number
	MaxPrice: number
	SortType: EnumCatalogSortType
	CategoryFilter: EnumCatalogCategoryFilter
	BundleType: { any }
	AssetTypes: { any }
end

declare class Font
	Family: string
	Bold: boolean
	Weight: EnumFontWeight
	Style: EnumFontStyle
end

type Instance = any
type ABTestService = any
type Accoutrement = any
type Accessory = any
type Hat = any
type AdService = any
type AdvancedDragger = any
type AnalyticsService = any
type Animation = any
type AnimationClip = any
type CurveAnimation = any
type KeyframeSequence = any
type AnimationClipProvider = any
type AnimationController = any
type AnimationFromVideoCreatorService = any
type AnimationFromVideoCreatorStudioService = any
type AnimationRigData = any
type AnimationTrack = any
type Animator = any
type AppUpdateService = any
type AssetCounterService = any
type AssetDeliveryProxy = any
type AssetImportService = any
type AssetManagerService = any
type AssetService = any
type Atmosphere = any
type Attachment = any
type Bone = any
type AvatarEditorService = any
type AvatarImportService = any
type Backpack = any
type BackpackItem = any
type HopperBin = any
type Tool = any
type Flag = any
type BadgeService = any
type BasePlayerGui = any
type CoreGui = any
type PlayerGui = any
type StarterGui = any
type BaseWrap = any
type WrapLayer = any
type WrapTarget = any
type Beam = any
type BindableEvent = any
type BindableFunction = any
type BodyMover = any
type BodyAngularVelocity = any
type BodyForce = any
type BodyGyro = any
type BodyPosition = any
type BodyThrust = any
type BodyVelocity = any
type RocketPropulsion = any
type Breakpoint = any
type BreakpointManager = any
type BrowserService = any
type BulkImportService = any
type CacheableContentProvider = any
type HSRDataContentProvider = any
type MeshContentProvider = any
type SolidModelContentProvider = any
type CalloutService = any
type Camera = any
type ChangeHistoryService = any
type CharacterAppearance = any
type BodyColors = any
type CharacterMesh = any
type Clothing = any
type Pants = any
type Shirt = any
type ShirtGraphic = any
type Skin = any
type Chat = any
type ClickDetector = any
type Clouds = any
type ClusterPacketCache = any
type CollectionService = any
type CommandInstance = any
type CommandService = any
type Configuration = any
type ConfigureServerService = any
type Constraint = any
type AlignOrientation = any
type AlignPosition = any
type AngularVelocity = any
type BallSocketConstraint = any
type HingeConstraint = any
type LineForce = any
type LinearVelocity = any
type Plane = any
type RigidConstraint = any
type RodConstraint = any
type RopeConstraint = any
type SlidingBallConstraint = any
type CylindricalConstraint = any
type PrismaticConstraint = any
type SpringConstraint = any
type Torque = any
type TorsionSpringConstraint = any
type UniversalConstraint = any
type VectorForce = any
type ContentProvider = any
type ContextActionService = any
type Controller = any
type HumanoidController = any
type SkateboardController = any
type VehicleController = any
type ControllerService = any
type CookiesService = any
type CorePackages = any
type CoreScriptSyncService = any
type CrossDMScriptChangeListener = any
type CustomEvent = any
type CustomEventReceiver = any
type DataModelMesh = any
type BevelMesh = any
type BlockMesh = any
type CylinderMesh = any
type FileMesh = any
type SpecialMesh = any
type DataModelPatchService = any
type DataModelSession = any
type DataStoreIncrementOptions = any
type DataStoreInfo = any
type DataStoreKey = any
type DataStoreKeyInfo = any
type DataStoreObjectVersionInfo = any
type DataStoreOptions = any
type DataStoreService = any
type DataStoreSetOptions = any
type Debris = any
type DebugSettings = any
type DebuggablePluginWatcher = any
type DebuggerBreakpoint = any
type DebuggerConnection = any
type LocalDebuggerConnection = any
type DebuggerConnectionManager = any
type DebuggerLuaResponse = any
type DebuggerManager = any
type DebuggerUIService = any
type DebuggerVariable = any
type DebuggerWatch = any
type Dialog = any
type DialogChoice = any
type DraftsService = any
type Dragger = any
type DraggerService = any
type EulerRotationCurve = any
type EventIngestService = any
type Explosion = any
type FaceControls = any
type FaceInstance = any
type Decal = any
type Texture = any
type Feature = any
type Hole = any
type MotorFeature = any
type File = any
type Fire = any
type FlagStandService = any
type FloatCurve = any
type FlyweightService = any
type CSGDictionaryService = any
type NonReplicatedCSGDictionaryService = any
type Folder = any
type ForceField = any
type FriendService = any
type FunctionalTest = any
type GamePassService = any
type GameSettings = any
type GamepadService = any
type Geometry = any
type GlobalDataStore = any
type DataStore = any
type OrderedDataStore = any
type GoogleAnalyticsConfiguration = any
type GroupService = any
type GuiBase = any
type GuiBase2d = any
type GuiObject = any
type CanvasGroup = any
type Frame = any
type GuiButton = any
type ImageButton = any
type TextButton = any
type GuiLabel = any
type ImageLabel = any
type TextLabel = any
type ScrollingFrame = any
type TextBox = any
type VideoFrame = any
type ViewportFrame = any
type LayerCollector = any
type BillboardGui = any
type PluginGui = any
type DockWidgetPluginGui = any
type QWidgetPluginGui = any
type ScreenGui = any
type GuiMain = any
type SurfaceGui = any
type GuiBase3d = any
type FloorWire = any
type InstanceAdornment = any
type SelectionBox = any
type PVAdornment = any
type HandleAdornment = any
type BoxHandleAdornment = any
type ConeHandleAdornment = any
type CylinderHandleAdornment = any
type ImageHandleAdornment = any
type LineHandleAdornment = any
type SphereHandleAdornment = any
type ParabolaAdornment = any
type SelectionSphere = any
type PartAdornment = any
type HandlesBase = any
type ArcHandles = any
type Handles = any
type SurfaceSelection = any
type SelectionLasso = any
type SelectionPartLasso = any
type SelectionPointLasso = any
type GuiService = any
type GuidRegistryService = any
type HapticService = any
type HeightmapImporterService = any
type HiddenSurfaceRemovalAsset = any
type Highlight = any
type Hopper = any
type HttpRbxApiService = any
type HttpRequest = any
type HttpService = any
type Humanoid = any
type HumanoidDescription = any
type ILegacyStudioBridge = any
type LegacyStudioBridge = any
type IXPService = any
type ImporterBaseSettings = any
type ImporterAnimationSettings = any
type ImporterGroupSettings = any
type ImporterJointSettings = any
type ImporterMaterialSettings = any
type ImporterMeshSettings = any
type ImporterRootSettings = any
type ImporterTextureSettings = any
type IncrementalPatchBuilder = any
type InputObject = any
type InsertService = any
type JointInstance = any
type DynamicRotate = any
type RotateP = any
type RotateV = any
type Glue = any
type ManualSurfaceJointInstance = any
type ManualGlue = any
type ManualWeld = any
type Motor = any
type Motor6D = any
type Rotate = any
type Snap = any
type VelocityMotor = any
type Weld = any
type JointsService = any
type KeyboardService = any
type Keyframe = any
type KeyframeMarker = any
type KeyframeSequenceProvider = any
type LSPService = any
type LanguageService = any
type Light = any
type PointLight = any
type SpotLight = any
type SurfaceLight = any
type Lighting = any
type LocalStorageService = any
type AppStorageService = any
type UserStorageService = any
type LocalizationService = any
type LocalizationTable = any
type LodDataEntity = any
type LodDataService = any
type LogService = any
type LoginService = any
type LuaSettings = any
type LuaSourceContainer = any
type BaseScript = any
type CoreScript = any
type Script = any
type LocalScript = any
type ModuleScript = any
type LuaWebService = any
type LuauScriptAnalyzerService = any
type MarkerCurve = any
type MarketplaceService = any
type MaterialService = any
type MaterialVariant = any
type MemStorageConnection = any
type MemStorageService = any
type MemoryStoreQueue = any
type MemoryStoreService = any
type MemoryStoreSortedMap = any
type Message = any
type Hint = any
type MessageBusConnection = any
type MessageBusService = any
type MessagingService = any
type MetaBreakpoint = any
type MetaBreakpointContext = any
type Mouse = any
type PlayerMouse = any
type PluginMouse = any
type MouseService = any
type MultipleDocumentInterfaceInstance = any
type NetworkMarker = any
type NetworkPeer = any
type NetworkClient = any
type NetworkServer = any
type NetworkReplicator = any
type ClientReplicator = any
type ServerReplicator = any
type NetworkSettings = any
type NoCollisionConstraint = any
type NotificationService = any
type PVInstance = any
type BasePart = any
type CornerWedgePart = any
type FormFactorPart = any
type Part = any
type FlagStand = any
type Platform = any
type Seat = any
type SkateboardPlatform = any
type SpawnLocation = any
type WedgePart = any
type Terrain = any
type TriangleMeshPart = any
type MeshPart = any
type PartOperation = any
type NegateOperation = any
type UnionOperation = any
type TrussPart = any
type VehicleSeat = any
type Model = any
type Actor = any
type Status = any
type WorldRoot = any
type Workspace = any
type WorldModel = any
type PackageLink = any
type PackageService = any
type PackageUIService = any
type Pages = any
type CatalogPages = any
type DataStoreKeyPages = any
type DataStoreListingPages = any
type DataStorePages = any
type DataStoreVersionPages = any
type FriendPages = any
type InventoryPages = any
type EmotesPages = any
type OutfitPages = any
type StandardPages = any
type PartOperationAsset = any
type ParticleEmitter = any
type Path = any
type PathfindingLink = any
type PathfindingModifier = any
type PathfindingService = any
type PausedState = any
type PausedStateBreakpoint = any
type PausedStateException = any
type PermissionsService = any
type PhysicsService = any
type PhysicsSettings = any
type Player = any
type PlayerEmulatorService = any
type PlayerScripts = any
type Players = any
type Plugin = any
type PluginAction = any
type PluginDebugService = any
type PluginDragEvent = any
type PluginGuiService = any
type PluginManager = any
type PluginManagerInterface = any
type PluginMenu = any
type PluginPolicyService = any
type PluginToolbar = any
type PluginToolbarButton = any
type PointsService = any
type PolicyService = any
type PoseBase = any
type NumberPose = any
type Pose = any
type PostEffect = any
type BloomEffect = any
type BlurEffect = any
type ColorCorrectionEffect = any
type DepthOfFieldEffect = any
type SunRaysEffect = any
type ProcessInstancePhysicsService = any
type ProximityPrompt = any
type ProximityPromptService = any
type PublishService = any
type RbxAnalyticsService = any
type ReflectionMetadata = any
type ReflectionMetadataCallbacks = any
type ReflectionMetadataClasses = any
type ReflectionMetadataEnums = any
type ReflectionMetadataEvents = any
type ReflectionMetadataFunctions = any
type ReflectionMetadataItem = any
type ReflectionMetadataClass = any
type ReflectionMetadataEnum = any
type ReflectionMetadataEnumItem = any
type ReflectionMetadataMember = any
type ReflectionMetadataProperties = any
type ReflectionMetadataYieldFunctions = any
type RemoteDebuggerServer = any
type RemoteEvent = any
type RemoteFunction = any
type RenderSettings = any
type RenderingTest = any
type ReplicatedFirst = any
type ReplicatedScriptService = any
type ReplicatedStorage = any
type RobloxPluginGuiService = any
type RobloxReplicatedStorage = any
type RotationCurve = any
type RunService = any
type RuntimeScriptService = any
type ScriptChangeService = any
type ScriptCloneWatcher = any
type ScriptCloneWatcherHelper = any
type ScriptContext = any
type ScriptDebugger = any
type ScriptRegistrationService = any
type ScriptService = any
type Selection = any
type ServerScriptService = any
type ServerStorage = any
type ServiceProvider = any
type DataModel = any
type GenericSettings = any
type AnalysticsSettings = any
type GlobalSettings = any
type UserSettings = any
type SessionService = any
type Sky = any
type Smoke = any
type SocialService = any
type Sound = any
type SoundEffect = any
type ChorusSoundEffect = any
type CompressorSoundEffect = any
type CustomDspSoundEffect = any
type ChannelSelectorSoundEffect = any
type DistortionSoundEffect = any
type EchoSoundEffect = any
type EqualizerSoundEffect = any
type FlangeSoundEffect = any
type PitchShiftSoundEffect = any
type ReverbSoundEffect = any
type TremoloSoundEffect = any
type SoundGroup = any
type SoundService = any
type Sparkles = any
type SpawnerService = any
type Speaker = any
type StackFrame = any
type StandalonePluginScripts = any
type StarterGear = any
type StarterPack = any
type StarterPlayer = any
type StarterPlayerScripts = any
type StarterCharacterScripts = any
type Stats = any
type StatsItem = any
type RunningAverageItemDouble = any
type RunningAverageItemInt = any
type RunningAverageTimeIntervalItem = any
type TotalCountTimeIntervalItem = any
type StopWatchReporter = any
type Studio = any
type StudioAssetService = any
type StudioData = any
type StudioDeviceEmulatorService = any
type StudioHighDpiService = any
type StudioPublishService = any
type StudioScriptDebugEventListener = any
type StudioService = any
type StudioTheme = any
type SurfaceAppearance = any
type TaskScheduler = any
type Team = any
type Teams = any
type TeleportAsyncResult = any
type TeleportOptions = any
type TeleportService = any
type TemporaryCageMeshProvider = any
type TemporaryScriptService = any
type TerrainDetail = any
type TerrainRegion = any
type TestService = any
type TextBoxService = any
type TextChannel = any
type TextChatCommand = any
type TextChatConfigurations = any
type ChatInputBarConfiguration = any
type ChatWindowConfiguration = any
type TextChatMessage = any
type TextChatMessageProperties = any
type TextChatService = any
type TextFilterResult = any
type TextService = any
type TextSource = any
type ThirdPartyUserService = any
type ThreadState = any
type TimerService = any
type ToastNotificationService = any
type ToolboxService = any
type TouchInputService = any
type TouchTransmitter = any
type TracerService = any
type Trail = any
type Translator = any
type TweenBase = any
type Tween = any
type TweenService = any
type UGCValidationService = any
type UIBase = any
type UIComponent = any
type UIConstraint = any
type UIAspectRatioConstraint = any
type UISizeConstraint = any
type UITextSizeConstraint = any
type UICorner = any
type UIGradient = any
type UILayout = any
type UIGridStyleLayout = any
type UIGridLayout = any
type UIListLayout = any
type UIPageLayout = any
type UITableLayout = any
type UIPadding = any
type UIScale = any
type UIStroke = any
type UnvalidatedAssetService = any
type UserGameSettings = any
type UserInputService = any
type UserService = any
type VRService = any
type ValueBase = any
type BinaryStringValue = any
type BoolValue = any
type BrickColorValue = any
type CFrameValue = any
type Color3Value = any
type DoubleConstrainedValue = any
type IntConstrainedValue = any
type IntValue = any
type NumberValue = any
type ObjectValue = any
type RayValue = any
type StringValue = any
type Vector3Value = any
type Vector3Curve = any
type VersionControlService = any
type VideoCaptureService = any
type VirtualInputManager = any
type VirtualUser = any
type VisibilityService = any
type Visit = any
type VoiceChannel = any
type VoiceChatInternal = any
type VoiceChatService = any
type VoiceSource = any
type WeldConstraint = any
type Objects = { Instance }
declare class Instance
	Archivable: boolean
	ClassName: string
	DataCost: number
	Name: string
	Parent: Instance
	PropertyStatusStudio: EnumPropertyStatus
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
	function GetDescendants(self): { Instance }
	function GetFullName(self): string
	function GetPropertyChangedSignal(self, property: string): RBXScriptSignal
	function IsA(self, className: string): boolean
	function IsAncestorOf(self, descendant: Instance): boolean
	function IsDescendantOf(self, ancestor: Instance): boolean
	function Remove(self): nil
	function SetAttribute(self, attribute: string, value: any): nil
	function WaitForChild(self, childName: string, timeOut: number?): Instance
	function children(self): Objects
	function clone(self): Instance
	function destroy(self): nil
	function findFirstChild(self, name: string, recursive: boolean?): Instance
	function getChildren(self): Objects
	function isA(self, className: string): boolean
	function isDescendantOf(self, ancestor: Instance): boolean
	function remove(self): nil
	AncestryChanged: RBXScriptSignal<Instance, Instance>
	AttributeChanged: RBXScriptSignal<string>
	Changed: RBXScriptSignal<string>
	ChildAdded: RBXScriptSignal<Instance>
	ChildRemoved: RBXScriptSignal<Instance>
	DescendantAdded: RBXScriptSignal<Instance>
	DescendantRemoving: RBXScriptSignal<Instance>
	Destroying: RBXScriptSignal<>
	childAdded: RBXScriptSignal<Instance>
end

declare class ABTestService extends Instance
	function ClearUserVariations(self): nil
	function GetBrowserTrackerABTestLoadingStatus(self): EnumABTestLoadingStatus
	function GetPendingOrInitializedUserId(self): number
	function GetUserABTestLoadingStatus(self): EnumABTestLoadingStatus
	function GetVariant(self, name: string): string
	function InitializeForUserId(self, userId: number): nil
	function WaitUntilBrowserTrackerABTestsInitialized(self): nil
	function WaitUntilUserABTestsInitialized(self): nil
	OnBrowserTrackerABTestLoadingStatusChanged: RBXScriptSignal<EnumABTestLoadingStatus>
	OnUserABTestLoadingStatusChanged: RBXScriptSignal<EnumABTestLoadingStatus, number>
end

declare class Accoutrement extends Instance
	AttachmentForward: Vector3
	AttachmentPoint: CFrame
	AttachmentPos: Vector3
	AttachmentRight: Vector3
	AttachmentUp: Vector3
end

declare class Accessory extends Accoutrement
	AccessoryType: EnumAccessoryType
end

declare class Hat extends Accoutrement
end

declare class AdService extends Instance
	function ShowVideoAd(self): nil
	VideoAdClosed: RBXScriptSignal<boolean>
end

declare class AdvancedDragger extends Instance
end

declare class AnalyticsService extends Instance
	ApiKey: string
	function FireCustomEvent(self, player: Instance, eventCategory: string, customData: any): nil
	function FireEvent(self, category: string, value: any): nil
	function FireInGameEconomyEvent(self, player: Instance, itemName: string, economyAction: EnumAnalyticsEconomyAction, itemCategory: string, amount: number, currency: string, location: any, customData: any): nil
	function FireLogEvent(self, player: Instance, logLevel: EnumAnalyticsLogLevel, message: string, debugInfo: any, customData: any): nil
	function FirePlayerProgressionEvent(self, player: Instance, category: string, progressionStatus: EnumAnalyticsProgressionStatus, location: any, statistics: any, customData: any): nil
end

declare class Animation extends Instance
	AnimationId: Content
end

declare class AnimationClip extends Instance
	Loop: boolean
	Priority: EnumAnimationPriority
end

declare class CurveAnimation extends AnimationClip
end

declare class KeyframeSequence extends AnimationClip
	AuthoredHipHeight: number
	function AddKeyframe(self, keyframe: Keyframe): nil
	function GetKeyframes(self): Objects
	function RemoveKeyframe(self, keyframe: Keyframe): nil
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
	AnimationPlayed: RBXScriptSignal<AnimationTrack>
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
	Priority: EnumAnimationPriority
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
	DidLoop: RBXScriptSignal<>
	KeyframeReached: RBXScriptSignal<string>
	Stopped: RBXScriptSignal<>
end

declare class Animator extends Instance
	function ApplyJointVelocities(self, motors: any): nil
	function GetPlayingAnimationTracks(self): { any }
	function LoadAnimation(self, animation: Animation): AnimationTrack
	function StepAnimations(self, deltaTime: number): nil
	AnimationPlayed: RBXScriptSignal<AnimationTrack>
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
	ProgressUpdate: RBXScriptSignal<number>
	UploadFinished: RBXScriptSignal<boolean, { [any]: any }>
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
	function InsertVideo(self, assetId: number, assetName: string): nil
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
	AssetImportedSignal: RBXScriptSignal<EnumAssetType, string, number>
	ImportSessionFinished: RBXScriptSignal<>
	ImportSessionStarted: RBXScriptSignal<>
	MayBeLinkedSourceModified: RBXScriptSignal<string>
end

declare class AssetService extends Instance
	function GetBundleDetailsSync(self, bundleId: number): { [any]: any }
	function CreatePlaceAsync(self, placeName: string, templatePlaceID: number, description: string?): number
	function CreatePlaceInPlayerInventoryAsync(self, player: Player, placeName: string, templatePlaceID: number, description: string?): number
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
	function NoPromptCreateOutfit(self, humanoidDescription: HumanoidDescription, rigType: EnumHumanoidRigType, name: string): boolean
	function NoPromptDeleteOutfit(self, outfitId: number): boolean
	function NoPromptRenameOutfit(self, outfitId: number, name: string): boolean
	function NoPromptSaveAvatar(self, humanoidDescription: HumanoidDescription, rigType: EnumHumanoidRigType, saveDict: { [any]: any }, gearAssetId: number?): boolean
	function NoPromptSetFavorite(self, itemId: number, itemType: EnumAvatarItemType, shouldFavorite: boolean): boolean
	function NoPromptUpdateOutfit(self, outfitId: number, humanoidDescription: HumanoidDescription, rigType: EnumHumanoidRigType): boolean
	function PerformCreateOutfitWithDescription(self, humanoidDescription: HumanoidDescription, name: string): nil
	function PerformDeleteOutfit(self): nil
	function PerformRenameOutfit(self, name: string): nil
	function PerformSaveAvatarWithDescription(self, humanoidDescription: HumanoidDescription, addedAssets: { any }, removedAssets: { any }): nil
	function PerformSetFavorite(self): nil
	function PerformUpdateOutfit(self, humanoidDescription: HumanoidDescription): nil
	function PromptAllowInventoryReadAccess(self): nil
	function PromptCreateOutfit(self, outfit: HumanoidDescription, rigType: EnumHumanoidRigType): nil
	function PromptDeleteOutfit(self, outfitId: number): nil
	function PromptRenameOutfit(self, outfitId: number): nil
	function PromptSaveAvatar(self, humanoidDescription: HumanoidDescription, rigType: EnumHumanoidRigType): nil
	function PromptSetFavorite(self, itemId: number, itemType: EnumAvatarItemType, shouldFavorite: boolean): nil
	function PromptUpdateOutfit(self, outfitId: number, updatedOutfit: HumanoidDescription, rigType: EnumHumanoidRigType): nil
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
	function GetBatchItemDetails(self, itemIds: { any }, itemType: EnumAvatarItemType): { any }
	function GetFavorite(self, itemId: number, itemType: EnumAvatarItemType): boolean
	function GetInventory(self, assetTypes: { any }): InventoryPages
	function GetItemDetails(self, itemId: number, itemType: EnumAvatarItemType): { [any]: any }
	function GetOutfits(self, outfitSource: EnumOutfitSource?): OutfitPages
	function GetRecommendedAssets(self, assetType: EnumAvatarAssetType, contextAssetId: number?): { any }
	function GetRecommendedBundles(self, bundleId: number): { any }
	function SearchCatalog(self, searchParameters: CatalogSearchParams): CatalogPages
	OpenAllowInventoryReadAccess: RBXScriptSignal<>
	OpenPromptCreateOufit: RBXScriptSignal<HumanoidDescription, EnumHumanoidRigType>
	OpenPromptDeleteOutfit: RBXScriptSignal<number>
	OpenPromptRenameOutfit: RBXScriptSignal<number>
	OpenPromptSaveAvatar: RBXScriptSignal<HumanoidDescription, EnumHumanoidRigType>
	OpenPromptSetFavorite: RBXScriptSignal<number, EnumAvatarItemType, boolean>
	OpenPromptUpdateOutfit: RBXScriptSignal<number, HumanoidDescription, EnumHumanoidRigType>
	PromptAllowInventoryReadAccessCompleted: RBXScriptSignal<EnumAvatarPromptResult>
	PromptCreateOutfitCompleted: RBXScriptSignal<EnumAvatarPromptResult, any>
	PromptDeleteOutfitCompleted: RBXScriptSignal<EnumAvatarPromptResult>
	PromptRenameOutfitCompleted: RBXScriptSignal<EnumAvatarPromptResult>
	PromptSaveAvatarCompleted: RBXScriptSignal<EnumAvatarPromptResult, HumanoidDescription>
	PromptSetFavoriteCompleted: RBXScriptSignal<EnumAvatarPromptResult>
	PromptUpdateOutfitCompleted: RBXScriptSignal<EnumAvatarPromptResult>
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
	BinType: EnumBinType
	function Disable(self): nil
	function ToggleSelect(self): nil
	Deselected: RBXScriptSignal<>
	Selected: RBXScriptSignal<Instance>
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
	Activated: RBXScriptSignal<>
	Deactivated: RBXScriptSignal<>
	Equipped: RBXScriptSignal<Mouse>
	Unequipped: RBXScriptSignal<>
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
	BadgeAwarded: RBXScriptSignal<string, number, number>
	OnBadgeAwarded: RBXScriptSignal<number, number, number>
end

declare class BasePlayerGui extends Instance
	function GetGuiObjectsAtPosition(self, x: number, y: number): Objects
	function GetGuiObjectsInCircle(self, position: Vector2, radius: number): Objects
end

declare class CoreGui extends BasePlayerGui
	SelectionImageObject: GuiObject
	Version: number
	function SetUserGuiRendering(self, enabled: boolean, guiAdornee: Instance, faceId: EnumNormalId): nil
	function TakeScreenshot(self): nil
	function ToggleRecording(self): nil
end

declare class PlayerGui extends BasePlayerGui
	CurrentScreenOrientation: EnumScreenOrientation
	ScreenOrientation: EnumScreenOrientation
	SelectionImageObject: GuiObject
	function GetTopbarTransparency(self): number
	function SetTopbarTransparency(self, transparency: number): nil
	TopbarTransparencyChangedSignal: RBXScriptSignal<number>
end

declare class StarterGui extends BasePlayerGui
	ProcessUserInput: boolean
	ResetPlayerGuiOnSpawn: boolean
	ScreenOrientation: EnumScreenOrientation
	ShowDevelopmentGui: boolean
	VirtualCursorMode: EnumVirtualCursorMode
	function GetCoreGuiEnabled(self, coreGuiType: EnumCoreGuiType): boolean
	function RegisterGetCore(self, parameterName: string, getFunction: Function): nil
	function RegisterSetCore(self, parameterName: string, setFunction: Function): nil
	function SetCore(self, parameterName: string, value: any): nil
	function SetCoreGuiEnabled(self, coreGuiType: EnumCoreGuiType, enabled: boolean): nil
	function GetCore(self, parameterName: string): any
	CoreGuiChangedSignal: RBXScriptSignal<EnumCoreGuiType, boolean>
end

declare class BaseWrap extends Instance
	CageMeshId: Content
	CageOrigin: CFrame
	CageOriginWorld: CFrame
	HSRAssetId: Content
	ImportOrigin: CFrame
	ImportOriginWorld: CFrame
	function GetFaces(self, cageType: EnumCageType): { any }
	function GetVertices(self, cageType: EnumCageType): { any }
	function IsHSRReady(self): boolean
	function ModifyVertices(self, cageType: EnumCageType, vertices: { any }): nil
end

declare class WrapLayer extends BaseWrap
	BindOffset: CFrame
	Color: Color3
	DebugMode: EnumWrapLayerDebugMode
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
	DebugMode: EnumWrapTargetDebugMode
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
	TextureMode: EnumTextureMode
	TextureSpeed: number
	Transparency: NumberSequence
	Width0: number
	Width1: number
	ZOffset: number
	function SetTextureOffset(self, offset: number?): nil
end

declare class BindableEvent extends Instance
	function Fire(self, arguments: any): nil
	Event: RBXScriptSignal<any>
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
	ReachedTarget: RBXScriptSignal<>
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
	ReachedTarget: RBXScriptSignal<>
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
	MetaBreakpointAdded: RBXScriptSignal<MetaBreakpoint>
	MetaBreakpointChanged: RBXScriptSignal<MetaBreakpoint>
	MetaBreakpointRemoved: RBXScriptSignal<MetaBreakpoint>
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
	AuthCookieCopiedToEngine: RBXScriptSignal<>
	BrowserWindowClosed: RBXScriptSignal<>
	BrowserWindowWillNavigate: RBXScriptSignal<string>
	JavaScriptCallback: RBXScriptSignal<string>
end

declare class BulkImportService extends Instance
	function LaunchBulkImport(self, assetTypeToImport: number): nil
	function ShowBulkImportView(self): nil
	AssetImported: RBXScriptSignal<EnumAssetType, string, number>
	BulkImportFinished: RBXScriptSignal<number>
	BulkImportStarted: RBXScriptSignal<>
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
	CameraType: EnumCameraType
	CoordinateFrame: CFrame
	DiagonalFieldOfView: number
	FieldOfView: number
	FieldOfViewMode: EnumFieldOfViewMode
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
	function SetCameraPanMode(self, mode: EnumCameraPanMode?): nil
	function SetImageServerView(self, modelCoord: CFrame): nil
	function SetRoll(self, rollAngle: number): nil
	function TiltUnits(self, units: number): boolean
	function ViewportPointToRay(self, x: number, y: number, depth: number?): Ray
	function WorldToScreenPoint(self, worldPoint: Vector3): (number, number, number, boolean)
	function WorldToViewportPoint(self, worldPoint: Vector3): (number, number, number, boolean)
	function Zoom(self, distance: number): boolean
	FirstPersonTransition: RBXScriptSignal<boolean>
	InterpolationFinished: RBXScriptSignal<>
end

declare class ChangeHistoryService extends Instance
	function GetCanRedo(self): any
	function GetCanUndo(self): any
	function Redo(self): nil
	function ResetWaypoints(self): nil
	function SetEnabled(self, state: boolean): nil
	function SetWaypoint(self, name: string): nil
	function Undo(self): nil
	OnRedo: RBXScriptSignal<string>
	OnUndo: RBXScriptSignal<string>
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
	BodyPart: EnumBodyPart
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
	function Chat(self, partOrCharacter: Instance, message: string, color: EnumChatColor?): nil
	function ChatLocal(self, partOrCharacter: Instance, message: string, color: EnumChatColor?): nil
	function GetShouldUseLuaChat(self): boolean
	function InvokeChatCallback(self, callbackType: EnumChatCallbackType, callbackArguments: any): any
	function RegisterChatCallback(self, callbackType: EnumChatCallbackType, callbackFunction: Function): nil
	function SetBubbleChatSettings(self, settings: any): nil
	function CanUserChatAsync(self, userId: number): boolean
	function CanUsersChatAsync(self, userIdFrom: number, userIdTo: number): boolean
	function FilterStringAsync(self, stringToFilter: string, playerFrom: Player, playerTo: Player): string
	function FilterStringForBroadcast(self, stringToFilter: string, playerFrom: Player): string
	function FilterStringForPlayerAsync(self, stringToFilter: string, playerToFilterFor: Player): string
	BubbleChatSettingsChanged: RBXScriptSignal<any>
	Chatted: RBXScriptSignal<BasePart, string, EnumChatColor>
end

declare class ClickDetector extends Instance
	CursorIcon: Content
	MaxActivationDistance: number
	MouseClick: RBXScriptSignal<Player>
	MouseHoverEnter: RBXScriptSignal<Player>
	MouseHoverLeave: RBXScriptSignal<Player>
	RightMouseClick: RBXScriptSignal<Player>
	mouseClick: RBXScriptSignal<Player>
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
	ItemAdded: RBXScriptSignal<Instance>
	ItemRemoved: RBXScriptSignal<Instance>
end

declare class CommandInstance extends Instance
	AllowGUIAccessPoints: boolean
	Checked: boolean
	DefaultShortcut: string
	DisplayName: string
	Enabled: boolean
	Icon: string
	Name: string
	Permission: EnumCommandPermission
	StatusTip: string
	function EnableGuiAccess(self, displayName: string, statusTip: string, defaultShortcut: string): nil
	function RegisterExecutionCallback(self, callbackFunction: Function): nil
end

declare class CommandService extends Instance
	function Execute(self, name: string, params: any): any
	function RegisterCommand(self, plugin: Plugin, name: string, context: string, permission: EnumCommandPermission?): CommandInstance
	CommandExecuting: RBXScriptSignal<string, any>
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
	AlignType: EnumAlignType
	CFrame: CFrame
	MaxAngularVelocity: number
	MaxTorque: number
	Mode: EnumOrientationAlignmentMode
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
	Mode: EnumPositionAlignmentMode
	Position: Vector3
	ReactionForceEnabled: boolean
	Responsiveness: number
	RigidityEnabled: boolean
end

declare class AngularVelocity extends Constraint
	AngularVelocity: Vector3
	MaxTorque: number
	ReactionTorqueEnabled: boolean
	RelativeTo: EnumActuatorRelativeTo
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
	ActuatorType: EnumActuatorType
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
	RelativeTo: EnumActuatorRelativeTo
	SecondaryTangentAxis: Vector3
	VectorVelocity: Vector3
	VelocityConstraintMode: EnumVelocityConstraintMode
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
	ActuatorType: EnumActuatorType
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
	AngularActuatorType: EnumActuatorType
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
	RelativeTo: EnumActuatorRelativeTo
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
	RelativeTo: EnumActuatorRelativeTo
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
	AssetFetchFailed: RBXScriptSignal<Content>
end

declare class ContextActionService extends Instance
	function BindAction(self, actionName: string, functionToBind: Function, createTouchButton: boolean, inputTypes: any): nil
	function BindActionAtPriority(self, actionName: string, functionToBind: Function, createTouchButton: boolean, priorityLevel: number, inputTypes: any): nil
	function BindActionToInputTypes(self, actionName: string, functionToBind: Function, createTouchButton: boolean, inputTypes: any): nil
	function BindActivate(self, userInputTypeForActivation: EnumUserInputType, keyCodeForActivation: EnumKeyCode?): nil
	function BindCoreAction(self, actionName: string, functionToBind: Function, createTouchButton: boolean, inputTypes: any): nil
	function BindCoreActionAtPriority(self, actionName: string, functionToBind: Function, createTouchButton: boolean, priorityLevel: number, inputTypes: any): nil
	function CallFunction(self, actionName: string, state: EnumUserInputState, inputObject: Instance): any
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
	function UnbindActivate(self, userInputTypeForActivation: EnumUserInputType, keyCodeForActivation: EnumKeyCode?): nil
	function UnbindAllActions(self): nil
	function UnbindCoreAction(self, actionName: string): nil
	function GetButton(self, actionName: string): ImageButton
	BoundActionAdded: RBXScriptSignal<string, boolean, { [any]: any }, boolean>
	BoundActionChanged: RBXScriptSignal<string, string, { [any]: any }>
	BoundActionRemoved: RBXScriptSignal<string, { [any]: any }, boolean>
	GetActionButtonEvent: RBXScriptSignal<string>
	LocalToolEquipped: RBXScriptSignal<Tool>
	LocalToolUnequipped: RBXScriptSignal<Tool>
end

declare class Controller extends Instance
	function BindButton(self, button: EnumButton, caption: string): nil
	function GetButton(self, button: EnumButton): boolean
	function UnbindButton(self, button: EnumButton): nil
	function bindButton(self, button: EnumButton, caption: string): nil
	function getButton(self, button: EnumButton): boolean
	ButtonChanged: RBXScriptSignal<EnumButton>
end

declare class HumanoidController extends Controller
end

declare class SkateboardController extends Controller
	Steer: number
	Throttle: number
	AxisChanged: RBXScriptSignal<string>
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
	GuidLineContentsChanged: RBXScriptSignal<string, number, string>
	GuidNameChanged: RBXScriptSignal<string, string>
end

declare class CustomEvent extends Instance
	function GetAttachedReceivers(self): Objects
	function SetValue(self, newValue: number): nil
	ReceiverConnected: RBXScriptSignal<Instance>
	ReceiverDisconnected: RBXScriptSignal<Instance>
end

declare class CustomEventReceiver extends Instance
	Source: Instance
	function GetCurrentValue(self): number
	EventConnected: RBXScriptSignal<Instance>
	EventDisconnected: RBXScriptSignal<Instance>
	SourceValueChanged: RBXScriptSignal<number>
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
	MeshType: EnumMeshType
end

declare class DataModelPatchService extends Instance
	function GetPatch(self, patchName: string): Instance
	function RegisterPatch(self, patchName: string, behaviorName: string, localConfigPath: string, userId: number): nil
	function UpdatePatch(self, userId: number, patchName: string, callbackFunction: Function): nil
end

declare class DataModelSession extends Instance
	CurrentDataModelType: EnumStudioDataModelType
	SessionId: string
	CurrentDataModelTypeAboutToChange: RBXScriptSignal<EnumStudioDataModelType>
	CurrentDataModelTypeChanged: RBXScriptSignal<>
	DataModelCreated: RBXScriptSignal<EnumStudioDataModelType>
	DataModelWillBeDestroyed: RBXScriptSignal<EnumStudioDataModelType>
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
	function GetDataStore(self, name: string, scope: string?, options: Instance?): DataStore
	function GetGlobalDataStore(self): GlobalDataStore
	function GetOrderedDataStore(self, name: string, scope: string?): OrderedDataStore
	function GetRequestBudgetForRequestType(self, requestType: EnumDataStoreRequestType): number
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
	TickCountPreciseOverride: EnumTickCountSampleMethod
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
	function SetExceptionBreakMode(self, breakMode: EnumDebuggerExceptionBreakMode, callback: Function): number
	function SetVariable(self, variable: DebuggerVariable, value: string, callback: Function): number
	function Step(self, thread: ThreadState, callback: Function): number
	function StepIn(self, thread: ThreadState, callback: Function): number
	function StepOut(self, thread: ThreadState, callback: Function): number
	BreakpointAdded: RBXScriptSignal<Breakpoint>
	BreakpointChanged: RBXScriptSignal<Breakpoint>
	BreakpointRemoved: RBXScriptSignal<Breakpoint, EnumBreakpointRemoveReason>
	Paused: RBXScriptSignal<PausedState, EnumDebuggerPauseReason>
	Resumed: RBXScriptSignal<PausedState>
end

declare class LocalDebuggerConnection extends DebuggerConnection
end

declare class DebuggerConnectionManager extends Instance
	Timeout: number
	function ConnectLocal(self, dataModel: DataModel): number
	function ConnectRemote(self, host: string, port: number): number
	function FocusConnection(self, connection: DebuggerConnection): nil
	function GetConnectionById(self, id: number): DebuggerConnection
	ConnectionEnded: RBXScriptSignal<DebuggerConnection, EnumDebuggerEndReason>
	ConnectionStarted: RBXScriptSignal<DebuggerConnection>
	FocusChanged: RBXScriptSignal<DebuggerConnection>
end

declare class DebuggerLuaResponse extends Instance
	IsError: boolean
	IsSuccess: boolean
	Message: string
	RequestId: number
	Status: EnumDebuggerStatus
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
	DebuggerAdded: RBXScriptSignal<Instance>
	DebuggerRemoved: RBXScriptSignal<Instance>
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
	BehaviorType: EnumDialogBehaviorType
	ConversationDistance: number
	GoodbyeChoiceActive: boolean
	GoodbyeDialog: string
	InUse: boolean
	InitialPrompt: string
	Purpose: EnumDialogPurpose
	Tone: EnumDialogTone
	TriggerDistance: number
	TriggerOffset: Vector3
	function GetCurrentPlayers(self): Objects
	function SetPlayerIsUsing(self, player: Instance, isUsing: boolean): nil
	function SignalDialogChoiceSelected(self, player: Instance, dialogChoice: Instance): nil
	DialogChoiceSelected: RBXScriptSignal<Player, DialogChoice>
end

declare class DialogChoice extends Instance
	GoodbyeChoiceActive: boolean
	GoodbyeDialog: string
	ResponseDialog: string
	UserDialog: string
end

declare class DraftsService extends Instance
	function DiscardEdits(self, scripts: Objects): nil
	function GetDraftStatus(self, script: Instance): EnumDraftStatusCode
	function GetEditors(self, script: Instance): Objects
	function RestoreScripts(self, scripts: Objects): nil
	function ShowDiffsAgainstBase(self, scripts: Objects): nil
	function ShowDiffsAgainstServer(self, scripts: Objects): nil
	function CommitEdits(self, scripts: Objects): nil
	function GetDrafts(self): Objects
	function UpdateToLatestVersion(self, scripts: Objects): nil
	CommitStatusChanged: RBXScriptSignal<Instance, EnumDraftStatusCode>
	DraftAdded: RBXScriptSignal<Instance>
	DraftRemoved: RBXScriptSignal<Instance>
	DraftStatusChanged: RBXScriptSignal<Instance>
	EditorsListChanged: RBXScriptSignal<Instance>
	UpdateStatusChanged: RBXScriptSignal<Instance, EnumDraftStatusCode>
end

declare class Dragger extends Instance
	function AxisRotate(self, axis: EnumAxis?): nil
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
	DraggerCoordinateSpace: EnumDraggerCoordinateSpace
	DraggerMovementMode: EnumDraggerMovementMode
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
	RotationOrder: EnumRotationOrder
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
	ExplosionType: EnumExplosionType
	Position: Vector3
	TimeScale: number
	Visible: boolean
	Hit: RBXScriptSignal<BasePart, number>
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
	Face: EnumNormalId
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
	FaceId: EnumNormalId
	InOut: EnumInOut
	LeftRight: EnumLeftRight
	TopBottom: EnumTopBottom
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
	FriendsUpdated: RBXScriptSignal<{ any }>
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
	VideoRecordingChangeRequest: RBXScriptSignal<boolean>
end

declare class GamepadService extends Instance
	GamepadCursorEnabled: boolean
	function DisableGamepadCursor(self): nil
	function EnableGamepadCursor(self, guiObject: Instance): nil
	function GetGamepadCursorPosition(self): Vector2
	function SetGamepadCursorPosition(self, position: Vector2): nil
	GamepadThumbstick1Changed: RBXScriptSignal<Vector2>
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
	function ListVersionsAsync(self, key: string, sortDirection: EnumSortDirection?, minDate: number?, maxDate: number?, pageSize: number?): DataStoreVersionPages
	function RemoveVersionAsync(self, key: string, version: string): nil
end

declare class OrderedDataStore extends GlobalDataStore
	function GetSortedAsync(self, ascending: boolean, pagesize: number, minValue: any, maxValue: any): DataStorePages
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
	SelectionBehaviorDown: EnumSelectionBehavior
	SelectionBehaviorLeft: EnumSelectionBehavior
	SelectionBehaviorRight: EnumSelectionBehavior
	SelectionBehaviorUp: EnumSelectionBehavior
	SelectionGroup: boolean
	TotalGroupScale: number
end

declare class GuiObject extends GuiBase2d
	Active: boolean
	AnchorPoint: Vector2
	AutomaticSize: EnumAutomaticSize
	BackgroundColor: BrickColor
	BackgroundColor3: Color3
	BackgroundTransparency: number
	BorderColor: BrickColor
	BorderColor3: Color3
	BorderMode: EnumBorderMode
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
	SelectionOrder: number
	Size: UDim2
	SizeConstraint: EnumSizeConstraint
	Transparency: number
	Visible: boolean
	ZIndex: number
	function TweenPosition(self, endPosition: UDim2, easingDirection: EnumEasingDirection?, easingStyle: EnumEasingStyle?, time: number?, override: boolean?, callback: Function?): boolean
	function TweenSize(self, endSize: UDim2, easingDirection: EnumEasingDirection?, easingStyle: EnumEasingStyle?, time: number?, override: boolean?, callback: Function?): boolean
	function TweenSizeAndPosition(self, endSize: UDim2, endPosition: UDim2, easingDirection: EnumEasingDirection?, easingStyle: EnumEasingStyle?, time: number?, override: boolean?, callback: Function?): boolean
	DragBegin: RBXScriptSignal<UDim2>
	DragStopped: RBXScriptSignal<number, number>
	InputBegan: RBXScriptSignal<InputObject>
	InputChanged: RBXScriptSignal<InputObject>
	InputEnded: RBXScriptSignal<InputObject>
	MouseEnter: RBXScriptSignal<number, number>
	MouseLeave: RBXScriptSignal<number, number>
	MouseMoved: RBXScriptSignal<number, number>
	MouseWheelBackward: RBXScriptSignal<number, number>
	MouseWheelForward: RBXScriptSignal<number, number>
	SelectionGained: RBXScriptSignal<>
	SelectionLost: RBXScriptSignal<>
	TouchLongPress: RBXScriptSignal<{ any }, EnumUserInputState>
	TouchPan: RBXScriptSignal<{ any }, Vector2, Vector2, EnumUserInputState>
	TouchPinch: RBXScriptSignal<{ any }, number, number, EnumUserInputState>
	TouchRotate: RBXScriptSignal<{ any }, number, number, EnumUserInputState>
	TouchSwipe: RBXScriptSignal<EnumSwipeDirection, number>
	TouchTap: RBXScriptSignal<{ any }>
end

declare class CanvasGroup extends GuiObject
	GroupColor: Color3
	GroupTransparency: number
end

declare class Frame extends GuiObject
	Style: EnumFrameStyle
end

declare class GuiButton extends GuiObject
	AutoButtonColor: boolean
	Modal: boolean
	Selected: boolean
	Style: EnumButtonStyle
	Activated: RBXScriptSignal<InputObject, number>
	MouseButton1Click: RBXScriptSignal<>
	MouseButton1Down: RBXScriptSignal<number, number>
	MouseButton1Up: RBXScriptSignal<number, number>
	MouseButton2Click: RBXScriptSignal<>
	MouseButton2Down: RBXScriptSignal<number, number>
	MouseButton2Up: RBXScriptSignal<number, number>
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
	ResampleMode: EnumResamplerMode
	ScaleType: EnumScaleType
	SliceCenter: Rect
	SliceScale: number
	TileSize: UDim2
	function SetEnableContentImageSizeChangedEvents(self, enabled: boolean): nil
end

declare class TextButton extends GuiButton
	ContentText: string
	Font: EnumFont
	FontFace: Font
	FontSize: EnumFontSize
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
	TextTruncate: EnumTextTruncate
	TextWrap: boolean
	TextWrapped: boolean
	TextXAlignment: EnumTextXAlignment
	TextYAlignment: EnumTextYAlignment
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
	ResampleMode: EnumResamplerMode
	ScaleType: EnumScaleType
	SliceCenter: Rect
	SliceScale: number
	TileSize: UDim2
	function SetEnableContentImageSizeChangedEvents(self, enabled: boolean): nil
end

declare class TextLabel extends GuiLabel
	ContentText: string
	Font: EnumFont
	FontFace: Font
	FontSize: EnumFontSize
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
	TextTruncate: EnumTextTruncate
	TextWrap: boolean
	TextWrapped: boolean
	TextXAlignment: EnumTextXAlignment
	TextYAlignment: EnumTextYAlignment
	function SetTextFromInput(self, text: string): nil
end

declare class ScrollingFrame extends GuiObject
	AbsoluteCanvasSize: Vector2
	AbsoluteWindowSize: Vector2
	AutomaticCanvasSize: EnumAutomaticSize
	BottomImage: Content
	CanvasPosition: Vector2
	CanvasSize: UDim2
	ElasticBehavior: EnumElasticBehavior
	HorizontalBarRect: Rect
	HorizontalScrollBarInset: EnumScrollBarInset
	MaxCanvasPosition: Vector2
	MidImage: Content
	ScrollBarImageColor3: Color3
	ScrollBarImageTransparency: number
	ScrollBarThickness: number
	ScrollVelocity: Vector2
	ScrollingDirection: EnumScrollingDirection
	ScrollingEnabled: boolean
	TopImage: Content
	VerticalBarRect: Rect
	VerticalScrollBarInset: EnumScrollBarInset
	VerticalScrollBarPosition: EnumVerticalScrollBarPosition
	function ClearInertialScrolling(self): nil
	function GetSampledInertialVelocity(self): Vector2
	function ScrollToTop(self): nil
end

declare class TextBox extends GuiObject
	ClearTextOnFocus: boolean
	ContentText: string
	CursorPosition: number
	EnableRealtimeFilteringHints: boolean
	Font: EnumFont
	FontFace: Font
	FontSize: EnumFontSize
	LineHeight: number
	ManualFocusRelease: boolean
	MaxVisibleGraphemes: number
	MultiLine: boolean
	OverlayNativeInput: boolean
	PlaceholderColor3: Color3
	PlaceholderText: string
	ReturnKeyType: EnumReturnKeyType
	RichText: boolean
	SelectionStart: number
	ShowNativeInput: boolean
	Text: string
	TextBounds: Vector2
	TextColor: BrickColor
	TextColor3: Color3
	TextEditable: boolean
	TextFits: boolean
	TextInputType: EnumTextInputType
	TextScaled: boolean
	TextSize: number
	TextStrokeColor3: Color3
	TextStrokeTransparency: number
	TextTransparency: number
	TextTruncate: EnumTextTruncate
	TextWrap: boolean
	TextWrapped: boolean
	TextXAlignment: EnumTextXAlignment
	TextYAlignment: EnumTextYAlignment
	function CaptureFocus(self): nil
	function IsFocused(self): boolean
	function ReleaseFocus(self, submitted: boolean?): nil
	function ResetKeyboardMode(self): nil
	function SetTextFromInput(self, text: string): nil
	FocusLost: RBXScriptSignal<boolean, InputObject>
	Focused: RBXScriptSignal<>
	ReturnPressedFromOnScreenKeyboard: RBXScriptSignal<>
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
	DidLoop: RBXScriptSignal<string>
	Ended: RBXScriptSignal<string>
	Loaded: RBXScriptSignal<string>
	Paused: RBXScriptSignal<string>
	Played: RBXScriptSignal<string>
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
	ZIndexBehavior: EnumZIndexBehavior
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
	PluginDragDropped: RBXScriptSignal<{ [any]: any }>
	PluginDragEntered: RBXScriptSignal<{ [any]: any }>
	PluginDragLeft: RBXScriptSignal<{ [any]: any }>
	PluginDragMoved: RBXScriptSignal<{ [any]: any }>
	WindowFocusReleased: RBXScriptSignal<>
	WindowFocused: RBXScriptSignal<>
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
	Face: EnumNormalId
	LightInfluence: number
	PixelsPerStud: number
	SizingMode: EnumSurfaceGuiSizingMode
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
	AdornCullingMode: EnumAdornCullingMode
	AlwaysOnTop: boolean
	CFrame: CFrame
	SizeRelativeOffset: Vector3
	ZIndex: number
	MouseButton1Down: RBXScriptSignal<>
	MouseButton1Up: RBXScriptSignal<>
	MouseEnter: RBXScriptSignal<>
	MouseLeave: RBXScriptSignal<>
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
	MouseButton1Down: RBXScriptSignal<EnumAxis>
	MouseButton1Up: RBXScriptSignal<EnumAxis>
	MouseDrag: RBXScriptSignal<EnumAxis, number, number>
	MouseEnter: RBXScriptSignal<EnumAxis>
	MouseLeave: RBXScriptSignal<EnumAxis>
end

declare class Handles extends HandlesBase
	Faces: Faces
	Style: EnumHandlesStyle
	MouseButton1Down: RBXScriptSignal<EnumNormalId>
	MouseButton1Up: RBXScriptSignal<EnumNormalId>
	MouseDrag: RBXScriptSignal<EnumNormalId, number>
	MouseEnter: RBXScriptSignal<EnumNormalId>
	MouseLeave: RBXScriptSignal<EnumNormalId>
end

declare class SurfaceSelection extends PartAdornment
	TargetSurface: EnumNormalId
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
	function AddCenterDialog(self, dialog: Instance, centerDialogType: EnumCenterDialogType, showFunction: Function, hideFunction: Function): nil
	function AddKey(self, key: string): nil
	function AddSelectionParent(self, selectionName: string, selectionParent: Instance): nil
	function AddSelectionTuple(self, selectionName: string, selections: any): nil
	function AddSpecialKey(self, key: EnumSpecialKey): nil
	function BroadcastNotification(self, data: string, notificationType: number): nil
	function ClearError(self): nil
	function CloseInspectMenu(self): nil
	function CloseStatsBasedOnInputString(self, input: string): boolean
	function ForceTenFootInterface(self, isForced: boolean): nil
	function GetBrickCount(self): number
	function GetClosestDialogToPosition(self, position: Vector3): Instance
	function GetEmotesMenuOpen(self): boolean
	function GetErrorCode(self): EnumConnectionError
	function GetErrorMessage(self): string
	function GetErrorType(self): EnumConnectionError
	function GetGameplayPausedNotificationEnabled(self): boolean
	function GetGuiInset(self): (Vector2, Vector2)
	function GetInspectMenuEnabled(self): boolean
	function GetNotificationTypeList(self): { [any]: any }
	function GetResolutionScale(self): number
	function GetSafeZoneOffsets(self): { [any]: any }
	function GetUiMessage(self): string
	function InspectPlayerFromHumanoidDescription(self, humanoidDescription: HumanoidDescription, name: string): nil
	function InspectPlayerFromUserId(self, userId: number): nil
	function InspectPlayerFromUserIdWithCtx(self, userId: number, ctx: string): nil
	function IsMemoryTrackerEnabled(self): boolean
	function IsTenFootInterface(self): boolean
	function OpenBrowserWindow(self, url: string): nil
	function OpenNativeOverlay(self, title: string, url: string): nil
	function RemoveCenterDialog(self, dialog: Instance): nil
	function RemoveKey(self, key: string): nil
	function RemoveSelectionGroup(self, selectionName: string): nil
	function RemoveSpecialKey(self, key: EnumSpecialKey): nil
	function Select(self, selectionParent: Instance): nil
	function SetEmotesMenuOpen(self, isOpen: boolean): nil
	function SetGameplayPausedNotificationEnabled(self, enabled: boolean): nil
	function SetGlobalGuiInset(self, x1: number, y1: number, x2: number, y2: number): nil
	function SetInspectMenuEnabled(self, enabled: boolean): nil
	function SetMenuIsOpen(self, open: boolean, menuName: string?): nil
	function SetSafeZoneOffsets(self, top: number, bottom: number, left: number, right: number): nil
	function SetUiMessage(self, msgType: EnumUiMessageType, uiMessage: string?): nil
	function ShowStatsBasedOnInputString(self, input: string): boolean
	function ToggleFullscreen(self): nil
	function GetScreenResolution(self): Vector2
	BrowserWindowClosed: RBXScriptSignal<>
	CloseInspectMenuRequest: RBXScriptSignal<>
	CoreGuiRenderOverflowed: RBXScriptSignal<>
	EmotesMenuOpenChanged: RBXScriptSignal<boolean>
	ErrorMessageChanged: RBXScriptSignal<string>
	InspectMenuEnabledChangedSignal: RBXScriptSignal<boolean>
	InspectPlayerFromHumanoidDescriptionRequest: RBXScriptSignal<Instance, string>
	InspectPlayerFromUserIdWithCtxRequest: RBXScriptSignal<number, string>
	KeyPressed: RBXScriptSignal<string, string>
	MenuClosed: RBXScriptSignal<>
	MenuOpened: RBXScriptSignal<>
	NativeClose: RBXScriptSignal<>
	NetworkPausedEnabledChanged: RBXScriptSignal<boolean>
	Open9SliceEditor: RBXScriptSignal<Instance>
	SafeZoneOffsetsChanged: RBXScriptSignal<>
	ShowLeaveConfirmation: RBXScriptSignal<>
	SpecialKeyPressed: RBXScriptSignal<EnumSpecialKey, string>
	UiMessageChanged: RBXScriptSignal<EnumUiMessageType, string>
	SendCoreUiNotification: (title: string, text: string) -> nil
end

declare class GuidRegistryService extends Instance
end

declare class HapticService extends Instance
	function GetMotor(self, inputType: EnumUserInputType, vibrationMotor: EnumVibrationMotor): any
	function IsMotorSupported(self, inputType: EnumUserInputType, vibrationMotor: EnumVibrationMotor): boolean
	function IsVibrationSupported(self, inputType: EnumUserInputType): boolean
	function SetMotor(self, inputType: EnumUserInputType, vibrationMotor: EnumVibrationMotor, vibrationValues: any): nil
end

declare class HeightmapImporterService extends Instance
	function CancelImportHeightmap(self): nil
	function IsValidColormap(self, colormapAssetId: Content): any
	function IsValidHeightmap(self, heightmapAssetId: Content): any
	function SetImportHeightmapPaused(self, paused: boolean): nil
	function GetHeightmapPreviewAsync(self, heightmapAssetId: Content): any
	function ImportHeightmap(self, region: Region3, heightmapAssetId: Content, colormapAssetId: Content, defaultMaterial: EnumMaterial): nil
	ColormapHasUnknownPixels: RBXScriptSignal<>
	ProgressUpdate: RBXScriptSignal<number, string>
end

declare class HiddenSurfaceRemovalAsset extends Instance
end

declare class Highlight extends Instance
	Adornee: Instance
	DepthMode: EnumHighlightDepthMode
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
	function GetAsync(self, apiUrlPath: string, priority: EnumThrottlingPriority?, httpRequestType: EnumHttpRequestType?): string
	function GetAsyncFullUrl(self, apiUrl: string, priority: EnumThrottlingPriority?, httpRequestType: EnumHttpRequestType?): string
	function PostAsync(self, apiUrlPath: string, data: string, priority: EnumThrottlingPriority?, content_type: EnumHttpContentType?, httpRequestType: EnumHttpRequestType?): string
	function PostAsyncFullUrl(self, apiUrl: string, data: string, priority: EnumThrottlingPriority?, content_type: EnumHttpContentType?, httpRequestType: EnumHttpRequestType?): string
	function RequestAsync(self, requestOptions: { [any]: any }, priority: EnumThrottlingPriority?, content_type: EnumHttpContentType?, httpRequestType: EnumHttpRequestType?): string
	function RequestLimitedAsync(self, requestOptions: { [any]: any }, priority: EnumThrottlingPriority?, content_type: EnumHttpContentType?, httpRequestType: EnumHttpRequestType?): string
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
	function PostAsync(self, url: string, data: string, content_type: EnumHttpContentType?, compress: boolean?, headers: any): string
	function RequestAsync(self, requestOptions: { [any]: any }): { [any]: any }
end

declare class Humanoid extends Instance
	AutoJumpEnabled: boolean
	AutoRotate: boolean
	AutomaticScalingEnabled: boolean
	BreakJointsOnDeath: boolean
	CameraOffset: Vector3
	CollisionType: EnumHumanoidCollisionType
	DisplayDistanceType: EnumHumanoidDisplayDistanceType
	DisplayName: string
	FloorMaterial: EnumMaterial
	Health: number
	HealthDisplayDistance: number
	HealthDisplayType: EnumHumanoidHealthDisplayType
	HipHeight: number
	Jump: boolean
	JumpHeight: number
	JumpPower: number
	LeftLeg: BasePart
	MaxHealth: number
	MaxSlopeAngle: number
	MoveDirection: Vector3
	NameDisplayDistance: number
	NameOcclusion: EnumNameOcclusion
	PlatformStand: boolean
	RequiresNeck: boolean
	RigType: EnumHumanoidRigType
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
	function AddAccessory(self, accessory: Accessory): nil
	function AddCustomStatus(self, status: string): boolean
	function AddStatus(self, status: EnumStatus?): boolean
	function ApplyDescriptionBlocking(self, humanoidDescription: HumanoidDescription): nil
	function BuildRigFromAttachments(self): nil
	function CacheDefaults(self): nil
	function ChangeState(self, state: EnumHumanoidStateType?): nil
	function EquipTool(self, tool: Tool): nil
	function GetAccessories(self): { any }
	function GetAccessoryHandleScale(self, instance: Instance, partType: EnumBodyPartR15): Vector3
	function GetAppliedDescription(self): HumanoidDescription
	function GetBodyPartR15(self, part: BasePart): EnumBodyPartR15
	function GetLimb(self, part: BasePart): EnumLimb
	function GetPlayingAnimationTracks(self): { any }
	function GetState(self): EnumHumanoidStateType
	function GetStateEnabled(self, state: EnumHumanoidStateType): boolean
	function GetStatuses(self): { any }
	function HasCustomStatus(self, status: string): boolean
	function HasStatus(self, status: EnumStatus?): boolean
	function LoadAnimation(self, animation: Animation): AnimationTrack
	function Move(self, moveDirection: Vector3, relativeToCamera: boolean?): nil
	function MoveTo(self, location: Vector3, part: BasePart?): nil
	function RemoveAccessories(self): nil
	function RemoveCustomStatus(self, status: string): boolean
	function RemoveStatus(self, status: EnumStatus?): boolean
	function ReplaceBodyPartR15(self, bodyPart: EnumBodyPartR15, part: BasePart): boolean
	function SetClickToWalkEnabled(self, enabled: boolean): nil
	function SetStateEnabled(self, state: EnumHumanoidStateType, enabled: boolean): nil
	function TakeDamage(self, amount: number): nil
	function UnequipTools(self): nil
	function loadAnimation(self, animation: Animation): AnimationTrack
	function takeDamage(self, amount: number): nil
	function ApplyDescription(self, humanoidDescription: HumanoidDescription, assetTypeVerification: EnumAssetTypeVerification?): nil
	function ApplyDescriptionClientServer(self, humanoidDescription: HumanoidDescription): nil
	function ApplyDescriptionReset(self, humanoidDescription: HumanoidDescription, assetTypeVerification: EnumAssetTypeVerification?): nil
	function PlayEmote(self, emoteName: string): boolean
	function PlayEmoteAndGetAnimTrackById(self, emoteId: number): any
	AnimationPlayed: RBXScriptSignal<AnimationTrack>
	Climbing: RBXScriptSignal<number>
	ClusterCompositionFinished: RBXScriptSignal<>
	CustomStatusAdded: RBXScriptSignal<string>
	CustomStatusRemoved: RBXScriptSignal<string>
	Died: RBXScriptSignal<>
	FallingDown: RBXScriptSignal<boolean>
	FreeFalling: RBXScriptSignal<boolean>
	GettingUp: RBXScriptSignal<boolean>
	HealthChanged: RBXScriptSignal<number>
	Jumping: RBXScriptSignal<boolean>
	MoveToFinished: RBXScriptSignal<boolean>
	PlatformStanding: RBXScriptSignal<boolean>
	Ragdoll: RBXScriptSignal<boolean>
	Running: RBXScriptSignal<number>
	Seated: RBXScriptSignal<boolean, Seat>
	StateChanged: RBXScriptSignal<EnumHumanoidStateType, EnumHumanoidStateType>
	StateEnabledChanged: RBXScriptSignal<EnumHumanoidStateType, boolean>
	StatusAdded: RBXScriptSignal<EnumStatus>
	StatusRemoved: RBXScriptSignal<EnumStatus>
	Strafing: RBXScriptSignal<boolean>
	Swimming: RBXScriptSignal<number>
	Touched: RBXScriptSignal<BasePart, BasePart>
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
	EmotesChanged: RBXScriptSignal<{ [any]: any }>
	EquippedEmotesChanged: RBXScriptSignal<{ any }>
end

declare class ILegacyStudioBridge extends Instance
end

declare class LegacyStudioBridge extends ILegacyStudioBridge
end

declare class IXPService extends Instance
	function ClearUserLayers(self): nil
	function GetBrowserTrackerLayerLoadingStatus(self): EnumIXPLoadingStatus
	function GetBrowserTrackerLayerVariables(self, layerName: string): { [any]: any }
	function GetUserLayerLoadingStatus(self): EnumIXPLoadingStatus
	function GetUserLayerVariables(self, layerName: string): { [any]: any }
	function InitializeUserLayers(self, userId: number): nil
	function LogBrowserTrackerLayerExposure(self, layerName: string): nil
	function LogUserLayerExposure(self, layerName: string): nil
	function RegisterUserLayers(self, userLayers: any): nil
	OnBrowserTrackerLayerLoadingStatusChanged: RBXScriptSignal<EnumIXPLoadingStatus>
	OnUserLayerLoadingStatusChanged: RBXScriptSignal<EnumIXPLoadingStatus>
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
	Manifold: boolean
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
	RigType: EnumRigType
	ScaleUnit: EnumMeshScaleUnit
	WorldForward: EnumNormalId
	WorldUp: EnumNormalId
end

declare class ImporterTextureSettings extends ImporterBaseSettings
	FilePath: string
end

declare class IncrementalPatchBuilder extends Instance
end

declare class InputObject extends Instance
	Delta: Vector3
	KeyCode: EnumKeyCode
	Position: Vector3
	UserInputState: EnumUserInputState
	UserInputType: EnumUserInputType
	function IsModifierKeyDown(self, modifierKey: EnumModifierKey): boolean
end

declare class InsertService extends Instance
	AllowClientInsertModels: boolean
	AllowInsertFreeModels: boolean
	function ApproveAssetId(self, assetId: number): nil
	function ApproveAssetVersionId(self, assetVersionId: number): nil
	function Insert(self, instance: Instance): nil
	function LoadLocalAsset(self, assetPath: string): Instance
	function LoadPackageAsset(self, url: Content): Objects
	function CreateMeshPartAsync(self, meshId: Content, collisionFidelity: EnumCollisionFidelity, renderFidelity: EnumRenderFidelity): MeshPart
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
	function AddMarker(self, marker: KeyframeMarker): nil
	function AddPose(self, pose: Pose): nil
	function GetMarkers(self): Objects
	function GetPoses(self): Objects
	function RemoveMarker(self, marker: Instance): nil
	function RemovePose(self, pose: Pose): nil
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
	function RegisterLSPCallback(self, methodToOverride: EnumLSPMethodType, callbackFunction: Function): nil
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
	Face: EnumNormalId
	Range: number
end

declare class SurfaceLight extends Light
	Angle: number
	Face: EnumNormalId
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
	Technology: EnumTechnology
	TempUseNewSkyRemovalBehaviour: boolean
	TimeOfDay: string
	function GetMinutesAfterMidnight(self): number
	function GetMoonDirection(self): Vector3
	function GetMoonPhase(self): number
	function GetSunDirection(self): Vector3
	function SetMinutesAfterMidnight(self, minutes: number): nil
	function getMinutesAfterMidnight(self): number
	function setMinutesAfterMidnight(self, minutes: number): nil
	LightingChanged: RBXScriptSignal<boolean>
end

declare class LocalStorageService extends Instance
	function Flush(self): nil
	function GetItem(self, key: string): string
	function SetItem(self, key: string, value: string): nil
	function WhenLoaded(self, callback: Function): nil
	ItemWasSet: RBXScriptSignal<string, string>
	StoreWasCleared: RBXScriptSignal<>
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
	function GetTranslatorForPlayer(self, player: Player): Translator
	function SetRobloxLocaleId(self, locale: string): nil
	function StartTextScraper(self): nil
	function StopTextScraper(self): nil
	function GetCountryRegionForPlayerAsync(self, player: Player): string
	function GetTranslatorForLocaleAsync(self, locale: string): Translator
	function GetTranslatorForPlayerAsync(self, player: Player): Translator
	function PromptDownloadGameTableToCSV(self, table: Instance): nil
	function PromptExportToCSVs(self): nil
	function PromptImportFromCSVs(self): nil
	function PromptUploadCSVToGameTable(self): Instance
	AutoTranslateWillRun: RBXScriptSignal<>
end

declare class LocalizationTable extends Instance
	DevelopmentLanguage: string
	Root: Instance
	SourceLocaleId: string
	function GetContents(self): string
	function GetEntries(self): { any }
	function GetString(self, targetLocaleId: string, key: string): string
	function GetTranslator(self, localeId: string): Translator
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
	HttpResultOut: RBXScriptSignal<{ [any]: any }>
	MessageOut: RBXScriptSignal<string, EnumMessageType>
	OnHttpResultApproved: RBXScriptSignal<boolean>
	ServerHttpResultOut: RBXScriptSignal<{ [any]: any }>
	ServerMessageOut: RBXScriptSignal<string, EnumMessageType, number>
end

declare class LoginService extends Instance
	function Logout(self): nil
	function PromptLogin(self): nil
	LoginFailed: RBXScriptSignal<string>
	LoginSucceeded: RBXScriptSignal<string>
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
	function PromptBundlePurchase(self, player: Player, bundleId: number): nil
	function PromptGamePassPurchase(self, player: Player, gamePassId: number): nil
	function PromptNativePurchase(self, player: Instance, productId: string): nil
	function PromptPremiumPurchase(self, player: Player): nil
	function PromptProductPurchase(self, player: Player, productId: number, equipIfPurchased: boolean?, currencyType: EnumCurrencyType?): nil
	function PromptPurchase(self, player: Player, assetId: number, equipIfPurchased: boolean?, currencyType: EnumCurrencyType?): nil
	function PromptRobloxPurchase(self, assetId: number, equipIfPurchased: boolean): nil
	function PromptSubscriptionCancellation(self, player: Player, subscriptionId: number): nil
	function PromptSubscriptionPurchase(self, player: Player, subscriptionId: number): nil
	function PromptThirdPartyPurchase(self, player: Instance, productId: string): nil
	function ReportAssetSale(self, assetId: string, robuxAmount: number): nil
	function ReportRobuxUpsellStarted(self): nil
	function SignalAssetTypePurchased(self, player: Instance, assetType: EnumAssetType): nil
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
	function GetDeveloperProductsAsync(self): Pages
	function GetProductInfo(self, assetId: number, infoType: EnumInfoType?): { [any]: any }
	function GetRobuxBalance(self): number
	function IsPlayerSubscribed(self, player: Player, subscriptionId: number): boolean
	function PerformPurchase(self, infoType: EnumInfoType, productId: number, expectedPrice: number, requestId: string, isRobloxPurchase: boolean): { [any]: any }
	function PlayerOwnsAsset(self, player: Player, assetId: number): boolean
	function UserOwnsGamePassAsync(self, userId: number, gamePassId: number): boolean
	ClientLuaDialogRequested: RBXScriptSignal<any>
	ClientPurchaseSuccess: RBXScriptSignal<string, number, number>
	NativePurchaseFinished: RBXScriptSignal<Player, string, boolean>
	PromptBundlePurchaseFinished: RBXScriptSignal<Instance, number, boolean>
	PromptBundlePurchaseRequested: RBXScriptSignal<Instance, number>
	PromptGamePassPurchaseFinished: RBXScriptSignal<Player, number, boolean>
	PromptGamePassPurchaseRequested: RBXScriptSignal<Player, number>
	PromptPremiumPurchaseFinished: RBXScriptSignal<>
	PromptPremiumPurchaseRequested: RBXScriptSignal<Instance>
	PromptProductPurchaseFinished: RBXScriptSignal<number, number, boolean>
	PromptProductPurchaseRequested: RBXScriptSignal<Player, number, boolean, EnumCurrencyType>
	PromptPurchaseFinished: RBXScriptSignal<Player, number, boolean>
	PromptPurchaseRequested: RBXScriptSignal<Player, number, boolean, EnumCurrencyType>
	PromptRobloxPurchaseRequested: RBXScriptSignal<number, boolean>
	PromptSubscriptionCancellationFinished: RBXScriptSignal<Player, number, boolean>
	PromptSubscriptionCancellationRequested: RBXScriptSignal<Instance, number>
	PromptSubscriptionPurchaseFinished: RBXScriptSignal<Player, number, boolean>
	PromptSubscriptionPurchaseRequested: RBXScriptSignal<Player, number>
	ServerPurchaseVerification: RBXScriptSignal<{ [any]: any }>
	ThirdPartyPurchaseFinished: RBXScriptSignal<Instance, string, string, boolean>
	ProcessReceipt: (receiptInfo: { [any]: any }) -> EnumProductPurchaseDecision
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
	function ClearOverridePartMaterial(self, material: EnumMaterial): nil
	function ClearOverrideTerrainMaterial(self, material: EnumMaterial): nil
	function GetBaseMaterialOverride(self, material: EnumMaterial): string
	function GetMaterialOverrideChanged(self, material: EnumMaterial): RBXScriptSignal
	function GetMaterialVariant(self, material: EnumMaterial, name: string): MaterialVariant
	function GetOverridePartMaterial(self, material: EnumMaterial): MaterialVariant
	function GetOverrideStatus(self, material: EnumMaterial): EnumPropertyStatus
	function GetOverrideTerrainMaterial(self, material: EnumMaterial): MaterialVariant
	function SetBaseMaterialOverride(self, material: EnumMaterial, name: string): nil
	function SetOverridePartMaterial(self, materialVariant: MaterialVariant): nil
	function SetOverrideTerrainMaterial(self, materialVariant: MaterialVariant): nil
	OverrideStatusChanged: RBXScriptSignal<EnumMaterial>
end

declare class MaterialVariant extends Instance
	BaseMaterial: EnumMaterial
	ColorMap: Content
	MaterialPattern: EnumMaterialPattern
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
	function GetRangeAsync(self, direction: EnumSortDirection, count: number, exclusiveLowerBound: string?, exclusiveUpperBound: string?): { any }
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
	TargetSurface: EnumNormalId
	UnitRay: Ray
	ViewSizeX: number
	ViewSizeY: number
	X: number
	Y: number
	hit: CFrame
	target: BasePart
	Button1Down: RBXScriptSignal<>
	Button1Up: RBXScriptSignal<>
	Button2Down: RBXScriptSignal<>
	Button2Up: RBXScriptSignal<>
	Idle: RBXScriptSignal<>
	KeyDown: RBXScriptSignal<string>
	KeyUp: RBXScriptSignal<string>
	Move: RBXScriptSignal<>
	WheelBackward: RBXScriptSignal<>
	WheelForward: RBXScriptSignal<>
	keyDown: RBXScriptSignal<string>
end

declare class PlayerMouse extends Mouse
end

declare class PluginMouse extends Mouse
	DragEnter: RBXScriptSignal<Objects>
end

declare class MouseService extends Instance
end

declare class MultipleDocumentInterfaceInstance extends Instance
	FocusedDataModelSession: Instance
	DataModelSessionEnded: RBXScriptSignal<Instance>
	DataModelSessionStarted: RBXScriptSignal<Instance>
end

declare class NetworkMarker extends Instance
	Received: RBXScriptSignal<>
end

declare class NetworkPeer extends Instance
	function SetOutgoingKBPSLimit(self, limit: number): nil
end

declare class NetworkClient extends NetworkPeer
	ConnectionAccepted: RBXScriptSignal<string, Instance>
	ConnectionFailed: RBXScriptSignal<string, number, string>
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
	RCCProfilerDataComplete: RBXScriptSignal<boolean, string>
	StatsReceived: RBXScriptSignal<{ [any]: any }>
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
	function ActionEnabled(self, actionType: EnumAppShellActionType): nil
	function ActionTaken(self, actionType: EnumAppShellActionType): nil
	function CancelAllNotification(self, userId: number): nil
	function CancelNotification(self, userId: number, alertId: number): nil
	function ScheduleNotification(self, userId: number, alertId: number, alertMsg: string, minutesToFire: number): nil
	function SwitchedToAppShellFeature(self, appShellFeature: EnumAppShellFeature): nil
	function GetScheduledNotifications(self, userId: number): { any }
	Roblox17sConnectionChanged: RBXScriptSignal<string, EnumConnectionState, string>
	Roblox17sEventReceived: RBXScriptSignal<{ [any]: any }>
	RobloxConnectionChanged: RBXScriptSignal<string, EnumConnectionState, string, string>
	RobloxEventReceived: RBXScriptSignal<{ [any]: any }>
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
	BackSurface: EnumSurfaceType
	BackSurfaceInput: EnumInputType
	BottomParamA: number
	BottomParamB: number
	BottomSurface: EnumSurfaceType
	BottomSurfaceInput: EnumInputType
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
	FrontSurface: EnumSurfaceType
	FrontSurfaceInput: EnumInputType
	LeftParamA: number
	LeftParamB: number
	LeftSurface: EnumSurfaceType
	LeftSurfaceInput: EnumInputType
	LocalTransparencyModifier: number
	Locked: boolean
	Mass: number
	Massless: boolean
	Material: EnumMaterial
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
	RightSurface: EnumSurfaceType
	RightSurfaceInput: EnumInputType
	RootPriority: number
	RotVelocity: Vector3
	Rotation: Vector3
	Size: Vector3
	SpecificGravity: number
	TopParamA: number
	TopParamB: number
	TopSurface: EnumSurfaceType
	TopSurfaceInput: EnumInputType
	Transparency: number
	Velocity: Vector3
	brickColor: BrickColor
	function ApplyAngularImpulse(self, impulse: Vector3): nil
	function ApplyImpulse(self, impulse: Vector3): nil
	function ApplyImpulseAtPosition(self, impulse: Vector3, position: Vector3): nil
	function BreakJoints(self): nil
	function CanCollideWith(self, part: BasePart): boolean
	function CanSetNetworkOwnership(self): (boolean, string)
	function GetConnectedParts(self, recursive: boolean?): Objects
	function GetJoints(self): Objects
	function GetMass(self): number
	function GetNetworkOwner(self): Player
	function GetNetworkOwnershipAuto(self): boolean
	function GetRenderCFrame(self): CFrame
	function GetRootPart(self): BasePart
	function GetTouchingParts(self): Objects
	function GetVelocityAtPosition(self, position: Vector3): Vector3
	function IsGrounded(self): boolean
	function MakeJoints(self): nil
	function Resize(self, normalId: EnumNormalId, deltaAmount: number): boolean
	function SetNetworkOwner(self, playerInstance: Player?): nil
	function SetNetworkOwnershipAuto(self): nil
	function breakJoints(self): nil
	function getMass(self): number
	function makeJoints(self): nil
	function resize(self, normalId: EnumNormalId, deltaAmount: number): boolean
	function SubtractAsync(self, parts: Objects, collisionfidelity: EnumCollisionFidelity?, renderFidelity: EnumRenderFidelity?): UnionOperation
	function UnionAsync(self, parts: Objects, collisionfidelity: EnumCollisionFidelity?, renderFidelity: EnumRenderFidelity?): UnionOperation
	LocalSimulationTouched: RBXScriptSignal<BasePart>
	OutfitChanged: RBXScriptSignal<>
	StoppedTouching: RBXScriptSignal<BasePart>
	TouchEnded: RBXScriptSignal<BasePart>
	Touched: RBXScriptSignal<BasePart>
end

declare class CornerWedgePart extends BasePart
end

declare class FormFactorPart extends BasePart
	FormFactor: EnumFormFactor
	formFactor: EnumFormFactor
end

declare class Part extends FormFactorPart
	Shape: EnumPartType
end

declare class FlagStand extends Part
	TeamColor: BrickColor
	FlagCaptured: RBXScriptSignal<Instance>
end

declare class Platform extends Part
end

declare class Seat extends Part
	Disabled: boolean
	Occupant: Humanoid
	function Sit(self, humanoid: Humanoid): nil
end

declare class SkateboardPlatform extends Part
	Controller: SkateboardController
	ControllingHumanoid: Humanoid
	Steer: number
	StickyWheels: boolean
	Throttle: number
	function ApplySpecificImpulse(self, impulseWorld: Vector3): nil
	Equipped: RBXScriptSignal<Instance, Instance>
	MoveStateChanged: RBXScriptSignal<EnumMoveState, EnumMoveState>
	Unequipped: RBXScriptSignal<Instance>
	equipped: RBXScriptSignal<Instance, Instance>
	unequipped: RBXScriptSignal<Instance>
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
	LastUsedModificationMethod: EnumTerrainAcquisitionMethod
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
	function FillBall(self, center: Vector3, radius: number, material: EnumMaterial): nil
	function FillBlock(self, cframe: CFrame, size: Vector3, material: EnumMaterial): nil
	function FillCylinder(self, cframe: CFrame, height: number, radius: number, material: EnumMaterial): nil
	function FillRegion(self, region: Region3, resolution: number, material: EnumMaterial): nil
	function FillWedge(self, cframe: CFrame, size: Vector3, material: EnumMaterial): nil
	function GetCell(self, x: number, y: number, z: number): any
	function GetMaterialColor(self, material: EnumMaterial): Color3
	function GetWaterCell(self, x: number, y: number, z: number): any
	function PasteRegion(self, region: TerrainRegion, corner: Vector3int16, pasteEmptyCells: boolean): nil
	function ReadVoxels(self, region: Region3, resolution: number): any
	function ReplaceMaterial(self, region: Region3, resolution: number, sourceMaterial: EnumMaterial, targetMaterial: EnumMaterial): nil
	function SetCell(self, x: number, y: number, z: number, material: EnumCellMaterial, block: EnumCellBlock, orientation: EnumCellOrientation): nil
	function SetCells(self, region: Region3int16, material: EnumCellMaterial, block: EnumCellBlock, orientation: EnumCellOrientation): nil
	function SetMaterialColor(self, material: EnumMaterial, value: Color3): nil
	function SetWaterCell(self, x: number, y: number, z: number, force: EnumWaterForce, direction: EnumWaterDirection): nil
	function WorldToCell(self, position: Vector3): Vector3
	function WorldToCellPreferEmpty(self, position: Vector3): Vector3
	function WorldToCellPreferSolid(self, position: Vector3): Vector3
	function WriteVoxels(self, region: Region3, resolution: number, materials: { any }, occupancy: { any }): nil
end

declare class TriangleMeshPart extends BasePart
	CollisionFidelity: EnumCollisionFidelity
end

declare class MeshPart extends TriangleMeshPart
	DoubleSided: boolean
	HasJointOffset: boolean
	HasSkinnedMesh: boolean
	JointOffset: Vector3
	MeshID: Content
	MeshId: Content
	MeshSize: Vector3
	RenderFidelity: EnumRenderFidelity
	TextureID: Content
	function ApplyMesh(self, meshPart: MeshPart): nil
end

declare class PartOperation extends TriangleMeshPart
	RenderFidelity: EnumRenderFidelity
	SmoothingAngle: number
	TriangleCount: number
	UsePartColor: boolean
end

declare class NegateOperation extends PartOperation
end

declare class UnionOperation extends PartOperation
end

declare class TrussPart extends BasePart
	Style: EnumStyle
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
	function Sit(self, humanoid: Humanoid): nil
end

declare class Model extends PVInstance
	LevelOfDetail: EnumModelLevelOfDetail
	PrimaryPart: BasePart
	World_Pivot_Orientation: Vector3
	World_Pivot_Position: Vector3
	WorldPivot: CFrame
	function BreakJoints(self): nil
	function GetBoundingBox(self): (CFrame, Vector3)
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
	function BulkMoveTo(self, partList: Objects, cframeList: { any }, eventMode: EnumBulkMoveMode?): nil
	function FindPartOnRay(self, ray: Ray, ignoreDescendantsInstance: Instance?, terrainCellsAreCubes: boolean?, ignoreWater: boolean?): (BasePart, Vector3, Vector3, EnumMaterial)
	function FindPartOnRayWithIgnoreList(self, ray: Ray, ignoreDescendantsTable: Objects, terrainCellsAreCubes: boolean?, ignoreWater: boolean?): (BasePart, Vector3, Vector3, EnumMaterial)
	function FindPartOnRayWithWhitelist(self, ray: Ray, whitelistDescendantsTable: Objects, ignoreWater: boolean?): any
	function FindPartsInRegion3(self, region: Region3, ignoreDescendantsInstance: Instance?, maxParts: number?): Objects
	function FindPartsInRegion3WithIgnoreList(self, region: Region3, ignoreDescendantsTable: Objects, maxParts: number?): Objects
	function FindPartsInRegion3WithWhiteList(self, region: Region3, whitelistDescendantsTable: Objects, maxParts: number?): Objects
	function GetPartBoundsInBox(self, cframe: CFrame, size: Vector3, overlapParams: OverlapParams?): Objects
	function GetPartBoundsInRadius(self, position: Vector3, radius: number, overlapParams: OverlapParams?): Objects
	function GetPartsInPart(self, part: BasePart, overlapParams: OverlapParams?): Objects
	function IKMoveTo(self, part: BasePart, target: CFrame, translateStiffness: number?, rotateStiffness: number?, collisionsMode: EnumIKCollisionsMode?): nil
	function IsRegion3Empty(self, region: Region3, ignoreDescendentsInstance: Instance?): boolean
	function IsRegion3EmptyWithIgnoreList(self, region: Region3, ignoreDescendentsTable: Objects): boolean
	function Raycast(self, origin: Vector3, direction: Vector3, raycastParams: RaycastParams?): RaycastResult
	function SetInsertPoint(self, point: Vector3, ignoreGrid: boolean?): nil
	function findPartOnRay(self, ray: Ray, ignoreDescendantsInstance: Instance?, terrainCellsAreCubes: boolean?, ignoreWater: boolean?): (BasePart, Vector3, Vector3, EnumMaterial)
	function findPartsInRegion3(self, region: Region3, ignoreDescendantsInstance: Instance?, maxParts: number?): Objects
end

declare class Workspace extends WorldRoot
	AllowThirdPartySales: boolean
	AnimationWeightedBlendFix: EnumNewAnimationRuntimeSetting
	ClientAnimatorThrottling: EnumClientAnimatorThrottlingMode
	CurrentCamera: Camera
	DistributedGameTime: number
	FallenPartsDestroyHeight: number
	FilteringEnabled: boolean
	GlobalWind: Vector3
	Gravity: number
	HumanoidOnlySetCollisionsOnStateChange: EnumHumanoidOnlySetCollisionsOnStateChange
	InterpolationThrottling: EnumInterpolationThrottlingMode
	MeshPartHeadsAndAccessories: EnumMeshPartHeadsAndAccessories
	PhysicsSimulationRate: EnumPhysicsSimulationRate
	PhysicsSteppingMethod: EnumPhysicsSteppingMethod
	ReplicateInstanceDestroySetting: EnumReplicateInstanceDestroySetting
	Retargeting: EnumAnimatorRetargetingMode
	SignalBehavior: EnumSignalBehavior
	StreamOutBehavior: EnumStreamOutBehavior
	StreamingEnabled: boolean
	StreamingMinRadius: number
	StreamingPauseMode: EnumStreamingPauseMode
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
	function JoinToOutsiders(self, objects: Objects, jointType: EnumJointCreationMode): nil
	function MakeJoints(self, objects: Objects): nil
	function PGSIsEnabled(self): boolean
	function SetMeshPartHeadsAndAccessories(self, value: EnumMeshPartHeadsAndAccessories): nil
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
	PermissionLevel: EnumPackagePermission
	Status: string
	VersionNumber: number
end

declare class PackageService extends Instance
end

declare class PackageUIService extends Instance
	function ConvertToPackageUpload(self, uploadUrl: string, cloneInstances: Objects, originalInstances: Objects): nil
	OnConvertToPackageResult: RBXScriptSignal<boolean, string>
	OnOpenConvertToPackagePlugin: RBXScriptSignal<Objects, string, Objects>
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
	EmissionDirection: EnumNormalId
	Enabled: boolean
	FlipbookFramerate: NumberRange
	FlipbookIncompatible: string
	FlipbookLayout: EnumParticleFlipbookLayout
	FlipbookMode: EnumParticleFlipbookMode
	FlipbookStartRandom: boolean
	Lifetime: NumberRange
	LightEmission: number
	LightInfluence: number
	LockedToPart: boolean
	Orientation: EnumParticleOrientation
	Rate: number
	RotSpeed: NumberRange
	Rotation: NumberRange
	Shape: EnumParticleEmitterShape
	ShapeInOut: EnumParticleEmitterShapeInOut
	ShapePartial: number
	ShapeStyle: EnumParticleEmitterShapeStyle
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
	Status: EnumPathStatus
	function GetPointCoordinates(self): { any }
	function GetWaypoints(self): { any }
	function CheckOcclusionAsync(self, start: number): number
	function ComputeAsync(self, start: Vector3, finish: Vector3): nil
	Blocked: RBXScriptSignal<number>
	Unblocked: RBXScriptSignal<number>
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
	function CreatePath(self, agentParameters: { [any]: any }?): Path
	function ComputeRawPathAsync(self, start: Vector3, finish: Vector3, maxDistance: number): Instance
	function ComputeSmoothPathAsync(self, start: Vector3, finish: Vector3, maxDistance: number): Instance
	function FindPathAsync(self, start: Vector3, finish: Vector3): Path
end

declare class PausedState extends Instance
	AllThreadsPaused: boolean
	Reason: EnumDebuggerPauseReason
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
	PhysicsEnvironmentalThrottle: EnumEnviromentalPhysicsThrottle
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
	CameraMode: EnumCameraMode
	CanLoadCharacterAppearance: boolean
	Character: Model
	CharacterAppearance: string
	CharacterAppearanceId: number
	ChatMode: EnumChatMode
	DataComplexity: number
	DataComplexityLimit: number
	DataReady: boolean
	DevCameraOcclusionMode: EnumDevCameraOcclusionMode
	DevComputerCameraMode: EnumDevComputerCameraMovementMode
	DevComputerMovementMode: EnumDevComputerMovementMode
	DevEnableMouseLock: boolean
	DevTouchCameraMode: EnumDevTouchCameraMovementMode
	DevTouchMovementMode: EnumDevTouchMovementMode
	DisplayName: string
	FollowUserId: number
	GameplayPaused: boolean
	Guest: boolean
	HealthDisplayDistance: number
	LocaleId: string
	MaximumSimulationRadius: number
	MembershipType: EnumMembershipType
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
	function GetFriendStatus(self, player: Player): EnumFriendStatus
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
	function SetMembershipType(self, membershipType: EnumMembershipType): nil
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
	CharacterAdded: RBXScriptSignal<Model>
	CharacterAppearanceLoaded: RBXScriptSignal<Model>
	CharacterRemoving: RBXScriptSignal<Model>
	Chatted: RBXScriptSignal<string, Player>
	FriendStatusChanged: RBXScriptSignal<Player, EnumFriendStatus>
	Idled: RBXScriptSignal<number>
	OnTeleport: RBXScriptSignal<EnumTeleportState, number, string>
	SimulationRadiusChanged: RBXScriptSignal<number>
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
	function RegisterComputerCameraMovementMode(self, cameraMovementMode: EnumComputerCameraMovementMode): nil
	function RegisterComputerMovementMode(self, movementMode: EnumComputerMovementMode): nil
	function RegisterTouchCameraMovementMode(self, cameraMovementMode: EnumTouchCameraMovementMode): nil
	function RegisterTouchMovementMode(self, movementMode: EnumTouchMovementMode): nil
	ComputerCameraMovementModeRegistered: RBXScriptSignal<>
	ComputerMovementModeRegistered: RBXScriptSignal<>
	TouchCameraMovementModeRegistered: RBXScriptSignal<>
	TouchMovementModeRegistered: RBXScriptSignal<>
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
	function SetChatStyle(self, style: EnumChatStyle?): nil
	function SetLocalPlayerInfo(self, userId: number, userName: string, displayName: string, membershipType: EnumMembershipType, isUnder13: boolean): nil
	function TeamChat(self, message: string): nil
	function WhisperChat(self, message: string, player: Instance): nil
	function getPlayers(self): Objects
	function playerFromCharacter(self, character: Model): Player
	function players(self): Objects
	function CreateHumanoidModelFromDescription(self, description: HumanoidDescription, rigType: EnumHumanoidRigType, assetTypeVerification: EnumAssetTypeVerification?): Model
	function CreateHumanoidModelFromUserId(self, userId: number): Model
	function GetCharacterAppearanceAsync(self, userId: number): Model
	function GetCharacterAppearanceInfoAsync(self, userId: number): { [any]: any }
	function GetFriendsAsync(self, userId: number): FriendPages
	function GetHumanoidDescriptionFromOutfitId(self, outfitId: number): HumanoidDescription
	function GetHumanoidDescriptionFromUserId(self, userId: number): HumanoidDescription
	function GetNameFromUserIdAsync(self, userId: number): string
	function GetUserIdFromNameAsync(self, userName: string): number
	function GetUserThumbnailAsync(self, userId: number, thumbnailType: EnumThumbnailType, thumbnailSize: EnumThumbnailSize): (string, boolean)
	FriendRequestEvent: RBXScriptSignal<Player, Player, EnumFriendRequestEvent>
	GameAnnounce: RBXScriptSignal<string>
	PlayerAdded: RBXScriptSignal<Player>
	PlayerChatted: RBXScriptSignal<EnumPlayerChatType, Player, string, Player>
	PlayerConnecting: RBXScriptSignal<Player>
	PlayerDisconnecting: RBXScriptSignal<Player>
	PlayerMembershipChanged: RBXScriptSignal<Player>
	PlayerRejoining: RBXScriptSignal<Player>
	PlayerRemoving: RBXScriptSignal<Player>
end

declare class Plugin extends Instance
	CollisionEnabled: boolean
	GridSize: number
	HostDataModelType: EnumStudioDataModelType
	HostDataModelTypeIsCurrent: boolean
	MultipleDocumentInterfaceInstance: MultipleDocumentInterfaceInstance
	UsesAssetInsertionDrag: boolean
	function Activate(self, exclusiveMouse: boolean): nil
	function CreatePluginAction(self, actionId: string, text: string, statusTip: string, iconName: string?, allowBinding: boolean?): PluginAction
	function CreatePluginMenu(self, id: string, title: string?, icon: string?): PluginMenu
	function CreateToolbar(self, name: string): PluginToolbar
	function Deactivate(self): nil
	function GetItem(self, key: string, defaultValue: any): any
	function GetJoinMode(self): EnumJointCreationMode
	function GetMouse(self): PluginMouse
	function GetSelectedRibbonTool(self): EnumRibbonTool
	function GetSetting(self, key: string): any
	function GetStudioUserId(self): number
	function Invoke(self, key: string, arguments: any): nil
	function IsActivated(self): boolean
	function IsActivatedWithExclusiveMouse(self): boolean
	function Negate(self, objects: Objects): Objects
	function OnInvoke(self, key: string, callback: Function): Instance
	function OnSetItem(self, key: string, callback: Function): Instance
	function OpenScript(self, script: BaseScript, lineNumber: number?): nil
	function OpenWikiPage(self, url: string): nil
	function PauseSound(self, sound: Instance): nil
	function PlaySound(self, sound: Instance, normalizedTimePosition: number?): nil
	function ResumeSound(self, sound: Instance): nil
	function SaveSelectedToRoblox(self): nil
	function SelectRibbonTool(self, tool: EnumRibbonTool, position: UDim2): nil
	function Separate(self, objects: Objects): Objects
	function SetItem(self, key: string, value: any): nil
	function SetReady(self): nil
	function SetSetting(self, key: string, value: any): nil
	function StartDecalDrag(self, decal: Instance): nil
	function StartDrag(self, dragData: { [any]: any }): nil
	function StopAllSounds(self): nil
	function Union(self, objects: Objects): UnionOperation
	function CreateDockWidgetPluginGui(self, pluginGuiId: string, dockWidgetPluginGuiInfo: DockWidgetPluginGuiInfo): DockWidgetPluginGui
	function CreateQWidgetPluginGui(self, pluginGuiId: string, pluginGuiOptions: { [any]: any }): QWidgetPluginGui
	function ImportFbxAnimation(self, rigModel: Instance, isR15: boolean?): Instance
	function ImportFbxRig(self, isR15: boolean?): Instance
	function PromptForExistingAssetId(self, assetType: string): number
	function PromptSaveSelection(self, suggestedFileName: string?): boolean
	Deactivation: RBXScriptSignal<>
	Ready: RBXScriptSignal<>
	Unloading: RBXScriptSignal<>
end

declare class PluginAction extends Instance
	ActionId: string
	AllowBinding: boolean
	Checked: boolean
	DefaultShortcut: string
	Enabled: boolean
	StatusTip: string
	Text: string
	Triggered: RBXScriptSignal<>
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
	function AddAction(self, action: PluginAction): nil
	function AddMenu(self, menu: PluginMenu): nil
	function AddNewAction(self, actionId: string, text: string, icon: string?): PluginAction
	function AddSeparator(self): nil
	function Clear(self): nil
	function ShowAsync(self): PluginAction
end

declare class PluginPolicyService extends Instance
	function GetPluginPolicy(self, pluginName: string): { [any]: any }
end

declare class PluginToolbar extends Instance
	function CreateButton(self, buttonId: string, tooltip: string, iconname: string, text: string?): PluginToolbarButton
end

declare class PluginToolbarButton extends Instance
	ClickableWhenViewportHidden: boolean
	Enabled: boolean
	Icon: Content
	function SetActive(self, active: boolean): nil
	Click: RBXScriptSignal<>
end

declare class PointsService extends Instance
	function GetAwardablePoints(self): number
	function AwardPoints(self, userId: number, amount: number): any
	function GetGamePointBalance(self, userId: number): number
	function GetPointBalance(self, userId: number): number
	PointsAwarded: RBXScriptSignal<number, number, number, number>
end

declare class PolicyService extends Instance
	IsLuobuServer: EnumTriStateBoolean
	LuobuWhitelisted: EnumTriStateBoolean
	function GetPolicyInfoForPlayerAsync(self, player: Player): { [any]: any }
	function GetPolicyInfoForServerRobloxOnlyAsync(self): { [any]: any }
end

declare class PoseBase extends Instance
	EasingDirection: EnumPoseEasingDirection
	EasingStyle: EnumPoseEasingStyle
	Weight: number
end

declare class NumberPose extends PoseBase
	Value: number
end

declare class Pose extends PoseBase
	CFrame: CFrame
	MaskWeight: number
	function AddSubPose(self, pose: Pose): nil
	function GetSubPoses(self): Objects
	function RemoveSubPose(self, pose: Pose): nil
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
	Exclusivity: EnumProximityPromptExclusivity
	GamepadKeyCode: EnumKeyCode
	HoldDuration: number
	KeyboardKeyCode: EnumKeyCode
	MaxActivationDistance: number
	ObjectText: string
	RequiresLineOfSight: boolean
	RootLocalizationTable: LocalizationTable
	Style: EnumProximityPromptStyle
	UIOffset: Vector2
	function InputHoldBegin(self): nil
	function InputHoldEnd(self): nil
	PromptButtonHoldBegan: RBXScriptSignal<Player>
	PromptButtonHoldEnded: RBXScriptSignal<Player>
	PromptHidden: RBXScriptSignal<>
	PromptShown: RBXScriptSignal<EnumProximityPromptInputType>
	TriggerEnded: RBXScriptSignal<Player>
	Triggered: RBXScriptSignal<Player>
end

declare class ProximityPromptService extends Instance
	Enabled: boolean
	MaxPromptsVisible: number
	PromptButtonHoldBegan: RBXScriptSignal<ProximityPrompt, Player>
	PromptButtonHoldEnded: RBXScriptSignal<ProximityPrompt, Player>
	PromptHidden: RBXScriptSignal<ProximityPrompt>
	PromptShown: RBXScriptSignal<ProximityPrompt, EnumProximityPromptInputType>
	PromptTriggerEnded: RBXScriptSignal<ProximityPrompt, Player>
	PromptTriggered: RBXScriptSignal<ProximityPrompt, Player>
end

declare class PublishService extends Instance
	function PublishDescendantAssets(self, instance: Instance): boolean
	function PublishCageMeshAsync(self, wrap: Instance, cageType: EnumCageType): Content
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
	OnClientEvent: RBXScriptSignal<any>
	OnServerEvent: RBXScriptSignal<Player, any>
end

declare class RemoteFunction extends Instance
	function InvokeClient(self, player: Player, arguments: any): any
	function InvokeServer(self, arguments: any): any
	OnClientInvoke: (arguments: any) -> any
	OnServerInvoke: (player: Player, arguments: any) -> any
end

declare class RenderSettings extends Instance
	AutoFRMLevel: number
	EagerBulkExecution: boolean
	EditQualityLevel: EnumQualityLevel
	EnableFRM: boolean
	ExportMergeByMaterial: boolean
	FrameRateManager: EnumFramerateManagerMode
	GraphicsMode: EnumGraphicsMode
	MeshCacheSize: number
	MeshPartDetailLevel: EnumMeshPartDetailLevel
	QualityLevel: EnumQualityLevel
	ReloadAssets: boolean
	RenderCSGTrianglesDebug: boolean
	ShowBoundingBoxes: boolean
	function GetMaxQualityLevel(self): number
end

declare class RenderingTest extends Instance
	CFrame: CFrame
	ComparisonDiffThreshold: number
	ComparisonMethod: EnumRenderingTestComparisonMethod
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
	DefaultLoadingGuiRemoved: RBXScriptSignal<>
	FinishedReplicating: RBXScriptSignal<>
	RemoveDefaultLoadingGuiSignal: RBXScriptSignal<>
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
	Heartbeat: RBXScriptSignal<number>
	PostSimulation: RBXScriptSignal<number>
	PreAnimation: RBXScriptSignal<number>
	PreRender: RBXScriptSignal<number>
	PreSimulation: RBXScriptSignal<number>
	RenderStepped: RBXScriptSignal<number>
	Stepped: RBXScriptSignal<number, number>
end

declare class RuntimeScriptService extends Instance
end

declare class ScriptChangeService extends Instance
	ScriptAdded: RBXScriptSignal<LuaSourceContainer>
	ScriptBeingRemoved: RBXScriptSignal<LuaSourceContainer>
	ScriptChanged: RBXScriptSignal<LuaSourceContainer, string>
	ScriptFullNameChanged: RBXScriptSignal<LuaSourceContainer>
	ScriptSourceChanged: RBXScriptSignal<LuaSourceContainer>
	ScriptSourceEdited: RBXScriptSignal<LuaSourceContainer, { any }>
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
	Error: RBXScriptSignal<string, string, Instance>
	ErrorDetailed: RBXScriptSignal<string, string, Instance, string, number>
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
	BreakpointAdded: RBXScriptSignal<Instance>
	BreakpointRemoved: RBXScriptSignal<Instance>
	EncounteredBreak: RBXScriptSignal<number, EnumBreakReason>
	Resuming: RBXScriptSignal<>
	WatchAdded: RBXScriptSignal<Instance>
	WatchRemoved: RBXScriptSignal<Instance>
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
	SelectionChanged: RBXScriptSignal<>
end

declare class ServerScriptService extends Instance
	LoadStringEnabled: boolean
end

declare class ServerStorage extends Instance
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
	function PromptGameInvite(self, player: Player): nil
	function CanSendGameInviteAsync(self, player: Player): boolean
	GameInvitePromptClosed: RBXScriptSignal<Instance, { any }>
	PromptInviteRequested: RBXScriptSignal<Instance>
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
	RollOffMode: EnumRollOffMode
	SoundGroup: SoundGroup
	SoundId: Content
	TimeLength: number
	TimePosition: number
	UsageContextPermission: EnumUsageContext
	Volume: number
	isPlaying: boolean
	function Pause(self): nil
	function Play(self): nil
	function Resume(self): nil
	function Stop(self): nil
	function pause(self): nil
	function play(self): nil
	function stop(self): nil
	DidLoop: RBXScriptSignal<string, number>
	Ended: RBXScriptSignal<string>
	Loaded: RBXScriptSignal<string>
	Paused: RBXScriptSignal<string>
	Played: RBXScriptSignal<string>
	Resumed: RBXScriptSignal<string>
	Stopped: RBXScriptSignal<string>
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
	AmbientReverb: EnumReverbType
	DistanceFactor: number
	DopplerScale: number
	RespectFilteringEnabled: boolean
	RolloffScale: number
	function BeginRecording(self): boolean
	function GetListener(self): (EnumListenerType, any)
	function GetOutputDevice(self): any
	function GetOutputDevices(self): any
	function GetSoundMemoryData(self): { [any]: any }
	function PlayLocalSound(self, sound: Sound): nil
	function SetListener(self, listenerType: EnumListenerType, listener: any): nil
	function SetOutputDevice(self, name: string, guid: string): nil
	function SetRecordingDevice(self, deviceIndex: number): boolean
	function EndRecording(self): { [any]: any }
	function GetRecordingDevices(self): { [any]: any }
	DeviceListChanged: RBXScriptSignal<any>
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
	RollOffMode: EnumRollOffMode
	SoundGroup: SoundGroup
	Source: Instance
	Volume: number
end

declare class StackFrame extends Instance
	FrameId: number
	FrameName: string
	FrameType: EnumDebuggerFrameType
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
	CameraMode: EnumCameraMode
	CharacterJumpHeight: number
	CharacterJumpPower: number
	CharacterMaxSlopeAngle: number
	CharacterUseJumpPower: boolean
	CharacterWalkSpeed: number
	DevCameraOcclusionMode: EnumDevCameraOcclusionMode
	DevComputerCameraMovementMode: EnumDevComputerCameraMovementMode
	DevComputerMovementMode: EnumDevComputerMovementMode
	DevTouchCameraMovementMode: EnumDevTouchCameraMovementMode
	DevTouchMovementMode: EnumDevTouchMovementMode
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
	GameSettingsAvatar: EnumGameAvatarType
	GameSettingsR15Collision: EnumR15CollisionType
	GameSettingsScaleRangeBodyType: NumberRange
	GameSettingsScaleRangeHead: NumberRange
	GameSettingsScaleRangeHeight: NumberRange
	GameSettingsScaleRangeProportion: NumberRange
	GameSettingsScaleRangeWidth: NumberRange
	HealthDisplayDistance: number
	LoadCharacterAppearance: boolean
	LoadCharacterLayeredClothing_: EnumLoadCharacterLayeredClothing
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
	function GetMemoryUsageMbForTag(self, tag: EnumDeveloperMemoryTag): number
	function GetTotalMemoryUsageMb(self): number
	function GetPaginatedMemoryByTexture(self, queryType: EnumTextureQueryType, pageIndex: number, pageSize: number): { [any]: any }
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
	Auto_Indent_Rule: EnumAutoIndentRule
	AutoRecovery_Enabled: boolean
	AutoRecovery_Interval_Minutes: number
	AutoRecovery_Path: QDir
	Background_Color: Color3
	Basic_Objects_Display_Mode: EnumListDisplayMode
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
	Hover_Animate_Speed: EnumHoverAnimateSpeed
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
	Output_Layout_Mode: EnumOutputLayoutMode
	OverrideCoreScripts: boolean
	OverrideCoreScriptsDir: QDir
	PermissionLevelShown: EnumPermissionLevelShown
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
	RuntimeUndoBehavior: EnumRuntimeUndoBehavior
	Script_Editor_Color_Preset: EnumStudioScriptEditorColorPresets
	Script_Editor_Scrollbar_Background_Color: Color3
	Script_Editor_Scrollbar_Handle_Color: Color3
	ScriptEditorMenuBorderColor: Color3
	ScriptEditorShouldShowPluginMethods: boolean
	ScriptTimeoutLength: number
	Scroll_Past_Last_Line: boolean
	Search_Content_For_Core_Scripts: boolean
	Secondary_Text_Color: Color3
	Select_Color: Color3
	Select_Hover_Color: Color3
	Selected_Menu_Item_Background_Color: Color3
	Selected_Text_Color: Color3
	Selection_Background_Color: Color3
	Selection_Color: Color3
	Selection_Highlight_Thickness: number
	Server_Audio_Behavior: EnumServerAudioBehavior
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
	UI_Theme: EnumUITheme
	Use_Bounding_Box_Move_Handles: boolean
	Warning_Color: Color3
	Whitespace_Color: Color3
	function GetAvailableThemes(self): { any }
	ThemeChanged: RBXScriptSignal<>
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
	function GetCurrentOrientation(self): EnumScreenOrientation
	function HasDeviceWithId(self, deviceId: string): boolean
	function SetCurrentDeviceId(self, deviceId: string): nil
	function SetCurrentOrientation(self, orientation: EnumScreenOrientation): nil
	CurrentDeviceIdChanged: RBXScriptSignal<>
	OrientationChanged: RBXScriptSignal<>
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
	function CopyToClipboard(self, stringToCopy: string): nil
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
	function RequestClose(self, closeMode: EnumStudioCloseMode): nil
	function SetPluginEnabled(self, assetId: number, state: boolean): nil
	function SetUniverseDisplayName(self, newName: string): nil
	function ShowPlaceVersionHistoryDialog(self, placeId: number): nil
	function ShowPublishToRoblox(self): nil
	function ShowSaveOrPublishPlaceToRoblox(self, showGameSelect: boolean, isPublish: boolean, closeMode: EnumStudioCloseMode): nil
	function UninstallPlugin(self, assetId: number): nil
	function UpdatePluginManagement(self): nil
	function PromptImportFile(self, fileTypeFilter: { any }?): Instance
	function PromptImportFiles(self, fileTypeFilter: { any }?): Objects
	function TryInstallPlugin(self, assetId: number, assetVersionId: number): nil
	GameNameUpdated: RBXScriptSignal<string>
	GamePublishFinished: RBXScriptSignal<boolean, number>
	OnImportFromRoblox: RBXScriptSignal<>
	OnOpenGameSettings: RBXScriptSignal<string>
	OnOpenManagePackagePlugin: RBXScriptSignal<number, number>
	OnPluginInstalledFromToolbox: RBXScriptSignal<>
	OnPluginInstalledFromWeb: RBXScriptSignal<string>
	OnPublishAsPlugin: RBXScriptSignal<Objects>
	OnPublishPlaceToRoblox: RBXScriptSignal<boolean>
	OnSaveOrPublishPlaceToRoblox: RBXScriptSignal<boolean, boolean, EnumStudioCloseMode>
	OnSaveToRoblox: RBXScriptSignal<Objects>
	PromptTransformPluginCheckEnable: RBXScriptSignal<>
	SaveLocallyAsComplete: RBXScriptSignal<boolean>
end

declare class StudioTheme extends Instance
	function GetColor(self, styleguideitem: EnumStudioStyleGuideColor, modifier: EnumStudioStyleGuideModifier?): Color3
end

declare class SurfaceAppearance extends Instance
	AlphaMode: EnumAlphaMode
	ColorMap: Content
	MetalnessMap: Content
	NormalMap: Content
	RoughnessMap: Content
	TexturePack: Content
end

declare class TaskScheduler extends Instance
	SchedulerDutyCycle: number
	SchedulerRate: number
	ThreadPoolConfig: EnumThreadPoolConfig
	ThreadPoolSize: number
end

declare class Team extends Instance
	AutoAssignable: boolean
	AutoColorCharacters: boolean
	ChildOrder: number
	Score: number
	TeamColor: BrickColor
	function GetPlayers(self): Objects
	PlayerAdded: RBXScriptSignal<Player>
	PlayerRemoved: RBXScriptSignal<Player>
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
	function GetArrivingTeleportGui(self): ScreenGui
	function GetLocalPlayerTeleportData(self): any
	function GetTeleportSetting(self, setting: string): any
	function SetTeleportGui(self, gui: GuiObject): nil
	function SetTeleportSetting(self, setting: string, value: any): nil
	function Teleport(self, placeId: number, player: Player?, teleportData: any, customLoadingScreen: GuiObject?): nil
	function TeleportCancel(self): nil
	function TeleportToPlaceInstance(self, placeId: number, instanceId: string, player: Player?, spawnName: string?, teleportData: any, customLoadingScreen: GuiObject?): nil
	function TeleportToPrivateServer(self, placeId: number, reservedServerAccessCode: string, players: Objects, spawnName: string?, teleportData: any, customLoadingScreen: GuiObject?): nil
	function TeleportToSpawnByName(self, placeId: number, spawnName: string, player: Player?, teleportData: any, customLoadingScreen: GuiObject?): nil
	function GetPlayerPlaceInstanceAsync(self, userId: number): (boolean, number, string)
	function ReserveServer(self, placeId: number): any
	function TeleportAsync(self, placeId: number, players: Objects, teleportOptions: Instance?): TeleportAsyncResult
	function TeleportPartyAsync(self, placeId: number, players: Objects, teleportData: any, customLoadingScreen: GuiObject?): string
	LocalPlayerArrivedFromTeleport: RBXScriptSignal<Instance, any>
	TeleportInitFailed: RBXScriptSignal<Instance, EnumTeleportResult, string, number, Instance>
end

declare class TemporaryCageMeshProvider extends Instance
end

declare class TemporaryScriptService extends Instance
end

declare class TerrainDetail extends Instance
	ColorMap: Content
	Face: EnumTerrainFace
	MaterialPattern: EnumMaterialPattern
	MetalnessMap: Content
	NormalMap: Content
	RoughnessMap: Content
	StudsPerTile: number
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
	ServerCollectConditionalResult: RBXScriptSignal<boolean, string, Instance, number>
	ServerCollectResult: RBXScriptSignal<string, Instance, number>
end

declare class TextBoxService extends Instance
end

declare class TextChannel extends Instance
	function DisplaySystemMessage(self, systemMessage: string, metadata: string?): TextChatMessage
	function SendAsync(self, message: string, metadata: string?): TextChatMessage
	function AddUserAsync(self, userId: number): any
	MessageReceived: RBXScriptSignal<TextChatMessage>
	OnIncomingMessage: (message: TextChatMessage) -> any
end

declare class TextChatCommand extends Instance
	Enabled: boolean
	PrimaryAlias: string
	SecondaryAlias: string
	Triggered: RBXScriptSignal<TextSource, string>
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
	Status: EnumTextChatMessageStatus
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
	ChatVersion: EnumChatVersion
	CreateDefaultCommands: boolean
	CreateDefaultTextChannels: boolean
	MessageReceived: RBXScriptSignal<TextChatMessage>
	SendingMessage: RBXScriptSignal<TextChatMessage>
	OnIncomingMessage: (message: TextChatMessage) -> any
end

declare class TextFilterResult extends Instance
	function GetChatForUserAsync(self, toUserId: number): string
	function GetNonChatStringForBroadcastAsync(self): string
	function GetNonChatStringForUserAsync(self, toUserId: number): string
end

declare class TextService extends Instance
	function GetTextSize(self, string: string, fontSize: number, font: EnumFont, frameSize: Vector2): Vector2
	function SetResolutionScale(self, scale: number): nil
	function FilterStringAsync(self, stringToFilter: string, fromUserId: number, textContext: EnumTextFilterContext?): Instance
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
	function RegisterActiveUser(self, gamepadId: EnumUserInputType): number
	ActiveGamepadAdded: RBXScriptSignal<>
	ActiveGamepadRemoved: RBXScriptSignal<>
	ActiveUserSignedOut: RBXScriptSignal<number>
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
	TextureMode: EnumTextureMode
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
	PlaybackState: EnumPlaybackState
	function Cancel(self): nil
	function Pause(self): nil
	function Play(self): nil
	Completed: RBXScriptSignal<EnumPlaybackState>
end

declare class Tween extends TweenBase
	Instance: Instance
	TweenInfo: TweenInfo
end

declare class TweenService extends Instance
	function Create(self, instance: Instance, tweenInfo: TweenInfo, propertyTable: { [any]: any }): Tween
	function GetValue(self, alpha: number, easingStyle: EnumEasingStyle, easingDirection: EnumEasingDirection): number
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
	AspectType: EnumAspectType
	DominantAxis: EnumDominantAxis
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
	FillDirection: EnumFillDirection
	HorizontalAlignment: EnumHorizontalAlignment
	SortOrder: EnumSortOrder
	VerticalAlignment: EnumVerticalAlignment
	function ApplyLayout(self): nil
	function SetCustomSortFunction(self, func: Function?): nil
end

declare class UIGridLayout extends UIGridStyleLayout
	AbsoluteCellCount: Vector2
	AbsoluteCellSize: Vector2
	CellPadding: UDim2
	CellSize: UDim2
	FillDirectionMaxCells: number
	StartCorner: EnumStartCorner
end

declare class UIListLayout extends UIGridStyleLayout
	Padding: UDim
end

declare class UIPageLayout extends UIGridStyleLayout
	Animated: boolean
	Circular: boolean
	CurrentPage: GuiObject
	EasingDirection: EnumEasingDirection
	EasingStyle: EnumEasingStyle
	GamepadInputEnabled: boolean
	Padding: UDim
	ScrollWheelInputEnabled: boolean
	TouchInputEnabled: boolean
	TweenTime: number
	function JumpTo(self, page: Instance): nil
	function JumpToIndex(self, index: number): nil
	function Next(self): nil
	function Previous(self): nil
	PageEnter: RBXScriptSignal<Instance>
	PageLeave: RBXScriptSignal<Instance>
	Stopped: RBXScriptSignal<Instance>
end

declare class UITableLayout extends UIGridStyleLayout
	FillEmptySpaceColumns: boolean
	FillEmptySpaceRows: boolean
	MajorAxis: EnumTableMajorAxis
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
	ApplyStrokeMode: EnumApplyStrokeMode
	Color: Color3
	Enabled: boolean
	LineJoinMode: EnumLineJoinMode
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
	CameraMode: EnumCustomCameraMode
	CameraYInverted: boolean
	ChatVisible: boolean
	ComputerCameraMovementMode: EnumComputerCameraMovementMode
	ComputerMovementMode: EnumComputerMovementMode
	ControlMode: EnumControlMode
	DefaultCameraID: string
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
	RotationType: EnumRotationType
	SavedQualityLevel: EnumSavedQualitySetting
	StartMaximized: boolean
	StartScreenPosition: Vector2
	StartScreenSize: Vector2
	TouchCameraMovementMode: EnumTouchCameraMovementMode
	TouchMovementMode: EnumTouchMovementMode
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
	FullscreenChanged: RBXScriptSignal<boolean>
	PerformanceStatsVisibleChanged: RBXScriptSignal<boolean>
	StudioModeChanged: RBXScriptSignal<boolean>
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
	MouseBehavior: EnumMouseBehavior
	MouseDeltaSensitivity: number
	MouseEnabled: boolean
	MouseIconEnabled: boolean
	NavBarSize: Vector2
	OnScreenKeyboardAnimationDuration: number
	OnScreenKeyboardPosition: Vector2
	OnScreenKeyboardSize: Vector2
	OnScreenKeyboardVisible: boolean
	OverrideMouseIconBehavior: EnumOverrideMouseIconBehavior
	RightBarSize: Vector2
	StatusBarSize: Vector2
	TouchEnabled: boolean
	UserHeadCFrame: CFrame
	VREnabled: boolean
	function GamepadSupports(self, gamepadNum: EnumUserInputType, gamepadKeyCode: EnumKeyCode): boolean
	function GetConnectedGamepads(self): { any }
	function GetDeviceAcceleration(self): InputObject
	function GetDeviceGravity(self): InputObject
	function GetDeviceRotation(self): (number, CFrame)
	function GetDeviceType(self): EnumDeviceType
	function GetFocusedTextBox(self): TextBox
	function GetGamepadConnected(self, gamepadNum: EnumUserInputType): boolean
	function GetGamepadState(self, gamepadNum: EnumUserInputType): { any }
	function GetKeysPressed(self): { any }
	function GetLastInputType(self): EnumUserInputType
	function GetMouseButtonsPressed(self): { any }
	function GetMouseDelta(self): Vector2
	function GetMouseLocation(self): Vector2
	function GetNavigationGamepads(self): { any }
	function GetPlatform(self): EnumPlatform
	function GetStringForKeyCode(self, keyCode: EnumKeyCode): string
	function GetSupportedGamepadKeyCodes(self, gamepadNum: EnumUserInputType): { any }
	function GetUserCFrame(self, type: EnumUserCFrame): CFrame
	function IsGamepadButtonDown(self, gamepadNum: EnumUserInputType, gamepadKeyCode: EnumKeyCode): boolean
	function IsKeyDown(self, keyCode: EnumKeyCode): boolean
	function IsMouseButtonPressed(self, mouseButton: EnumUserInputType): boolean
	function IsNavigationGamepad(self, gamepadEnum: EnumUserInputType): boolean
	function RecenterUserHeadCFrame(self): nil
	function SendAppUISizes(self, statusBarSize: Vector2, navBarSize: Vector2, bottomBarSize: Vector2, rightBarSize: Vector2): nil
	function SetNavigationGamepad(self, gamepadEnum: EnumUserInputType, enabled: boolean): nil
	DeviceAccelerationChanged: RBXScriptSignal<InputObject>
	DeviceGravityChanged: RBXScriptSignal<InputObject>
	DeviceRotationChanged: RBXScriptSignal<InputObject, CFrame>
	GamepadConnected: RBXScriptSignal<EnumUserInputType>
	GamepadDisconnected: RBXScriptSignal<EnumUserInputType>
	InputBegan: RBXScriptSignal<InputObject, boolean>
	InputChanged: RBXScriptSignal<InputObject, boolean>
	InputEnded: RBXScriptSignal<InputObject, boolean>
	JumpRequest: RBXScriptSignal<>
	LastInputTypeChanged: RBXScriptSignal<EnumUserInputType>
	PointerAction: RBXScriptSignal<number, Vector2, number, boolean>
	StatusBarTapped: RBXScriptSignal<Vector2>
	TextBoxFocusReleased: RBXScriptSignal<TextBox>
	TextBoxFocused: RBXScriptSignal<TextBox>
	TouchEnded: RBXScriptSignal<InputObject, boolean>
	TouchLongPress: RBXScriptSignal<{ any }, EnumUserInputState, boolean>
	TouchMoved: RBXScriptSignal<InputObject, boolean>
	TouchPan: RBXScriptSignal<{ any }, Vector2, Vector2, EnumUserInputState, boolean>
	TouchPinch: RBXScriptSignal<{ any }, number, number, EnumUserInputState, boolean>
	TouchRotate: RBXScriptSignal<{ any }, number, number, EnumUserInputState, boolean>
	TouchStarted: RBXScriptSignal<InputObject, boolean>
	TouchSwipe: RBXScriptSignal<EnumSwipeDirection, number, boolean>
	TouchTap: RBXScriptSignal<{ any }, boolean>
	TouchTapInWorld: RBXScriptSignal<Vector2, boolean>
	UserCFrameChanged: RBXScriptSignal<EnumUserCFrame, CFrame>
	WindowFocusReleased: RBXScriptSignal<>
	WindowFocused: RBXScriptSignal<>
end

declare class UserService extends Instance
	function GetUserInfosByUserIdsAsync(self, userIds: { any }): { any }
end

declare class VRService extends Instance
	DidPointerHit: boolean
	GuiInputUserCFrame: EnumUserCFrame
	PointerHitCFrame: CFrame
	VRDeviceAvailable: boolean
	VRDeviceName: string
	VREnabled: boolean
	function GetTouchpadMode(self, pad: EnumVRTouchpad): EnumVRTouchpadMode
	function GetUserCFrame(self, type: EnumUserCFrame): CFrame
	function GetUserCFrameEnabled(self, type: EnumUserCFrame): boolean
	function RecenterUserHeadCFrame(self): nil
	function RequestNavigation(self, cframe: CFrame, inputUserCFrame: EnumUserCFrame): nil
	function SetTouchpadMode(self, pad: EnumVRTouchpad, mode: EnumVRTouchpadMode): nil
	NavigationRequested: RBXScriptSignal<CFrame, EnumUserCFrame>
	TouchpadModeChanged: RBXScriptSignal<EnumVRTouchpad, EnumVRTouchpadMode>
	UserCFrameChanged: RBXScriptSignal<EnumUserCFrame, CFrame>
	UserCFrameEnabled: RBXScriptSignal<EnumUserCFrame, boolean>
end

declare class ValueBase extends Instance
end

declare class BinaryStringValue extends ValueBase
	Changed: RBXScriptSignal<BinaryString>
end

declare class BoolValue extends ValueBase
	Value: boolean
	Changed: RBXScriptSignal<boolean>
	changed: RBXScriptSignal<boolean>
end

declare class BrickColorValue extends ValueBase
	Value: BrickColor
	Changed: RBXScriptSignal<BrickColor>
	changed: RBXScriptSignal<BrickColor>
end

declare class CFrameValue extends ValueBase
	Value: CFrame
	Changed: RBXScriptSignal<CFrame>
	changed: RBXScriptSignal<CFrame>
end

declare class Color3Value extends ValueBase
	Value: Color3
	Changed: RBXScriptSignal<Color3>
	changed: RBXScriptSignal<Color3>
end

declare class DoubleConstrainedValue extends ValueBase
	ConstrainedValue: number
	MaxValue: number
	MinValue: number
	Value: number
	Changed: RBXScriptSignal<number>
	changed: RBXScriptSignal<number>
end

declare class IntConstrainedValue extends ValueBase
	ConstrainedValue: number
	MaxValue: number
	MinValue: number
	Value: number
	Changed: RBXScriptSignal<number>
	changed: RBXScriptSignal<number>
end

declare class IntValue extends ValueBase
	Value: number
	Changed: RBXScriptSignal<number>
	changed: RBXScriptSignal<number>
end

declare class NumberValue extends ValueBase
	Value: number
	Changed: RBXScriptSignal<number>
	changed: RBXScriptSignal<number>
end

declare class ObjectValue extends ValueBase
	Value: Instance
	Changed: RBXScriptSignal<Instance>
	changed: RBXScriptSignal<Instance>
end

declare class RayValue extends ValueBase
	Value: Ray
	Changed: RBXScriptSignal<Ray>
	changed: RBXScriptSignal<Ray>
end

declare class StringValue extends ValueBase
	Value: string
	Changed: RBXScriptSignal<string>
	changed: RBXScriptSignal<string>
end

declare class Vector3Value extends ValueBase
	Value: Vector3
	Changed: RBXScriptSignal<Vector3>
	changed: RBXScriptSignal<Vector3>
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

declare class VideoCaptureService extends Instance
	Active: boolean
	CameraID: string
	function GetCameraDevices(self): { [any]: any }
end

declare class VirtualInputManager extends Instance
	AdditionalLuaState: string
	function Dump(self): nil
	function HandleGamepadAxisInput(self, objectId: number, keyCode: EnumKeyCode, x: number, y: number, z: number): nil
	function HandleGamepadButtonInput(self, deviceId: number, keyCode: EnumKeyCode, buttonState: number): nil
	function HandleGamepadConnect(self, deviceId: number): nil
	function HandleGamepadDisconnect(self, deviceId: number): nil
	function SendAccelerometerEvent(self, x: number, y: number, z: number): nil
	function SendGravityEvent(self, x: number, y: number, z: number): nil
	function SendGyroscopeEvent(self, quatX: number, quatY: number, quatZ: number, quatW: number): nil
	function SendKeyEvent(self, isPressed: boolean, keyCode: EnumKeyCode, isRepeatedKey: boolean, layerCollector: Instance): nil
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
	PlaybackCompleted: RBXScriptSignal<string>
	RecordingCompleted: RBXScriptSignal<string>
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
	VoiceChatState: EnumVoiceChatState
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
	ParticipantsStateChanged: RBXScriptSignal<{ any }, { any }, { any }>
	PlayerMicActivitySignalChange: RBXScriptSignal<{ [any]: any }>
	StateChanged: RBXScriptSignal<EnumVoiceChatState, EnumVoiceChatState>
end

declare class VoiceChatService extends Instance
	EnableDefaultVoice: boolean
	VoiceChatEnabledForPlaceOnRcc: boolean
	VoiceChatEnabledForUniverseOnRcc: boolean
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

declare class ServiceProvider extends Instance
	function FindService(self, className: string): Instance
	function getService(self, className: string): Instance
	function service(self, className: string): Instance
	Close: RBXScriptSignal<>
	CloseLate: RBXScriptSignal<>
	ServiceAdded: RBXScriptSignal<Instance>
	ServiceRemoving: RBXScriptSignal<Instance>
	function GetService(self, service: "ABTestService"): ABTestService
	function GetService(self, service: "AdService"): AdService
	function GetService(self, service: "AnalyticsService"): AnalyticsService
	function GetService(self, service: "AnimationClipProvider"): AnimationClipProvider
	function GetService(self, service: "AnimationFromVideoCreatorService"): AnimationFromVideoCreatorService
	function GetService(self, service: "AnimationFromVideoCreatorStudioService"): AnimationFromVideoCreatorStudioService
	function GetService(self, service: "AppUpdateService"): AppUpdateService
	function GetService(self, service: "AssetCounterService"): AssetCounterService
	function GetService(self, service: "AssetDeliveryProxy"): AssetDeliveryProxy
	function GetService(self, service: "AssetImportService"): AssetImportService
	function GetService(self, service: "AssetManagerService"): AssetManagerService
	function GetService(self, service: "AssetService"): AssetService
	function GetService(self, service: "AvatarEditorService"): AvatarEditorService
	function GetService(self, service: "AvatarImportService"): AvatarImportService
	function GetService(self, service: "BadgeService"): BadgeService
	function GetService(self, service: "CoreGui"): CoreGui
	function GetService(self, service: "StarterGui"): StarterGui
	function GetService(self, service: "BreakpointManager"): BreakpointManager
	function GetService(self, service: "BrowserService"): BrowserService
	function GetService(self, service: "BulkImportService"): BulkImportService
	function GetService(self, service: "CacheableContentProvider"): CacheableContentProvider
	function GetService(self, service: "HSRDataContentProvider"): HSRDataContentProvider
	function GetService(self, service: "MeshContentProvider"): MeshContentProvider
	function GetService(self, service: "SolidModelContentProvider"): SolidModelContentProvider
	function GetService(self, service: "CalloutService"): CalloutService
	function GetService(self, service: "ChangeHistoryService"): ChangeHistoryService
	function GetService(self, service: "Chat"): Chat
	function GetService(self, service: "ClusterPacketCache"): ClusterPacketCache
	function GetService(self, service: "CollectionService"): CollectionService
	function GetService(self, service: "CommandService"): CommandService
	function GetService(self, service: "ConfigureServerService"): ConfigureServerService
	function GetService(self, service: "ContentProvider"): ContentProvider
	function GetService(self, service: "ContextActionService"): ContextActionService
	function GetService(self, service: "ControllerService"): ControllerService
	function GetService(self, service: "CookiesService"): CookiesService
	function GetService(self, service: "CorePackages"): CorePackages
	function GetService(self, service: "CoreScriptSyncService"): CoreScriptSyncService
	function GetService(self, service: "CrossDMScriptChangeListener"): CrossDMScriptChangeListener
	function GetService(self, service: "DataModelPatchService"): DataModelPatchService
	function GetService(self, service: "DataStoreService"): DataStoreService
	function GetService(self, service: "Debris"): Debris
	function GetService(self, service: "DebuggablePluginWatcher"): DebuggablePluginWatcher
	function GetService(self, service: "DebuggerConnectionManager"): DebuggerConnectionManager
	function GetService(self, service: "DebuggerManager"): DebuggerManager
	function GetService(self, service: "DebuggerUIService"): DebuggerUIService
	function GetService(self, service: "DraftsService"): DraftsService
	function GetService(self, service: "DraggerService"): DraggerService
	function GetService(self, service: "EventIngestService"): EventIngestService
	function GetService(self, service: "FlagStandService"): FlagStandService
	function GetService(self, service: "FlyweightService"): FlyweightService
	function GetService(self, service: "CSGDictionaryService"): CSGDictionaryService
	function GetService(self, service: "NonReplicatedCSGDictionaryService"): NonReplicatedCSGDictionaryService
	function GetService(self, service: "FriendService"): FriendService
	function GetService(self, service: "GamePassService"): GamePassService
	function GetService(self, service: "GamepadService"): GamepadService
	function GetService(self, service: "Geometry"): Geometry
	function GetService(self, service: "GoogleAnalyticsConfiguration"): GoogleAnalyticsConfiguration
	function GetService(self, service: "GroupService"): GroupService
	function GetService(self, service: "GuiService"): GuiService
	function GetService(self, service: "GuidRegistryService"): GuidRegistryService
	function GetService(self, service: "HapticService"): HapticService
	function GetService(self, service: "HeightmapImporterService"): HeightmapImporterService
	function GetService(self, service: "Hopper"): Hopper
	function GetService(self, service: "HttpRbxApiService"): HttpRbxApiService
	function GetService(self, service: "HttpService"): HttpService
	function GetService(self, service: "ILegacyStudioBridge"): ILegacyStudioBridge
	function GetService(self, service: "LegacyStudioBridge"): LegacyStudioBridge
	function GetService(self, service: "IXPService"): IXPService
	function GetService(self, service: "IncrementalPatchBuilder"): IncrementalPatchBuilder
	function GetService(self, service: "InsertService"): InsertService
	function GetService(self, service: "JointsService"): JointsService
	function GetService(self, service: "KeyboardService"): KeyboardService
	function GetService(self, service: "KeyframeSequenceProvider"): KeyframeSequenceProvider
	function GetService(self, service: "LSPService"): LSPService
	function GetService(self, service: "LanguageService"): LanguageService
	function GetService(self, service: "Lighting"): Lighting
	function GetService(self, service: "LocalStorageService"): LocalStorageService
	function GetService(self, service: "AppStorageService"): AppStorageService
	function GetService(self, service: "UserStorageService"): UserStorageService
	function GetService(self, service: "LocalizationService"): LocalizationService
	function GetService(self, service: "LodDataService"): LodDataService
	function GetService(self, service: "LogService"): LogService
	function GetService(self, service: "LoginService"): LoginService
	function GetService(self, service: "LuaWebService"): LuaWebService
	function GetService(self, service: "LuauScriptAnalyzerService"): LuauScriptAnalyzerService
	function GetService(self, service: "MarketplaceService"): MarketplaceService
	function GetService(self, service: "MaterialService"): MaterialService
	function GetService(self, service: "MemStorageService"): MemStorageService
	function GetService(self, service: "MemoryStoreService"): MemoryStoreService
	function GetService(self, service: "MessageBusService"): MessageBusService
	function GetService(self, service: "MessagingService"): MessagingService
	function GetService(self, service: "MouseService"): MouseService
	function GetService(self, service: "NetworkClient"): NetworkClient
	function GetService(self, service: "NetworkServer"): NetworkServer
	function GetService(self, service: "NetworkSettings"): NetworkSettings
	function GetService(self, service: "NotificationService"): NotificationService
	function GetService(self, service: "Workspace"): Workspace
	function GetService(self, service: "PackageService"): PackageService
	function GetService(self, service: "PackageUIService"): PackageUIService
	function GetService(self, service: "PathfindingService"): PathfindingService
	function GetService(self, service: "PermissionsService"): PermissionsService
	function GetService(self, service: "PhysicsService"): PhysicsService
	function GetService(self, service: "PlayerEmulatorService"): PlayerEmulatorService
	function GetService(self, service: "Players"): Players
	function GetService(self, service: "PluginDebugService"): PluginDebugService
	function GetService(self, service: "PluginGuiService"): PluginGuiService
	function GetService(self, service: "PluginPolicyService"): PluginPolicyService
	function GetService(self, service: "PointsService"): PointsService
	function GetService(self, service: "PolicyService"): PolicyService
	function GetService(self, service: "ProcessInstancePhysicsService"): ProcessInstancePhysicsService
	function GetService(self, service: "ProximityPromptService"): ProximityPromptService
	function GetService(self, service: "PublishService"): PublishService
	function GetService(self, service: "RbxAnalyticsService"): RbxAnalyticsService
	function GetService(self, service: "RemoteDebuggerServer"): RemoteDebuggerServer
	function GetService(self, service: "RenderSettings"): RenderSettings
	function GetService(self, service: "ReplicatedFirst"): ReplicatedFirst
	function GetService(self, service: "ReplicatedScriptService"): ReplicatedScriptService
	function GetService(self, service: "ReplicatedStorage"): ReplicatedStorage
	function GetService(self, service: "RobloxPluginGuiService"): RobloxPluginGuiService
	function GetService(self, service: "RobloxReplicatedStorage"): RobloxReplicatedStorage
	function GetService(self, service: "RunService"): RunService
	function GetService(self, service: "RuntimeScriptService"): RuntimeScriptService
	function GetService(self, service: "ScriptChangeService"): ScriptChangeService
	function GetService(self, service: "ScriptCloneWatcher"): ScriptCloneWatcher
	function GetService(self, service: "ScriptCloneWatcherHelper"): ScriptCloneWatcherHelper
	function GetService(self, service: "ScriptContext"): ScriptContext
	function GetService(self, service: "ScriptRegistrationService"): ScriptRegistrationService
	function GetService(self, service: "ScriptService"): ScriptService
	function GetService(self, service: "Selection"): Selection
	function GetService(self, service: "ServerScriptService"): ServerScriptService
	function GetService(self, service: "ServerStorage"): ServerStorage
	function GetService(self, service: "SessionService"): SessionService
	function GetService(self, service: "SocialService"): SocialService
	function GetService(self, service: "SoundService"): SoundService
	function GetService(self, service: "SpawnerService"): SpawnerService
	function GetService(self, service: "StarterPack"): StarterPack
	function GetService(self, service: "StarterPlayer"): StarterPlayer
	function GetService(self, service: "Stats"): Stats
	function GetService(self, service: "StopWatchReporter"): StopWatchReporter
	function GetService(self, service: "Studio"): Studio
	function GetService(self, service: "StudioAssetService"): StudioAssetService
	function GetService(self, service: "StudioData"): StudioData
	function GetService(self, service: "StudioDeviceEmulatorService"): StudioDeviceEmulatorService
	function GetService(self, service: "StudioHighDpiService"): StudioHighDpiService
	function GetService(self, service: "StudioPublishService"): StudioPublishService
	function GetService(self, service: "StudioScriptDebugEventListener"): StudioScriptDebugEventListener
	function GetService(self, service: "StudioService"): StudioService
	function GetService(self, service: "TaskScheduler"): TaskScheduler
	function GetService(self, service: "Teams"): Teams
	function GetService(self, service: "TeleportService"): TeleportService
	function GetService(self, service: "TemporaryCageMeshProvider"): TemporaryCageMeshProvider
	function GetService(self, service: "TemporaryScriptService"): TemporaryScriptService
	function GetService(self, service: "TestService"): TestService
	function GetService(self, service: "TextBoxService"): TextBoxService
	function GetService(self, service: "TextChatService"): TextChatService
	function GetService(self, service: "TextService"): TextService
	function GetService(self, service: "ThirdPartyUserService"): ThirdPartyUserService
	function GetService(self, service: "TimerService"): TimerService
	function GetService(self, service: "ToastNotificationService"): ToastNotificationService
	function GetService(self, service: "ToolboxService"): ToolboxService
	function GetService(self, service: "TouchInputService"): TouchInputService
	function GetService(self, service: "TracerService"): TracerService
	function GetService(self, service: "TweenService"): TweenService
	function GetService(self, service: "UGCValidationService"): UGCValidationService
	function GetService(self, service: "UnvalidatedAssetService"): UnvalidatedAssetService
	function GetService(self, service: "UserInputService"): UserInputService
	function GetService(self, service: "UserService"): UserService
	function GetService(self, service: "VRService"): VRService
	function GetService(self, service: "VersionControlService"): VersionControlService
	function GetService(self, service: "VideoCaptureService"): VideoCaptureService
	function GetService(self, service: "VirtualInputManager"): VirtualInputManager
	function GetService(self, service: "VirtualUser"): VirtualUser
	function GetService(self, service: "VisibilityService"): VisibilityService
	function GetService(self, service: "Visit"): Visit
	function GetService(self, service: "VoiceChatInternal"): VoiceChatInternal
	function GetService(self, service: "VoiceChatService"): VoiceChatService
end

declare class DataModel extends ServiceProvider
	CreatorId: number
	CreatorType: EnumCreatorType
	GameId: number
	GearGenreSetting: EnumGearGenreSetting
	Genre: EnumGenre
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
	function GetObjectsAllOrNone(self, url: Content): Objects
	function GetObjectsList(self, urls: { any }): { any }
	function GetRemoteBuildMode(self): boolean
	function IsGearTypeAllowed(self, gearType: EnumGearType): boolean
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
	function HttpGetAsync(self, url: string, httpRequestType: EnumHttpRequestType?): string
	function HttpPostAsync(self, url: string, data: string, contentType: string?, httpRequestType: EnumHttpRequestType?): string
	function InsertObjectsAndJoinIfLegacyAsync(self, url: Content): Objects
	function SavePlace(self, saveFilter: EnumSaveFilter?): boolean
	AllowedGearTypeChanged: RBXScriptSignal<>
	GraphicsQualityChangeRequest: RBXScriptSignal<boolean>
	ItemChanged: RBXScriptSignal<Instance, string>
	Loaded: RBXScriptSignal<>
	ScreenshotReady: RBXScriptSignal<string>
	ScreenshotSavedToAlbum: RBXScriptSignal<string, boolean, string>
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
	function GetService(self, service: "UserGameSettings"): UserGameSettings
end

declare Instance: {
	new: ((className: "Accoutrement") -> Accoutrement) & ((className: "Accessory") -> Accessory) & ((className: "Hat") -> Hat) & ((className: "AdvancedDragger") -> AdvancedDragger) & ((className: "AnalyticsService") -> AnalyticsService) & ((className: "Animation") -> Animation) & ((className: "CurveAnimation") -> CurveAnimation) & ((className: "KeyframeSequence") -> KeyframeSequence) & ((className: "AnimationController") -> AnimationController) & ((className: "AnimationRigData") -> AnimationRigData) & ((className: "Animator") -> Animator) & ((className: "Atmosphere") -> Atmosphere) & ((className: "Attachment") -> Attachment) & ((className: "Bone") -> Bone) & ((className: "Backpack") -> Backpack) & ((className: "HopperBin") -> HopperBin) & ((className: "Tool") -> Tool) & ((className: "Flag") -> Flag) & ((className: "WrapLayer") -> WrapLayer) & ((className: "WrapTarget") -> WrapTarget) & ((className: "Beam") -> Beam) & ((className: "BindableEvent") -> BindableEvent) & ((className: "BindableFunction") -> BindableFunction) & ((className: "BodyAngularVelocity") -> BodyAngularVelocity) & ((className: "BodyForce") -> BodyForce) & ((className: "BodyGyro") -> BodyGyro) & ((className: "BodyPosition") -> BodyPosition) & ((className: "BodyThrust") -> BodyThrust) & ((className: "BodyVelocity") -> BodyVelocity) & ((className: "RocketPropulsion") -> RocketPropulsion) & ((className: "Breakpoint") -> Breakpoint) & ((className: "Camera") -> Camera) & ((className: "BodyColors") -> BodyColors) & ((className: "CharacterMesh") -> CharacterMesh) & ((className: "Pants") -> Pants) & ((className: "Shirt") -> Shirt) & ((className: "ShirtGraphic") -> ShirtGraphic) & ((className: "Skin") -> Skin) & ((className: "ClickDetector") -> ClickDetector) & ((className: "Clouds") -> Clouds) & ((className: "Configuration") -> Configuration) & ((className: "AlignOrientation") -> AlignOrientation) & ((className: "AlignPosition") -> AlignPosition) & ((className: "AngularVelocity") -> AngularVelocity) & ((className: "BallSocketConstraint") -> BallSocketConstraint) & ((className: "HingeConstraint") -> HingeConstraint) & ((className: "LineForce") -> LineForce) & ((className: "LinearVelocity") -> LinearVelocity) & ((className: "Plane") -> Plane) & ((className: "RigidConstraint") -> RigidConstraint) & ((className: "RodConstraint") -> RodConstraint) & ((className: "RopeConstraint") -> RopeConstraint) & ((className: "CylindricalConstraint") -> CylindricalConstraint) & ((className: "PrismaticConstraint") -> PrismaticConstraint) & ((className: "SpringConstraint") -> SpringConstraint) & ((className: "Torque") -> Torque) & ((className: "TorsionSpringConstraint") -> TorsionSpringConstraint) & ((className: "UniversalConstraint") -> UniversalConstraint) & ((className: "VectorForce") -> VectorForce) & ((className: "HumanoidController") -> HumanoidController) & ((className: "SkateboardController") -> SkateboardController) & ((className: "VehicleController") -> VehicleController) & ((className: "CustomEvent") -> CustomEvent) & ((className: "CustomEventReceiver") -> CustomEventReceiver) & ((className: "BlockMesh") -> BlockMesh) & ((className: "CylinderMesh") -> CylinderMesh) & ((className: "FileMesh") -> FileMesh) & ((className: "SpecialMesh") -> SpecialMesh) & ((className: "DataStoreIncrementOptions") -> DataStoreIncrementOptions) & ((className: "DataStoreOptions") -> DataStoreOptions) & ((className: "DataStoreSetOptions") -> DataStoreSetOptions) & ((className: "DebuggerWatch") -> DebuggerWatch) & ((className: "Dialog") -> Dialog) & ((className: "DialogChoice") -> DialogChoice) & ((className: "Dragger") -> Dragger) & ((className: "EulerRotationCurve") -> EulerRotationCurve) & ((className: "Explosion") -> Explosion) & ((className: "FaceControls") -> FaceControls) & ((className: "Decal") -> Decal) & ((className: "Texture") -> Texture) & ((className: "Hole") -> Hole) & ((className: "MotorFeature") -> MotorFeature) & ((className: "Fire") -> Fire) & ((className: "FloatCurve") -> FloatCurve) & ((className: "FlyweightService") -> FlyweightService) & ((className: "CSGDictionaryService") -> CSGDictionaryService) & ((className: "NonReplicatedCSGDictionaryService") -> NonReplicatedCSGDictionaryService) & ((className: "Folder") -> Folder) & ((className: "ForceField") -> ForceField) & ((className: "FunctionalTest") -> FunctionalTest) & ((className: "CanvasGroup") -> CanvasGroup) & ((className: "Frame") -> Frame) & ((className: "ImageButton") -> ImageButton) & ((className: "TextButton") -> TextButton) & ((className: "ImageLabel") -> ImageLabel) & ((className: "TextLabel") -> TextLabel) & ((className: "ScrollingFrame") -> ScrollingFrame) & ((className: "TextBox") -> TextBox) & ((className: "VideoFrame") -> VideoFrame) & ((className: "ViewportFrame") -> ViewportFrame) & ((className: "BillboardGui") -> BillboardGui) & ((className: "ScreenGui") -> ScreenGui) & ((className: "GuiMain") -> GuiMain) & ((className: "SurfaceGui") -> SurfaceGui) & ((className: "FloorWire") -> FloorWire) & ((className: "SelectionBox") -> SelectionBox) & ((className: "BoxHandleAdornment") -> BoxHandleAdornment) & ((className: "ConeHandleAdornment") -> ConeHandleAdornment) & ((className: "CylinderHandleAdornment") -> CylinderHandleAdornment) & ((className: "ImageHandleAdornment") -> ImageHandleAdornment) & ((className: "LineHandleAdornment") -> LineHandleAdornment) & ((className: "SphereHandleAdornment") -> SphereHandleAdornment) & ((className: "ParabolaAdornment") -> ParabolaAdornment) & ((className: "SelectionSphere") -> SelectionSphere) & ((className: "ArcHandles") -> ArcHandles) & ((className: "Handles") -> Handles) & ((className: "SurfaceSelection") -> SurfaceSelection) & ((className: "SelectionPartLasso") -> SelectionPartLasso) & ((className: "SelectionPointLasso") -> SelectionPointLasso) & ((className: "HeightmapImporterService") -> HeightmapImporterService) & ((className: "HiddenSurfaceRemovalAsset") -> HiddenSurfaceRemovalAsset) & ((className: "Highlight") -> Highlight) & ((className: "Humanoid") -> Humanoid) & ((className: "HumanoidDescription") -> HumanoidDescription) & ((className: "RotateP") -> RotateP) & ((className: "RotateV") -> RotateV) & ((className: "Glue") -> Glue) & ((className: "ManualGlue") -> ManualGlue) & ((className: "ManualWeld") -> ManualWeld) & ((className: "Motor") -> Motor) & ((className: "Motor6D") -> Motor6D) & ((className: "Rotate") -> Rotate) & ((className: "Snap") -> Snap) & ((className: "VelocityMotor") -> VelocityMotor) & ((className: "Weld") -> Weld) & ((className: "Keyframe") -> Keyframe) & ((className: "KeyframeMarker") -> KeyframeMarker) & ((className: "LSPService") -> LSPService) & ((className: "PointLight") -> PointLight) & ((className: "SpotLight") -> SpotLight) & ((className: "SurfaceLight") -> SurfaceLight) & ((className: "LocalizationTable") -> LocalizationTable) & ((className: "Script") -> Script) & ((className: "LocalScript") -> LocalScript) & ((className: "ModuleScript") -> ModuleScript) & ((className: "MarkerCurve") -> MarkerCurve) & ((className: "MaterialVariant") -> MaterialVariant) & ((className: "MemoryStoreService") -> MemoryStoreService) & ((className: "Message") -> Message) & ((className: "Hint") -> Hint) & ((className: "NoCollisionConstraint") -> NoCollisionConstraint) & ((className: "CornerWedgePart") -> CornerWedgePart) & ((className: "Part") -> Part) & ((className: "FlagStand") -> FlagStand) & ((className: "Seat") -> Seat) & ((className: "SkateboardPlatform") -> SkateboardPlatform) & ((className: "SpawnLocation") -> SpawnLocation) & ((className: "WedgePart") -> WedgePart) & ((className: "MeshPart") -> MeshPart) & ((className: "PartOperation") -> PartOperation) & ((className: "NegateOperation") -> NegateOperation) & ((className: "UnionOperation") -> UnionOperation) & ((className: "TrussPart") -> TrussPart) & ((className: "VehicleSeat") -> VehicleSeat) & ((className: "Model") -> Model) & ((className: "Actor") -> Actor) & ((className: "WorldModel") -> WorldModel) & ((className: "PartOperationAsset") -> PartOperationAsset) & ((className: "ParticleEmitter") -> ParticleEmitter) & ((className: "PathfindingLink") -> PathfindingLink) & ((className: "PathfindingModifier") -> PathfindingModifier) & ((className: "Player") -> Player) & ((className: "PluginAction") -> PluginAction) & ((className: "NumberPose") -> NumberPose) & ((className: "Pose") -> Pose) & ((className: "BloomEffect") -> BloomEffect) & ((className: "BlurEffect") -> BlurEffect) & ((className: "ColorCorrectionEffect") -> ColorCorrectionEffect) & ((className: "DepthOfFieldEffect") -> DepthOfFieldEffect) & ((className: "SunRaysEffect") -> SunRaysEffect) & ((className: "ProximityPrompt") -> ProximityPrompt) & ((className: "ProximityPromptService") -> ProximityPromptService) & ((className: "ReflectionMetadata") -> ReflectionMetadata) & ((className: "ReflectionMetadataCallbacks") -> ReflectionMetadataCallbacks) & ((className: "ReflectionMetadataClasses") -> ReflectionMetadataClasses) & ((className: "ReflectionMetadataEnums") -> ReflectionMetadataEnums) & ((className: "ReflectionMetadataEvents") -> ReflectionMetadataEvents) & ((className: "ReflectionMetadataFunctions") -> ReflectionMetadataFunctions) & ((className: "ReflectionMetadataClass") -> ReflectionMetadataClass) & ((className: "ReflectionMetadataEnum") -> ReflectionMetadataEnum) & ((className: "ReflectionMetadataEnumItem") -> ReflectionMetadataEnumItem) & ((className: "ReflectionMetadataMember") -> ReflectionMetadataMember) & ((className: "ReflectionMetadataProperties") -> ReflectionMetadataProperties) & ((className: "ReflectionMetadataYieldFunctions") -> ReflectionMetadataYieldFunctions) & ((className: "RemoteEvent") -> RemoteEvent) & ((className: "RemoteFunction") -> RemoteFunction) & ((className: "RenderingTest") -> RenderingTest) & ((className: "RotationCurve") -> RotationCurve) & ((className: "Sky") -> Sky) & ((className: "Smoke") -> Smoke) & ((className: "Sound") -> Sound) & ((className: "ChorusSoundEffect") -> ChorusSoundEffect) & ((className: "CompressorSoundEffect") -> CompressorSoundEffect) & ((className: "ChannelSelectorSoundEffect") -> ChannelSelectorSoundEffect) & ((className: "DistortionSoundEffect") -> DistortionSoundEffect) & ((className: "EchoSoundEffect") -> EchoSoundEffect) & ((className: "EqualizerSoundEffect") -> EqualizerSoundEffect) & ((className: "FlangeSoundEffect") -> FlangeSoundEffect) & ((className: "PitchShiftSoundEffect") -> PitchShiftSoundEffect) & ((className: "ReverbSoundEffect") -> ReverbSoundEffect) & ((className: "TremoloSoundEffect") -> TremoloSoundEffect) & ((className: "SoundGroup") -> SoundGroup) & ((className: "Sparkles") -> Sparkles) & ((className: "Speaker") -> Speaker) & ((className: "StandalonePluginScripts") -> StandalonePluginScripts) & ((className: "StarterGear") -> StarterGear) & ((className: "SurfaceAppearance") -> SurfaceAppearance) & ((className: "Team") -> Team) & ((className: "TeleportOptions") -> TeleportOptions) & ((className: "TerrainDetail") -> TerrainDetail) & ((className: "TerrainRegion") -> TerrainRegion) & ((className: "TestService") -> TestService) & ((className: "TextChannel") -> TextChannel) & ((className: "TextChatCommand") -> TextChatCommand) & ((className: "TextChatMessageProperties") -> TextChatMessageProperties) & ((className: "Trail") -> Trail) & ((className: "Tween") -> Tween) & ((className: "UIAspectRatioConstraint") -> UIAspectRatioConstraint) & ((className: "UISizeConstraint") -> UISizeConstraint) & ((className: "UITextSizeConstraint") -> UITextSizeConstraint) & ((className: "UICorner") -> UICorner) & ((className: "UIGradient") -> UIGradient) & ((className: "UIGridLayout") -> UIGridLayout) & ((className: "UIListLayout") -> UIListLayout) & ((className: "UIPageLayout") -> UIPageLayout) & ((className: "UITableLayout") -> UITableLayout) & ((className: "UIPadding") -> UIPadding) & ((className: "UIScale") -> UIScale) & ((className: "UIStroke") -> UIStroke) & ((className: "BinaryStringValue") -> BinaryStringValue) & ((className: "BoolValue") -> BoolValue) & ((className: "BrickColorValue") -> BrickColorValue) & ((className: "CFrameValue") -> CFrameValue) & ((className: "Color3Value") -> Color3Value) & ((className: "DoubleConstrainedValue") -> DoubleConstrainedValue) & ((className: "IntConstrainedValue") -> IntConstrainedValue) & ((className: "IntValue") -> IntValue) & ((className: "NumberValue") -> NumberValue) & ((className: "ObjectValue") -> ObjectValue) & ((className: "RayValue") -> RayValue) & ((className: "StringValue") -> StringValue) & ((className: "Vector3Value") -> Vector3Value) & ((className: "Vector3Curve") -> Vector3Curve) & ((className: "VirtualInputManager") -> VirtualInputManager) & ((className: "VoiceChannel") -> VoiceChannel) & ((className: "WeldConstraint") -> WeldConstraint),
}

declare Ray: {
	new: ((Origin: Vector3, Direction: Vector3) -> Ray),
}

declare NumberRange: {
	new: ((value: number) -> NumberRange) & ((min: number, max: number) -> NumberRange),
}

declare PathWaypoint: {
	new: ((position: Vector3, action: EnumPathWaypointAction) -> PathWaypoint),
}

declare BrickColor: {
	Red: (() -> BrickColor),
	Yellow: (() -> BrickColor),
	Blue: (() -> BrickColor),
	Gray: (() -> BrickColor),
	DarkGray: (() -> BrickColor),
	White: (() -> BrickColor),
	random: (() -> BrickColor),
	Green: (() -> BrickColor),
	Black: (() -> BrickColor),
	palette: ((paletteValue: number) -> BrickColor),
	new: ((val: number) -> BrickColor) & ((r: number, g: number, b: number) -> BrickColor) & ((val: string) -> BrickColor) & ((color: Color3) -> BrickColor),
}

declare Vector2: {
	zero: Vector2,
	one: Vector2,
	xAxis: Vector2,
	yAxis: Vector2,
	new: ((x: number?, y: number?) -> Vector2),
}

declare Vector2int16: {
	new: ((x: number, y: number) -> Vector2int16),
}

declare Color3: {
	fromRGB: ((red: number?, green: number?, blue: number?) -> Color3),
	fromHSV: ((hue: number, saturation: number, value: number) -> Color3),
	toHSV: ((color: Color3) -> (number, number, number)),
	new: ((red: number?, green: number?, blue: number?) -> Color3),
	fromHex: ((hex: string) -> Color3),
}

declare UDim: {
	new: ((Scale: number?, Offset: number?) -> UDim),
}

declare PhysicalProperties: {
	new: ((material: EnumMaterial) -> PhysicalProperties) & ((density: number, friction: number, elasticy: number, frictionWeight: number?, elasticyWeight: number?) -> PhysicalProperties),
}

declare Axes: {
	new: ((axes: any) -> Axes),
}

declare Region3: {
	new: ((min: Vector3, max: Vector3) -> Region3),
}

declare Region3int16: {
	new: ((min: Vector3int16, max: Vector3int16) -> Region3int16),
}

declare UDim2: {
	fromScale: ((xScale: number, yScale: number) -> UDim2),
	fromOffset: ((xOffset: number, yOffset: number) -> UDim2),
	new: ((x: UDim, y: UDim) -> UDim2) & ((xScale: number?, xOffset: number?, yScale: number?, yOffset: number?) -> UDim2),
}

declare CFrame: {
	identity: CFrame,
	Rotation: CFrame,
	fromEulerAnglesYXZ: ((rx: number, ry: number, rz: number) -> CFrame),
	Angles: ((rx: number, ry: number, rz: number) -> CFrame),
	fromMatrix: ((pos: Vector3, vX: Vector3, vY: Vector3, vZ: Vector3) -> CFrame),
	fromAxisAngle: ((v: Vector3, r: number) -> CFrame),
	fromOrientation: ((rx: number, ry: number, rz: number) -> CFrame),
	fromEulerAnglesXYZ: ((rx: number, ry: number, rz: number) -> CFrame),
	lookAt: ((at: Vector3, target: Vector3, up: Vector3?) -> CFrame),
	new: (() -> CFrame) & ((pos: Vector3) -> CFrame) & ((pos: Vector3, lookAt: Vector3) -> CFrame) & ((x: number, y: number, z: number) -> CFrame) & ((x: number, y: number, z: number, qX: number, qY: number, qZ: number, qW: number) -> CFrame) & ((x: number, y: number, z: number, R00: number, R01: number, R02: number, R10: number, R11: number, R12: number, R20: number, R21: number, R22: number) -> CFrame),
}

declare Faces: {
	new: ((normalIds: any) -> Faces),
}

declare Rect: {
	new: ((min: Vector2, max: Vector2) -> Rect) & ((minX: number, minY: number, maxX: number, maxY: number) -> Rect),
}

declare Vector3: {
	zero: Vector3,
	one: Vector3,
	xAxis: Vector3,
	yAxis: Vector3,
	zAxis: Vector3,
	fromNormalId: ((normal: EnumNormalId) -> Vector3),
	fromAxis: ((axis: EnumAxis) -> Vector3),
	FromNormalId: ((normal: EnumNormalId) -> Vector3),
	FromAxis: ((axis: EnumAxis) -> Vector3),
	new: ((x: number?, y: number?, z: number?) -> Vector3),
}

declare Vector3int16: {
	new: ((x: number?, y: number?, z: number?) -> Vector3int16),
}

declare Random: {
	new: ((seed: number?) -> Random),
}

declare TweenInfo: {
	new: ((time: number?, easingStyle: EnumEasingStyle?, easingDirection: EnumEasingDirection?, repeatCount: number?, reverses: boolean?, delayTime: number?) -> TweenInfo),
}

declare DateTime: {
	now: (() -> DateTime),
	fromUnixTimestamp: ((unixTimestamp: number) -> DateTime),
	fromUnixTimestampMillis: ((unixTimestampMillis: number) -> DateTime),
	fromUniversalTime: ((year: number?, month: number?, day: number?, hour: number?, minute: number?, second: number?, millisecond: number?) -> DateTime),
	fromLocalTime: ((year: number?, month: number?, day: number?, hour: number?, minute: number?, second: number?, millisecond: number?) -> DateTime),
	fromIsoDate: ((isoDate: string) -> DateTime),
}

declare NumberSequence: {
	new: ((n: number) -> NumberSequence) & ((n0: number, n1: number) -> NumberSequence) & ((keypoints: { any }) -> NumberSequence),
}

declare ColorSequence: {
	new: ((c: Color3) -> ColorSequence) & ((c0: Color3, c1: Color3) -> ColorSequence) & ((keypoints: { any }) -> ColorSequence),
}

declare NumberSequenceKeypoint: {
	new: ((time: number, value: number, envelop: number?) -> NumberSequenceKeypoint),
}

declare ColorSequenceKeypoint: {
	new: ((time: number, color: Color3) -> ColorSequenceKeypoint),
}

declare RaycastParams: {
	new: (() -> RaycastParams),
}

declare OverlapParams: {
	new: (() -> OverlapParams),
}

declare DockWidgetPluginGuiInfo: {
	new: ((initDockState: EnumInitialDockState?, initEnabled: boolean?, overrideEnabledRestore: boolean?, floatXSize: number?, floatYSize: number?, minWidth: number?, minHeight: number?) -> DockWidgetPluginGuiInfo),
}

declare CatalogSearchParams: {
	new: (() -> CatalogSearchParams),
}

declare Font: {
	new: ((family: string, weight: EnumFontWeight?, style: EnumFontStyle?) -> Font),
}


declare game: DataModel
declare workspace: Workspace
declare plugin: Plugin
declare script: LuaSourceContainer
declare function settings(): GlobalSettings
declare function UserSettings(): UserSettings

