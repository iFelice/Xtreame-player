.class public final Lcom/google/android/gms/internal/ads/c3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/d3;


# static fields
.field public static final m:[I

.field public static final n:[I


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/N;

.field public final b:Lcom/google/android/gms/internal/ads/e0;

.field public final c:Lm0/h;

.field public final d:I

.field public final e:[B

.field public final f:Lcom/google/android/gms/internal/ads/jr;

.field public final g:I

.field public final h:Lcom/google/android/gms/internal/ads/p0;

.field public i:I

.field public j:J

.field public k:I

.field public l:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/c3;->m:[I

    const/16 v0, 0x59

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/c3;->n:[I

    return-void

    nop

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

.method public constructor <init>(Lcom/google/android/gms/internal/ads/N;Lcom/google/android/gms/internal/ads/e0;Lm0/h;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c3;->a:Lcom/google/android/gms/internal/ads/N;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/c3;->b:Lcom/google/android/gms/internal/ads/e0;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/c3;->c:Lm0/h;

    .line 9
    .line 10
    iget p1, p3, Lm0/h;->c:I

    .line 11
    .line 12
    div-int/lit8 p1, p1, 0xa

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lcom/google/android/gms/internal/ads/c3;->g:I

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/jr;

    .line 22
    .line 23
    iget-object v1, p3, Lm0/h;->f:[B

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/jr;-><init>([B)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->u()I

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->u()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/google/android/gms/internal/ads/c3;->d:I

    .line 36
    .line 37
    iget v1, p3, Lm0/h;->b:I

    .line 38
    .line 39
    mul-int/lit8 v2, v1, 0x4

    .line 40
    .line 41
    iget v3, p3, Lm0/h;->d:I

    .line 42
    .line 43
    sub-int v2, v3, v2

    .line 44
    .line 45
    iget v4, p3, Lm0/h;->e:I

    .line 46
    .line 47
    mul-int v4, v4, v1

    .line 48
    .line 49
    const/16 v5, 0x8

    .line 50
    .line 51
    invoke-static {v2, v5, v4, p2}, LA0/O;->v(IIII)I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-ne v0, p2, :cond_0

    .line 56
    .line 57
    sget p2, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 58
    .line 59
    add-int p2, p1, v0

    .line 60
    .line 61
    add-int/lit8 p2, p2, -0x1

    .line 62
    .line 63
    div-int/2addr p2, v0

    .line 64
    mul-int v3, v3, p2

    .line 65
    .line 66
    new-array v2, v3, [B

    .line 67
    .line 68
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/c3;->e:[B

    .line 69
    .line 70
    new-instance v2, Lcom/google/android/gms/internal/ads/jr;

    .line 71
    .line 72
    add-int v3, v0, v0

    .line 73
    .line 74
    mul-int v3, v3, v1

    .line 75
    .line 76
    mul-int v3, v3, p2

    .line 77
    .line 78
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 79
    .line 80
    .line 81
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/c3;->f:Lcom/google/android/gms/internal/ads/jr;

    .line 82
    .line 83
    iget p2, p3, Lm0/h;->c:I

    .line 84
    .line 85
    iget v2, p3, Lm0/h;->d:I

    .line 86
    .line 87
    mul-int p2, p2, v2

    .line 88
    .line 89
    mul-int/lit8 p2, p2, 0x8

    .line 90
    .line 91
    div-int/2addr p2, v0

    .line 92
    new-instance v0, Lcom/google/android/gms/internal/ads/K;

    .line 93
    .line 94
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v2, "audio/raw"

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iput p2, v0, Lcom/google/android/gms/internal/ads/K;->g:I

    .line 103
    .line 104
    iput p2, v0, Lcom/google/android/gms/internal/ads/K;->h:I

    .line 105
    .line 106
    add-int/2addr p1, p1

    .line 107
    mul-int p1, p1, v1

    .line 108
    .line 109
    iput p1, v0, Lcom/google/android/gms/internal/ads/K;->m:I

    .line 110
    .line 111
    iget p1, p3, Lm0/h;->b:I

    .line 112
    .line 113
    iput p1, v0, Lcom/google/android/gms/internal/ads/K;->z:I

    .line 114
    .line 115
    iget p1, p3, Lm0/h;->c:I

    .line 116
    .line 117
    iput p1, v0, Lcom/google/android/gms/internal/ads/K;->A:I

    .line 118
    .line 119
    const/4 p1, 0x2

    .line 120
    iput p1, v0, Lcom/google/android/gms/internal/ads/K;->B:I

    .line 121
    .line 122
    new-instance p1, Lcom/google/android/gms/internal/ads/p0;

    .line 123
    .line 124
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 125
    .line 126
    .line 127
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c3;->h:Lcom/google/android/gms/internal/ads/p0;

    .line 128
    .line 129
    return-void

    .line 130
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string p3, "Expected frames per block: "

    .line 133
    .line 134
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string p2, "; got: "

    .line 141
    .line 142
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    const/4 p2, 0x0

    .line 153
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    throw p1
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/c3;->i:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/c3;->j:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/c3;->k:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/c3;->l:J

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/M;J)Z
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p2

    .line 4
    .line 5
    iget v3, v0, Lcom/google/android/gms/internal/ads/c3;->k:I

    .line 6
    .line 7
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/c3;->c:Lm0/h;

    .line 8
    .line 9
    iget v5, v4, Lm0/h;->b:I

    .line 10
    .line 11
    add-int/2addr v5, v5

    .line 12
    div-int/2addr v3, v5

    .line 13
    iget v5, v0, Lcom/google/android/gms/internal/ads/c3;->g:I

    .line 14
    .line 15
    sub-int v3, v5, v3

    .line 16
    .line 17
    sget v6, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 18
    .line 19
    iget v6, v0, Lcom/google/android/gms/internal/ads/c3;->d:I

    .line 20
    .line 21
    add-int/2addr v3, v6

    .line 22
    const/4 v7, -0x1

    .line 23
    add-int/2addr v3, v7

    .line 24
    div-int/2addr v3, v6

    .line 25
    iget v8, v4, Lm0/h;->d:I

    .line 26
    .line 27
    mul-int v3, v3, v8

    .line 28
    .line 29
    const-wide/16 v9, 0x0

    .line 30
    .line 31
    cmp-long v12, v1, v9

    .line 32
    .line 33
    if-nez v12, :cond_0

    .line 34
    .line 35
    :goto_0
    const/4 v9, 0x1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const/4 v9, 0x0

    .line 38
    :goto_1
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/c3;->e:[B

    .line 39
    .line 40
    if-nez v9, :cond_2

    .line 41
    .line 42
    iget v12, v0, Lcom/google/android/gms/internal/ads/c3;->i:I

    .line 43
    .line 44
    if-ge v12, v3, :cond_2

    .line 45
    .line 46
    sub-int v12, v3, v12

    .line 47
    .line 48
    int-to-long v12, v12

    .line 49
    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide v12

    .line 53
    long-to-int v13, v12

    .line 54
    iget v12, v0, Lcom/google/android/gms/internal/ads/c3;->i:I

    .line 55
    .line 56
    move-object/from16 v14, p1

    .line 57
    .line 58
    invoke-interface {v14, v10, v12, v13}, Lcom/google/android/gms/internal/ads/HL;->e([BII)I

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    if-ne v10, v7, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget v12, v0, Lcom/google/android/gms/internal/ads/c3;->i:I

    .line 66
    .line 67
    add-int/2addr v12, v10

    .line 68
    iput v12, v0, Lcom/google/android/gms/internal/ads/c3;->i:I

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    iget v1, v0, Lcom/google/android/gms/internal/ads/c3;->i:I

    .line 72
    .line 73
    iget v2, v4, Lm0/h;->d:I

    .line 74
    .line 75
    div-int/2addr v1, v2

    .line 76
    if-lez v1, :cond_8

    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    :goto_2
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/c3;->f:Lcom/google/android/gms/internal/ads/jr;

    .line 80
    .line 81
    if-ge v2, v1, :cond_7

    .line 82
    .line 83
    const/4 v7, 0x0

    .line 84
    :goto_3
    iget v12, v4, Lm0/h;->b:I

    .line 85
    .line 86
    if-ge v7, v12, :cond_6

    .line 87
    .line 88
    iget-object v13, v3, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 89
    .line 90
    iget v14, v4, Lm0/h;->d:I

    .line 91
    .line 92
    mul-int v15, v2, v14

    .line 93
    .line 94
    div-int/2addr v14, v12

    .line 95
    add-int/lit8 v14, v14, -0x4

    .line 96
    .line 97
    mul-int/lit8 v16, v7, 0x4

    .line 98
    .line 99
    add-int v16, v16, v15

    .line 100
    .line 101
    add-int/lit8 v15, v16, 0x1

    .line 102
    .line 103
    aget-byte v15, v10, v15

    .line 104
    .line 105
    and-int/lit16 v15, v15, 0xff

    .line 106
    .line 107
    aget-byte v11, v10, v16

    .line 108
    .line 109
    and-int/lit16 v11, v11, 0xff

    .line 110
    .line 111
    add-int/lit8 v17, v16, 0x2

    .line 112
    .line 113
    aget-byte v8, v10, v17

    .line 114
    .line 115
    and-int/lit16 v8, v8, 0xff

    .line 116
    .line 117
    move/from16 v17, v9

    .line 118
    .line 119
    const/16 v9, 0x58

    .line 120
    .line 121
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    sget-object v19, Lcom/google/android/gms/internal/ads/c3;->n:[I

    .line 126
    .line 127
    aget v20, v19, v8

    .line 128
    .line 129
    mul-int v21, v2, v6

    .line 130
    .line 131
    mul-int v21, v21, v12

    .line 132
    .line 133
    add-int v21, v21, v7

    .line 134
    .line 135
    shl-int/lit8 v15, v15, 0x8

    .line 136
    .line 137
    or-int/2addr v11, v15

    .line 138
    int-to-short v11, v11

    .line 139
    and-int/lit16 v15, v11, 0xff

    .line 140
    .line 141
    add-int v21, v21, v21

    .line 142
    .line 143
    int-to-byte v15, v15

    .line 144
    aput-byte v15, v13, v21

    .line 145
    .line 146
    add-int/lit8 v15, v21, 0x1

    .line 147
    .line 148
    shr-int/lit8 v9, v11, 0x8

    .line 149
    .line 150
    int-to-byte v9, v9

    .line 151
    aput-byte v9, v13, v15

    .line 152
    .line 153
    const/4 v9, 0x0

    .line 154
    :goto_4
    add-int v15, v14, v14

    .line 155
    .line 156
    if-ge v9, v15, :cond_5

    .line 157
    .line 158
    mul-int/lit8 v15, v12, 0x4

    .line 159
    .line 160
    add-int v15, v15, v16

    .line 161
    .line 162
    div-int/lit8 v22, v9, 0x8

    .line 163
    .line 164
    div-int/lit8 v23, v9, 0x2

    .line 165
    .line 166
    rem-int/lit8 v23, v23, 0x4

    .line 167
    .line 168
    mul-int v22, v22, v12

    .line 169
    .line 170
    mul-int/lit8 v22, v22, 0x4

    .line 171
    .line 172
    add-int v22, v22, v15

    .line 173
    .line 174
    add-int v22, v22, v23

    .line 175
    .line 176
    aget-byte v15, v10, v22

    .line 177
    .line 178
    move-object/from16 v22, v10

    .line 179
    .line 180
    and-int/lit16 v10, v15, 0xff

    .line 181
    .line 182
    rem-int/lit8 v23, v9, 0x2

    .line 183
    .line 184
    if-nez v23, :cond_3

    .line 185
    .line 186
    and-int/lit8 v10, v15, 0xf

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_3
    shr-int/lit8 v10, v10, 0x4

    .line 190
    .line 191
    :goto_5
    and-int/lit8 v15, v10, 0x7

    .line 192
    .line 193
    add-int/2addr v15, v15

    .line 194
    const/16 v18, 0x1

    .line 195
    .line 196
    add-int/lit8 v15, v15, 0x1

    .line 197
    .line 198
    mul-int v15, v15, v20

    .line 199
    .line 200
    and-int/lit8 v20, v10, 0x8

    .line 201
    .line 202
    shr-int/lit8 v15, v15, 0x3

    .line 203
    .line 204
    if-eqz v20, :cond_4

    .line 205
    .line 206
    neg-int v15, v15

    .line 207
    :cond_4
    add-int/2addr v11, v15

    .line 208
    const/16 v15, 0x7fff

    .line 209
    .line 210
    invoke-static {v11, v15}, Ljava/lang/Math;->min(II)I

    .line 211
    .line 212
    .line 213
    move-result v11

    .line 214
    const/16 v15, -0x8000

    .line 215
    .line 216
    invoke-static {v15, v11}, Ljava/lang/Math;->max(II)I

    .line 217
    .line 218
    .line 219
    move-result v11

    .line 220
    add-int v15, v12, v12

    .line 221
    .line 222
    add-int v21, v15, v21

    .line 223
    .line 224
    and-int/lit16 v15, v11, 0xff

    .line 225
    .line 226
    int-to-byte v15, v15

    .line 227
    aput-byte v15, v13, v21

    .line 228
    .line 229
    add-int/lit8 v15, v21, 0x1

    .line 230
    .line 231
    move/from16 v20, v12

    .line 232
    .line 233
    shr-int/lit8 v12, v11, 0x8

    .line 234
    .line 235
    int-to-byte v12, v12

    .line 236
    aput-byte v12, v13, v15

    .line 237
    .line 238
    sget-object v12, Lcom/google/android/gms/internal/ads/c3;->m:[I

    .line 239
    .line 240
    aget v10, v12, v10

    .line 241
    .line 242
    add-int/2addr v8, v10

    .line 243
    const/16 v10, 0x58

    .line 244
    .line 245
    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    .line 246
    .line 247
    .line 248
    move-result v8

    .line 249
    const/4 v12, 0x0

    .line 250
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    .line 251
    .line 252
    .line 253
    move-result v8

    .line 254
    aget v12, v19, v8

    .line 255
    .line 256
    add-int/lit8 v9, v9, 0x1

    .line 257
    .line 258
    move-object/from16 v10, v22

    .line 259
    .line 260
    move/from16 v24, v20

    .line 261
    .line 262
    move/from16 v20, v12

    .line 263
    .line 264
    move/from16 v12, v24

    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_5
    move-object/from16 v22, v10

    .line 268
    .line 269
    const/16 v18, 0x1

    .line 270
    .line 271
    add-int/lit8 v7, v7, 0x1

    .line 272
    .line 273
    move/from16 v9, v17

    .line 274
    .line 275
    goto/16 :goto_3

    .line 276
    .line 277
    :cond_6
    move/from16 v17, v9

    .line 278
    .line 279
    move-object/from16 v22, v10

    .line 280
    .line 281
    const/16 v18, 0x1

    .line 282
    .line 283
    add-int/lit8 v2, v2, 0x1

    .line 284
    .line 285
    goto/16 :goto_2

    .line 286
    .line 287
    :cond_7
    move/from16 v17, v9

    .line 288
    .line 289
    mul-int v6, v6, v1

    .line 290
    .line 291
    add-int/2addr v6, v6

    .line 292
    iget v2, v4, Lm0/h;->b:I

    .line 293
    .line 294
    mul-int v6, v6, v2

    .line 295
    .line 296
    const/4 v2, 0x0

    .line 297
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/jr;->i(I)V

    .line 301
    .line 302
    .line 303
    iget v2, v0, Lcom/google/android/gms/internal/ads/c3;->i:I

    .line 304
    .line 305
    iget v6, v4, Lm0/h;->d:I

    .line 306
    .line 307
    mul-int v1, v1, v6

    .line 308
    .line 309
    sub-int/2addr v2, v1

    .line 310
    iput v2, v0, Lcom/google/android/gms/internal/ads/c3;->i:I

    .line 311
    .line 312
    iget v1, v3, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 313
    .line 314
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/c3;->b:Lcom/google/android/gms/internal/ads/e0;

    .line 315
    .line 316
    invoke-interface {v2, v1, v3}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 317
    .line 318
    .line 319
    iget v2, v0, Lcom/google/android/gms/internal/ads/c3;->k:I

    .line 320
    .line 321
    add-int/2addr v2, v1

    .line 322
    iput v2, v0, Lcom/google/android/gms/internal/ads/c3;->k:I

    .line 323
    .line 324
    iget v1, v4, Lm0/h;->b:I

    .line 325
    .line 326
    add-int/2addr v1, v1

    .line 327
    div-int/2addr v2, v1

    .line 328
    if-lt v2, v5, :cond_9

    .line 329
    .line 330
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/c3;->c(I)V

    .line 331
    .line 332
    .line 333
    goto :goto_6

    .line 334
    :cond_8
    move/from16 v17, v9

    .line 335
    .line 336
    :cond_9
    :goto_6
    if-eqz v17, :cond_a

    .line 337
    .line 338
    iget v1, v0, Lcom/google/android/gms/internal/ads/c3;->k:I

    .line 339
    .line 340
    iget v2, v4, Lm0/h;->b:I

    .line 341
    .line 342
    add-int/2addr v2, v2

    .line 343
    div-int/2addr v1, v2

    .line 344
    if-lez v1, :cond_a

    .line 345
    .line 346
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/c3;->c(I)V

    .line 347
    .line 348
    .line 349
    :cond_a
    return v17
.end method

.method public final c(I)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/c3;->c:Lm0/h;

    .line 6
    .line 7
    iget v3, v2, Lm0/h;->c:I

    .line 8
    .line 9
    int-to-long v8, v3

    .line 10
    sget-object v10, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 11
    .line 12
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/c3;->j:J

    .line 13
    .line 14
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/c3;->l:J

    .line 15
    .line 16
    const-wide/32 v6, 0xf4240

    .line 17
    .line 18
    .line 19
    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    add-long v14, v11, v3

    .line 24
    .line 25
    add-int v3, v1, v1

    .line 26
    .line 27
    iget v2, v2, Lm0/h;->b:I

    .line 28
    .line 29
    mul-int v3, v3, v2

    .line 30
    .line 31
    iget v2, v0, Lcom/google/android/gms/internal/ads/c3;->k:I

    .line 32
    .line 33
    sub-int v18, v2, v3

    .line 34
    .line 35
    const/16 v19, 0x0

    .line 36
    .line 37
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/c3;->b:Lcom/google/android/gms/internal/ads/e0;

    .line 38
    .line 39
    const/16 v16, 0x1

    .line 40
    .line 41
    move/from16 v17, v3

    .line 42
    .line 43
    invoke-interface/range {v13 .. v19}, Lcom/google/android/gms/internal/ads/e0;->b(JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 44
    .line 45
    .line 46
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/c3;->l:J

    .line 47
    .line 48
    int-to-long v1, v1

    .line 49
    add-long/2addr v4, v1

    .line 50
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/c3;->l:J

    .line 51
    .line 52
    iget v1, v0, Lcom/google/android/gms/internal/ads/c3;->k:I

    .line 53
    .line 54
    sub-int/2addr v1, v3

    .line 55
    iput v1, v0, Lcom/google/android/gms/internal/ads/c3;->k:I

    .line 56
    .line 57
    return-void
.end method

.method public final zza(IJ)V
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/g3;

    .line 2
    .line 3
    iget v2, p0, Lcom/google/android/gms/internal/ads/c3;->d:I

    .line 4
    .line 5
    int-to-long v3, p1

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/c3;->c:Lm0/h;

    .line 7
    .line 8
    move-object v0, v7

    .line 9
    move-wide v5, p2

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/g3;-><init>(Lm0/h;IJJ)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/c3;->a:Lcom/google/android/gms/internal/ads/N;

    .line 14
    .line 15
    invoke-interface {p1, v7}, Lcom/google/android/gms/internal/ads/N;->g(Lcom/google/android/gms/internal/ads/Y;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/c3;->b:Lcom/google/android/gms/internal/ads/e0;

    .line 19
    .line 20
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/c3;->h:Lcom/google/android/gms/internal/ads/p0;

    .line 21
    .line 22
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
