.class public Lorg/videolan/libvlc/util/Dumper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/util/Dumper$Listener;
    }
.end annotation


# instance fields
.field private final mILibVLC:Lorg/videolan/libvlc/interfaces/ILibVLC;

.field private final mListener:Lorg/videolan/libvlc/util/Dumper$Listener;

.field private final mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lorg/videolan/libvlc/util/Dumper$Listener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    iput-object p3, p0, Lorg/videolan/libvlc/util/Dumper;->mListener:Lorg/videolan/libvlc/util/Dumper$Listener;

    .line 11
    .line 12
    new-instance p3, Ljava/util/ArrayList;

    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    const-string v0, "--demux"

    .line 20
    .line 21
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    const-string v0, "dump2,none"

    .line 25
    .line 26
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    const-string v0, "--demuxdump-file"

    .line 30
    .line 31
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    const-string p2, "--no-video"

    .line 38
    .line 39
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    const-string p2, "--no-audio"

    .line 43
    .line 44
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    const-string p2, "--no-spu"

    .line 48
    .line 49
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    const-string p2, "-vv"

    .line 53
    .line 54
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    new-instance p2, Lorg/videolan/libvlc/LibVLC;

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-direct {p2, v0, p3}, Lorg/videolan/libvlc/LibVLC;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    iput-object p2, p0, Lorg/videolan/libvlc/util/Dumper;->mILibVLC:Lorg/videolan/libvlc/interfaces/ILibVLC;

    .line 64
    .line 65
    new-instance p3, Lorg/videolan/libvlc/Media;

    .line 66
    .line 67
    invoke-direct {p3, p2, p1}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Landroid/net/Uri;)V

    .line 68
    .line 69
    .line 70
    new-instance p1, Lorg/videolan/libvlc/MediaPlayer;

    .line 71
    .line 72
    invoke-direct {p1, p3}, Lorg/videolan/libvlc/MediaPlayer;-><init>(Lorg/videolan/libvlc/interfaces/IMedia;)V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lorg/videolan/libvlc/util/Dumper;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 76
    .line 77
    new-instance p2, Lorg/videolan/libvlc/util/Dumper$1;

    .line 78
    .line 79
    invoke-direct {p2, p0}, Lorg/videolan/libvlc/util/Dumper$1;-><init>(Lorg/videolan/libvlc/util/Dumper;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Lorg/videolan/libvlc/MediaPlayer;->setEventListener(Lorg/videolan/libvlc/MediaPlayer$EventListener;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {p3}, Lorg/videolan/libvlc/interfaces/IVLCObject;->release()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 90
    .line 91
    const-string p2, "arguments shouldn\'t be null"

    .line 92
    .line 93
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1
.end method

.method public static synthetic access$000(Lorg/videolan/libvlc/util/Dumper;)Lorg/videolan/libvlc/util/Dumper$Listener;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/videolan/libvlc/util/Dumper;->mListener:Lorg/videolan/libvlc/util/Dumper$Listener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/util/Dumper;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->stop()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/videolan/libvlc/util/Dumper;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->release()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/videolan/libvlc/util/Dumper;->mILibVLC:Lorg/videolan/libvlc/interfaces/ILibVLC;

    .line 12
    .line 13
    invoke-interface {v0}, Lorg/videolan/libvlc/interfaces/IVLCObject;->release()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/util/Dumper;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
