.class public Lorg/videolan/libvlc/MediaPlayer;
.super Lorg/videolan/libvlc/VLCObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/MediaPlayer$Title;,
        Lorg/videolan/libvlc/MediaPlayer$Chapter;,
        Lorg/videolan/libvlc/MediaPlayer$TrackDescription;,
        Lorg/videolan/libvlc/MediaPlayer$ScaleType;,
        Lorg/videolan/libvlc/MediaPlayer$Equalizer;,
        Lorg/videolan/libvlc/MediaPlayer$Event;,
        Lorg/videolan/libvlc/MediaPlayer$Navigate;,
        Lorg/videolan/libvlc/MediaPlayer$Position;,
        Lorg/videolan/libvlc/MediaPlayer$EventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/libvlc/VLCObject<",
        "Lorg/videolan/libvlc/MediaPlayer$Event;",
        ">;"
    }
.end annotation


# static fields
.field public static final SURFACE_SCALES_COUNT:I


# instance fields
.field private mAfd:Landroid/content/res/AssetFileDescriptor;

.field private final mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

.field private mAudioDigitalOutputEnabled:Z

.field private mAudioOutput:Ljava/lang/String;

.field private mAudioOutputDevice:Ljava/lang/String;

.field private mAudioPlugOutputDevice:Ljava/lang/String;

.field private final mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

.field private mAudioPlugRegistered:Z

.field private mAudioReset:Z

.field private mCanDoPassthrough:Z

.field mHandlerMainThread:Landroid/os/Handler;

.field private mListenAudioPlug:Z

.field private mMedia:Lorg/videolan/libvlc/interfaces/IMedia;

.field private mPlayRequested:Z

.field private mPlaying:Z

.field private mRenderer:Lorg/videolan/libvlc/RendererItem;

.field private mUseOrientationFromBounds:Ljava/lang/Boolean;

.field private mVideoHelper:Lorg/videolan/libvlc/VideoHelper;

.field private mVoutCount:I

.field private final mWindow:Lorg/videolan/libvlc/AWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->values()[Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    sput v0, Lorg/videolan/libvlc/MediaPlayer;->SURFACE_SCALES_COUNT:I

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lorg/videolan/libvlc/interfaces/ILibVLC;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/VLCObject;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;)V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mUseOrientationFromBounds:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/interfaces/IMedia;

    .line 4
    iput-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mRenderer:Lorg/videolan/libvlc/RendererItem;

    .line 5
    iput-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAfd:Landroid/content/res/AssetFileDescriptor;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlaying:Z

    .line 7
    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlayRequested:Z

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, p0, Lorg/videolan/libvlc/MediaPlayer;->mListenAudioPlug:Z

    .line 9
    iput v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mVoutCount:I

    .line 10
    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioReset:Z

    .line 11
    const-string v2, "android_audiotrack"

    iput-object v2, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutput:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutputDevice:Ljava/lang/String;

    .line 13
    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugRegistered:Z

    .line 14
    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioDigitalOutputEnabled:Z

    .line 15
    const-string v1, "stereo"

    iput-object v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugOutputDevice:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mVideoHelper:Lorg/videolan/libvlc/VideoHelper;

    .line 17
    new-instance v1, Lorg/videolan/libvlc/AWindow;

    new-instance v2, Lorg/videolan/libvlc/MediaPlayer$1;

    invoke-direct {v2, p0}, Lorg/videolan/libvlc/MediaPlayer$1;-><init>(Lorg/videolan/libvlc/MediaPlayer;)V

    invoke-direct {v1, v2}, Lorg/videolan/libvlc/AWindow;-><init>(Lorg/videolan/libvlc/AWindow$SurfaceCallback;)V

    iput-object v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mWindow:Lorg/videolan/libvlc/AWindow;

    .line 18
    sget-boolean v2, Lorg/videolan/libvlc/util/AndroidUtil;->isLolliPopOrLater:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lorg/videolan/libvlc/util/AndroidUtil;->isMarshMallowOrLater:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->createAudioPlugReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    iput-object v2, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

    .line 19
    sget-boolean v2, Lorg/videolan/libvlc/util/AndroidUtil;->isMarshMallowOrLater:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->createAudioDeviceCallback()Landroid/media/AudioDeviceCallback;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mHandlerMainThread:Landroid/os/Handler;

    .line 21
    invoke-direct {p0, p1, v1}, Lorg/videolan/libvlc/MediaPlayer;->nativeNewFromLibVlc(Lorg/videolan/libvlc/interfaces/ILibVLC;Lorg/videolan/libvlc/AWindow;)V

    return-void
.end method

.method public constructor <init>(Lorg/videolan/libvlc/interfaces/IMedia;)V
    .locals 3

    .line 22
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/VLCObject;-><init>(Lorg/videolan/libvlc/interfaces/IVLCObject;)V

    .line 23
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mUseOrientationFromBounds:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/interfaces/IMedia;

    .line 25
    iput-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mRenderer:Lorg/videolan/libvlc/RendererItem;

    .line 26
    iput-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAfd:Landroid/content/res/AssetFileDescriptor;

    const/4 v1, 0x0

    .line 27
    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlaying:Z

    .line 28
    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlayRequested:Z

    const/4 v2, 0x1

    .line 29
    iput-boolean v2, p0, Lorg/videolan/libvlc/MediaPlayer;->mListenAudioPlug:Z

    .line 30
    iput v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mVoutCount:I

    .line 31
    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioReset:Z

    .line 32
    const-string v2, "android_audiotrack"

    iput-object v2, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutput:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutputDevice:Ljava/lang/String;

    .line 34
    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugRegistered:Z

    .line 35
    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioDigitalOutputEnabled:Z

    .line 36
    const-string v1, "stereo"

    iput-object v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugOutputDevice:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mVideoHelper:Lorg/videolan/libvlc/VideoHelper;

    .line 38
    new-instance v1, Lorg/videolan/libvlc/AWindow;

    new-instance v2, Lorg/videolan/libvlc/MediaPlayer$1;

    invoke-direct {v2, p0}, Lorg/videolan/libvlc/MediaPlayer$1;-><init>(Lorg/videolan/libvlc/MediaPlayer;)V

    invoke-direct {v1, v2}, Lorg/videolan/libvlc/AWindow;-><init>(Lorg/videolan/libvlc/AWindow$SurfaceCallback;)V

    iput-object v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mWindow:Lorg/videolan/libvlc/AWindow;

    .line 39
    sget-boolean v2, Lorg/videolan/libvlc/util/AndroidUtil;->isLolliPopOrLater:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lorg/videolan/libvlc/util/AndroidUtil;->isMarshMallowOrLater:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->createAudioPlugReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    iput-object v2, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    sget-boolean v2, Lorg/videolan/libvlc/util/AndroidUtil;->isMarshMallowOrLater:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->createAudioDeviceCallback()Landroid/media/AudioDeviceCallback;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mHandlerMainThread:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 42
    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/IVLCObject;->isReleased()Z

    move-result v0

    if-nez v0, :cond_2

    .line 43
    iput-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/interfaces/IMedia;

    .line 44
    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/IVLCObject;->retain()Z

    .line 45
    iget-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/interfaces/IMedia;

    invoke-direct {p0, p1, v1}, Lorg/videolan/libvlc/MediaPlayer;->nativeNewFromMedia(Lorg/videolan/libvlc/interfaces/IMedia;Lorg/videolan/libvlc/AWindow;)V

    return-void

    .line 46
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Media is null or released"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$200(Lorg/videolan/libvlc/MediaPlayer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlaying:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$300(Lorg/videolan/libvlc/MediaPlayer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlayRequested:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$400(Lorg/videolan/libvlc/MediaPlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/videolan/libvlc/MediaPlayer;->mVoutCount:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$500(Lorg/videolan/libvlc/MediaPlayer;[I)J
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->getEncodingFlags([I)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic access$600(Lorg/videolan/libvlc/MediaPlayer;JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/videolan/libvlc/MediaPlayer;->updateAudioOutputDevice(JLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private createAudioDeviceCallback()Landroid/media/AudioDeviceCallback;
    .locals 1

    .line 1
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/videolan/libvlc/MediaPlayer$3;-><init>(Lorg/videolan/libvlc/MediaPlayer;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private createAudioPlugReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 1
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/videolan/libvlc/MediaPlayer$2;-><init>(Lorg/videolan/libvlc/MediaPlayer;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static createChapterFromNative(JJLjava/lang/String;)Lorg/videolan/libvlc/MediaPlayer$Chapter;
    .locals 8

    .line 1
    new-instance v7, Lorg/videolan/libvlc/MediaPlayer$Chapter;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    move-object v0, v7

    .line 5
    move-wide v1, p0

    .line 6
    move-wide v3, p2

    .line 7
    move-object v5, p4

    .line 8
    invoke-direct/range {v0 .. v6}, Lorg/videolan/libvlc/MediaPlayer$Chapter;-><init>(JJLjava/lang/String;Lorg/videolan/libvlc/MediaPlayer$1;)V

    .line 9
    .line 10
    .line 11
    return-object v7
.end method

.method private static createTitleFromNative(JLjava/lang/String;I)Lorg/videolan/libvlc/MediaPlayer$Title;
    .locals 1

    .line 1
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$Title;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lorg/videolan/libvlc/MediaPlayer$Title;-><init>(JLjava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static createTrackDescriptionFromNative(ILjava/lang/String;)Lorg/videolan/libvlc/MediaPlayer$TrackDescription;
    .locals 2

    .line 1
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;-><init>(ILjava/lang/String;Lorg/videolan/libvlc/MediaPlayer$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private getEncodingFlags([I)J
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-wide v0

    .line 6
    :cond_0
    array-length v2, p1

    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    if-ge v3, v2, :cond_2

    .line 9
    .line 10
    aget v4, p1, v3

    .line 11
    .line 12
    invoke-direct {p0, v4}, Lorg/videolan/libvlc/MediaPlayer;->isEncoded(I)Z

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-eqz v5, :cond_1

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    shl-int v4, v5, v4

    .line 20
    .line 21
    int-to-long v4, v4

    .line 22
    or-long/2addr v0, v4

    .line 23
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    return-wide v0
.end method

.method private isAudioTrack()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutput:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "android_audiotrack"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method private isEncoded(I)Z
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private native nativeAddSlave(ILjava/lang/String;Z)Z
.end method

.method private native nativeGetAspectRatio()Ljava/lang/String;
.end method

.method private native nativeGetAudioDelay()J
.end method

.method private native nativeGetAudioTrack()I
.end method

.method private native nativeGetAudioTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;
.end method

.method private native nativeGetAudioTracksCount()I
.end method

.method private native nativeGetChapters(I)[Lorg/videolan/libvlc/MediaPlayer$Chapter;
.end method

.method private native nativeGetScale()F
.end method

.method private native nativeGetSpuDelay()J
.end method

.method private native nativeGetSpuTrack()I
.end method

.method private native nativeGetSpuTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;
.end method

.method private native nativeGetSpuTracksCount()I
.end method

.method private native nativeGetTeletext()I
.end method

.method private native nativeGetTitles()[Lorg/videolan/libvlc/MediaPlayer$Title;
.end method

.method private native nativeGetVideoTrack()I
.end method

.method private native nativeGetVideoTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;
.end method

.method private native nativeGetVideoTracksCount()I
.end method

.method private native nativeNewFromLibVlc(Lorg/videolan/libvlc/interfaces/ILibVLC;Lorg/videolan/libvlc/AWindow;)V
.end method

.method private native nativeNewFromMedia(Lorg/videolan/libvlc/interfaces/IMedia;Lorg/videolan/libvlc/AWindow;)V
.end method

.method private native nativePlay()V
.end method

.method private native nativeRecord(Ljava/lang/String;)Z
.end method

.method private native nativeRelease()V
.end method

.method private native nativeSetAspectRatio(Ljava/lang/String;)V
.end method

.method private native nativeSetAudioDelay(J)Z
.end method

.method private native nativeSetAudioOutput(Ljava/lang/String;)Z
.end method

.method private native nativeSetAudioOutputDevice(Ljava/lang/String;)Z
.end method

.method private native nativeSetAudioTrack(I)Z
.end method

.method private native nativeSetEqualizer(Lorg/videolan/libvlc/MediaPlayer$Equalizer;)Z
.end method

.method private native nativeSetMedia(Lorg/videolan/libvlc/interfaces/IMedia;)V
.end method

.method private native nativeSetRenderer(Lorg/videolan/libvlc/RendererItem;)I
.end method

.method private native nativeSetScale(F)V
.end method

.method private native nativeSetSpuDelay(J)Z
.end method

.method private native nativeSetSpuTrack(I)Z
.end method

.method private native nativeSetTeletext(I)V
.end method

.method private native nativeSetVideoTitleDisplay(II)V
.end method

.method private native nativeSetVideoTrack(I)Z
.end method

.method private native nativeStop()V
.end method

.method private native nativeUpdateViewpoint(FFFFZ)Z
.end method

.method private registerAudioPlug(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugRegistered:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->registerAudioPlugV23(Z)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->registerAudioPlugV21(Z)V

    .line 19
    .line 20
    .line 21
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugRegistered:Z

    .line 22
    .line 23
    return-void
.end method

.method private registerAudioPlugV21(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Landroid/content/IntentFilter;

    .line 4
    .line 5
    const-string v0, "android.media.action.HDMI_AUDIO_PLUG"

    .line 6
    .line 7
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/videolan/libvlc/VLCObject;->mILibVLC:Lorg/videolan/libvlc/interfaces/ILibVLC;

    .line 11
    .line 12
    invoke-interface {v0}, Lorg/videolan/libvlc/interfaces/ILibVLC;->getAppContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

    .line 17
    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

    .line 25
    .line 26
    iget-object v1, p0, Lorg/videolan/libvlc/VLCObject;->mILibVLC:Lorg/videolan/libvlc/interfaces/ILibVLC;

    .line 27
    .line 28
    invoke-interface {v1}, Lorg/videolan/libvlc/interfaces/ILibVLC;->getAppContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1, p1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Lorg/videolan/libvlc/VLCObject;->mILibVLC:Lorg/videolan/libvlc/interfaces/ILibVLC;

    .line 37
    .line 38
    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/ILibVLC;->getAppContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    return-void
.end method

.method private registerAudioPlugV23(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/VLCObject;->mILibVLC:Lorg/videolan/libvlc/interfaces/ILibVLC;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/videolan/libvlc/interfaces/ILibVLC;->getAppContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lb7/u;->D(Landroid/content/Context;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/media/AudioManager;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    .line 16
    .line 17
    invoke-static {v0}, Lb7/u;->A(Landroid/media/AudioManager;)[Landroid/media/AudioDeviceInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {p1, v1}, Lb7/u;->m(Landroid/media/AudioDeviceCallback;[Landroid/media/AudioDeviceInfo;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    .line 25
    .line 26
    invoke-static {v0, p1}, Lb7/u;->C(Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    .line 31
    .line 32
    invoke-static {v0, p1}, LB0/q;->u(Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method private declared-synchronized setAudioOutputDeviceInternal(Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutputDevice:Ljava/lang/String;

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->isAudioTrack()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 p2, 0x0

    .line 21
    :goto_0
    iput-boolean p2, p0, Lorg/videolan/libvlc/MediaPlayer;->mListenAudioPlug:Z

    .line 22
    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    invoke-direct {p0, v1}, Lorg/videolan/libvlc/MediaPlayer;->registerAudioPlug(Z)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetAudioOutputDevice(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    iput-object p2, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutputDevice:Ljava/lang/String;

    .line 36
    .line 37
    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mListenAudioPlug:Z

    .line 38
    .line 39
    :cond_2
    iget-boolean p2, p0, Lorg/videolan/libvlc/MediaPlayer;->mListenAudioPlug:Z

    .line 40
    .line 41
    if-eqz p2, :cond_3

    .line 42
    .line 43
    invoke-direct {p0, v0}, Lorg/videolan/libvlc/MediaPlayer;->registerAudioPlug(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    :cond_3
    monitor-exit p0

    .line 47
    return p1

    .line 48
    :goto_1
    monitor-exit p0

    .line 49
    throw p1
.end method

.method private declared-synchronized updateAudioOutputDevice(JLjava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "encoded:"

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    cmp-long v4, p1, v1

    .line 8
    .line 9
    if-eqz v4, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    :try_start_0
    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mCanDoPassthrough:Z

    .line 15
    .line 16
    iget-boolean v2, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioDigitalOutputEnabled:Z

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    new-instance p3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugOutputDevice:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    iput-object p3, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugOutputDevice:Ljava/lang/String;

    .line 46
    .line 47
    invoke-direct {p0, p3, v3}, Lorg/videolan/libvlc/MediaPlayer;->setAudioOutputDeviceInternal(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    :cond_2
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :goto_2
    monitor-exit p0

    .line 53
    throw p1
.end method


# virtual methods
.method public addSlave(ILandroid/net/Uri;Z)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lorg/videolan/libvlc/util/VLCUtil;->encodeVLCUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lorg/videolan/libvlc/MediaPlayer;->nativeAddSlave(ILjava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public addSlave(ILjava/lang/String;Z)Z
    .locals 1

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/videolan/libvlc/MediaPlayer;->addSlave(ILandroid/net/Uri;Z)Z

    move-result p1

    return p1
.end method

.method public attachViews(Lorg/videolan/libvlc/util/VLCVideoLayout;Lorg/videolan/libvlc/util/DisplayManager;ZZ)V
    .locals 7

    .line 1
    new-instance v6, Lorg/videolan/libvlc/VideoHelper;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move v4, p3

    .line 8
    move v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lorg/videolan/libvlc/VideoHelper;-><init>(Lorg/videolan/libvlc/MediaPlayer;Lorg/videolan/libvlc/util/VLCVideoLayout;Lorg/videolan/libvlc/util/DisplayManager;ZZ)V

    .line 10
    .line 11
    .line 12
    iput-object v6, p0, Lorg/videolan/libvlc/MediaPlayer;->mVideoHelper:Lorg/videolan/libvlc/VideoHelper;

    .line 13
    .line 14
    invoke-virtual {v6}, Lorg/videolan/libvlc/VideoHelper;->attachViews()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public canDoPassthrough()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mCanDoPassthrough:Z

    .line 2
    .line 3
    return v0
.end method

.method public detachViews()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mVideoHelper:Lorg/videolan/libvlc/VideoHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/videolan/libvlc/VideoHelper;->release()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mVideoHelper:Lorg/videolan/libvlc/VideoHelper;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public declared-synchronized forceAudioDigitalEncodings([I)Z
    .locals 5

    .line 1
    const-string v0, "encoded:"

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->isAudioTrack()Z

    .line 5
    .line 6
    .line 7
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    :try_start_1
    array-length v1, p1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-direct {p0, p1, v2}, Lorg/videolan/libvlc/MediaPlayer;->setAudioOutputDeviceInternal(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->getEncodingFlags([I)J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugOutputDevice:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    iput-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioPlugOutputDevice:Ljava/lang/String;

    .line 49
    .line 50
    invoke-direct {p0, p1, v2}, Lorg/videolan/libvlc/MediaPlayer;->setAudioOutputDeviceInternal(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    monitor-exit p0

    .line 54
    return v2

    .line 55
    :goto_1
    monitor-exit p0

    .line 56
    throw p1
.end method

.method public getAspectRatio()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetAspectRatio()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getAudioDelay()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetAudioDelay()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public getAudioTrack()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetAudioTrack()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getAudioTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetAudioTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getAudioTracksCount()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetAudioTracksCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public native getChapter()I
.end method

.method public getChapters(I)[Lorg/videolan/libvlc/MediaPlayer$Chapter;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetChapters(I)[Lorg/videolan/libvlc/MediaPlayer$Chapter;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getCurrentVideoTrack()Lorg/videolan/libvlc/interfaces/IMedia$VideoTrack;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/videolan/libvlc/MediaPlayer;->getVideoTrack()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-object v2

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/interfaces/IMedia;

    .line 11
    .line 12
    invoke-interface {v0}, Lorg/videolan/libvlc/interfaces/IMedia;->getTrackCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-ge v1, v0, :cond_2

    .line 18
    .line 19
    iget-object v3, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/interfaces/IMedia;

    .line 20
    .line 21
    invoke-interface {v3, v1}, Lorg/videolan/libvlc/interfaces/IMedia;->getTrack(I)Lorg/videolan/libvlc/interfaces/IMedia$Track;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget v4, v3, Lorg/videolan/libvlc/interfaces/IMedia$Track;->type:I

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    if-ne v4, v5, :cond_1

    .line 29
    .line 30
    check-cast v3, Lorg/videolan/libvlc/interfaces/IMedia$VideoTrack;

    .line 31
    .line 32
    return-object v3

    .line 33
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    return-object v2
.end method

.method public bridge synthetic getInstance()J
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/videolan/libvlc/VLCObject;->getInstance()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public native getLength()J
.end method

.method public bridge synthetic getLibVLC()Lorg/videolan/libvlc/interfaces/ILibVLC;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/videolan/libvlc/VLCObject;->getLibVLC()Lorg/videolan/libvlc/interfaces/ILibVLC;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public declared-synchronized getMedia()Lorg/videolan/libvlc/interfaces/IMedia;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/interfaces/IMedia;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lorg/videolan/libvlc/interfaces/IVLCObject;->retain()Z

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/interfaces/IMedia;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-object v0

    .line 16
    :goto_1
    monitor-exit p0

    .line 17
    throw v0
.end method

.method public native getPlayerState()I
.end method

.method public native getPosition()F
.end method

.method public native getRate()F
.end method

.method public getScale()F
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetScale()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getSpuDelay()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetSpuDelay()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public getSpuTrack()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetSpuTrack()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getSpuTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetSpuTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getSpuTracksCount()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetSpuTracksCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getTeletext()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetTeletext()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public native getTime()J
.end method

.method public native getTitle()I
.end method

.method public getTitles()[Lorg/videolan/libvlc/MediaPlayer$Title;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetTitles()[Lorg/videolan/libvlc/MediaPlayer$Title;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getVLCVout()Lorg/videolan/libvlc/interfaces/IVLCVout;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mWindow:Lorg/videolan/libvlc/AWindow;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoScale()Lorg/videolan/libvlc/MediaPlayer$ScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mVideoHelper:Lorg/videolan/libvlc/VideoHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/videolan/libvlc/VideoHelper;->getVideoScale()Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lorg/videolan/libvlc/MediaPlayer$ScaleType;->SURFACE_BEST_FIT:Lorg/videolan/libvlc/MediaPlayer$ScaleType;

    .line 11
    .line 12
    :goto_0
    return-object v0
.end method

.method public getVideoTrack()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetVideoTrack()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getVideoTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetVideoTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getVideoTracksCount()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetVideoTracksCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public native getVolume()I
.end method

.method public declared-synchronized hasMedia()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/interfaces/IMedia;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    monitor-exit p0

    .line 10
    return v0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    monitor-exit p0

    .line 13
    throw v0
.end method

.method public native isPlaying()Z
.end method

.method public bridge synthetic isReleased()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/videolan/libvlc/VLCObject;->isReleased()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public native isSeekable()Z
.end method

.method public native nativeSetPosition(FZ)V
.end method

.method public native nativeSetTime(JZ)J
.end method

.method public native navigate(I)V
.end method

.method public native nextChapter()I
.end method

.method public declared-synchronized onEventNative(IJJFLjava/lang/String;)Lorg/videolan/libvlc/MediaPlayer$Event;
    .locals 6

    monitor-enter p0

    const/16 v0, 0x100

    if-eq p1, v0, :cond_3

    const/16 v0, 0x11e

    if-eq p1, v0, :cond_2

    const/16 p7, 0x111

    if-eq p1, p7, :cond_1

    const/16 p7, 0x112

    if-eq p1, p7, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    .line 2
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :pswitch_0
    :try_start_0
    new-instance p6, Lorg/videolan/libvlc/MediaPlayer$Event;

    move-object v0, p6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(IJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p6

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 4
    :pswitch_1
    :try_start_1
    new-instance p4, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {p4, p1, p2, p3}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p4

    .line 5
    :pswitch_2
    :try_start_2
    new-instance p2, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {p2, p1, p6}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(IF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p2

    .line 6
    :pswitch_3
    :try_start_3
    new-instance p4, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {p4, p1, p2, p3}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(IJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p4

    .line 7
    :pswitch_4
    :try_start_4
    new-instance p2, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {p2, p1}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_0
    long-to-int p4, p2

    .line 8
    :try_start_5
    iput p4, p0, Lorg/videolan/libvlc/MediaPlayer;->mVoutCount:I

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 10
    iget-object p4, p0, Lorg/videolan/libvlc/MediaPlayer;->mHandlerMainThread:Landroid/os/Handler;

    new-instance p5, Lorg/videolan/libvlc/MediaPlayer$4;

    invoke-direct {p5, p0}, Lorg/videolan/libvlc/MediaPlayer$4;-><init>(Lorg/videolan/libvlc/MediaPlayer;)V

    invoke-virtual {p4, p5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    new-instance p4, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {p4, p1, p2, p3}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(IJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p4

    .line 12
    :cond_1
    :try_start_6
    new-instance p4, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {p4, p1, p2, p3}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(IJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object p4

    .line 13
    :cond_2
    :try_start_7
    new-instance p4, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {p4, p1, p2, p3, p7}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(IJLjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object p4

    :cond_3
    :pswitch_5
    const/4 p2, 0x0

    .line 14
    :try_start_8
    iput p2, p0, Lorg/videolan/libvlc/MediaPlayer;->mVoutCount:I

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 16
    :pswitch_6
    new-instance p2, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {p2, p1, p6}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(IF)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object p2

    :goto_0
    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x102
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x109
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x114
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onEventNative(IJJFLjava/lang/String;)Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p7}, Lorg/videolan/libvlc/MediaPlayer;->onEventNative(IJJFLjava/lang/String;)Lorg/videolan/libvlc/MediaPlayer$Event;

    move-result-object p1

    return-object p1
.end method

.method public onReleaseNative()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/videolan/libvlc/MediaPlayer;->detachViews()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mWindow:Lorg/videolan/libvlc/AWindow;

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/videolan/libvlc/AWindow;->detachViews()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lorg/videolan/libvlc/MediaPlayer;->registerAudioPlug(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/interfaces/IMedia;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v1}, Lorg/videolan/libvlc/interfaces/IVLCObject;->release()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mRenderer:Lorg/videolan/libvlc/RendererItem;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Lorg/videolan/libvlc/VLCObject;->release()V

    .line 25
    .line 26
    .line 27
    :cond_1
    iput v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mVoutCount:I

    .line 28
    .line 29
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeRelease()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public native pause()V
.end method

.method public play()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlaying:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 3
    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioReset:Z

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutput:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0, v0}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetAudioOutput(Ljava/lang/String;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutputDevice:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0, v0}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetAudioOutputDevice(Ljava/lang/String;)Z

    :cond_1
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioReset:Z

    .line 9
    :cond_2
    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mListenAudioPlug:Z

    if-eqz v0, :cond_3

    .line 10
    invoke-direct {p0, v1}, Lorg/videolan/libvlc/MediaPlayer;->registerAudioPlug(Z)V

    .line 11
    :cond_3
    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlayRequested:Z

    .line 12
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mWindow:Lorg/videolan/libvlc/AWindow;

    invoke-virtual {v0}, Lorg/videolan/libvlc/AWindow;->areSurfacesWaiting()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    monitor-exit p0

    return-void

    .line 14
    :cond_4
    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlaying:Z

    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativePlay()V

    return-void

    .line 17
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public play(Landroid/content/res/AssetFileDescriptor;)V
    .locals 2

    .line 18
    new-instance v0, Lorg/videolan/libvlc/Media;

    iget-object v1, p0, Lorg/videolan/libvlc/VLCObject;->mILibVLC:Lorg/videolan/libvlc/interfaces/ILibVLC;

    invoke-direct {v0, v1, p1}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Landroid/content/res/AssetFileDescriptor;)V

    .line 19
    invoke-virtual {p0, v0}, Lorg/videolan/libvlc/MediaPlayer;->play(Lorg/videolan/libvlc/interfaces/IMedia;)V

    return-void
.end method

.method public play(Landroid/net/Uri;)V
    .locals 2

    .line 22
    new-instance v0, Lorg/videolan/libvlc/Media;

    iget-object v1, p0, Lorg/videolan/libvlc/VLCObject;->mILibVLC:Lorg/videolan/libvlc/interfaces/ILibVLC;

    invoke-direct {v0, v1, p1}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Landroid/net/Uri;)V

    .line 23
    invoke-virtual {p0, v0}, Lorg/videolan/libvlc/MediaPlayer;->play(Lorg/videolan/libvlc/interfaces/IMedia;)V

    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 2

    .line 20
    new-instance v0, Lorg/videolan/libvlc/Media;

    iget-object v1, p0, Lorg/videolan/libvlc/VLCObject;->mILibVLC:Lorg/videolan/libvlc/interfaces/ILibVLC;

    invoke-direct {v0, v1, p1}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, v0}, Lorg/videolan/libvlc/MediaPlayer;->play(Lorg/videolan/libvlc/interfaces/IMedia;)V

    return-void
.end method

.method public play(Lorg/videolan/libvlc/interfaces/IMedia;)V
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->setMedia(Lorg/videolan/libvlc/interfaces/IMedia;)V

    .line 25
    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/IVLCObject;->release()V

    .line 26
    invoke-virtual {p0}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    return-void
.end method

.method public playAsset(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAfd:Landroid/content/res/AssetFileDescriptor;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->play(Landroid/content/res/AssetFileDescriptor;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public native previousChapter()I
.end method

.method public record(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeRecord(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public setAspectRatio(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetAspectRatio(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setAudioDelay(J)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetAudioDelay(J)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public declared-synchronized setAudioDigitalOutputEnabled(Z)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioDigitalOutputEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mListenAudioPlug:Z

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->isAudioTrack()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-direct {p0, v2}, Lorg/videolan/libvlc/MediaPlayer;->registerAudioPlug(Z)V

    .line 22
    .line 23
    .line 24
    iput-boolean p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioDigitalOutputEnabled:Z

    .line 25
    .line 26
    invoke-direct {p0, v1}, Lorg/videolan/libvlc/MediaPlayer;->registerAudioPlug(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return v1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    :goto_0
    monitor-exit p0

    .line 34
    return v2

    .line 35
    :goto_1
    monitor-exit p0

    .line 36
    throw p1
.end method

.method public declared-synchronized setAudioOutput(Ljava/lang/String;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutput:Ljava/lang/String;

    .line 3
    .line 4
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->isAudioTrack()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mListenAudioPlug:Z

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, v1}, Lorg/videolan/libvlc/MediaPlayer;->registerAudioPlug(Z)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetAudioOutput(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutput:Ljava/lang/String;

    .line 27
    .line 28
    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mListenAudioPlug:Z

    .line 29
    .line 30
    :cond_1
    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mListenAudioPlug:Z

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-direct {p0, v0}, Lorg/videolan/libvlc/MediaPlayer;->registerAudioPlug(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    :cond_2
    monitor-exit p0

    .line 39
    return p1

    .line 40
    :goto_1
    monitor-exit p0

    .line 41
    throw p1
.end method

.method public setAudioOutputDevice(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setAudioOutputDeviceInternal(Ljava/lang/String;Z)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public setAudioTrack(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetAudioTrack(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public native setChapter(I)V
.end method

.method public setEqualizer(Lorg/videolan/libvlc/MediaPlayer$Equalizer;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetEqualizer(Lorg/videolan/libvlc/MediaPlayer$Equalizer;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public declared-synchronized setEventListener(Lorg/videolan/libvlc/MediaPlayer$EventListener;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0, p1}, Lorg/videolan/libvlc/VLCObject;->setEventListener(Lorg/videolan/libvlc/interfaces/AbstractVLCEvent$Listener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p0

    .line 9
    throw p1
.end method

.method public setMedia(Lorg/videolan/libvlc/interfaces/IMedia;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/IVLCObject;->isReleased()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/IMedia;->setDefaultMediaPlayerOptions()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v0, "Media is released"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetMedia(Lorg/videolan/libvlc/interfaces/IMedia;)V

    .line 22
    .line 23
    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/interfaces/IMedia;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-interface {v0}, Lorg/videolan/libvlc/interfaces/IVLCObject;->release()V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 36
    .line 37
    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/IVLCObject;->retain()Z

    .line 38
    .line 39
    .line 40
    :cond_3
    iput-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/interfaces/IMedia;

    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p1
.end method

.method public setPosition(F)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetPosition(FZ)V

    return-void
.end method

.method public setPosition(FZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetPosition(FZ)V

    return-void
.end method

.method public native setRate(F)V
.end method

.method public setRenderer(Lorg/videolan/libvlc/RendererItem;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mRenderer:Lorg/videolan/libvlc/RendererItem;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/videolan/libvlc/VLCObject;->release()V

    .line 6
    .line 7
    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Lorg/videolan/libvlc/VLCObject;->retain()Z

    .line 11
    .line 12
    .line 13
    :cond_1
    iput-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mRenderer:Lorg/videolan/libvlc/RendererItem;

    .line 14
    .line 15
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetRenderer(Lorg/videolan/libvlc/RendererItem;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public setScale(F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetScale(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setSpuDelay(J)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetSpuDelay(J)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public setSpuTrack(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetSpuTrack(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public setTeletext(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetTeletext(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setTime(J)J
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetTime(JZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public setTime(JZ)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetTime(JZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public native setTitle(I)V
.end method

.method public setUseOrientationFromBounds(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mUseOrientationFromBounds:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoScale(Lorg/videolan/libvlc/MediaPlayer$ScaleType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mVideoHelper:Lorg/videolan/libvlc/VideoHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/VideoHelper;->setVideoScale(Lorg/videolan/libvlc/MediaPlayer$ScaleType;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setVideoTitleDisplay(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetVideoTitleDisplay(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setVideoTrack(I)Z
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mWindow:Lorg/videolan/libvlc/AWindow;

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/videolan/libvlc/AWindow;->areViewsAttached()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mWindow:Lorg/videolan/libvlc/AWindow;

    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/videolan/libvlc/AWindow;->areSurfacesWaiting()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetVideoTrack(I)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public setVideoTrackEnabled(Z)V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lorg/videolan/libvlc/MediaPlayer;->setVideoTrack(I)Z

    .line 5
    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Lorg/videolan/libvlc/MediaPlayer;->isReleased()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/videolan/libvlc/MediaPlayer;->hasMedia()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/videolan/libvlc/MediaPlayer;->getVideoTrack()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-ne p1, v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/videolan/libvlc/MediaPlayer;->getVideoTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    array-length v1, p1

    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_0
    if-ge v2, v1, :cond_2

    .line 35
    .line 36
    aget-object v3, p1, v2

    .line 37
    .line 38
    iget v3, v3, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->id:I

    .line 39
    .line 40
    if-eq v3, v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0, v3}, Lorg/videolan/libvlc/MediaPlayer;->setVideoTrack(I)Z

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    :goto_1
    return-void
.end method

.method public native setVolume(I)I
.end method

.method public stop()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlayRequested:Z

    .line 4
    .line 5
    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlaying:Z

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioReset:Z

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeStop()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAfd:Landroid/content/res/AssetFileDescriptor;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 19
    .line 20
    .line 21
    :catch_0
    :cond_0
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    throw v0
.end method

.method public updateVideoSurfaces()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mVideoHelper:Lorg/videolan/libvlc/VideoHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/videolan/libvlc/VideoHelper;->updateVideoSurfaces()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public updateViewpoint(FFFFZ)Z
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/videolan/libvlc/MediaPlayer;->nativeUpdateViewpoint(FFFFZ)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public useOrientationFromBounds()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mUseOrientationFromBounds:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method
