.class public final synthetic Lb7/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lpe/hf/black20/PlayStreamEPGActivity;

.field public final synthetic I:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/PlayStreamEPGActivity;[Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lb7/b1;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/b1;->H:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 7
    .line 8
    iput-object p2, p0, Lb7/b1;->I:[Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget p1, p0, Lb7/b1;->G:I

    .line 2
    .line 3
    iget-object v0, p0, Lb7/b1;->I:[Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lb7/b1;->H:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p1, v1, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->pause()V

    .line 13
    .line 14
    .line 15
    iget-object p1, v1, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 16
    .line 17
    aget-object p2, v0, p2

    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-virtual {p1, p2}, Lorg/videolan/libvlc/MediaPlayer;->setAudioTrack(I)Z

    .line 24
    .line 25
    .line 26
    iget-object p1, v1, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 27
    .line 28
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    iget-object p1, v1, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 33
    .line 34
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->pause()V

    .line 35
    .line 36
    .line 37
    iget-object p1, v1, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 38
    .line 39
    aget-object p2, v0, p2

    .line 40
    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-virtual {p1, p2}, Lorg/videolan/libvlc/MediaPlayer;->setVideoTrack(I)Z

    .line 46
    .line 47
    .line 48
    iget-object p1, v1, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 49
    .line 50
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
