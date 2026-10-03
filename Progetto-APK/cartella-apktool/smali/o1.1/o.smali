.class public abstract Lo1/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x1d

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lo1/o;->a:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x69736f6d
        0x69736f32
        0x69736f33
        0x69736f34
        0x69736f35
        0x69736f36
        0x69736f39
        0x61766331
        0x68766331
        0x68657631
        0x61763031
        0x6d703431
        0x6d703432
        0x33673261
        0x33673262
        0x33677236
        0x33677336
        0x33676536
        0x33676736
        0x4d345620    # 1.8909645E8f
        0x4d344120    # 1.8901043E8f
        0x66347620
        0x6b646469
        0x4d345650
        0x71742020
        0x4d534e56    # 2.215704E8f
        0x64627931
        0x69736d6c
        0x70696666
    .end array-data
.end method

.method public static a(IZ)Z
    .locals 4

    .line 1
    ushr-int/lit8 v0, p0, 0x8

    .line 2
    .line 3
    const v1, 0x336770

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return v2

    .line 10
    :cond_0
    const v0, 0x68656963

    .line 11
    .line 12
    .line 13
    if-ne p0, v0, :cond_1

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    return v2

    .line 18
    :cond_1
    sget-object p1, Lo1/o;->a:[I

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    const/16 v3, 0x1d

    .line 23
    .line 24
    if-ge v1, v3, :cond_3

    .line 25
    .line 26
    aget v3, p1, v1

    .line 27
    .line 28
    if-ne v3, p0, :cond_2

    .line 29
    .line 30
    return v2

    .line 31
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    return v0
.end method

.method public static b(LW0/t;ZZ)LW0/J;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    invoke-interface/range {p0 .. p0}, LW0/t;->j()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const-wide/16 v4, 0x1000

    .line 10
    .line 11
    const-wide/16 v6, -0x1

    .line 12
    .line 13
    cmp-long v8, v2, v6

    .line 14
    .line 15
    if-eqz v8, :cond_1

    .line 16
    .line 17
    cmp-long v9, v2, v4

    .line 18
    .line 19
    if-lez v9, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-wide v4, v2

    .line 23
    :cond_1
    :goto_0
    long-to-int v5, v4

    .line 24
    new-instance v4, Lp0/E;

    .line 25
    .line 26
    const/16 v9, 0x40

    .line 27
    .line 28
    invoke-direct {v4, v9}, Lp0/E;-><init>(I)V

    .line 29
    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v10, 0x0

    .line 33
    const/4 v11, 0x0

    .line 34
    :goto_1
    if-ge v10, v5, :cond_2

    .line 35
    .line 36
    const/16 v13, 0x8

    .line 37
    .line 38
    invoke-virtual {v4, v13}, Lp0/E;->I(I)V

    .line 39
    .line 40
    .line 41
    iget-object v14, v4, Lp0/E;->a:[B

    .line 42
    .line 43
    const/4 v15, 0x1

    .line 44
    invoke-interface {v0, v14, v9, v13, v15}, LW0/t;->e([BIIZ)Z

    .line 45
    .line 46
    .line 47
    move-result v14

    .line 48
    if-nez v14, :cond_3

    .line 49
    .line 50
    :cond_2
    const/4 v6, 0x0

    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_3
    invoke-virtual {v4}, Lp0/E;->B()J

    .line 54
    .line 55
    .line 56
    move-result-wide v16

    .line 57
    invoke-virtual {v4}, Lp0/E;->l()I

    .line 58
    .line 59
    .line 60
    move-result v14

    .line 61
    const-wide/16 v18, 0x1

    .line 62
    .line 63
    cmp-long v20, v16, v18

    .line 64
    .line 65
    if-nez v20, :cond_4

    .line 66
    .line 67
    iget-object v15, v4, Lp0/E;->a:[B

    .line 68
    .line 69
    invoke-interface {v0, v13, v15, v13}, LW0/t;->c(I[BI)V

    .line 70
    .line 71
    .line 72
    const/16 v15, 0x10

    .line 73
    .line 74
    invoke-virtual {v4, v15}, Lp0/E;->K(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Lp0/E;->t()J

    .line 78
    .line 79
    .line 80
    move-result-wide v16

    .line 81
    move-wide/from16 v6, v16

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    const-wide/16 v19, 0x0

    .line 85
    .line 86
    cmp-long v15, v16, v19

    .line 87
    .line 88
    if-nez v15, :cond_5

    .line 89
    .line 90
    invoke-interface/range {p0 .. p0}, LW0/t;->j()J

    .line 91
    .line 92
    .line 93
    move-result-wide v19

    .line 94
    cmp-long v15, v19, v6

    .line 95
    .line 96
    if-eqz v15, :cond_5

    .line 97
    .line 98
    invoke-interface/range {p0 .. p0}, LW0/t;->f()J

    .line 99
    .line 100
    .line 101
    move-result-wide v15

    .line 102
    sub-long v19, v19, v15

    .line 103
    .line 104
    int-to-long v6, v13

    .line 105
    add-long v16, v19, v6

    .line 106
    .line 107
    :cond_5
    move-wide/from16 v6, v16

    .line 108
    .line 109
    const/16 v15, 0x8

    .line 110
    .line 111
    :goto_2
    int-to-long v12, v15

    .line 112
    cmp-long v19, v6, v12

    .line 113
    .line 114
    if-gez v19, :cond_6

    .line 115
    .line 116
    new-instance v0, Lo1/a;

    .line 117
    .line 118
    invoke-direct {v0, v14, v6, v7, v15}, Lo1/a;-><init>(IJI)V

    .line 119
    .line 120
    .line 121
    return-object v0

    .line 122
    :cond_6
    add-int/2addr v10, v15

    .line 123
    const v15, 0x6d6f6f76

    .line 124
    .line 125
    .line 126
    if-ne v14, v15, :cond_8

    .line 127
    .line 128
    long-to-int v7, v6

    .line 129
    add-int/2addr v5, v7

    .line 130
    if-eqz v8, :cond_7

    .line 131
    .line 132
    int-to-long v6, v5

    .line 133
    cmp-long v12, v6, v2

    .line 134
    .line 135
    if-lez v12, :cond_7

    .line 136
    .line 137
    long-to-int v5, v2

    .line 138
    :cond_7
    const-wide/16 v6, -0x1

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_8
    const v15, 0x6d6f6f66

    .line 142
    .line 143
    .line 144
    if-eq v14, v15, :cond_14

    .line 145
    .line 146
    const v15, 0x6d766578

    .line 147
    .line 148
    .line 149
    if-ne v14, v15, :cond_9

    .line 150
    .line 151
    goto/16 :goto_7

    .line 152
    .line 153
    :cond_9
    const v15, 0x6d646174

    .line 154
    .line 155
    .line 156
    move-wide/from16 v19, v2

    .line 157
    .line 158
    if-ne v14, v15, :cond_a

    .line 159
    .line 160
    const/4 v11, 0x1

    .line 161
    :cond_a
    int-to-long v2, v10

    .line 162
    add-long/2addr v2, v6

    .line 163
    sub-long/2addr v2, v12

    .line 164
    move/from16 v21, v10

    .line 165
    .line 166
    int-to-long v9, v5

    .line 167
    cmp-long v22, v2, v9

    .line 168
    .line 169
    if-ltz v22, :cond_b

    .line 170
    .line 171
    :goto_3
    const/4 v9, 0x0

    .line 172
    goto/16 :goto_8

    .line 173
    .line 174
    :cond_b
    sub-long/2addr v6, v12

    .line 175
    long-to-int v2, v6

    .line 176
    add-int v10, v21, v2

    .line 177
    .line 178
    const v3, 0x66747970

    .line 179
    .line 180
    .line 181
    if-ne v14, v3, :cond_12

    .line 182
    .line 183
    const/16 v3, 0x8

    .line 184
    .line 185
    if-ge v2, v3, :cond_c

    .line 186
    .line 187
    new-instance v0, Lo1/a;

    .line 188
    .line 189
    int-to-long v1, v2

    .line 190
    invoke-direct {v0, v14, v1, v2, v3}, Lo1/a;-><init>(IJI)V

    .line 191
    .line 192
    .line 193
    return-object v0

    .line 194
    :cond_c
    invoke-virtual {v4, v2}, Lp0/E;->I(I)V

    .line 195
    .line 196
    .line 197
    iget-object v3, v4, Lp0/E;->a:[B

    .line 198
    .line 199
    const/4 v6, 0x0

    .line 200
    invoke-interface {v0, v6, v3, v2}, LW0/t;->c(I[BI)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4}, Lp0/E;->l()I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    invoke-static {v2, v1}, Lo1/o;->a(IZ)Z

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    if-eqz v3, :cond_d

    .line 212
    .line 213
    const/4 v11, 0x1

    .line 214
    :cond_d
    const/4 v3, 0x4

    .line 215
    invoke-virtual {v4, v3}, Lp0/E;->M(I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4}, Lp0/E;->a()I

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    div-int/2addr v7, v3

    .line 223
    if-nez v11, :cond_10

    .line 224
    .line 225
    if-lez v7, :cond_10

    .line 226
    .line 227
    new-array v12, v7, [I

    .line 228
    .line 229
    const/4 v3, 0x0

    .line 230
    :goto_4
    if-ge v3, v7, :cond_f

    .line 231
    .line 232
    invoke-virtual {v4}, Lp0/E;->l()I

    .line 233
    .line 234
    .line 235
    move-result v9

    .line 236
    aput v9, v12, v3

    .line 237
    .line 238
    invoke-static {v9, v1}, Lo1/o;->a(IZ)Z

    .line 239
    .line 240
    .line 241
    move-result v9

    .line 242
    if-eqz v9, :cond_e

    .line 243
    .line 244
    const/4 v15, 0x1

    .line 245
    goto :goto_5

    .line 246
    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_f
    move v15, v11

    .line 250
    goto :goto_5

    .line 251
    :cond_10
    move v15, v11

    .line 252
    const/4 v12, 0x0

    .line 253
    :goto_5
    if-nez v15, :cond_11

    .line 254
    .line 255
    new-instance v0, LK/k;

    .line 256
    .line 257
    invoke-direct {v0, v12, v2}, LK/k;-><init>([II)V

    .line 258
    .line 259
    .line 260
    return-object v0

    .line 261
    :cond_11
    move v11, v15

    .line 262
    goto :goto_6

    .line 263
    :cond_12
    const/4 v6, 0x0

    .line 264
    if-eqz v2, :cond_13

    .line 265
    .line 266
    invoke-interface {v0, v2}, LW0/t;->g(I)V

    .line 267
    .line 268
    .line 269
    :cond_13
    :goto_6
    move-wide/from16 v2, v19

    .line 270
    .line 271
    const-wide/16 v6, -0x1

    .line 272
    .line 273
    const/4 v9, 0x0

    .line 274
    goto/16 :goto_1

    .line 275
    .line 276
    :cond_14
    :goto_7
    const/4 v9, 0x1

    .line 277
    :goto_8
    if-nez v11, :cond_15

    .line 278
    .line 279
    sget-object v0, Lo1/j;->I:Lo1/j;

    .line 280
    .line 281
    return-object v0

    .line 282
    :cond_15
    move/from16 v0, p1

    .line 283
    .line 284
    if-eq v0, v9, :cond_17

    .line 285
    .line 286
    if-eqz v9, :cond_16

    .line 287
    .line 288
    sget-object v0, Lo1/j;->G:Lo1/j;

    .line 289
    .line 290
    goto :goto_9

    .line 291
    :cond_16
    sget-object v0, Lo1/j;->H:Lo1/j;

    .line 292
    .line 293
    :goto_9
    return-object v0

    .line 294
    :cond_17
    const/4 v0, 0x0

    .line 295
    return-object v0
.end method
