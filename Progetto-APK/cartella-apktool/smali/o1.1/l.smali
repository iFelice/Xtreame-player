.class public final Lo1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/s;
.implements LW0/F;


# instance fields
.field public A:[[J

.field public B:I

.field public C:J

.field public D:I

.field public final a:Lq1/k;

.field public final b:I

.field public final c:Lp0/E;

.field public final d:Lp0/E;

.field public final e:Lp0/E;

.field public final f:Lp0/E;

.field public final g:Ljava/util/ArrayDeque;

.field public final h:Lo1/n;

.field public final i:Ljava/util/ArrayList;

.field public j:Lz4/d0;

.field public k:I

.field public l:I

.field public m:J

.field public n:I

.field public o:Lp0/E;

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:J

.field public y:LW0/u;

.field public z:[Lo1/k;


# direct methods
.method public constructor <init>(ILF2/G;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lo1/l;->a:Lq1/k;

    .line 5
    .line 6
    iput p1, p0, Lo1/l;->b:I

    .line 7
    .line 8
    sget-object p1, Lz4/H;->H:Lz4/F;

    .line 9
    .line 10
    sget-object p1, Lz4/d0;->K:Lz4/d0;

    .line 11
    .line 12
    iput-object p1, p0, Lo1/l;->j:Lz4/d0;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lo1/l;->k:I

    .line 16
    .line 17
    new-instance p2, Lo1/n;

    .line 18
    .line 19
    invoke-direct {p2}, Lo1/n;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lo1/l;->h:Lo1/n;

    .line 23
    .line 24
    new-instance p2, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lo1/l;->i:Ljava/util/ArrayList;

    .line 30
    .line 31
    new-instance p2, Lp0/E;

    .line 32
    .line 33
    const/16 v0, 0x10

    .line 34
    .line 35
    invoke-direct {p2, v0}, Lp0/E;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lo1/l;->f:Lp0/E;

    .line 39
    .line 40
    new-instance p2, Ljava/util/ArrayDeque;

    .line 41
    .line 42
    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p2, p0, Lo1/l;->g:Ljava/util/ArrayDeque;

    .line 46
    .line 47
    new-instance p2, Lp0/E;

    .line 48
    .line 49
    sget-object v0, Lq0/p;->a:[B

    .line 50
    .line 51
    invoke-direct {p2, v0}, Lp0/E;-><init>([B)V

    .line 52
    .line 53
    .line 54
    iput-object p2, p0, Lo1/l;->c:Lp0/E;

    .line 55
    .line 56
    new-instance p2, Lp0/E;

    .line 57
    .line 58
    const/4 v0, 0x6

    .line 59
    invoke-direct {p2, v0}, Lp0/E;-><init>(I)V

    .line 60
    .line 61
    .line 62
    iput-object p2, p0, Lo1/l;->d:Lp0/E;

    .line 63
    .line 64
    new-instance p2, Lp0/E;

    .line 65
    .line 66
    invoke-direct {p2}, Lp0/E;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object p2, p0, Lo1/l;->e:Lp0/E;

    .line 70
    .line 71
    const/4 p2, -0x1

    .line 72
    iput p2, p0, Lo1/l;->p:I

    .line 73
    .line 74
    sget-object p2, LW0/u;->l:LF2/G;

    .line 75
    .line 76
    iput-object p2, p0, Lo1/l;->y:LW0/u;

    .line 77
    .line 78
    new-array p1, p1, [Lo1/k;

    .line 79
    .line 80
    iput-object p1, p0, Lo1/l;->z:[Lo1/k;

    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method public final b()LW0/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final d(LW0/u;)V
    .locals 2

    .line 1
    iget v0, p0, Lo1/l;->b:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lq1/n;

    .line 8
    .line 9
    iget-object v1, p0, Lo1/l;->a:Lq1/k;

    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Lq1/n;-><init>(LW0/u;Lq1/k;)V

    .line 12
    .line 13
    .line 14
    move-object p1, v0

    .line 15
    :cond_0
    iput-object p1, p0, Lo1/l;->y:LW0/u;

    .line 16
    .line 17
    return-void
.end method

.method public final f()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final g(LW0/t;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0, v0}, Lo1/o;->b(LW0/t;ZZ)LW0/J;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Lz4/H;->H:Lz4/F;

    .line 14
    .line 15
    sget-object v1, Lz4/d0;->K:Lz4/d0;

    .line 16
    .line 17
    :goto_0
    iput-object v1, p0, Lo1/l;->j:Lz4/d0;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    :cond_1
    return v0
.end method

.method public final h(LW0/t;LW0/w;)I
    .locals 35

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    :cond_0
    :goto_0
    iget v3, v1, Lo1/l;->k:I

    .line 8
    .line 9
    iget-object v4, v1, Lo1/l;->g:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x1

    .line 13
    iget-object v10, v1, Lo1/l;->e:Lp0/E;

    .line 14
    .line 15
    const/4 v13, 0x0

    .line 16
    if-eqz v3, :cond_43

    .line 17
    .line 18
    const/4 v9, 0x4

    .line 19
    const/4 v6, 0x2

    .line 20
    const-wide/32 v17, 0x40000

    .line 21
    .line 22
    .line 23
    if-eq v3, v8, :cond_35

    .line 24
    .line 25
    const-wide/16 v19, 0x8

    .line 26
    .line 27
    if-eq v3, v6, :cond_19

    .line 28
    .line 29
    const/4 v4, 0x3

    .line 30
    if-ne v3, v4, :cond_18

    .line 31
    .line 32
    iget-object v3, v1, Lo1/l;->i:Ljava/util/ArrayList;

    .line 33
    .line 34
    iget-object v10, v1, Lo1/l;->h:Lo1/n;

    .line 35
    .line 36
    iget v11, v10, Lo1/n;->b:I

    .line 37
    .line 38
    if-eqz v11, :cond_14

    .line 39
    .line 40
    if-eq v11, v8, :cond_12

    .line 41
    .line 42
    iget-object v12, v10, Lo1/n;->a:Ljava/util/ArrayList;

    .line 43
    .line 44
    const/16 v5, 0xb01

    .line 45
    .line 46
    const/16 v15, 0xb00

    .line 47
    .line 48
    const/16 v14, 0x890

    .line 49
    .line 50
    if-eq v11, v6, :cond_d

    .line 51
    .line 52
    if-ne v11, v4, :cond_c

    .line 53
    .line 54
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 55
    .line 56
    .line 57
    move-result-wide v17

    .line 58
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 59
    .line 60
    .line 61
    move-result-wide v19

    .line 62
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 63
    .line 64
    .line 65
    move-result-wide v21

    .line 66
    sub-long v19, v19, v21

    .line 67
    .line 68
    iget v10, v10, Lo1/n;->c:I

    .line 69
    .line 70
    int-to-long v10, v10

    .line 71
    sub-long v10, v19, v10

    .line 72
    .line 73
    long-to-int v11, v10

    .line 74
    new-instance v10, Lp0/E;

    .line 75
    .line 76
    invoke-direct {v10, v11}, Lp0/E;-><init>(I)V

    .line 77
    .line 78
    .line 79
    iget-object v6, v10, Lp0/E;->a:[B

    .line 80
    .line 81
    invoke-interface {v0, v6, v7, v11}, LW0/t;->readFully([BII)V

    .line 82
    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-ge v0, v6, :cond_b

    .line 90
    .line 91
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    check-cast v6, Lo1/m;

    .line 96
    .line 97
    iget-wide v7, v6, Lo1/m;->a:J

    .line 98
    .line 99
    sub-long v7, v7, v17

    .line 100
    .line 101
    long-to-int v8, v7

    .line 102
    invoke-virtual {v10, v8}, Lp0/E;->L(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v10, v9}, Lp0/E;->M(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v10}, Lp0/E;->n()I

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 113
    .line 114
    invoke-virtual {v10, v7, v8}, Lp0/E;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 119
    .line 120
    .line 121
    move-result v20

    .line 122
    sparse-switch v20, :sswitch_data_0

    .line 123
    .line 124
    .line 125
    :goto_2
    const/4 v9, -0x1

    .line 126
    goto :goto_3

    .line 127
    :sswitch_0
    const-string v9, "Super_SlowMotion_BGM"

    .line 128
    .line 129
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    if-nez v9, :cond_1

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_1
    const/4 v9, 0x4

    .line 137
    goto :goto_3

    .line 138
    :sswitch_1
    const-string v9, "Super_SlowMotion_Deflickering_On"

    .line 139
    .line 140
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    if-nez v9, :cond_2

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_2
    const/4 v9, 0x3

    .line 148
    goto :goto_3

    .line 149
    :sswitch_2
    const-string v9, "Super_SlowMotion_Data"

    .line 150
    .line 151
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    if-nez v9, :cond_3

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_3
    const/4 v9, 0x2

    .line 159
    goto :goto_3

    .line 160
    :sswitch_3
    const-string v9, "Super_SlowMotion_Edit_Data"

    .line 161
    .line 162
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    if-nez v9, :cond_4

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_4
    const/4 v9, 0x1

    .line 170
    goto :goto_3

    .line 171
    :sswitch_4
    const-string v9, "SlowMotion_Data"

    .line 172
    .line 173
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v9

    .line 177
    if-nez v9, :cond_5

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_5
    const/4 v9, 0x0

    .line 181
    :goto_3
    packed-switch v9, :pswitch_data_0

    .line 182
    .line 183
    .line 184
    const-string v0, "Invalid SEF name"

    .line 185
    .line 186
    invoke-static {v0, v13}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    throw v0

    .line 191
    :pswitch_0
    const/16 v9, 0xb01

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :pswitch_1
    const/16 v9, 0xb04

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :pswitch_2
    const/16 v9, 0xb00

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :pswitch_3
    const/16 v9, 0xb03

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :pswitch_4
    const/16 v9, 0x890

    .line 204
    .line 205
    :goto_4
    add-int/lit8 v7, v7, 0x8

    .line 206
    .line 207
    iget v6, v6, Lo1/m;->b:I

    .line 208
    .line 209
    sub-int/2addr v6, v7

    .line 210
    if-eq v9, v14, :cond_7

    .line 211
    .line 212
    if-eq v9, v15, :cond_a

    .line 213
    .line 214
    if-eq v9, v5, :cond_a

    .line 215
    .line 216
    const/16 v6, 0xb03

    .line 217
    .line 218
    if-eq v9, v6, :cond_a

    .line 219
    .line 220
    const/16 v6, 0xb04

    .line 221
    .line 222
    if-ne v9, v6, :cond_6

    .line 223
    .line 224
    goto :goto_6

    .line 225
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 226
    .line 227
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 228
    .line 229
    .line 230
    throw v0

    .line 231
    :cond_7
    new-instance v7, Ljava/util/ArrayList;

    .line 232
    .line 233
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v10, v6, v8}, Lp0/E;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    sget-object v8, Lo1/n;->e:Ly4/q;

    .line 241
    .line 242
    invoke-virtual {v8, v6}, Ly4/q;->b(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    const/4 v8, 0x0

    .line 247
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 248
    .line 249
    .line 250
    move-result v9

    .line 251
    if-ge v8, v9, :cond_9

    .line 252
    .line 253
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v9

    .line 257
    check-cast v9, Ljava/lang/CharSequence;

    .line 258
    .line 259
    sget-object v11, Lo1/n;->d:Ly4/q;

    .line 260
    .line 261
    invoke-virtual {v11, v9}, Ly4/q;->b(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 262
    .line 263
    .line 264
    move-result-object v9

    .line 265
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 266
    .line 267
    .line 268
    move-result v11

    .line 269
    if-ne v11, v4, :cond_8

    .line 270
    .line 271
    const/4 v11, 0x0

    .line 272
    :try_start_0
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v20

    .line 276
    check-cast v20, Ljava/lang/String;

    .line 277
    .line 278
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 279
    .line 280
    .line 281
    move-result-wide v25

    .line 282
    const/4 v11, 0x1

    .line 283
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v21

    .line 287
    check-cast v21, Ljava/lang/String;

    .line 288
    .line 289
    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 290
    .line 291
    .line 292
    move-result-wide v27

    .line 293
    const/4 v11, 0x2

    .line 294
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v9

    .line 298
    check-cast v9, Ljava/lang/String;

    .line 299
    .line 300
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    move-result v9

    .line 304
    const/4 v11, 0x1

    .line 305
    sub-int/2addr v9, v11

    .line 306
    shl-int v24, v11, v9

    .line 307
    .line 308
    new-instance v9, Lj1/b;

    .line 309
    .line 310
    move-object/from16 v23, v9

    .line 311
    .line 312
    invoke-direct/range {v23 .. v28}, Lj1/b;-><init>(IJJ)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .line 317
    .line 318
    add-int/lit8 v8, v8, 0x1

    .line 319
    .line 320
    goto :goto_5

    .line 321
    :catch_0
    move-exception v0

    .line 322
    invoke-static {v13, v0}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    throw v0

    .line 327
    :cond_8
    invoke-static {v13, v13}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    throw v0

    .line 332
    :cond_9
    new-instance v6, Lj1/c;

    .line 333
    .line 334
    invoke-direct {v6, v7}, Lj1/c;-><init>(Ljava/util/ArrayList;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    :cond_a
    :goto_6
    add-int/lit8 v0, v0, 0x1

    .line 341
    .line 342
    const/4 v7, 0x0

    .line 343
    const/4 v9, 0x4

    .line 344
    goto/16 :goto_1

    .line 345
    .line 346
    :cond_b
    const-wide/16 v6, 0x0

    .line 347
    .line 348
    iput-wide v6, v2, LW0/w;->a:J

    .line 349
    .line 350
    :goto_7
    const/4 v0, 0x1

    .line 351
    goto/16 :goto_c

    .line 352
    .line 353
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 354
    .line 355
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 356
    .line 357
    .line 358
    throw v0

    .line 359
    :cond_d
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 360
    .line 361
    .line 362
    move-result-wide v6

    .line 363
    iget v3, v10, Lo1/n;->c:I

    .line 364
    .line 365
    add-int/lit8 v3, v3, -0x14

    .line 366
    .line 367
    new-instance v8, Lp0/E;

    .line 368
    .line 369
    invoke-direct {v8, v3}, Lp0/E;-><init>(I)V

    .line 370
    .line 371
    .line 372
    iget-object v9, v8, Lp0/E;->a:[B

    .line 373
    .line 374
    const/4 v11, 0x0

    .line 375
    invoke-interface {v0, v9, v11, v3}, LW0/t;->readFully([BII)V

    .line 376
    .line 377
    .line 378
    const/4 v0, 0x0

    .line 379
    :goto_8
    div-int/lit8 v9, v3, 0xc

    .line 380
    .line 381
    if-ge v0, v9, :cond_10

    .line 382
    .line 383
    const/4 v9, 0x2

    .line 384
    invoke-virtual {v8, v9}, Lp0/E;->M(I)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v8}, Lp0/E;->p()S

    .line 388
    .line 389
    .line 390
    move-result v9

    .line 391
    if-eq v9, v14, :cond_e

    .line 392
    .line 393
    if-eq v9, v15, :cond_e

    .line 394
    .line 395
    if-eq v9, v5, :cond_e

    .line 396
    .line 397
    const/16 v13, 0xb03

    .line 398
    .line 399
    const/16 v5, 0xb04

    .line 400
    .line 401
    if-eq v9, v13, :cond_f

    .line 402
    .line 403
    if-eq v9, v5, :cond_f

    .line 404
    .line 405
    const/16 v9, 0x8

    .line 406
    .line 407
    invoke-virtual {v8, v9}, Lp0/E;->M(I)V

    .line 408
    .line 409
    .line 410
    move-wide/from16 v20, v6

    .line 411
    .line 412
    goto :goto_9

    .line 413
    :cond_e
    const/16 v5, 0xb04

    .line 414
    .line 415
    const/16 v13, 0xb03

    .line 416
    .line 417
    :cond_f
    iget v9, v10, Lo1/n;->c:I

    .line 418
    .line 419
    int-to-long v13, v9

    .line 420
    sub-long v13, v6, v13

    .line 421
    .line 422
    invoke-virtual {v8}, Lp0/E;->n()I

    .line 423
    .line 424
    .line 425
    move-result v9

    .line 426
    move-wide/from16 v20, v6

    .line 427
    .line 428
    int-to-long v5, v9

    .line 429
    sub-long/2addr v13, v5

    .line 430
    invoke-virtual {v8}, Lp0/E;->n()I

    .line 431
    .line 432
    .line 433
    move-result v5

    .line 434
    new-instance v6, Lo1/m;

    .line 435
    .line 436
    invoke-direct {v6, v13, v14, v5}, Lo1/m;-><init>(JI)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    :goto_9
    add-int/lit8 v0, v0, 0x1

    .line 443
    .line 444
    move-wide/from16 v6, v20

    .line 445
    .line 446
    const/16 v5, 0xb01

    .line 447
    .line 448
    const/16 v14, 0x890

    .line 449
    .line 450
    goto :goto_8

    .line 451
    :cond_10
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    if-eqz v0, :cond_11

    .line 456
    .line 457
    const-wide/16 v5, 0x0

    .line 458
    .line 459
    iput-wide v5, v2, LW0/w;->a:J

    .line 460
    .line 461
    const/4 v3, 0x0

    .line 462
    goto :goto_7

    .line 463
    :cond_11
    iput v4, v10, Lo1/n;->b:I

    .line 464
    .line 465
    const/4 v3, 0x0

    .line 466
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    check-cast v0, Lo1/m;

    .line 471
    .line 472
    iget-wide v4, v0, Lo1/m;->a:J

    .line 473
    .line 474
    iput-wide v4, v2, LW0/w;->a:J

    .line 475
    .line 476
    goto :goto_7

    .line 477
    :cond_12
    const/4 v3, 0x0

    .line 478
    new-instance v4, Lp0/E;

    .line 479
    .line 480
    const/16 v5, 0x8

    .line 481
    .line 482
    invoke-direct {v4, v5}, Lp0/E;-><init>(I)V

    .line 483
    .line 484
    .line 485
    iget-object v6, v4, Lp0/E;->a:[B

    .line 486
    .line 487
    invoke-interface {v0, v6, v3, v5}, LW0/t;->readFully([BII)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v4}, Lp0/E;->n()I

    .line 491
    .line 492
    .line 493
    move-result v3

    .line 494
    add-int/2addr v3, v5

    .line 495
    iput v3, v10, Lo1/n;->c:I

    .line 496
    .line 497
    invoke-virtual {v4}, Lp0/E;->l()I

    .line 498
    .line 499
    .line 500
    move-result v3

    .line 501
    const v4, 0x53454654

    .line 502
    .line 503
    .line 504
    if-eq v3, v4, :cond_13

    .line 505
    .line 506
    const-wide/16 v3, 0x0

    .line 507
    .line 508
    iput-wide v3, v2, LW0/w;->a:J

    .line 509
    .line 510
    goto/16 :goto_7

    .line 511
    .line 512
    :cond_13
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 513
    .line 514
    .line 515
    move-result-wide v3

    .line 516
    iget v0, v10, Lo1/n;->c:I

    .line 517
    .line 518
    add-int/lit8 v0, v0, -0xc

    .line 519
    .line 520
    int-to-long v5, v0

    .line 521
    sub-long/2addr v3, v5

    .line 522
    iput-wide v3, v2, LW0/w;->a:J

    .line 523
    .line 524
    const/4 v0, 0x2

    .line 525
    iput v0, v10, Lo1/n;->b:I

    .line 526
    .line 527
    goto/16 :goto_7

    .line 528
    .line 529
    :cond_14
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 530
    .line 531
    .line 532
    move-result-wide v3

    .line 533
    const-wide/16 v5, -0x1

    .line 534
    .line 535
    cmp-long v0, v3, v5

    .line 536
    .line 537
    if-eqz v0, :cond_16

    .line 538
    .line 539
    cmp-long v0, v3, v19

    .line 540
    .line 541
    if-gez v0, :cond_15

    .line 542
    .line 543
    goto :goto_a

    .line 544
    :cond_15
    sub-long v3, v3, v19

    .line 545
    .line 546
    goto :goto_b

    .line 547
    :cond_16
    :goto_a
    const-wide/16 v3, 0x0

    .line 548
    .line 549
    :goto_b
    iput-wide v3, v2, LW0/w;->a:J

    .line 550
    .line 551
    const/4 v0, 0x1

    .line 552
    iput v0, v10, Lo1/n;->b:I

    .line 553
    .line 554
    :goto_c
    iget-wide v2, v2, LW0/w;->a:J

    .line 555
    .line 556
    const-wide/16 v4, 0x0

    .line 557
    .line 558
    cmp-long v6, v2, v4

    .line 559
    .line 560
    if-nez v6, :cond_17

    .line 561
    .line 562
    const/4 v2, 0x0

    .line 563
    iput v2, v1, Lo1/l;->k:I

    .line 564
    .line 565
    iput v2, v1, Lo1/l;->n:I

    .line 566
    .line 567
    :cond_17
    return v0

    .line 568
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 569
    .line 570
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 571
    .line 572
    .line 573
    throw v0

    .line 574
    :cond_19
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 575
    .line 576
    .line 577
    move-result-wide v3

    .line 578
    iget v5, v1, Lo1/l;->p:I

    .line 579
    .line 580
    const/4 v6, -0x1

    .line 581
    if-ne v5, v6, :cond_24

    .line 582
    .line 583
    const/4 v7, 0x0

    .line 584
    const/4 v8, -0x1

    .line 585
    const/4 v9, -0x1

    .line 586
    const/4 v12, 0x1

    .line 587
    const/4 v14, 0x1

    .line 588
    const-wide v15, 0x7fffffffffffffffL

    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    const-wide v21, 0x7fffffffffffffffL

    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    const-wide v23, 0x7fffffffffffffffL

    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    :goto_d
    iget-object v11, v1, Lo1/l;->z:[Lo1/k;

    .line 604
    .line 605
    array-length v13, v11

    .line 606
    if-ge v7, v13, :cond_21

    .line 607
    .line 608
    aget-object v11, v11, v7

    .line 609
    .line 610
    iget v13, v11, Lo1/k;->e:I

    .line 611
    .line 612
    iget-object v11, v11, Lo1/k;->b:Lo1/s;

    .line 613
    .line 614
    iget v5, v11, Lo1/s;->b:I

    .line 615
    .line 616
    if-ne v13, v5, :cond_1a

    .line 617
    .line 618
    goto :goto_10

    .line 619
    :cond_1a
    iget-object v5, v11, Lo1/s;->c:[J

    .line 620
    .line 621
    aget-wide v28, v5, v13

    .line 622
    .line 623
    iget-object v5, v1, Lo1/l;->A:[[J

    .line 624
    .line 625
    sget-object v6, Lp0/M;->a:Ljava/lang/String;

    .line 626
    .line 627
    aget-object v5, v5, v7

    .line 628
    .line 629
    aget-wide v30, v5, v13

    .line 630
    .line 631
    sub-long v28, v28, v3

    .line 632
    .line 633
    const-wide/16 v5, 0x0

    .line 634
    .line 635
    cmp-long v11, v28, v5

    .line 636
    .line 637
    if-ltz v11, :cond_1c

    .line 638
    .line 639
    cmp-long v5, v28, v17

    .line 640
    .line 641
    if-ltz v5, :cond_1b

    .line 642
    .line 643
    goto :goto_e

    .line 644
    :cond_1b
    const/4 v5, 0x0

    .line 645
    goto :goto_f

    .line 646
    :cond_1c
    :goto_e
    const/4 v5, 0x1

    .line 647
    :goto_f
    if-nez v5, :cond_1d

    .line 648
    .line 649
    if-nez v14, :cond_1e

    .line 650
    .line 651
    :cond_1d
    if-ne v5, v14, :cond_1f

    .line 652
    .line 653
    cmp-long v6, v28, v23

    .line 654
    .line 655
    if-gez v6, :cond_1f

    .line 656
    .line 657
    :cond_1e
    move v14, v5

    .line 658
    move v9, v7

    .line 659
    move-wide/from16 v23, v28

    .line 660
    .line 661
    move-wide/from16 v21, v30

    .line 662
    .line 663
    :cond_1f
    cmp-long v6, v30, v15

    .line 664
    .line 665
    if-gez v6, :cond_20

    .line 666
    .line 667
    move v12, v5

    .line 668
    move v8, v7

    .line 669
    move-wide/from16 v15, v30

    .line 670
    .line 671
    :cond_20
    :goto_10
    add-int/lit8 v7, v7, 0x1

    .line 672
    .line 673
    const/4 v13, 0x0

    .line 674
    goto :goto_d

    .line 675
    :cond_21
    const-wide v5, 0x7fffffffffffffffL

    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    cmp-long v7, v15, v5

    .line 681
    .line 682
    if-eqz v7, :cond_22

    .line 683
    .line 684
    if-eqz v12, :cond_22

    .line 685
    .line 686
    const-wide/32 v5, 0xa00000

    .line 687
    .line 688
    .line 689
    add-long/2addr v15, v5

    .line 690
    cmp-long v5, v21, v15

    .line 691
    .line 692
    if-gez v5, :cond_23

    .line 693
    .line 694
    :cond_22
    move v8, v9

    .line 695
    :cond_23
    iput v8, v1, Lo1/l;->p:I

    .line 696
    .line 697
    const/4 v5, -0x1

    .line 698
    if-ne v8, v5, :cond_24

    .line 699
    .line 700
    const/4 v6, -0x1

    .line 701
    goto/16 :goto_19

    .line 702
    .line 703
    :cond_24
    iget-object v5, v1, Lo1/l;->z:[Lo1/k;

    .line 704
    .line 705
    iget v6, v1, Lo1/l;->p:I

    .line 706
    .line 707
    aget-object v5, v5, v6

    .line 708
    .line 709
    iget-object v6, v5, Lo1/k;->c:LW0/L;

    .line 710
    .line 711
    iget v7, v5, Lo1/k;->e:I

    .line 712
    .line 713
    iget-object v8, v5, Lo1/k;->b:Lo1/s;

    .line 714
    .line 715
    iget-object v9, v8, Lo1/s;->c:[J

    .line 716
    .line 717
    aget-wide v11, v9, v7

    .line 718
    .line 719
    iget-wide v13, v1, Lo1/l;->x:J

    .line 720
    .line 721
    add-long/2addr v11, v13

    .line 722
    iget-object v9, v8, Lo1/s;->d:[I

    .line 723
    .line 724
    aget v13, v9, v7

    .line 725
    .line 726
    sub-long v3, v11, v3

    .line 727
    .line 728
    iget v14, v1, Lo1/l;->q:I

    .line 729
    .line 730
    int-to-long v14, v14

    .line 731
    add-long/2addr v3, v14

    .line 732
    const-wide/16 v14, 0x0

    .line 733
    .line 734
    cmp-long v16, v3, v14

    .line 735
    .line 736
    if-ltz v16, :cond_34

    .line 737
    .line 738
    cmp-long v14, v3, v17

    .line 739
    .line 740
    if-ltz v14, :cond_25

    .line 741
    .line 742
    goto/16 :goto_18

    .line 743
    .line 744
    :cond_25
    iget-object v2, v5, Lo1/k;->a:Lo1/p;

    .line 745
    .line 746
    iget v11, v2, Lo1/p;->h:I

    .line 747
    .line 748
    const/4 v12, 0x1

    .line 749
    if-ne v11, v12, :cond_26

    .line 750
    .line 751
    add-long v3, v3, v19

    .line 752
    .line 753
    add-int/lit8 v13, v13, -0x8

    .line 754
    .line 755
    :cond_26
    long-to-int v4, v3

    .line 756
    invoke-interface {v0, v4}, LW0/t;->n(I)V

    .line 757
    .line 758
    .line 759
    iget-object v3, v2, Lo1/p;->g:Lm0/t;

    .line 760
    .line 761
    iget-object v4, v3, Lm0/t;->o:Ljava/lang/String;

    .line 762
    .line 763
    const-string v11, "video/avc"

    .line 764
    .line 765
    invoke-static {v4, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 766
    .line 767
    .line 768
    move-result v4

    .line 769
    iget-object v12, v3, Lm0/t;->o:Ljava/lang/String;

    .line 770
    .line 771
    if-eqz v4, :cond_27

    .line 772
    .line 773
    :goto_11
    const/4 v4, 0x1

    .line 774
    goto :goto_12

    .line 775
    :cond_27
    const-string v4, "video/hevc"

    .line 776
    .line 777
    invoke-static {v12, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 778
    .line 779
    .line 780
    goto :goto_11

    .line 781
    :goto_12
    iput-boolean v4, v1, Lo1/l;->t:Z

    .line 782
    .line 783
    iget v2, v2, Lo1/p;->k:I

    .line 784
    .line 785
    iget-object v14, v5, Lo1/k;->d:LW0/M;

    .line 786
    .line 787
    if-eqz v2, :cond_2c

    .line 788
    .line 789
    iget-object v10, v1, Lo1/l;->d:Lp0/E;

    .line 790
    .line 791
    iget-object v12, v10, Lp0/E;->a:[B

    .line 792
    .line 793
    const/4 v11, 0x0

    .line 794
    aput-byte v11, v12, v11

    .line 795
    .line 796
    aput-byte v11, v12, v4

    .line 797
    .line 798
    const/4 v4, 0x2

    .line 799
    aput-byte v11, v12, v4

    .line 800
    .line 801
    rsub-int/lit8 v4, v2, 0x4

    .line 802
    .line 803
    add-int/2addr v13, v4

    .line 804
    :goto_13
    iget v15, v1, Lo1/l;->r:I

    .line 805
    .line 806
    if-ge v15, v13, :cond_30

    .line 807
    .line 808
    iget v15, v1, Lo1/l;->s:I

    .line 809
    .line 810
    if-nez v15, :cond_2b

    .line 811
    .line 812
    iget-boolean v15, v1, Lo1/l;->t:Z

    .line 813
    .line 814
    if-nez v15, :cond_28

    .line 815
    .line 816
    invoke-static {v3}, Lq0/p;->e(Lm0/t;)I

    .line 817
    .line 818
    .line 819
    move-result v15

    .line 820
    add-int/2addr v15, v2

    .line 821
    aget v16, v9, v7

    .line 822
    .line 823
    iget v11, v1, Lo1/l;->q:I

    .line 824
    .line 825
    sub-int v11, v16, v11

    .line 826
    .line 827
    if-gt v15, v11, :cond_28

    .line 828
    .line 829
    invoke-static {v3}, Lq0/p;->e(Lm0/t;)I

    .line 830
    .line 831
    .line 832
    move-result v11

    .line 833
    add-int v15, v2, v11

    .line 834
    .line 835
    move/from16 v34, v15

    .line 836
    .line 837
    move v15, v11

    .line 838
    move/from16 v11, v34

    .line 839
    .line 840
    goto :goto_14

    .line 841
    :cond_28
    move v11, v2

    .line 842
    const/4 v15, 0x0

    .line 843
    :goto_14
    invoke-interface {v0, v12, v4, v11}, LW0/t;->readFully([BII)V

    .line 844
    .line 845
    .line 846
    move/from16 v16, v2

    .line 847
    .line 848
    iget v2, v1, Lo1/l;->q:I

    .line 849
    .line 850
    add-int/2addr v2, v11

    .line 851
    iput v2, v1, Lo1/l;->q:I

    .line 852
    .line 853
    const/4 v2, 0x0

    .line 854
    invoke-virtual {v10, v2}, Lp0/E;->L(I)V

    .line 855
    .line 856
    .line 857
    invoke-virtual {v10}, Lp0/E;->l()I

    .line 858
    .line 859
    .line 860
    move-result v11

    .line 861
    if-ltz v11, :cond_2a

    .line 862
    .line 863
    sub-int/2addr v11, v15

    .line 864
    iput v11, v1, Lo1/l;->s:I

    .line 865
    .line 866
    iget-object v11, v1, Lo1/l;->c:Lp0/E;

    .line 867
    .line 868
    invoke-virtual {v11, v2}, Lp0/E;->L(I)V

    .line 869
    .line 870
    .line 871
    const/4 v2, 0x4

    .line 872
    invoke-interface {v6, v2, v11}, LW0/L;->e(ILp0/E;)V

    .line 873
    .line 874
    .line 875
    iget v11, v1, Lo1/l;->r:I

    .line 876
    .line 877
    add-int/2addr v11, v2

    .line 878
    iput v11, v1, Lo1/l;->r:I

    .line 879
    .line 880
    if-lez v15, :cond_29

    .line 881
    .line 882
    invoke-interface {v6, v15, v10}, LW0/L;->e(ILp0/E;)V

    .line 883
    .line 884
    .line 885
    iget v2, v1, Lo1/l;->r:I

    .line 886
    .line 887
    add-int/2addr v2, v15

    .line 888
    iput v2, v1, Lo1/l;->r:I

    .line 889
    .line 890
    invoke-static {v12, v15, v3}, Lq0/p;->d([BILm0/t;)Z

    .line 891
    .line 892
    .line 893
    move-result v2

    .line 894
    if-eqz v2, :cond_29

    .line 895
    .line 896
    const/4 v2, 0x1

    .line 897
    iput-boolean v2, v1, Lo1/l;->t:Z

    .line 898
    .line 899
    :cond_29
    :goto_15
    move/from16 v2, v16

    .line 900
    .line 901
    goto :goto_13

    .line 902
    :cond_2a
    const-string v0, "Invalid NAL length"

    .line 903
    .line 904
    const/4 v2, 0x0

    .line 905
    invoke-static {v0, v2}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    throw v0

    .line 910
    :cond_2b
    move/from16 v16, v2

    .line 911
    .line 912
    const/4 v2, 0x0

    .line 913
    invoke-interface {v6, v0, v15, v2}, LW0/L;->f(Lm0/j;IZ)I

    .line 914
    .line 915
    .line 916
    move-result v15

    .line 917
    iget v2, v1, Lo1/l;->q:I

    .line 918
    .line 919
    add-int/2addr v2, v15

    .line 920
    iput v2, v1, Lo1/l;->q:I

    .line 921
    .line 922
    iget v2, v1, Lo1/l;->r:I

    .line 923
    .line 924
    add-int/2addr v2, v15

    .line 925
    iput v2, v1, Lo1/l;->r:I

    .line 926
    .line 927
    iget v2, v1, Lo1/l;->s:I

    .line 928
    .line 929
    sub-int/2addr v2, v15

    .line 930
    iput v2, v1, Lo1/l;->s:I

    .line 931
    .line 932
    goto :goto_15

    .line 933
    :cond_2c
    const-string v2, "audio/ac4"

    .line 934
    .line 935
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 936
    .line 937
    .line 938
    move-result v2

    .line 939
    if-eqz v2, :cond_2e

    .line 940
    .line 941
    iget v2, v1, Lo1/l;->r:I

    .line 942
    .line 943
    if-nez v2, :cond_2d

    .line 944
    .line 945
    invoke-static {v13, v10}, LW0/a;->b(ILp0/E;)V

    .line 946
    .line 947
    .line 948
    const/4 v2, 0x7

    .line 949
    invoke-interface {v6, v2, v10}, LW0/L;->e(ILp0/E;)V

    .line 950
    .line 951
    .line 952
    iget v3, v1, Lo1/l;->r:I

    .line 953
    .line 954
    add-int/2addr v3, v2

    .line 955
    iput v3, v1, Lo1/l;->r:I

    .line 956
    .line 957
    :cond_2d
    add-int/lit8 v13, v13, 0x7

    .line 958
    .line 959
    goto :goto_16

    .line 960
    :cond_2e
    if-eqz v14, :cond_2f

    .line 961
    .line 962
    invoke-virtual {v14, v0}, LW0/M;->c(LW0/t;)V

    .line 963
    .line 964
    .line 965
    :cond_2f
    :goto_16
    iget v2, v1, Lo1/l;->r:I

    .line 966
    .line 967
    if-ge v2, v13, :cond_30

    .line 968
    .line 969
    sub-int v2, v13, v2

    .line 970
    .line 971
    const/4 v3, 0x0

    .line 972
    invoke-interface {v6, v0, v2, v3}, LW0/L;->f(Lm0/j;IZ)I

    .line 973
    .line 974
    .line 975
    move-result v2

    .line 976
    iget v3, v1, Lo1/l;->q:I

    .line 977
    .line 978
    add-int/2addr v3, v2

    .line 979
    iput v3, v1, Lo1/l;->q:I

    .line 980
    .line 981
    iget v3, v1, Lo1/l;->r:I

    .line 982
    .line 983
    add-int/2addr v3, v2

    .line 984
    iput v3, v1, Lo1/l;->r:I

    .line 985
    .line 986
    iget v3, v1, Lo1/l;->s:I

    .line 987
    .line 988
    sub-int/2addr v3, v2

    .line 989
    iput v3, v1, Lo1/l;->s:I

    .line 990
    .line 991
    goto :goto_16

    .line 992
    :cond_30
    iget-object v0, v8, Lo1/s;->f:[J

    .line 993
    .line 994
    aget-wide v2, v0, v7

    .line 995
    .line 996
    iget-object v0, v8, Lo1/s;->g:[I

    .line 997
    .line 998
    aget v0, v0, v7

    .line 999
    .line 1000
    iget-boolean v4, v1, Lo1/l;->t:Z

    .line 1001
    .line 1002
    if-nez v4, :cond_31

    .line 1003
    .line 1004
    const/high16 v4, 0x4000000

    .line 1005
    .line 1006
    or-int/2addr v0, v4

    .line 1007
    :cond_31
    if-eqz v14, :cond_32

    .line 1008
    .line 1009
    const/16 v32, 0x0

    .line 1010
    .line 1011
    const/16 v33, 0x0

    .line 1012
    .line 1013
    move-object/from16 v26, v14

    .line 1014
    .line 1015
    move-object/from16 v27, v6

    .line 1016
    .line 1017
    move-wide/from16 v28, v2

    .line 1018
    .line 1019
    move/from16 v30, v0

    .line 1020
    .line 1021
    move/from16 v31, v13

    .line 1022
    .line 1023
    invoke-virtual/range {v26 .. v33}, LW0/M;->b(LW0/L;JIIILW0/K;)V

    .line 1024
    .line 1025
    .line 1026
    const/4 v0, 0x1

    .line 1027
    add-int/2addr v7, v0

    .line 1028
    iget v0, v8, Lo1/s;->b:I

    .line 1029
    .line 1030
    if-ne v7, v0, :cond_33

    .line 1031
    .line 1032
    const/4 v2, 0x0

    .line 1033
    invoke-virtual {v14, v6, v2}, LW0/M;->a(LW0/L;LW0/K;)V

    .line 1034
    .line 1035
    .line 1036
    goto :goto_17

    .line 1037
    :cond_32
    const/16 v31, 0x0

    .line 1038
    .line 1039
    const/16 v32, 0x0

    .line 1040
    .line 1041
    move-object/from16 v26, v6

    .line 1042
    .line 1043
    move-wide/from16 v27, v2

    .line 1044
    .line 1045
    move/from16 v29, v0

    .line 1046
    .line 1047
    move/from16 v30, v13

    .line 1048
    .line 1049
    invoke-interface/range {v26 .. v32}, LW0/L;->d(JIIILW0/K;)V

    .line 1050
    .line 1051
    .line 1052
    :cond_33
    :goto_17
    iget v0, v5, Lo1/k;->e:I

    .line 1053
    .line 1054
    const/4 v2, 0x1

    .line 1055
    add-int/2addr v0, v2

    .line 1056
    iput v0, v5, Lo1/k;->e:I

    .line 1057
    .line 1058
    const/4 v0, -0x1

    .line 1059
    iput v0, v1, Lo1/l;->p:I

    .line 1060
    .line 1061
    const/4 v0, 0x0

    .line 1062
    iput v0, v1, Lo1/l;->q:I

    .line 1063
    .line 1064
    iput v0, v1, Lo1/l;->r:I

    .line 1065
    .line 1066
    iput v0, v1, Lo1/l;->s:I

    .line 1067
    .line 1068
    iput-boolean v0, v1, Lo1/l;->t:Z

    .line 1069
    .line 1070
    const/4 v6, 0x0

    .line 1071
    goto :goto_19

    .line 1072
    :cond_34
    :goto_18
    iput-wide v11, v2, LW0/w;->a:J

    .line 1073
    .line 1074
    const/4 v6, 0x1

    .line 1075
    :goto_19
    return v6

    .line 1076
    :cond_35
    iget-wide v5, v1, Lo1/l;->m:J

    .line 1077
    .line 1078
    iget v3, v1, Lo1/l;->n:I

    .line 1079
    .line 1080
    int-to-long v7, v3

    .line 1081
    sub-long/2addr v5, v7

    .line 1082
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 1083
    .line 1084
    .line 1085
    move-result-wide v7

    .line 1086
    add-long/2addr v7, v5

    .line 1087
    iget-object v3, v1, Lo1/l;->o:Lp0/E;

    .line 1088
    .line 1089
    if-eqz v3, :cond_3e

    .line 1090
    .line 1091
    iget-object v9, v3, Lp0/E;->a:[B

    .line 1092
    .line 1093
    iget v10, v1, Lo1/l;->n:I

    .line 1094
    .line 1095
    long-to-int v6, v5

    .line 1096
    invoke-interface {v0, v9, v10, v6}, LW0/t;->readFully([BII)V

    .line 1097
    .line 1098
    .line 1099
    iget v5, v1, Lo1/l;->l:I

    .line 1100
    .line 1101
    const v6, 0x66747970

    .line 1102
    .line 1103
    .line 1104
    if-ne v5, v6, :cond_3d

    .line 1105
    .line 1106
    const/4 v5, 0x1

    .line 1107
    iput-boolean v5, v1, Lo1/l;->u:Z

    .line 1108
    .line 1109
    const/16 v4, 0x8

    .line 1110
    .line 1111
    invoke-virtual {v3, v4}, Lp0/E;->L(I)V

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {v3}, Lp0/E;->l()I

    .line 1115
    .line 1116
    .line 1117
    move-result v4

    .line 1118
    const v5, 0x71742020

    .line 1119
    .line 1120
    .line 1121
    const v6, 0x68656963

    .line 1122
    .line 1123
    .line 1124
    if-eq v4, v6, :cond_37

    .line 1125
    .line 1126
    if-eq v4, v5, :cond_36

    .line 1127
    .line 1128
    const/4 v4, 0x0

    .line 1129
    goto :goto_1a

    .line 1130
    :cond_36
    const/4 v4, 0x1

    .line 1131
    goto :goto_1a

    .line 1132
    :cond_37
    const/4 v4, 0x2

    .line 1133
    :goto_1a
    if-eqz v4, :cond_38

    .line 1134
    .line 1135
    goto :goto_1c

    .line 1136
    :cond_38
    const/4 v4, 0x4

    .line 1137
    invoke-virtual {v3, v4}, Lp0/E;->M(I)V

    .line 1138
    .line 1139
    .line 1140
    :cond_39
    invoke-virtual {v3}, Lp0/E;->a()I

    .line 1141
    .line 1142
    .line 1143
    move-result v4

    .line 1144
    if-lez v4, :cond_3c

    .line 1145
    .line 1146
    invoke-virtual {v3}, Lp0/E;->l()I

    .line 1147
    .line 1148
    .line 1149
    move-result v4

    .line 1150
    if-eq v4, v6, :cond_3b

    .line 1151
    .line 1152
    if-eq v4, v5, :cond_3a

    .line 1153
    .line 1154
    const/4 v4, 0x0

    .line 1155
    goto :goto_1b

    .line 1156
    :cond_3a
    const/4 v4, 0x1

    .line 1157
    goto :goto_1b

    .line 1158
    :cond_3b
    const/4 v4, 0x2

    .line 1159
    :goto_1b
    if-eqz v4, :cond_39

    .line 1160
    .line 1161
    goto :goto_1c

    .line 1162
    :cond_3c
    const/4 v4, 0x0

    .line 1163
    :goto_1c
    iput v4, v1, Lo1/l;->D:I

    .line 1164
    .line 1165
    goto :goto_1d

    .line 1166
    :cond_3d
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1167
    .line 1168
    .line 1169
    move-result v5

    .line 1170
    if-nez v5, :cond_40

    .line 1171
    .line 1172
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v4

    .line 1176
    check-cast v4, Lq0/c;

    .line 1177
    .line 1178
    new-instance v5, Lq0/d;

    .line 1179
    .line 1180
    iget v6, v1, Lo1/l;->l:I

    .line 1181
    .line 1182
    invoke-direct {v5, v6, v3}, Lq0/d;-><init>(ILp0/E;)V

    .line 1183
    .line 1184
    .line 1185
    iget-object v3, v4, Lq0/c;->d:Ljava/util/ArrayList;

    .line 1186
    .line 1187
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1188
    .line 1189
    .line 1190
    goto :goto_1d

    .line 1191
    :cond_3e
    iget-boolean v3, v1, Lo1/l;->u:Z

    .line 1192
    .line 1193
    if-nez v3, :cond_3f

    .line 1194
    .line 1195
    iget v3, v1, Lo1/l;->l:I

    .line 1196
    .line 1197
    const v4, 0x6d646174

    .line 1198
    .line 1199
    .line 1200
    if-ne v3, v4, :cond_3f

    .line 1201
    .line 1202
    const/4 v3, 0x1

    .line 1203
    iput v3, v1, Lo1/l;->D:I

    .line 1204
    .line 1205
    :cond_3f
    cmp-long v3, v5, v17

    .line 1206
    .line 1207
    if-gez v3, :cond_41

    .line 1208
    .line 1209
    long-to-int v3, v5

    .line 1210
    invoke-interface {v0, v3}, LW0/t;->n(I)V

    .line 1211
    .line 1212
    .line 1213
    :cond_40
    :goto_1d
    const/4 v3, 0x0

    .line 1214
    goto :goto_1e

    .line 1215
    :cond_41
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 1216
    .line 1217
    .line 1218
    move-result-wide v3

    .line 1219
    add-long/2addr v3, v5

    .line 1220
    iput-wide v3, v2, LW0/w;->a:J

    .line 1221
    .line 1222
    const/4 v3, 0x1

    .line 1223
    :goto_1e
    invoke-virtual {v1, v7, v8}, Lo1/l;->n(J)V

    .line 1224
    .line 1225
    .line 1226
    iget-boolean v4, v1, Lo1/l;->v:Z

    .line 1227
    .line 1228
    if-eqz v4, :cond_42

    .line 1229
    .line 1230
    const/4 v5, 0x1

    .line 1231
    iput-boolean v5, v1, Lo1/l;->w:Z

    .line 1232
    .line 1233
    const-wide/16 v3, 0x0

    .line 1234
    .line 1235
    iput-wide v3, v2, LW0/w;->a:J

    .line 1236
    .line 1237
    const/4 v3, 0x0

    .line 1238
    iput-boolean v3, v1, Lo1/l;->v:Z

    .line 1239
    .line 1240
    goto :goto_1f

    .line 1241
    :cond_42
    const/4 v5, 0x1

    .line 1242
    if-eqz v3, :cond_0

    .line 1243
    .line 1244
    :goto_1f
    iget v3, v1, Lo1/l;->k:I

    .line 1245
    .line 1246
    const/4 v4, 0x2

    .line 1247
    if-eq v3, v4, :cond_0

    .line 1248
    .line 1249
    return v5

    .line 1250
    :cond_43
    const/4 v5, 0x1

    .line 1251
    iget v3, v1, Lo1/l;->n:I

    .line 1252
    .line 1253
    iget-object v6, v1, Lo1/l;->f:Lp0/E;

    .line 1254
    .line 1255
    if-nez v3, :cond_45

    .line 1256
    .line 1257
    iget-object v3, v6, Lp0/E;->a:[B

    .line 1258
    .line 1259
    const/16 v7, 0x8

    .line 1260
    .line 1261
    const/4 v8, 0x0

    .line 1262
    invoke-interface {v0, v3, v8, v7, v5}, LW0/t;->b([BIIZ)Z

    .line 1263
    .line 1264
    .line 1265
    move-result v3

    .line 1266
    if-nez v3, :cond_44

    .line 1267
    .line 1268
    const/4 v3, -0x1

    .line 1269
    return v3

    .line 1270
    :cond_44
    iput v7, v1, Lo1/l;->n:I

    .line 1271
    .line 1272
    invoke-virtual {v6, v8}, Lp0/E;->L(I)V

    .line 1273
    .line 1274
    .line 1275
    invoke-virtual {v6}, Lp0/E;->B()J

    .line 1276
    .line 1277
    .line 1278
    move-result-wide v7

    .line 1279
    iput-wide v7, v1, Lo1/l;->m:J

    .line 1280
    .line 1281
    invoke-virtual {v6}, Lp0/E;->l()I

    .line 1282
    .line 1283
    .line 1284
    move-result v3

    .line 1285
    iput v3, v1, Lo1/l;->l:I

    .line 1286
    .line 1287
    :cond_45
    iget-wide v7, v1, Lo1/l;->m:J

    .line 1288
    .line 1289
    const-wide/16 v12, 0x1

    .line 1290
    .line 1291
    cmp-long v3, v7, v12

    .line 1292
    .line 1293
    if-nez v3, :cond_46

    .line 1294
    .line 1295
    iget-object v3, v6, Lp0/E;->a:[B

    .line 1296
    .line 1297
    const/16 v5, 0x8

    .line 1298
    .line 1299
    invoke-interface {v0, v3, v5, v5}, LW0/t;->readFully([BII)V

    .line 1300
    .line 1301
    .line 1302
    iget v3, v1, Lo1/l;->n:I

    .line 1303
    .line 1304
    add-int/2addr v3, v5

    .line 1305
    iput v3, v1, Lo1/l;->n:I

    .line 1306
    .line 1307
    invoke-virtual {v6}, Lp0/E;->E()J

    .line 1308
    .line 1309
    .line 1310
    move-result-wide v7

    .line 1311
    iput-wide v7, v1, Lo1/l;->m:J

    .line 1312
    .line 1313
    goto :goto_20

    .line 1314
    :cond_46
    const-wide/16 v12, 0x0

    .line 1315
    .line 1316
    cmp-long v3, v7, v12

    .line 1317
    .line 1318
    if-nez v3, :cond_48

    .line 1319
    .line 1320
    invoke-interface/range {p1 .. p1}, LW0/t;->j()J

    .line 1321
    .line 1322
    .line 1323
    move-result-wide v7

    .line 1324
    const-wide/16 v12, -0x1

    .line 1325
    .line 1326
    cmp-long v3, v7, v12

    .line 1327
    .line 1328
    if-nez v3, :cond_47

    .line 1329
    .line 1330
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v3

    .line 1334
    check-cast v3, Lq0/c;

    .line 1335
    .line 1336
    if-eqz v3, :cond_47

    .line 1337
    .line 1338
    iget-wide v7, v3, Lq0/c;->c:J

    .line 1339
    .line 1340
    :cond_47
    cmp-long v3, v7, v12

    .line 1341
    .line 1342
    if-eqz v3, :cond_48

    .line 1343
    .line 1344
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 1345
    .line 1346
    .line 1347
    move-result-wide v12

    .line 1348
    sub-long/2addr v7, v12

    .line 1349
    iget v3, v1, Lo1/l;->n:I

    .line 1350
    .line 1351
    int-to-long v12, v3

    .line 1352
    add-long/2addr v7, v12

    .line 1353
    iput-wide v7, v1, Lo1/l;->m:J

    .line 1354
    .line 1355
    :cond_48
    :goto_20
    iget-wide v7, v1, Lo1/l;->m:J

    .line 1356
    .line 1357
    iget v3, v1, Lo1/l;->n:I

    .line 1358
    .line 1359
    int-to-long v12, v3

    .line 1360
    cmp-long v5, v7, v12

    .line 1361
    .line 1362
    if-ltz v5, :cond_51

    .line 1363
    .line 1364
    iget v5, v1, Lo1/l;->l:I

    .line 1365
    .line 1366
    const v7, 0x6d6f6f76

    .line 1367
    .line 1368
    .line 1369
    const v8, 0x6d657461

    .line 1370
    .line 1371
    .line 1372
    if-eq v5, v7, :cond_4e

    .line 1373
    .line 1374
    const v7, 0x7472616b

    .line 1375
    .line 1376
    .line 1377
    if-eq v5, v7, :cond_4e

    .line 1378
    .line 1379
    const v7, 0x6d646961

    .line 1380
    .line 1381
    .line 1382
    if-eq v5, v7, :cond_4e

    .line 1383
    .line 1384
    const v7, 0x6d696e66

    .line 1385
    .line 1386
    .line 1387
    if-eq v5, v7, :cond_4e

    .line 1388
    .line 1389
    const v7, 0x7374626c

    .line 1390
    .line 1391
    .line 1392
    if-eq v5, v7, :cond_4e

    .line 1393
    .line 1394
    const v7, 0x65647473

    .line 1395
    .line 1396
    .line 1397
    if-eq v5, v7, :cond_4e

    .line 1398
    .line 1399
    if-eq v5, v8, :cond_4e

    .line 1400
    .line 1401
    const v7, 0x61787465

    .line 1402
    .line 1403
    .line 1404
    if-ne v5, v7, :cond_49

    .line 1405
    .line 1406
    goto/16 :goto_24

    .line 1407
    .line 1408
    :cond_49
    const v4, 0x6d646864

    .line 1409
    .line 1410
    .line 1411
    if-eq v5, v4, :cond_4a

    .line 1412
    .line 1413
    const v4, 0x6d766864

    .line 1414
    .line 1415
    .line 1416
    if-eq v5, v4, :cond_4a

    .line 1417
    .line 1418
    const v4, 0x68646c72    # 4.3148E24f

    .line 1419
    .line 1420
    .line 1421
    if-eq v5, v4, :cond_4a

    .line 1422
    .line 1423
    const v4, 0x73747364

    .line 1424
    .line 1425
    .line 1426
    if-eq v5, v4, :cond_4a

    .line 1427
    .line 1428
    const v4, 0x73747473

    .line 1429
    .line 1430
    .line 1431
    if-eq v5, v4, :cond_4a

    .line 1432
    .line 1433
    const v4, 0x73747373

    .line 1434
    .line 1435
    .line 1436
    if-eq v5, v4, :cond_4a

    .line 1437
    .line 1438
    const v4, 0x63747473

    .line 1439
    .line 1440
    .line 1441
    if-eq v5, v4, :cond_4a

    .line 1442
    .line 1443
    const v4, 0x656c7374

    .line 1444
    .line 1445
    .line 1446
    if-eq v5, v4, :cond_4a

    .line 1447
    .line 1448
    const v4, 0x73747363

    .line 1449
    .line 1450
    .line 1451
    if-eq v5, v4, :cond_4a

    .line 1452
    .line 1453
    const v4, 0x7374737a

    .line 1454
    .line 1455
    .line 1456
    if-eq v5, v4, :cond_4a

    .line 1457
    .line 1458
    const v4, 0x73747a32

    .line 1459
    .line 1460
    .line 1461
    if-eq v5, v4, :cond_4a

    .line 1462
    .line 1463
    const v4, 0x7374636f

    .line 1464
    .line 1465
    .line 1466
    if-eq v5, v4, :cond_4a

    .line 1467
    .line 1468
    const v4, 0x636f3634

    .line 1469
    .line 1470
    .line 1471
    if-eq v5, v4, :cond_4a

    .line 1472
    .line 1473
    const v4, 0x746b6864

    .line 1474
    .line 1475
    .line 1476
    if-eq v5, v4, :cond_4a

    .line 1477
    .line 1478
    const v4, 0x66747970

    .line 1479
    .line 1480
    .line 1481
    if-eq v5, v4, :cond_4a

    .line 1482
    .line 1483
    const v4, 0x75647461

    .line 1484
    .line 1485
    .line 1486
    if-eq v5, v4, :cond_4a

    .line 1487
    .line 1488
    const v4, 0x6b657973

    .line 1489
    .line 1490
    .line 1491
    if-eq v5, v4, :cond_4a

    .line 1492
    .line 1493
    const v4, 0x696c7374

    .line 1494
    .line 1495
    .line 1496
    if-ne v5, v4, :cond_4b

    .line 1497
    .line 1498
    :cond_4a
    const/16 v4, 0x8

    .line 1499
    .line 1500
    goto :goto_21

    .line 1501
    :cond_4b
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 1502
    .line 1503
    .line 1504
    const/4 v3, 0x0

    .line 1505
    iput-object v3, v1, Lo1/l;->o:Lp0/E;

    .line 1506
    .line 1507
    const/4 v3, 0x1

    .line 1508
    iput v3, v1, Lo1/l;->k:I

    .line 1509
    .line 1510
    goto/16 :goto_0

    .line 1511
    .line 1512
    :goto_21
    if-ne v3, v4, :cond_4c

    .line 1513
    .line 1514
    const/4 v3, 0x1

    .line 1515
    goto :goto_22

    .line 1516
    :cond_4c
    const/4 v3, 0x0

    .line 1517
    :goto_22
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 1518
    .line 1519
    .line 1520
    iget-wide v3, v1, Lo1/l;->m:J

    .line 1521
    .line 1522
    const-wide/32 v7, 0x7fffffff

    .line 1523
    .line 1524
    .line 1525
    cmp-long v5, v3, v7

    .line 1526
    .line 1527
    if-gtz v5, :cond_4d

    .line 1528
    .line 1529
    const/4 v3, 0x1

    .line 1530
    goto :goto_23

    .line 1531
    :cond_4d
    const/4 v3, 0x0

    .line 1532
    :goto_23
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 1533
    .line 1534
    .line 1535
    new-instance v3, Lp0/E;

    .line 1536
    .line 1537
    iget-wide v4, v1, Lo1/l;->m:J

    .line 1538
    .line 1539
    long-to-int v5, v4

    .line 1540
    invoke-direct {v3, v5}, Lp0/E;-><init>(I)V

    .line 1541
    .line 1542
    .line 1543
    iget-object v4, v6, Lp0/E;->a:[B

    .line 1544
    .line 1545
    iget-object v5, v3, Lp0/E;->a:[B

    .line 1546
    .line 1547
    const/16 v6, 0x8

    .line 1548
    .line 1549
    const/4 v7, 0x0

    .line 1550
    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1551
    .line 1552
    .line 1553
    iput-object v3, v1, Lo1/l;->o:Lp0/E;

    .line 1554
    .line 1555
    const/4 v3, 0x1

    .line 1556
    iput v3, v1, Lo1/l;->k:I

    .line 1557
    .line 1558
    goto/16 :goto_0

    .line 1559
    .line 1560
    :cond_4e
    :goto_24
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 1561
    .line 1562
    .line 1563
    move-result-wide v5

    .line 1564
    iget-wide v12, v1, Lo1/l;->m:J

    .line 1565
    .line 1566
    add-long/2addr v5, v12

    .line 1567
    iget v3, v1, Lo1/l;->n:I

    .line 1568
    .line 1569
    int-to-long v14, v3

    .line 1570
    sub-long/2addr v5, v14

    .line 1571
    cmp-long v3, v12, v14

    .line 1572
    .line 1573
    if-eqz v3, :cond_4f

    .line 1574
    .line 1575
    iget v3, v1, Lo1/l;->l:I

    .line 1576
    .line 1577
    if-ne v3, v8, :cond_4f

    .line 1578
    .line 1579
    const/16 v3, 0x8

    .line 1580
    .line 1581
    invoke-virtual {v10, v3}, Lp0/E;->I(I)V

    .line 1582
    .line 1583
    .line 1584
    iget-object v7, v10, Lp0/E;->a:[B

    .line 1585
    .line 1586
    const/4 v8, 0x0

    .line 1587
    invoke-interface {v0, v8, v7, v3}, LW0/t;->c(I[BI)V

    .line 1588
    .line 1589
    .line 1590
    invoke-static {v10}, Lo1/e;->a(Lp0/E;)V

    .line 1591
    .line 1592
    .line 1593
    iget v3, v10, Lp0/E;->b:I

    .line 1594
    .line 1595
    invoke-interface {v0, v3}, LW0/t;->n(I)V

    .line 1596
    .line 1597
    .line 1598
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 1599
    .line 1600
    .line 1601
    :cond_4f
    new-instance v3, Lq0/c;

    .line 1602
    .line 1603
    iget v7, v1, Lo1/l;->l:I

    .line 1604
    .line 1605
    invoke-direct {v3, v7, v5, v6}, Lq0/c;-><init>(IJ)V

    .line 1606
    .line 1607
    .line 1608
    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 1609
    .line 1610
    .line 1611
    iget-wide v3, v1, Lo1/l;->m:J

    .line 1612
    .line 1613
    iget v7, v1, Lo1/l;->n:I

    .line 1614
    .line 1615
    int-to-long v7, v7

    .line 1616
    cmp-long v9, v3, v7

    .line 1617
    .line 1618
    if-nez v9, :cond_50

    .line 1619
    .line 1620
    invoke-virtual {v1, v5, v6}, Lo1/l;->n(J)V

    .line 1621
    .line 1622
    .line 1623
    goto/16 :goto_0

    .line 1624
    .line 1625
    :cond_50
    const/4 v3, 0x0

    .line 1626
    iput v3, v1, Lo1/l;->k:I

    .line 1627
    .line 1628
    iput v3, v1, Lo1/l;->n:I

    .line 1629
    .line 1630
    goto/16 :goto_0

    .line 1631
    .line 1632
    :cond_51
    const-string v0, "Atom size less than header length (unsupported)."

    .line 1633
    .line 1634
    invoke-static {v0}, Lm0/P;->c(Ljava/lang/String;)Lm0/P;

    .line 1635
    .line 1636
    .line 1637
    move-result-object v0

    .line 1638
    throw v0

    .line 1639
    :sswitch_data_0
    .sparse-switch
        -0x6604662e -> :sswitch_4
        -0x4f6659e5 -> :sswitch_3
        -0x4a96a712 -> :sswitch_2
        -0x3182f331 -> :sswitch_1
        0x68f2d704 -> :sswitch_0
    .end sparse-switch

    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lo1/l;->g:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lo1/l;->n:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lo1/l;->p:I

    .line 11
    .line 12
    iput v0, p0, Lo1/l;->q:I

    .line 13
    .line 14
    iput v0, p0, Lo1/l;->r:I

    .line 15
    .line 16
    iput v0, p0, Lo1/l;->s:I

    .line 17
    .line 18
    iput-boolean v0, p0, Lo1/l;->t:Z

    .line 19
    .line 20
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    cmp-long v4, p1, v2

    .line 23
    .line 24
    if-nez v4, :cond_1

    .line 25
    .line 26
    iget p1, p0, Lo1/l;->k:I

    .line 27
    .line 28
    const/4 p2, 0x3

    .line 29
    if-eq p1, p2, :cond_0

    .line 30
    .line 31
    iput v0, p0, Lo1/l;->k:I

    .line 32
    .line 33
    iput v0, p0, Lo1/l;->n:I

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_0
    iget-object p1, p0, Lo1/l;->h:Lo1/n;

    .line 37
    .line 38
    iget-object p2, p1, Lo1/n;->a:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 41
    .line 42
    .line 43
    iput v0, p1, Lo1/n;->b:I

    .line 44
    .line 45
    iget-object p1, p0, Lo1/l;->i:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 48
    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_1
    iget-object p1, p0, Lo1/l;->z:[Lo1/k;

    .line 52
    .line 53
    array-length p2, p1

    .line 54
    const/4 v2, 0x0

    .line 55
    :goto_0
    if-ge v2, p2, :cond_6

    .line 56
    .line 57
    aget-object v3, p1, v2

    .line 58
    .line 59
    iget-object v4, v3, Lo1/k;->b:Lo1/s;

    .line 60
    .line 61
    iget-object v5, v4, Lo1/s;->f:[J

    .line 62
    .line 63
    invoke-static {v5, p3, p4, v0}, Lp0/M;->e([JJZ)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    :goto_1
    if-ltz v5, :cond_3

    .line 68
    .line 69
    iget-object v6, v4, Lo1/s;->g:[I

    .line 70
    .line 71
    aget v6, v6, v5

    .line 72
    .line 73
    and-int/lit8 v6, v6, 0x1

    .line 74
    .line 75
    if-eqz v6, :cond_2

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    add-int/lit8 v5, v5, -0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    const/4 v5, -0x1

    .line 82
    :goto_2
    if-ne v5, v1, :cond_4

    .line 83
    .line 84
    invoke-virtual {v4, p3, p4}, Lo1/s;->a(J)I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    :cond_4
    iput v5, v3, Lo1/k;->e:I

    .line 89
    .line 90
    iget-object v3, v3, Lo1/k;->d:LW0/M;

    .line 91
    .line 92
    if-eqz v3, :cond_5

    .line 93
    .line 94
    iput-boolean v0, v3, LW0/M;->b:Z

    .line 95
    .line 96
    iput v0, v3, LW0/M;->c:I

    .line 97
    .line 98
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    :goto_3
    return-void
.end method

.method public final j()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/l;->j:Lz4/d0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k(J)LW0/E;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    iget-object v3, v0, Lo1/l;->z:[Lo1/k;

    .line 6
    .line 7
    array-length v4, v3

    .line 8
    sget-object v5, LW0/G;->c:LW0/G;

    .line 9
    .line 10
    if-nez v4, :cond_0

    .line 11
    .line 12
    new-instance v1, LW0/E;

    .line 13
    .line 14
    invoke-direct {v1, v5, v5}, LW0/E;-><init>(LW0/G;LW0/G;)V

    .line 15
    .line 16
    .line 17
    goto/16 :goto_d

    .line 18
    .line 19
    :cond_0
    iget v4, v0, Lo1/l;->B:I

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, -0x1

    .line 23
    if-eq v4, v7, :cond_6

    .line 24
    .line 25
    aget-object v3, v3, v4

    .line 26
    .line 27
    iget-object v3, v3, Lo1/k;->b:Lo1/s;

    .line 28
    .line 29
    iget-object v4, v3, Lo1/s;->f:[J

    .line 30
    .line 31
    invoke-static {v4, v1, v2, v6}, Lp0/M;->e([JJZ)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    :goto_0
    if-ltz v4, :cond_2

    .line 36
    .line 37
    iget-object v11, v3, Lo1/s;->g:[I

    .line 38
    .line 39
    aget v11, v11, v4

    .line 40
    .line 41
    and-int/lit8 v11, v11, 0x1

    .line 42
    .line 43
    if-eqz v11, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v4, -0x1

    .line 50
    :goto_1
    if-ne v4, v7, :cond_3

    .line 51
    .line 52
    invoke-virtual {v3, v1, v2}, Lo1/s;->a(J)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    :cond_3
    if-ne v4, v7, :cond_4

    .line 57
    .line 58
    new-instance v1, LW0/E;

    .line 59
    .line 60
    invoke-direct {v1, v5, v5}, LW0/E;-><init>(LW0/G;LW0/G;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_d

    .line 64
    .line 65
    :cond_4
    iget-object v5, v3, Lo1/s;->f:[J

    .line 66
    .line 67
    aget-wide v11, v5, v4

    .line 68
    .line 69
    iget-object v13, v3, Lo1/s;->c:[J

    .line 70
    .line 71
    aget-wide v14, v13, v4

    .line 72
    .line 73
    cmp-long v16, v11, v1

    .line 74
    .line 75
    if-gez v16, :cond_5

    .line 76
    .line 77
    iget v9, v3, Lo1/s;->b:I

    .line 78
    .line 79
    add-int/lit8 v9, v9, -0x1

    .line 80
    .line 81
    if-ge v4, v9, :cond_5

    .line 82
    .line 83
    invoke-virtual {v3, v1, v2}, Lo1/s;->a(J)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eq v1, v7, :cond_5

    .line 88
    .line 89
    if-eq v1, v4, :cond_5

    .line 90
    .line 91
    aget-wide v2, v5, v1

    .line 92
    .line 93
    aget-wide v9, v13, v1

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    const-wide/16 v9, -0x1

    .line 102
    .line 103
    :goto_2
    move-wide v3, v2

    .line 104
    move-wide v1, v11

    .line 105
    goto :goto_3

    .line 106
    :cond_6
    const-wide v14, 0x7fffffffffffffffL

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    const-wide/16 v9, -0x1

    .line 117
    .line 118
    :goto_3
    move-wide v11, v14

    .line 119
    const/4 v5, 0x0

    .line 120
    :goto_4
    iget-object v13, v0, Lo1/l;->z:[Lo1/k;

    .line 121
    .line 122
    array-length v14, v13

    .line 123
    if-ge v5, v14, :cond_11

    .line 124
    .line 125
    iget v14, v0, Lo1/l;->B:I

    .line 126
    .line 127
    if-eq v5, v14, :cond_10

    .line 128
    .line 129
    aget-object v13, v13, v5

    .line 130
    .line 131
    iget-object v13, v13, Lo1/k;->b:Lo1/s;

    .line 132
    .line 133
    iget-object v14, v13, Lo1/s;->f:[J

    .line 134
    .line 135
    invoke-static {v14, v1, v2, v6}, Lp0/M;->e([JJZ)I

    .line 136
    .line 137
    .line 138
    move-result v14

    .line 139
    :goto_5
    iget-object v6, v13, Lo1/s;->g:[I

    .line 140
    .line 141
    if-ltz v14, :cond_8

    .line 142
    .line 143
    aget v16, v6, v14

    .line 144
    .line 145
    and-int/lit8 v16, v16, 0x1

    .line 146
    .line 147
    if-eqz v16, :cond_7

    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_7
    add-int/lit8 v14, v14, -0x1

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_8
    const/4 v14, -0x1

    .line 154
    :goto_6
    if-ne v14, v7, :cond_9

    .line 155
    .line 156
    invoke-virtual {v13, v1, v2}, Lo1/s;->a(J)I

    .line 157
    .line 158
    .line 159
    move-result v14

    .line 160
    :cond_9
    iget-object v8, v13, Lo1/s;->c:[J

    .line 161
    .line 162
    if-ne v14, v7, :cond_a

    .line 163
    .line 164
    move-wide/from16 p1, v1

    .line 165
    .line 166
    :goto_7
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    goto :goto_8

    .line 172
    :cond_a
    move-wide/from16 p1, v1

    .line 173
    .line 174
    aget-wide v0, v8, v14

    .line 175
    .line 176
    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 177
    .line 178
    .line 179
    move-result-wide v11

    .line 180
    goto :goto_7

    .line 181
    :goto_8
    cmp-long v2, v3, v0

    .line 182
    .line 183
    if-eqz v2, :cond_f

    .line 184
    .line 185
    iget-object v0, v13, Lo1/s;->f:[J

    .line 186
    .line 187
    const/4 v1, 0x0

    .line 188
    invoke-static {v0, v3, v4, v1}, Lp0/M;->e([JJZ)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    :goto_9
    if-ltz v0, :cond_c

    .line 193
    .line 194
    aget v2, v6, v0

    .line 195
    .line 196
    and-int/lit8 v2, v2, 0x1

    .line 197
    .line 198
    if-eqz v2, :cond_b

    .line 199
    .line 200
    goto :goto_a

    .line 201
    :cond_b
    add-int/lit8 v0, v0, -0x1

    .line 202
    .line 203
    goto :goto_9

    .line 204
    :cond_c
    const/4 v0, -0x1

    .line 205
    :goto_a
    if-ne v0, v7, :cond_d

    .line 206
    .line 207
    invoke-virtual {v13, v3, v4}, Lo1/s;->a(J)I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    :cond_d
    if-ne v0, v7, :cond_e

    .line 212
    .line 213
    goto :goto_c

    .line 214
    :cond_e
    aget-wide v13, v8, v0

    .line 215
    .line 216
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 217
    .line 218
    .line 219
    move-result-wide v9

    .line 220
    goto :goto_c

    .line 221
    :cond_f
    :goto_b
    const/4 v1, 0x0

    .line 222
    goto :goto_c

    .line 223
    :cond_10
    move-wide/from16 p1, v1

    .line 224
    .line 225
    goto :goto_b

    .line 226
    :goto_c
    add-int/lit8 v5, v5, 0x1

    .line 227
    .line 228
    move-object/from16 v0, p0

    .line 229
    .line 230
    move-wide/from16 v1, p1

    .line 231
    .line 232
    const/4 v6, 0x0

    .line 233
    goto :goto_4

    .line 234
    :cond_11
    move-wide/from16 p1, v1

    .line 235
    .line 236
    new-instance v0, LW0/G;

    .line 237
    .line 238
    invoke-direct {v0, v1, v2, v11, v12}, LW0/G;-><init>(JJ)V

    .line 239
    .line 240
    .line 241
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    cmp-long v5, v3, v1

    .line 247
    .line 248
    if-nez v5, :cond_12

    .line 249
    .line 250
    new-instance v1, LW0/E;

    .line 251
    .line 252
    invoke-direct {v1, v0, v0}, LW0/E;-><init>(LW0/G;LW0/G;)V

    .line 253
    .line 254
    .line 255
    goto :goto_d

    .line 256
    :cond_12
    new-instance v1, LW0/G;

    .line 257
    .line 258
    invoke-direct {v1, v3, v4, v9, v10}, LW0/G;-><init>(JJ)V

    .line 259
    .line 260
    .line 261
    new-instance v2, LW0/E;

    .line 262
    .line 263
    invoke-direct {v2, v0, v1}, LW0/E;-><init>(LW0/G;LW0/G;)V

    .line 264
    .line 265
    .line 266
    move-object v1, v2

    .line 267
    :goto_d
    return-object v1
.end method

.method public final m()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lo1/l;->C:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final n(J)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :cond_0
    :goto_0
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    iget-object v5, v0, Lo1/l;->g:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v6

    .line 13
    const/4 v7, 0x2

    .line 14
    if-nez v6, :cond_20

    .line 15
    .line 16
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    check-cast v6, Lq0/c;

    .line 21
    .line 22
    iget-wide v8, v6, Lq0/c;->c:J

    .line 23
    .line 24
    cmp-long v6, v8, p1

    .line 25
    .line 26
    if-nez v6, :cond_20

    .line 27
    .line 28
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    move-object v8, v6

    .line 33
    check-cast v8, Lq0/c;

    .line 34
    .line 35
    iget v6, v8, Lq0/e;->b:I

    .line 36
    .line 37
    const v9, 0x6d6f6f76

    .line 38
    .line 39
    .line 40
    if-ne v6, v9, :cond_1f

    .line 41
    .line 42
    const v6, 0x6d657461

    .line 43
    .line 44
    .line 45
    invoke-virtual {v8, v6}, Lq0/c;->e(I)Lq0/c;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    new-instance v9, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    const/4 v15, 0x3

    .line 55
    const/16 v16, 0x0

    .line 56
    .line 57
    if-eqz v6, :cond_8

    .line 58
    .line 59
    invoke-static {v6}, Lo1/e;->f(Lq0/c;)Lm0/N;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    iget-boolean v10, v0, Lo1/l;->w:Z

    .line 64
    .line 65
    if-eqz v10, :cond_7

    .line 66
    .line 67
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    const-string v9, "auxiliary.tracks.interleaved"

    .line 71
    .line 72
    invoke-static {v6, v9}, LZ3/H;->d(Lm0/N;Ljava/lang/String;)Lq0/a;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    if-eqz v9, :cond_1

    .line 77
    .line 78
    iget-object v9, v9, Lq0/a;->b:[B

    .line 79
    .line 80
    aget-byte v9, v9, v3

    .line 81
    .line 82
    if-nez v9, :cond_1

    .line 83
    .line 84
    const-wide/16 v9, 0x10

    .line 85
    .line 86
    add-long/2addr v9, v1

    .line 87
    iput-wide v9, v0, Lo1/l;->x:J

    .line 88
    .line 89
    :cond_1
    const-string v9, "auxiliary.tracks.map"

    .line 90
    .line 91
    invoke-static {v6, v9}, LZ3/H;->d(Lm0/N;Ljava/lang/String;)Lq0/a;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v9}, Lq0/a;->a()Ljava/util/ArrayList;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    new-instance v10, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result v11

    .line 108
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    .line 110
    .line 111
    const/4 v11, 0x0

    .line 112
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    if-ge v11, v12, :cond_6

    .line 117
    .line 118
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v12

    .line 122
    check-cast v12, Ljava/lang/Integer;

    .line 123
    .line 124
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 125
    .line 126
    .line 127
    move-result v12

    .line 128
    if-eqz v12, :cond_5

    .line 129
    .line 130
    if-eq v12, v4, :cond_4

    .line 131
    .line 132
    if-eq v12, v7, :cond_3

    .line 133
    .line 134
    if-eq v12, v15, :cond_2

    .line 135
    .line 136
    const/4 v12, 0x0

    .line 137
    goto :goto_2

    .line 138
    :cond_2
    const/4 v12, 0x4

    .line 139
    goto :goto_2

    .line 140
    :cond_3
    const/4 v12, 0x3

    .line 141
    goto :goto_2

    .line 142
    :cond_4
    const/4 v12, 0x2

    .line 143
    goto :goto_2

    .line 144
    :cond_5
    const/4 v12, 0x1

    .line 145
    :goto_2
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v12

    .line 149
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    add-int/2addr v11, v4

    .line 153
    goto :goto_1

    .line 154
    :cond_6
    move-object v14, v10

    .line 155
    goto :goto_3

    .line 156
    :cond_7
    move-object v14, v9

    .line 157
    goto :goto_3

    .line 158
    :cond_8
    move-object v14, v9

    .line 159
    move-object/from16 v6, v16

    .line 160
    .line 161
    :goto_3
    new-instance v13, Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .line 165
    .line 166
    iget v9, v0, Lo1/l;->D:I

    .line 167
    .line 168
    if-ne v9, v4, :cond_9

    .line 169
    .line 170
    const/16 v17, 0x1

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_9
    const/16 v17, 0x0

    .line 174
    .line 175
    :goto_4
    new-instance v12, LW0/A;

    .line 176
    .line 177
    invoke-direct {v12}, LW0/A;-><init>()V

    .line 178
    .line 179
    .line 180
    const v9, 0x75647461

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8, v9}, Lq0/c;->f(I)Lq0/d;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    if-eqz v9, :cond_a

    .line 188
    .line 189
    invoke-static {v9}, Lo1/e;->k(Lq0/d;)Lm0/N;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    invoke-virtual {v12, v9}, LW0/A;->b(Lm0/N;)V

    .line 194
    .line 195
    .line 196
    move-object/from16 v18, v9

    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_a
    move-object/from16 v18, v16

    .line 200
    .line 201
    :goto_5
    new-instance v10, Lm0/N;

    .line 202
    .line 203
    const v9, 0x6d766864

    .line 204
    .line 205
    .line 206
    invoke-virtual {v8, v9}, Lq0/c;->f(I)Lq0/d;

    .line 207
    .line 208
    .line 209
    move-result-object v9

    .line 210
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    iget-object v9, v9, Lq0/d;->c:Lp0/E;

    .line 214
    .line 215
    invoke-static {v9}, Lo1/e;->g(Lp0/E;)Lq0/g;

    .line 216
    .line 217
    .line 218
    move-result-object v9

    .line 219
    new-array v11, v4, [Lm0/M;

    .line 220
    .line 221
    aput-object v9, v11, v3

    .line 222
    .line 223
    invoke-direct {v10, v11}, Lm0/N;-><init>([Lm0/M;)V

    .line 224
    .line 225
    .line 226
    new-instance v11, LC0/h;

    .line 227
    .line 228
    const/16 v9, 0xa

    .line 229
    .line 230
    invoke-direct {v11, v9}, LC0/h;-><init>(I)V

    .line 231
    .line 232
    .line 233
    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    const/16 v21, 0x0

    .line 239
    .line 240
    const/16 v22, 0x0

    .line 241
    .line 242
    move-object v9, v12

    .line 243
    move-object/from16 v23, v10

    .line 244
    .line 245
    move-object/from16 v24, v11

    .line 246
    .line 247
    move-wide/from16 v10, v19

    .line 248
    .line 249
    move-object v1, v12

    .line 250
    move-object/from16 v12, v21

    .line 251
    .line 252
    move-object v2, v13

    .line 253
    move/from16 v13, v22

    .line 254
    .line 255
    move-object/from16 v21, v14

    .line 256
    .line 257
    move/from16 v14, v17

    .line 258
    .line 259
    const/4 v3, 0x3

    .line 260
    move-object/from16 v15, v24

    .line 261
    .line 262
    invoke-static/range {v8 .. v15}, Lo1/e;->j(Lq0/c;LW0/A;JLm0/n;ZZLy4/h;)Ljava/util/ArrayList;

    .line 263
    .line 264
    .line 265
    move-result-object v8

    .line 266
    iget-boolean v9, v0, Lo1/l;->w:Z

    .line 267
    .line 268
    if-eqz v9, :cond_c

    .line 269
    .line 270
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    .line 271
    .line 272
    .line 273
    move-result v9

    .line 274
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 275
    .line 276
    .line 277
    move-result v10

    .line 278
    if-ne v9, v10, :cond_b

    .line 279
    .line 280
    const/4 v9, 0x1

    .line 281
    goto :goto_6

    .line 282
    :cond_b
    const/4 v9, 0x0

    .line 283
    :goto_6
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 284
    .line 285
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    .line 286
    .line 287
    .line 288
    move-result v10

    .line 289
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 290
    .line 291
    .line 292
    move-result v11

    .line 293
    new-instance v12, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    const-string v13, "The number of auxiliary track types from metadata ("

    .line 296
    .line 297
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v10, ") is not same as the number of auxiliary tracks ("

    .line 304
    .line 305
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    const-string v10, ")"

    .line 312
    .line 313
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v10

    .line 320
    invoke-static {v10, v9}, Lcom/google/android/gms/internal/measurement/H1;->h(Ljava/lang/String;Z)V

    .line 321
    .line 322
    .line 323
    :cond_c
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/H1;->p(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v9

    .line 327
    const/4 v13, 0x0

    .line 328
    const/4 v14, 0x0

    .line 329
    const/4 v15, -0x1

    .line 330
    const-wide v25, -0x7fffffffffffffffL    # -4.9E-324

    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    :goto_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 336
    .line 337
    .line 338
    move-result v3

    .line 339
    if-ge v13, v3, :cond_19

    .line 340
    .line 341
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    check-cast v3, Lo1/s;

    .line 346
    .line 347
    iget v10, v3, Lo1/s;->b:I

    .line 348
    .line 349
    if-nez v10, :cond_d

    .line 350
    .line 351
    move/from16 v27, v14

    .line 352
    .line 353
    const/4 v3, 0x1

    .line 354
    const/4 v4, -0x1

    .line 355
    const-wide v28, -0x7fffffffffffffffL    # -4.9E-324

    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    move-object v14, v8

    .line 361
    goto/16 :goto_13

    .line 362
    .line 363
    :cond_d
    new-instance v10, Lo1/k;

    .line 364
    .line 365
    iget-object v7, v0, Lo1/l;->y:LW0/u;

    .line 366
    .line 367
    add-int/lit8 v27, v14, 0x1

    .line 368
    .line 369
    iget-object v4, v3, Lo1/s;->a:Lo1/p;

    .line 370
    .line 371
    iget v11, v4, Lo1/p;->b:I

    .line 372
    .line 373
    invoke-interface {v7, v14, v11}, LW0/u;->t(II)LW0/L;

    .line 374
    .line 375
    .line 376
    move-result-object v7

    .line 377
    invoke-direct {v10, v4, v3, v7}, Lo1/k;-><init>(Lo1/p;Lo1/s;LW0/L;)V

    .line 378
    .line 379
    .line 380
    iget-wide v11, v4, Lo1/p;->e:J

    .line 381
    .line 382
    const-wide v28, -0x7fffffffffffffffL    # -4.9E-324

    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    cmp-long v14, v11, v28

    .line 388
    .line 389
    if-eqz v14, :cond_e

    .line 390
    .line 391
    goto :goto_8

    .line 392
    :cond_e
    iget-wide v11, v3, Lo1/s;->h:J

    .line 393
    .line 394
    :goto_8
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    move-object/from16 v30, v7

    .line 398
    .line 399
    move-object v14, v8

    .line 400
    move-wide/from16 v7, v25

    .line 401
    .line 402
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 403
    .line 404
    .line 405
    move-result-wide v25

    .line 406
    iget-object v7, v4, Lo1/p;->g:Lm0/t;

    .line 407
    .line 408
    iget-object v8, v7, Lm0/t;->o:Ljava/lang/String;

    .line 409
    .line 410
    const-string v11, "audio/true-hd"

    .line 411
    .line 412
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result v8

    .line 416
    iget v3, v3, Lo1/s;->e:I

    .line 417
    .line 418
    if-eqz v8, :cond_f

    .line 419
    .line 420
    mul-int/lit8 v3, v3, 0x10

    .line 421
    .line 422
    goto :goto_9

    .line 423
    :cond_f
    add-int/lit8 v3, v3, 0x1e

    .line 424
    .line 425
    :goto_9
    invoke-virtual {v7}, Lm0/t;->a()Lm0/s;

    .line 426
    .line 427
    .line 428
    move-result-object v8

    .line 429
    iput v3, v8, Lm0/s;->o:I

    .line 430
    .line 431
    iget v3, v4, Lo1/p;->b:I

    .line 432
    .line 433
    const/4 v4, 0x2

    .line 434
    if-ne v3, v4, :cond_13

    .line 435
    .line 436
    iget v4, v0, Lo1/l;->b:I

    .line 437
    .line 438
    and-int/lit8 v4, v4, 0x8

    .line 439
    .line 440
    iget v11, v7, Lm0/t;->f:I

    .line 441
    .line 442
    if-eqz v4, :cond_11

    .line 443
    .line 444
    const/4 v4, -0x1

    .line 445
    if-ne v15, v4, :cond_10

    .line 446
    .line 447
    const/4 v4, 0x1

    .line 448
    goto :goto_a

    .line 449
    :cond_10
    const/4 v4, 0x2

    .line 450
    :goto_a
    or-int/2addr v11, v4

    .line 451
    :cond_11
    iget-boolean v4, v0, Lo1/l;->w:Z

    .line 452
    .line 453
    if-eqz v4, :cond_12

    .line 454
    .line 455
    const v4, 0x8000

    .line 456
    .line 457
    .line 458
    or-int/2addr v11, v4

    .line 459
    move-object/from16 v4, v21

    .line 460
    .line 461
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v12

    .line 465
    check-cast v12, Ljava/lang/Integer;

    .line 466
    .line 467
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 468
    .line 469
    .line 470
    move-result v12

    .line 471
    iput v12, v8, Lm0/s;->g:I

    .line 472
    .line 473
    goto :goto_b

    .line 474
    :cond_12
    move-object/from16 v4, v21

    .line 475
    .line 476
    :goto_b
    iput v11, v8, Lm0/s;->f:I

    .line 477
    .line 478
    :goto_c
    const/4 v11, 0x1

    .line 479
    goto :goto_d

    .line 480
    :cond_13
    move-object/from16 v4, v21

    .line 481
    .line 482
    goto :goto_c

    .line 483
    :goto_d
    if-ne v3, v11, :cond_15

    .line 484
    .line 485
    iget v11, v1, LW0/A;->a:I

    .line 486
    .line 487
    const/4 v12, -0x1

    .line 488
    move-object/from16 v21, v4

    .line 489
    .line 490
    if-eq v11, v12, :cond_14

    .line 491
    .line 492
    iget v4, v1, LW0/A;->b:I

    .line 493
    .line 494
    if-eq v4, v12, :cond_14

    .line 495
    .line 496
    iput v11, v8, Lm0/s;->I:I

    .line 497
    .line 498
    iput v4, v8, Lm0/s;->J:I

    .line 499
    .line 500
    :cond_14
    :goto_e
    const/4 v4, 0x3

    .line 501
    goto :goto_f

    .line 502
    :cond_15
    move-object/from16 v21, v4

    .line 503
    .line 504
    goto :goto_e

    .line 505
    :goto_f
    new-array v11, v4, [Lm0/N;

    .line 506
    .line 507
    iget-object v12, v0, Lo1/l;->i:Ljava/util/ArrayList;

    .line 508
    .line 509
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 510
    .line 511
    .line 512
    move-result v22

    .line 513
    if-eqz v22, :cond_16

    .line 514
    .line 515
    move-object/from16 v4, v16

    .line 516
    .line 517
    :goto_10
    const/4 v12, 0x0

    .line 518
    goto :goto_11

    .line 519
    :cond_16
    new-instance v4, Lm0/N;

    .line 520
    .line 521
    invoke-direct {v4, v12}, Lm0/N;-><init>(Ljava/util/List;)V

    .line 522
    .line 523
    .line 524
    goto :goto_10

    .line 525
    :goto_11
    aput-object v4, v11, v12

    .line 526
    .line 527
    const/4 v4, 0x1

    .line 528
    aput-object v18, v11, v4

    .line 529
    .line 530
    const/4 v4, 0x2

    .line 531
    aput-object v23, v11, v4

    .line 532
    .line 533
    iget-object v7, v7, Lm0/t;->l:Lm0/N;

    .line 534
    .line 535
    invoke-static {v3, v6, v8, v7, v11}, LZ3/H;->u(ILm0/N;Lm0/s;Lm0/N;[Lm0/N;)V

    .line 536
    .line 537
    .line 538
    invoke-static {v9}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v7

    .line 542
    iput-object v7, v8, Lm0/s;->m:Ljava/lang/String;

    .line 543
    .line 544
    new-instance v7, Lm0/t;

    .line 545
    .line 546
    invoke-direct {v7, v8}, Lm0/t;-><init>(Lm0/s;)V

    .line 547
    .line 548
    .line 549
    move-object/from16 v8, v30

    .line 550
    .line 551
    invoke-interface {v8, v7}, LW0/L;->b(Lm0/t;)V

    .line 552
    .line 553
    .line 554
    if-ne v3, v4, :cond_17

    .line 555
    .line 556
    const/4 v4, -0x1

    .line 557
    if-ne v15, v4, :cond_18

    .line 558
    .line 559
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 560
    .line 561
    .line 562
    move-result v15

    .line 563
    goto :goto_12

    .line 564
    :cond_17
    const/4 v4, -0x1

    .line 565
    :cond_18
    :goto_12
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    const/4 v3, 0x1

    .line 569
    :goto_13
    add-int/2addr v13, v3

    .line 570
    move-object v8, v14

    .line 571
    move/from16 v14, v27

    .line 572
    .line 573
    const/4 v4, 0x1

    .line 574
    const/4 v7, 0x2

    .line 575
    goto/16 :goto_7

    .line 576
    .line 577
    :cond_19
    move-wide/from16 v7, v25

    .line 578
    .line 579
    const/4 v4, -0x1

    .line 580
    iput v15, v0, Lo1/l;->B:I

    .line 581
    .line 582
    iput-wide v7, v0, Lo1/l;->C:J

    .line 583
    .line 584
    const/4 v1, 0x0

    .line 585
    new-array v3, v1, [Lo1/k;

    .line 586
    .line 587
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    check-cast v1, [Lo1/k;

    .line 592
    .line 593
    iput-object v1, v0, Lo1/l;->z:[Lo1/k;

    .line 594
    .line 595
    array-length v2, v1

    .line 596
    new-array v2, v2, [[J

    .line 597
    .line 598
    array-length v3, v1

    .line 599
    new-array v3, v3, [I

    .line 600
    .line 601
    array-length v6, v1

    .line 602
    new-array v6, v6, [J

    .line 603
    .line 604
    array-length v7, v1

    .line 605
    new-array v7, v7, [Z

    .line 606
    .line 607
    const/4 v12, 0x0

    .line 608
    :goto_14
    array-length v8, v1

    .line 609
    if-ge v12, v8, :cond_1a

    .line 610
    .line 611
    aget-object v8, v1, v12

    .line 612
    .line 613
    iget-object v8, v8, Lo1/k;->b:Lo1/s;

    .line 614
    .line 615
    iget v8, v8, Lo1/s;->b:I

    .line 616
    .line 617
    new-array v8, v8, [J

    .line 618
    .line 619
    aput-object v8, v2, v12

    .line 620
    .line 621
    aget-object v8, v1, v12

    .line 622
    .line 623
    iget-object v8, v8, Lo1/k;->b:Lo1/s;

    .line 624
    .line 625
    iget-object v8, v8, Lo1/s;->f:[J

    .line 626
    .line 627
    const/4 v9, 0x0

    .line 628
    aget-wide v10, v8, v9

    .line 629
    .line 630
    aput-wide v10, v6, v12

    .line 631
    .line 632
    const/4 v8, 0x1

    .line 633
    add-int/2addr v12, v8

    .line 634
    goto :goto_14

    .line 635
    :cond_1a
    const-wide/16 v8, 0x0

    .line 636
    .line 637
    const/4 v12, 0x0

    .line 638
    :goto_15
    array-length v10, v1

    .line 639
    if-ge v12, v10, :cond_1e

    .line 640
    .line 641
    const-wide v10, 0x7fffffffffffffffL

    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    move-wide v13, v10

    .line 647
    const/4 v10, -0x1

    .line 648
    const/4 v11, 0x0

    .line 649
    :goto_16
    array-length v15, v1

    .line 650
    if-ge v11, v15, :cond_1c

    .line 651
    .line 652
    aget-boolean v15, v7, v11

    .line 653
    .line 654
    if-nez v15, :cond_1b

    .line 655
    .line 656
    aget-wide v15, v6, v11

    .line 657
    .line 658
    cmp-long v18, v15, v13

    .line 659
    .line 660
    if-gtz v18, :cond_1b

    .line 661
    .line 662
    move v10, v11

    .line 663
    move-wide v13, v15

    .line 664
    :cond_1b
    const/4 v15, 0x1

    .line 665
    add-int/2addr v11, v15

    .line 666
    goto :goto_16

    .line 667
    :cond_1c
    const/4 v15, 0x1

    .line 668
    aget v11, v3, v10

    .line 669
    .line 670
    aget-object v13, v2, v10

    .line 671
    .line 672
    aput-wide v8, v13, v11

    .line 673
    .line 674
    aget-object v14, v1, v10

    .line 675
    .line 676
    iget-object v14, v14, Lo1/k;->b:Lo1/s;

    .line 677
    .line 678
    iget-object v4, v14, Lo1/s;->d:[I

    .line 679
    .line 680
    aget v4, v4, v11

    .line 681
    .line 682
    move-object/from16 v16, v5

    .line 683
    .line 684
    int-to-long v4, v4

    .line 685
    add-long/2addr v8, v4

    .line 686
    add-int/2addr v11, v15

    .line 687
    aput v11, v3, v10

    .line 688
    .line 689
    array-length v4, v13

    .line 690
    if-ge v11, v4, :cond_1d

    .line 691
    .line 692
    iget-object v4, v14, Lo1/s;->f:[J

    .line 693
    .line 694
    aget-wide v13, v4, v11

    .line 695
    .line 696
    aput-wide v13, v6, v10

    .line 697
    .line 698
    goto :goto_17

    .line 699
    :cond_1d
    aput-boolean v15, v7, v10

    .line 700
    .line 701
    add-int/2addr v12, v15

    .line 702
    :goto_17
    move-object/from16 v5, v16

    .line 703
    .line 704
    const/4 v4, -0x1

    .line 705
    goto :goto_15

    .line 706
    :cond_1e
    move-object/from16 v16, v5

    .line 707
    .line 708
    const/4 v15, 0x1

    .line 709
    iput-object v2, v0, Lo1/l;->A:[[J

    .line 710
    .line 711
    iget-object v1, v0, Lo1/l;->y:LW0/u;

    .line 712
    .line 713
    invoke-interface {v1}, LW0/u;->j()V

    .line 714
    .line 715
    .line 716
    iget-object v1, v0, Lo1/l;->y:LW0/u;

    .line 717
    .line 718
    invoke-interface {v1, v0}, LW0/u;->r(LW0/F;)V

    .line 719
    .line 720
    .line 721
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayDeque;->clear()V

    .line 722
    .line 723
    .line 724
    iget-boolean v1, v0, Lo1/l;->v:Z

    .line 725
    .line 726
    if-nez v1, :cond_0

    .line 727
    .line 728
    const/4 v1, 0x2

    .line 729
    iput v1, v0, Lo1/l;->k:I

    .line 730
    .line 731
    goto/16 :goto_0

    .line 732
    .line 733
    :cond_1f
    move-object/from16 v16, v5

    .line 734
    .line 735
    const/4 v15, 0x1

    .line 736
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 737
    .line 738
    .line 739
    move-result v1

    .line 740
    if-nez v1, :cond_0

    .line 741
    .line 742
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 743
    .line 744
    .line 745
    move-result-object v1

    .line 746
    check-cast v1, Lq0/c;

    .line 747
    .line 748
    iget-object v1, v1, Lq0/c;->e:Ljava/util/ArrayList;

    .line 749
    .line 750
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    .line 752
    .line 753
    goto/16 :goto_0

    .line 754
    .line 755
    :cond_20
    iget v1, v0, Lo1/l;->k:I

    .line 756
    .line 757
    const/4 v2, 0x2

    .line 758
    if-eq v1, v2, :cond_21

    .line 759
    .line 760
    const/4 v1, 0x0

    .line 761
    iput v1, v0, Lo1/l;->k:I

    .line 762
    .line 763
    iput v1, v0, Lo1/l;->n:I

    .line 764
    .line 765
    :cond_21
    return-void
.end method

.method public final release()V
    .locals 0

    .line 1
    return-void
.end method
