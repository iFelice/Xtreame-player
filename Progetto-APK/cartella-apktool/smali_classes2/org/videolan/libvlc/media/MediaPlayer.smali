.class public Lorg/videolan/libvlc/media/MediaPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/media/MediaPlayer$TrackInfo;,
        Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;,
        Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;,
        Lorg/videolan/libvlc/media/MediaPlayer$OnTimedTextListener;,
        Lorg/videolan/libvlc/media/MediaPlayer$OnVideoSizeChangedListener;,
        Lorg/videolan/libvlc/media/MediaPlayer$OnSeekCompleteListener;,
        Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;,
        Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;,
        Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;
    }
.end annotation


# static fields
.field public static final MEDIA_ERROR_IO:I = -0x3ec

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_EXTERNAL_METADATA_UPDATE:I = 0x323

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_STARTED_AS_NEXT:I = 0x2

.field public static final MEDIA_INFO_SUBTITLE_TIMED_OUT:I = 0x386

.field public static final MEDIA_INFO_TIMED_TEXT_ERROR:I = 0x384

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_UNSUPPORTED_SUBTITLE:I = 0x385

.field public static final MEDIA_INFO_VIDEO_RENDERING_START:I = 0x3

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field public static final MEDIA_MIMETYPE_TEXT_SUBRIP:Ljava/lang/String; = "application/x-subrip"

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2


# instance fields
.field private mCurrentMedia:Lorg/videolan/libvlc/interfaces/IMedia;

.field private final mILibVLC:Lorg/videolan/libvlc/interfaces/ILibVLC;

.field private mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/interfaces/IMedia;

    .line 6
    .line 7
    new-instance v1, Lorg/videolan/libvlc/LibVLC;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lorg/videolan/libvlc/LibVLC;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mILibVLC:Lorg/videolan/libvlc/interfaces/ILibVLC;

    .line 13
    .line 14
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer;

    .line 15
    .line 16
    invoke-direct {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 20
    .line 21
    return-void
.end method

.method public static create(Landroid/content/Context;I)Lorg/videolan/libvlc/media/MediaPlayer;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    invoke-static {p0, p1, v0, v1}, Lorg/videolan/libvlc/media/MediaPlayer;->create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Lorg/videolan/libvlc/media/MediaPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Lorg/videolan/libvlc/media/MediaPlayer;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;)Lorg/videolan/libvlc/media/MediaPlayer;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lorg/videolan/libvlc/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Lorg/videolan/libvlc/media/MediaPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Lorg/videolan/libvlc/media/MediaPlayer;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, p1, p2, v0, v1}, Lorg/videolan/libvlc/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Lorg/videolan/libvlc/media/MediaPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Lorg/videolan/libvlc/media/MediaPlayer;
    .locals 0

    .line 4
    new-instance p0, Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-direct {p0}, Lorg/videolan/libvlc/media/MediaPlayer;-><init>()V

    return-object p0
.end method


# virtual methods
.method public addTimedTextSource(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 4
    iget-object p1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2, p3}, Lorg/videolan/libvlc/MediaPlayer;->addSlave(ILandroid/net/Uri;Z)Z

    return-void
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 0

    .line 2
    return-void
.end method

.method public addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object p2, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->addSlave(ILjava/lang/String;Z)Z

    return-void
.end method

.method public attachAuxEffect(I)V
    .locals 0

    return-void
.end method

.method public deselectTrack(I)V
    .locals 0

    return-void
.end method

.method public finalize()V
    .locals 0

    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-int v1, v0

    .line 8
    return v1
.end method

.method public getDuration()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getLength()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-int v1, v0

    .line 8
    return v1
.end method

.method public getSelectedTrack(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getTrackInfo()[Lorg/videolan/libvlc/media/MediaPlayer$TrackInfo;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lorg/videolan/libvlc/media/MediaPlayer$TrackInfo;

    .line 3
    .line 4
    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public isLooping()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->isPlaying()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->pause()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public prepare()V
    .locals 0

    return-void
.end method

.method public prepareAsync()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/interfaces/IMedia;

    .line 2
    .line 3
    const-string v1, ":video-paused"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lorg/videolan/libvlc/interfaces/IMedia;->addOption(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->release()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public seekTo(I)V
    .locals 0

    return-void
.end method

.method public selectTrack(I)V
    .locals 0

    return-void
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 0

    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 0

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0

    return-void
.end method

.method public setAuxEffectSendLevel(F)V
    .locals 0

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/videolan/libvlc/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance p1, Lorg/videolan/libvlc/Media;

    iget-object p3, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mILibVLC:Lorg/videolan/libvlc/interfaces/ILibVLC;

    invoke-direct {p1, p3, p2}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Landroid/net/Uri;)V

    iput-object p1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/interfaces/IMedia;

    .line 3
    iget-object p2, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {p2, p1}, Lorg/videolan/libvlc/MediaPlayer;->setMedia(Lorg/videolan/libvlc/interfaces/IMedia;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 2

    .line 6
    new-instance v0, Lorg/videolan/libvlc/Media;

    iget-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mILibVLC:Lorg/videolan/libvlc/interfaces/ILibVLC;

    invoke-direct {v0, v1, p1}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/interfaces/IMedia;

    .line 7
    iget-object p1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setMedia(Lorg/videolan/libvlc/interfaces/IMedia;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lorg/videolan/libvlc/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2

    .line 4
    new-instance v0, Lorg/videolan/libvlc/Media;

    iget-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mILibVLC:Lorg/videolan/libvlc/interfaces/ILibVLC;

    invoke-direct {v0, v1, p1}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/interfaces/IMedia;

    .line 5
    iget-object p1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setMedia(Lorg/videolan/libvlc/interfaces/IMedia;)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/interfaces/IVLCVout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1, p1}, Lorg/videolan/libvlc/interfaces/IVLCVout;->setVideoSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    return-void
.end method

.method public setNextMediaPlayer(Lorg/videolan/libvlc/media/MediaPlayer;)V
    .locals 0

    return-void
.end method

.method public setOnBufferingUpdateListener(Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    return-void
.end method

.method public setOnCompletionListener(Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    return-void
.end method

.method public setOnErrorListener(Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    return-void
.end method

.method public setOnInfoListener(Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;)V
    .locals 0

    return-void
.end method

.method public setOnPreparedListener(Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    return-void
.end method

.method public setOnSeekCompleteListener(Lorg/videolan/libvlc/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    return-void
.end method

.method public setOnTimedTextListener(Lorg/videolan/libvlc/media/MediaPlayer$OnTimedTextListener;)V
    .locals 0

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lorg/videolan/libvlc/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 0

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/interfaces/IVLCVout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, p1, v1}, Lorg/videolan/libvlc/interfaces/IVLCVout;->setVideoSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 0

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 2
    .line 3
    add-float/2addr p1, p2

    .line 4
    const/high16 p2, 0x42c80000    # 100.0f

    .line 5
    .line 6
    mul-float p1, p1, p2

    .line 7
    .line 8
    const/high16 p2, 0x40000000    # 2.0f

    .line 9
    .line 10
    div-float/2addr p1, p2

    .line 11
    float-to-int p1, p1

    .line 12
    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->stop()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
