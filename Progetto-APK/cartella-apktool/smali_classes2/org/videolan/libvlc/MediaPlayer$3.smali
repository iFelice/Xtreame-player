.class Lorg/videolan/libvlc/MediaPlayer$3;
.super Landroid/media/AudioDeviceCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/libvlc/MediaPlayer;->createAudioDeviceCallback()Landroid/media/AudioDeviceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mEncodedDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/videolan/libvlc/MediaPlayer;


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/MediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/videolan/libvlc/MediaPlayer$3;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lorg/videolan/libvlc/MediaPlayer$3;->mEncodedDevices:Landroid/util/SparseArray;

    .line 12
    .line 13
    return-void
.end method

.method private onAudioDevicesChanged()V
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    move-wide v3, v0

    .line 5
    :goto_0
    iget-object v5, p0, Lorg/videolan/libvlc/MediaPlayer$3;->mEncodedDevices:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result v5

    .line 11
    if-ge v2, v5, :cond_0

    .line 12
    .line 13
    iget-object v5, p0, Lorg/videolan/libvlc/MediaPlayer$3;->mEncodedDevices:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    check-cast v5, Ljava/lang/Long;

    .line 20
    .line 21
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    or-long/2addr v3, v5

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    cmp-long v2, v3, v0

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    const-string v0, "stereo"

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const-string v0, "pcm"

    .line 37
    .line 38
    :goto_1
    iget-object v1, p0, Lorg/videolan/libvlc/MediaPlayer$3;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    .line 39
    .line 40
    invoke-static {v1, v3, v4, v0}, Lorg/videolan/libvlc/MediaPlayer;->access$600(Lorg/videolan/libvlc/MediaPlayer;JLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 8

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    invoke-static {v2}, Lb7/u;->v(Landroid/media/AudioDeviceInfo;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v3, p0, Lorg/videolan/libvlc/MediaPlayer$3;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    .line 15
    .line 16
    invoke-static {v2}, Lb7/u;->z(Landroid/media/AudioDeviceInfo;)[I

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-static {v3, v4}, Lorg/videolan/libvlc/MediaPlayer;->access$500(Lorg/videolan/libvlc/MediaPlayer;[I)J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    const-wide/16 v5, 0x0

    .line 25
    .line 26
    cmp-long v7, v3, v5

    .line 27
    .line 28
    if-eqz v7, :cond_1

    .line 29
    .line 30
    iget-object v5, p0, Lorg/videolan/libvlc/MediaPlayer$3;->mEncodedDevices:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-static {v2}, Lb7/u;->b(Landroid/media/AudioDeviceInfo;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v5, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer$3;->onAudioDevicesChanged()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    invoke-static {v2}, Lb7/u;->v(Landroid/media/AudioDeviceInfo;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v3, p0, Lorg/videolan/libvlc/MediaPlayer$3;->mEncodedDevices:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-static {v2}, Lb7/u;->b(Landroid/media/AudioDeviceInfo;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 21
    .line 22
    .line 23
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer$3;->onAudioDevicesChanged()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
