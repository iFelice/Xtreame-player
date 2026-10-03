.class public final Lcom/google/android/gms/internal/ads/fM;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/p0;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Lcom/google/android/gms/internal/ads/Fh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/p0;IIIIIIILcom/google/android/gms/internal/ads/Fh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fM;->a:Lcom/google/android/gms/internal/ads/p0;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/ads/fM;->b:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/ads/fM;->c:I

    .line 9
    .line 10
    iput p4, p0, Lcom/google/android/gms/internal/ads/fM;->d:I

    .line 11
    .line 12
    iput p5, p0, Lcom/google/android/gms/internal/ads/fM;->e:I

    .line 13
    .line 14
    iput p6, p0, Lcom/google/android/gms/internal/ads/fM;->f:I

    .line 15
    .line 16
    iput p7, p0, Lcom/google/android/gms/internal/ads/fM;->g:I

    .line 17
    .line 18
    iput p8, p0, Lcom/google/android/gms/internal/ads/fM;->h:I

    .line 19
    .line 20
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/fM;->i:Lcom/google/android/gms/internal/ads/Fh;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/gms/internal/ads/bH;)Landroid/media/AudioTrack;
    .locals 11

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/fM;->c:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    :try_start_0
    sget v3, Lcom/google/android/gms/internal/ads/Et;->a:I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    const/16 v4, 0x1d

    .line 8
    .line 9
    iget v5, p0, Lcom/google/android/gms/internal/ads/fM;->g:I

    .line 10
    .line 11
    iget v6, p0, Lcom/google/android/gms/internal/ads/fM;->f:I

    .line 12
    .line 13
    iget v7, p0, Lcom/google/android/gms/internal/ads/fM;->e:I

    .line 14
    .line 15
    if-lt v3, v4, :cond_1

    .line 16
    .line 17
    :try_start_1
    invoke-static {v7, v6, v5}, Lcom/google/android/gms/internal/ads/Et;->x(III)Landroid/media/AudioFormat;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/bH;->a()Lcom/google/android/gms/internal/ads/Of;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/Of;->H:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p2, Landroid/media/AudioAttributes;

    .line 28
    .line 29
    new-instance v4, Landroid/media/AudioTrack$Builder;

    .line 30
    .line 31
    invoke-direct {v4}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, p2}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p2, v3}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2, v2}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    iget v3, p0, Lcom/google/android/gms/internal/ads/fM;->h:I

    .line 47
    .line 48
    invoke-virtual {p2, v3}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p2, p1}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-ne v0, v2, :cond_0

    .line 57
    .line 58
    const/4 p2, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 p2, 0x0

    .line 61
    :goto_0
    invoke-static {p1, p2}, Landroid/support/v4/media/session/a;->c(Landroid/media/AudioTrack$Builder;Z)Landroid/media/AudioTrack$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    goto :goto_2

    .line 70
    :goto_1
    move-object v10, p1

    .line 71
    goto :goto_4

    .line 72
    :catch_0
    move-exception p1

    .line 73
    goto :goto_1

    .line 74
    :catch_1
    move-exception p1

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    new-instance v9, Landroid/media/AudioTrack;

    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/bH;->a()Lcom/google/android/gms/internal/ads/Of;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/Of;->H:Ljava/lang/Object;

    .line 83
    .line 84
    move-object v4, p2

    .line 85
    check-cast v4, Landroid/media/AudioAttributes;

    .line 86
    .line 87
    invoke-static {v7, v6, v5}, Lcom/google/android/gms/internal/ads/Et;->x(III)Landroid/media/AudioFormat;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    iget v6, p0, Lcom/google/android/gms/internal/ads/fM;->h:I

    .line 92
    .line 93
    const/4 v7, 0x1

    .line 94
    move-object v3, v9

    .line 95
    move v8, p1

    .line 96
    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    .line 98
    .line 99
    move-object p1, v9

    .line 100
    :goto_2
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-ne v4, v2, :cond_2

    .line 105
    .line 106
    return-object p1

    .line 107
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 108
    .line 109
    .line 110
    :catch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/RL;

    .line 111
    .line 112
    if-ne v0, v2, :cond_3

    .line 113
    .line 114
    const/4 v9, 0x1

    .line 115
    goto :goto_3

    .line 116
    :cond_3
    const/4 v9, 0x0

    .line 117
    :goto_3
    iget v7, p0, Lcom/google/android/gms/internal/ads/fM;->h:I

    .line 118
    .line 119
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/fM;->a:Lcom/google/android/gms/internal/ads/p0;

    .line 120
    .line 121
    iget v5, p0, Lcom/google/android/gms/internal/ads/fM;->e:I

    .line 122
    .line 123
    iget v6, p0, Lcom/google/android/gms/internal/ads/fM;->f:I

    .line 124
    .line 125
    const/4 v10, 0x0

    .line 126
    move-object v3, p1

    .line 127
    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/RL;-><init>(IIIILcom/google/android/gms/internal/ads/p0;ZLjava/lang/RuntimeException;)V

    .line 128
    .line 129
    .line 130
    throw p1

    .line 131
    :goto_4
    new-instance p1, Lcom/google/android/gms/internal/ads/RL;

    .line 132
    .line 133
    if-ne v0, v2, :cond_4

    .line 134
    .line 135
    const/4 v9, 0x1

    .line 136
    goto :goto_5

    .line 137
    :cond_4
    const/4 v9, 0x0

    .line 138
    :goto_5
    iget v7, p0, Lcom/google/android/gms/internal/ads/fM;->h:I

    .line 139
    .line 140
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/fM;->a:Lcom/google/android/gms/internal/ads/p0;

    .line 141
    .line 142
    const/4 v4, 0x0

    .line 143
    iget v5, p0, Lcom/google/android/gms/internal/ads/fM;->e:I

    .line 144
    .line 145
    iget v6, p0, Lcom/google/android/gms/internal/ads/fM;->f:I

    .line 146
    .line 147
    move-object v3, p1

    .line 148
    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/RL;-><init>(IIIILcom/google/android/gms/internal/ads/p0;ZLjava/lang/RuntimeException;)V

    .line 149
    .line 150
    .line 151
    throw p1
.end method
