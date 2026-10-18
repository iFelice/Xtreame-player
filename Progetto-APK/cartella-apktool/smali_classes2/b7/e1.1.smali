.class public final Lb7/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lpe/hf/black20/PlayStreamEPGActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/PlayStreamEPGActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/e1;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/e1;->H:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lb7/e1;->G:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    iget-object v2, p0, Lb7/e1;->H:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v2, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->isPlaying()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, v2, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->pause()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void

    .line 24
    :pswitch_0
    iget-object v0, v2, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 25
    .line 26
    invoke-virtual {v0}, LB0/O;->y()Lm0/m0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v0, v0, Lm0/m0;->a:Lz4/H;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Lz4/H;->v(I)Lz4/F;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_1
    invoke-virtual {v0}, Lz4/a;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Lz4/a;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lm0/l0;

    .line 48
    .line 49
    iget-object v4, v3, Lm0/l0;->b:Lm0/g0;

    .line 50
    .line 51
    iget v5, v4, Lm0/g0;->c:I

    .line 52
    .line 53
    const/4 v6, 0x3

    .line 54
    if-ne v5, v6, :cond_1

    .line 55
    .line 56
    iget v0, v3, Lm0/l0;->a:I

    .line 57
    .line 58
    if-lez v0, :cond_2

    .line 59
    .line 60
    new-instance v0, Lm0/h0;

    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {v3}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-direct {v0, v4, v3}, Lm0/h0;-><init>(Lm0/g0;Ljava/util/List;)V

    .line 71
    .line 72
    .line 73
    iget-object v3, v2, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 74
    .line 75
    invoke-virtual {v3}, LB0/O;->E()Lm0/k0;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, LR0/k;

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    new-instance v4, LR0/j;

    .line 85
    .line 86
    invoke-direct {v4, v3}, LR0/j;-><init>(LR0/k;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v6}, LR0/j;->c(I)Lm0/j0;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v0}, LR0/j;->a(Lm0/h0;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v6, v1}, LR0/j;->j(IZ)Lm0/j0;

    .line 96
    .line 97
    .line 98
    iget-object v0, v2, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, LB0/O;->S(Z)V

    .line 104
    .line 105
    .line 106
    iget-object v0, v2, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 107
    .line 108
    new-instance v1, LR0/k;

    .line 109
    .line 110
    invoke-direct {v1, v4}, LR0/k;-><init>(LR0/j;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, LB0/O;->U(Lm0/k0;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, v2, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 117
    .line 118
    invoke-virtual {v0}, Lm0/f;->h()V

    .line 119
    .line 120
    .line 121
    :cond_2
    return-void

    .line 122
    :pswitch_1
    iget-object v0, v2, Lpe/hf/black20/PlayStreamEPGActivity;->H2:Landroid/widget/ImageView;

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :pswitch_2
    iget-object v0, v2, Lpe/hf/black20/PlayStreamEPGActivity;->G2:Landroid/widget/ImageView;

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :pswitch_3
    iget-object v0, v2, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 135
    .line 136
    const/4 v1, -0x1

    .line 137
    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setSpuTrack(I)Z

    .line 138
    .line 139
    .line 140
    iget-object v0, v2, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 141
    .line 142
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
