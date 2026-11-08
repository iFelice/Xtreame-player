.class public abstract Lcom/google/android/gms/internal/ads/QM;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)I
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/support/v4/media/session/a;->i(Landroid/media/MediaCodecInfo$VideoCapabilities;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_8

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_6

    .line 15
    .line 16
    :cond_0
    double-to-int p3, p3

    .line 17
    invoke-static {p1, p2, p3}, Landroid/support/v4/media/session/a;->e(III)Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 p2, 0x0

    .line 22
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    const/4 p4, 0x1

    .line 27
    if-ge p2, p3, :cond_2

    .line 28
    .line 29
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-static {p3}, LD0/a;->a(Ljava/lang/Object;)Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-static {p3, p1}, LD0/a;->u(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    if-eqz p3, :cond_1

    .line 42
    .line 43
    const/4 p0, 0x2

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 p0, 0x1

    .line 49
    :goto_1
    if-ne p0, p4, :cond_7

    .line 50
    .line 51
    sget-object p1, Lcom/google/android/gms/internal/ads/Cw;->k:Ljava/lang/Boolean;

    .line 52
    .line 53
    if-nez p1, :cond_7

    .line 54
    .line 55
    sget p1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 56
    .line 57
    const/16 p2, 0x23

    .line 58
    .line 59
    if-lt p1, p2, :cond_3

    .line 60
    .line 61
    :goto_2
    const/4 p4, 0x0

    .line 62
    goto/16 :goto_5

    .line 63
    .line 64
    :cond_3
    :try_start_0
    new-instance p1, Lcom/google/android/gms/internal/ads/K;

    .line 65
    .line 66
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string p2, "video/avc"

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance p2, Lcom/google/android/gms/internal/ads/p0;

    .line 75
    .line 76
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 80
    .line 81
    if-eqz p1, :cond_6

    .line 82
    .line 83
    sget-object p1, Lcom/google/android/gms/internal/ads/WM;->r:Lcom/google/android/gms/internal/ads/y1;

    .line 84
    .line 85
    invoke-static {p1, p2, v0, v0}, Lcom/google/android/gms/internal/ads/cN;->d(Lcom/google/android/gms/internal/ads/WM;Lcom/google/android/gms/internal/ads/p0;ZZ)Lcom/google/android/gms/internal/ads/PA;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const/4 p2, 0x0

    .line 90
    :goto_3
    iget p3, p1, Lcom/google/android/gms/internal/ads/PA;->J:I

    .line 91
    .line 92
    if-ge p2, p3, :cond_6

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/PA;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    check-cast p3, Lcom/google/android/gms/internal/ads/PM;

    .line 99
    .line 100
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/PM;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 101
    .line 102
    if-eqz p3, :cond_5

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/PA;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    check-cast p3, Lcom/google/android/gms/internal/ads/PM;

    .line 109
    .line 110
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/PM;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 111
    .line 112
    invoke-virtual {p3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    if-eqz p3, :cond_5

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/PA;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    check-cast p3, Lcom/google/android/gms/internal/ads/PM;

    .line 123
    .line 124
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/PM;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 125
    .line 126
    invoke-virtual {p3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    invoke-static {p3}, Landroid/support/v4/media/session/a;->i(Landroid/media/MediaCodecInfo$VideoCapabilities;)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    if-eqz p3, :cond_5

    .line 135
    .line 136
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-nez v1, :cond_5

    .line 141
    .line 142
    invoke-static {}, Landroid/support/v4/media/session/a;->j()V

    .line 143
    .line 144
    .line 145
    invoke-static {}, Landroid/support/v4/media/session/a;->d()Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    const/4 p2, 0x0

    .line 150
    :goto_4
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-ge p2, v1, :cond_6

    .line 155
    .line 156
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-static {v1}, LD0/a;->a(Ljava/lang/Object;)Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {v1, p1}, LD0/a;->u(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z

    .line 165
    .line 166
    .line 167
    move-result v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/ZM; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    if-eqz v1, :cond_4

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_5
    add-int/lit8 p2, p2, 0x1

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :catch_0
    :cond_6
    :goto_5
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    sput-object p1, Lcom/google/android/gms/internal/ads/Cw;->k:Ljava/lang/Boolean;

    .line 182
    .line 183
    if-eqz p4, :cond_7

    .line 184
    .line 185
    return v0

    .line 186
    :cond_7
    return p0

    .line 187
    :cond_8
    :goto_6
    return v0
.end method
