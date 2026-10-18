.class public final Lb7/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lpe/hf/black20/PlayStreamEPGActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/PlayStreamEPGActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/g1;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/g1;->b:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 1
    iget p1, p0, Lb7/g1;->a:I

    .line 2
    .line 3
    const-string p2, "PlayStreamEPGActivity - onStopTrackingTouch-onProgressChanged"

    .line 4
    .line 5
    const-string v0, "XCIPTV_TAG"

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    if-eqz p3, :cond_3

    .line 19
    .line 20
    iget-object p1, p0, Lb7/g1;->b:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 21
    .line 22
    iget-object p2, p1, Lpe/hf/black20/PlayStreamEPGActivity;->w1:Landroid/widget/SeekBar;

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getProgress()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    mul-int/lit16 p2, p2, 0x3e8

    .line 29
    .line 30
    iput p2, p1, Lpe/hf/black20/PlayStreamEPGActivity;->x1:I

    .line 31
    .line 32
    const-string p2, "ORT_WHICH_CAT"

    .line 33
    .line 34
    const-string p3, "TV"

    .line 35
    .line 36
    const-string v0, "VOD"

    .line 37
    .line 38
    invoke-static {p2, p3, v0}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    const-string v0, "SERIES"

    .line 45
    .line 46
    invoke-static {p2, p3, v0}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_3

    .line 51
    .line 52
    :cond_0
    const-string p2, "ORT_WHICH_PLAYER"

    .line 53
    .line 54
    const-string p3, "EXO"

    .line 55
    .line 56
    invoke-static {p2, p3, p3}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    iget-object p2, p1, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 63
    .line 64
    if-eqz p2, :cond_2

    .line 65
    .line 66
    iget p3, p1, Lpe/hf/black20/PlayStreamEPGActivity;->x1:I

    .line 67
    .line 68
    int-to-long v0, p3

    .line 69
    const/4 p3, 0x5

    .line 70
    invoke-virtual {p2, p3, v0, v1}, Lm0/f;->j(IJ)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const-string v0, "VLC"

    .line 75
    .line 76
    invoke-static {p2, p3, v0}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_2

    .line 81
    .line 82
    iget-object p2, p1, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 83
    .line 84
    if-eqz p2, :cond_2

    .line 85
    .line 86
    iget p3, p1, Lpe/hf/black20/PlayStreamEPGActivity;->x1:I

    .line 87
    .line 88
    int-to-long v0, p3

    .line 89
    invoke-virtual {p2, v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setTime(J)J

    .line 90
    .line 91
    .line 92
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lpe/hf/black20/PlayStreamEPGActivity;->O()V

    .line 93
    .line 94
    .line 95
    :cond_3
    return-void

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    .line 1
    iget p1, p0, Lb7/g1;->a:I

    .line 2
    .line 3
    const-string v0, "PlayStreamEPGActivity - onStopTrackingTouch"

    .line 4
    .line 5
    const-string v1, "XCIPTV_TAG"

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    const-string p1, "ORT_WHICH_PLAYER"

    .line 19
    .line 20
    const-string v0, "EXO"

    .line 21
    .line 22
    invoke-static {p1, v0, v0}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object v2, p0, Lb7/g1;->b:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object p1, v2, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 31
    .line 32
    iget-object v0, v2, Lpe/hf/black20/PlayStreamEPGActivity;->w1:Landroid/widget/SeekBar;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    mul-int/lit16 v0, v0, 0x3e8

    .line 39
    .line 40
    int-to-long v0, v0

    .line 41
    const/4 v3, 0x5

    .line 42
    invoke-virtual {p1, v3, v0, v1}, Lm0/f;->j(IJ)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string v1, "VLC"

    .line 47
    .line 48
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    iget-object p1, v2, Lpe/hf/black20/PlayStreamEPGActivity;->w1:Landroid/widget/SeekBar;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    mul-int/lit16 p1, p1, 0x3e8

    .line 61
    .line 62
    iget-object v0, v2, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 63
    .line 64
    int-to-long v3, p1

    .line 65
    invoke-virtual {v0, v3, v4}, Lorg/videolan/libvlc/MediaPlayer;->setTime(J)J

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    sget-object p1, Lpe/hf/black20/PlayStreamEPGActivity;->THEME:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v2}, Lpe/hf/black20/PlayStreamEPGActivity;->O()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
