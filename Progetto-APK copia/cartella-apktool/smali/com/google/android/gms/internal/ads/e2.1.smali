.class public final Lcom/google/android/gms/internal/ads/e2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/W1;


# static fields
.field public static final N:[B

.field public static final O:[B

.field public static final P:[B


# instance fields
.field public final G:Landroid/graphics/Paint;

.field public final H:Landroid/graphics/Paint;

.field public final I:Landroid/graphics/Canvas;

.field public final J:Ls1/b;

.field public final K:Lcom/google/android/gms/internal/ads/Z1;

.field public final L:Ls1/g;

.field public M:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/gms/internal/ads/e2;->N:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/e2;->O:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/gms/internal/ads/e2;->P:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x7t
        0x8t
        0xft
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x77t
        -0x78t
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
        0x77t
        -0x78t
        -0x67t
        -0x56t
        -0x45t
        -0x34t
        -0x23t
        -0x12t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/jr;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, [B

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/jr;-><init>([B)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    new-instance v2, Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/e2;->G:Landroid/graphics/Paint;

    .line 30
    .line 31
    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    .line 35
    .line 36
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    .line 37
    .line 38
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 39
    .line 40
    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 44
    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 48
    .line 49
    .line 50
    new-instance v2, Landroid/graphics/Paint;

    .line 51
    .line 52
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/e2;->H:Landroid/graphics/Paint;

    .line 56
    .line 57
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 58
    .line 59
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    .line 61
    .line 62
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    .line 63
    .line 64
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 65
    .line 66
    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 73
    .line 74
    .line 75
    new-instance v2, Landroid/graphics/Canvas;

    .line 76
    .line 77
    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/e2;->I:Landroid/graphics/Canvas;

    .line 81
    .line 82
    new-instance v2, Ls1/b;

    .line 83
    .line 84
    const/16 v5, 0x23f

    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    const/16 v7, 0x2cf

    .line 88
    .line 89
    const/4 v8, 0x0

    .line 90
    const/16 v9, 0x23f

    .line 91
    .line 92
    move-object v3, v2

    .line 93
    move v4, v7

    .line 94
    invoke-direct/range {v3 .. v9}, Ls1/b;-><init>(IIIIII)V

    .line 95
    .line 96
    .line 97
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/e2;->J:Ls1/b;

    .line 98
    .line 99
    new-instance v2, Lcom/google/android/gms/internal/ads/Z1;

    .line 100
    .line 101
    invoke-static {}, Lcom/google/android/gms/internal/ads/e2;->g()[I

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {}, Lcom/google/android/gms/internal/ads/e2;->h()[I

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-static {}, Lcom/google/android/gms/internal/ads/e2;->i()[I

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-direct {v2, v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/Z1;-><init>(I[I[I[I)V

    .line 114
    .line 115
    .line 116
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/e2;->K:Lcom/google/android/gms/internal/ads/Z1;

    .line 117
    .line 118
    new-instance v1, Ls1/g;

    .line 119
    .line 120
    const/4 v2, 0x2

    .line 121
    invoke-direct {v1, p1, v0, v2}, Ls1/g;-><init>(III)V

    .line 122
    .line 123
    .line 124
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/e2;->L:Ls1/g;

    .line 125
    .line 126
    return-void
.end method

.method public static a(IIII)I
    .locals 0

    .line 1
    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p3

    return p0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/f0;I)Lcom/google/android/gms/internal/ads/Z1;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/e2;->g()[I

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/e2;->h()[I

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/e2;->i()[I

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    add-int/lit8 v6, p1, -0x2

    .line 25
    .line 26
    :goto_0
    if-lez v6, :cond_6

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    and-int/lit16 v9, v8, 0x80

    .line 37
    .line 38
    if-eqz v9, :cond_0

    .line 39
    .line 40
    move-object v9, v3

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    and-int/lit8 v9, v8, 0x40

    .line 43
    .line 44
    if-eqz v9, :cond_1

    .line 45
    .line 46
    move-object v9, v4

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move-object v9, v5

    .line 49
    :goto_1
    and-int/lit8 v8, v8, 0x1

    .line 50
    .line 51
    if-eqz v8, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 66
    .line 67
    .line 68
    move-result v12

    .line 69
    add-int/lit8 v6, v6, -0x6

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    const/4 v8, 0x6

    .line 73
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    const/4 v11, 0x2

    .line 78
    shl-int/2addr v10, v11

    .line 79
    const/4 v12, 0x4

    .line 80
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 81
    .line 82
    .line 83
    move-result v13

    .line 84
    shl-int/2addr v13, v12

    .line 85
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 86
    .line 87
    .line 88
    move-result v14

    .line 89
    shl-int/lit8 v12, v14, 0x4

    .line 90
    .line 91
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    shl-int/lit8 v8, v11, 0x6

    .line 96
    .line 97
    add-int/lit8 v6, v6, -0x4

    .line 98
    .line 99
    move v11, v12

    .line 100
    move v12, v8

    .line 101
    move v8, v10

    .line 102
    move v10, v13

    .line 103
    :goto_2
    const/16 v13, 0xff

    .line 104
    .line 105
    if-nez v8, :cond_3

    .line 106
    .line 107
    const/16 v12, 0xff

    .line 108
    .line 109
    :cond_3
    if-nez v8, :cond_4

    .line 110
    .line 111
    const/4 v11, 0x0

    .line 112
    :cond_4
    if-nez v8, :cond_5

    .line 113
    .line 114
    const/4 v10, 0x0

    .line 115
    :cond_5
    and-int/2addr v12, v13

    .line 116
    rsub-int v12, v12, 0xff

    .line 117
    .line 118
    add-int/lit8 v11, v11, -0x80

    .line 119
    .line 120
    move/from16 v16, v2

    .line 121
    .line 122
    int-to-double v1, v8

    .line 123
    add-int/lit8 v10, v10, -0x80

    .line 124
    .line 125
    int-to-double v14, v10

    .line 126
    const-wide v17, 0x3ff66e978d4fdf3bL    # 1.402

    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    mul-double v17, v17, v14

    .line 132
    .line 133
    move-object v10, v9

    .line 134
    add-double v8, v17, v1

    .line 135
    .line 136
    double-to-int v8, v8

    .line 137
    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    int-to-byte v9, v12

    .line 142
    const/4 v12, 0x0

    .line 143
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    int-to-double v12, v11

    .line 148
    const-wide v19, 0x3fd60663c74fb54aL    # 0.34414

    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    mul-double v19, v19, v12

    .line 154
    .line 155
    sub-double v19, v1, v19

    .line 156
    .line 157
    const-wide v21, 0x3fe6da3c21187e7cL    # 0.71414

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    mul-double v14, v14, v21

    .line 163
    .line 164
    sub-double v14, v19, v14

    .line 165
    .line 166
    double-to-int v11, v14

    .line 167
    const/16 v14, 0xff

    .line 168
    .line 169
    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    .line 170
    .line 171
    .line 172
    move-result v11

    .line 173
    const/4 v15, 0x0

    .line 174
    invoke-static {v15, v11}, Ljava/lang/Math;->max(II)I

    .line 175
    .line 176
    .line 177
    move-result v11

    .line 178
    const-wide v17, 0x3ffc5a1cac083127L    # 1.772

    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    mul-double v12, v12, v17

    .line 184
    .line 185
    add-double/2addr v12, v1

    .line 186
    double-to-int v1, v12

    .line 187
    invoke-static {v1, v14}, Ljava/lang/Math;->min(II)I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    invoke-static {v9, v8, v11, v1}, Lcom/google/android/gms/internal/ads/e2;->a(IIII)I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    aput v1, v10, v7

    .line 200
    .line 201
    move/from16 v2, v16

    .line 202
    .line 203
    const/16 v1, 0x8

    .line 204
    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_6
    move/from16 v16, v2

    .line 208
    .line 209
    new-instance v0, Lcom/google/android/gms/internal/ads/Z1;

    .line 210
    .line 211
    move/from16 v1, v16

    .line 212
    .line 213
    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/Z1;-><init>(I[I[I[I)V

    .line 214
    .line 215
    .line 216
    return-object v0
.end method

.method public static c(Lcom/google/android/gms/internal/ads/f0;)Lcom/google/android/gms/internal/ads/a2;
    .locals 9

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x4

    .line 8
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x1

    .line 21
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 22
    .line 23
    .line 24
    sget-object v5, Lcom/google/android/gms/internal/ads/Et;->f:[B

    .line 25
    .line 26
    if-ne v2, v4, :cond_0

    .line 27
    .line 28
    const/16 v2, 0x8

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    mul-int/lit8 v2, v2, 0x10

    .line 35
    .line 36
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_0
    if-nez v2, :cond_4

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v6, 0x0

    .line 51
    if-lez v2, :cond_2

    .line 52
    .line 53
    new-array v5, v2, [B

    .line 54
    .line 55
    iget v7, p0, Lcom/google/android/gms/internal/ads/f0;->d:I

    .line 56
    .line 57
    if-nez v7, :cond_1

    .line 58
    .line 59
    const/4 v7, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 v7, 0x0

    .line 62
    :goto_0
    invoke-static {v7}, Lo3/r;->M(Z)V

    .line 63
    .line 64
    .line 65
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/f0;->b:[B

    .line 66
    .line 67
    iget v8, p0, Lcom/google/android/gms/internal/ads/f0;->c:I

    .line 68
    .line 69
    invoke-static {v7, v8, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    .line 71
    .line 72
    iget v7, p0, Lcom/google/android/gms/internal/ads/f0;->c:I

    .line 73
    .line 74
    add-int/2addr v7, v2

    .line 75
    iput v7, p0, Lcom/google/android/gms/internal/ads/f0;->c:I

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f0;->y()V

    .line 78
    .line 79
    .line 80
    :cond_2
    if-lez v0, :cond_4

    .line 81
    .line 82
    new-array v2, v0, [B

    .line 83
    .line 84
    iget v7, p0, Lcom/google/android/gms/internal/ads/f0;->d:I

    .line 85
    .line 86
    if-nez v7, :cond_3

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    const/4 v4, 0x0

    .line 90
    :goto_1
    invoke-static {v4}, Lo3/r;->M(Z)V

    .line 91
    .line 92
    .line 93
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/f0;->b:[B

    .line 94
    .line 95
    iget v7, p0, Lcom/google/android/gms/internal/ads/f0;->c:I

    .line 96
    .line 97
    invoke-static {v4, v7, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    .line 99
    .line 100
    iget v4, p0, Lcom/google/android/gms/internal/ads/f0;->c:I

    .line 101
    .line 102
    add-int/2addr v4, v0

    .line 103
    iput v4, p0, Lcom/google/android/gms/internal/ads/f0;->c:I

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f0;->y()V

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_4
    :goto_2
    move-object v2, v5

    .line 110
    :goto_3
    new-instance p0, Lcom/google/android/gms/internal/ads/a2;

    .line 111
    .line 112
    invoke-direct {p0, v1, v3, v5, v2}, Lcom/google/android/gms/internal/ads/a2;-><init>(IZ[B[B)V

    .line 113
    .line 114
    .line 115
    return-object p0
.end method

.method public static e([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v8, p5

    .line 6
    .line 7
    new-instance v9, Lcom/google/android/gms/internal/ads/f0;

    .line 8
    .line 9
    array-length v2, v0

    .line 10
    invoke-direct {v9, v0, v2}, Lcom/google/android/gms/internal/ads/f0;-><init>([BI)V

    .line 11
    .line 12
    .line 13
    move/from16 v2, p3

    .line 14
    .line 15
    move/from16 v10, p4

    .line 16
    .line 17
    const/4 v11, 0x0

    .line 18
    const/4 v12, 0x0

    .line 19
    const/4 v13, 0x0

    .line 20
    :goto_0
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/f0;->a()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_21

    .line 25
    .line 26
    const/16 v14, 0x8

    .line 27
    .line 28
    invoke-virtual {v9, v14}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/16 v4, 0xf0

    .line 33
    .line 34
    if-eq v3, v4, :cond_20

    .line 35
    .line 36
    const/4 v15, 0x2

    .line 37
    const/4 v7, 0x1

    .line 38
    const/4 v6, 0x3

    .line 39
    const/4 v5, 0x4

    .line 40
    const/16 v16, 0x0

    .line 41
    .line 42
    packed-switch v3, :pswitch_data_0

    .line 43
    .line 44
    .line 45
    packed-switch v3, :pswitch_data_1

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_0
    const/16 v3, 0x10

    .line 50
    .line 51
    invoke-static {v3, v14, v9}, Lcom/google/android/gms/internal/ads/e2;->f(IILcom/google/android/gms/internal/ads/f0;)[B

    .line 52
    .line 53
    .line 54
    move-result-object v12

    .line 55
    goto :goto_0

    .line 56
    :pswitch_1
    invoke-static {v5, v14, v9}, Lcom/google/android/gms/internal/ads/e2;->f(IILcom/google/android/gms/internal/ads/f0;)[B

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    goto :goto_0

    .line 61
    :pswitch_2
    invoke-static {v5, v5, v9}, Lcom/google/android/gms/internal/ads/e2;->f(IILcom/google/android/gms/internal/ads/f0;)[B

    .line 62
    .line 63
    .line 64
    move-result-object v13

    .line 65
    goto :goto_0

    .line 66
    :pswitch_3
    move v15, v2

    .line 67
    const/4 v2, 0x0

    .line 68
    :goto_1
    invoke-virtual {v9, v14}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_0

    .line 73
    .line 74
    move/from16 v17, v2

    .line 75
    .line 76
    const/16 v18, 0x1

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_0
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    const/4 v4, 0x7

    .line 84
    if-nez v3, :cond_2

    .line 85
    .line 86
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_1

    .line 91
    .line 92
    move/from16 v17, v2

    .line 93
    .line 94
    move/from16 v18, v3

    .line 95
    .line 96
    const/4 v3, 0x0

    .line 97
    goto :goto_2

    .line 98
    :cond_1
    const/4 v3, 0x0

    .line 99
    const/16 v17, 0x1

    .line 100
    .line 101
    const/16 v18, 0x0

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_2
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-virtual {v9, v14}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    move/from16 v17, v2

    .line 113
    .line 114
    move/from16 v18, v3

    .line 115
    .line 116
    move v3, v4

    .line 117
    :goto_2
    if-eqz v18, :cond_3

    .line 118
    .line 119
    if-eqz v8, :cond_3

    .line 120
    .line 121
    add-int/lit8 v2, v10, 0x1

    .line 122
    .line 123
    int-to-float v4, v10

    .line 124
    aget v3, p1, v3

    .line 125
    .line 126
    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    .line 128
    .line 129
    int-to-float v3, v15

    .line 130
    add-int v5, v15, v18

    .line 131
    .line 132
    int-to-float v5, v5

    .line 133
    int-to-float v6, v2

    .line 134
    move-object/from16 v2, p6

    .line 135
    .line 136
    const/4 v0, 0x1

    .line 137
    move-object/from16 v7, p5

    .line 138
    .line 139
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_3
    const/4 v0, 0x1

    .line 144
    :goto_3
    add-int v15, v15, v18

    .line 145
    .line 146
    if-nez v17, :cond_4

    .line 147
    .line 148
    move/from16 v2, v17

    .line 149
    .line 150
    const/4 v7, 0x1

    .line 151
    goto :goto_1

    .line 152
    :cond_4
    move v2, v15

    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :pswitch_4
    const/4 v0, 0x1

    .line 156
    if-ne v1, v6, :cond_6

    .line 157
    .line 158
    if-nez v12, :cond_5

    .line 159
    .line 160
    sget-object v3, Lcom/google/android/gms/internal/ads/e2;->P:[B

    .line 161
    .line 162
    move-object/from16 v17, v3

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_5
    move-object/from16 v17, v12

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_6
    const/16 v17, 0x0

    .line 169
    .line 170
    :goto_4
    move v7, v2

    .line 171
    const/4 v2, 0x0

    .line 172
    :goto_5
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-eqz v3, :cond_7

    .line 177
    .line 178
    move/from16 v18, v2

    .line 179
    .line 180
    :goto_6
    const/16 v19, 0x1

    .line 181
    .line 182
    goto/16 :goto_9

    .line 183
    .line 184
    :cond_7
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-nez v3, :cond_9

    .line 189
    .line 190
    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-eqz v3, :cond_8

    .line 195
    .line 196
    add-int/lit8 v3, v3, 0x2

    .line 197
    .line 198
    move/from16 v18, v2

    .line 199
    .line 200
    move/from16 v19, v3

    .line 201
    .line 202
    const/4 v3, 0x0

    .line 203
    goto :goto_9

    .line 204
    :cond_8
    const/4 v3, 0x0

    .line 205
    const/16 v18, 0x1

    .line 206
    .line 207
    :goto_7
    const/16 v19, 0x0

    .line 208
    .line 209
    goto :goto_9

    .line 210
    :cond_9
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-nez v3, :cond_a

    .line 215
    .line 216
    invoke-virtual {v9, v15}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    add-int/2addr v3, v5

    .line 221
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    :goto_8
    move/from16 v18, v2

    .line 226
    .line 227
    move/from16 v19, v3

    .line 228
    .line 229
    move v3, v4

    .line 230
    goto :goto_9

    .line 231
    :cond_a
    invoke-virtual {v9, v15}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    if-eqz v3, :cond_e

    .line 236
    .line 237
    if-eq v3, v0, :cond_d

    .line 238
    .line 239
    if-eq v3, v15, :cond_c

    .line 240
    .line 241
    if-eq v3, v6, :cond_b

    .line 242
    .line 243
    move/from16 v18, v2

    .line 244
    .line 245
    const/4 v3, 0x0

    .line 246
    goto :goto_7

    .line 247
    :cond_b
    invoke-virtual {v9, v14}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    add-int/lit8 v3, v3, 0x19

    .line 252
    .line 253
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    goto :goto_8

    .line 258
    :cond_c
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    add-int/lit8 v3, v3, 0x9

    .line 263
    .line 264
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    goto :goto_8

    .line 269
    :cond_d
    move/from16 v18, v2

    .line 270
    .line 271
    const/4 v3, 0x0

    .line 272
    const/16 v19, 0x2

    .line 273
    .line 274
    goto :goto_9

    .line 275
    :cond_e
    move/from16 v18, v2

    .line 276
    .line 277
    const/4 v3, 0x0

    .line 278
    goto :goto_6

    .line 279
    :goto_9
    if-eqz v19, :cond_10

    .line 280
    .line 281
    if-eqz v8, :cond_10

    .line 282
    .line 283
    add-int/lit8 v2, v10, 0x1

    .line 284
    .line 285
    int-to-float v4, v10

    .line 286
    if-eqz v17, :cond_f

    .line 287
    .line 288
    aget-byte v3, v17, v3

    .line 289
    .line 290
    :cond_f
    int-to-float v2, v2

    .line 291
    aget v3, p1, v3

    .line 292
    .line 293
    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 294
    .line 295
    .line 296
    int-to-float v3, v7

    .line 297
    add-int v5, v7, v19

    .line 298
    .line 299
    int-to-float v5, v5

    .line 300
    move/from16 v20, v2

    .line 301
    .line 302
    move-object/from16 v2, p6

    .line 303
    .line 304
    const/4 v14, 0x3

    .line 305
    move/from16 v6, v20

    .line 306
    .line 307
    move/from16 v20, v7

    .line 308
    .line 309
    move-object/from16 v7, p5

    .line 310
    .line 311
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 312
    .line 313
    .line 314
    goto :goto_a

    .line 315
    :cond_10
    move/from16 v20, v7

    .line 316
    .line 317
    const/4 v14, 0x3

    .line 318
    :goto_a
    add-int v7, v20, v19

    .line 319
    .line 320
    if-eqz v18, :cond_11

    .line 321
    .line 322
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/f0;->l()V

    .line 323
    .line 324
    .line 325
    :goto_b
    move v2, v7

    .line 326
    goto/16 :goto_0

    .line 327
    .line 328
    :cond_11
    move/from16 v2, v18

    .line 329
    .line 330
    const/4 v5, 0x4

    .line 331
    const/4 v6, 0x3

    .line 332
    const/16 v14, 0x8

    .line 333
    .line 334
    goto/16 :goto_5

    .line 335
    .line 336
    :pswitch_5
    const/4 v0, 0x1

    .line 337
    const/4 v14, 0x3

    .line 338
    if-ne v1, v14, :cond_13

    .line 339
    .line 340
    if-nez v11, :cond_12

    .line 341
    .line 342
    sget-object v3, Lcom/google/android/gms/internal/ads/e2;->O:[B

    .line 343
    .line 344
    :goto_c
    move-object/from16 v17, v3

    .line 345
    .line 346
    goto :goto_d

    .line 347
    :cond_12
    move-object/from16 v17, v11

    .line 348
    .line 349
    goto :goto_d

    .line 350
    :cond_13
    if-ne v1, v15, :cond_15

    .line 351
    .line 352
    if-nez v13, :cond_14

    .line 353
    .line 354
    sget-object v3, Lcom/google/android/gms/internal/ads/e2;->N:[B

    .line 355
    .line 356
    goto :goto_c

    .line 357
    :cond_14
    move-object/from16 v17, v13

    .line 358
    .line 359
    goto :goto_d

    .line 360
    :cond_15
    const/16 v17, 0x0

    .line 361
    .line 362
    :goto_d
    move v7, v2

    .line 363
    const/4 v2, 0x0

    .line 364
    :goto_e
    invoke-virtual {v9, v15}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 365
    .line 366
    .line 367
    move-result v3

    .line 368
    if-eqz v3, :cond_16

    .line 369
    .line 370
    move/from16 v18, v2

    .line 371
    .line 372
    :goto_f
    const/4 v5, 0x4

    .line 373
    const/16 v6, 0x8

    .line 374
    .line 375
    const/16 v19, 0x1

    .line 376
    .line 377
    goto/16 :goto_11

    .line 378
    .line 379
    :cond_16
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 380
    .line 381
    .line 382
    move-result v3

    .line 383
    if-eqz v3, :cond_17

    .line 384
    .line 385
    invoke-virtual {v9, v14}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    add-int/2addr v3, v14

    .line 390
    invoke-virtual {v9, v15}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 391
    .line 392
    .line 393
    move-result v4

    .line 394
    move/from16 v18, v2

    .line 395
    .line 396
    move/from16 v19, v3

    .line 397
    .line 398
    move v3, v4

    .line 399
    const/4 v5, 0x4

    .line 400
    const/16 v6, 0x8

    .line 401
    .line 402
    goto :goto_11

    .line 403
    :cond_17
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    if-eqz v3, :cond_18

    .line 408
    .line 409
    move/from16 v18, v2

    .line 410
    .line 411
    const/4 v3, 0x0

    .line 412
    goto :goto_f

    .line 413
    :cond_18
    invoke-virtual {v9, v15}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    if-eqz v3, :cond_1c

    .line 418
    .line 419
    if-eq v3, v0, :cond_1b

    .line 420
    .line 421
    if-eq v3, v15, :cond_1a

    .line 422
    .line 423
    if-eq v3, v14, :cond_19

    .line 424
    .line 425
    move/from16 v18, v2

    .line 426
    .line 427
    const/4 v3, 0x0

    .line 428
    const/4 v5, 0x4

    .line 429
    const/16 v6, 0x8

    .line 430
    .line 431
    :goto_10
    const/16 v19, 0x0

    .line 432
    .line 433
    goto :goto_11

    .line 434
    :cond_19
    const/16 v6, 0x8

    .line 435
    .line 436
    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    add-int/lit8 v3, v3, 0x1d

    .line 441
    .line 442
    invoke-virtual {v9, v15}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 443
    .line 444
    .line 445
    move-result v4

    .line 446
    move/from16 v18, v2

    .line 447
    .line 448
    move/from16 v19, v3

    .line 449
    .line 450
    move v3, v4

    .line 451
    const/4 v5, 0x4

    .line 452
    goto :goto_11

    .line 453
    :cond_1a
    const/4 v5, 0x4

    .line 454
    const/16 v6, 0x8

    .line 455
    .line 456
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 457
    .line 458
    .line 459
    move-result v3

    .line 460
    add-int/lit8 v3, v3, 0xc

    .line 461
    .line 462
    invoke-virtual {v9, v15}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 463
    .line 464
    .line 465
    move-result v4

    .line 466
    move/from16 v18, v2

    .line 467
    .line 468
    move/from16 v19, v3

    .line 469
    .line 470
    move v3, v4

    .line 471
    goto :goto_11

    .line 472
    :cond_1b
    const/4 v5, 0x4

    .line 473
    const/16 v6, 0x8

    .line 474
    .line 475
    move/from16 v18, v2

    .line 476
    .line 477
    const/4 v3, 0x0

    .line 478
    const/16 v19, 0x2

    .line 479
    .line 480
    goto :goto_11

    .line 481
    :cond_1c
    const/4 v5, 0x4

    .line 482
    const/16 v6, 0x8

    .line 483
    .line 484
    const/4 v3, 0x0

    .line 485
    const/16 v18, 0x1

    .line 486
    .line 487
    goto :goto_10

    .line 488
    :goto_11
    if-eqz v19, :cond_1e

    .line 489
    .line 490
    if-eqz v8, :cond_1e

    .line 491
    .line 492
    add-int/lit8 v2, v10, 0x1

    .line 493
    .line 494
    int-to-float v4, v10

    .line 495
    if-eqz v17, :cond_1d

    .line 496
    .line 497
    aget-byte v3, v17, v3

    .line 498
    .line 499
    :cond_1d
    int-to-float v2, v2

    .line 500
    aget v3, p1, v3

    .line 501
    .line 502
    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 503
    .line 504
    .line 505
    int-to-float v3, v7

    .line 506
    add-int v0, v7, v19

    .line 507
    .line 508
    int-to-float v0, v0

    .line 509
    move/from16 v21, v2

    .line 510
    .line 511
    move-object/from16 v2, p6

    .line 512
    .line 513
    const/16 v22, 0x4

    .line 514
    .line 515
    move v5, v0

    .line 516
    const/16 v0, 0x8

    .line 517
    .line 518
    move/from16 v6, v21

    .line 519
    .line 520
    move/from16 v21, v7

    .line 521
    .line 522
    move-object/from16 v7, p5

    .line 523
    .line 524
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 525
    .line 526
    .line 527
    goto :goto_12

    .line 528
    :cond_1e
    move/from16 v21, v7

    .line 529
    .line 530
    const/16 v0, 0x8

    .line 531
    .line 532
    const/16 v22, 0x4

    .line 533
    .line 534
    :goto_12
    add-int v7, v21, v19

    .line 535
    .line 536
    if-eqz v18, :cond_1f

    .line 537
    .line 538
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/f0;->l()V

    .line 539
    .line 540
    .line 541
    goto/16 :goto_b

    .line 542
    .line 543
    :cond_1f
    move/from16 v2, v18

    .line 544
    .line 545
    const/4 v0, 0x1

    .line 546
    goto/16 :goto_e

    .line 547
    .line 548
    :cond_20
    add-int/lit8 v10, v10, 0x2

    .line 549
    .line 550
    move/from16 v2, p3

    .line 551
    .line 552
    goto/16 :goto_0

    .line 553
    .line 554
    :cond_21
    return-void

    .line 555
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static f(IILcom/google/android/gms/internal/ads/f0;)[B
    .locals 3

    .line 1
    new-array v0, p0, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    int-to-byte v2, v2

    .line 11
    aput-byte v2, v0, v1

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-object v0
.end method

.method public static g()[I
    .locals 4

    .line 1
    const/high16 v0, -0x1000000

    .line 2
    .line 3
    const v1, -0x808081

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, -0x1

    .line 8
    filled-new-array {v2, v3, v0, v1}, [I

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public static h()[I
    .locals 10

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aput v2, v1, v2

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x1

    .line 10
    :goto_0
    if-ge v4, v0, :cond_7

    .line 11
    .line 12
    and-int/lit8 v5, v4, 0x4

    .line 13
    .line 14
    and-int/lit8 v6, v4, 0x2

    .line 15
    .line 16
    and-int/lit8 v7, v4, 0x1

    .line 17
    .line 18
    const/16 v8, 0x8

    .line 19
    .line 20
    const/16 v9, 0xff

    .line 21
    .line 22
    if-ge v4, v8, :cond_3

    .line 23
    .line 24
    if-eq v3, v7, :cond_0

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/16 v7, 0xff

    .line 29
    .line 30
    :goto_1
    if-eqz v6, :cond_1

    .line 31
    .line 32
    const/16 v6, 0xff

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    const/4 v6, 0x0

    .line 36
    :goto_2
    if-eqz v5, :cond_2

    .line 37
    .line 38
    const/16 v5, 0xff

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_2
    const/4 v5, 0x0

    .line 42
    :goto_3
    invoke-static {v9, v7, v6, v5}, Lcom/google/android/gms/internal/ads/e2;->a(IIII)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    aput v5, v1, v4

    .line 47
    .line 48
    goto :goto_7

    .line 49
    :cond_3
    const/16 v8, 0x7f

    .line 50
    .line 51
    if-eq v3, v7, :cond_4

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    goto :goto_4

    .line 55
    :cond_4
    const/16 v7, 0x7f

    .line 56
    .line 57
    :goto_4
    if-eqz v6, :cond_5

    .line 58
    .line 59
    const/16 v6, 0x7f

    .line 60
    .line 61
    goto :goto_5

    .line 62
    :cond_5
    const/4 v6, 0x0

    .line 63
    :goto_5
    if-eqz v5, :cond_6

    .line 64
    .line 65
    goto :goto_6

    .line 66
    :cond_6
    const/4 v8, 0x0

    .line 67
    :goto_6
    invoke-static {v9, v7, v6, v8}, Lcom/google/android/gms/internal/ads/e2;->a(IIII)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    aput v5, v1, v4

    .line 72
    .line 73
    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_7
    return-object v1
.end method

.method public static i()[I
    .locals 15

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aput v2, v1, v2

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v0, :cond_20

    .line 10
    .line 11
    const/16 v4, 0x8

    .line 12
    .line 13
    const/16 v5, 0xff

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    if-ge v3, v4, :cond_3

    .line 17
    .line 18
    and-int/lit8 v4, v3, 0x1

    .line 19
    .line 20
    and-int/lit8 v7, v3, 0x2

    .line 21
    .line 22
    and-int/lit8 v8, v3, 0x4

    .line 23
    .line 24
    if-eq v6, v4, :cond_0

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/16 v4, 0xff

    .line 29
    .line 30
    :goto_1
    if-eqz v7, :cond_1

    .line 31
    .line 32
    const/16 v6, 0xff

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    const/4 v6, 0x0

    .line 36
    :goto_2
    if-eqz v8, :cond_2

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_2
    const/4 v5, 0x0

    .line 40
    :goto_3
    const/16 v7, 0x3f

    .line 41
    .line 42
    invoke-static {v7, v4, v6, v5}, Lcom/google/android/gms/internal/ads/e2;->a(IIII)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    aput v4, v1, v3

    .line 47
    .line 48
    goto/16 :goto_1c

    .line 49
    .line 50
    :cond_3
    and-int/lit16 v7, v3, 0x88

    .line 51
    .line 52
    const/16 v8, 0xaa

    .line 53
    .line 54
    const/16 v9, 0x55

    .line 55
    .line 56
    if-eqz v7, :cond_19

    .line 57
    .line 58
    const/16 v10, 0x7f

    .line 59
    .line 60
    if-eq v7, v4, :cond_12

    .line 61
    .line 62
    const/16 v4, 0x80

    .line 63
    .line 64
    const/16 v8, 0x2b

    .line 65
    .line 66
    if-eq v7, v4, :cond_b

    .line 67
    .line 68
    const/16 v4, 0x88

    .line 69
    .line 70
    if-eq v7, v4, :cond_4

    .line 71
    .line 72
    goto/16 :goto_1c

    .line 73
    .line 74
    :cond_4
    and-int/lit8 v4, v3, 0x10

    .line 75
    .line 76
    and-int/lit8 v7, v3, 0x1

    .line 77
    .line 78
    and-int/lit8 v10, v3, 0x20

    .line 79
    .line 80
    and-int/lit8 v11, v3, 0x2

    .line 81
    .line 82
    and-int/lit8 v12, v3, 0x40

    .line 83
    .line 84
    and-int/lit8 v13, v3, 0x4

    .line 85
    .line 86
    if-eq v6, v7, :cond_5

    .line 87
    .line 88
    const/4 v6, 0x0

    .line 89
    goto :goto_4

    .line 90
    :cond_5
    const/16 v6, 0x2b

    .line 91
    .line 92
    :goto_4
    if-eqz v4, :cond_6

    .line 93
    .line 94
    const/16 v4, 0x55

    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_6
    const/4 v4, 0x0

    .line 98
    :goto_5
    if-eqz v11, :cond_7

    .line 99
    .line 100
    const/16 v7, 0x2b

    .line 101
    .line 102
    goto :goto_6

    .line 103
    :cond_7
    const/4 v7, 0x0

    .line 104
    :goto_6
    if-eqz v10, :cond_8

    .line 105
    .line 106
    const/16 v10, 0x55

    .line 107
    .line 108
    goto :goto_7

    .line 109
    :cond_8
    const/4 v10, 0x0

    .line 110
    :goto_7
    if-eqz v13, :cond_9

    .line 111
    .line 112
    goto :goto_8

    .line 113
    :cond_9
    const/4 v8, 0x0

    .line 114
    :goto_8
    if-eqz v12, :cond_a

    .line 115
    .line 116
    goto :goto_9

    .line 117
    :cond_a
    const/4 v9, 0x0

    .line 118
    :goto_9
    add-int/2addr v6, v4

    .line 119
    add-int/2addr v7, v10

    .line 120
    add-int/2addr v8, v9

    .line 121
    invoke-static {v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/e2;->a(IIII)I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    aput v4, v1, v3

    .line 126
    .line 127
    goto/16 :goto_1c

    .line 128
    .line 129
    :cond_b
    and-int/lit8 v4, v3, 0x10

    .line 130
    .line 131
    and-int/lit8 v7, v3, 0x1

    .line 132
    .line 133
    and-int/lit8 v11, v3, 0x20

    .line 134
    .line 135
    and-int/lit8 v12, v3, 0x2

    .line 136
    .line 137
    and-int/lit8 v13, v3, 0x40

    .line 138
    .line 139
    and-int/lit8 v14, v3, 0x4

    .line 140
    .line 141
    if-eq v6, v7, :cond_c

    .line 142
    .line 143
    const/4 v6, 0x0

    .line 144
    goto :goto_a

    .line 145
    :cond_c
    const/16 v6, 0x2b

    .line 146
    .line 147
    :goto_a
    add-int/2addr v6, v10

    .line 148
    if-eqz v4, :cond_d

    .line 149
    .line 150
    const/16 v4, 0x55

    .line 151
    .line 152
    goto :goto_b

    .line 153
    :cond_d
    const/4 v4, 0x0

    .line 154
    :goto_b
    if-eqz v12, :cond_e

    .line 155
    .line 156
    const/16 v7, 0x2b

    .line 157
    .line 158
    goto :goto_c

    .line 159
    :cond_e
    const/4 v7, 0x0

    .line 160
    :goto_c
    add-int/2addr v7, v10

    .line 161
    if-eqz v11, :cond_f

    .line 162
    .line 163
    const/16 v11, 0x55

    .line 164
    .line 165
    goto :goto_d

    .line 166
    :cond_f
    const/4 v11, 0x0

    .line 167
    :goto_d
    if-eqz v14, :cond_10

    .line 168
    .line 169
    goto :goto_e

    .line 170
    :cond_10
    const/4 v8, 0x0

    .line 171
    :goto_e
    add-int/2addr v8, v10

    .line 172
    if-eqz v13, :cond_11

    .line 173
    .line 174
    goto :goto_f

    .line 175
    :cond_11
    const/4 v9, 0x0

    .line 176
    :goto_f
    add-int/2addr v6, v4

    .line 177
    add-int/2addr v7, v11

    .line 178
    add-int/2addr v8, v9

    .line 179
    invoke-static {v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/e2;->a(IIII)I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    aput v4, v1, v3

    .line 184
    .line 185
    goto/16 :goto_1c

    .line 186
    .line 187
    :cond_12
    and-int/lit8 v4, v3, 0x10

    .line 188
    .line 189
    and-int/lit8 v5, v3, 0x1

    .line 190
    .line 191
    and-int/lit8 v7, v3, 0x20

    .line 192
    .line 193
    and-int/lit8 v11, v3, 0x2

    .line 194
    .line 195
    and-int/lit8 v12, v3, 0x40

    .line 196
    .line 197
    and-int/lit8 v13, v3, 0x4

    .line 198
    .line 199
    if-eq v6, v5, :cond_13

    .line 200
    .line 201
    const/4 v5, 0x0

    .line 202
    goto :goto_10

    .line 203
    :cond_13
    const/16 v5, 0x55

    .line 204
    .line 205
    :goto_10
    if-eqz v4, :cond_14

    .line 206
    .line 207
    const/16 v4, 0xaa

    .line 208
    .line 209
    goto :goto_11

    .line 210
    :cond_14
    const/4 v4, 0x0

    .line 211
    :goto_11
    if-eqz v11, :cond_15

    .line 212
    .line 213
    const/16 v6, 0x55

    .line 214
    .line 215
    goto :goto_12

    .line 216
    :cond_15
    const/4 v6, 0x0

    .line 217
    :goto_12
    if-eqz v7, :cond_16

    .line 218
    .line 219
    const/16 v7, 0xaa

    .line 220
    .line 221
    goto :goto_13

    .line 222
    :cond_16
    const/4 v7, 0x0

    .line 223
    :goto_13
    if-eqz v13, :cond_17

    .line 224
    .line 225
    goto :goto_14

    .line 226
    :cond_17
    const/4 v9, 0x0

    .line 227
    :goto_14
    if-eqz v12, :cond_18

    .line 228
    .line 229
    goto :goto_15

    .line 230
    :cond_18
    const/4 v8, 0x0

    .line 231
    :goto_15
    add-int/2addr v9, v8

    .line 232
    add-int/2addr v6, v7

    .line 233
    add-int/2addr v5, v4

    .line 234
    invoke-static {v10, v5, v6, v9}, Lcom/google/android/gms/internal/ads/e2;->a(IIII)I

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    aput v4, v1, v3

    .line 239
    .line 240
    goto :goto_1c

    .line 241
    :cond_19
    and-int/lit8 v4, v3, 0x10

    .line 242
    .line 243
    and-int/lit8 v7, v3, 0x1

    .line 244
    .line 245
    and-int/lit8 v10, v3, 0x20

    .line 246
    .line 247
    and-int/lit8 v11, v3, 0x2

    .line 248
    .line 249
    and-int/lit8 v12, v3, 0x40

    .line 250
    .line 251
    and-int/lit8 v13, v3, 0x4

    .line 252
    .line 253
    if-eq v6, v7, :cond_1a

    .line 254
    .line 255
    const/4 v6, 0x0

    .line 256
    goto :goto_16

    .line 257
    :cond_1a
    const/16 v6, 0x55

    .line 258
    .line 259
    :goto_16
    if-eqz v4, :cond_1b

    .line 260
    .line 261
    const/16 v4, 0xaa

    .line 262
    .line 263
    goto :goto_17

    .line 264
    :cond_1b
    const/4 v4, 0x0

    .line 265
    :goto_17
    if-eqz v11, :cond_1c

    .line 266
    .line 267
    const/16 v7, 0x55

    .line 268
    .line 269
    goto :goto_18

    .line 270
    :cond_1c
    const/4 v7, 0x0

    .line 271
    :goto_18
    if-eqz v10, :cond_1d

    .line 272
    .line 273
    const/16 v10, 0xaa

    .line 274
    .line 275
    goto :goto_19

    .line 276
    :cond_1d
    const/4 v10, 0x0

    .line 277
    :goto_19
    if-eqz v13, :cond_1e

    .line 278
    .line 279
    goto :goto_1a

    .line 280
    :cond_1e
    const/4 v9, 0x0

    .line 281
    :goto_1a
    if-eqz v12, :cond_1f

    .line 282
    .line 283
    goto :goto_1b

    .line 284
    :cond_1f
    const/4 v8, 0x0

    .line 285
    :goto_1b
    add-int/2addr v9, v8

    .line 286
    add-int/2addr v7, v10

    .line 287
    add-int/2addr v6, v4

    .line 288
    invoke-static {v5, v6, v7, v9}, Lcom/google/android/gms/internal/ads/e2;->a(IIII)I

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    aput v4, v1, v3

    .line 293
    .line 294
    :goto_1c
    add-int/lit8 v3, v3, 0x1

    .line 295
    .line 296
    goto/16 :goto_0

    .line 297
    .line 298
    :cond_20
    return-object v1
.end method


# virtual methods
.method public final d([BIILt0/d;)V
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    add-int v2, v1, p3

    .line 6
    .line 7
    new-instance v3, Lcom/google/android/gms/internal/ads/f0;

    .line 8
    .line 9
    move-object/from16 v4, p1

    .line 10
    .line 11
    invoke-direct {v3, v4, v2}, Lcom/google/android/gms/internal/ads/f0;-><init>([BI)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/f0;->t(I)V

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f0;->a()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    const/16 v4, 0x30

    .line 23
    .line 24
    const/4 v5, 0x3

    .line 25
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/e2;->L:Ls1/g;

    .line 26
    .line 27
    const/4 v8, 0x2

    .line 28
    if-lt v1, v4, :cond_b

    .line 29
    .line 30
    const/16 v1, 0x8

    .line 31
    .line 32
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/16 v9, 0xf

    .line 37
    .line 38
    if-ne v4, v9, :cond_b

    .line 39
    .line 40
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const/16 v9, 0x10

    .line 45
    .line 46
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f0;->c()I

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    add-int/2addr v12, v11

    .line 59
    mul-int/lit8 v13, v11, 0x8

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f0;->a()I

    .line 62
    .line 63
    .line 64
    move-result v14

    .line 65
    if-le v13, v14, :cond_0

    .line 66
    .line 67
    const-string v1, "DvbParser"

    .line 68
    .line 69
    const-string v2, "Data field length exceeds limit"

    .line 70
    .line 71
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f0;->a()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    const/4 v13, 0x4

    .line 83
    packed-switch v4, :pswitch_data_0

    .line 84
    .line 85
    .line 86
    goto/16 :goto_7

    .line 87
    .line 88
    :pswitch_0
    iget v1, v6, Ls1/g;->a:I

    .line 89
    .line 90
    if-ne v10, v1, :cond_a

    .line 91
    .line 92
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 103
    .line 104
    .line 105
    move-result v14

    .line 106
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 107
    .line 108
    .line 109
    move-result v15

    .line 110
    if-eqz v1, :cond_1

    .line 111
    .line 112
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    move/from16 v17, v1

    .line 129
    .line 130
    move/from16 v18, v2

    .line 131
    .line 132
    move/from16 v19, v4

    .line 133
    .line 134
    move/from16 v16, v7

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_1
    move/from16 v17, v14

    .line 138
    .line 139
    move/from16 v19, v15

    .line 140
    .line 141
    const/16 v16, 0x0

    .line 142
    .line 143
    const/16 v18, 0x0

    .line 144
    .line 145
    :goto_1
    new-instance v1, Ls1/b;

    .line 146
    .line 147
    move-object v13, v1

    .line 148
    invoke-direct/range {v13 .. v19}, Ls1/b;-><init>(IIIIII)V

    .line 149
    .line 150
    .line 151
    iput-object v1, v6, Ls1/g;->h:Ljava/lang/Object;

    .line 152
    .line 153
    goto/16 :goto_7

    .line 154
    .line 155
    :pswitch_1
    iget v1, v6, Ls1/g;->a:I

    .line 156
    .line 157
    if-ne v10, v1, :cond_2

    .line 158
    .line 159
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/e2;->c(Lcom/google/android/gms/internal/ads/f0;)Lcom/google/android/gms/internal/ads/a2;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    iget-object v2, v6, Ls1/g;->e:Ljava/lang/Cloneable;

    .line 164
    .line 165
    check-cast v2, Landroid/util/SparseArray;

    .line 166
    .line 167
    iget v4, v1, Lcom/google/android/gms/internal/ads/a2;->a:I

    .line 168
    .line 169
    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_7

    .line 173
    .line 174
    :cond_2
    iget v1, v6, Ls1/g;->b:I

    .line 175
    .line 176
    if-ne v10, v1, :cond_a

    .line 177
    .line 178
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/e2;->c(Lcom/google/android/gms/internal/ads/f0;)Lcom/google/android/gms/internal/ads/a2;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    iget-object v2, v6, Ls1/g;->g:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v2, Landroid/util/SparseArray;

    .line 185
    .line 186
    iget v4, v1, Lcom/google/android/gms/internal/ads/a2;->a:I

    .line 187
    .line 188
    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    goto/16 :goto_7

    .line 192
    .line 193
    :pswitch_2
    iget v1, v6, Ls1/g;->a:I

    .line 194
    .line 195
    if-ne v10, v1, :cond_3

    .line 196
    .line 197
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/e2;->b(Lcom/google/android/gms/internal/ads/f0;I)Lcom/google/android/gms/internal/ads/Z1;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    iget-object v2, v6, Ls1/g;->d:Ljava/lang/Cloneable;

    .line 202
    .line 203
    check-cast v2, Landroid/util/SparseArray;

    .line 204
    .line 205
    iget v4, v1, Lcom/google/android/gms/internal/ads/Z1;->a:I

    .line 206
    .line 207
    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    goto/16 :goto_7

    .line 211
    .line 212
    :cond_3
    iget v1, v6, Ls1/g;->b:I

    .line 213
    .line 214
    if-ne v10, v1, :cond_a

    .line 215
    .line 216
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/e2;->b(Lcom/google/android/gms/internal/ads/f0;I)Lcom/google/android/gms/internal/ads/Z1;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    iget-object v2, v6, Ls1/g;->f:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v2, Landroid/util/SparseArray;

    .line 223
    .line 224
    iget v4, v1, Lcom/google/android/gms/internal/ads/Z1;->a:I

    .line 225
    .line 226
    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_7

    .line 230
    .line 231
    :pswitch_3
    iget-object v4, v6, Ls1/g;->i:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast v4, LV/b;

    .line 234
    .line 235
    iget v14, v6, Ls1/g;->a:I

    .line 236
    .line 237
    if-ne v10, v14, :cond_a

    .line 238
    .line 239
    if-eqz v4, :cond_a

    .line 240
    .line 241
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 242
    .line 243
    .line 244
    move-result v10

    .line 245
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 249
    .line 250
    .line 251
    move-result v17

    .line 252
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 256
    .line 257
    .line 258
    move-result v18

    .line 259
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 260
    .line 261
    .line 262
    move-result v19

    .line 263
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 267
    .line 268
    .line 269
    move-result v20

    .line 270
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 274
    .line 275
    .line 276
    move-result v21

    .line 277
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 278
    .line 279
    .line 280
    move-result v22

    .line 281
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 282
    .line 283
    .line 284
    move-result v23

    .line 285
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 286
    .line 287
    .line 288
    move-result v24

    .line 289
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 290
    .line 291
    .line 292
    add-int/lit8 v11, v11, -0xa

    .line 293
    .line 294
    new-instance v5, Landroid/util/SparseArray;

    .line 295
    .line 296
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 297
    .line 298
    .line 299
    :goto_2
    if-lez v11, :cond_6

    .line 300
    .line 301
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 302
    .line 303
    .line 304
    move-result v14

    .line 305
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 306
    .line 307
    .line 308
    move-result v15

    .line 309
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 310
    .line 311
    .line 312
    const/16 v7, 0xc

    .line 313
    .line 314
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 315
    .line 316
    .line 317
    move-result v9

    .line 318
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 322
    .line 323
    .line 324
    move-result v7

    .line 325
    add-int/lit8 v16, v11, -0x6

    .line 326
    .line 327
    if-eq v15, v2, :cond_5

    .line 328
    .line 329
    if-ne v15, v8, :cond_4

    .line 330
    .line 331
    goto :goto_3

    .line 332
    :cond_4
    move/from16 v11, v16

    .line 333
    .line 334
    goto :goto_4

    .line 335
    :cond_5
    :goto_3
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 336
    .line 337
    .line 338
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 339
    .line 340
    .line 341
    add-int/lit8 v11, v11, -0x8

    .line 342
    .line 343
    :goto_4
    new-instance v15, Lcom/google/android/gms/internal/ads/d2;

    .line 344
    .line 345
    invoke-direct {v15, v9, v7}, Lcom/google/android/gms/internal/ads/d2;-><init>(II)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v5, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    const/16 v9, 0x10

    .line 352
    .line 353
    goto :goto_2

    .line 354
    :cond_6
    new-instance v1, Lcom/google/android/gms/internal/ads/c2;

    .line 355
    .line 356
    move-object v15, v1

    .line 357
    move/from16 v16, v10

    .line 358
    .line 359
    move-object/from16 v25, v5

    .line 360
    .line 361
    invoke-direct/range {v15 .. v25}, Lcom/google/android/gms/internal/ads/c2;-><init>(IZIIIIIIILandroid/util/SparseArray;)V

    .line 362
    .line 363
    .line 364
    iget v2, v4, LV/b;->c:I

    .line 365
    .line 366
    iget-object v4, v6, Ls1/g;->c:Ljava/lang/Cloneable;

    .line 367
    .line 368
    if-nez v2, :cond_7

    .line 369
    .line 370
    move-object v2, v4

    .line 371
    check-cast v2, Landroid/util/SparseArray;

    .line 372
    .line 373
    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    check-cast v2, Lcom/google/android/gms/internal/ads/c2;

    .line 378
    .line 379
    if-eqz v2, :cond_7

    .line 380
    .line 381
    const/4 v7, 0x0

    .line 382
    :goto_5
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/c2;->j:Landroid/util/SparseArray;

    .line 383
    .line 384
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 385
    .line 386
    .line 387
    move-result v6

    .line 388
    if-ge v7, v6, :cond_7

    .line 389
    .line 390
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->keyAt(I)I

    .line 391
    .line 392
    .line 393
    move-result v6

    .line 394
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v5

    .line 398
    check-cast v5, Lcom/google/android/gms/internal/ads/d2;

    .line 399
    .line 400
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/c2;->j:Landroid/util/SparseArray;

    .line 401
    .line 402
    invoke-virtual {v8, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    add-int/lit8 v7, v7, 0x1

    .line 406
    .line 407
    goto :goto_5

    .line 408
    :cond_7
    check-cast v4, Landroid/util/SparseArray;

    .line 409
    .line 410
    iget v2, v1, Lcom/google/android/gms/internal/ads/c2;->a:I

    .line 411
    .line 412
    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    goto :goto_7

    .line 416
    :pswitch_4
    iget v2, v6, Ls1/g;->a:I

    .line 417
    .line 418
    if-ne v10, v2, :cond_a

    .line 419
    .line 420
    iget-object v2, v6, Ls1/g;->i:Ljava/lang/Object;

    .line 421
    .line 422
    check-cast v2, LV/b;

    .line 423
    .line 424
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 425
    .line 426
    .line 427
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 428
    .line 429
    .line 430
    move-result v4

    .line 431
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 432
    .line 433
    .line 434
    move-result v5

    .line 435
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 436
    .line 437
    .line 438
    add-int/lit8 v11, v11, -0x2

    .line 439
    .line 440
    new-instance v7, Landroid/util/SparseArray;

    .line 441
    .line 442
    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 443
    .line 444
    .line 445
    :goto_6
    if-lez v11, :cond_8

    .line 446
    .line 447
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 448
    .line 449
    .line 450
    move-result v8

    .line 451
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 452
    .line 453
    .line 454
    const/16 v9, 0x10

    .line 455
    .line 456
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 457
    .line 458
    .line 459
    move-result v10

    .line 460
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 461
    .line 462
    .line 463
    move-result v13

    .line 464
    new-instance v14, Lcom/google/android/gms/internal/ads/b2;

    .line 465
    .line 466
    invoke-direct {v14, v10, v13}, Lcom/google/android/gms/internal/ads/b2;-><init>(II)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v7, v8, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    add-int/lit8 v11, v11, -0x6

    .line 473
    .line 474
    goto :goto_6

    .line 475
    :cond_8
    new-instance v1, LV/b;

    .line 476
    .line 477
    invoke-direct {v1, v4, v5, v7}, LV/b;-><init>(IILandroid/util/SparseArray;)V

    .line 478
    .line 479
    .line 480
    iget v4, v1, LV/b;->c:I

    .line 481
    .line 482
    if-eqz v4, :cond_9

    .line 483
    .line 484
    iput-object v1, v6, Ls1/g;->i:Ljava/lang/Object;

    .line 485
    .line 486
    iget-object v1, v6, Ls1/g;->c:Ljava/lang/Cloneable;

    .line 487
    .line 488
    check-cast v1, Landroid/util/SparseArray;

    .line 489
    .line 490
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 491
    .line 492
    .line 493
    iget-object v1, v6, Ls1/g;->d:Ljava/lang/Cloneable;

    .line 494
    .line 495
    check-cast v1, Landroid/util/SparseArray;

    .line 496
    .line 497
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 498
    .line 499
    .line 500
    iget-object v1, v6, Ls1/g;->e:Ljava/lang/Cloneable;

    .line 501
    .line 502
    check-cast v1, Landroid/util/SparseArray;

    .line 503
    .line 504
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 505
    .line 506
    .line 507
    goto :goto_7

    .line 508
    :cond_9
    if-eqz v2, :cond_a

    .line 509
    .line 510
    iget v4, v1, LV/b;->b:I

    .line 511
    .line 512
    iget v2, v2, LV/b;->b:I

    .line 513
    .line 514
    if-eq v2, v4, :cond_a

    .line 515
    .line 516
    iput-object v1, v6, Ls1/g;->i:Ljava/lang/Object;

    .line 517
    .line 518
    :cond_a
    :goto_7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f0;->c()I

    .line 519
    .line 520
    .line 521
    move-result v1

    .line 522
    sub-int/2addr v12, v1

    .line 523
    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/ads/f0;->w(I)V

    .line 524
    .line 525
    .line 526
    goto/16 :goto_0

    .line 527
    .line 528
    :cond_b
    iget-object v1, v6, Ls1/g;->i:Ljava/lang/Object;

    .line 529
    .line 530
    check-cast v1, LV/b;

    .line 531
    .line 532
    if-nez v1, :cond_c

    .line 533
    .line 534
    new-instance v1, Lcom/google/android/gms/internal/ads/S1;

    .line 535
    .line 536
    sget-object v2, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 537
    .line 538
    sget-object v10, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 539
    .line 540
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    move-object v9, v1

    .line 546
    move-wide v11, v13

    .line 547
    invoke-direct/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/S1;-><init>(Ljava/util/List;JJ)V

    .line 548
    .line 549
    .line 550
    :goto_8
    move-object/from16 v2, p4

    .line 551
    .line 552
    goto/16 :goto_13

    .line 553
    .line 554
    :cond_c
    iget-object v3, v6, Ls1/g;->h:Ljava/lang/Object;

    .line 555
    .line 556
    check-cast v3, Ls1/b;

    .line 557
    .line 558
    if-nez v3, :cond_d

    .line 559
    .line 560
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/e2;->J:Ls1/b;

    .line 561
    .line 562
    :cond_d
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/e2;->M:Landroid/graphics/Bitmap;

    .line 563
    .line 564
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/e2;->I:Landroid/graphics/Canvas;

    .line 565
    .line 566
    if-eqz v4, :cond_e

    .line 567
    .line 568
    iget v9, v3, Ls1/b;->a:I

    .line 569
    .line 570
    add-int/2addr v9, v2

    .line 571
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 572
    .line 573
    .line 574
    move-result v4

    .line 575
    if-ne v9, v4, :cond_e

    .line 576
    .line 577
    iget v4, v3, Ls1/b;->b:I

    .line 578
    .line 579
    add-int/2addr v4, v2

    .line 580
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/e2;->M:Landroid/graphics/Bitmap;

    .line 581
    .line 582
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    .line 583
    .line 584
    .line 585
    move-result v9

    .line 586
    if-eq v4, v9, :cond_f

    .line 587
    .line 588
    :cond_e
    iget v4, v3, Ls1/b;->a:I

    .line 589
    .line 590
    add-int/2addr v4, v2

    .line 591
    iget v9, v3, Ls1/b;->b:I

    .line 592
    .line 593
    add-int/2addr v9, v2

    .line 594
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 595
    .line 596
    invoke-static {v4, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 597
    .line 598
    .line 599
    move-result-object v4

    .line 600
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/e2;->M:Landroid/graphics/Bitmap;

    .line 601
    .line 602
    invoke-virtual {v7, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 603
    .line 604
    .line 605
    :cond_f
    new-instance v4, Ljava/util/ArrayList;

    .line 606
    .line 607
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .line 609
    .line 610
    iget-object v1, v1, LV/b;->d:Ljava/lang/Object;

    .line 611
    .line 612
    check-cast v1, Landroid/util/SparseArray;

    .line 613
    .line 614
    const/4 v15, 0x0

    .line 615
    :goto_9
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 616
    .line 617
    .line 618
    move-result v9

    .line 619
    if-ge v15, v9, :cond_1a

    .line 620
    .line 621
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 622
    .line 623
    .line 624
    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v9

    .line 628
    check-cast v9, Lcom/google/android/gms/internal/ads/b2;

    .line 629
    .line 630
    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->keyAt(I)I

    .line 631
    .line 632
    .line 633
    move-result v10

    .line 634
    iget-object v11, v6, Ls1/g;->c:Ljava/lang/Cloneable;

    .line 635
    .line 636
    check-cast v11, Landroid/util/SparseArray;

    .line 637
    .line 638
    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object v10

    .line 642
    move-object v14, v10

    .line 643
    check-cast v14, Lcom/google/android/gms/internal/ads/c2;

    .line 644
    .line 645
    iget v10, v9, Lcom/google/android/gms/internal/ads/b2;->a:I

    .line 646
    .line 647
    iget v11, v3, Ls1/b;->c:I

    .line 648
    .line 649
    add-int v13, v10, v11

    .line 650
    .line 651
    iget v9, v9, Lcom/google/android/gms/internal/ads/b2;->b:I

    .line 652
    .line 653
    iget v10, v3, Ls1/b;->e:I

    .line 654
    .line 655
    add-int v12, v9, v10

    .line 656
    .line 657
    iget v9, v14, Lcom/google/android/gms/internal/ads/c2;->c:I

    .line 658
    .line 659
    add-int/2addr v9, v13

    .line 660
    iget v10, v3, Ls1/b;->d:I

    .line 661
    .line 662
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 663
    .line 664
    .line 665
    move-result v9

    .line 666
    iget v11, v14, Lcom/google/android/gms/internal/ads/c2;->d:I

    .line 667
    .line 668
    add-int v10, v12, v11

    .line 669
    .line 670
    iget v2, v3, Ls1/b;->f:I

    .line 671
    .line 672
    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    .line 673
    .line 674
    .line 675
    move-result v2

    .line 676
    invoke-virtual {v7, v13, v12, v9, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 677
    .line 678
    .line 679
    iget-object v2, v6, Ls1/g;->d:Ljava/lang/Cloneable;

    .line 680
    .line 681
    check-cast v2, Landroid/util/SparseArray;

    .line 682
    .line 683
    iget v9, v14, Lcom/google/android/gms/internal/ads/c2;->f:I

    .line 684
    .line 685
    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v2

    .line 689
    check-cast v2, Lcom/google/android/gms/internal/ads/Z1;

    .line 690
    .line 691
    if-nez v2, :cond_10

    .line 692
    .line 693
    iget-object v2, v6, Ls1/g;->f:Ljava/lang/Object;

    .line 694
    .line 695
    check-cast v2, Landroid/util/SparseArray;

    .line 696
    .line 697
    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v2

    .line 701
    check-cast v2, Lcom/google/android/gms/internal/ads/Z1;

    .line 702
    .line 703
    if-nez v2, :cond_10

    .line 704
    .line 705
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/e2;->K:Lcom/google/android/gms/internal/ads/Z1;

    .line 706
    .line 707
    :cond_10
    const/4 v9, 0x0

    .line 708
    :goto_a
    iget-object v8, v14, Lcom/google/android/gms/internal/ads/c2;->j:Landroid/util/SparseArray;

    .line 709
    .line 710
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 711
    .line 712
    .line 713
    move-result v5

    .line 714
    if-ge v9, v5, :cond_16

    .line 715
    .line 716
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->keyAt(I)I

    .line 717
    .line 718
    .line 719
    move-result v5

    .line 720
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    move-result-object v8

    .line 724
    check-cast v8, Lcom/google/android/gms/internal/ads/d2;

    .line 725
    .line 726
    move-object/from16 v17, v1

    .line 727
    .line 728
    iget-object v1, v6, Ls1/g;->e:Ljava/lang/Cloneable;

    .line 729
    .line 730
    check-cast v1, Landroid/util/SparseArray;

    .line 731
    .line 732
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    move-result-object v1

    .line 736
    check-cast v1, Lcom/google/android/gms/internal/ads/a2;

    .line 737
    .line 738
    if-nez v1, :cond_11

    .line 739
    .line 740
    iget-object v1, v6, Ls1/g;->g:Ljava/lang/Object;

    .line 741
    .line 742
    check-cast v1, Landroid/util/SparseArray;

    .line 743
    .line 744
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v1

    .line 748
    check-cast v1, Lcom/google/android/gms/internal/ads/a2;

    .line 749
    .line 750
    :cond_11
    if-eqz v1, :cond_15

    .line 751
    .line 752
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/a2;->b:Z

    .line 753
    .line 754
    if-eqz v5, :cond_12

    .line 755
    .line 756
    const/4 v5, 0x0

    .line 757
    :goto_b
    move-object/from16 v18, v6

    .line 758
    .line 759
    goto :goto_c

    .line 760
    :cond_12
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/e2;->G:Landroid/graphics/Paint;

    .line 761
    .line 762
    goto :goto_b

    .line 763
    :goto_c
    iget v6, v8, Lcom/google/android/gms/internal/ads/d2;->a:I

    .line 764
    .line 765
    add-int/2addr v6, v13

    .line 766
    iget v8, v8, Lcom/google/android/gms/internal/ads/d2;->b:I

    .line 767
    .line 768
    add-int/2addr v8, v12

    .line 769
    move-object/from16 v19, v4

    .line 770
    .line 771
    iget v4, v14, Lcom/google/android/gms/internal/ads/c2;->e:I

    .line 772
    .line 773
    move/from16 v20, v9

    .line 774
    .line 775
    const/4 v9, 0x3

    .line 776
    if-ne v4, v9, :cond_13

    .line 777
    .line 778
    iget-object v9, v2, Lcom/google/android/gms/internal/ads/Z1;->d:[I

    .line 779
    .line 780
    :goto_d
    move-object/from16 v21, v9

    .line 781
    .line 782
    goto :goto_e

    .line 783
    :cond_13
    const/4 v9, 0x2

    .line 784
    if-ne v4, v9, :cond_14

    .line 785
    .line 786
    iget-object v9, v2, Lcom/google/android/gms/internal/ads/Z1;->c:[I

    .line 787
    .line 788
    goto :goto_d

    .line 789
    :cond_14
    iget-object v9, v2, Lcom/google/android/gms/internal/ads/Z1;->b:[I

    .line 790
    .line 791
    goto :goto_d

    .line 792
    :goto_e
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/a2;->c:[B

    .line 793
    .line 794
    move-object/from16 v22, v3

    .line 795
    .line 796
    move v3, v10

    .line 797
    move-object/from16 v10, v21

    .line 798
    .line 799
    move/from16 v26, v11

    .line 800
    .line 801
    move v11, v4

    .line 802
    move/from16 v23, v3

    .line 803
    .line 804
    move v3, v12

    .line 805
    move v12, v6

    .line 806
    move v0, v13

    .line 807
    move v13, v8

    .line 808
    move-object/from16 v24, v2

    .line 809
    .line 810
    move-object v2, v14

    .line 811
    move-object v14, v5

    .line 812
    move/from16 v25, v15

    .line 813
    .line 814
    move-object v15, v7

    .line 815
    invoke-static/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/e2;->e([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 816
    .line 817
    .line 818
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/a2;->d:[B

    .line 819
    .line 820
    const/4 v1, 0x1

    .line 821
    add-int/lit8 v13, v8, 0x1

    .line 822
    .line 823
    invoke-static/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/e2;->e([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 824
    .line 825
    .line 826
    goto :goto_f

    .line 827
    :cond_15
    move-object/from16 v24, v2

    .line 828
    .line 829
    move-object/from16 v22, v3

    .line 830
    .line 831
    move-object/from16 v19, v4

    .line 832
    .line 833
    move-object/from16 v18, v6

    .line 834
    .line 835
    move/from16 v20, v9

    .line 836
    .line 837
    move/from16 v23, v10

    .line 838
    .line 839
    move/from16 v26, v11

    .line 840
    .line 841
    move v3, v12

    .line 842
    move v0, v13

    .line 843
    move-object v2, v14

    .line 844
    move/from16 v25, v15

    .line 845
    .line 846
    const/4 v1, 0x1

    .line 847
    :goto_f
    add-int/lit8 v9, v20, 0x1

    .line 848
    .line 849
    move v13, v0

    .line 850
    move-object v14, v2

    .line 851
    move v12, v3

    .line 852
    move-object/from16 v1, v17

    .line 853
    .line 854
    move-object/from16 v6, v18

    .line 855
    .line 856
    move-object/from16 v4, v19

    .line 857
    .line 858
    move-object/from16 v3, v22

    .line 859
    .line 860
    move/from16 v10, v23

    .line 861
    .line 862
    move-object/from16 v2, v24

    .line 863
    .line 864
    move/from16 v15, v25

    .line 865
    .line 866
    move/from16 v11, v26

    .line 867
    .line 868
    const/4 v5, 0x3

    .line 869
    move-object/from16 v0, p0

    .line 870
    .line 871
    goto/16 :goto_a

    .line 872
    .line 873
    :cond_16
    move-object/from16 v17, v1

    .line 874
    .line 875
    move-object/from16 v24, v2

    .line 876
    .line 877
    move-object/from16 v22, v3

    .line 878
    .line 879
    move-object/from16 v19, v4

    .line 880
    .line 881
    move-object/from16 v18, v6

    .line 882
    .line 883
    move/from16 v23, v10

    .line 884
    .line 885
    move/from16 v26, v11

    .line 886
    .line 887
    move v3, v12

    .line 888
    move v0, v13

    .line 889
    move-object v2, v14

    .line 890
    move/from16 v25, v15

    .line 891
    .line 892
    const/4 v1, 0x1

    .line 893
    int-to-float v4, v3

    .line 894
    int-to-float v5, v0

    .line 895
    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/c2;->b:Z

    .line 896
    .line 897
    iget v8, v2, Lcom/google/android/gms/internal/ads/c2;->c:I

    .line 898
    .line 899
    if-eqz v6, :cond_19

    .line 900
    .line 901
    iget v6, v2, Lcom/google/android/gms/internal/ads/c2;->e:I

    .line 902
    .line 903
    const/4 v15, 0x3

    .line 904
    if-ne v6, v15, :cond_17

    .line 905
    .line 906
    move-object/from16 v9, v24

    .line 907
    .line 908
    iget-object v6, v9, Lcom/google/android/gms/internal/ads/Z1;->d:[I

    .line 909
    .line 910
    iget v2, v2, Lcom/google/android/gms/internal/ads/c2;->g:I

    .line 911
    .line 912
    aget v2, v6, v2

    .line 913
    .line 914
    const/4 v14, 0x2

    .line 915
    :goto_10
    move v6, v0

    .line 916
    move-object/from16 v0, p0

    .line 917
    .line 918
    goto :goto_11

    .line 919
    :cond_17
    move-object/from16 v9, v24

    .line 920
    .line 921
    const/4 v14, 0x2

    .line 922
    if-ne v6, v14, :cond_18

    .line 923
    .line 924
    iget-object v6, v9, Lcom/google/android/gms/internal/ads/Z1;->c:[I

    .line 925
    .line 926
    iget v2, v2, Lcom/google/android/gms/internal/ads/c2;->h:I

    .line 927
    .line 928
    aget v2, v6, v2

    .line 929
    .line 930
    goto :goto_10

    .line 931
    :cond_18
    iget-object v6, v9, Lcom/google/android/gms/internal/ads/Z1;->b:[I

    .line 932
    .line 933
    iget v2, v2, Lcom/google/android/gms/internal/ads/c2;->i:I

    .line 934
    .line 935
    aget v2, v6, v2

    .line 936
    .line 937
    goto :goto_10

    .line 938
    :goto_11
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/e2;->H:Landroid/graphics/Paint;

    .line 939
    .line 940
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 941
    .line 942
    .line 943
    add-int v2, v6, v8

    .line 944
    .line 945
    int-to-float v12, v2

    .line 946
    move/from16 v2, v23

    .line 947
    .line 948
    int-to-float v2, v2

    .line 949
    move-object v9, v7

    .line 950
    move v10, v5

    .line 951
    move v11, v4

    .line 952
    move-object/from16 v16, v13

    .line 953
    .line 954
    move v13, v2

    .line 955
    const/4 v2, 0x2

    .line 956
    move-object/from16 v14, v16

    .line 957
    .line 958
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 959
    .line 960
    .line 961
    goto :goto_12

    .line 962
    :cond_19
    move v6, v0

    .line 963
    const/4 v2, 0x2

    .line 964
    const/4 v15, 0x3

    .line 965
    move-object/from16 v0, p0

    .line 966
    .line 967
    :goto_12
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/e2;->M:Landroid/graphics/Bitmap;

    .line 968
    .line 969
    move/from16 v10, v26

    .line 970
    .line 971
    invoke-static {v9, v6, v3, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 972
    .line 973
    .line 974
    move-result-object v30

    .line 975
    move-object/from16 v3, v22

    .line 976
    .line 977
    iget v6, v3, Ls1/b;->a:I

    .line 978
    .line 979
    int-to-float v6, v6

    .line 980
    div-float v34, v5, v6

    .line 981
    .line 982
    iget v5, v3, Ls1/b;->b:I

    .line 983
    .line 984
    int-to-float v5, v5

    .line 985
    div-float v31, v4, v5

    .line 986
    .line 987
    int-to-float v4, v8

    .line 988
    div-float v38, v4, v6

    .line 989
    .line 990
    int-to-float v4, v10

    .line 991
    div-float v39, v4, v5

    .line 992
    .line 993
    new-instance v4, Lcom/google/android/gms/internal/ads/ak;

    .line 994
    .line 995
    const v37, -0x800001

    .line 996
    .line 997
    .line 998
    const/16 v41, 0x0

    .line 999
    .line 1000
    const/16 v29, 0x0

    .line 1001
    .line 1002
    const/16 v32, 0x0

    .line 1003
    .line 1004
    const/16 v33, 0x0

    .line 1005
    .line 1006
    const/16 v35, 0x0

    .line 1007
    .line 1008
    const/high16 v40, -0x80000000

    .line 1009
    .line 1010
    move-object/from16 v26, v4

    .line 1011
    .line 1012
    move-object/from16 v27, v29

    .line 1013
    .line 1014
    move-object/from16 v28, v29

    .line 1015
    .line 1016
    move/from16 v36, v40

    .line 1017
    .line 1018
    invoke-direct/range {v26 .. v41}, Lcom/google/android/gms/internal/ads/ak;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFIF)V

    .line 1019
    .line 1020
    .line 1021
    move-object/from16 v5, v19

    .line 1022
    .line 1023
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    .line 1025
    .line 1026
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 1027
    .line 1028
    const/4 v6, 0x0

    .line 1029
    invoke-virtual {v7, v6, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 1033
    .line 1034
    .line 1035
    add-int/lit8 v4, v25, 0x1

    .line 1036
    .line 1037
    move v15, v4

    .line 1038
    move-object v4, v5

    .line 1039
    move-object/from16 v1, v17

    .line 1040
    .line 1041
    move-object/from16 v6, v18

    .line 1042
    .line 1043
    const/4 v2, 0x1

    .line 1044
    const/4 v5, 0x3

    .line 1045
    const/4 v8, 0x2

    .line 1046
    goto/16 :goto_9

    .line 1047
    .line 1048
    :cond_1a
    move-object v5, v4

    .line 1049
    new-instance v1, Lcom/google/android/gms/internal/ads/S1;

    .line 1050
    .line 1051
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    move-object v9, v1

    .line 1057
    move-object v10, v5

    .line 1058
    move-wide v11, v13

    .line 1059
    invoke-direct/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/S1;-><init>(Ljava/util/List;JJ)V

    .line 1060
    .line 1061
    .line 1062
    goto/16 :goto_8

    .line 1063
    .line 1064
    :goto_13
    invoke-virtual {v2, v1}, Lt0/d;->zza(Ljava/lang/Object;)V

    .line 1065
    .line 1066
    .line 1067
    return-void

    .line 1068
    nop

    .line 1069
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
