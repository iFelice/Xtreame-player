.class public final Lcom/google/android/gms/internal/ads/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/W1;


# instance fields
.field public final G:Lcom/google/android/gms/internal/ads/jr;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lcom/google/android/gms/internal/ads/jr;

    .line 8
    .line 9
    const/16 v0, 0xa

    .line 10
    .line 11
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/V;->G:Lcom/google/android/gms/internal/ads/jr;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/google/android/gms/internal/ads/jr;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/jr;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/V;->G:Lcom/google/android/gms/internal/ads/jr;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/M;Lcom/google/android/gms/internal/ads/kH;)Lcom/google/android/gms/internal/ads/Q9;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0xa

    .line 5
    .line 6
    move-object/from16 v3, p0

    .line 7
    .line 8
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/V;->G:Lcom/google/android/gms/internal/ads/jr;

    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    :goto_0
    :try_start_0
    iget-object v9, v4, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 14
    .line 15
    invoke-interface {v0, v6, v9, v2}, Lcom/google/android/gms/internal/ads/M;->g(I[BI)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->y()I

    .line 22
    .line 23
    .line 24
    move-result v9

    .line 25
    const v10, 0x494433

    .line 26
    .line 27
    .line 28
    if-eq v9, v10, :cond_0

    .line 29
    .line 30
    goto/16 :goto_a

    .line 31
    .line 32
    :cond_0
    const/4 v9, 0x3

    .line 33
    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->v()I

    .line 37
    .line 38
    .line 39
    move-result v11

    .line 40
    add-int/lit8 v12, v11, 0xa

    .line 41
    .line 42
    if-nez v7, :cond_10

    .line 43
    .line 44
    new-array v7, v12, [B

    .line 45
    .line 46
    iget-object v13, v4, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 47
    .line 48
    invoke-static {v13, v6, v7, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v2, v7, v11}, Lcom/google/android/gms/internal/ads/M;->g(I[BI)V

    .line 52
    .line 53
    .line 54
    new-instance v11, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    new-instance v13, Lcom/google/android/gms/internal/ads/jr;

    .line 60
    .line 61
    invoke-direct {v13, v7, v12}, Lcom/google/android/gms/internal/ads/jr;-><init>([BI)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    const/4 v14, 0x2

    .line 69
    const/4 v15, 0x4

    .line 70
    const-string v5, "Id3Decoder"

    .line 71
    .line 72
    if-ge v7, v2, :cond_1

    .line 73
    .line 74
    const-string v7, "Data too short to be an ID3 tag"

    .line 75
    .line 76
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :goto_1
    const/4 v10, 0x0

    .line 80
    goto/16 :goto_5

    .line 81
    .line 82
    :cond_1
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->y()I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-eq v7, v10, :cond_2

    .line 87
    .line 88
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    new-array v9, v1, [Ljava/lang/Object;

    .line 93
    .line 94
    aput-object v7, v9, v6

    .line 95
    .line 96
    const-string v7, "%06X"

    .line 97
    .line 98
    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    const-string v9, "Unexpected first three bytes of ID3 tag header: 0x"

    .line 103
    .line 104
    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->v()I

    .line 124
    .line 125
    .line 126
    move-result v16

    .line 127
    if-ne v7, v14, :cond_3

    .line 128
    .line 129
    and-int/lit8 v9, v10, 0x40

    .line 130
    .line 131
    if-eqz v9, :cond_4

    .line 132
    .line 133
    const-string v7, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme"

    .line 134
    .line 135
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    if-ne v7, v9, :cond_5

    .line 140
    .line 141
    and-int/lit8 v9, v10, 0x40

    .line 142
    .line 143
    if-eqz v9, :cond_4

    .line 144
    .line 145
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 150
    .line 151
    .line 152
    add-int/2addr v9, v15

    .line 153
    sub-int v16, v16, v9

    .line 154
    .line 155
    :cond_4
    :goto_2
    move/from16 v2, v16

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_5
    if-ne v7, v15, :cond_8

    .line 159
    .line 160
    and-int/lit8 v9, v10, 0x40

    .line 161
    .line 162
    if-eqz v9, :cond_6

    .line 163
    .line 164
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->v()I

    .line 165
    .line 166
    .line 167
    move-result v9

    .line 168
    add-int/lit8 v2, v9, -0x4

    .line 169
    .line 170
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 171
    .line 172
    .line 173
    sub-int v16, v16, v9

    .line 174
    .line 175
    :cond_6
    and-int/lit8 v2, v10, 0x10

    .line 176
    .line 177
    if-eqz v2, :cond_4

    .line 178
    .line 179
    add-int/lit8 v16, v16, -0xa

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :goto_3
    if-ge v7, v15, :cond_7

    .line 183
    .line 184
    and-int/lit16 v9, v10, 0x80

    .line 185
    .line 186
    if-eqz v9, :cond_7

    .line 187
    .line 188
    const/4 v9, 0x1

    .line 189
    goto :goto_4

    .line 190
    :cond_7
    const/4 v9, 0x0

    .line 191
    :goto_4
    new-instance v10, Li1/h;

    .line 192
    .line 193
    invoke-direct {v10, v9, v7, v2}, Li1/h;-><init>(ZII)V

    .line 194
    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_8
    const-string v2, "Skipped ID3 tag with unsupported majorVersion="

    .line 198
    .line 199
    invoke-static {v2, v7, v5}, La/r;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :goto_5
    if-nez v10, :cond_9

    .line 204
    .line 205
    :goto_6
    move-object/from16 v5, p2

    .line 206
    .line 207
    const/4 v7, 0x0

    .line 208
    goto :goto_9

    .line 209
    :cond_9
    iget v2, v13, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 210
    .line 211
    iget v7, v10, Li1/h;->a:I

    .line 212
    .line 213
    if-ne v7, v14, :cond_a

    .line 214
    .line 215
    const/4 v9, 0x6

    .line 216
    goto :goto_7

    .line 217
    :cond_a
    const/16 v9, 0xa

    .line 218
    .line 219
    :goto_7
    iget-boolean v14, v10, Li1/h;->b:Z

    .line 220
    .line 221
    iget v10, v10, Li1/h;->c:I

    .line 222
    .line 223
    if-eqz v14, :cond_b

    .line 224
    .line 225
    invoke-static {v10, v13}, Lcom/google/android/gms/internal/ads/nH;->m(ILcom/google/android/gms/internal/ads/jr;)I

    .line 226
    .line 227
    .line 228
    move-result v10

    .line 229
    :cond_b
    add-int/2addr v2, v10

    .line 230
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/jr;->i(I)V

    .line 231
    .line 232
    .line 233
    invoke-static {v13, v7, v9, v6}, Lcom/google/android/gms/internal/ads/nH;->u(Lcom/google/android/gms/internal/ads/jr;IIZ)Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-nez v2, :cond_d

    .line 238
    .line 239
    if-ne v7, v15, :cond_c

    .line 240
    .line 241
    invoke-static {v13, v15, v9, v1}, Lcom/google/android/gms/internal/ads/nH;->u(Lcom/google/android/gms/internal/ads/jr;IIZ)Z

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    if-eqz v2, :cond_c

    .line 246
    .line 247
    const/4 v2, 0x1

    .line 248
    goto :goto_8

    .line 249
    :cond_c
    const-string v2, "Failed to validate ID3 tag with majorVersion="

    .line 250
    .line 251
    invoke-static {v2, v7, v5}, La/r;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 252
    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_d
    const/4 v2, 0x0

    .line 256
    :cond_e
    :goto_8
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    if-lt v5, v9, :cond_f

    .line 261
    .line 262
    move-object/from16 v5, p2

    .line 263
    .line 264
    invoke-static {v7, v13, v2, v9, v5}, Lcom/google/android/gms/internal/ads/nH;->v(ILcom/google/android/gms/internal/ads/jr;ZILcom/google/android/gms/internal/ads/kH;)Lcom/google/android/gms/internal/ads/P0;

    .line 265
    .line 266
    .line 267
    move-result-object v10

    .line 268
    if-eqz v10, :cond_e

    .line 269
    .line 270
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    goto :goto_8

    .line 274
    :cond_f
    move-object/from16 v5, p2

    .line 275
    .line 276
    new-instance v2, Lcom/google/android/gms/internal/ads/Q9;

    .line 277
    .line 278
    invoke-direct {v2, v11}, Lcom/google/android/gms/internal/ads/Q9;-><init>(Ljava/util/List;)V

    .line 279
    .line 280
    .line 281
    move-object v7, v2

    .line 282
    goto :goto_9

    .line 283
    :cond_10
    move-object/from16 v5, p2

    .line 284
    .line 285
    invoke-interface {v0, v11}, Lcom/google/android/gms/internal/ads/M;->zzg(I)V

    .line 286
    .line 287
    .line 288
    :goto_9
    add-int/2addr v8, v12

    .line 289
    const/16 v2, 0xa

    .line 290
    .line 291
    goto/16 :goto_0

    .line 292
    .line 293
    :catch_0
    :goto_a
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 294
    .line 295
    .line 296
    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/ads/M;->zzg(I)V

    .line 297
    .line 298
    .line 299
    return-object v7
.end method

.method public final d([BIILt0/d;)V
    .locals 16

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    add-int v1, v0, p3

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/V;->G:Lcom/google/android/gms/internal/ads/jr;

    .line 8
    .line 9
    move-object/from16 v4, p1

    .line 10
    .line 11
    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/internal/ads/jr;->h(I[B)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 15
    .line 16
    .line 17
    new-instance v5, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-lez v0, :cond_8

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x0

    .line 33
    const/4 v4, 0x1

    .line 34
    const/16 v6, 0x8

    .line 35
    .line 36
    if-lt v0, v6, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_1
    const-string v7, "Incomplete Mp4Webvtt Top Level box header found."

    .line 42
    .line 43
    invoke-static {v0, v7}, Lo3/r;->L(ZLjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    add-int/lit8 v0, v0, -0x8

    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    const v8, 0x76747463

    .line 57
    .line 58
    .line 59
    if-ne v7, v8, :cond_7

    .line 60
    .line 61
    const/4 v7, 0x0

    .line 62
    move-object v8, v7

    .line 63
    move-object v9, v8

    .line 64
    :goto_2
    if-lez v0, :cond_4

    .line 65
    .line 66
    if-lt v0, v6, :cond_1

    .line 67
    .line 68
    const/4 v10, 0x1

    .line 69
    goto :goto_3

    .line 70
    :cond_1
    const/4 v10, 0x0

    .line 71
    :goto_3
    const-string v11, "Incomplete vtt cue box header found."

    .line 72
    .line 73
    invoke-static {v10, v11}, Lo3/r;->L(ZLjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    add-int/lit8 v0, v0, -0x8

    .line 85
    .line 86
    add-int/lit8 v10, v10, -0x8

    .line 87
    .line 88
    iget-object v12, v3, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 89
    .line 90
    iget v13, v3, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 91
    .line 92
    sget v14, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 93
    .line 94
    new-instance v14, Ljava/lang/String;

    .line 95
    .line 96
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 97
    .line 98
    invoke-direct {v14, v12, v13, v10, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 102
    .line 103
    .line 104
    const v12, 0x73747467

    .line 105
    .line 106
    .line 107
    if-ne v11, v12, :cond_2

    .line 108
    .line 109
    new-instance v9, Lz1/g;

    .line 110
    .line 111
    invoke-direct {v9}, Lz1/g;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-static {v14, v9}, Lcom/google/android/gms/internal/ads/y2;->f(Ljava/lang/String;Lz1/g;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v9}, Lz1/g;->b()Lcom/google/android/gms/internal/ads/Dj;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    goto :goto_4

    .line 122
    :cond_2
    const v12, 0x7061796c

    .line 123
    .line 124
    .line 125
    if-ne v11, v12, :cond_3

    .line 126
    .line 127
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v11

    .line 135
    invoke-static {v7, v8, v11}, Lcom/google/android/gms/internal/ads/y2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    :cond_3
    :goto_4
    sub-int/2addr v0, v10

    .line 140
    goto :goto_2

    .line 141
    :cond_4
    if-nez v8, :cond_5

    .line 142
    .line 143
    const-string v8, ""

    .line 144
    .line 145
    :cond_5
    if-eqz v9, :cond_6

    .line 146
    .line 147
    iput-object v8, v9, Lcom/google/android/gms/internal/ads/Dj;->a:Ljava/lang/CharSequence;

    .line 148
    .line 149
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/Dj;->a()Lcom/google/android/gms/internal/ads/ak;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    goto :goto_5

    .line 154
    :cond_6
    new-instance v0, Lz1/g;

    .line 155
    .line 156
    invoke-direct {v0}, Lz1/g;-><init>()V

    .line 157
    .line 158
    .line 159
    iput-object v8, v0, Lz1/g;->c:Ljava/lang/CharSequence;

    .line 160
    .line 161
    invoke-virtual {v0}, Lz1/g;->b()Lcom/google/android/gms/internal/ads/Dj;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Dj;->a()Lcom/google/android/gms/internal/ads/ak;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    :goto_5
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_7
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/ads/S1;

    .line 180
    .line 181
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    move-object v4, v0

    .line 187
    move-wide v6, v8

    .line 188
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/S1;-><init>(Ljava/util/List;JJ)V

    .line 189
    .line 190
    .line 191
    move-object/from16 v1, p4

    .line 192
    .line 193
    invoke-virtual {v1, v0}, Lt0/d;->zza(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    return-void
.end method
