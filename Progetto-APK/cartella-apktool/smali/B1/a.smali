.class public final LB1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB1/b;


# static fields
.field public static final m:[I

.field public static final n:[I


# instance fields
.field public final a:LW0/u;

.field public final b:LW0/L;

.field public final c:LB1/e;

.field public final d:I

.field public final e:[B

.field public final f:Lp0/E;

.field public final g:I

.field public final h:Lm0/t;

.field public i:I

.field public j:J

.field public k:I

.field public l:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, LB1/a;->m:[I

    .line 9
    .line 10
    const/16 v0, 0x59

    .line 11
    .line 12
    new-array v0, v0, [I

    .line 13
    .line 14
    fill-array-data v0, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v0, LB1/a;->n:[I

    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
    .end array-data

    .line 22
    .line 23
    .line 24
    :array_1
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
        0x11
        0x13
        0x15
        0x17
        0x19
        0x1c
        0x1f
        0x22
        0x25
        0x29
        0x2d
        0x32
        0x37
        0x3c
        0x42
        0x49
        0x50
        0x58
        0x61
        0x6b
        0x76
        0x82
        0x8f
        0x9d
        0xad
        0xbe
        0xd1
        0xe6
        0xfd
        0x117
        0x133
        0x151
        0x173
        0x198
        0x1c1
        0x1ee
        0x220
        0x256
        0x292
        0x2d4
        0x31c
        0x36c
        0x3c3
        0x424
        0x48e
        0x502
        0x583
        0x610
        0x6ab
        0x756
        0x812
        0x8e0
        0x9c3
        0xabd
        0xbd0
        0xcff
        0xe4c
        0xfba
        0x114c
        0x1307
        0x14ee
        0x1706
        0x1954
        0x1bdc
        0x1ea5
        0x21b6
        0x2515
        0x28ca
        0x2cdf
        0x315b
        0x364b
        0x3bb9
        0x41b2
        0x4844
        0x4f7e
        0x5771
        0x602f
        0x69ce
        0x7462
        0x7fff
    .end array-data
.end method

.method public constructor <init>(LW0/u;LW0/L;LB1/e;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LB1/a;->a:LW0/u;

    .line 5
    .line 6
    iput-object p2, p0, LB1/a;->b:LW0/L;

    .line 7
    .line 8
    iput-object p3, p0, LB1/a;->c:LB1/e;

    .line 9
    .line 10
    iget p1, p3, LB1/e;->c:I

    .line 11
    .line 12
    div-int/lit8 p2, p1, 0xa

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    iput p2, p0, LB1/a;->g:I

    .line 20
    .line 21
    new-instance v1, Lp0/E;

    .line 22
    .line 23
    iget-object v2, p3, LB1/e;->g:[B

    .line 24
    .line 25
    invoke-direct {v1, v2}, Lp0/E;-><init>([B)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lp0/E;->s()I

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lp0/E;->s()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iput v1, p0, LB1/a;->d:I

    .line 36
    .line 37
    iget v2, p3, LB1/e;->b:I

    .line 38
    .line 39
    mul-int/lit8 v3, v2, 0x4

    .line 40
    .line 41
    iget v4, p3, LB1/e;->e:I

    .line 42
    .line 43
    sub-int v3, v4, v3

    .line 44
    .line 45
    mul-int/lit8 v3, v3, 0x8

    .line 46
    .line 47
    iget p3, p3, LB1/e;->f:I

    .line 48
    .line 49
    mul-int p3, p3, v2

    .line 50
    .line 51
    div-int/2addr v3, p3

    .line 52
    add-int/2addr v3, v0

    .line 53
    if-ne v1, v3, :cond_0

    .line 54
    .line 55
    invoke-static {p2, v1}, Lp0/M;->f(II)I

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    mul-int v0, p3, v4

    .line 60
    .line 61
    new-array v0, v0, [B

    .line 62
    .line 63
    iput-object v0, p0, LB1/a;->e:[B

    .line 64
    .line 65
    new-instance v0, Lp0/E;

    .line 66
    .line 67
    mul-int/lit8 v3, v1, 0x2

    .line 68
    .line 69
    mul-int v3, v3, v2

    .line 70
    .line 71
    mul-int v3, v3, p3

    .line 72
    .line 73
    invoke-direct {v0, v3}, Lp0/E;-><init>(I)V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, LB1/a;->f:Lp0/E;

    .line 77
    .line 78
    mul-int v4, v4, p1

    .line 79
    .line 80
    mul-int/lit8 v4, v4, 0x8

    .line 81
    .line 82
    div-int/2addr v4, v1

    .line 83
    new-instance p3, Lm0/s;

    .line 84
    .line 85
    invoke-direct {p3}, Lm0/s;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v0, "audio/raw"

    .line 89
    .line 90
    invoke-static {v0}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iput-object v0, p3, Lm0/s;->n:Ljava/lang/String;

    .line 95
    .line 96
    iput v4, p3, Lm0/s;->h:I

    .line 97
    .line 98
    iput v4, p3, Lm0/s;->i:I

    .line 99
    .line 100
    const/4 v0, 0x2

    .line 101
    mul-int/lit8 p2, p2, 0x2

    .line 102
    .line 103
    mul-int p2, p2, v2

    .line 104
    .line 105
    iput p2, p3, Lm0/s;->o:I

    .line 106
    .line 107
    iput v2, p3, Lm0/s;->F:I

    .line 108
    .line 109
    iput p1, p3, Lm0/s;->G:I

    .line 110
    .line 111
    iput v0, p3, Lm0/s;->H:I

    .line 112
    .line 113
    new-instance p1, Lm0/t;

    .line 114
    .line 115
    invoke-direct {p1, p3}, Lm0/t;-><init>(Lm0/s;)V

    .line 116
    .line 117
    .line 118
    iput-object p1, p0, LB1/a;->h:Lm0/t;

    .line 119
    .line 120
    return-void

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string p2, "Expected frames per block: "

    .line 124
    .line 125
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string p2, "; got: "

    .line 132
    .line 133
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const/4 p2, 0x0

    .line 144
    invoke-static {p1, p2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    throw p1
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LB1/a;->i:I

    .line 3
    .line 4
    iput-wide p1, p0, LB1/a;->j:J

    .line 5
    .line 6
    iput v0, p0, LB1/a;->k:I

    .line 7
    .line 8
    const-wide/16 p1, 0x0

    .line 9
    .line 10
    iput-wide p1, p0, LB1/a;->l:J

    .line 11
    .line 12
    return-void
.end method

.method public final b(LW0/t;J)Z
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p2

    .line 4
    .line 5
    iget v3, v0, LB1/a;->k:I

    .line 6
    .line 7
    iget-object v4, v0, LB1/a;->c:LB1/e;

    .line 8
    .line 9
    iget v5, v4, LB1/e;->b:I

    .line 10
    .line 11
    mul-int/lit8 v5, v5, 0x2

    .line 12
    .line 13
    div-int/2addr v3, v5

    .line 14
    iget v5, v0, LB1/a;->g:I

    .line 15
    .line 16
    sub-int v3, v5, v3

    .line 17
    .line 18
    iget v6, v0, LB1/a;->d:I

    .line 19
    .line 20
    invoke-static {v3, v6}, Lp0/M;->f(II)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iget v7, v4, LB1/e;->e:I

    .line 25
    .line 26
    mul-int v3, v3, v7

    .line 27
    .line 28
    const-wide/16 v8, 0x0

    .line 29
    .line 30
    cmp-long v11, v1, v8

    .line 31
    .line 32
    if-nez v11, :cond_0

    .line 33
    .line 34
    :goto_0
    const/4 v8, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/4 v8, 0x0

    .line 37
    :goto_1
    iget-object v9, v0, LB1/a;->e:[B

    .line 38
    .line 39
    if-nez v8, :cond_2

    .line 40
    .line 41
    iget v11, v0, LB1/a;->i:I

    .line 42
    .line 43
    if-ge v11, v3, :cond_2

    .line 44
    .line 45
    sub-int v11, v3, v11

    .line 46
    .line 47
    int-to-long v11, v11

    .line 48
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 49
    .line 50
    .line 51
    move-result-wide v11

    .line 52
    long-to-int v12, v11

    .line 53
    iget v11, v0, LB1/a;->i:I

    .line 54
    .line 55
    move-object/from16 v13, p1

    .line 56
    .line 57
    invoke-interface {v13, v9, v11, v12}, Lm0/j;->q([BII)I

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    const/4 v11, -0x1

    .line 62
    if-ne v9, v11, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget v11, v0, LB1/a;->i:I

    .line 66
    .line 67
    add-int/2addr v11, v9

    .line 68
    iput v11, v0, LB1/a;->i:I

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    iget v1, v0, LB1/a;->i:I

    .line 72
    .line 73
    iget v2, v4, LB1/e;->e:I

    .line 74
    .line 75
    div-int/2addr v1, v2

    .line 76
    if-lez v1, :cond_8

    .line 77
    .line 78
    const/4 v3, 0x0

    .line 79
    :goto_2
    iget-object v11, v0, LB1/a;->f:Lp0/E;

    .line 80
    .line 81
    if-ge v3, v1, :cond_7

    .line 82
    .line 83
    const/4 v12, 0x0

    .line 84
    :goto_3
    iget v13, v4, LB1/e;->b:I

    .line 85
    .line 86
    if-ge v12, v13, :cond_6

    .line 87
    .line 88
    iget-object v14, v11, Lp0/E;->a:[B

    .line 89
    .line 90
    mul-int v15, v3, v2

    .line 91
    .line 92
    mul-int/lit8 v16, v12, 0x4

    .line 93
    .line 94
    add-int v16, v16, v15

    .line 95
    .line 96
    mul-int/lit8 v15, v13, 0x4

    .line 97
    .line 98
    add-int v15, v15, v16

    .line 99
    .line 100
    div-int v17, v2, v13

    .line 101
    .line 102
    add-int/lit8 v17, v17, -0x4

    .line 103
    .line 104
    add-int/lit8 v18, v16, 0x1

    .line 105
    .line 106
    aget-byte v10, v9, v18

    .line 107
    .line 108
    and-int/lit16 v10, v10, 0xff

    .line 109
    .line 110
    shl-int/lit8 v10, v10, 0x8

    .line 111
    .line 112
    aget-byte v7, v9, v16

    .line 113
    .line 114
    and-int/lit16 v7, v7, 0xff

    .line 115
    .line 116
    or-int/2addr v7, v10

    .line 117
    int-to-short v7, v7

    .line 118
    add-int/lit8 v16, v16, 0x2

    .line 119
    .line 120
    aget-byte v10, v9, v16

    .line 121
    .line 122
    and-int/lit16 v10, v10, 0xff

    .line 123
    .line 124
    move/from16 v16, v8

    .line 125
    .line 126
    const/16 v8, 0x58

    .line 127
    .line 128
    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    sget-object v19, LB1/a;->n:[I

    .line 133
    .line 134
    aget v20, v19, v10

    .line 135
    .line 136
    mul-int v21, v3, v6

    .line 137
    .line 138
    mul-int v21, v21, v13

    .line 139
    .line 140
    add-int v21, v21, v12

    .line 141
    .line 142
    mul-int/lit8 v21, v21, 0x2

    .line 143
    .line 144
    and-int/lit16 v8, v7, 0xff

    .line 145
    .line 146
    int-to-byte v8, v8

    .line 147
    aput-byte v8, v14, v21

    .line 148
    .line 149
    add-int/lit8 v8, v21, 0x1

    .line 150
    .line 151
    move/from16 p2, v10

    .line 152
    .line 153
    shr-int/lit8 v10, v7, 0x8

    .line 154
    .line 155
    int-to-byte v10, v10

    .line 156
    aput-byte v10, v14, v8

    .line 157
    .line 158
    move/from16 v10, p2

    .line 159
    .line 160
    move/from16 v22, v5

    .line 161
    .line 162
    const/4 v8, 0x0

    .line 163
    :goto_4
    mul-int/lit8 v5, v17, 0x2

    .line 164
    .line 165
    if-ge v8, v5, :cond_5

    .line 166
    .line 167
    div-int/lit8 v5, v8, 0x8

    .line 168
    .line 169
    div-int/lit8 v23, v8, 0x2

    .line 170
    .line 171
    rem-int/lit8 v23, v23, 0x4

    .line 172
    .line 173
    mul-int v5, v5, v13

    .line 174
    .line 175
    mul-int/lit8 v5, v5, 0x4

    .line 176
    .line 177
    add-int/2addr v5, v15

    .line 178
    add-int v5, v5, v23

    .line 179
    .line 180
    aget-byte v5, v9, v5

    .line 181
    .line 182
    move-object/from16 v23, v9

    .line 183
    .line 184
    and-int/lit16 v9, v5, 0xff

    .line 185
    .line 186
    rem-int/lit8 v24, v8, 0x2

    .line 187
    .line 188
    if-nez v24, :cond_3

    .line 189
    .line 190
    and-int/lit8 v5, v5, 0xf

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_3
    shr-int/lit8 v5, v9, 0x4

    .line 194
    .line 195
    :goto_5
    and-int/lit8 v9, v5, 0x7

    .line 196
    .line 197
    mul-int/lit8 v9, v9, 0x2

    .line 198
    .line 199
    const/16 v18, 0x1

    .line 200
    .line 201
    add-int/lit8 v9, v9, 0x1

    .line 202
    .line 203
    mul-int v9, v9, v20

    .line 204
    .line 205
    shr-int/lit8 v9, v9, 0x3

    .line 206
    .line 207
    and-int/lit8 v20, v5, 0x8

    .line 208
    .line 209
    if-eqz v20, :cond_4

    .line 210
    .line 211
    neg-int v9, v9

    .line 212
    :cond_4
    add-int/2addr v7, v9

    .line 213
    const/16 v9, -0x8000

    .line 214
    .line 215
    move/from16 p2, v15

    .line 216
    .line 217
    const/16 v15, 0x7fff

    .line 218
    .line 219
    invoke-static {v7, v9, v15}, Lp0/M;->i(III)I

    .line 220
    .line 221
    .line 222
    move-result v7

    .line 223
    mul-int/lit8 v9, v13, 0x2

    .line 224
    .line 225
    add-int v21, v9, v21

    .line 226
    .line 227
    and-int/lit16 v9, v7, 0xff

    .line 228
    .line 229
    int-to-byte v9, v9

    .line 230
    aput-byte v9, v14, v21

    .line 231
    .line 232
    add-int/lit8 v9, v21, 0x1

    .line 233
    .line 234
    shr-int/lit8 v15, v7, 0x8

    .line 235
    .line 236
    int-to-byte v15, v15

    .line 237
    aput-byte v15, v14, v9

    .line 238
    .line 239
    sget-object v9, LB1/a;->m:[I

    .line 240
    .line 241
    aget v5, v9, v5

    .line 242
    .line 243
    add-int/2addr v10, v5

    .line 244
    const/4 v5, 0x0

    .line 245
    const/16 v9, 0x58

    .line 246
    .line 247
    invoke-static {v10, v5, v9}, Lp0/M;->i(III)I

    .line 248
    .line 249
    .line 250
    move-result v10

    .line 251
    aget v20, v19, v10

    .line 252
    .line 253
    add-int/lit8 v8, v8, 0x1

    .line 254
    .line 255
    move/from16 v15, p2

    .line 256
    .line 257
    move-object/from16 v9, v23

    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_5
    move-object/from16 v23, v9

    .line 261
    .line 262
    const/16 v18, 0x1

    .line 263
    .line 264
    add-int/lit8 v12, v12, 0x1

    .line 265
    .line 266
    move/from16 v8, v16

    .line 267
    .line 268
    move/from16 v5, v22

    .line 269
    .line 270
    goto/16 :goto_3

    .line 271
    .line 272
    :cond_6
    move/from16 v22, v5

    .line 273
    .line 274
    move/from16 v16, v8

    .line 275
    .line 276
    move-object/from16 v23, v9

    .line 277
    .line 278
    const/16 v18, 0x1

    .line 279
    .line 280
    add-int/lit8 v3, v3, 0x1

    .line 281
    .line 282
    goto/16 :goto_2

    .line 283
    .line 284
    :cond_7
    move/from16 v22, v5

    .line 285
    .line 286
    move/from16 v16, v8

    .line 287
    .line 288
    mul-int v6, v6, v1

    .line 289
    .line 290
    iget v3, v4, LB1/e;->b:I

    .line 291
    .line 292
    mul-int/lit8 v6, v6, 0x2

    .line 293
    .line 294
    mul-int v6, v6, v3

    .line 295
    .line 296
    const/4 v3, 0x0

    .line 297
    invoke-virtual {v11, v3}, Lp0/E;->L(I)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v11, v6}, Lp0/E;->K(I)V

    .line 301
    .line 302
    .line 303
    iget v3, v0, LB1/a;->i:I

    .line 304
    .line 305
    mul-int v1, v1, v2

    .line 306
    .line 307
    sub-int/2addr v3, v1

    .line 308
    iput v3, v0, LB1/a;->i:I

    .line 309
    .line 310
    iget v1, v11, Lp0/E;->c:I

    .line 311
    .line 312
    iget-object v2, v0, LB1/a;->b:LW0/L;

    .line 313
    .line 314
    invoke-interface {v2, v1, v11}, LW0/L;->e(ILp0/E;)V

    .line 315
    .line 316
    .line 317
    iget v2, v0, LB1/a;->k:I

    .line 318
    .line 319
    add-int/2addr v2, v1

    .line 320
    iput v2, v0, LB1/a;->k:I

    .line 321
    .line 322
    iget v1, v4, LB1/e;->b:I

    .line 323
    .line 324
    mul-int/lit8 v1, v1, 0x2

    .line 325
    .line 326
    div-int/2addr v2, v1

    .line 327
    move/from16 v1, v22

    .line 328
    .line 329
    if-lt v2, v1, :cond_9

    .line 330
    .line 331
    invoke-virtual {v0, v1}, LB1/a;->d(I)V

    .line 332
    .line 333
    .line 334
    goto :goto_6

    .line 335
    :cond_8
    move/from16 v16, v8

    .line 336
    .line 337
    :cond_9
    :goto_6
    if-eqz v16, :cond_a

    .line 338
    .line 339
    iget v1, v0, LB1/a;->k:I

    .line 340
    .line 341
    iget v2, v4, LB1/e;->b:I

    .line 342
    .line 343
    mul-int/lit8 v2, v2, 0x2

    .line 344
    .line 345
    div-int/2addr v1, v2

    .line 346
    if-lez v1, :cond_a

    .line 347
    .line 348
    invoke-virtual {v0, v1}, LB1/a;->d(I)V

    .line 349
    .line 350
    .line 351
    :cond_a
    return v16
.end method

.method public final c(IJ)V
    .locals 8

    .line 1
    new-instance v7, LB1/g;

    .line 2
    .line 3
    int-to-long v3, p1

    .line 4
    iget-object v1, p0, LB1/a;->c:LB1/e;

    .line 5
    .line 6
    iget v2, p0, LB1/a;->d:I

    .line 7
    .line 8
    move-object v0, v7

    .line 9
    move-wide v5, p2

    .line 10
    invoke-direct/range {v0 .. v6}, LB1/g;-><init>(LB1/e;IJJ)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, LB1/a;->a:LW0/u;

    .line 14
    .line 15
    invoke-interface {p1, v7}, LW0/u;->r(LW0/F;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, LB1/a;->h:Lm0/t;

    .line 19
    .line 20
    iget-object p2, p0, LB1/a;->b:LW0/L;

    .line 21
    .line 22
    invoke-interface {p2, p1}, LW0/L;->b(Lm0/t;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final d(I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-wide v2, v0, LB1/a;->j:J

    .line 6
    .line 7
    iget-wide v4, v0, LB1/a;->l:J

    .line 8
    .line 9
    iget-object v11, v0, LB1/a;->c:LB1/e;

    .line 10
    .line 11
    iget v6, v11, LB1/e;->c:I

    .line 12
    .line 13
    int-to-long v8, v6

    .line 14
    sget-object v6, Lp0/M;->a:Ljava/lang/String;

    .line 15
    .line 16
    sget-object v10, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 17
    .line 18
    const-wide/32 v6, 0xf4240

    .line 19
    .line 20
    .line 21
    invoke-static/range {v4 .. v10}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    add-long v13, v2, v4

    .line 26
    .line 27
    iget v2, v11, LB1/e;->b:I

    .line 28
    .line 29
    mul-int/lit8 v3, v1, 0x2

    .line 30
    .line 31
    mul-int v3, v3, v2

    .line 32
    .line 33
    iget v2, v0, LB1/a;->k:I

    .line 34
    .line 35
    sub-int v17, v2, v3

    .line 36
    .line 37
    const/16 v18, 0x0

    .line 38
    .line 39
    iget-object v12, v0, LB1/a;->b:LW0/L;

    .line 40
    .line 41
    const/4 v15, 0x1

    .line 42
    move/from16 v16, v3

    .line 43
    .line 44
    invoke-interface/range {v12 .. v18}, LW0/L;->d(JIIILW0/K;)V

    .line 45
    .line 46
    .line 47
    iget-wide v4, v0, LB1/a;->l:J

    .line 48
    .line 49
    int-to-long v1, v1

    .line 50
    add-long/2addr v4, v1

    .line 51
    iput-wide v4, v0, LB1/a;->l:J

    .line 52
    .line 53
    iget v1, v0, LB1/a;->k:I

    .line 54
    .line 55
    sub-int/2addr v1, v3

    .line 56
    iput v1, v0, LB1/a;->k:I

    .line 57
    .line 58
    return-void
.end method
