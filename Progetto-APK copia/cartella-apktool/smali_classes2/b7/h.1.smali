.class public final Lb7/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lpe/hf/black20/CatchupPlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/CatchupPlayerActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/h;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/h;->H:Lpe/hf/black20/CatchupPlayerActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Lb7/h;->G:I

    .line 2
    .line 3
    iget-object v0, p0, Lb7/h;->H:Lpe/hf/black20/CatchupPlayerActivity;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->h0:I

    .line 9
    .line 10
    add-int/lit8 p1, p1, -0x3c

    .line 11
    .line 12
    iput p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->h0:I

    .line 13
    .line 14
    iget-object v1, v0, Lpe/hf/black20/CatchupPlayerActivity;->a0:Landroid/widget/SeekBar;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->L:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lpe/hf/black20/CatchupPlayerActivity;->d(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lpe/hf/black20/CatchupPlayerActivity;->a()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    iget p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->h0:I

    .line 29
    .line 30
    add-int/lit8 p1, p1, 0x3c

    .line 31
    .line 32
    iput p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->h0:I

    .line 33
    .line 34
    iget-object v1, v0, Lpe/hf/black20/CatchupPlayerActivity;->a0:Landroid/widget/SeekBar;

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 37
    .line 38
    .line 39
    iget-object p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->L:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lpe/hf/black20/CatchupPlayerActivity;->d(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lpe/hf/black20/CatchupPlayerActivity;->a()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_1
    iget-object p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->j0:Ljava/lang/String;

    .line 49
    .line 50
    const-string v1, "paused"

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    const/4 v2, 0x0

    .line 57
    const-string v3, "VLC"

    .line 58
    .line 59
    const-string v4, "EXO"

    .line 60
    .line 61
    const-string v5, "ORT_WHICH_PLAYER"

    .line 62
    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    invoke-static {v5, v4, v4}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_0

    .line 70
    .line 71
    iget-object p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->z0:LB0/O;

    .line 72
    .line 73
    invoke-virtual {p1, v2}, LB0/O;->S(Z)V

    .line 74
    .line 75
    .line 76
    iget-object p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->z0:LB0/O;

    .line 77
    .line 78
    invoke-virtual {p1}, LB0/O;->C()I

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    invoke-static {v5, v4, v3}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_1

    .line 87
    .line 88
    iget-object p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->t0:Lorg/videolan/libvlc/MediaPlayer;

    .line 89
    .line 90
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->isPlaying()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_1

    .line 95
    .line 96
    iget-object p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->t0:Lorg/videolan/libvlc/MediaPlayer;

    .line 97
    .line 98
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    .line 99
    .line 100
    .line 101
    :cond_1
    :goto_0
    const-string p1, "playing"

    .line 102
    .line 103
    iput-object p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->j0:Ljava/lang/String;

    .line 104
    .line 105
    iget-object p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->X:Landroid/widget/ImageButton;

    .line 106
    .line 107
    const v1, 0x7f080567

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 111
    .line 112
    .line 113
    iget-object p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->p0:Lb7/j;

    .line 114
    .line 115
    if-eqz p1, :cond_5

    .line 116
    .line 117
    iget-object v0, v0, Lpe/hf/black20/CatchupPlayerActivity;->n0:Landroid/os/Handler;

    .line 118
    .line 119
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_2
    invoke-static {v5, v4, v4}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_3

    .line 128
    .line 129
    iget-object p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->z0:LB0/O;

    .line 130
    .line 131
    if-eqz p1, :cond_4

    .line 132
    .line 133
    invoke-virtual {p1, v2}, LB0/O;->S(Z)V

    .line 134
    .line 135
    .line 136
    iget-object p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->z0:LB0/O;

    .line 137
    .line 138
    invoke-virtual {p1}, LB0/O;->C()I

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_3
    invoke-static {v5, v4, v3}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_4

    .line 147
    .line 148
    iget-object p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->t0:Lorg/videolan/libvlc/MediaPlayer;

    .line 149
    .line 150
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->isPlaying()Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-eqz p1, :cond_4

    .line 155
    .line 156
    iget-object p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->t0:Lorg/videolan/libvlc/MediaPlayer;

    .line 157
    .line 158
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->pause()V

    .line 159
    .line 160
    .line 161
    :cond_4
    :goto_1
    iput-object v1, v0, Lpe/hf/black20/CatchupPlayerActivity;->j0:Ljava/lang/String;

    .line 162
    .line 163
    iget-object p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->X:Landroid/widget/ImageButton;

    .line 164
    .line 165
    const v1, 0x7f080568

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Lpe/hf/black20/CatchupPlayerActivity;->a()V

    .line 172
    .line 173
    .line 174
    :cond_5
    :goto_2
    return-void

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
