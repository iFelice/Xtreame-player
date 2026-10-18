.class Lorg/videolan/libvlc/MediaPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/videolan/libvlc/AWindow$SurfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/libvlc/MediaPlayer;


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/MediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSurfacesCreated(Lorg/videolan/libvlc/AWindow;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    .line 5
    .line 6
    invoke-static {v0}, Lorg/videolan/libvlc/MediaPlayer;->access$200(Lorg/videolan/libvlc/MediaPlayer;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    .line 15
    .line 16
    invoke-static {v0}, Lorg/videolan/libvlc/MediaPlayer;->access$300(Lorg/videolan/libvlc/MediaPlayer;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    const/4 v2, 0x1

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    .line 28
    .line 29
    invoke-static {v0}, Lorg/videolan/libvlc/MediaPlayer;->access$400(Lorg/videolan/libvlc/MediaPlayer;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    .line 42
    .line 43
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    if-eqz v0, :cond_3

    .line 48
    .line 49
    iget-object p1, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lorg/videolan/libvlc/MediaPlayer;->setVideoTrackEnabled(Z)V

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_1
    return-void

    .line 55
    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw v0
.end method

.method public onSurfacesDestroyed(Lorg/videolan/libvlc/AWindow;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    .line 5
    .line 6
    invoke-static {v0}, Lorg/videolan/libvlc/MediaPlayer;->access$400(Lorg/videolan/libvlc/MediaPlayer;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-lez v0, :cond_0

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
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lorg/videolan/libvlc/MediaPlayer$1;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Lorg/videolan/libvlc/MediaPlayer;->setVideoTrackEnabled(Z)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw v0
.end method
