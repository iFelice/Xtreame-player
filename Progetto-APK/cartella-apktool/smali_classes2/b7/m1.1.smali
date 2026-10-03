.class public final Lb7/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/videolan/libvlc/MediaPlayer$EventListener;


# instance fields
.field public final synthetic G:Ljava/lang/String;

.field public final synthetic H:Lpe/hf/black20/RadioPlayerActivity;


# direct methods
.method public constructor <init>(Lpe/hf/black20/RadioPlayerActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb7/m1;->H:Lpe/hf/black20/RadioPlayerActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lb7/m1;->G:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onEvent(Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;)V
    .locals 3

    .line 1
    check-cast p1, Lorg/videolan/libvlc/MediaPlayer$Event;

    .line 2
    .line 3
    iget v0, p1, Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;->type:I

    .line 4
    .line 5
    const/16 v1, 0x102

    .line 6
    .line 7
    const-string v2, "XCIPTV_TAG"

    .line 8
    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/16 v1, 0x103

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/16 p1, 0x106

    .line 16
    .line 17
    if-eq v0, p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p1, "Event Stopped"

    .line 21
    .line 22
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lb7/m1;->H:Lpe/hf/black20/RadioPlayerActivity;

    .line 26
    .line 27
    iget-object v0, p0, Lb7/m1;->G:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {p1, v0}, Lpe/hf/black20/RadioPlayerActivity;->a(Lpe/hf/black20/RadioPlayerActivity;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "Event Buffering="

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getBuffering()F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const-string p1, "Event Opening"

    .line 56
    .line 57
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method
