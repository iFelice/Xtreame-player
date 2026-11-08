.class public final Lm2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/m;
.implements Lp3/f;
.implements Lcom/google/android/gms/internal/pal/o3;


# instance fields
.field public G:Ljava/lang/Object;

.field public H:Ljava/lang/Object;

.field public I:Ljava/lang/Object;

.field public J:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Lu/e;

    const/16 v0, 0x100

    invoke-direct {p1, v0, v1}, Lu/e;-><init>(II)V

    iput-object p1, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 4
    new-instance p1, Lu/e;

    invoke-direct {p1, v0, v1}, Lu/e;-><init>(II)V

    iput-object p1, p0, Lm2/o;->H:Ljava/lang/Object;

    .line 5
    new-instance p1, Lu/e;

    invoke-direct {p1, v0, v1}, Lu/e;-><init>(II)V

    iput-object p1, p0, Lm2/o;->I:Ljava/lang/Object;

    const/16 p1, 0x20

    .line 6
    new-array p1, p1, [Lu/i;

    iput-object p1, p0, Lm2/o;->J:Ljava/lang/Object;

    return-void

    .line 7
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/atv_ads_framework/x0;

    const/16 v0, 0x11

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/atv_ads_framework/x0;-><init>(I)V

    iput-object p1, p0, Lm2/o;->G:Ljava/lang/Object;

    new-instance v0, Lm2/i;

    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v2, p1}, Lm2/i;-><init>(Lm2/i;Lcom/google/android/gms/internal/atv_ads_framework/x0;)V

    iput-object v0, p0, Lm2/o;->I:Ljava/lang/Object;

    .line 9
    invoke-virtual {v0}, Lm2/i;->r()Lm2/i;

    move-result-object p1

    iput-object p1, p0, Lm2/o;->H:Ljava/lang/Object;

    new-instance p1, Le0/u;

    const/16 v0, 0x9

    .line 10
    invoke-direct {p1, v0}, Le0/u;-><init>(I)V

    iput-object p1, p0, Lm2/o;->J:Ljava/lang/Object;

    iget-object v0, p0, Lm2/o;->I:Ljava/lang/Object;

    check-cast v0, Lm2/i;

    .line 11
    new-instance v2, Lcom/google/android/gms/internal/measurement/N4;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/measurement/N4;-><init>(Le0/u;)V

    const-string p1, "require"

    invoke-virtual {v0, p1, v2}, Lm2/i;->A(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    iget-object p1, p0, Lm2/o;->J:Ljava/lang/Object;

    check-cast p1, Le0/u;

    new-instance v0, Lcom/google/android/gms/internal/measurement/d0;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/d0;-><init>(I)V

    .line 12
    iget-object p1, p1, Le0/u;->a:Ljava/util/Map;

    .line 13
    const-string v1, "internal.platform"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lm2/o;->I:Ljava/lang/Object;

    check-cast p1, Lm2/i;

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    const-string v1, "runtime.counter"

    invoke-virtual {p1, v1, v0}, Lm2/i;->A(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    return-void

    .line 16
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lm2/o;->J:Ljava/lang/Object;

    return-void

    .line 17
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance p1, Lp0/E;

    invoke-direct {p1}, Lp0/E;-><init>()V

    iput-object p1, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 19
    new-instance p1, Lp0/E;

    invoke-direct {p1}, Lp0/E;-><init>()V

    iput-object p1, p0, Lm2/o;->H:Ljava/lang/Object;

    .line 20
    new-instance p1, Lt1/a;

    invoke-direct {p1, v1}, Lt1/a;-><init>(I)V

    iput-object p1, p0, Lm2/o;->I:Ljava/lang/Object;

    return-void

    .line 21
    :cond_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 23
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lm2/o;->H:Ljava/lang/Object;

    .line 24
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lm2/o;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc4/Z;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm2/o;->J:Ljava/lang/Object;

    invoke-static {p2}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    iput-object p2, p0, Lm2/o;->G:Ljava/lang/Object;

    new-instance p1, Landroid/os/Bundle;

    .line 26
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lm2/o;->H:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b([BIILq1/l;Lp0/j;)V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Lm2/o;->G:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lp0/E;

    .line 8
    .line 9
    add-int v3, v1, p3

    .line 10
    .line 11
    move-object/from16 v4, p1

    .line 12
    .line 13
    invoke-virtual {v2, v3, v4}, Lp0/E;->J(I[B)V

    .line 14
    .line 15
    .line 16
    iget-object v2, v0, Lm2/o;->G:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Lp0/E;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Lp0/E;->L(I)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lm2/o;->J:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Ljava/util/zip/Inflater;

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    new-instance v1, Ljava/util/zip/Inflater;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, v0, Lm2/o;->J:Ljava/lang/Object;

    .line 35
    .line 36
    :cond_0
    iget-object v1, v0, Lm2/o;->G:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lp0/E;

    .line 39
    .line 40
    iget-object v2, v0, Lm2/o;->H:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Lp0/E;

    .line 43
    .line 44
    iget-object v3, v0, Lm2/o;->J:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v3, Ljava/util/zip/Inflater;

    .line 47
    .line 48
    sget-object v4, Lp0/M;->a:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1}, Lp0/E;->a()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    const/16 v5, 0xff

    .line 55
    .line 56
    if-lez v4, :cond_1

    .line 57
    .line 58
    iget-object v4, v1, Lp0/E;->a:[B

    .line 59
    .line 60
    iget v6, v1, Lp0/E;->b:I

    .line 61
    .line 62
    aget-byte v4, v4, v6

    .line 63
    .line 64
    and-int/2addr v4, v5

    .line 65
    const/16 v6, 0x78

    .line 66
    .line 67
    if-ne v4, v6, :cond_1

    .line 68
    .line 69
    invoke-static {v1, v2, v3}, Lp0/M;->K(Lp0/E;Lp0/E;Ljava/util/zip/Inflater;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    iget-object v1, v0, Lm2/o;->G:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v1, Lp0/E;

    .line 78
    .line 79
    iget-object v2, v0, Lm2/o;->H:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v2, Lp0/E;

    .line 82
    .line 83
    iget-object v3, v2, Lp0/E;->a:[B

    .line 84
    .line 85
    iget v2, v2, Lp0/E;->c:I

    .line 86
    .line 87
    invoke-virtual {v1, v2, v3}, Lp0/E;->J(I[B)V

    .line 88
    .line 89
    .line 90
    :cond_1
    iget-object v1, v0, Lm2/o;->I:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v1, Lt1/a;

    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    iput v2, v1, Lt1/a;->c:I

    .line 96
    .line 97
    iput v2, v1, Lt1/a;->d:I

    .line 98
    .line 99
    iput v2, v1, Lt1/a;->e:I

    .line 100
    .line 101
    iput v2, v1, Lt1/a;->f:I

    .line 102
    .line 103
    iput v2, v1, Lt1/a;->g:I

    .line 104
    .line 105
    iput v2, v1, Lt1/a;->h:I

    .line 106
    .line 107
    iget-object v3, v1, Lt1/a;->i:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v3, Lp0/E;

    .line 110
    .line 111
    invoke-virtual {v3, v2}, Lp0/E;->I(I)V

    .line 112
    .line 113
    .line 114
    iput-boolean v2, v1, Lt1/a;->b:Z

    .line 115
    .line 116
    new-instance v7, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .line 120
    .line 121
    :goto_0
    iget-object v1, v0, Lm2/o;->G:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v1, Lp0/E;

    .line 124
    .line 125
    invoke-virtual {v1}, Lp0/E;->a()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    const/4 v3, 0x3

    .line 130
    if-lt v1, v3, :cond_15

    .line 131
    .line 132
    iget-object v1, v0, Lm2/o;->G:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v1, Lp0/E;

    .line 135
    .line 136
    iget-object v4, v0, Lm2/o;->I:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v4, Lt1/a;

    .line 139
    .line 140
    iget v6, v1, Lp0/E;->c:I

    .line 141
    .line 142
    invoke-virtual {v1}, Lp0/E;->z()I

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    invoke-virtual {v1}, Lp0/E;->F()I

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    iget v10, v1, Lp0/E;->b:I

    .line 151
    .line 152
    add-int/2addr v10, v9

    .line 153
    if-le v10, v6, :cond_2

    .line 154
    .line 155
    invoke-virtual {v1, v6}, Lp0/E;->L(I)V

    .line 156
    .line 157
    .line 158
    move-object/from16 v16, v7

    .line 159
    .line 160
    const/4 v11, 0x0

    .line 161
    goto/16 :goto_c

    .line 162
    .line 163
    :cond_2
    const/16 v6, 0x80

    .line 164
    .line 165
    if-eq v8, v6, :cond_c

    .line 166
    .line 167
    packed-switch v8, :pswitch_data_0

    .line 168
    .line 169
    .line 170
    :cond_3
    :goto_1
    move-object/from16 v16, v7

    .line 171
    .line 172
    goto/16 :goto_4

    .line 173
    .line 174
    :pswitch_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    const/16 v3, 0x13

    .line 178
    .line 179
    if-ge v9, v3, :cond_4

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_4
    invoke-virtual {v1}, Lp0/E;->F()I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    iput v3, v4, Lt1/a;->c:I

    .line 187
    .line 188
    invoke-virtual {v1}, Lp0/E;->F()I

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    iput v3, v4, Lt1/a;->d:I

    .line 193
    .line 194
    const/16 v3, 0xb

    .line 195
    .line 196
    invoke-virtual {v1, v3}, Lp0/E;->M(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Lp0/E;->F()I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    iput v3, v4, Lt1/a;->e:I

    .line 204
    .line 205
    invoke-virtual {v1}, Lp0/E;->F()I

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    iput v3, v4, Lt1/a;->f:I

    .line 210
    .line 211
    goto :goto_1

    .line 212
    :pswitch_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    const/4 v8, 0x4

    .line 216
    if-ge v9, v8, :cond_5

    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_5
    invoke-virtual {v1, v3}, Lp0/E;->M(I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1}, Lp0/E;->z()I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    and-int/2addr v3, v6

    .line 227
    if-eqz v3, :cond_6

    .line 228
    .line 229
    const/4 v12, 0x1

    .line 230
    goto :goto_2

    .line 231
    :cond_6
    const/4 v12, 0x0

    .line 232
    :goto_2
    add-int/lit8 v3, v9, -0x4

    .line 233
    .line 234
    iget-object v6, v4, Lt1/a;->i:Ljava/lang/Object;

    .line 235
    .line 236
    if-eqz v12, :cond_9

    .line 237
    .line 238
    const/4 v12, 0x7

    .line 239
    if-ge v3, v12, :cond_7

    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_7
    invoke-virtual {v1}, Lp0/E;->C()I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-ge v3, v8, :cond_8

    .line 247
    .line 248
    goto :goto_1

    .line 249
    :cond_8
    invoke-virtual {v1}, Lp0/E;->F()I

    .line 250
    .line 251
    .line 252
    move-result v8

    .line 253
    iput v8, v4, Lt1/a;->g:I

    .line 254
    .line 255
    invoke-virtual {v1}, Lp0/E;->F()I

    .line 256
    .line 257
    .line 258
    move-result v8

    .line 259
    iput v8, v4, Lt1/a;->h:I

    .line 260
    .line 261
    move-object v4, v6

    .line 262
    check-cast v4, Lp0/E;

    .line 263
    .line 264
    add-int/lit8 v3, v3, -0x4

    .line 265
    .line 266
    invoke-virtual {v4, v3}, Lp0/E;->I(I)V

    .line 267
    .line 268
    .line 269
    add-int/lit8 v3, v9, -0xb

    .line 270
    .line 271
    :cond_9
    check-cast v6, Lp0/E;

    .line 272
    .line 273
    iget v4, v6, Lp0/E;->b:I

    .line 274
    .line 275
    iget v8, v6, Lp0/E;->c:I

    .line 276
    .line 277
    if-ge v4, v8, :cond_3

    .line 278
    .line 279
    if-lez v3, :cond_3

    .line 280
    .line 281
    sub-int/2addr v8, v4

    .line 282
    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    iget-object v8, v6, Lp0/E;->a:[B

    .line 287
    .line 288
    invoke-virtual {v1, v4, v8, v3}, Lp0/E;->j(I[BI)V

    .line 289
    .line 290
    .line 291
    add-int/2addr v4, v3

    .line 292
    invoke-virtual {v6, v4}, Lp0/E;->L(I)V

    .line 293
    .line 294
    .line 295
    goto :goto_1

    .line 296
    :pswitch_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    rem-int/lit8 v3, v9, 0x5

    .line 300
    .line 301
    const/4 v8, 0x2

    .line 302
    if-eq v3, v8, :cond_a

    .line 303
    .line 304
    goto/16 :goto_1

    .line 305
    .line 306
    :cond_a
    invoke-virtual {v1, v8}, Lp0/E;->M(I)V

    .line 307
    .line 308
    .line 309
    iget-object v3, v4, Lt1/a;->a:[I

    .line 310
    .line 311
    invoke-static {v3, v2}, Ljava/util/Arrays;->fill([II)V

    .line 312
    .line 313
    .line 314
    div-int/lit8 v9, v9, 0x5

    .line 315
    .line 316
    const/4 v8, 0x0

    .line 317
    :goto_3
    if-ge v8, v9, :cond_b

    .line 318
    .line 319
    invoke-virtual {v1}, Lp0/E;->z()I

    .line 320
    .line 321
    .line 322
    move-result v13

    .line 323
    invoke-virtual {v1}, Lp0/E;->z()I

    .line 324
    .line 325
    .line 326
    move-result v14

    .line 327
    invoke-virtual {v1}, Lp0/E;->z()I

    .line 328
    .line 329
    .line 330
    move-result v15

    .line 331
    invoke-virtual {v1}, Lp0/E;->z()I

    .line 332
    .line 333
    .line 334
    move-result v16

    .line 335
    invoke-virtual {v1}, Lp0/E;->z()I

    .line 336
    .line 337
    .line 338
    move-result v17

    .line 339
    int-to-double v11, v14

    .line 340
    sub-int/2addr v15, v6

    .line 341
    int-to-double v14, v15

    .line 342
    const-wide v18, 0x3ff66e978d4fdf3bL    # 1.402

    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    mul-double v18, v18, v14

    .line 348
    .line 349
    move-object/from16 p4, v3

    .line 350
    .line 351
    add-double v2, v18, v11

    .line 352
    .line 353
    double-to-int v2, v2

    .line 354
    add-int/lit8 v3, v16, -0x80

    .line 355
    .line 356
    move-object/from16 v16, v7

    .line 357
    .line 358
    int-to-double v6, v3

    .line 359
    const-wide v19, 0x3fd60663c74fb54aL    # 0.34414

    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    mul-double v19, v19, v6

    .line 365
    .line 366
    sub-double v19, v11, v19

    .line 367
    .line 368
    const-wide v21, 0x3fe6da3c21187e7cL    # 0.71414

    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    mul-double v14, v14, v21

    .line 374
    .line 375
    sub-double v14, v19, v14

    .line 376
    .line 377
    double-to-int v3, v14

    .line 378
    const-wide v14, 0x3ffc5a1cac083127L    # 1.772

    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    mul-double v6, v6, v14

    .line 384
    .line 385
    add-double/2addr v6, v11

    .line 386
    double-to-int v6, v6

    .line 387
    shl-int/lit8 v7, v17, 0x18

    .line 388
    .line 389
    const/4 v11, 0x0

    .line 390
    invoke-static {v2, v11, v5}, Lp0/M;->i(III)I

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    shl-int/lit8 v2, v2, 0x10

    .line 395
    .line 396
    or-int/2addr v2, v7

    .line 397
    invoke-static {v3, v11, v5}, Lp0/M;->i(III)I

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    shl-int/lit8 v3, v3, 0x8

    .line 402
    .line 403
    or-int/2addr v2, v3

    .line 404
    invoke-static {v6, v11, v5}, Lp0/M;->i(III)I

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    or-int/2addr v2, v3

    .line 409
    aput v2, p4, v13

    .line 410
    .line 411
    add-int/lit8 v8, v8, 0x1

    .line 412
    .line 413
    move-object/from16 v3, p4

    .line 414
    .line 415
    move-object/from16 v7, v16

    .line 416
    .line 417
    const/4 v2, 0x0

    .line 418
    const/16 v6, 0x80

    .line 419
    .line 420
    goto :goto_3

    .line 421
    :cond_b
    move-object/from16 v16, v7

    .line 422
    .line 423
    const/4 v2, 0x1

    .line 424
    iput-boolean v2, v4, Lt1/a;->b:Z

    .line 425
    .line 426
    :goto_4
    const/4 v2, 0x0

    .line 427
    const/4 v11, 0x0

    .line 428
    goto/16 :goto_b

    .line 429
    .line 430
    :cond_c
    move-object/from16 v16, v7

    .line 431
    .line 432
    iget v2, v4, Lt1/a;->c:I

    .line 433
    .line 434
    iget-object v3, v4, Lt1/a;->i:Ljava/lang/Object;

    .line 435
    .line 436
    if-eqz v2, :cond_13

    .line 437
    .line 438
    iget v2, v4, Lt1/a;->d:I

    .line 439
    .line 440
    if-eqz v2, :cond_13

    .line 441
    .line 442
    iget v2, v4, Lt1/a;->g:I

    .line 443
    .line 444
    if-eqz v2, :cond_13

    .line 445
    .line 446
    iget v2, v4, Lt1/a;->h:I

    .line 447
    .line 448
    if-eqz v2, :cond_13

    .line 449
    .line 450
    move-object v2, v3

    .line 451
    check-cast v2, Lp0/E;

    .line 452
    .line 453
    iget v6, v2, Lp0/E;->c:I

    .line 454
    .line 455
    if-eqz v6, :cond_13

    .line 456
    .line 457
    iget v7, v2, Lp0/E;->b:I

    .line 458
    .line 459
    if-ne v7, v6, :cond_13

    .line 460
    .line 461
    iget-boolean v6, v4, Lt1/a;->b:Z

    .line 462
    .line 463
    if-nez v6, :cond_d

    .line 464
    .line 465
    goto/16 :goto_9

    .line 466
    .line 467
    :cond_d
    const/4 v6, 0x0

    .line 468
    invoke-virtual {v2, v6}, Lp0/E;->L(I)V

    .line 469
    .line 470
    .line 471
    iget v6, v4, Lt1/a;->g:I

    .line 472
    .line 473
    iget v7, v4, Lt1/a;->h:I

    .line 474
    .line 475
    mul-int v6, v6, v7

    .line 476
    .line 477
    new-array v7, v6, [I

    .line 478
    .line 479
    const/4 v11, 0x0

    .line 480
    :cond_e
    :goto_5
    if-ge v11, v6, :cond_12

    .line 481
    .line 482
    invoke-virtual {v2}, Lp0/E;->z()I

    .line 483
    .line 484
    .line 485
    move-result v8

    .line 486
    iget-object v9, v4, Lt1/a;->a:[I

    .line 487
    .line 488
    if-eqz v8, :cond_f

    .line 489
    .line 490
    add-int/lit8 v12, v11, 0x1

    .line 491
    .line 492
    aget v8, v9, v8

    .line 493
    .line 494
    aput v8, v7, v11

    .line 495
    .line 496
    :goto_6
    move v11, v12

    .line 497
    goto :goto_5

    .line 498
    :cond_f
    invoke-virtual {v2}, Lp0/E;->z()I

    .line 499
    .line 500
    .line 501
    move-result v8

    .line 502
    if-eqz v8, :cond_e

    .line 503
    .line 504
    and-int/lit8 v12, v8, 0x40

    .line 505
    .line 506
    if-nez v12, :cond_10

    .line 507
    .line 508
    and-int/lit8 v12, v8, 0x3f

    .line 509
    .line 510
    goto :goto_7

    .line 511
    :cond_10
    and-int/lit8 v12, v8, 0x3f

    .line 512
    .line 513
    shl-int/lit8 v12, v12, 0x8

    .line 514
    .line 515
    invoke-virtual {v2}, Lp0/E;->z()I

    .line 516
    .line 517
    .line 518
    move-result v13

    .line 519
    or-int/2addr v12, v13

    .line 520
    :goto_7
    and-int/lit16 v8, v8, 0x80

    .line 521
    .line 522
    if-nez v8, :cond_11

    .line 523
    .line 524
    const/4 v8, 0x0

    .line 525
    aget v9, v9, v8

    .line 526
    .line 527
    goto :goto_8

    .line 528
    :cond_11
    invoke-virtual {v2}, Lp0/E;->z()I

    .line 529
    .line 530
    .line 531
    move-result v8

    .line 532
    aget v9, v9, v8

    .line 533
    .line 534
    :goto_8
    add-int/2addr v12, v11

    .line 535
    invoke-static {v7, v11, v12, v9}, Ljava/util/Arrays;->fill([IIII)V

    .line 536
    .line 537
    .line 538
    goto :goto_6

    .line 539
    :cond_12
    iget v2, v4, Lt1/a;->g:I

    .line 540
    .line 541
    iget v6, v4, Lt1/a;->h:I

    .line 542
    .line 543
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 544
    .line 545
    invoke-static {v7, v2, v6, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 546
    .line 547
    .line 548
    move-result-object v21

    .line 549
    iget v2, v4, Lt1/a;->e:I

    .line 550
    .line 551
    int-to-float v2, v2

    .line 552
    iget v6, v4, Lt1/a;->c:I

    .line 553
    .line 554
    int-to-float v6, v6

    .line 555
    div-float v25, v2, v6

    .line 556
    .line 557
    iget v2, v4, Lt1/a;->f:I

    .line 558
    .line 559
    int-to-float v2, v2

    .line 560
    iget v7, v4, Lt1/a;->d:I

    .line 561
    .line 562
    int-to-float v7, v7

    .line 563
    div-float v22, v2, v7

    .line 564
    .line 565
    iget v2, v4, Lt1/a;->g:I

    .line 566
    .line 567
    int-to-float v2, v2

    .line 568
    div-float v29, v2, v6

    .line 569
    .line 570
    iget v2, v4, Lt1/a;->h:I

    .line 571
    .line 572
    int-to-float v2, v2

    .line 573
    div-float v30, v2, v7

    .line 574
    .line 575
    new-instance v11, Lo0/b;

    .line 576
    .line 577
    move-object/from16 v17, v11

    .line 578
    .line 579
    const/16 v34, 0x0

    .line 580
    .line 581
    const/16 v35, 0x0

    .line 582
    .line 583
    const/16 v18, 0x0

    .line 584
    .line 585
    const/16 v19, 0x0

    .line 586
    .line 587
    move-object/from16 v20, v19

    .line 588
    .line 589
    const/16 v23, 0x0

    .line 590
    .line 591
    const/16 v24, 0x0

    .line 592
    .line 593
    const/16 v26, 0x0

    .line 594
    .line 595
    const/high16 v27, -0x80000000

    .line 596
    .line 597
    move/from16 v33, v27

    .line 598
    .line 599
    const v28, -0x800001

    .line 600
    .line 601
    .line 602
    const/16 v31, 0x0

    .line 603
    .line 604
    const/high16 v32, -0x1000000

    .line 605
    .line 606
    invoke-direct/range {v17 .. v35}, Lo0/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFI)V

    .line 607
    .line 608
    .line 609
    const/4 v2, 0x0

    .line 610
    goto :goto_a

    .line 611
    :cond_13
    :goto_9
    const/4 v2, 0x0

    .line 612
    const/4 v11, 0x0

    .line 613
    :goto_a
    iput v2, v4, Lt1/a;->c:I

    .line 614
    .line 615
    iput v2, v4, Lt1/a;->d:I

    .line 616
    .line 617
    iput v2, v4, Lt1/a;->e:I

    .line 618
    .line 619
    iput v2, v4, Lt1/a;->f:I

    .line 620
    .line 621
    iput v2, v4, Lt1/a;->g:I

    .line 622
    .line 623
    iput v2, v4, Lt1/a;->h:I

    .line 624
    .line 625
    check-cast v3, Lp0/E;

    .line 626
    .line 627
    invoke-virtual {v3, v2}, Lp0/E;->I(I)V

    .line 628
    .line 629
    .line 630
    iput-boolean v2, v4, Lt1/a;->b:Z

    .line 631
    .line 632
    :goto_b
    invoke-virtual {v1, v10}, Lp0/E;->L(I)V

    .line 633
    .line 634
    .line 635
    :goto_c
    move-object/from16 v1, v16

    .line 636
    .line 637
    if-eqz v11, :cond_14

    .line 638
    .line 639
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    .line 641
    .line 642
    :cond_14
    move-object v7, v1

    .line 643
    goto/16 :goto_0

    .line 644
    .line 645
    :cond_15
    move-object v1, v7

    .line 646
    new-instance v2, Lq1/a;

    .line 647
    .line 648
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    move-object v6, v2

    .line 659
    invoke-direct/range {v6 .. v11}, Lq1/a;-><init>(Ljava/util/List;JJ)V

    .line 660
    .line 661
    .line 662
    move-object/from16 v1, p5

    .line 663
    .line 664
    invoke-interface {v1, v2}, Lp0/j;->accept(Ljava/lang/Object;)V

    .line 665
    .line 666
    .line 667
    return-void

    .line 668
    nop

    .line 669
    :pswitch_data_0
    .packed-switch 0x14
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

.method public final d(LY/s;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p1, LY/s;->R:Z

    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p1

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "Fragment already added: "

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm2/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LW4/c;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lm2/o;->I:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lm2/o;->J:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, LU4/a;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    throw v0

    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public final f(LW0/u;LA1/I;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lm2/o;->I:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v2, [LW0/L;

    .line 6
    .line 7
    array-length v2, v2

    .line 8
    if-ge v1, v2, :cond_3

    .line 9
    .line 10
    invoke-virtual {p2}, LA1/I;->a()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, LA1/I;->b()V

    .line 14
    .line 15
    .line 16
    iget v2, p2, LA1/I;->d:I

    .line 17
    .line 18
    const/4 v3, 0x3

    .line 19
    invoke-interface {p1, v2, v3}, LW0/u;->t(II)LW0/L;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lm0/t;

    .line 32
    .line 33
    iget-object v4, v3, Lm0/t;->o:Ljava/lang/String;

    .line 34
    .line 35
    const-string v5, "application/cea-608"

    .line 36
    .line 37
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-nez v5, :cond_1

    .line 42
    .line 43
    const-string v5, "application/cea-708"

    .line 44
    .line 45
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    const/4 v5, 0x0

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    :goto_1
    const/4 v5, 0x1

    .line 55
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v7, "Invalid closed caption MIME type provided: "

    .line 58
    .line 59
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    iget-object v5, v3, Lm0/t;->a:Ljava/lang/String;

    .line 73
    .line 74
    if-eqz v5, :cond_2

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_2
    invoke-virtual {p2}, LA1/I;->b()V

    .line 78
    .line 79
    .line 80
    iget-object v5, p2, LA1/I;->e:Ljava/lang/String;

    .line 81
    .line 82
    :goto_3
    new-instance v6, Lm0/s;

    .line 83
    .line 84
    invoke-direct {v6}, Lm0/s;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object v5, v6, Lm0/s;->a:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v5, p0, Lm2/o;->H:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v5, Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v5}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    iput-object v5, v6, Lm0/s;->m:Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v4}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    iput-object v4, v6, Lm0/s;->n:Ljava/lang/String;

    .line 104
    .line 105
    iget v4, v3, Lm0/t;->e:I

    .line 106
    .line 107
    iput v4, v6, Lm0/s;->e:I

    .line 108
    .line 109
    iget-object v4, v3, Lm0/t;->d:Ljava/lang/String;

    .line 110
    .line 111
    iput-object v4, v6, Lm0/s;->d:Ljava/lang/String;

    .line 112
    .line 113
    iget v4, v3, Lm0/t;->L:I

    .line 114
    .line 115
    iput v4, v6, Lm0/s;->K:I

    .line 116
    .line 117
    iget-object v3, v3, Lm0/t;->r:Ljava/util/List;

    .line 118
    .line 119
    iput-object v3, v6, Lm0/s;->q:Ljava/util/List;

    .line 120
    .line 121
    new-instance v3, Lm0/t;

    .line 122
    .line 123
    invoke-direct {v3, v6}, Lm0/t;-><init>(Lm0/s;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v2, v3}, LW0/L;->b(Lm0/t;)V

    .line 127
    .line 128
    .line 129
    iget-object v3, p0, Lm2/o;->I:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v3, [LW0/L;

    .line 132
    .line 133
    aput-object v2, v3, v1

    .line 134
    .line 135
    add-int/lit8 v1, v1, 0x1

    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    :cond_3
    return-void
.end method

.method public final g()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LP1/x;

    .line 4
    .line 5
    invoke-virtual {v0}, LP1/x;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lm2/o;->I:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lk/d;

    .line 11
    .line 12
    invoke-virtual {v0}, Lk/d;->c()LT1/i;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, v1}, LT1/g;->J(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {v0, v1, p1}, LT1/g;->g(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object p1, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, LP1/x;

    .line 29
    .line 30
    invoke-virtual {p1}, LP1/x;->c()V

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-interface {v0}, LT1/i;->l()I

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, LP1/x;

    .line 39
    .line 40
    invoke-virtual {p1}, LP1/x;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, LP1/x;

    .line 46
    .line 47
    invoke-virtual {p1}, LP1/x;->j()V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lm2/o;->I:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p1, Lk/d;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lk/d;->m(LT1/i;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    iget-object v1, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v1, LP1/x;

    .line 62
    .line 63
    invoke-virtual {v1}, LP1/x;->j()V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lm2/o;->I:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v1, Lk/d;

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Lk/d;->m(LT1/i;)V

    .line 71
    .line 72
    .line 73
    throw p1
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LP1/x;

    .line 4
    .line 5
    invoke-virtual {v0}, LP1/x;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lm2/o;->J:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lk/d;

    .line 11
    .line 12
    invoke-virtual {v0}, Lk/d;->c()LT1/i;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, LP1/x;

    .line 19
    .line 20
    invoke-virtual {v1}, LP1/x;->c()V

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-interface {v0}, LT1/i;->l()I

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, LP1/x;

    .line 29
    .line 30
    invoke-virtual {v1}, LP1/x;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, LP1/x;

    .line 36
    .line 37
    invoke-virtual {v1}, LP1/x;->j()V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lm2/o;->J:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Lk/d;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Lk/d;->m(LT1/i;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception v1

    .line 49
    iget-object v2, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v2, LP1/x;

    .line 52
    .line 53
    invoke-virtual {v2}, LP1/x;->j()V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lm2/o;->J:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v2, Lk/d;

    .line 59
    .line 60
    invoke-virtual {v2, v0}, Lk/d;->m(LT1/i;)V

    .line 61
    .line 62
    .line 63
    throw v1
.end method

.method public final j(Ljava/lang/String;)LY/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lm2/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, LY/P;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p1, LY/P;->c:LY/s;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public final k(Ljava/lang/String;)LY/s;
    .locals 3

    .line 1
    iget-object v0, p0, Lm2/o;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, LY/P;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object v1, v1, LY/P;->c:LY/s;

    .line 28
    .line 29
    iget-object v2, v1, LY/s;->L:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v1, v1, LY/s;->a0:LY/K;

    .line 39
    .line 40
    iget-object v1, v1, LY/K;->c:Lm2/o;

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Lm2/o;->k(Ljava/lang/String;)LY/s;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :goto_0
    if-eqz v1, :cond_0

    .line 47
    .line 48
    return-object v1

    .line 49
    :cond_2
    const/4 p1, 0x0

    .line 50
    return-object p1
.end method

.method public final l()Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lm2/o;->H:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, LY/P;

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-object v0
.end method

.method public final m(Landroid/util/JsonWriter;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lm2/o;->H:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lm2/o;->I:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/util/Map;

    .line 12
    .line 13
    iget-object v3, p0, Lm2/o;->J:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, [B

    .line 16
    .line 17
    sget-object v4, Lp3/g;->b:Ljava/lang/Object;

    .line 18
    .line 19
    const-string v4, "params"

    .line 20
    .line 21
    invoke-virtual {p1, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 26
    .line 27
    .line 28
    const-string v4, "firstline"

    .line 29
    .line 30
    invoke-virtual {p1, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 35
    .line 36
    .line 37
    const-string v4, "uri"

    .line 38
    .line 39
    invoke-virtual {p1, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v4, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 44
    .line 45
    .line 46
    const-string v0, "verb"

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 56
    .line 57
    .line 58
    invoke-static {p1, v2}, Lp3/g;->e(Landroid/util/JsonWriter;Ljava/util/Map;)V

    .line 59
    .line 60
    .line 61
    if-eqz v3, :cond_0

    .line 62
    .line 63
    const-string v0, "body"

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 75
    .line 76
    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final n()Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lm2/o;->H:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, LY/P;

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    iget-object v2, v2, LY/P;->c:LY/s;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-object v0
.end method

.method public final o()Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    iget-object v0, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    iget-object v2, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-object v1

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v1
.end method

.method public final p(Lm2/m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LP1/x;

    .line 4
    .line 5
    invoke-virtual {v0}, LP1/x;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, LP1/x;

    .line 11
    .line 12
    invoke-virtual {v0}, LP1/x;->c()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lm2/o;->H:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, LP1/e;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, LP1/e;->u(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, LP1/x;

    .line 25
    .line 26
    invoke-virtual {p1}, LP1/x;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, LP1/x;

    .line 32
    .line 33
    invoke-virtual {p1}, LP1/x;->j()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    iget-object v0, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, LP1/x;

    .line 41
    .line 42
    invoke-virtual {v0}, LP1/x;->j()V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public final q(LY/P;)V
    .locals 3

    .line 1
    iget-object v0, p1, LY/P;->c:LY/s;

    .line 2
    .line 3
    iget-object v1, v0, LY/s;->L:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lm2/o;->H:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, p0, Lm2/o;->H:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/util/HashMap;

    .line 19
    .line 20
    iget-object v2, v0, LY/s;->L:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    iget-boolean p1, v0, LY/s;->i0:Z

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-boolean p1, v0, LY/s;->h0:Z

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lm2/o;->J:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, LY/M;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, LY/M;->c(LY/s;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p1, p0, Lm2/o;->J:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, LY/M;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, LY/M;->f(LY/s;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    const/4 p1, 0x0

    .line 49
    iput-boolean p1, v0, LY/s;->i0:Z

    .line 50
    .line 51
    :cond_2
    const/4 p1, 0x2

    .line 52
    const-string v1, "FragmentManager"

    .line 53
    .line 54
    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v2, "Added fragment to active set "

    .line 63
    .line 64
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void
.end method

.method public final r(LY/P;)V
    .locals 3

    .line 1
    iget-object p1, p1, LY/P;->c:LY/s;

    .line 2
    .line 3
    iget-boolean v0, p1, LY/s;->h0:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lm2/o;->J:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, LY/M;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, LY/M;->f(LY/s;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lm2/o;->H:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/util/HashMap;

    .line 17
    .line 18
    iget-object v1, p1, LY/s;->L:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, LY/P;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const-string v0, "FragmentManager"

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, "Removed fragment from active set "

    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public final s(LY/s;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p1, LY/s;->R:Z

    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw p1
.end method

.method public final t(Ljava/lang/String;LY/O;)LY/O;
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lm2/o;->I:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, LY/O;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    iget-object p2, p0, Lm2/o;->I:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p2, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, LY/O;

    .line 23
    .line 24
    return-object p1
.end method

.method public final u()Landroid/os/Bundle;
    .locals 15

    .line 1
    iget-object v0, p0, Lm2/o;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/os/Bundle;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_7

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lm2/o;->J:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lc4/Z;

    .line 12
    .line 13
    iget-object v1, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_10

    .line 27
    .line 28
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    .line 29
    .line 30
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v4, Lorg/json/JSONArray;

    .line 34
    .line 35
    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 41
    .line 42
    .line 43
    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 44
    if-ge v5, v6, :cond_f

    .line 45
    .line 46
    :try_start_1
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    const-string v7, "n"

    .line 51
    .line 52
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    const-string v8, "t"

    .line 57
    .line 58
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 63
    .line 64
    .line 65
    move-result v9
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    const/4 v10, 0x1

    .line 67
    const/16 v11, 0x64

    .line 68
    .line 69
    const/4 v12, 0x2

    .line 70
    const/4 v13, 0x3

    .line 71
    const/4 v14, 0x4

    .line 72
    if-eq v9, v11, :cond_5

    .line 73
    .line 74
    const/16 v11, 0x6c

    .line 75
    .line 76
    if-eq v9, v11, :cond_4

    .line 77
    .line 78
    const/16 v11, 0x73

    .line 79
    .line 80
    if-eq v9, v11, :cond_3

    .line 81
    .line 82
    const/16 v11, 0xd18

    .line 83
    .line 84
    if-eq v9, v11, :cond_2

    .line 85
    .line 86
    const/16 v11, 0xd75

    .line 87
    .line 88
    if-eq v9, v11, :cond_1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    const-string v9, "la"

    .line 92
    .line 93
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    if-eqz v9, :cond_6

    .line 98
    .line 99
    const/4 v9, 0x4

    .line 100
    goto :goto_2

    .line 101
    :cond_2
    const-string v9, "ia"

    .line 102
    .line 103
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    if-eqz v9, :cond_6

    .line 108
    .line 109
    const/4 v9, 0x3

    .line 110
    goto :goto_2

    .line 111
    :cond_3
    const-string v9, "s"

    .line 112
    .line 113
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    if-eqz v9, :cond_6

    .line 118
    .line 119
    const/4 v9, 0x0

    .line 120
    goto :goto_2

    .line 121
    :cond_4
    const-string v9, "l"

    .line 122
    .line 123
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    if-eqz v9, :cond_6

    .line 128
    .line 129
    const/4 v9, 0x2

    .line 130
    goto :goto_2

    .line 131
    :cond_5
    const-string v9, "d"

    .line 132
    .line 133
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    if-eqz v9, :cond_6

    .line 138
    .line 139
    const/4 v9, 0x1

    .line 140
    goto :goto_2

    .line 141
    :cond_6
    :goto_1
    const/4 v9, -0x1

    .line 142
    :goto_2
    const-string v11, "v"

    .line 143
    .line 144
    if-eqz v9, :cond_d

    .line 145
    .line 146
    if-eq v9, v10, :cond_c

    .line 147
    .line 148
    if-eq v9, v12, :cond_b

    .line 149
    .line 150
    if-eq v9, v13, :cond_9

    .line 151
    .line 152
    if-eq v9, v14, :cond_7

    .line 153
    .line 154
    :try_start_2
    iget-object v6, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v6, Lc4/l0;

    .line 157
    .line 158
    iget-object v6, v6, Lc4/l0;->O:Lc4/T;

    .line 159
    .line 160
    invoke-static {v6}, Lc4/l0;->k(Lc4/s0;)V

    .line 161
    .line 162
    .line 163
    iget-object v6, v6, Lc4/T;->L:Lc4/Q;

    .line 164
    .line 165
    const-string v7, "Unrecognized persisted bundle type. Type"

    .line 166
    .line 167
    invoke-virtual {v6, v8, v7}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_5

    .line 171
    .line 172
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i4;->b()V

    .line 173
    .line 174
    .line 175
    iget-object v8, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v8, Lc4/l0;

    .line 178
    .line 179
    iget-object v8, v8, Lc4/l0;->M:Lc4/h;

    .line 180
    .line 181
    sget-object v9, Lc4/E;->X0:Lc4/D;

    .line 182
    .line 183
    invoke-virtual {v8, v3, v9}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 184
    .line 185
    .line 186
    move-result v8

    .line 187
    if-eqz v8, :cond_e

    .line 188
    .line 189
    new-instance v8, Lorg/json/JSONArray;

    .line 190
    .line 191
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-direct {v8, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    new-array v9, v6, [J

    .line 203
    .line 204
    const/4 v10, 0x0

    .line 205
    :goto_3
    if-ge v10, v6, :cond_8

    .line 206
    .line 207
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->optLong(I)J

    .line 208
    .line 209
    .line 210
    move-result-wide v11

    .line 211
    aput-wide v11, v9, v10

    .line 212
    .line 213
    add-int/lit8 v10, v10, 0x1

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_8
    invoke-virtual {v2, v7, v9}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 217
    .line 218
    .line 219
    goto :goto_5

    .line 220
    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i4;->b()V

    .line 221
    .line 222
    .line 223
    iget-object v8, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v8, Lc4/l0;

    .line 226
    .line 227
    iget-object v8, v8, Lc4/l0;->M:Lc4/h;

    .line 228
    .line 229
    sget-object v9, Lc4/E;->X0:Lc4/D;

    .line 230
    .line 231
    invoke-virtual {v8, v3, v9}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 232
    .line 233
    .line 234
    move-result v8

    .line 235
    if-eqz v8, :cond_e

    .line 236
    .line 237
    new-instance v8, Lorg/json/JSONArray;

    .line 238
    .line 239
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    invoke-direct {v8, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    .line 247
    .line 248
    .line 249
    move-result v6

    .line 250
    new-array v9, v6, [I

    .line 251
    .line 252
    const/4 v10, 0x0

    .line 253
    :goto_4
    if-ge v10, v6, :cond_a

    .line 254
    .line 255
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->optInt(I)I

    .line 256
    .line 257
    .line 258
    move-result v11

    .line 259
    aput v11, v9, v10

    .line 260
    .line 261
    add-int/lit8 v10, v10, 0x1

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_a
    invoke-virtual {v2, v7, v9}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 265
    .line 266
    .line 267
    goto :goto_5

    .line 268
    :cond_b
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 273
    .line 274
    .line 275
    move-result-wide v8

    .line 276
    invoke-virtual {v2, v7, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 277
    .line 278
    .line 279
    goto :goto_5

    .line 280
    :cond_c
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 285
    .line 286
    .line 287
    move-result-wide v8

    .line 288
    invoke-virtual {v2, v7, v8, v9}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 289
    .line 290
    .line 291
    goto :goto_5

    .line 292
    :cond_d
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    invoke-virtual {v2, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 297
    .line 298
    .line 299
    goto :goto_5

    .line 300
    :catch_0
    :try_start_3
    iget-object v6, p0, Lm2/o;->J:Ljava/lang/Object;

    .line 301
    .line 302
    check-cast v6, Lc4/Z;

    .line 303
    .line 304
    iget-object v6, v6, Lc1/d;->G:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast v6, Lc4/l0;

    .line 307
    .line 308
    iget-object v6, v6, Lc4/l0;->O:Lc4/T;

    .line 309
    .line 310
    invoke-static {v6}, Lc4/l0;->k(Lc4/s0;)V

    .line 311
    .line 312
    .line 313
    iget-object v6, v6, Lc4/T;->L:Lc4/Q;

    .line 314
    .line 315
    const-string v7, "Error reading value from SharedPreferences. Value dropped"

    .line 316
    .line 317
    invoke-virtual {v6, v7}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    :cond_e
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 321
    .line 322
    goto/16 :goto_0

    .line 323
    .line 324
    :cond_f
    iput-object v2, p0, Lm2/o;->I:Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 325
    .line 326
    goto :goto_6

    .line 327
    :catch_1
    iget-object v0, p0, Lm2/o;->J:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast v0, Lc4/Z;

    .line 330
    .line 331
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast v0, Lc4/l0;

    .line 334
    .line 335
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 336
    .line 337
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 338
    .line 339
    .line 340
    const-string v1, "Error loading bundle from SharedPreferences. Values will be lost"

    .line 341
    .line 342
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 343
    .line 344
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    :cond_10
    :goto_6
    iget-object v0, p0, Lm2/o;->I:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast v0, Landroid/os/Bundle;

    .line 350
    .line 351
    if-nez v0, :cond_11

    .line 352
    .line 353
    iget-object v0, p0, Lm2/o;->H:Ljava/lang/Object;

    .line 354
    .line 355
    check-cast v0, Landroid/os/Bundle;

    .line 356
    .line 357
    iput-object v0, p0, Lm2/o;->I:Ljava/lang/Object;

    .line 358
    .line 359
    :cond_11
    :goto_7
    new-instance v0, Landroid/os/Bundle;

    .line 360
    .line 361
    iget-object v1, p0, Lm2/o;->I:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast v1, Landroid/os/Bundle;

    .line 364
    .line 365
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 369
    .line 370
    .line 371
    return-object v0
.end method

.method public final varargs v(Lm2/i;[Lcom/google/android/gms/internal/measurement/D1;)Lcom/google/android/gms/internal/measurement/n;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/n;->s:Lcom/google/android/gms/internal/measurement/r;

    .line 2
    .line 3
    array-length v1, p2

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_2

    .line 6
    .line 7
    aget-object v0, p2, v2

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->E(Lcom/google/android/gms/internal/measurement/D1;)Lcom/google/android/gms/internal/measurement/n;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v3, p0, Lm2/o;->I:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, Lm2/i;

    .line 16
    .line 17
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Cw;->h1(Lm2/i;)V

    .line 18
    .line 19
    .line 20
    instance-of v3, v0, Lcom/google/android/gms/internal/measurement/o;

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    instance-of v3, v0, Lcom/google/android/gms/internal/measurement/m;

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    :cond_0
    iget-object v3, p0, Lm2/o;->G:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v3, Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 31
    .line 32
    invoke-virtual {v3, p1, v0}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->D(Lm2/i;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return-object v0
.end method

.method public final w(Landroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    move-object v2, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    iget-object v0, v1, Lm2/o;->J:Ljava/lang/Object;

    .line 20
    .line 21
    move-object v3, v0

    .line 22
    check-cast v3, Lc4/Z;

    .line 23
    .line 24
    invoke-virtual {v3}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v2}, Landroid/os/BaseBundle;->size()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    iget-object v0, v1, Lm2/o;->G:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Ljava/lang/String;

    .line 41
    .line 42
    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 43
    .line 44
    .line 45
    goto/16 :goto_5

    .line 46
    .line 47
    :cond_1
    iget-object v0, v1, Lm2/o;->G:Ljava/lang/Object;

    .line 48
    .line 49
    move-object v5, v0

    .line 50
    check-cast v5, Ljava/lang/String;

    .line 51
    .line 52
    new-instance v6, Lorg/json/JSONArray;

    .line 53
    .line 54
    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_c

    .line 70
    .line 71
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    if-eqz v8, :cond_2

    .line 82
    .line 83
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    .line 84
    .line 85
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v10, "n"

    .line 89
    .line 90
    invoke-virtual {v9, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    .line 92
    .line 93
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i4;->b()V

    .line 94
    .line 95
    .line 96
    iget-object v0, v3, Lc1/d;->G:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v0, Lc4/l0;

    .line 99
    .line 100
    iget-object v10, v0, Lc4/l0;->M:Lc4/h;

    .line 101
    .line 102
    sget-object v11, Lc4/E;->X0:Lc4/D;

    .line 103
    .line 104
    const/4 v12, 0x0

    .line 105
    invoke-virtual {v10, v12, v11}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 106
    .line 107
    .line 108
    move-result v10
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    const-string v11, "Cannot serialize bundle value to SharedPreferences. Type"

    .line 110
    .line 111
    const-string v12, "d"

    .line 112
    .line 113
    const-string v13, "l"

    .line 114
    .line 115
    const-string v14, "s"

    .line 116
    .line 117
    const-string v15, "v"

    .line 118
    .line 119
    move-object/from16 p1, v3

    .line 120
    .line 121
    const-string v3, "t"

    .line 122
    .line 123
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 124
    .line 125
    if-eqz v10, :cond_8

    .line 126
    .line 127
    :try_start_1
    instance-of v10, v8, Ljava/lang/String;

    .line 128
    .line 129
    if-eqz v10, :cond_3

    .line 130
    .line 131
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v9, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v9, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    .line 140
    .line 141
    goto/16 :goto_3

    .line 142
    .line 143
    :catch_0
    move-exception v0

    .line 144
    goto/16 :goto_4

    .line 145
    .line 146
    :cond_3
    instance-of v10, v8, Ljava/lang/Long;

    .line 147
    .line 148
    if-eqz v10, :cond_4

    .line 149
    .line 150
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v9, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v9, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_4
    instance-of v10, v8, [I

    .line 162
    .line 163
    if-eqz v10, :cond_5

    .line 164
    .line 165
    check-cast v8, [I

    .line 166
    .line 167
    invoke-static {v8}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v9, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    .line 173
    .line 174
    const-string v0, "ia"

    .line 175
    .line 176
    invoke-virtual {v9, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_5
    instance-of v10, v8, [J

    .line 181
    .line 182
    if-eqz v10, :cond_6

    .line 183
    .line 184
    check-cast v8, [J

    .line 185
    .line 186
    invoke-static {v8}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v9, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    .line 192
    .line 193
    const-string v0, "la"

    .line 194
    .line 195
    invoke-virtual {v9, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_6
    instance-of v10, v8, Ljava/lang/Double;

    .line 200
    .line 201
    if-eqz v10, :cond_7

    .line 202
    .line 203
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v9, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v9, v3, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_7
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 215
    .line 216
    .line 217
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 218
    .line 219
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {v0, v3, v11}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :goto_2
    move-object/from16 v3, p1

    .line 227
    .line 228
    goto/16 :goto_1

    .line 229
    .line 230
    :cond_8
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v10

    .line 234
    invoke-virtual {v9, v15, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    .line 236
    .line 237
    instance-of v10, v8, Ljava/lang/String;

    .line 238
    .line 239
    if-eqz v10, :cond_9

    .line 240
    .line 241
    invoke-virtual {v9, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_9
    instance-of v10, v8, Ljava/lang/Long;

    .line 246
    .line 247
    if-eqz v10, :cond_a

    .line 248
    .line 249
    invoke-virtual {v9, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_a
    instance-of v10, v8, Ljava/lang/Double;

    .line 254
    .line 255
    if-eqz v10, :cond_b

    .line 256
    .line 257
    invoke-virtual {v9, v3, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    .line 259
    .line 260
    :goto_3
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 261
    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_b
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 265
    .line 266
    .line 267
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 268
    .line 269
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-virtual {v0, v3, v11}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 274
    .line 275
    .line 276
    goto :goto_2

    .line 277
    :catch_1
    move-exception v0

    .line 278
    move-object/from16 p1, v3

    .line 279
    .line 280
    :goto_4
    iget-object v3, v1, Lm2/o;->J:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast v3, Lc4/Z;

    .line 283
    .line 284
    iget-object v3, v3, Lc1/d;->G:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v3, Lc4/l0;

    .line 287
    .line 288
    iget-object v3, v3, Lc4/l0;->O:Lc4/T;

    .line 289
    .line 290
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 291
    .line 292
    .line 293
    const-string v8, "Cannot serialize bundle value to SharedPreferences"

    .line 294
    .line 295
    iget-object v3, v3, Lc4/T;->L:Lc4/Q;

    .line 296
    .line 297
    invoke-virtual {v3, v0, v8}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    goto :goto_2

    .line 301
    :cond_c
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 306
    .line 307
    .line 308
    :goto_5
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 309
    .line 310
    .line 311
    iput-object v2, v1, Lm2/o;->I:Ljava/lang/Object;

    .line 312
    .line 313
    return-void
.end method

.method public final x(Ljava/lang/Object;Lcom/google/android/gms/internal/pal/l6;Z)V
    .locals 14

    .line 1
    move-object v1, p0

    .line 2
    iget-object v0, v1, Lm2/o;->H:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    .line 5
    .line 6
    if-eqz v0, :cond_e

    .line 7
    .line 8
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/pal/l6;->s()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x3

    .line 13
    if-ne v0, v2, :cond_d

    .line 14
    .line 15
    iget-object v0, v1, Lm2/o;->H:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    .line 18
    .line 19
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/pal/l6;->m()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/pal/l6;->t()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x5

    .line 33
    if-ne v4, v6, :cond_0

    .line 34
    .line 35
    move-object v12, v5

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object v12, v3

    .line 38
    :goto_0
    sget-object v3, Lcom/google/android/gms/internal/pal/t4;->b:Lcom/google/android/gms/internal/pal/t4;

    .line 39
    .line 40
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/pal/l6;->n()Lcom/google/android/gms/internal/pal/e6;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v4}, Lcom/google/android/gms/internal/pal/e6;->q()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/pal/l6;->n()Lcom/google/android/gms/internal/pal/e6;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4}, Lcom/google/android/gms/internal/pal/e6;->p()Lcom/google/android/gms/internal/pal/r;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/pal/l6;->n()Lcom/google/android/gms/internal/pal/e6;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v4}, Lcom/google/android/gms/internal/pal/e6;->n()I

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/pal/l6;->t()I

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    if-ne v11, v6, :cond_2

    .line 69
    .line 70
    if-nez v12, :cond_1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 74
    .line 75
    const-string v2, "Keys with output prefix type raw should not have an id requirement."

    .line 76
    .line 77
    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v0

    .line 81
    :cond_2
    if-eqz v12, :cond_c

    .line 82
    .line 83
    :goto_1
    new-instance v4, Lcom/google/android/gms/internal/pal/x4;

    .line 84
    .line 85
    move-object v7, v4

    .line 86
    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/pal/x4;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/pal/r;IILjava/lang/Integer;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    :try_start_0
    iget-object v3, v3, Lcom/google/android/gms/internal/pal/t4;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Lcom/google/android/gms/internal/pal/B4;

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/pal/B4;->a(Lcom/google/android/gms/internal/pal/x4;)Lcom/google/android/gms/internal/pal/C4;

    .line 101
    .line 102
    .line 103
    move-result-object v3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_2

    .line 105
    :catch_0
    :try_start_1
    new-instance v3, Lcom/google/android/gms/internal/pal/q4;

    .line 106
    .line 107
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 108
    .line 109
    .line 110
    sget-object v7, Lcom/google/android/gms/internal/pal/p4;->a:[I

    .line 111
    .line 112
    iget v4, v4, Lcom/google/android/gms/internal/pal/x4;->d:I

    .line 113
    .line 114
    invoke-static {v4}, Lu/h;->b(I)I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    aget v4, v7, v4
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    .line 120
    :goto_2
    instance-of v4, v3, Lcom/google/android/gms/internal/pal/q4;

    .line 121
    .line 122
    if-eqz v4, :cond_3

    .line 123
    .line 124
    new-instance v3, Lcom/google/android/gms/internal/pal/C3;

    .line 125
    .line 126
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/pal/l6;->n()Lcom/google/android/gms/internal/pal/e6;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v4}, Lcom/google/android/gms/internal/pal/e6;->q()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/pal/l6;->t()I

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    invoke-direct {v3, v4, v7}, Lcom/google/android/gms/internal/pal/C3;-><init>(Ljava/lang/String;I)V

    .line 139
    .line 140
    .line 141
    :goto_3
    move-object v13, v3

    .line 142
    goto :goto_4

    .line 143
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/pal/y4;->i()Lcom/google/android/gms/internal/pal/y4;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    goto :goto_3

    .line 148
    :goto_4
    new-instance v3, Lcom/google/android/gms/internal/pal/A3;

    .line 149
    .line 150
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/pal/l6;->t()I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    add-int/lit8 v4, v4, -0x2

    .line 155
    .line 156
    const/4 v7, 0x1

    .line 157
    if-eq v4, v7, :cond_7

    .line 158
    .line 159
    const/4 v7, 0x2

    .line 160
    if-eq v4, v7, :cond_6

    .line 161
    .line 162
    if-eq v4, v2, :cond_5

    .line 163
    .line 164
    const/4 v2, 0x4

    .line 165
    if-ne v4, v2, :cond_4

    .line 166
    .line 167
    goto :goto_6

    .line 168
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 169
    .line 170
    const-string v2, "unknown output prefix type"

    .line 171
    .line 172
    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw v0

    .line 176
    :cond_5
    sget-object v2, Lcom/google/android/gms/internal/pal/y4;->J:[B

    .line 177
    .line 178
    :goto_5
    move-object v9, v2

    .line 179
    goto :goto_7

    .line 180
    :cond_6
    :goto_6
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    const/4 v4, 0x0

    .line 185
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/pal/l6;->m()I

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    goto :goto_5

    .line 202
    :cond_7
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/pal/l6;->m()I

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    goto :goto_5

    .line 223
    :goto_7
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/pal/l6;->s()I

    .line 224
    .line 225
    .line 226
    move-result v10

    .line 227
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/pal/l6;->t()I

    .line 228
    .line 229
    .line 230
    move-result v11

    .line 231
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/pal/l6;->m()I

    .line 232
    .line 233
    .line 234
    move-result v12

    .line 235
    move-object v7, v3

    .line 236
    move-object v8, p1

    .line 237
    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/internal/pal/A3;-><init>(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/pal/y4;)V

    .line 238
    .line 239
    .line 240
    new-instance v2, Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    new-instance v4, Lcom/google/android/gms/internal/pal/B3;

    .line 249
    .line 250
    iget-object v6, v3, Lcom/google/android/gms/internal/pal/A3;->b:[B

    .line 251
    .line 252
    if-nez v6, :cond_8

    .line 253
    .line 254
    goto :goto_8

    .line 255
    :cond_8
    array-length v5, v6

    .line 256
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    :goto_8
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/pal/B3;-><init>([B)V

    .line 261
    .line 262
    .line 263
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    check-cast v2, Ljava/util/List;

    .line 272
    .line 273
    if-eqz v2, :cond_9

    .line 274
    .line 275
    new-instance v5, Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 281
    .line 282
    .line 283
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    :cond_9
    if-eqz p3, :cond_b

    .line 294
    .line 295
    iget-object v0, v1, Lm2/o;->I:Ljava/lang/Object;

    .line 296
    .line 297
    check-cast v0, Lcom/google/android/gms/internal/pal/A3;

    .line 298
    .line 299
    if-nez v0, :cond_a

    .line 300
    .line 301
    iput-object v3, v1, Lm2/o;->I:Ljava/lang/Object;

    .line 302
    .line 303
    goto :goto_9

    .line 304
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 305
    .line 306
    const-string v2, "you cannot set two primary primitives"

    .line 307
    .line 308
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    throw v0

    .line 312
    :cond_b
    :goto_9
    return-void

    .line 313
    :catch_1
    move-exception v0

    .line 314
    new-instance v2, LY/r;

    .line 315
    .line 316
    invoke-direct {v2, v0}, LY/r;-><init>(Ljava/security/GeneralSecurityException;)V

    .line 317
    .line 318
    .line 319
    throw v2

    .line 320
    :cond_c
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 321
    .line 322
    const-string v2, "Keys with output prefix type different from raw should have an id requirement."

    .line 323
    .line 324
    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    throw v0

    .line 328
    :cond_d
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 329
    .line 330
    const-string v2, "only ENABLED key is allowed"

    .line 331
    .line 332
    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    throw v0

    .line 336
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 337
    .line 338
    const-string v2, "addPrimitive cannot be called after build"

    .line 339
    .line 340
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    throw v0
.end method
