.class public final LK0/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public l:I

.field public m:I

.field public n:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, LK0/o;->a:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, LK0/o;->b:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, LK0/o;->c:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p4, p0, LK0/o;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 14
    .line 15
    iput-boolean p5, p0, LK0/o;->g:Z

    .line 16
    .line 17
    iput-boolean p6, p0, LK0/o;->h:Z

    .line 18
    .line 19
    iput-boolean p7, p0, LK0/o;->i:Z

    .line 20
    .line 21
    iput-boolean p8, p0, LK0/o;->e:Z

    .line 22
    .line 23
    iput-boolean p9, p0, LK0/o;->f:Z

    .line 24
    .line 25
    iput-boolean p10, p0, LK0/o;->j:Z

    .line 26
    .line 27
    invoke-static {p2}, Lm0/O;->o(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput-boolean p1, p0, LK0/o;->k:Z

    .line 32
    .line 33
    const p1, -0x800001

    .line 34
    .line 35
    .line 36
    iput p1, p0, LK0/o;->n:F

    .line 37
    .line 38
    const/4 p1, -0x1

    .line 39
    iput p1, p0, LK0/o;->l:I

    .line 40
    .line 41
    iput p1, p0, LK0/o;->m:I

    .line 42
    .line 43
    return-void
.end method

.method public static a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    new-instance v2, Landroid/graphics/Point;

    .line 10
    .line 11
    invoke-static {p1, v0}, Lp0/M;->f(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    mul-int p1, p1, v0

    .line 16
    .line 17
    invoke-static {p2, v1}, Lp0/M;->f(II)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    mul-int p2, p2, v1

    .line 22
    .line 23
    invoke-direct {v2, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 24
    .line 25
    .line 26
    iget p1, v2, Landroid/graphics/Point;->x:I

    .line 27
    .line 28
    iget p2, v2, Landroid/graphics/Point;->y:I

    .line 29
    .line 30
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 31
    .line 32
    cmpl-double v2, p3, v0

    .line 33
    .line 34
    if-eqz v2, :cond_5

    .line 35
    .line 36
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 37
    .line 38
    cmpg-double v2, p3, v0

    .line 39
    .line 40
    if-gez v2, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    .line 44
    .line 45
    .line 46
    move-result-wide p3

    .line 47
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v1, 0x0

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    return v1

    .line 55
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    .line 57
    const/16 v2, 0x18

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    if-ge v0, v2, :cond_2

    .line 61
    .line 62
    return v3

    .line 63
    :cond_2
    invoke-static {p0, p1, p2}, LF2/D;->g(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/util/Range;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    if-nez p0, :cond_3

    .line 68
    .line 69
    return v3

    .line 70
    :cond_3
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Ljava/lang/Double;

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 77
    .line 78
    .line 79
    move-result-wide p0

    .line 80
    cmpg-double p2, p3, p0

    .line 81
    .line 82
    if-gtz p2, :cond_4

    .line 83
    .line 84
    const/4 v1, 0x1

    .line 85
    :cond_4
    return v1

    .line 86
    :cond_5
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZ)LK0/o;
    .locals 12

    .line 1
    move-object v1, p0

    .line 2
    move-object v4, p3

    .line 3
    new-instance v11, LK0/o;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v4, :cond_2

    .line 8
    .line 9
    const-string v3, "adaptive-playback"

    .line 10
    .line 11
    invoke-virtual {p3, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_2

    .line 16
    .line 17
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    const/16 v5, 0x16

    .line 20
    .line 21
    if-gt v3, v5, :cond_1

    .line 22
    .line 23
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 24
    .line 25
    const-string v5, "ODROID-XU3"

    .line 26
    .line 27
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-nez v5, :cond_0

    .line 32
    .line 33
    const-string v5, "Nexus 10"

    .line 34
    .line 35
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    :cond_0
    const-string v3, "OMX.Exynos.AVC.Decoder"

    .line 42
    .line 43
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    const-string v3, "OMX.Exynos.AVC.Decoder.secure"

    .line 50
    .line 51
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 v8, 0x1

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    :goto_0
    const/4 v8, 0x0

    .line 61
    :goto_1
    if-eqz v4, :cond_3

    .line 62
    .line 63
    const-string v3, "tunneled-playback"

    .line 64
    .line 65
    invoke-virtual {p3, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    :cond_3
    if-nez p7, :cond_5

    .line 70
    .line 71
    if-eqz v4, :cond_4

    .line 72
    .line 73
    const-string v3, "secure-playback"

    .line 74
    .line 75
    invoke-virtual {p3, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    const/4 v9, 0x0

    .line 83
    goto :goto_3

    .line 84
    :cond_5
    :goto_2
    const/4 v9, 0x1

    .line 85
    :goto_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 86
    .line 87
    const/16 v5, 0x23

    .line 88
    .line 89
    if-lt v3, v5, :cond_7

    .line 90
    .line 91
    if-eqz v4, :cond_7

    .line 92
    .line 93
    const-string v3, "detached-surface"

    .line 94
    .line 95
    invoke-virtual {p3, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_7

    .line 100
    .line 101
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 102
    .line 103
    const-string v5, "Xiaomi"

    .line 104
    .line 105
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-nez v5, :cond_7

    .line 110
    .line 111
    const-string v5, "OPPO"

    .line 112
    .line 113
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-nez v5, :cond_7

    .line 118
    .line 119
    const-string v5, "realme"

    .line 120
    .line 121
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-nez v5, :cond_7

    .line 126
    .line 127
    const-string v5, "motorola"

    .line 128
    .line 129
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    if-nez v5, :cond_7

    .line 134
    .line 135
    const-string v5, "LENOVO"

    .line 136
    .line 137
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_6

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_6
    const/4 v10, 0x1

    .line 145
    goto :goto_5

    .line 146
    :cond_7
    :goto_4
    const/4 v10, 0x0

    .line 147
    :goto_5
    move-object v0, v11

    .line 148
    move-object v1, p0

    .line 149
    move-object v2, p1

    .line 150
    move-object v3, p2

    .line 151
    move-object v4, p3

    .line 152
    move/from16 v5, p4

    .line 153
    .line 154
    move/from16 v6, p5

    .line 155
    .line 156
    move/from16 v7, p6

    .line 157
    .line 158
    invoke-direct/range {v0 .. v10}, LK0/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V

    .line 159
    .line 160
    .line 161
    return-object v11
.end method


# virtual methods
.method public final b(Lm0/t;Lm0/t;)LB0/j;
    .locals 13

    .line 1
    iget-object v0, p2, Lm0/t;->o:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Lm0/t;->o:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-boolean v2, p0, LK0/o;->k:Z

    .line 17
    .line 18
    if-eqz v2, :cond_b

    .line 19
    .line 20
    iget v2, p1, Lm0/t;->A:I

    .line 21
    .line 22
    iget v3, p2, Lm0/t;->A:I

    .line 23
    .line 24
    if-eq v2, v3, :cond_1

    .line 25
    .line 26
    or-int/lit16 v0, v0, 0x400

    .line 27
    .line 28
    :cond_1
    iget v2, p1, Lm0/t;->v:I

    .line 29
    .line 30
    iget v3, p2, Lm0/t;->v:I

    .line 31
    .line 32
    if-ne v2, v3, :cond_2

    .line 33
    .line 34
    iget v2, p1, Lm0/t;->w:I

    .line 35
    .line 36
    iget v3, p2, Lm0/t;->w:I

    .line 37
    .line 38
    if-eq v2, v3, :cond_3

    .line 39
    .line 40
    :cond_2
    const/4 v1, 0x1

    .line 41
    :cond_3
    iget-boolean v2, p0, LK0/o;->e:Z

    .line 42
    .line 43
    if-nez v2, :cond_4

    .line 44
    .line 45
    if-eqz v1, :cond_4

    .line 46
    .line 47
    or-int/lit16 v0, v0, 0x200

    .line 48
    .line 49
    :cond_4
    iget-object v2, p1, Lm0/t;->E:Lm0/i;

    .line 50
    .line 51
    invoke-static {v2}, Lm0/i;->f(Lm0/i;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    iget-object v4, p2, Lm0/t;->E:Lm0/i;

    .line 56
    .line 57
    if-eqz v3, :cond_5

    .line 58
    .line 59
    invoke-static {v4}, Lm0/i;->f(Lm0/i;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_6

    .line 64
    .line 65
    :cond_5
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_6

    .line 70
    .line 71
    or-int/lit16 v0, v0, 0x800

    .line 72
    .line 73
    :cond_6
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 74
    .line 75
    const-string v3, "SM-T230"

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_7

    .line 82
    .line 83
    const-string v2, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    .line 84
    .line 85
    iget-object v3, p0, LK0/o;->a:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_7

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Lm0/t;->c(Lm0/t;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-nez v2, :cond_7

    .line 98
    .line 99
    or-int/lit8 v0, v0, 0x2

    .line 100
    .line 101
    :cond_7
    const/4 v2, -0x1

    .line 102
    iget v3, p1, Lm0/t;->x:I

    .line 103
    .line 104
    if-eq v3, v2, :cond_8

    .line 105
    .line 106
    iget v4, p1, Lm0/t;->y:I

    .line 107
    .line 108
    if-eq v4, v2, :cond_8

    .line 109
    .line 110
    iget v2, p2, Lm0/t;->x:I

    .line 111
    .line 112
    if-ne v3, v2, :cond_8

    .line 113
    .line 114
    iget v2, p2, Lm0/t;->y:I

    .line 115
    .line 116
    if-ne v4, v2, :cond_8

    .line 117
    .line 118
    if-eqz v1, :cond_8

    .line 119
    .line 120
    or-int/lit8 v0, v0, 0x2

    .line 121
    .line 122
    :cond_8
    if-nez v0, :cond_a

    .line 123
    .line 124
    new-instance v0, LB0/j;

    .line 125
    .line 126
    invoke-virtual {p1, p2}, Lm0/t;->c(Lm0/t;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_9

    .line 131
    .line 132
    const/4 v1, 0x3

    .line 133
    const/4 v5, 0x3

    .line 134
    goto :goto_1

    .line 135
    :cond_9
    const/4 v1, 0x2

    .line 136
    const/4 v5, 0x2

    .line 137
    :goto_1
    const/4 v6, 0x0

    .line 138
    iget-object v2, p0, LK0/o;->a:Ljava/lang/String;

    .line 139
    .line 140
    move-object v1, v0

    .line 141
    move-object v3, p1

    .line 142
    move-object v4, p2

    .line 143
    invoke-direct/range {v1 .. v6}, LB0/j;-><init>(Ljava/lang/String;Lm0/t;Lm0/t;II)V

    .line 144
    .line 145
    .line 146
    return-object v0

    .line 147
    :cond_a
    move v12, v0

    .line 148
    goto/16 :goto_2

    .line 149
    .line 150
    :cond_b
    iget v1, p1, Lm0/t;->G:I

    .line 151
    .line 152
    iget v2, p2, Lm0/t;->G:I

    .line 153
    .line 154
    if-eq v1, v2, :cond_c

    .line 155
    .line 156
    or-int/lit16 v0, v0, 0x1000

    .line 157
    .line 158
    :cond_c
    iget v1, p1, Lm0/t;->H:I

    .line 159
    .line 160
    iget v2, p2, Lm0/t;->H:I

    .line 161
    .line 162
    if-eq v1, v2, :cond_d

    .line 163
    .line 164
    or-int/lit16 v0, v0, 0x2000

    .line 165
    .line 166
    :cond_d
    iget v1, p1, Lm0/t;->I:I

    .line 167
    .line 168
    iget v2, p2, Lm0/t;->I:I

    .line 169
    .line 170
    if-eq v1, v2, :cond_e

    .line 171
    .line 172
    or-int/lit16 v0, v0, 0x4000

    .line 173
    .line 174
    :cond_e
    iget-object v1, p0, LK0/o;->b:Ljava/lang/String;

    .line 175
    .line 176
    if-nez v0, :cond_f

    .line 177
    .line 178
    const-string v2, "audio/mp4a-latm"

    .line 179
    .line 180
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_f

    .line 185
    .line 186
    sget-object v2, LK0/z;->a:Ljava/util/HashMap;

    .line 187
    .line 188
    invoke-static {p1}, Lp0/g;->b(Lm0/t;)Landroid/util/Pair;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-static {p2}, Lp0/g;->b(Lm0/t;)Landroid/util/Pair;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    if-eqz v2, :cond_f

    .line 197
    .line 198
    if-eqz v3, :cond_f

    .line 199
    .line 200
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v2, Ljava/lang/Integer;

    .line 203
    .line 204
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v3, Ljava/lang/Integer;

    .line 211
    .line 212
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    const/16 v4, 0x2a

    .line 217
    .line 218
    if-ne v2, v4, :cond_f

    .line 219
    .line 220
    if-ne v3, v4, :cond_f

    .line 221
    .line 222
    new-instance v0, LB0/j;

    .line 223
    .line 224
    const/4 v10, 0x0

    .line 225
    iget-object v6, p0, LK0/o;->a:Ljava/lang/String;

    .line 226
    .line 227
    const/4 v9, 0x3

    .line 228
    move-object v5, v0

    .line 229
    move-object v7, p1

    .line 230
    move-object v8, p2

    .line 231
    invoke-direct/range {v5 .. v10}, LB0/j;-><init>(Ljava/lang/String;Lm0/t;Lm0/t;II)V

    .line 232
    .line 233
    .line 234
    return-object v0

    .line 235
    :cond_f
    invoke-virtual {p1, p2}, Lm0/t;->c(Lm0/t;)Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-nez v2, :cond_10

    .line 240
    .line 241
    or-int/lit8 v0, v0, 0x20

    .line 242
    .line 243
    :cond_10
    const-string v2, "audio/opus"

    .line 244
    .line 245
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-eqz v1, :cond_11

    .line 250
    .line 251
    or-int/lit8 v0, v0, 0x2

    .line 252
    .line 253
    :cond_11
    if-nez v0, :cond_a

    .line 254
    .line 255
    new-instance v0, LB0/j;

    .line 256
    .line 257
    const/4 v6, 0x0

    .line 258
    iget-object v2, p0, LK0/o;->a:Ljava/lang/String;

    .line 259
    .line 260
    const/4 v5, 0x1

    .line 261
    move-object v1, v0

    .line 262
    move-object v3, p1

    .line 263
    move-object v4, p2

    .line 264
    invoke-direct/range {v1 .. v6}, LB0/j;-><init>(Ljava/lang/String;Lm0/t;Lm0/t;II)V

    .line 265
    .line 266
    .line 267
    return-object v0

    .line 268
    :goto_2
    new-instance v0, LB0/j;

    .line 269
    .line 270
    iget-object v8, p0, LK0/o;->a:Ljava/lang/String;

    .line 271
    .line 272
    const/4 v11, 0x0

    .line 273
    move-object v7, v0

    .line 274
    move-object v9, p1

    .line 275
    move-object v10, p2

    .line 276
    invoke-direct/range {v7 .. v12}, LB0/j;-><init>(Ljava/lang/String;Lm0/t;Lm0/t;II)V

    .line 277
    .line 278
    .line 279
    return-object v0
.end method

.method public final c(Lm0/t;Z)Z
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-object v2, LK0/z;->a:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-static {p1}, Lp0/g;->b(Lm0/t;)Landroid/util/Pair;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "video/hevc"

    .line 10
    .line 11
    const/4 v4, -0x1

    .line 12
    iget-object v5, p0, LK0/o;->c:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v6, p1, Lm0/t;->o:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v6, :cond_2

    .line 17
    .line 18
    const-string v7, "video/mv-hevc"

    .line 19
    .line 20
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v8

    .line 24
    if-eqz v8, :cond_2

    .line 25
    .line 26
    invoke-static {v5}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-eqz v7, :cond_0

    .line 35
    .line 36
    return v1

    .line 37
    :cond_0
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_2

    .line 42
    .line 43
    iget-object v2, p1, Lm0/t;->r:Ljava/util/List;

    .line 44
    .line 45
    invoke-static {v2}, Lq0/p;->c(Ljava/util/List;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    sget-object v8, Lp0/M;->a:Ljava/lang/String;

    .line 58
    .line 59
    const-string v8, "\\."

    .line 60
    .line 61
    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    iget-object v8, p1, Lm0/t;->E:Lm0/i;

    .line 66
    .line 67
    invoke-static {v2, v7, v8}, Lp0/g;->c(Ljava/lang/String;[Ljava/lang/String;Lm0/i;)Landroid/util/Pair;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    :cond_2
    :goto_0
    if-nez v2, :cond_3

    .line 72
    .line 73
    return v1

    .line 74
    :cond_3
    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v7, Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v2, Ljava/lang/Integer;

    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    const-string v8, "video/dolby-vision"

    .line 91
    .line 92
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    const/4 v8, 0x2

    .line 97
    const/16 v9, 0x8

    .line 98
    .line 99
    iget-object v10, p0, LK0/o;->b:Ljava/lang/String;

    .line 100
    .line 101
    if-eqz v6, :cond_7

    .line 102
    .line 103
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    sparse-switch v6, :sswitch_data_0

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :sswitch_0
    const-string v6, "video/avc"

    .line 115
    .line 116
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-nez v6, :cond_4

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    const/4 v4, 0x2

    .line 124
    goto :goto_1

    .line 125
    :sswitch_1
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-nez v6, :cond_5

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_5
    const/4 v4, 0x1

    .line 133
    goto :goto_1

    .line 134
    :sswitch_2
    const-string v6, "video/av01"

    .line 135
    .line 136
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    if-nez v6, :cond_6

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_6
    const/4 v4, 0x0

    .line 144
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :pswitch_0
    const/4 v2, 0x0

    .line 149
    const/16 v7, 0x8

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :pswitch_1
    const/4 v2, 0x0

    .line 153
    const/4 v7, 0x2

    .line 154
    :cond_7
    :goto_2
    iget-boolean v4, p0, LK0/o;->k:Z

    .line 155
    .line 156
    if-nez v4, :cond_8

    .line 157
    .line 158
    const/16 v4, 0x2a

    .line 159
    .line 160
    if-eq v7, v4, :cond_8

    .line 161
    .line 162
    return v1

    .line 163
    :cond_8
    iget-object v4, p0, LK0/o;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 164
    .line 165
    if-eqz v4, :cond_9

    .line 166
    .line 167
    iget-object v6, v4, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 168
    .line 169
    if-nez v6, :cond_a

    .line 170
    .line 171
    :cond_9
    new-array v6, v0, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 172
    .line 173
    :cond_a
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 174
    .line 175
    const/16 v12, 0x17

    .line 176
    .line 177
    if-gt v11, v12, :cond_16

    .line 178
    .line 179
    const-string v11, "video/x-vnd.on2.vp9"

    .line 180
    .line 181
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v11

    .line 185
    if-eqz v11, :cond_16

    .line 186
    .line 187
    array-length v11, v6

    .line 188
    if-nez v11, :cond_16

    .line 189
    .line 190
    if-eqz v4, :cond_b

    .line 191
    .line 192
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    if-eqz v4, :cond_b

    .line 197
    .line 198
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    check-cast v4, Ljava/lang/Integer;

    .line 207
    .line 208
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    goto :goto_3

    .line 213
    :cond_b
    const/4 v4, 0x0

    .line 214
    :goto_3
    const v6, 0xaba9500

    .line 215
    .line 216
    .line 217
    if-lt v4, v6, :cond_c

    .line 218
    .line 219
    const/16 v9, 0x400

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_c
    const v6, 0x7270e00

    .line 223
    .line 224
    .line 225
    if-lt v4, v6, :cond_d

    .line 226
    .line 227
    const/16 v9, 0x200

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_d
    const v6, 0x3938700

    .line 231
    .line 232
    .line 233
    if-lt v4, v6, :cond_e

    .line 234
    .line 235
    const/16 v9, 0x100

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_e
    const v6, 0x1c9c380

    .line 239
    .line 240
    .line 241
    if-lt v4, v6, :cond_f

    .line 242
    .line 243
    const/16 v9, 0x80

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_f
    const v6, 0x112a880

    .line 247
    .line 248
    .line 249
    if-lt v4, v6, :cond_10

    .line 250
    .line 251
    const/16 v9, 0x40

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_10
    const v6, 0xb71b00

    .line 255
    .line 256
    .line 257
    if-lt v4, v6, :cond_11

    .line 258
    .line 259
    const/16 v9, 0x20

    .line 260
    .line 261
    goto :goto_4

    .line 262
    :cond_11
    const v6, 0x6ddd00

    .line 263
    .line 264
    .line 265
    if-lt v4, v6, :cond_12

    .line 266
    .line 267
    const/16 v9, 0x10

    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_12
    const v6, 0x36ee80

    .line 271
    .line 272
    .line 273
    if-lt v4, v6, :cond_13

    .line 274
    .line 275
    goto :goto_4

    .line 276
    :cond_13
    const v6, 0x1b7740

    .line 277
    .line 278
    .line 279
    if-lt v4, v6, :cond_14

    .line 280
    .line 281
    const/4 v9, 0x4

    .line 282
    goto :goto_4

    .line 283
    :cond_14
    const v6, 0xc3500

    .line 284
    .line 285
    .line 286
    if-lt v4, v6, :cond_15

    .line 287
    .line 288
    const/4 v9, 0x2

    .line 289
    goto :goto_4

    .line 290
    :cond_15
    const/4 v9, 0x1

    .line 291
    :goto_4
    new-instance v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 292
    .line 293
    invoke-direct {v4}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    .line 294
    .line 295
    .line 296
    iput v1, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 297
    .line 298
    iput v9, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 299
    .line 300
    new-array v6, v1, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 301
    .line 302
    aput-object v4, v6, v0

    .line 303
    .line 304
    :cond_16
    array-length v4, v6

    .line 305
    const/4 v9, 0x0

    .line 306
    :goto_5
    if-ge v9, v4, :cond_1a

    .line 307
    .line 308
    aget-object v11, v6, v9

    .line 309
    .line 310
    iget v12, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 311
    .line 312
    if-ne v12, v7, :cond_19

    .line 313
    .line 314
    iget v11, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 315
    .line 316
    if-ge v11, v2, :cond_17

    .line 317
    .line 318
    if-nez p2, :cond_19

    .line 319
    .line 320
    :cond_17
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v11

    .line 324
    if-eqz v11, :cond_18

    .line 325
    .line 326
    if-ne v8, v7, :cond_18

    .line 327
    .line 328
    sget-object v11, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 329
    .line 330
    const-string v12, "sailfish"

    .line 331
    .line 332
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v12

    .line 336
    if-nez v12, :cond_19

    .line 337
    .line 338
    const-string v12, "marlin"

    .line 339
    .line 340
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v11

    .line 344
    if-eqz v11, :cond_18

    .line 345
    .line 346
    goto :goto_6

    .line 347
    :cond_18
    return v1

    .line 348
    :cond_19
    :goto_6
    add-int/2addr v9, v1

    .line 349
    goto :goto_5

    .line 350
    :cond_1a
    new-instance p2, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    const-string v1, "codec.profileLevel, "

    .line 353
    .line 354
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    iget-object p1, p1, Lm0/t;->k:Ljava/lang/String;

    .line 358
    .line 359
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    const-string p1, ", "

    .line 363
    .line 364
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    invoke-virtual {p0, p1}, LK0/o;->h(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    return v0

    .line 378
    nop

    .line 379
    :sswitch_data_0
    .sparse-switch
        -0x631b55f6 -> :sswitch_2
        -0x63185e82 -> :sswitch_1
        0x4f62373a -> :sswitch_0
    .end sparse-switch

    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lm0/t;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lm0/t;->o:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "audio/flac"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget p1, p1, Lm0/t;->I:I

    .line 12
    .line 13
    const/16 v0, 0x16

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    const/16 v0, 0x22

    .line 20
    .line 21
    if-ge p1, v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, LK0/o;->a:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "c2.android.flac.decoder"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 37
    :goto_1
    return p1
.end method

.method public final e(Lm0/t;)Z
    .locals 7

    .line 1
    iget-object v0, p1, Lm0/t;->o:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, LK0/o;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-static {p1}, LK0/z;->b(Lm0/t;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 27
    :goto_1
    if-nez v0, :cond_2

    .line 28
    .line 29
    return v3

    .line 30
    :cond_2
    invoke-virtual {p0, p1, v2}, LK0/o;->c(Lm0/t;Z)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    return v3

    .line 37
    :cond_3
    invoke-virtual {p0, p1}, LK0/o;->d(Lm0/t;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    return v3

    .line 44
    :cond_4
    iget-boolean v0, p0, LK0/o;->k:Z

    .line 45
    .line 46
    if-eqz v0, :cond_7

    .line 47
    .line 48
    iget v0, p1, Lm0/t;->v:I

    .line 49
    .line 50
    if-lez v0, :cond_6

    .line 51
    .line 52
    iget v1, p1, Lm0/t;->w:I

    .line 53
    .line 54
    if-gtz v1, :cond_5

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_5
    iget p1, p1, Lm0/t;->z:F

    .line 58
    .line 59
    float-to-double v2, p1

    .line 60
    invoke-virtual {p0, v0, v1, v2, v3}, LK0/o;->g(IID)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    return p1

    .line 65
    :cond_6
    :goto_2
    return v2

    .line 66
    :cond_7
    iget-object v0, p0, LK0/o;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 67
    .line 68
    const/4 v4, -0x1

    .line 69
    iget v5, p1, Lm0/t;->H:I

    .line 70
    .line 71
    if-eq v5, v4, :cond_a

    .line 72
    .line 73
    if-nez v0, :cond_8

    .line 74
    .line 75
    const-string p1, "sampleRate.caps"

    .line 76
    .line 77
    invoke-virtual {p0, p1}, LK0/o;->h(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_5

    .line 81
    .line 82
    :cond_8
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    if-nez v6, :cond_9

    .line 87
    .line 88
    const-string p1, "sampleRate.aCaps"

    .line 89
    .line 90
    invoke-virtual {p0, p1}, LK0/o;->h(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_5

    .line 94
    .line 95
    :cond_9
    invoke-virtual {v6, v5}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-nez v6, :cond_a

    .line 100
    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v0, "sampleRate.support, "

    .line 104
    .line 105
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, LK0/o;->h(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_5

    .line 119
    .line 120
    :cond_a
    iget p1, p1, Lm0/t;->G:I

    .line 121
    .line 122
    if-eq p1, v4, :cond_12

    .line 123
    .line 124
    if-nez v0, :cond_b

    .line 125
    .line 126
    const-string p1, "channelCount.caps"

    .line 127
    .line 128
    invoke-virtual {p0, p1}, LK0/o;->h(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_5

    .line 132
    .line 133
    :cond_b
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-nez v0, :cond_c

    .line 138
    .line 139
    const-string p1, "channelCount.aCaps"

    .line 140
    .line 141
    invoke-virtual {p0, p1}, LK0/o;->h(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_5

    .line 145
    .line 146
    :cond_c
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-gt v0, v2, :cond_11

    .line 151
    .line 152
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 153
    .line 154
    const/16 v5, 0x1a

    .line 155
    .line 156
    if-lt v4, v5, :cond_d

    .line 157
    .line 158
    if-lez v0, :cond_d

    .line 159
    .line 160
    goto/16 :goto_4

    .line 161
    .line 162
    :cond_d
    const-string v4, "audio/mpeg"

    .line 163
    .line 164
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    if-nez v4, :cond_11

    .line 169
    .line 170
    const-string v4, "audio/3gpp"

    .line 171
    .line 172
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-nez v4, :cond_11

    .line 177
    .line 178
    const-string v4, "audio/amr-wb"

    .line 179
    .line 180
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-nez v4, :cond_11

    .line 185
    .line 186
    const-string v4, "audio/mp4a-latm"

    .line 187
    .line 188
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    if-nez v4, :cond_11

    .line 193
    .line 194
    const-string v4, "audio/vorbis"

    .line 195
    .line 196
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    if-nez v4, :cond_11

    .line 201
    .line 202
    const-string v4, "audio/opus"

    .line 203
    .line 204
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    if-nez v4, :cond_11

    .line 209
    .line 210
    const-string v4, "audio/raw"

    .line 211
    .line 212
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    if-nez v4, :cond_11

    .line 217
    .line 218
    const-string v4, "audio/flac"

    .line 219
    .line 220
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    if-nez v4, :cond_11

    .line 225
    .line 226
    const-string v4, "audio/g711-alaw"

    .line 227
    .line 228
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    if-nez v4, :cond_11

    .line 233
    .line 234
    const-string v4, "audio/g711-mlaw"

    .line 235
    .line 236
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    if-nez v4, :cond_11

    .line 241
    .line 242
    const-string v4, "audio/gsm"

    .line 243
    .line 244
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    if-eqz v4, :cond_e

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_e
    const-string v4, "audio/ac3"

    .line 252
    .line 253
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    if-eqz v4, :cond_f

    .line 258
    .line 259
    const/4 v1, 0x6

    .line 260
    goto :goto_3

    .line 261
    :cond_f
    const-string v4, "audio/eac3"

    .line 262
    .line 263
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-eqz v1, :cond_10

    .line 268
    .line 269
    const/16 v1, 0x10

    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_10
    const/16 v1, 0x1e

    .line 273
    .line 274
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    const-string v5, "AssumedMaxChannelAdjustment: "

    .line 277
    .line 278
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    iget-object v5, p0, LK0/o;->a:Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string v5, ", ["

    .line 287
    .line 288
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string v0, " to "

    .line 295
    .line 296
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string v0, "]"

    .line 303
    .line 304
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    const-string v4, "MediaCodecInfo"

    .line 312
    .line 313
    invoke-static {v4, v0}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    move v0, v1

    .line 317
    :cond_11
    :goto_4
    if-ge v0, p1, :cond_12

    .line 318
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    const-string v1, "channelCount.support, "

    .line 322
    .line 323
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-virtual {p0, p1}, LK0/o;->h(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    :goto_5
    const/4 v2, 0x0

    .line 337
    :cond_12
    return v2
.end method

.method public final f(Lm0/t;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LK0/o;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, LK0/o;->e:Z

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    sget-object v0, LK0/z;->a:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-static {p1}, Lp0/g;->b(Lm0/t;)Landroid/util/Pair;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/16 v0, 0x2a

    .line 25
    .line 26
    if-ne p1, v0, :cond_1

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    :goto_0
    return p1
.end method

.method public final g(IID)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, LK0/o;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    const-string p1, "sizeAndRate.caps"

    .line 7
    .line 8
    invoke-virtual {p0, p1}, LK0/o;->h(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const-string p1, "sizeAndRate.vCaps"

    .line 19
    .line 20
    invoke-virtual {p0, p1}, LK0/o;->h(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return v0

    .line 24
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v3, 0x1d

    .line 27
    .line 28
    const-string v4, "@"

    .line 29
    .line 30
    const-string v5, "x"

    .line 31
    .line 32
    const/4 v6, 0x1

    .line 33
    if-lt v2, v3, :cond_5

    .line 34
    .line 35
    if-lt v2, v3, :cond_3

    .line 36
    .line 37
    sget-object v2, Lcom/bumptech/glide/d;->c:Ljava/lang/Boolean;

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-static {v1, p1, p2, p3, p4}, LD/g;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    :goto_0
    const/4 v2, 0x0

    .line 54
    :goto_1
    const/4 v3, 0x2

    .line 55
    if-ne v2, v3, :cond_4

    .line 56
    .line 57
    return v6

    .line 58
    :cond_4
    if-ne v2, v6, :cond_5

    .line 59
    .line 60
    const-string v1, "sizeAndRate.cover, "

    .line 61
    .line 62
    invoke-static {v1, p1, v5, p2, v4}, LA0/O;->D(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, LK0/o;->h(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return v0

    .line 77
    :cond_5
    invoke-static {v1, p1, p2, p3, p4}, LK0/o;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_9

    .line 82
    .line 83
    if-ge p1, p2, :cond_8

    .line 84
    .line 85
    const-string v2, "OMX.MTK.VIDEO.DECODER.HEVC"

    .line 86
    .line 87
    iget-object v3, p0, LK0/o;->a:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_6

    .line 94
    .line 95
    const-string v2, "mcv5a"

    .line 96
    .line 97
    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_6

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_6
    invoke-static {v1, p2, p1, p3, p4}, LK0/o;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_7

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_7
    const-string v0, "sizeAndRate.rotated, "

    .line 114
    .line 115
    invoke-static {v0, p1, v5, p2, v4}, LA0/O;->D(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const-string p2, "AssumedSupport ["

    .line 127
    .line 128
    const-string p3, "] ["

    .line 129
    .line 130
    const-string p4, ", "

    .line 131
    .line 132
    invoke-static {p2, p1, p3, v3, p4}, Lcom/google/protobuf/U2;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iget-object p2, p0, LK0/o;->b:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    sget-object p2, Lp0/M;->a:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string p2, "]"

    .line 150
    .line 151
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    const-string p2, "MediaCodecInfo"

    .line 159
    .line 160
    invoke-static {p2, p1}, Lp0/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_8
    :goto_2
    const-string v1, "sizeAndRate.support, "

    .line 165
    .line 166
    invoke-static {v1, p1, v5, p2, v4}, LA0/O;->D(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {p0, p1}, LK0/o;->h(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    return v0

    .line 181
    :cond_9
    :goto_3
    return v6
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "NoSupport ["

    .line 2
    .line 3
    const-string v1, "] ["

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/google/protobuf/U2;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, LK0/o;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v0, ", "

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, LK0/o;->b:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, "]"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "MediaCodecInfo"

    .line 42
    .line 43
    invoke-static {v0, p1}, Lp0/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LK0/o;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
