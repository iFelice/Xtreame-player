.class public final Ls1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/m;


# static fields
.field public static final N:[B

.field public static final O:[B

.field public static final P:[B


# instance fields
.field public final G:Landroid/graphics/Paint;

.field public final H:Landroid/graphics/Paint;

.field public final I:Landroid/graphics/Canvas;

.field public final J:Ls1/b;

.field public final K:Ls1/a;

.field public final L:Ls1/g;

.field public M:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Ls1/h;->N:[B

    .line 8
    .line 9
    new-array v0, v0, [B

    .line 10
    .line 11
    fill-array-data v0, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v0, Ls1/h;->O:[B

    .line 15
    .line 16
    const/16 v0, 0x10

    .line 17
    .line 18
    new-array v0, v0, [B

    .line 19
    .line 20
    fill-array-data v0, :array_2

    .line 21
    .line 22
    .line 23
    sput-object v0, Ls1/h;->P:[B

    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :array_0
    .array-data 1
        0x0t
        0x7t
        0x8t
        0xft
    .end array-data

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    :array_1
    .array-data 1
        0x0t
        0x77t
        -0x78t
        -0x1t
    .end array-data

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
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
    new-instance v0, Lp0/E;

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
    invoke-direct {v0, p1}, Lp0/E;-><init>([B)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lp0/E;->F()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {v0}, Lp0/E;->F()I

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
    iput-object v2, p0, Ls1/h;->G:Landroid/graphics/Paint;

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
    iput-object v2, p0, Ls1/h;->H:Landroid/graphics/Paint;

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
    iput-object v2, p0, Ls1/h;->I:Landroid/graphics/Canvas;

    .line 81
    .line 82
    new-instance v2, Ls1/b;

    .line 83
    .line 84
    const/4 v6, 0x0

    .line 85
    const/16 v7, 0x2cf

    .line 86
    .line 87
    const/16 v4, 0x2cf

    .line 88
    .line 89
    const/16 v5, 0x23f

    .line 90
    .line 91
    const/4 v8, 0x0

    .line 92
    const/16 v9, 0x23f

    .line 93
    .line 94
    move-object v3, v2

    .line 95
    invoke-direct/range {v3 .. v9}, Ls1/b;-><init>(IIIIII)V

    .line 96
    .line 97
    .line 98
    iput-object v2, p0, Ls1/h;->J:Ls1/b;

    .line 99
    .line 100
    new-instance v2, Ls1/a;

    .line 101
    .line 102
    const v3, -0x808081

    .line 103
    .line 104
    .line 105
    const/4 v4, -0x1

    .line 106
    const/high16 v5, -0x1000000

    .line 107
    .line 108
    filled-new-array {v1, v4, v5, v3}, [I

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-static {}, Ls1/h;->e()[I

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-static {}, Ls1/h;->f()[I

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-direct {v2, v1, v3, v4, v5}, Ls1/a;-><init>(I[I[I[I)V

    .line 121
    .line 122
    .line 123
    iput-object v2, p0, Ls1/h;->K:Ls1/a;

    .line 124
    .line 125
    new-instance v2, Ls1/g;

    .line 126
    .line 127
    invoke-direct {v2, p1, v0, v1}, Ls1/g;-><init>(III)V

    .line 128
    .line 129
    .line 130
    iput-object v2, p0, Ls1/h;->L:Ls1/g;

    .line 131
    .line 132
    return-void
.end method

.method public static d(IILp0/D;)[B
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
    invoke-virtual {p2, p1}, Lp0/D;->i(I)I

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

.method public static e()[I
    .locals 9

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
    :goto_0
    if-ge v3, v0, :cond_7

    .line 10
    .line 11
    const/16 v4, 0x8

    .line 12
    .line 13
    const/16 v5, 0xff

    .line 14
    .line 15
    if-ge v3, v4, :cond_3

    .line 16
    .line 17
    and-int/lit8 v4, v3, 0x1

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    const/16 v4, 0xff

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 v4, 0x0

    .line 25
    :goto_1
    and-int/lit8 v6, v3, 0x2

    .line 26
    .line 27
    if-eqz v6, :cond_1

    .line 28
    .line 29
    const/16 v6, 0xff

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    const/4 v6, 0x0

    .line 33
    :goto_2
    and-int/lit8 v7, v3, 0x4

    .line 34
    .line 35
    if-eqz v7, :cond_2

    .line 36
    .line 37
    const/16 v7, 0xff

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_2
    const/4 v7, 0x0

    .line 41
    :goto_3
    invoke-static {v5, v4, v6, v7}, Ls1/h;->h(IIII)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    aput v4, v1, v3

    .line 46
    .line 47
    goto :goto_7

    .line 48
    :cond_3
    and-int/lit8 v4, v3, 0x1

    .line 49
    .line 50
    const/16 v6, 0x7f

    .line 51
    .line 52
    if-eqz v4, :cond_4

    .line 53
    .line 54
    const/16 v4, 0x7f

    .line 55
    .line 56
    goto :goto_4

    .line 57
    :cond_4
    const/4 v4, 0x0

    .line 58
    :goto_4
    and-int/lit8 v7, v3, 0x2

    .line 59
    .line 60
    if-eqz v7, :cond_5

    .line 61
    .line 62
    const/16 v7, 0x7f

    .line 63
    .line 64
    goto :goto_5

    .line 65
    :cond_5
    const/4 v7, 0x0

    .line 66
    :goto_5
    and-int/lit8 v8, v3, 0x4

    .line 67
    .line 68
    if-eqz v8, :cond_6

    .line 69
    .line 70
    goto :goto_6

    .line 71
    :cond_6
    const/4 v6, 0x0

    .line 72
    :goto_6
    invoke-static {v5, v4, v7, v6}, Ls1/h;->h(IIII)I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    aput v4, v1, v3

    .line 77
    .line 78
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_7
    return-object v1
.end method

.method public static f()[I
    .locals 11

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
    if-ge v3, v4, :cond_3

    .line 16
    .line 17
    and-int/lit8 v4, v3, 0x1

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    const/16 v4, 0xff

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 v4, 0x0

    .line 25
    :goto_1
    and-int/lit8 v6, v3, 0x2

    .line 26
    .line 27
    if-eqz v6, :cond_1

    .line 28
    .line 29
    const/16 v6, 0xff

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    const/4 v6, 0x0

    .line 33
    :goto_2
    and-int/lit8 v7, v3, 0x4

    .line 34
    .line 35
    if-eqz v7, :cond_2

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_2
    const/4 v5, 0x0

    .line 39
    :goto_3
    const/16 v7, 0x3f

    .line 40
    .line 41
    invoke-static {v7, v4, v6, v5}, Ls1/h;->h(IIII)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    aput v4, v1, v3

    .line 46
    .line 47
    goto/16 :goto_1c

    .line 48
    .line 49
    :cond_3
    and-int/lit16 v6, v3, 0x88

    .line 50
    .line 51
    const/16 v7, 0xaa

    .line 52
    .line 53
    const/16 v8, 0x55

    .line 54
    .line 55
    if-eqz v6, :cond_19

    .line 56
    .line 57
    const/16 v9, 0x7f

    .line 58
    .line 59
    if-eq v6, v4, :cond_12

    .line 60
    .line 61
    const/16 v4, 0x80

    .line 62
    .line 63
    const/16 v7, 0x2b

    .line 64
    .line 65
    if-eq v6, v4, :cond_b

    .line 66
    .line 67
    const/16 v4, 0x88

    .line 68
    .line 69
    if-eq v6, v4, :cond_4

    .line 70
    .line 71
    goto/16 :goto_1c

    .line 72
    .line 73
    :cond_4
    and-int/lit8 v4, v3, 0x1

    .line 74
    .line 75
    if-eqz v4, :cond_5

    .line 76
    .line 77
    const/16 v4, 0x2b

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_5
    const/4 v4, 0x0

    .line 81
    :goto_4
    and-int/lit8 v6, v3, 0x10

    .line 82
    .line 83
    if-eqz v6, :cond_6

    .line 84
    .line 85
    const/16 v6, 0x55

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_6
    const/4 v6, 0x0

    .line 89
    :goto_5
    add-int/2addr v4, v6

    .line 90
    and-int/lit8 v6, v3, 0x2

    .line 91
    .line 92
    if-eqz v6, :cond_7

    .line 93
    .line 94
    const/16 v6, 0x2b

    .line 95
    .line 96
    goto :goto_6

    .line 97
    :cond_7
    const/4 v6, 0x0

    .line 98
    :goto_6
    and-int/lit8 v9, v3, 0x20

    .line 99
    .line 100
    if-eqz v9, :cond_8

    .line 101
    .line 102
    const/16 v9, 0x55

    .line 103
    .line 104
    goto :goto_7

    .line 105
    :cond_8
    const/4 v9, 0x0

    .line 106
    :goto_7
    add-int/2addr v6, v9

    .line 107
    and-int/lit8 v9, v3, 0x4

    .line 108
    .line 109
    if-eqz v9, :cond_9

    .line 110
    .line 111
    goto :goto_8

    .line 112
    :cond_9
    const/4 v7, 0x0

    .line 113
    :goto_8
    and-int/lit8 v9, v3, 0x40

    .line 114
    .line 115
    if-eqz v9, :cond_a

    .line 116
    .line 117
    goto :goto_9

    .line 118
    :cond_a
    const/4 v8, 0x0

    .line 119
    :goto_9
    add-int/2addr v7, v8

    .line 120
    invoke-static {v5, v4, v6, v7}, Ls1/h;->h(IIII)I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    aput v4, v1, v3

    .line 125
    .line 126
    goto/16 :goto_1c

    .line 127
    .line 128
    :cond_b
    and-int/lit8 v4, v3, 0x1

    .line 129
    .line 130
    if-eqz v4, :cond_c

    .line 131
    .line 132
    const/16 v4, 0x2b

    .line 133
    .line 134
    goto :goto_a

    .line 135
    :cond_c
    const/4 v4, 0x0

    .line 136
    :goto_a
    add-int/2addr v4, v9

    .line 137
    and-int/lit8 v6, v3, 0x10

    .line 138
    .line 139
    if-eqz v6, :cond_d

    .line 140
    .line 141
    const/16 v6, 0x55

    .line 142
    .line 143
    goto :goto_b

    .line 144
    :cond_d
    const/4 v6, 0x0

    .line 145
    :goto_b
    add-int/2addr v4, v6

    .line 146
    and-int/lit8 v6, v3, 0x2

    .line 147
    .line 148
    if-eqz v6, :cond_e

    .line 149
    .line 150
    const/16 v6, 0x2b

    .line 151
    .line 152
    goto :goto_c

    .line 153
    :cond_e
    const/4 v6, 0x0

    .line 154
    :goto_c
    add-int/2addr v6, v9

    .line 155
    and-int/lit8 v10, v3, 0x20

    .line 156
    .line 157
    if-eqz v10, :cond_f

    .line 158
    .line 159
    const/16 v10, 0x55

    .line 160
    .line 161
    goto :goto_d

    .line 162
    :cond_f
    const/4 v10, 0x0

    .line 163
    :goto_d
    add-int/2addr v6, v10

    .line 164
    and-int/lit8 v10, v3, 0x4

    .line 165
    .line 166
    if-eqz v10, :cond_10

    .line 167
    .line 168
    goto :goto_e

    .line 169
    :cond_10
    const/4 v7, 0x0

    .line 170
    :goto_e
    add-int/2addr v7, v9

    .line 171
    and-int/lit8 v9, v3, 0x40

    .line 172
    .line 173
    if-eqz v9, :cond_11

    .line 174
    .line 175
    goto :goto_f

    .line 176
    :cond_11
    const/4 v8, 0x0

    .line 177
    :goto_f
    add-int/2addr v7, v8

    .line 178
    invoke-static {v5, v4, v6, v7}, Ls1/h;->h(IIII)I

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    aput v4, v1, v3

    .line 183
    .line 184
    goto/16 :goto_1c

    .line 185
    .line 186
    :cond_12
    and-int/lit8 v4, v3, 0x1

    .line 187
    .line 188
    if-eqz v4, :cond_13

    .line 189
    .line 190
    const/16 v4, 0x55

    .line 191
    .line 192
    goto :goto_10

    .line 193
    :cond_13
    const/4 v4, 0x0

    .line 194
    :goto_10
    and-int/lit8 v5, v3, 0x10

    .line 195
    .line 196
    if-eqz v5, :cond_14

    .line 197
    .line 198
    const/16 v5, 0xaa

    .line 199
    .line 200
    goto :goto_11

    .line 201
    :cond_14
    const/4 v5, 0x0

    .line 202
    :goto_11
    add-int/2addr v4, v5

    .line 203
    and-int/lit8 v5, v3, 0x2

    .line 204
    .line 205
    if-eqz v5, :cond_15

    .line 206
    .line 207
    const/16 v5, 0x55

    .line 208
    .line 209
    goto :goto_12

    .line 210
    :cond_15
    const/4 v5, 0x0

    .line 211
    :goto_12
    and-int/lit8 v6, v3, 0x20

    .line 212
    .line 213
    if-eqz v6, :cond_16

    .line 214
    .line 215
    const/16 v6, 0xaa

    .line 216
    .line 217
    goto :goto_13

    .line 218
    :cond_16
    const/4 v6, 0x0

    .line 219
    :goto_13
    add-int/2addr v5, v6

    .line 220
    and-int/lit8 v6, v3, 0x4

    .line 221
    .line 222
    if-eqz v6, :cond_17

    .line 223
    .line 224
    goto :goto_14

    .line 225
    :cond_17
    const/4 v8, 0x0

    .line 226
    :goto_14
    and-int/lit8 v6, v3, 0x40

    .line 227
    .line 228
    if-eqz v6, :cond_18

    .line 229
    .line 230
    goto :goto_15

    .line 231
    :cond_18
    const/4 v7, 0x0

    .line 232
    :goto_15
    add-int/2addr v8, v7

    .line 233
    invoke-static {v9, v4, v5, v8}, Ls1/h;->h(IIII)I

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    aput v4, v1, v3

    .line 238
    .line 239
    goto :goto_1c

    .line 240
    :cond_19
    and-int/lit8 v4, v3, 0x1

    .line 241
    .line 242
    if-eqz v4, :cond_1a

    .line 243
    .line 244
    const/16 v4, 0x55

    .line 245
    .line 246
    goto :goto_16

    .line 247
    :cond_1a
    const/4 v4, 0x0

    .line 248
    :goto_16
    and-int/lit8 v6, v3, 0x10

    .line 249
    .line 250
    if-eqz v6, :cond_1b

    .line 251
    .line 252
    const/16 v6, 0xaa

    .line 253
    .line 254
    goto :goto_17

    .line 255
    :cond_1b
    const/4 v6, 0x0

    .line 256
    :goto_17
    add-int/2addr v4, v6

    .line 257
    and-int/lit8 v6, v3, 0x2

    .line 258
    .line 259
    if-eqz v6, :cond_1c

    .line 260
    .line 261
    const/16 v6, 0x55

    .line 262
    .line 263
    goto :goto_18

    .line 264
    :cond_1c
    const/4 v6, 0x0

    .line 265
    :goto_18
    and-int/lit8 v9, v3, 0x20

    .line 266
    .line 267
    if-eqz v9, :cond_1d

    .line 268
    .line 269
    const/16 v9, 0xaa

    .line 270
    .line 271
    goto :goto_19

    .line 272
    :cond_1d
    const/4 v9, 0x0

    .line 273
    :goto_19
    add-int/2addr v6, v9

    .line 274
    and-int/lit8 v9, v3, 0x4

    .line 275
    .line 276
    if-eqz v9, :cond_1e

    .line 277
    .line 278
    goto :goto_1a

    .line 279
    :cond_1e
    const/4 v8, 0x0

    .line 280
    :goto_1a
    and-int/lit8 v9, v3, 0x40

    .line 281
    .line 282
    if-eqz v9, :cond_1f

    .line 283
    .line 284
    goto :goto_1b

    .line 285
    :cond_1f
    const/4 v7, 0x0

    .line 286
    :goto_1b
    add-int/2addr v8, v7

    .line 287
    invoke-static {v5, v4, v6, v8}, Ls1/h;->h(IIII)I

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    aput v4, v1, v3

    .line 292
    .line 293
    :goto_1c
    add-int/lit8 v3, v3, 0x1

    .line 294
    .line 295
    goto/16 :goto_0

    .line 296
    .line 297
    :cond_20
    return-object v1
.end method

.method public static h(IIII)I
    .locals 0

    .line 1
    shl-int/lit8 p0, p0, 0x18

    .line 2
    .line 3
    shl-int/lit8 p1, p1, 0x10

    .line 4
    .line 5
    or-int/2addr p0, p1

    .line 6
    shl-int/lit8 p1, p2, 0x8

    .line 7
    .line 8
    or-int/2addr p0, p1

    .line 9
    or-int/2addr p0, p3

    .line 10
    return p0
.end method

.method public static i([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 23

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v7, p5

    .line 4
    .line 5
    new-instance v8, Lp0/D;

    .line 6
    .line 7
    const/4 v9, 0x0

    .line 8
    const/4 v10, 0x0

    .line 9
    move-object/from16 v1, p0

    .line 10
    .line 11
    invoke-direct {v8, v1, v9, v10}, Lp0/D;-><init>([BILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    move/from16 v1, p3

    .line 15
    .line 16
    move/from16 v11, p4

    .line 17
    .line 18
    move-object v12, v10

    .line 19
    move-object v13, v12

    .line 20
    move-object v14, v13

    .line 21
    :goto_0
    invoke-virtual {v8}, Lp0/D;->b()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_21

    .line 26
    .line 27
    const/16 v15, 0x8

    .line 28
    .line 29
    invoke-virtual {v8, v15}, Lp0/D;->i(I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/16 v3, 0xf0

    .line 34
    .line 35
    if-eq v2, v3, :cond_20

    .line 36
    .line 37
    const/4 v6, 0x2

    .line 38
    const/4 v5, 0x1

    .line 39
    const/4 v4, 0x3

    .line 40
    const/4 v3, 0x4

    .line 41
    packed-switch v2, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    packed-switch v2, :pswitch_data_1

    .line 45
    .line 46
    .line 47
    goto/16 :goto_14

    .line 48
    .line 49
    :pswitch_0
    const/16 v2, 0x10

    .line 50
    .line 51
    invoke-static {v2, v15, v8}, Ls1/h;->d(IILp0/D;)[B

    .line 52
    .line 53
    .line 54
    move-result-object v13

    .line 55
    goto/16 :goto_14

    .line 56
    .line 57
    :pswitch_1
    invoke-static {v3, v15, v8}, Ls1/h;->d(IILp0/D;)[B

    .line 58
    .line 59
    .line 60
    move-result-object v12

    .line 61
    goto/16 :goto_14

    .line 62
    .line 63
    :pswitch_2
    invoke-static {v3, v3, v8}, Ls1/h;->d(IILp0/D;)[B

    .line 64
    .line 65
    .line 66
    move-result-object v14

    .line 67
    goto/16 :goto_14

    .line 68
    .line 69
    :pswitch_3
    move v6, v1

    .line 70
    const/4 v1, 0x0

    .line 71
    :goto_1
    invoke-virtual {v8, v15}, Lp0/D;->i(I)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_0

    .line 76
    .line 77
    move/from16 v16, v1

    .line 78
    .line 79
    const/16 v17, 0x1

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_0
    invoke-virtual {v8}, Lp0/D;->h()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    const/4 v3, 0x7

    .line 87
    if-nez v2, :cond_2

    .line 88
    .line 89
    invoke-virtual {v8, v3}, Lp0/D;->i(I)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_1

    .line 94
    .line 95
    move/from16 v16, v1

    .line 96
    .line 97
    move/from16 v17, v2

    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    goto :goto_2

    .line 101
    :cond_1
    const/4 v2, 0x0

    .line 102
    const/16 v16, 0x1

    .line 103
    .line 104
    const/16 v17, 0x0

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_2
    invoke-virtual {v8, v3}, Lp0/D;->i(I)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-virtual {v8, v15}, Lp0/D;->i(I)I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    move/from16 v16, v1

    .line 116
    .line 117
    move/from16 v17, v2

    .line 118
    .line 119
    move v2, v3

    .line 120
    :goto_2
    if-eqz v17, :cond_3

    .line 121
    .line 122
    if-eqz v7, :cond_3

    .line 123
    .line 124
    aget v1, p1, v2

    .line 125
    .line 126
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    .line 128
    .line 129
    int-to-float v2, v6

    .line 130
    int-to-float v3, v11

    .line 131
    add-int v1, v6, v17

    .line 132
    .line 133
    int-to-float v4, v1

    .line 134
    add-int/lit8 v1, v11, 0x1

    .line 135
    .line 136
    int-to-float v1, v1

    .line 137
    move/from16 v18, v1

    .line 138
    .line 139
    move-object/from16 v1, p6

    .line 140
    .line 141
    const/4 v9, 0x1

    .line 142
    move/from16 v5, v18

    .line 143
    .line 144
    move/from16 v18, v6

    .line 145
    .line 146
    move-object/from16 v6, p5

    .line 147
    .line 148
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_3
    move/from16 v18, v6

    .line 153
    .line 154
    const/4 v9, 0x1

    .line 155
    :goto_3
    add-int v6, v18, v17

    .line 156
    .line 157
    if-eqz v16, :cond_4

    .line 158
    .line 159
    :goto_4
    move v1, v6

    .line 160
    goto/16 :goto_14

    .line 161
    .line 162
    :cond_4
    move/from16 v1, v16

    .line 163
    .line 164
    const/4 v5, 0x1

    .line 165
    const/4 v9, 0x0

    .line 166
    goto :goto_1

    .line 167
    :pswitch_4
    const/4 v9, 0x1

    .line 168
    if-ne v0, v4, :cond_6

    .line 169
    .line 170
    if-nez v13, :cond_5

    .line 171
    .line 172
    sget-object v2, Ls1/h;->P:[B

    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_5
    move-object v2, v13

    .line 176
    :goto_5
    move-object/from16 v16, v2

    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_6
    move-object/from16 v16, v10

    .line 180
    .line 181
    :goto_6
    move v5, v1

    .line 182
    const/4 v1, 0x0

    .line 183
    :goto_7
    invoke-virtual {v8, v3}, Lp0/D;->i(I)I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-eqz v2, :cond_7

    .line 188
    .line 189
    move/from16 v17, v1

    .line 190
    .line 191
    :goto_8
    const/16 v18, 0x1

    .line 192
    .line 193
    goto/16 :goto_b

    .line 194
    .line 195
    :cond_7
    invoke-virtual {v8}, Lp0/D;->h()Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-nez v2, :cond_9

    .line 200
    .line 201
    invoke-virtual {v8, v4}, Lp0/D;->i(I)I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-eqz v2, :cond_8

    .line 206
    .line 207
    add-int/lit8 v2, v2, 0x2

    .line 208
    .line 209
    move/from16 v17, v1

    .line 210
    .line 211
    move/from16 v18, v2

    .line 212
    .line 213
    const/4 v2, 0x0

    .line 214
    goto :goto_b

    .line 215
    :cond_8
    const/4 v2, 0x0

    .line 216
    const/16 v17, 0x1

    .line 217
    .line 218
    :goto_9
    const/16 v18, 0x0

    .line 219
    .line 220
    goto :goto_b

    .line 221
    :cond_9
    invoke-virtual {v8}, Lp0/D;->h()Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-nez v2, :cond_a

    .line 226
    .line 227
    invoke-virtual {v8, v6}, Lp0/D;->i(I)I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    add-int/2addr v2, v3

    .line 232
    invoke-virtual {v8, v3}, Lp0/D;->i(I)I

    .line 233
    .line 234
    .line 235
    move-result v17

    .line 236
    :goto_a
    move/from16 v18, v2

    .line 237
    .line 238
    move/from16 v2, v17

    .line 239
    .line 240
    move/from16 v17, v1

    .line 241
    .line 242
    goto :goto_b

    .line 243
    :cond_a
    invoke-virtual {v8, v6}, Lp0/D;->i(I)I

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-eqz v2, :cond_e

    .line 248
    .line 249
    if-eq v2, v9, :cond_d

    .line 250
    .line 251
    if-eq v2, v6, :cond_c

    .line 252
    .line 253
    if-eq v2, v4, :cond_b

    .line 254
    .line 255
    move/from16 v17, v1

    .line 256
    .line 257
    const/4 v2, 0x0

    .line 258
    goto :goto_9

    .line 259
    :cond_b
    invoke-virtual {v8, v15}, Lp0/D;->i(I)I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    add-int/lit8 v2, v2, 0x19

    .line 264
    .line 265
    invoke-virtual {v8, v3}, Lp0/D;->i(I)I

    .line 266
    .line 267
    .line 268
    move-result v17

    .line 269
    goto :goto_a

    .line 270
    :cond_c
    invoke-virtual {v8, v3}, Lp0/D;->i(I)I

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    add-int/lit8 v2, v2, 0x9

    .line 275
    .line 276
    invoke-virtual {v8, v3}, Lp0/D;->i(I)I

    .line 277
    .line 278
    .line 279
    move-result v17

    .line 280
    goto :goto_a

    .line 281
    :cond_d
    move/from16 v17, v1

    .line 282
    .line 283
    const/4 v2, 0x0

    .line 284
    const/16 v18, 0x2

    .line 285
    .line 286
    goto :goto_b

    .line 287
    :cond_e
    move/from16 v17, v1

    .line 288
    .line 289
    const/4 v2, 0x0

    .line 290
    goto :goto_8

    .line 291
    :goto_b
    if-eqz v18, :cond_10

    .line 292
    .line 293
    if-eqz v7, :cond_10

    .line 294
    .line 295
    if-eqz v16, :cond_f

    .line 296
    .line 297
    aget-byte v2, v16, v2

    .line 298
    .line 299
    :cond_f
    aget v1, p1, v2

    .line 300
    .line 301
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 302
    .line 303
    .line 304
    int-to-float v2, v5

    .line 305
    int-to-float v1, v11

    .line 306
    add-int v3, v5, v18

    .line 307
    .line 308
    int-to-float v3, v3

    .line 309
    add-int/lit8 v4, v11, 0x1

    .line 310
    .line 311
    int-to-float v4, v4

    .line 312
    move/from16 v19, v1

    .line 313
    .line 314
    move-object/from16 v1, p6

    .line 315
    .line 316
    move/from16 v20, v3

    .line 317
    .line 318
    const/4 v10, 0x4

    .line 319
    move/from16 v3, v19

    .line 320
    .line 321
    move/from16 v19, v4

    .line 322
    .line 323
    const/4 v10, 0x3

    .line 324
    move/from16 v4, v20

    .line 325
    .line 326
    move/from16 v20, v5

    .line 327
    .line 328
    move/from16 v5, v19

    .line 329
    .line 330
    const/4 v15, 0x2

    .line 331
    move-object/from16 v6, p5

    .line 332
    .line 333
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 334
    .line 335
    .line 336
    goto :goto_c

    .line 337
    :cond_10
    move/from16 v20, v5

    .line 338
    .line 339
    const/4 v10, 0x3

    .line 340
    const/4 v15, 0x2

    .line 341
    :goto_c
    add-int v5, v20, v18

    .line 342
    .line 343
    if-eqz v17, :cond_11

    .line 344
    .line 345
    invoke-virtual {v8}, Lp0/D;->c()V

    .line 346
    .line 347
    .line 348
    move v1, v5

    .line 349
    goto/16 :goto_14

    .line 350
    .line 351
    :cond_11
    move/from16 v1, v17

    .line 352
    .line 353
    const/4 v3, 0x4

    .line 354
    const/4 v4, 0x3

    .line 355
    const/4 v6, 0x2

    .line 356
    const/4 v10, 0x0

    .line 357
    const/16 v15, 0x8

    .line 358
    .line 359
    goto/16 :goto_7

    .line 360
    .line 361
    :pswitch_5
    const/4 v9, 0x1

    .line 362
    const/4 v10, 0x3

    .line 363
    const/4 v15, 0x2

    .line 364
    if-ne v0, v10, :cond_13

    .line 365
    .line 366
    if-nez v12, :cond_12

    .line 367
    .line 368
    sget-object v2, Ls1/h;->O:[B

    .line 369
    .line 370
    goto :goto_d

    .line 371
    :cond_12
    move-object v2, v12

    .line 372
    :goto_d
    move-object/from16 v16, v2

    .line 373
    .line 374
    goto :goto_e

    .line 375
    :cond_13
    if-ne v0, v15, :cond_15

    .line 376
    .line 377
    if-nez v14, :cond_14

    .line 378
    .line 379
    sget-object v2, Ls1/h;->N:[B

    .line 380
    .line 381
    goto :goto_d

    .line 382
    :cond_14
    move-object v2, v14

    .line 383
    goto :goto_d

    .line 384
    :cond_15
    const/16 v16, 0x0

    .line 385
    .line 386
    :goto_e
    move v6, v1

    .line 387
    const/4 v5, 0x0

    .line 388
    :goto_f
    invoke-virtual {v8, v15}, Lp0/D;->i(I)I

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    if-eqz v1, :cond_16

    .line 393
    .line 394
    move/from16 v17, v5

    .line 395
    .line 396
    :goto_10
    const/4 v3, 0x4

    .line 397
    const/16 v4, 0x8

    .line 398
    .line 399
    const/16 v18, 0x1

    .line 400
    .line 401
    goto/16 :goto_12

    .line 402
    .line 403
    :cond_16
    invoke-virtual {v8}, Lp0/D;->h()Z

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    if-eqz v1, :cond_17

    .line 408
    .line 409
    invoke-virtual {v8, v10}, Lp0/D;->i(I)I

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    add-int/2addr v1, v10

    .line 414
    invoke-virtual {v8, v15}, Lp0/D;->i(I)I

    .line 415
    .line 416
    .line 417
    move-result v2

    .line 418
    move/from16 v18, v1

    .line 419
    .line 420
    move v1, v2

    .line 421
    move/from16 v17, v5

    .line 422
    .line 423
    const/4 v3, 0x4

    .line 424
    const/16 v4, 0x8

    .line 425
    .line 426
    goto :goto_12

    .line 427
    :cond_17
    invoke-virtual {v8}, Lp0/D;->h()Z

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    if-eqz v1, :cond_18

    .line 432
    .line 433
    move/from16 v17, v5

    .line 434
    .line 435
    const/4 v1, 0x0

    .line 436
    goto :goto_10

    .line 437
    :cond_18
    invoke-virtual {v8, v15}, Lp0/D;->i(I)I

    .line 438
    .line 439
    .line 440
    move-result v1

    .line 441
    if-eqz v1, :cond_1c

    .line 442
    .line 443
    if-eq v1, v9, :cond_1b

    .line 444
    .line 445
    if-eq v1, v15, :cond_1a

    .line 446
    .line 447
    if-eq v1, v10, :cond_19

    .line 448
    .line 449
    move/from16 v17, v5

    .line 450
    .line 451
    const/4 v1, 0x0

    .line 452
    const/4 v3, 0x4

    .line 453
    const/16 v4, 0x8

    .line 454
    .line 455
    :goto_11
    const/16 v18, 0x0

    .line 456
    .line 457
    goto :goto_12

    .line 458
    :cond_19
    const/16 v4, 0x8

    .line 459
    .line 460
    invoke-virtual {v8, v4}, Lp0/D;->i(I)I

    .line 461
    .line 462
    .line 463
    move-result v1

    .line 464
    add-int/lit8 v1, v1, 0x1d

    .line 465
    .line 466
    invoke-virtual {v8, v15}, Lp0/D;->i(I)I

    .line 467
    .line 468
    .line 469
    move-result v2

    .line 470
    move/from16 v18, v1

    .line 471
    .line 472
    move v1, v2

    .line 473
    move/from16 v17, v5

    .line 474
    .line 475
    const/4 v3, 0x4

    .line 476
    goto :goto_12

    .line 477
    :cond_1a
    const/4 v3, 0x4

    .line 478
    const/16 v4, 0x8

    .line 479
    .line 480
    invoke-virtual {v8, v3}, Lp0/D;->i(I)I

    .line 481
    .line 482
    .line 483
    move-result v1

    .line 484
    add-int/lit8 v1, v1, 0xc

    .line 485
    .line 486
    invoke-virtual {v8, v15}, Lp0/D;->i(I)I

    .line 487
    .line 488
    .line 489
    move-result v2

    .line 490
    move/from16 v18, v1

    .line 491
    .line 492
    move v1, v2

    .line 493
    move/from16 v17, v5

    .line 494
    .line 495
    goto :goto_12

    .line 496
    :cond_1b
    const/4 v3, 0x4

    .line 497
    const/16 v4, 0x8

    .line 498
    .line 499
    move/from16 v17, v5

    .line 500
    .line 501
    const/4 v1, 0x0

    .line 502
    const/16 v18, 0x2

    .line 503
    .line 504
    goto :goto_12

    .line 505
    :cond_1c
    const/4 v3, 0x4

    .line 506
    const/16 v4, 0x8

    .line 507
    .line 508
    const/4 v1, 0x0

    .line 509
    const/16 v17, 0x1

    .line 510
    .line 511
    goto :goto_11

    .line 512
    :goto_12
    if-eqz v18, :cond_1e

    .line 513
    .line 514
    if-eqz v7, :cond_1e

    .line 515
    .line 516
    if-eqz v16, :cond_1d

    .line 517
    .line 518
    aget-byte v1, v16, v1

    .line 519
    .line 520
    :cond_1d
    aget v1, p1, v1

    .line 521
    .line 522
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 523
    .line 524
    .line 525
    int-to-float v2, v6

    .line 526
    int-to-float v5, v11

    .line 527
    add-int v1, v6, v18

    .line 528
    .line 529
    int-to-float v1, v1

    .line 530
    add-int/lit8 v3, v11, 0x1

    .line 531
    .line 532
    int-to-float v3, v3

    .line 533
    move/from16 v19, v1

    .line 534
    .line 535
    move-object/from16 v1, p6

    .line 536
    .line 537
    move/from16 v21, v3

    .line 538
    .line 539
    const/16 v20, 0x4

    .line 540
    .line 541
    move v3, v5

    .line 542
    const/16 v22, 0x8

    .line 543
    .line 544
    move/from16 v4, v19

    .line 545
    .line 546
    move/from16 v5, v21

    .line 547
    .line 548
    move/from16 v19, v6

    .line 549
    .line 550
    move-object/from16 v6, p5

    .line 551
    .line 552
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 553
    .line 554
    .line 555
    goto :goto_13

    .line 556
    :cond_1e
    move/from16 v19, v6

    .line 557
    .line 558
    const/16 v20, 0x4

    .line 559
    .line 560
    const/16 v22, 0x8

    .line 561
    .line 562
    :goto_13
    add-int v6, v19, v18

    .line 563
    .line 564
    if-eqz v17, :cond_1f

    .line 565
    .line 566
    invoke-virtual {v8}, Lp0/D;->c()V

    .line 567
    .line 568
    .line 569
    goto/16 :goto_4

    .line 570
    .line 571
    :cond_1f
    move/from16 v5, v17

    .line 572
    .line 573
    goto/16 :goto_f

    .line 574
    .line 575
    :cond_20
    add-int/lit8 v11, v11, 0x2

    .line 576
    .line 577
    move/from16 v1, p3

    .line 578
    .line 579
    :goto_14
    const/4 v9, 0x0

    .line 580
    const/4 v10, 0x0

    .line 581
    goto/16 :goto_0

    .line 582
    .line 583
    :cond_21
    return-void

    .line 584
    nop

    .line 585
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static j(ILp0/D;)Ls1/a;
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lp0/D;->i(I)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {v0, v1}, Lp0/D;->u(I)V

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    add-int/lit8 v4, p0, -0x2

    .line 14
    .line 15
    const v5, -0x808081

    .line 16
    .line 17
    .line 18
    const/4 v6, -0x1

    .line 19
    const/4 v7, 0x0

    .line 20
    const/high16 v8, -0x1000000

    .line 21
    .line 22
    filled-new-array {v7, v6, v8, v5}, [I

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-static {}, Ls1/h;->e()[I

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-static {}, Ls1/h;->f()[I

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    :goto_0
    if-lez v4, :cond_4

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lp0/D;->i(I)I

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    invoke-virtual {v0, v1}, Lp0/D;->i(I)I

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    and-int/lit16 v11, v10, 0x80

    .line 45
    .line 46
    if-eqz v11, :cond_0

    .line 47
    .line 48
    move-object v11, v5

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    and-int/lit8 v11, v10, 0x40

    .line 51
    .line 52
    if-eqz v11, :cond_1

    .line 53
    .line 54
    move-object v11, v6

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move-object v11, v8

    .line 57
    :goto_1
    and-int/lit8 v10, v10, 0x1

    .line 58
    .line 59
    if-eqz v10, :cond_2

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lp0/D;->i(I)I

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    invoke-virtual {v0, v1}, Lp0/D;->i(I)I

    .line 66
    .line 67
    .line 68
    move-result v12

    .line 69
    invoke-virtual {v0, v1}, Lp0/D;->i(I)I

    .line 70
    .line 71
    .line 72
    move-result v13

    .line 73
    invoke-virtual {v0, v1}, Lp0/D;->i(I)I

    .line 74
    .line 75
    .line 76
    move-result v14

    .line 77
    add-int/lit8 v4, v4, -0x6

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    const/4 v10, 0x6

    .line 81
    invoke-virtual {v0, v10}, Lp0/D;->i(I)I

    .line 82
    .line 83
    .line 84
    move-result v12

    .line 85
    shl-int/2addr v12, v3

    .line 86
    const/4 v13, 0x4

    .line 87
    invoke-virtual {v0, v13}, Lp0/D;->i(I)I

    .line 88
    .line 89
    .line 90
    move-result v14

    .line 91
    shl-int/2addr v14, v13

    .line 92
    invoke-virtual {v0, v13}, Lp0/D;->i(I)I

    .line 93
    .line 94
    .line 95
    move-result v15

    .line 96
    shl-int/lit8 v13, v15, 0x4

    .line 97
    .line 98
    invoke-virtual {v0, v3}, Lp0/D;->i(I)I

    .line 99
    .line 100
    .line 101
    move-result v15

    .line 102
    shl-int/lit8 v10, v15, 0x6

    .line 103
    .line 104
    add-int/lit8 v4, v4, -0x4

    .line 105
    .line 106
    move/from16 v23, v14

    .line 107
    .line 108
    move v14, v10

    .line 109
    move v10, v12

    .line 110
    move/from16 v12, v23

    .line 111
    .line 112
    :goto_2
    const/16 v15, 0xff

    .line 113
    .line 114
    if-nez v10, :cond_3

    .line 115
    .line 116
    const/4 v12, 0x0

    .line 117
    const/4 v13, 0x0

    .line 118
    const/16 v14, 0xff

    .line 119
    .line 120
    :cond_3
    and-int/2addr v14, v15

    .line 121
    rsub-int v14, v14, 0xff

    .line 122
    .line 123
    int-to-byte v14, v14

    .line 124
    move/from16 p0, v4

    .line 125
    .line 126
    int-to-double v3, v10

    .line 127
    add-int/lit8 v12, v12, -0x80

    .line 128
    .line 129
    move/from16 v16, v2

    .line 130
    .line 131
    int-to-double v1, v12

    .line 132
    const-wide v17, 0x3ff66e978d4fdf3bL    # 1.402

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    mul-double v17, v17, v1

    .line 138
    .line 139
    move-object v12, v11

    .line 140
    add-double v10, v17, v3

    .line 141
    .line 142
    double-to-int v10, v10

    .line 143
    add-int/lit8 v13, v13, -0x80

    .line 144
    .line 145
    move-object/from16 v17, v8

    .line 146
    .line 147
    int-to-double v7, v13

    .line 148
    const-wide v19, 0x3fd60663c74fb54aL    # 0.34414

    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    mul-double v19, v19, v7

    .line 154
    .line 155
    sub-double v19, v3, v19

    .line 156
    .line 157
    const-wide v21, 0x3fe6da3c21187e7cL    # 0.71414

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    mul-double v1, v1, v21

    .line 163
    .line 164
    sub-double v1, v19, v1

    .line 165
    .line 166
    double-to-int v1, v1

    .line 167
    const-wide v19, 0x3ffc5a1cac083127L    # 1.772

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    mul-double v7, v7, v19

    .line 173
    .line 174
    add-double/2addr v7, v3

    .line 175
    double-to-int v2, v7

    .line 176
    const/4 v3, 0x0

    .line 177
    invoke-static {v10, v3, v15}, Lp0/M;->i(III)I

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    invoke-static {v1, v3, v15}, Lp0/M;->i(III)I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    invoke-static {v2, v3, v15}, Lp0/M;->i(III)I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    invoke-static {v14, v4, v1, v2}, Ls1/h;->h(IIII)I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    aput v1, v12, v9

    .line 194
    .line 195
    move/from16 v4, p0

    .line 196
    .line 197
    move/from16 v2, v16

    .line 198
    .line 199
    move-object/from16 v8, v17

    .line 200
    .line 201
    const/16 v1, 0x8

    .line 202
    .line 203
    const/4 v3, 0x2

    .line 204
    const/4 v7, 0x0

    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_4
    move/from16 v16, v2

    .line 208
    .line 209
    move-object/from16 v17, v8

    .line 210
    .line 211
    new-instance v0, Ls1/a;

    .line 212
    .line 213
    move/from16 v1, v16

    .line 214
    .line 215
    move-object/from16 v2, v17

    .line 216
    .line 217
    invoke-direct {v0, v1, v5, v6, v2}, Ls1/a;-><init>(I[I[I[I)V

    .line 218
    .line 219
    .line 220
    return-object v0
.end method

.method public static k(Lp0/D;)Ls1/c;
    .locals 6

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lp0/D;->i(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x4

    .line 8
    invoke-virtual {p0, v2}, Lp0/D;->u(I)V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    invoke-virtual {p0, v2}, Lp0/D;->i(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {p0}, Lp0/D;->h()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x1

    .line 21
    invoke-virtual {p0, v4}, Lp0/D;->u(I)V

    .line 22
    .line 23
    .line 24
    sget-object v5, Lp0/M;->b:[B

    .line 25
    .line 26
    if-ne v2, v4, :cond_0

    .line 27
    .line 28
    const/16 v2, 0x8

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lp0/D;->i(I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    mul-int/lit8 v2, v2, 0x10

    .line 35
    .line 36
    invoke-virtual {p0, v2}, Lp0/D;->u(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    if-nez v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lp0/D;->i(I)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {p0, v0}, Lp0/D;->i(I)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-lez v2, :cond_1

    .line 51
    .line 52
    new-array v5, v2, [B

    .line 53
    .line 54
    invoke-virtual {p0, v5, v2}, Lp0/D;->l([BI)V

    .line 55
    .line 56
    .line 57
    :cond_1
    if-lez v0, :cond_2

    .line 58
    .line 59
    new-array v2, v0, [B

    .line 60
    .line 61
    invoke-virtual {p0, v2, v0}, Lp0/D;->l([BI)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    :goto_0
    move-object v2, v5

    .line 66
    :goto_1
    new-instance p0, Ls1/c;

    .line 67
    .line 68
    invoke-direct {p0, v1, v3, v5, v2}, Ls1/c;-><init>(IZ[B[B)V

    .line 69
    .line 70
    .line 71
    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/h;->L:Ls1/g;

    .line 2
    .line 3
    iget-object v1, v0, Ls1/g;->c:Ljava/lang/Cloneable;

    .line 4
    .line 5
    check-cast v1, Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Ls1/g;->d:Ljava/lang/Cloneable;

    .line 11
    .line 12
    check-cast v1, Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Ls1/g;->e:Ljava/lang/Cloneable;

    .line 18
    .line 19
    check-cast v1, Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Ls1/g;->f:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Ls1/g;->g:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    iput-object v1, v0, Ls1/g;->h:Ljava/lang/Object;

    .line 40
    .line 41
    iput-object v1, v0, Ls1/g;->i:Ljava/lang/Object;

    .line 42
    .line 43
    return-void
.end method

.method public final b([BIILq1/l;Lp0/j;)V
    .locals 47

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Lp0/D;

    .line 6
    .line 7
    add-int v3, v1, p3

    .line 8
    .line 9
    move-object/from16 v4, p1

    .line 10
    .line 11
    invoke-direct {v2, v4, v3}, Lp0/D;-><init>([BI)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Lp0/D;->r(I)V

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {v2}, Lp0/D;->b()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v3, 0x2

    .line 22
    const/4 v4, 0x1

    .line 23
    const/16 v5, 0x30

    .line 24
    .line 25
    const/4 v6, 0x3

    .line 26
    iget-object v8, v0, Ls1/h;->L:Ls1/g;

    .line 27
    .line 28
    if-lt v1, v5, :cond_b

    .line 29
    .line 30
    const/16 v1, 0x8

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Lp0/D;->i(I)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const/16 v9, 0xf

    .line 37
    .line 38
    if-ne v5, v9, :cond_b

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Lp0/D;->i(I)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const/16 v9, 0x10

    .line 45
    .line 46
    invoke-virtual {v2, v9}, Lp0/D;->i(I)I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    invoke-virtual {v2, v9}, Lp0/D;->i(I)I

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    invoke-virtual {v2}, Lp0/D;->f()I

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
    invoke-virtual {v2}, Lp0/D;->b()I

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
    const-string v3, "Data field length exceeds limit"

    .line 70
    .line 71
    invoke-static {v1, v3}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Lp0/D;->b()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-virtual {v2, v1}, Lp0/D;->u(I)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    const/4 v13, 0x4

    .line 83
    packed-switch v5, :pswitch_data_0

    .line 84
    .line 85
    .line 86
    goto/16 :goto_7

    .line 87
    .line 88
    :pswitch_0
    iget v1, v8, Ls1/g;->a:I

    .line 89
    .line 90
    if-ne v10, v1, :cond_a

    .line 91
    .line 92
    invoke-virtual {v2, v13}, Lp0/D;->u(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-virtual {v2, v6}, Lp0/D;->u(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v9}, Lp0/D;->i(I)I

    .line 103
    .line 104
    .line 105
    move-result v14

    .line 106
    invoke-virtual {v2, v9}, Lp0/D;->i(I)I

    .line 107
    .line 108
    .line 109
    move-result v15

    .line 110
    if-eqz v1, :cond_1

    .line 111
    .line 112
    invoke-virtual {v2, v9}, Lp0/D;->i(I)I

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    invoke-virtual {v2, v9}, Lp0/D;->i(I)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-virtual {v2, v9}, Lp0/D;->i(I)I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    invoke-virtual {v2, v9}, Lp0/D;->i(I)I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    move/from16 v17, v1

    .line 129
    .line 130
    move/from16 v18, v3

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
    iput-object v1, v8, Ls1/g;->h:Ljava/lang/Object;

    .line 152
    .line 153
    goto/16 :goto_7

    .line 154
    .line 155
    :pswitch_1
    iget v1, v8, Ls1/g;->a:I

    .line 156
    .line 157
    if-ne v10, v1, :cond_2

    .line 158
    .line 159
    invoke-static {v2}, Ls1/h;->k(Lp0/D;)Ls1/c;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    iget-object v3, v8, Ls1/g;->e:Ljava/lang/Cloneable;

    .line 164
    .line 165
    check-cast v3, Landroid/util/SparseArray;

    .line 166
    .line 167
    iget v4, v1, Ls1/c;->a:I

    .line 168
    .line 169
    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_7

    .line 173
    .line 174
    :cond_2
    iget v1, v8, Ls1/g;->b:I

    .line 175
    .line 176
    if-ne v10, v1, :cond_a

    .line 177
    .line 178
    invoke-static {v2}, Ls1/h;->k(Lp0/D;)Ls1/c;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    iget-object v3, v8, Ls1/g;->g:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v3, Landroid/util/SparseArray;

    .line 185
    .line 186
    iget v4, v1, Ls1/c;->a:I

    .line 187
    .line 188
    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    goto/16 :goto_7

    .line 192
    .line 193
    :pswitch_2
    iget v1, v8, Ls1/g;->a:I

    .line 194
    .line 195
    if-ne v10, v1, :cond_3

    .line 196
    .line 197
    invoke-static {v11, v2}, Ls1/h;->j(ILp0/D;)Ls1/a;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    iget-object v3, v8, Ls1/g;->d:Ljava/lang/Cloneable;

    .line 202
    .line 203
    check-cast v3, Landroid/util/SparseArray;

    .line 204
    .line 205
    iget v4, v1, Ls1/a;->a:I

    .line 206
    .line 207
    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    goto/16 :goto_7

    .line 211
    .line 212
    :cond_3
    iget v1, v8, Ls1/g;->b:I

    .line 213
    .line 214
    if-ne v10, v1, :cond_a

    .line 215
    .line 216
    invoke-static {v11, v2}, Ls1/h;->j(ILp0/D;)Ls1/a;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    iget-object v3, v8, Ls1/g;->f:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v3, Landroid/util/SparseArray;

    .line 223
    .line 224
    iget v4, v1, Ls1/a;->a:I

    .line 225
    .line 226
    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_7

    .line 230
    .line 231
    :pswitch_3
    iget-object v5, v8, Ls1/g;->i:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast v5, Lcom/google/android/gms/internal/ads/CO;

    .line 234
    .line 235
    iget v14, v8, Ls1/g;->a:I

    .line 236
    .line 237
    if-ne v10, v14, :cond_a

    .line 238
    .line 239
    if-eqz v5, :cond_a

    .line 240
    .line 241
    invoke-virtual {v2, v1}, Lp0/D;->i(I)I

    .line 242
    .line 243
    .line 244
    move-result v10

    .line 245
    invoke-virtual {v2, v13}, Lp0/D;->u(I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 249
    .line 250
    .line 251
    move-result v17

    .line 252
    invoke-virtual {v2, v6}, Lp0/D;->u(I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2, v9}, Lp0/D;->i(I)I

    .line 256
    .line 257
    .line 258
    move-result v18

    .line 259
    invoke-virtual {v2, v9}, Lp0/D;->i(I)I

    .line 260
    .line 261
    .line 262
    move-result v19

    .line 263
    invoke-virtual {v2, v6}, Lp0/D;->i(I)I

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2, v6}, Lp0/D;->i(I)I

    .line 267
    .line 268
    .line 269
    move-result v20

    .line 270
    invoke-virtual {v2, v3}, Lp0/D;->u(I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2, v1}, Lp0/D;->i(I)I

    .line 274
    .line 275
    .line 276
    move-result v21

    .line 277
    invoke-virtual {v2, v1}, Lp0/D;->i(I)I

    .line 278
    .line 279
    .line 280
    move-result v22

    .line 281
    invoke-virtual {v2, v13}, Lp0/D;->i(I)I

    .line 282
    .line 283
    .line 284
    move-result v23

    .line 285
    invoke-virtual {v2, v3}, Lp0/D;->i(I)I

    .line 286
    .line 287
    .line 288
    move-result v24

    .line 289
    invoke-virtual {v2, v3}, Lp0/D;->u(I)V

    .line 290
    .line 291
    .line 292
    add-int/lit8 v11, v11, -0xa

    .line 293
    .line 294
    new-instance v6, Landroid/util/SparseArray;

    .line 295
    .line 296
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 297
    .line 298
    .line 299
    :goto_2
    if-lez v11, :cond_6

    .line 300
    .line 301
    invoke-virtual {v2, v9}, Lp0/D;->i(I)I

    .line 302
    .line 303
    .line 304
    move-result v14

    .line 305
    invoke-virtual {v2, v3}, Lp0/D;->i(I)I

    .line 306
    .line 307
    .line 308
    move-result v15

    .line 309
    invoke-virtual {v2, v3}, Lp0/D;->i(I)I

    .line 310
    .line 311
    .line 312
    const/16 v7, 0xc

    .line 313
    .line 314
    invoke-virtual {v2, v7}, Lp0/D;->i(I)I

    .line 315
    .line 316
    .line 317
    move-result v9

    .line 318
    invoke-virtual {v2, v13}, Lp0/D;->u(I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2, v7}, Lp0/D;->i(I)I

    .line 322
    .line 323
    .line 324
    move-result v7

    .line 325
    add-int/lit8 v16, v11, -0x6

    .line 326
    .line 327
    if-eq v15, v4, :cond_5

    .line 328
    .line 329
    if-ne v15, v3, :cond_4

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
    invoke-virtual {v2, v1}, Lp0/D;->i(I)I

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2, v1}, Lp0/D;->i(I)I

    .line 339
    .line 340
    .line 341
    add-int/lit8 v11, v11, -0x8

    .line 342
    .line 343
    :goto_4
    new-instance v15, Ls1/f;

    .line 344
    .line 345
    invoke-direct {v15, v9, v7}, Ls1/f;-><init>(II)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v6, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    const/16 v9, 0x10

    .line 352
    .line 353
    goto :goto_2

    .line 354
    :cond_6
    new-instance v1, Ls1/e;

    .line 355
    .line 356
    move-object v15, v1

    .line 357
    move/from16 v16, v10

    .line 358
    .line 359
    move-object/from16 v25, v6

    .line 360
    .line 361
    invoke-direct/range {v15 .. v25}, Ls1/e;-><init>(IZIIIIIIILandroid/util/SparseArray;)V

    .line 362
    .line 363
    .line 364
    iget v3, v5, Lcom/google/android/gms/internal/ads/CO;->c:I

    .line 365
    .line 366
    iget-object v4, v8, Ls1/g;->c:Ljava/lang/Cloneable;

    .line 367
    .line 368
    if-nez v3, :cond_7

    .line 369
    .line 370
    move-object v3, v4

    .line 371
    check-cast v3, Landroid/util/SparseArray;

    .line 372
    .line 373
    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    check-cast v3, Ls1/e;

    .line 378
    .line 379
    if-eqz v3, :cond_7

    .line 380
    .line 381
    const/4 v7, 0x0

    .line 382
    :goto_5
    iget-object v5, v3, Ls1/e;->j:Landroid/util/SparseArray;

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
    check-cast v5, Ls1/f;

    .line 399
    .line 400
    iget-object v8, v1, Ls1/e;->j:Landroid/util/SparseArray;

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
    iget v3, v1, Ls1/e;->a:I

    .line 411
    .line 412
    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    goto :goto_7

    .line 416
    :pswitch_4
    iget v4, v8, Ls1/g;->a:I

    .line 417
    .line 418
    if-ne v10, v4, :cond_a

    .line 419
    .line 420
    iget-object v4, v8, Ls1/g;->i:Ljava/lang/Object;

    .line 421
    .line 422
    check-cast v4, Lcom/google/android/gms/internal/ads/CO;

    .line 423
    .line 424
    invoke-virtual {v2, v1}, Lp0/D;->i(I)I

    .line 425
    .line 426
    .line 427
    move-result v5

    .line 428
    invoke-virtual {v2, v13}, Lp0/D;->i(I)I

    .line 429
    .line 430
    .line 431
    move-result v6

    .line 432
    invoke-virtual {v2, v3}, Lp0/D;->i(I)I

    .line 433
    .line 434
    .line 435
    move-result v7

    .line 436
    invoke-virtual {v2, v3}, Lp0/D;->u(I)V

    .line 437
    .line 438
    .line 439
    add-int/lit8 v11, v11, -0x2

    .line 440
    .line 441
    new-instance v3, Landroid/util/SparseArray;

    .line 442
    .line 443
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 444
    .line 445
    .line 446
    :goto_6
    if-lez v11, :cond_8

    .line 447
    .line 448
    invoke-virtual {v2, v1}, Lp0/D;->i(I)I

    .line 449
    .line 450
    .line 451
    move-result v9

    .line 452
    invoke-virtual {v2, v1}, Lp0/D;->u(I)V

    .line 453
    .line 454
    .line 455
    const/16 v10, 0x10

    .line 456
    .line 457
    invoke-virtual {v2, v10}, Lp0/D;->i(I)I

    .line 458
    .line 459
    .line 460
    move-result v13

    .line 461
    invoke-virtual {v2, v10}, Lp0/D;->i(I)I

    .line 462
    .line 463
    .line 464
    move-result v14

    .line 465
    add-int/lit8 v11, v11, -0x6

    .line 466
    .line 467
    new-instance v15, Ls1/d;

    .line 468
    .line 469
    invoke-direct {v15, v13, v14}, Ls1/d;-><init>(II)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v3, v9, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 473
    .line 474
    .line 475
    goto :goto_6

    .line 476
    :cond_8
    new-instance v1, Lcom/google/android/gms/internal/ads/CO;

    .line 477
    .line 478
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 479
    .line 480
    .line 481
    iput v5, v1, Lcom/google/android/gms/internal/ads/CO;->a:I

    .line 482
    .line 483
    iput v6, v1, Lcom/google/android/gms/internal/ads/CO;->b:I

    .line 484
    .line 485
    iput v7, v1, Lcom/google/android/gms/internal/ads/CO;->c:I

    .line 486
    .line 487
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 488
    .line 489
    if-eqz v7, :cond_9

    .line 490
    .line 491
    iput-object v1, v8, Ls1/g;->i:Ljava/lang/Object;

    .line 492
    .line 493
    iget-object v1, v8, Ls1/g;->c:Ljava/lang/Cloneable;

    .line 494
    .line 495
    check-cast v1, Landroid/util/SparseArray;

    .line 496
    .line 497
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 498
    .line 499
    .line 500
    iget-object v1, v8, Ls1/g;->d:Ljava/lang/Cloneable;

    .line 501
    .line 502
    check-cast v1, Landroid/util/SparseArray;

    .line 503
    .line 504
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 505
    .line 506
    .line 507
    iget-object v1, v8, Ls1/g;->e:Ljava/lang/Cloneable;

    .line 508
    .line 509
    check-cast v1, Landroid/util/SparseArray;

    .line 510
    .line 511
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 512
    .line 513
    .line 514
    goto :goto_7

    .line 515
    :cond_9
    if-eqz v4, :cond_a

    .line 516
    .line 517
    iget v3, v4, Lcom/google/android/gms/internal/ads/CO;->b:I

    .line 518
    .line 519
    if-eq v3, v6, :cond_a

    .line 520
    .line 521
    iput-object v1, v8, Ls1/g;->i:Ljava/lang/Object;

    .line 522
    .line 523
    :cond_a
    :goto_7
    invoke-virtual {v2}, Lp0/D;->f()I

    .line 524
    .line 525
    .line 526
    move-result v1

    .line 527
    sub-int/2addr v12, v1

    .line 528
    invoke-virtual {v2, v12}, Lp0/D;->v(I)V

    .line 529
    .line 530
    .line 531
    goto/16 :goto_0

    .line 532
    .line 533
    :cond_b
    iget-object v1, v8, Ls1/g;->i:Ljava/lang/Object;

    .line 534
    .line 535
    check-cast v1, Lcom/google/android/gms/internal/ads/CO;

    .line 536
    .line 537
    if-nez v1, :cond_c

    .line 538
    .line 539
    new-instance v1, Lq1/a;

    .line 540
    .line 541
    sget-object v2, Lz4/H;->H:Lz4/F;

    .line 542
    .line 543
    sget-object v10, Lz4/d0;->K:Lz4/d0;

    .line 544
    .line 545
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    move-object v9, v1

    .line 556
    invoke-direct/range {v9 .. v14}, Lq1/a;-><init>(Ljava/util/List;JJ)V

    .line 557
    .line 558
    .line 559
    :goto_8
    move-object/from16 v2, p5

    .line 560
    .line 561
    goto/16 :goto_13

    .line 562
    .line 563
    :cond_c
    iget-object v2, v8, Ls1/g;->h:Ljava/lang/Object;

    .line 564
    .line 565
    check-cast v2, Ls1/b;

    .line 566
    .line 567
    if-eqz v2, :cond_d

    .line 568
    .line 569
    goto :goto_9

    .line 570
    :cond_d
    iget-object v2, v0, Ls1/h;->J:Ls1/b;

    .line 571
    .line 572
    :goto_9
    iget-object v5, v0, Ls1/h;->M:Landroid/graphics/Bitmap;

    .line 573
    .line 574
    iget-object v7, v0, Ls1/h;->I:Landroid/graphics/Canvas;

    .line 575
    .line 576
    if-eqz v5, :cond_e

    .line 577
    .line 578
    iget v9, v2, Ls1/b;->a:I

    .line 579
    .line 580
    add-int/2addr v9, v4

    .line 581
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 582
    .line 583
    .line 584
    move-result v5

    .line 585
    if-ne v9, v5, :cond_e

    .line 586
    .line 587
    iget v5, v2, Ls1/b;->b:I

    .line 588
    .line 589
    add-int/2addr v5, v4

    .line 590
    iget-object v9, v0, Ls1/h;->M:Landroid/graphics/Bitmap;

    .line 591
    .line 592
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    .line 593
    .line 594
    .line 595
    move-result v9

    .line 596
    if-eq v5, v9, :cond_f

    .line 597
    .line 598
    :cond_e
    iget v5, v2, Ls1/b;->a:I

    .line 599
    .line 600
    add-int/2addr v5, v4

    .line 601
    iget v9, v2, Ls1/b;->b:I

    .line 602
    .line 603
    add-int/2addr v9, v4

    .line 604
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 605
    .line 606
    invoke-static {v5, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 607
    .line 608
    .line 609
    move-result-object v5

    .line 610
    iput-object v5, v0, Ls1/h;->M:Landroid/graphics/Bitmap;

    .line 611
    .line 612
    invoke-virtual {v7, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 613
    .line 614
    .line 615
    :cond_f
    new-instance v5, Ljava/util/ArrayList;

    .line 616
    .line 617
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .line 619
    .line 620
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 621
    .line 622
    check-cast v1, Landroid/util/SparseArray;

    .line 623
    .line 624
    const/4 v15, 0x0

    .line 625
    :goto_a
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 626
    .line 627
    .line 628
    move-result v9

    .line 629
    if-ge v15, v9, :cond_1a

    .line 630
    .line 631
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 632
    .line 633
    .line 634
    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v9

    .line 638
    check-cast v9, Ls1/d;

    .line 639
    .line 640
    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->keyAt(I)I

    .line 641
    .line 642
    .line 643
    move-result v10

    .line 644
    iget-object v11, v8, Ls1/g;->c:Ljava/lang/Cloneable;

    .line 645
    .line 646
    check-cast v11, Landroid/util/SparseArray;

    .line 647
    .line 648
    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v10

    .line 652
    move-object v14, v10

    .line 653
    check-cast v14, Ls1/e;

    .line 654
    .line 655
    iget v10, v9, Ls1/d;->a:I

    .line 656
    .line 657
    iget v11, v2, Ls1/b;->c:I

    .line 658
    .line 659
    add-int v13, v10, v11

    .line 660
    .line 661
    iget v9, v9, Ls1/d;->b:I

    .line 662
    .line 663
    iget v10, v2, Ls1/b;->e:I

    .line 664
    .line 665
    add-int v12, v9, v10

    .line 666
    .line 667
    iget v9, v14, Ls1/e;->c:I

    .line 668
    .line 669
    add-int/2addr v9, v13

    .line 670
    iget v10, v2, Ls1/b;->d:I

    .line 671
    .line 672
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 673
    .line 674
    .line 675
    move-result v9

    .line 676
    iget v11, v14, Ls1/e;->d:I

    .line 677
    .line 678
    add-int v10, v12, v11

    .line 679
    .line 680
    iget v4, v2, Ls1/b;->f:I

    .line 681
    .line 682
    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    .line 683
    .line 684
    .line 685
    move-result v4

    .line 686
    invoke-virtual {v7, v13, v12, v9, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 687
    .line 688
    .line 689
    iget-object v4, v8, Ls1/g;->d:Ljava/lang/Cloneable;

    .line 690
    .line 691
    check-cast v4, Landroid/util/SparseArray;

    .line 692
    .line 693
    iget v9, v14, Ls1/e;->f:I

    .line 694
    .line 695
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    move-result-object v4

    .line 699
    check-cast v4, Ls1/a;

    .line 700
    .line 701
    if-nez v4, :cond_10

    .line 702
    .line 703
    iget-object v4, v8, Ls1/g;->f:Ljava/lang/Object;

    .line 704
    .line 705
    check-cast v4, Landroid/util/SparseArray;

    .line 706
    .line 707
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v4

    .line 711
    check-cast v4, Ls1/a;

    .line 712
    .line 713
    if-nez v4, :cond_10

    .line 714
    .line 715
    iget-object v4, v0, Ls1/h;->K:Ls1/a;

    .line 716
    .line 717
    :cond_10
    const/4 v9, 0x0

    .line 718
    :goto_b
    iget-object v3, v14, Ls1/e;->j:Landroid/util/SparseArray;

    .line 719
    .line 720
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 721
    .line 722
    .line 723
    move-result v6

    .line 724
    if-ge v9, v6, :cond_16

    .line 725
    .line 726
    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->keyAt(I)I

    .line 727
    .line 728
    .line 729
    move-result v6

    .line 730
    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v3

    .line 734
    check-cast v3, Ls1/f;

    .line 735
    .line 736
    move-object/from16 v16, v1

    .line 737
    .line 738
    iget-object v1, v8, Ls1/g;->e:Ljava/lang/Cloneable;

    .line 739
    .line 740
    check-cast v1, Landroid/util/SparseArray;

    .line 741
    .line 742
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 743
    .line 744
    .line 745
    move-result-object v1

    .line 746
    check-cast v1, Ls1/c;

    .line 747
    .line 748
    if-nez v1, :cond_11

    .line 749
    .line 750
    iget-object v1, v8, Ls1/g;->g:Ljava/lang/Object;

    .line 751
    .line 752
    check-cast v1, Landroid/util/SparseArray;

    .line 753
    .line 754
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    move-result-object v1

    .line 758
    check-cast v1, Ls1/c;

    .line 759
    .line 760
    :cond_11
    if-eqz v1, :cond_15

    .line 761
    .line 762
    iget-boolean v6, v1, Ls1/c;->b:Z

    .line 763
    .line 764
    if-eqz v6, :cond_12

    .line 765
    .line 766
    const/4 v6, 0x0

    .line 767
    :goto_c
    move-object/from16 v17, v8

    .line 768
    .line 769
    goto :goto_d

    .line 770
    :cond_12
    iget-object v6, v0, Ls1/h;->G:Landroid/graphics/Paint;

    .line 771
    .line 772
    goto :goto_c

    .line 773
    :goto_d
    iget v8, v3, Ls1/f;->a:I

    .line 774
    .line 775
    add-int/2addr v8, v13

    .line 776
    iget v3, v3, Ls1/f;->b:I

    .line 777
    .line 778
    add-int/2addr v3, v12

    .line 779
    move-object/from16 v18, v5

    .line 780
    .line 781
    iget v5, v14, Ls1/e;->e:I

    .line 782
    .line 783
    move/from16 v19, v9

    .line 784
    .line 785
    const/4 v9, 0x3

    .line 786
    if-ne v5, v9, :cond_13

    .line 787
    .line 788
    iget-object v9, v4, Ls1/a;->d:[I

    .line 789
    .line 790
    :goto_e
    move-object/from16 v20, v9

    .line 791
    .line 792
    goto :goto_f

    .line 793
    :cond_13
    const/4 v9, 0x2

    .line 794
    if-ne v5, v9, :cond_14

    .line 795
    .line 796
    iget-object v9, v4, Ls1/a;->c:[I

    .line 797
    .line 798
    goto :goto_e

    .line 799
    :cond_14
    iget-object v9, v4, Ls1/a;->b:[I

    .line 800
    .line 801
    goto :goto_e

    .line 802
    :goto_f
    iget-object v9, v1, Ls1/c;->c:[B

    .line 803
    .line 804
    move-object/from16 v21, v2

    .line 805
    .line 806
    move v2, v10

    .line 807
    move-object/from16 v10, v20

    .line 808
    .line 809
    move/from16 v26, v11

    .line 810
    .line 811
    move v11, v5

    .line 812
    move/from16 v22, v2

    .line 813
    .line 814
    move v2, v12

    .line 815
    move v12, v8

    .line 816
    move/from16 v23, v2

    .line 817
    .line 818
    move v2, v13

    .line 819
    move v13, v3

    .line 820
    move/from16 v24, v2

    .line 821
    .line 822
    move-object v2, v14

    .line 823
    move-object v14, v6

    .line 824
    move/from16 v25, v15

    .line 825
    .line 826
    move-object v15, v7

    .line 827
    invoke-static/range {v9 .. v15}, Ls1/h;->i([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 828
    .line 829
    .line 830
    const/16 v27, 0x1

    .line 831
    .line 832
    add-int/lit8 v13, v3, 0x1

    .line 833
    .line 834
    iget-object v9, v1, Ls1/c;->d:[B

    .line 835
    .line 836
    invoke-static/range {v9 .. v15}, Ls1/h;->i([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 837
    .line 838
    .line 839
    goto :goto_10

    .line 840
    :cond_15
    move-object/from16 v21, v2

    .line 841
    .line 842
    move-object/from16 v18, v5

    .line 843
    .line 844
    move-object/from16 v17, v8

    .line 845
    .line 846
    move/from16 v19, v9

    .line 847
    .line 848
    move/from16 v22, v10

    .line 849
    .line 850
    move/from16 v26, v11

    .line 851
    .line 852
    move/from16 v23, v12

    .line 853
    .line 854
    move/from16 v24, v13

    .line 855
    .line 856
    move-object v2, v14

    .line 857
    move/from16 v25, v15

    .line 858
    .line 859
    const/16 v27, 0x1

    .line 860
    .line 861
    :goto_10
    add-int/lit8 v9, v19, 0x1

    .line 862
    .line 863
    move-object v14, v2

    .line 864
    move-object/from16 v1, v16

    .line 865
    .line 866
    move-object/from16 v8, v17

    .line 867
    .line 868
    move-object/from16 v5, v18

    .line 869
    .line 870
    move-object/from16 v2, v21

    .line 871
    .line 872
    move/from16 v10, v22

    .line 873
    .line 874
    move/from16 v12, v23

    .line 875
    .line 876
    move/from16 v13, v24

    .line 877
    .line 878
    move/from16 v15, v25

    .line 879
    .line 880
    move/from16 v11, v26

    .line 881
    .line 882
    const/4 v6, 0x3

    .line 883
    goto/16 :goto_b

    .line 884
    .line 885
    :cond_16
    move-object/from16 v16, v1

    .line 886
    .line 887
    move-object/from16 v21, v2

    .line 888
    .line 889
    move-object/from16 v18, v5

    .line 890
    .line 891
    move-object/from16 v17, v8

    .line 892
    .line 893
    move/from16 v22, v10

    .line 894
    .line 895
    move/from16 v26, v11

    .line 896
    .line 897
    move/from16 v23, v12

    .line 898
    .line 899
    move/from16 v24, v13

    .line 900
    .line 901
    move-object v2, v14

    .line 902
    move/from16 v25, v15

    .line 903
    .line 904
    const/16 v27, 0x1

    .line 905
    .line 906
    iget-boolean v1, v2, Ls1/e;->b:Z

    .line 907
    .line 908
    iget v3, v2, Ls1/e;->c:I

    .line 909
    .line 910
    if-eqz v1, :cond_19

    .line 911
    .line 912
    iget v1, v2, Ls1/e;->e:I

    .line 913
    .line 914
    const/4 v5, 0x3

    .line 915
    if-ne v1, v5, :cond_17

    .line 916
    .line 917
    iget-object v1, v4, Ls1/a;->d:[I

    .line 918
    .line 919
    iget v2, v2, Ls1/e;->g:I

    .line 920
    .line 921
    aget v1, v1, v2

    .line 922
    .line 923
    const/4 v6, 0x2

    .line 924
    goto :goto_11

    .line 925
    :cond_17
    const/4 v6, 0x2

    .line 926
    if-ne v1, v6, :cond_18

    .line 927
    .line 928
    iget-object v1, v4, Ls1/a;->c:[I

    .line 929
    .line 930
    iget v2, v2, Ls1/e;->h:I

    .line 931
    .line 932
    aget v1, v1, v2

    .line 933
    .line 934
    goto :goto_11

    .line 935
    :cond_18
    iget-object v1, v4, Ls1/a;->b:[I

    .line 936
    .line 937
    iget v2, v2, Ls1/e;->i:I

    .line 938
    .line 939
    aget v1, v1, v2

    .line 940
    .line 941
    :goto_11
    iget-object v14, v0, Ls1/h;->H:Landroid/graphics/Paint;

    .line 942
    .line 943
    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 944
    .line 945
    .line 946
    move/from16 v1, v24

    .line 947
    .line 948
    int-to-float v10, v1

    .line 949
    move/from16 v2, v23

    .line 950
    .line 951
    int-to-float v11, v2

    .line 952
    add-int v13, v1, v3

    .line 953
    .line 954
    int-to-float v12, v13

    .line 955
    move/from16 v4, v22

    .line 956
    .line 957
    int-to-float v13, v4

    .line 958
    move-object v9, v7

    .line 959
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 960
    .line 961
    .line 962
    goto :goto_12

    .line 963
    :cond_19
    move/from16 v2, v23

    .line 964
    .line 965
    move/from16 v1, v24

    .line 966
    .line 967
    const/4 v5, 0x3

    .line 968
    const/4 v6, 0x2

    .line 969
    :goto_12
    iget-object v4, v0, Ls1/h;->M:Landroid/graphics/Bitmap;

    .line 970
    .line 971
    move/from16 v8, v26

    .line 972
    .line 973
    invoke-static {v4, v1, v2, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 974
    .line 975
    .line 976
    move-result-object v32

    .line 977
    int-to-float v1, v1

    .line 978
    move-object/from16 v4, v21

    .line 979
    .line 980
    iget v9, v4, Ls1/b;->a:I

    .line 981
    .line 982
    int-to-float v9, v9

    .line 983
    div-float v36, v1, v9

    .line 984
    .line 985
    int-to-float v1, v2

    .line 986
    iget v2, v4, Ls1/b;->b:I

    .line 987
    .line 988
    int-to-float v2, v2

    .line 989
    div-float v33, v1, v2

    .line 990
    .line 991
    int-to-float v1, v3

    .line 992
    div-float v40, v1, v9

    .line 993
    .line 994
    int-to-float v1, v8

    .line 995
    div-float v41, v1, v2

    .line 996
    .line 997
    new-instance v1, Lo0/b;

    .line 998
    .line 999
    move-object/from16 v28, v1

    .line 1000
    .line 1001
    const/16 v42, 0x0

    .line 1002
    .line 1003
    const/high16 v43, -0x1000000

    .line 1004
    .line 1005
    const/16 v29, 0x0

    .line 1006
    .line 1007
    const/16 v30, 0x0

    .line 1008
    .line 1009
    move-object/from16 v31, v30

    .line 1010
    .line 1011
    const/16 v34, 0x0

    .line 1012
    .line 1013
    const/16 v35, 0x0

    .line 1014
    .line 1015
    const/16 v37, 0x0

    .line 1016
    .line 1017
    const/high16 v38, -0x80000000

    .line 1018
    .line 1019
    move/from16 v44, v38

    .line 1020
    .line 1021
    const v39, -0x800001

    .line 1022
    .line 1023
    .line 1024
    const/16 v45, 0x0

    .line 1025
    .line 1026
    const/16 v46, 0x0

    .line 1027
    .line 1028
    invoke-direct/range {v28 .. v46}, Lo0/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFI)V

    .line 1029
    .line 1030
    .line 1031
    move-object/from16 v2, v18

    .line 1032
    .line 1033
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    .line 1035
    .line 1036
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 1037
    .line 1038
    const/4 v3, 0x0

    .line 1039
    invoke-virtual {v7, v3, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 1043
    .line 1044
    .line 1045
    add-int/lit8 v15, v25, 0x1

    .line 1046
    .line 1047
    move-object v5, v2

    .line 1048
    move-object v2, v4

    .line 1049
    move-object/from16 v1, v16

    .line 1050
    .line 1051
    move-object/from16 v8, v17

    .line 1052
    .line 1053
    const/4 v3, 0x2

    .line 1054
    const/4 v4, 0x1

    .line 1055
    const/4 v6, 0x3

    .line 1056
    goto/16 :goto_a

    .line 1057
    .line 1058
    :cond_1a
    move-object v2, v5

    .line 1059
    new-instance v1, Lq1/a;

    .line 1060
    .line 1061
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    move-object v9, v1

    .line 1072
    move-object v10, v2

    .line 1073
    invoke-direct/range {v9 .. v14}, Lq1/a;-><init>(Ljava/util/List;JJ)V

    .line 1074
    .line 1075
    .line 1076
    goto/16 :goto_8

    .line 1077
    .line 1078
    :goto_13
    invoke-interface {v2, v1}, Lp0/j;->accept(Ljava/lang/Object;)V

    .line 1079
    .line 1080
    .line 1081
    return-void

    .line 1082
    nop

    .line 1083
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic c(I[BI)Lq1/d;
    .locals 0

    .line 1
    invoke-static {p0, p2, p1, p3}, Lcom/google/protobuf/U2;->b(Lq1/m;[BII)Lq1/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final g()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method
