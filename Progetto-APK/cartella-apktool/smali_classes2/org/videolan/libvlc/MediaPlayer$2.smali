.class Lorg/videolan/libvlc/MediaPlayer$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/libvlc/MediaPlayer;->createAudioPlugReceiver()Landroid/content/BroadcastReceiver;
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
    iput-object p1, p0, Lorg/videolan/libvlc/MediaPlayer$2;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "android.media.action.HDMI_AUDIO_PLUG"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    const-string p1, "android.media.extra.AUDIO_PLUG_STATE"

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 v0, 0x1

    .line 24
    if-ne p1, v0, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lorg/videolan/libvlc/MediaPlayer$2;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    .line 27
    .line 28
    const-string v0, "android.media.extra.ENCODINGS"

    .line 29
    .line 30
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {p1, p2}, Lorg/videolan/libvlc/MediaPlayer;->access$500(Lorg/videolan/libvlc/MediaPlayer;[I)J

    .line 35
    .line 36
    .line 37
    move-result-wide p1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const-wide/16 p1, 0x0

    .line 40
    .line 41
    :goto_0
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer$2;->this$0:Lorg/videolan/libvlc/MediaPlayer;

    .line 42
    .line 43
    const-string v1, "stereo"

    .line 44
    .line 45
    invoke-static {v0, p1, p2, v1}, Lorg/videolan/libvlc/MediaPlayer;->access$600(Lorg/videolan/libvlc/MediaPlayer;JLjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method
