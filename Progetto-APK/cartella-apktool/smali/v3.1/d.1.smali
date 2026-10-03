.class public final synthetic Lv3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc4/r0;Lc4/u;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xd

    .line 2
    iput v0, p0, Lv3/d;->a:I

    .line 3
    iput-object p2, p0, Lv3/d;->b:Ljava/lang/Object;

    iput-object p3, p0, Lv3/d;->c:Ljava/lang/Object;

    iput-object p1, p0, Lv3/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Lorg/json/JSONObject;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 5
    iput v0, p0, Lv3/d;->a:I

    .line 6
    iput-object p1, p0, Lv3/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Lv3/d;->c:Ljava/lang/Object;

    iput-object p3, p0, Lv3/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lv3/d;->a:I

    iput-object p1, p0, Lv3/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Lv3/d;->c:Ljava/lang/Object;

    iput-object p3, p0, Lv3/d;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lv3/d;->a:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v1, Lv3/d;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lc4/r0;

    .line 13
    .line 14
    iget-object v2, v0, Lc4/r0;->G:Lc4/A1;

    .line 15
    .line 16
    invoke-virtual {v2}, Lc4/A1;->i()V

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lc4/r0;->G:Lc4/A1;

    .line 20
    .line 21
    iget-object v0, v0, Lc4/A1;->N:Lc4/O0;

    .line 22
    .line 23
    invoke-static {v0}, Lc4/A1;->I(Lc4/u1;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lc1/d;->m()V

    .line 27
    .line 28
    .line 29
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v2, "Unexpected call on client side"

    .line 32
    .line 33
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :pswitch_0
    iget-object v0, v1, Lv3/d;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, LZ3/J;

    .line 40
    .line 41
    iget-object v2, v1, Lv3/d;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Ljava/lang/String;

    .line 44
    .line 45
    iget-object v3, v1, Lv3/d;->d:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v3, Lorg/json/JSONObject;

    .line 48
    .line 49
    invoke-interface {v0, v3, v2}, LZ3/J;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0

    .line 58
    :pswitch_1
    iget-object v0, v1, Lv3/d;->b:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, Lcom/google/android/gms/internal/ads/Lq;

    .line 61
    .line 62
    iget-object v4, v1, Lv3/d;->c:Ljava/lang/Object;

    .line 63
    .line 64
    move-object v6, v4

    .line 65
    check-cast v6, Lcom/google/android/gms/internal/ads/Tv;

    .line 66
    .line 67
    iget-object v4, v1, Lv3/d;->d:Ljava/lang/Object;

    .line 68
    .line 69
    move-object v7, v4

    .line 70
    check-cast v7, Lcom/google/android/gms/internal/ads/Ov;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    new-instance v10, La3/b;

    .line 76
    .line 77
    invoke-direct {v10, v6, v7, v3}, La3/b;-><init>(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    new-instance v3, Lcom/google/android/gms/internal/ads/x;

    .line 81
    .line 82
    iget-object v4, v6, Lcom/google/android/gms/internal/ads/Tv;->a:Lcom/google/android/gms/internal/ads/Xu;

    .line 83
    .line 84
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v4, Lcom/google/android/gms/internal/ads/Yv;

    .line 87
    .line 88
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Yv;->a()Lcom/google/android/gms/internal/ads/y9;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    new-instance v12, LK/a;

    .line 93
    .line 94
    const/16 v8, 0x16

    .line 95
    .line 96
    const/4 v9, 0x0

    .line 97
    move-object v4, v12

    .line 98
    move-object v5, v0

    .line 99
    invoke-direct/range {v4 .. v9}, LK/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 100
    .line 101
    .line 102
    const/16 v4, 0x15

    .line 103
    .line 104
    invoke-direct {v3, v4, v11, v12}, Lcom/google/android/gms/internal/ads/x;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Lq;->a:Lcom/google/android/gms/internal/ads/di;

    .line 108
    .line 109
    check-cast v0, Lcom/google/android/gms/internal/ads/Ig;

    .line 110
    .line 111
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Ig;->e:Lcom/google/android/gms/internal/ads/Ig;

    .line 112
    .line 113
    new-instance v12, Lcom/google/android/gms/internal/ads/Fi;

    .line 114
    .line 115
    invoke-direct {v12, v10}, Lcom/google/android/gms/internal/ads/Fi;-><init>(La3/b;)V

    .line 116
    .line 117
    .line 118
    new-instance v5, Lcom/google/android/gms/internal/ads/Ci;

    .line 119
    .line 120
    invoke-direct {v5, v10}, Lcom/google/android/gms/internal/ads/Ci;-><init>(La3/b;)V

    .line 121
    .line 122
    .line 123
    sget v6, Lcom/google/android/gms/internal/ads/NJ;->c:I

    .line 124
    .line 125
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    new-instance v7, Ljava/util/ArrayList;

    .line 130
    .line 131
    const/4 v8, 0x2

    .line 132
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    .line 134
    .line 135
    iget-object v9, v4, Lcom/google/android/gms/internal/ads/Ig;->j0:Lcom/google/android/gms/internal/ads/Mn;

    .line 136
    .line 137
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    iget-object v9, v4, Lcom/google/android/gms/internal/ads/Ig;->k0:Lcom/google/android/gms/internal/ads/Bw;

    .line 141
    .line 142
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    new-instance v9, Lcom/google/android/gms/internal/ads/NJ;

    .line 146
    .line 147
    invoke-direct {v9, v6, v7}, Lcom/google/android/gms/internal/ads/NJ;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 148
    .line 149
    .line 150
    invoke-static {v9, v8}, Lt/a;->b(Lcom/google/android/gms/internal/ads/NJ;I)Lcom/google/android/gms/internal/ads/MJ;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    new-instance v7, Ljava/util/ArrayList;

    .line 155
    .line 156
    const/4 v8, 0x4

    .line 157
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    .line 159
    .line 160
    new-instance v9, Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    .line 164
    .line 165
    iget-object v11, v4, Lcom/google/android/gms/internal/ads/Ig;->B0:Lcom/google/android/gms/internal/ads/MJ;

    .line 166
    .line 167
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    iget-object v11, v4, Lcom/google/android/gms/internal/ads/Ig;->C0:Lcom/google/android/gms/internal/ads/MJ;

    .line 171
    .line 172
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    iget-object v11, v4, Lcom/google/android/gms/internal/ads/Ig;->D0:Lcom/google/android/gms/internal/ads/MJ;

    .line 176
    .line 177
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    iget-object v11, v4, Lcom/google/android/gms/internal/ads/Ig;->E0:Lcom/google/android/gms/internal/ads/MJ;

    .line 181
    .line 182
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    iget-object v11, v4, Lcom/google/android/gms/internal/ads/Ig;->O0:Lcom/google/android/gms/internal/ads/uk;

    .line 186
    .line 187
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    iget-object v11, v4, Lcom/google/android/gms/internal/ads/Ig;->P0:Lcom/google/android/gms/internal/ads/vk;

    .line 191
    .line 192
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    iget-object v11, v4, Lcom/google/android/gms/internal/ads/Ig;->Q0:Lcom/google/android/gms/internal/ads/vk;

    .line 196
    .line 197
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    iget-object v11, v4, Lcom/google/android/gms/internal/ads/Ig;->F0:Lcom/google/android/gms/internal/ads/MJ;

    .line 201
    .line 202
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    new-instance v11, Lcom/google/android/gms/internal/ads/NJ;

    .line 206
    .line 207
    invoke-direct {v11, v7, v9}, Lcom/google/android/gms/internal/ads/NJ;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 208
    .line 209
    .line 210
    invoke-static {v11, v8}, Lt/a;->b(Lcom/google/android/gms/internal/ads/NJ;I)Lcom/google/android/gms/internal/ads/MJ;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    new-instance v15, Lcom/google/android/gms/internal/ads/Di;

    .line 215
    .line 216
    invoke-direct {v15, v10}, Lcom/google/android/gms/internal/ads/Di;-><init>(La3/b;)V

    .line 217
    .line 218
    .line 219
    new-instance v8, Lcom/google/android/gms/internal/ads/Ei;

    .line 220
    .line 221
    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/ads/Ei;-><init>(La3/b;)V

    .line 222
    .line 223
    .line 224
    iget-object v9, v4, Lcom/google/android/gms/internal/ads/Ig;->o:Lcom/google/android/gms/internal/ads/MJ;

    .line 225
    .line 226
    new-instance v10, Lcom/google/android/gms/internal/ads/mj;

    .line 227
    .line 228
    iget-object v11, v4, Lcom/google/android/gms/internal/ads/Ig;->d0:Lcom/google/android/gms/internal/ads/MJ;

    .line 229
    .line 230
    move-object v13, v10

    .line 231
    move-object v14, v5

    .line 232
    move-object/from16 v16, v11

    .line 233
    .line 234
    move-object/from16 v17, v8

    .line 235
    .line 236
    move-object/from16 v18, v9

    .line 237
    .line 238
    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/internal/ads/mj;-><init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/Di;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;)V

    .line 239
    .line 240
    .line 241
    sget-object v8, Lcom/google/android/gms/internal/ads/nH;->p0:Lcom/google/android/gms/internal/ads/Bw;

    .line 242
    .line 243
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/HJ;->b(Lcom/google/android/gms/internal/ads/IJ;)Lcom/google/android/gms/internal/ads/MJ;

    .line 244
    .line 245
    .line 246
    move-result-object v18

    .line 247
    new-instance v8, Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 250
    .line 251
    .line 252
    new-instance v9, Ljava/util/ArrayList;

    .line 253
    .line 254
    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    .line 256
    .line 257
    iget-object v11, v4, Lcom/google/android/gms/internal/ads/Ig;->S0:Lcom/google/android/gms/internal/ads/vk;

    .line 258
    .line 259
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    iget-object v11, v4, Lcom/google/android/gms/internal/ads/Ig;->T0:Lcom/google/android/gms/internal/ads/Mn;

    .line 263
    .line 264
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    new-instance v11, Lcom/google/android/gms/internal/ads/NJ;

    .line 268
    .line 269
    invoke-direct {v11, v8, v9}, Lcom/google/android/gms/internal/ads/NJ;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 270
    .line 271
    .line 272
    new-instance v8, Lcom/google/android/gms/internal/ads/Kj;

    .line 273
    .line 274
    invoke-direct {v8, v11}, Lcom/google/android/gms/internal/ads/Kj;-><init>(Lcom/google/android/gms/internal/ads/NJ;)V

    .line 275
    .line 276
    .line 277
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 278
    .line 279
    .line 280
    move-result-object v9

    .line 281
    new-instance v11, Ljava/util/ArrayList;

    .line 282
    .line 283
    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 284
    .line 285
    .line 286
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/Ig;->y0:Lcom/google/android/gms/internal/ads/wk;

    .line 287
    .line 288
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    new-instance v2, Lcom/google/android/gms/internal/ads/NJ;

    .line 292
    .line 293
    invoke-direct {v2, v9, v11}, Lcom/google/android/gms/internal/ads/NJ;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 294
    .line 295
    .line 296
    const/16 v9, 0xe

    .line 297
    .line 298
    invoke-static {v2, v9}, Lt/a;->b(Lcom/google/android/gms/internal/ads/NJ;I)Lcom/google/android/gms/internal/ads/MJ;

    .line 299
    .line 300
    .line 301
    move-result-object v20

    .line 302
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/Ig;->R0:Lcom/google/android/gms/internal/ads/zk;

    .line 303
    .line 304
    new-instance v22, Lcom/google/android/gms/internal/ads/Ri;

    .line 305
    .line 306
    move-object/from16 v11, v22

    .line 307
    .line 308
    move-object v13, v5

    .line 309
    move-object v14, v6

    .line 310
    move-object v15, v7

    .line 311
    move-object/from16 v16, v2

    .line 312
    .line 313
    move-object/from16 v17, v10

    .line 314
    .line 315
    move-object/from16 v19, v8

    .line 316
    .line 317
    invoke-direct/range {v11 .. v20}, Lcom/google/android/gms/internal/ads/Ri;-><init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/zk;Lcom/google/android/gms/internal/ads/mj;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/Kj;Lcom/google/android/gms/internal/ads/MJ;)V

    .line 318
    .line 319
    .line 320
    new-instance v2, Lcom/google/android/gms/internal/ads/li;

    .line 321
    .line 322
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/li;-><init>(Lcom/google/android/gms/internal/ads/x;)V

    .line 323
    .line 324
    .line 325
    new-instance v4, Lcom/google/android/gms/internal/ads/ki;

    .line 326
    .line 327
    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/ki;-><init>(Lcom/google/android/gms/internal/ads/x;)V

    .line 328
    .line 329
    .line 330
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ig;->d:Lcom/google/android/gms/internal/ads/Bg;

    .line 331
    .line 332
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Bg;->d:Lcom/google/android/gms/internal/ads/MJ;

    .line 333
    .line 334
    new-instance v3, Lcom/google/android/gms/internal/ads/Hh;

    .line 335
    .line 336
    const/16 v26, 0x2

    .line 337
    .line 338
    move-object/from16 v21, v3

    .line 339
    .line 340
    move-object/from16 v23, v2

    .line 341
    .line 342
    move-object/from16 v24, v4

    .line 343
    .line 344
    move-object/from16 v25, v0

    .line 345
    .line 346
    invoke-direct/range {v21 .. v26}, Lcom/google/android/gms/internal/ads/Hh;-><init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;I)V

    .line 347
    .line 348
    .line 349
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/HJ;->b(Lcom/google/android/gms/internal/ads/IJ;)Lcom/google/android/gms/internal/ads/MJ;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    check-cast v0, Lcom/google/android/gms/internal/ads/ji;

    .line 358
    .line 359
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    return-object v0

    .line 363
    :pswitch_2
    iget-object v0, v1, Lv3/d;->b:Ljava/lang/Object;

    .line 364
    .line 365
    check-cast v0, LD4/b;

    .line 366
    .line 367
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    check-cast v0, Lcom/google/android/gms/internal/ads/Xc;

    .line 372
    .line 373
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->U1:Lcom/google/android/gms/internal/ads/J7;

    .line 374
    .line 375
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 376
    .line 377
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 378
    .line 379
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    check-cast v2, Ljava/lang/Boolean;

    .line 384
    .line 385
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    if-eqz v2, :cond_0

    .line 390
    .line 391
    iget-object v2, v1, Lv3/d;->c:Ljava/lang/Object;

    .line 392
    .line 393
    check-cast v2, Lcom/google/android/gms/internal/ads/Wc;

    .line 394
    .line 395
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/Wc;->S:Landroid/os/Bundle;

    .line 396
    .line 397
    if-eqz v3, :cond_0

    .line 398
    .line 399
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/Xc;->j:J

    .line 400
    .line 401
    const-string v6, "get-ad-dictionary-sdkcore-start"

    .line 402
    .line 403
    invoke-virtual {v3, v6, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 404
    .line 405
    .line 406
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Wc;->S:Landroid/os/Bundle;

    .line 407
    .line 408
    const-string v3, "get-ad-dictionary-sdkcore-end"

    .line 409
    .line 410
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/Xc;->k:J

    .line 411
    .line 412
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 413
    .line 414
    .line 415
    :cond_0
    iget-object v2, v1, Lv3/d;->d:Ljava/lang/Object;

    .line 416
    .line 417
    check-cast v2, LD4/b;

    .line 418
    .line 419
    new-instance v3, Lcom/google/android/gms/internal/ads/Kp;

    .line 420
    .line 421
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    check-cast v2, Lorg/json/JSONObject;

    .line 426
    .line 427
    invoke-direct {v3, v2, v0}, Lcom/google/android/gms/internal/ads/Kp;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/Xc;)V

    .line 428
    .line 429
    .line 430
    return-object v3

    .line 431
    :pswitch_3
    new-instance v4, Lcom/google/android/gms/internal/ads/Il;

    .line 432
    .line 433
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/Il;-><init>()V

    .line 434
    .line 435
    .line 436
    iget-object v0, v1, Lv3/d;->d:Ljava/lang/Object;

    .line 437
    .line 438
    check-cast v0, Lorg/json/JSONObject;

    .line 439
    .line 440
    const-string v5, "template_id"

    .line 441
    .line 442
    const/4 v6, -0x1

    .line 443
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 444
    .line 445
    .line 446
    move-result v5

    .line 447
    monitor-enter v4

    .line 448
    :try_start_0
    iput v5, v4, Lcom/google/android/gms/internal/ads/Il;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    .line 450
    monitor-exit v4

    .line 451
    const-string v5, "custom_template_id"

    .line 452
    .line 453
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v5

    .line 457
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/Il;->i(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    const-string v5, "omid_settings"

    .line 461
    .line 462
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 463
    .line 464
    .line 465
    move-result-object v5

    .line 466
    if-eqz v5, :cond_1

    .line 467
    .line 468
    const-string v6, "omid_partner_name"

    .line 469
    .line 470
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v5

    .line 474
    goto :goto_0

    .line 475
    :cond_1
    move-object v5, v3

    .line 476
    :goto_0
    iget-object v6, v1, Lv3/d;->b:Ljava/lang/Object;

    .line 477
    .line 478
    check-cast v6, Lcom/google/android/gms/internal/ads/Tv;

    .line 479
    .line 480
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/Il;->r(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    iget-object v5, v6, Lcom/google/android/gms/internal/ads/Tv;->a:Lcom/google/android/gms/internal/ads/Xu;

    .line 484
    .line 485
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 486
    .line 487
    check-cast v5, Lcom/google/android/gms/internal/ads/Yv;

    .line 488
    .line 489
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Il;->D()I

    .line 490
    .line 491
    .line 492
    move-result v6

    .line 493
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v6

    .line 497
    iget-object v7, v5, Lcom/google/android/gms/internal/ads/Yv;->g:Ljava/util/ArrayList;

    .line 498
    .line 499
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    move-result v6

    .line 503
    if-eqz v6, :cond_7

    .line 504
    .line 505
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Il;->D()I

    .line 506
    .line 507
    .line 508
    move-result v6

    .line 509
    const/4 v7, 0x3

    .line 510
    if-ne v6, v7, :cond_4

    .line 511
    .line 512
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Il;->a()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v6

    .line 516
    if-eqz v6, :cond_3

    .line 517
    .line 518
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/Yv;->h:Ljava/util/ArrayList;

    .line 519
    .line 520
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Il;->a()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v6

    .line 524
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    move-result v5

    .line 528
    if-eqz v5, :cond_2

    .line 529
    .line 530
    goto :goto_1

    .line 531
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/qr;

    .line 532
    .line 533
    const-string v3, "Unexpected custom template id in the response."

    .line 534
    .line 535
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/Bo;-><init>(ILjava/lang/String;)V

    .line 536
    .line 537
    .line 538
    throw v0

    .line 539
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/qr;

    .line 540
    .line 541
    const-string v3, "No custom template id for custom template ad response."

    .line 542
    .line 543
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/Bo;-><init>(ILjava/lang/String;)V

    .line 544
    .line 545
    .line 546
    throw v0

    .line 547
    :cond_4
    :goto_1
    iget-object v2, v1, Lv3/d;->c:Ljava/lang/Object;

    .line 548
    .line 549
    check-cast v2, Lcom/google/android/gms/internal/ads/Ov;

    .line 550
    .line 551
    const-string v5, "rating"

    .line 552
    .line 553
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 554
    .line 555
    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 556
    .line 557
    .line 558
    move-result-wide v5

    .line 559
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ads/Il;->t(D)V

    .line 560
    .line 561
    .line 562
    const-string v5, "headline"

    .line 563
    .line 564
    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v5

    .line 568
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/Ov;->M:Z

    .line 569
    .line 570
    if-eqz v2, :cond_6

    .line 571
    .line 572
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 573
    .line 574
    iget-object v6, v2, Lk3/l;->c:Lo3/O;

    .line 575
    .line 576
    iget-object v2, v2, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 577
    .line 578
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/le;->b()Landroid/content/res/Resources;

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    if-eqz v2, :cond_5

    .line 583
    .line 584
    const v6, 0x7f130180

    .line 585
    .line 586
    .line 587
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v2

    .line 591
    goto :goto_2

    .line 592
    :cond_5
    const-string v2, "Test Ad"

    .line 593
    .line 594
    :goto_2
    const-string v6, " : "

    .line 595
    .line 596
    invoke-static {v2, v6, v5}, Lcom/google/protobuf/U2;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v5

    .line 600
    :cond_6
    const-string v2, "headline"

    .line 601
    .line 602
    invoke-virtual {v4, v2, v5}, Lcom/google/android/gms/internal/ads/Il;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    const-string v2, "body"

    .line 606
    .line 607
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    const-string v5, "body"

    .line 612
    .line 613
    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/internal/ads/Il;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    const-string v2, "call_to_action"

    .line 617
    .line 618
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    const-string v5, "call_to_action"

    .line 623
    .line 624
    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/internal/ads/Il;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    const-string v2, "store"

    .line 628
    .line 629
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v2

    .line 633
    const-string v5, "store"

    .line 634
    .line 635
    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/internal/ads/Il;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    const-string v2, "price"

    .line 639
    .line 640
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v2

    .line 644
    const-string v5, "price"

    .line 645
    .line 646
    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/internal/ads/Il;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    const-string v2, "advertiser"

    .line 650
    .line 651
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    const-string v2, "advertiser"

    .line 656
    .line 657
    invoke-virtual {v4, v2, v0}, Lcom/google/android/gms/internal/ads/Il;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    return-object v4

    .line 661
    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/ads/qr;

    .line 662
    .line 663
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Il;->D()I

    .line 664
    .line 665
    .line 666
    move-result v3

    .line 667
    const-string v4, "Invalid template ID: "

    .line 668
    .line 669
    invoke-static {v4, v3}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v3

    .line 673
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/Bo;-><init>(ILjava/lang/String;)V

    .line 674
    .line 675
    .line 676
    throw v0

    .line 677
    :catchall_0
    move-exception v0

    .line 678
    move-object v2, v0

    .line 679
    monitor-exit v4

    .line 680
    throw v2

    .line 681
    :pswitch_4
    iget-object v0, v1, Lv3/d;->b:Ljava/lang/Object;

    .line 682
    .line 683
    check-cast v0, Lcom/google/android/gms/internal/ads/aj;

    .line 684
    .line 685
    iget-object v3, v1, Lv3/d;->c:Ljava/lang/Object;

    .line 686
    .line 687
    check-cast v3, LD4/b;

    .line 688
    .line 689
    iget-object v4, v1, Lv3/d;->d:Ljava/lang/Object;

    .line 690
    .line 691
    move-object/from16 v18, v4

    .line 692
    .line 693
    check-cast v18, Landroid/os/Bundle;

    .line 694
    .line 695
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 696
    .line 697
    .line 698
    new-instance v4, Lcom/google/android/gms/internal/ads/Wc;

    .line 699
    .line 700
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    move-result-object v3

    .line 704
    move-object v6, v3

    .line 705
    check-cast v6, Landroid/os/Bundle;

    .line 706
    .line 707
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/aj;->g:Lcom/google/android/gms/internal/ads/EJ;

    .line 708
    .line 709
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/EJ;->zzb()Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object v3

    .line 713
    check-cast v3, LD4/b;

    .line 714
    .line 715
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    move-result-object v3

    .line 719
    move-object v12, v3

    .line 720
    check-cast v12, Ljava/lang/String;

    .line 721
    .line 722
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->C6:Lcom/google/android/gms/internal/ads/J7;

    .line 723
    .line 724
    sget-object v5, Ll3/q;->d:Ll3/q;

    .line 725
    .line 726
    iget-object v5, v5, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 727
    .line 728
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    move-result-object v3

    .line 732
    check-cast v3, Ljava/lang/Boolean;

    .line 733
    .line 734
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 735
    .line 736
    .line 737
    move-result v3

    .line 738
    const/4 v5, 0x0

    .line 739
    if-eqz v3, :cond_8

    .line 740
    .line 741
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/aj;->j:Lo3/K;

    .line 742
    .line 743
    check-cast v3, Lo3/L;

    .line 744
    .line 745
    invoke-virtual {v3}, Lo3/L;->r()Z

    .line 746
    .line 747
    .line 748
    move-result v3

    .line 749
    if-eqz v3, :cond_8

    .line 750
    .line 751
    const/16 v16, 0x1

    .line 752
    .line 753
    goto :goto_3

    .line 754
    :cond_8
    const/16 v16, 0x0

    .line 755
    .line 756
    :goto_3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/aj;->k:Lcom/google/android/gms/internal/ads/Yv;

    .line 757
    .line 758
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Yv;->b()Z

    .line 759
    .line 760
    .line 761
    move-result v17

    .line 762
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/aj;->b:Lp3/a;

    .line 763
    .line 764
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/aj;->c:Landroid/content/pm/ApplicationInfo;

    .line 765
    .line 766
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/aj;->d:Ljava/lang/String;

    .line 767
    .line 768
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/aj;->e:Ljava/util/List;

    .line 769
    .line 770
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/aj;->f:Landroid/content/pm/PackageInfo;

    .line 771
    .line 772
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/aj;->h:Ljava/lang/String;

    .line 773
    .line 774
    const/4 v14, 0x0

    .line 775
    const/4 v15, 0x0

    .line 776
    move-object v5, v4

    .line 777
    invoke-direct/range {v5 .. v18}, Lcom/google/android/gms/internal/ads/Wc;-><init>(Landroid/os/Bundle;Lp3/a;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ow;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    .line 778
    .line 779
    .line 780
    return-object v4

    .line 781
    :pswitch_5
    iget-object v0, v1, Lv3/d;->b:Ljava/lang/Object;

    .line 782
    .line 783
    check-cast v0, Landroid/content/SharedPreferences;

    .line 784
    .line 785
    iget-object v2, v1, Lv3/d;->c:Ljava/lang/Object;

    .line 786
    .line 787
    check-cast v2, Ljava/lang/String;

    .line 788
    .line 789
    iget-object v3, v1, Lv3/d;->d:Ljava/lang/Object;

    .line 790
    .line 791
    check-cast v3, Ljava/lang/String;

    .line 792
    .line 793
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v0

    .line 797
    return-object v0

    .line 798
    :pswitch_6
    iget-object v0, v1, Lv3/d;->b:Ljava/lang/Object;

    .line 799
    .line 800
    check-cast v0, Landroid/content/SharedPreferences;

    .line 801
    .line 802
    iget-object v2, v1, Lv3/d;->c:Ljava/lang/Object;

    .line 803
    .line 804
    check-cast v2, Ljava/lang/String;

    .line 805
    .line 806
    iget-object v3, v1, Lv3/d;->d:Ljava/lang/Object;

    .line 807
    .line 808
    check-cast v3, Ljava/lang/Long;

    .line 809
    .line 810
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 811
    .line 812
    .line 813
    move-result-wide v3

    .line 814
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 815
    .line 816
    .line 817
    move-result-wide v2

    .line 818
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    return-object v0

    .line 823
    :pswitch_7
    iget-object v0, v1, Lv3/d;->b:Ljava/lang/Object;

    .line 824
    .line 825
    check-cast v0, Landroid/content/SharedPreferences;

    .line 826
    .line 827
    iget-object v2, v1, Lv3/d;->c:Ljava/lang/Object;

    .line 828
    .line 829
    check-cast v2, Ljava/lang/String;

    .line 830
    .line 831
    iget-object v3, v1, Lv3/d;->d:Ljava/lang/Object;

    .line 832
    .line 833
    check-cast v3, Ljava/lang/Integer;

    .line 834
    .line 835
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 836
    .line 837
    .line 838
    move-result v3

    .line 839
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 840
    .line 841
    .line 842
    move-result v0

    .line 843
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 844
    .line 845
    .line 846
    move-result-object v0

    .line 847
    return-object v0

    .line 848
    :pswitch_8
    iget-object v0, v1, Lv3/d;->b:Ljava/lang/Object;

    .line 849
    .line 850
    check-cast v0, Landroid/content/SharedPreferences;

    .line 851
    .line 852
    iget-object v2, v1, Lv3/d;->c:Ljava/lang/Object;

    .line 853
    .line 854
    check-cast v2, Ljava/lang/String;

    .line 855
    .line 856
    iget-object v3, v1, Lv3/d;->d:Ljava/lang/Object;

    .line 857
    .line 858
    check-cast v3, Ljava/lang/Boolean;

    .line 859
    .line 860
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 861
    .line 862
    .line 863
    move-result v3

    .line 864
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 865
    .line 866
    .line 867
    move-result v0

    .line 868
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    return-object v0

    .line 873
    :pswitch_9
    iget-object v0, v1, Lv3/d;->b:Ljava/lang/Object;

    .line 874
    .line 875
    check-cast v0, Lv3/x;

    .line 876
    .line 877
    iget-object v2, v1, Lv3/d;->c:Ljava/lang/Object;

    .line 878
    .line 879
    check-cast v2, Lf3/f;

    .line 880
    .line 881
    iget-object v3, v1, Lv3/d;->d:Ljava/lang/Object;

    .line 882
    .line 883
    check-cast v3, Lv3/y;

    .line 884
    .line 885
    iget-object v0, v0, Lv3/x;->c:Landroid/content/Context;

    .line 886
    .line 887
    invoke-static {v0, v2, v3}, LC2/g;->s(Landroid/content/Context;Lf3/f;Lx3/a;)V

    .line 888
    .line 889
    .line 890
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 891
    .line 892
    return-object v0

    .line 893
    :pswitch_a
    iget-object v0, v1, Lv3/d;->b:Ljava/lang/Object;

    .line 894
    .line 895
    check-cast v0, Lv3/j;

    .line 896
    .line 897
    iget-object v2, v1, Lv3/d;->c:Ljava/lang/Object;

    .line 898
    .line 899
    check-cast v2, Ljava/util/List;

    .line 900
    .line 901
    iget-object v4, v1, Lv3/d;->d:Ljava/lang/Object;

    .line 902
    .line 903
    check-cast v4, LR3/a;

    .line 904
    .line 905
    iget-object v5, v0, Lv3/j;->J:Lcom/google/android/gms/internal/ads/H4;

    .line 906
    .line 907
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/H4;->b:Lcom/google/android/gms/internal/ads/E4;

    .line 908
    .line 909
    if-eqz v5, :cond_9

    .line 910
    .line 911
    iget-object v6, v0, Lv3/j;->I:Landroid/content/Context;

    .line 912
    .line 913
    invoke-static {v4}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 914
    .line 915
    .line 916
    move-result-object v4

    .line 917
    check-cast v4, Landroid/view/View;

    .line 918
    .line 919
    invoke-interface {v5, v6, v4, v3}, Lcom/google/android/gms/internal/ads/E4;->zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    .line 920
    .line 921
    .line 922
    move-result-object v3

    .line 923
    goto :goto_4

    .line 924
    :cond_9
    const-string v3, ""

    .line 925
    .line 926
    :goto_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 927
    .line 928
    .line 929
    move-result v4

    .line 930
    if-nez v4, :cond_d

    .line 931
    .line 932
    new-instance v4, Ljava/util/ArrayList;

    .line 933
    .line 934
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 935
    .line 936
    .line 937
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 938
    .line 939
    .line 940
    move-result-object v2

    .line 941
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 942
    .line 943
    .line 944
    move-result v5

    .line 945
    if-eqz v5, :cond_b

    .line 946
    .line 947
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 948
    .line 949
    .line 950
    move-result-object v5

    .line 951
    check-cast v5, Landroid/net/Uri;

    .line 952
    .line 953
    iget-object v6, v0, Lv3/j;->f0:Ljava/util/ArrayList;

    .line 954
    .line 955
    iget-object v7, v0, Lv3/j;->g0:Ljava/util/ArrayList;

    .line 956
    .line 957
    invoke-static {v5, v6, v7}, Lv3/j;->F3(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z

    .line 958
    .line 959
    .line 960
    move-result v6

    .line 961
    if-nez v6, :cond_a

    .line 962
    .line 963
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v6

    .line 967
    const-string v7, "Not a Google URL: "

    .line 968
    .line 969
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 970
    .line 971
    .line 972
    move-result-object v6

    .line 973
    invoke-static {v6}, Lp3/h;->g(Ljava/lang/String;)V

    .line 974
    .line 975
    .line 976
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    .line 978
    .line 979
    goto :goto_5

    .line 980
    :cond_a
    const-string v6, "ms"

    .line 981
    .line 982
    invoke-static {v5, v6, v3}, Lv3/j;->G3(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 983
    .line 984
    .line 985
    move-result-object v5

    .line 986
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    .line 988
    .line 989
    goto :goto_5

    .line 990
    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 991
    .line 992
    .line 993
    move-result v0

    .line 994
    if-nez v0, :cond_c

    .line 995
    .line 996
    return-object v4

    .line 997
    :cond_c
    new-instance v0, Ljava/lang/Exception;

    .line 998
    .line 999
    const-string v2, "Empty impression URLs result."

    .line 1000
    .line 1001
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    throw v0

    .line 1005
    :cond_d
    new-instance v0, Ljava/lang/Exception;

    .line 1006
    .line 1007
    const-string v2, "Failed to get view signals."

    .line 1008
    .line 1009
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1010
    .line 1011
    .line 1012
    throw v0

    .line 1013
    :pswitch_b
    iget-object v0, v1, Lv3/d;->b:Ljava/lang/Object;

    .line 1014
    .line 1015
    move-object v2, v0

    .line 1016
    check-cast v2, Lv3/j;

    .line 1017
    .line 1018
    iget-object v0, v1, Lv3/d;->c:Ljava/lang/Object;

    .line 1019
    .line 1020
    check-cast v0, Lcom/google/android/gms/internal/ads/de;

    .line 1021
    .line 1022
    iget-object v3, v1, Lv3/d;->d:Ljava/lang/Object;

    .line 1023
    .line 1024
    move-object v8, v3

    .line 1025
    check-cast v8, Landroid/os/Bundle;

    .line 1026
    .line 1027
    iget-object v3, v2, Lv3/j;->I:Landroid/content/Context;

    .line 1028
    .line 1029
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/de;->G:Ljava/lang/String;

    .line 1030
    .line 1031
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/de;->J:Ll3/b1;

    .line 1032
    .line 1033
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/de;->H:Ljava/lang/String;

    .line 1034
    .line 1035
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/de;->I:Ll3/d1;

    .line 1036
    .line 1037
    invoke-virtual/range {v2 .. v8}, Lv3/j;->z3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ll3/d1;Ll3/b1;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/Rg;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v0

    .line 1041
    return-object v0

    .line 1042
    :pswitch_c
    iget-object v0, v1, Lv3/d;->b:Ljava/lang/Object;

    .line 1043
    .line 1044
    check-cast v0, Lv3/j;

    .line 1045
    .line 1046
    iget-object v2, v1, Lv3/d;->c:Ljava/lang/Object;

    .line 1047
    .line 1048
    check-cast v2, Landroid/net/Uri;

    .line 1049
    .line 1050
    iget-object v4, v1, Lv3/d;->d:Ljava/lang/Object;

    .line 1051
    .line 1052
    check-cast v4, LR3/a;

    .line 1053
    .line 1054
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1055
    .line 1056
    .line 1057
    :try_start_1
    sget-object v5, Lcom/google/android/gms/internal/ads/Q7;->lb:Lcom/google/android/gms/internal/ads/J7;

    .line 1058
    .line 1059
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 1060
    .line 1061
    iget-object v6, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 1062
    .line 1063
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v5

    .line 1067
    check-cast v5, Ljava/lang/Boolean;

    .line 1068
    .line 1069
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1070
    .line 1071
    .line 1072
    move-result v5

    .line 1073
    if-eqz v5, :cond_e

    .line 1074
    .line 1075
    iget-object v5, v0, Lv3/j;->K:Lcom/google/android/gms/internal/ads/Zv;

    .line 1076
    .line 1077
    if-eqz v5, :cond_e

    .line 1078
    .line 1079
    iget-object v0, v0, Lv3/j;->I:Landroid/content/Context;

    .line 1080
    .line 1081
    invoke-static {v4}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v4

    .line 1085
    check-cast v4, Landroid/view/View;

    .line 1086
    .line 1087
    invoke-virtual {v5, v2, v0, v4, v3}, Lcom/google/android/gms/internal/ads/Zv;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v2

    .line 1091
    goto :goto_7

    .line 1092
    :catch_0
    move-exception v0

    .line 1093
    goto :goto_6

    .line 1094
    :cond_e
    iget-object v5, v0, Lv3/j;->J:Lcom/google/android/gms/internal/ads/H4;

    .line 1095
    .line 1096
    iget-object v0, v0, Lv3/j;->I:Landroid/content/Context;

    .line 1097
    .line 1098
    invoke-static {v4}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v4

    .line 1102
    check-cast v4, Landroid/view/View;

    .line 1103
    .line 1104
    invoke-virtual {v5, v2, v0, v4, v3}, Lcom/google/android/gms/internal/ads/H4;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v2
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/I4; {:try_start_1 .. :try_end_1} :catch_0

    .line 1108
    goto :goto_7

    .line 1109
    :goto_6
    const-string v3, ""

    .line 1110
    .line 1111
    invoke-static {v3, v0}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1112
    .line 1113
    .line 1114
    :goto_7
    const-string v0, "ms"

    .line 1115
    .line 1116
    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v0

    .line 1120
    if-eqz v0, :cond_f

    .line 1121
    .line 1122
    return-object v2

    .line 1123
    :cond_f
    new-instance v0, Ljava/lang/Exception;

    .line 1124
    .line 1125
    const-string v2, "Failed to append spam signals to click url."

    .line 1126
    .line 1127
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1128
    .line 1129
    .line 1130
    throw v0

    .line 1131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
