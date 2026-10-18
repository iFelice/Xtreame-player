.class public final synthetic Lv3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/RB;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Tm;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lv3/c;->a:I

    .line 3
    iput-object p1, p0, Lv3/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lv3/c;->d:Ljava/lang/Object;

    iput-object p3, p0, Lv3/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lv3/c;->a:I

    iput-object p1, p0, Lv3/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lv3/c;->c:Ljava/lang/Object;

    iput-object p3, p0, Lv3/c;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)LD4/b;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lv3/c;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x3

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    iget-object v6, v1, Lv3/c;->d:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v7, v1, Lv3/c;->c:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v8, v1, Lv3/c;->b:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast v8, Lcom/google/android/gms/internal/ads/Yq;

    .line 19
    .line 20
    check-cast v7, Lcom/google/android/gms/internal/ads/Tv;

    .line 21
    .line 22
    check-cast v6, Lcom/google/android/gms/internal/ads/Ov;

    .line 23
    .line 24
    move-object/from16 v0, p1

    .line 25
    .line 26
    check-cast v0, Lorg/json/JSONArray;

    .line 27
    .line 28
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    new-instance v0, Lcom/google/android/gms/internal/ads/Bo;

    .line 38
    .line 39
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/Bo;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :cond_0
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/Tv;->a:Lcom/google/android/gms/internal/ads/Xu;

    .line 49
    .line 50
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Lcom/google/android/gms/internal/ads/Yv;

    .line 53
    .line 54
    iget v2, v2, Lcom/google/android/gms/internal/ads/Yv;->k:I

    .line 55
    .line 56
    if-le v2, v4, :cond_4

    .line 57
    .line 58
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->X1:Lcom/google/android/gms/internal/ads/J7;

    .line 63
    .line 64
    sget-object v9, Ll3/q;->d:Ll3/q;

    .line 65
    .line 66
    iget-object v9, v9, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 67
    .line 68
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_1

    .line 79
    .line 80
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    const-string v9, "nsl"

    .line 85
    .line 86
    iget-object v10, v8, Lcom/google/android/gms/internal/ads/Yq;->f:Lcom/google/android/gms/internal/ads/Cn;

    .line 87
    .line 88
    invoke-virtual {v10, v9, v4}, Lcom/google/android/gms/internal/ads/Cn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/Tv;->a:Lcom/google/android/gms/internal/ads/Xu;

    .line 92
    .line 93
    iget-object v9, v4, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v9, Lcom/google/android/gms/internal/ads/Yv;

    .line 96
    .line 97
    iget v9, v9, Lcom/google/android/gms/internal/ads/Yv;->k:I

    .line 98
    .line 99
    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    iget-object v10, v8, Lcom/google/android/gms/internal/ads/Yq;->d:Lcom/google/android/gms/internal/ads/hw;

    .line 104
    .line 105
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/hw;->c(I)V

    .line 106
    .line 107
    .line 108
    new-instance v9, Ljava/util/ArrayList;

    .line 109
    .line 110
    iget-object v10, v4, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v10, Lcom/google/android/gms/internal/ads/Yv;

    .line 113
    .line 114
    iget v10, v10, Lcom/google/android/gms/internal/ads/Yv;->k:I

    .line 115
    .line 116
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    .line 118
    .line 119
    :goto_0
    iget-object v10, v4, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v10, Lcom/google/android/gms/internal/ads/Yv;

    .line 122
    .line 123
    iget v10, v10, Lcom/google/android/gms/internal/ads/Yv;->k:I

    .line 124
    .line 125
    if-ge v5, v10, :cond_3

    .line 126
    .line 127
    if-ge v5, v2, :cond_2

    .line 128
    .line 129
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    invoke-virtual {v8, v7, v6, v10}, Lcom/google/android/gms/internal/ads/Yq;->c(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/WB;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_2
    new-instance v10, Lcom/google/android/gms/internal/ads/Bo;

    .line 142
    .line 143
    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/ads/Bo;-><init>(I)V

    .line 144
    .line 145
    .line 146
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 147
    .line 148
    .line 149
    move-result-object v10

    .line 150
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_3
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    goto :goto_2

    .line 161
    :cond_4
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v8, v7, v6, v0}, Lcom/google/android/gms/internal/ads/Yq;->c(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/WB;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    new-instance v2, Lcom/google/android/gms/internal/ads/u1;

    .line 170
    .line 171
    const/16 v3, 0x9

    .line 172
    .line 173
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/u1;-><init>(I)V

    .line 174
    .line 175
    .line 176
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Yq;->b:Lcom/google/android/gms/internal/ads/jC;

    .line 177
    .line 178
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/Cw;->b2(LD4/b;Lcom/google/android/gms/internal/ads/vz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/KB;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    :goto_2
    return-object v0

    .line 183
    :pswitch_0
    check-cast v8, Lcom/google/android/gms/internal/ads/Hq;

    .line 184
    .line 185
    check-cast v7, Landroid/view/View;

    .line 186
    .line 187
    check-cast v6, Lcom/google/android/gms/internal/ads/Ov;

    .line 188
    .line 189
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/Hq;->a:Landroid/content/Context;

    .line 190
    .line 191
    invoke-static {v0, v7, v6}, Lcom/google/android/gms/internal/ads/mi;->a(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/internal/ads/Ov;)Lcom/google/android/gms/internal/ads/mi;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    return-object v0

    .line 200
    :pswitch_1
    check-cast v8, Lcom/google/android/gms/internal/ads/Aq;

    .line 201
    .line 202
    check-cast v7, Landroid/view/View;

    .line 203
    .line 204
    check-cast v6, Lcom/google/android/gms/internal/ads/Ov;

    .line 205
    .line 206
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/Aq;->b:Landroid/content/Context;

    .line 207
    .line 208
    invoke-static {v0, v7, v6}, Lcom/google/android/gms/internal/ads/mi;->a(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/internal/ads/Ov;)Lcom/google/android/gms/internal/ads/mi;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    return-object v0

    .line 217
    :pswitch_2
    check-cast v8, Lcom/google/android/gms/internal/ads/Eq;

    .line 218
    .line 219
    check-cast v7, Lcom/google/android/gms/internal/ads/Tv;

    .line 220
    .line 221
    check-cast v6, Lcom/google/android/gms/internal/ads/Ov;

    .line 222
    .line 223
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->W1:Lcom/google/android/gms/internal/ads/J7;

    .line 227
    .line 228
    sget-object v9, Ll3/q;->d:Ll3/q;

    .line 229
    .line 230
    iget-object v10, v9, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 231
    .line 232
    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v10

    .line 236
    check-cast v10, Ljava/lang/Boolean;

    .line 237
    .line 238
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 239
    .line 240
    .line 241
    move-result v10

    .line 242
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/Eq;->g:Lcom/google/android/gms/internal/ads/Cn;

    .line 243
    .line 244
    if-eqz v10, :cond_5

    .line 245
    .line 246
    iget-object v10, v11, Lcom/google/android/gms/internal/ads/Cn;->c:Landroid/os/Bundle;

    .line 247
    .line 248
    sget-object v12, Lk3/l;->A:Lk3/l;

    .line 249
    .line 250
    iget-object v12, v12, Lk3/l;->j:LP3/b;

    .line 251
    .line 252
    const-string v13, "rendering-webview-creation-start"

    .line 253
    .line 254
    invoke-static {v12, v10, v13}, Lt/a;->g(LP3/b;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    :cond_5
    iget-object v10, v6, Lcom/google/android/gms/internal/ads/Ov;->u:Ljava/util/List;

    .line 258
    .line 259
    iget-object v12, v8, Lcom/google/android/gms/internal/ads/Eq;->b:Landroid/content/Context;

    .line 260
    .line 261
    invoke-static {v12, v10}, LU4/a;->l(Landroid/content/Context;Ljava/util/List;)Ll3/d1;

    .line 262
    .line 263
    .line 264
    move-result-object v10

    .line 265
    iget-object v13, v7, Lcom/google/android/gms/internal/ads/Tv;->b:Lcom/google/android/gms/internal/ads/xc;

    .line 266
    .line 267
    iget-object v13, v13, Lcom/google/android/gms/internal/ads/xc;->I:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v13, Lcom/google/android/gms/internal/ads/Qv;

    .line 270
    .line 271
    iget-object v14, v8, Lcom/google/android/gms/internal/ads/Eq;->c:Lcom/google/android/gms/internal/ads/hn;

    .line 272
    .line 273
    invoke-virtual {v14, v10, v6, v13}, Lcom/google/android/gms/internal/ads/hn;->a(Ll3/d1;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/Qv;)Lcom/google/android/gms/internal/ads/Ef;

    .line 274
    .line 275
    .line 276
    move-result-object v13

    .line 277
    iget-boolean v14, v6, Lcom/google/android/gms/internal/ads/Ov;->W:Z

    .line 278
    .line 279
    invoke-interface {v13, v14}, Lcom/google/android/gms/internal/ads/Ef;->d0(Z)V

    .line 280
    .line 281
    .line 282
    sget-object v14, Lcom/google/android/gms/internal/ads/Q7;->i7:Lcom/google/android/gms/internal/ads/J7;

    .line 283
    .line 284
    iget-object v9, v9, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 285
    .line 286
    invoke-virtual {v9, v14}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v14

    .line 290
    check-cast v14, Ljava/lang/Boolean;

    .line 291
    .line 292
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 293
    .line 294
    .line 295
    move-result v14

    .line 296
    if-eqz v14, :cond_6

    .line 297
    .line 298
    iget-boolean v14, v6, Lcom/google/android/gms/internal/ads/Ov;->g0:Z

    .line 299
    .line 300
    if-eqz v14, :cond_6

    .line 301
    .line 302
    invoke-interface {v13}, Lcom/google/android/gms/internal/ads/Ef;->j()Landroid/view/View;

    .line 303
    .line 304
    .line 305
    move-result-object v14

    .line 306
    invoke-static {v12, v14, v6}, Lcom/google/android/gms/internal/ads/mi;->a(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/internal/ads/Ov;)Lcom/google/android/gms/internal/ads/mi;

    .line 307
    .line 308
    .line 309
    move-result-object v12

    .line 310
    goto :goto_3

    .line 311
    :cond_6
    invoke-interface {v13}, Lcom/google/android/gms/internal/ads/Ef;->j()Landroid/view/View;

    .line 312
    .line 313
    .line 314
    move-result-object v14

    .line 315
    new-instance v15, Lcom/google/android/gms/internal/ads/kn;

    .line 316
    .line 317
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Eq;->f:Lcom/google/android/gms/internal/ads/vz;

    .line 318
    .line 319
    invoke-interface {v3, v6}, Lcom/google/android/gms/internal/ads/vz;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    check-cast v3, Lo3/i;

    .line 324
    .line 325
    invoke-direct {v15, v12, v14, v3}, Lcom/google/android/gms/internal/ads/kn;-><init>(Landroid/content/Context;Landroid/view/View;Lo3/i;)V

    .line 326
    .line 327
    .line 328
    move-object v12, v15

    .line 329
    :goto_3
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    check-cast v3, Ljava/lang/Boolean;

    .line 334
    .line 335
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 336
    .line 337
    .line 338
    move-result v3

    .line 339
    if-eqz v3, :cond_7

    .line 340
    .line 341
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/Cn;->c:Landroid/os/Bundle;

    .line 342
    .line 343
    sget-object v14, Lk3/l;->A:Lk3/l;

    .line 344
    .line 345
    iget-object v14, v14, Lk3/l;->j:LP3/b;

    .line 346
    .line 347
    const-string v15, "rendering-webview-creation-end"

    .line 348
    .line 349
    invoke-static {v14, v3, v15}, Lt/a;->g(LP3/b;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    :cond_7
    new-instance v3, La3/b;

    .line 353
    .line 354
    invoke-direct {v3, v7, v6, v2}, La3/b;-><init>(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    new-instance v7, Lcom/google/android/gms/internal/ads/xc;

    .line 358
    .line 359
    new-instance v14, Lcom/google/android/gms/internal/pal/r1;

    .line 360
    .line 361
    invoke-direct {v14, v13, v5}, Lcom/google/android/gms/internal/pal/r1;-><init>(Ljava/lang/Object;I)V

    .line 362
    .line 363
    .line 364
    iget-boolean v15, v10, Ll3/d1;->O:Z

    .line 365
    .line 366
    if-eqz v15, :cond_8

    .line 367
    .line 368
    new-instance v10, Lcom/google/android/gms/internal/ads/Pv;

    .line 369
    .line 370
    const/4 v15, -0x3

    .line 371
    invoke-direct {v10, v4, v15, v5}, Lcom/google/android/gms/internal/ads/Pv;-><init>(ZII)V

    .line 372
    .line 373
    .line 374
    goto :goto_4

    .line 375
    :cond_8
    new-instance v15, Lcom/google/android/gms/internal/ads/Pv;

    .line 376
    .line 377
    iget v4, v10, Ll3/d1;->K:I

    .line 378
    .line 379
    iget v10, v10, Ll3/d1;->H:I

    .line 380
    .line 381
    invoke-direct {v15, v5, v4, v10}, Lcom/google/android/gms/internal/ads/Pv;-><init>(ZII)V

    .line 382
    .line 383
    .line 384
    move-object v10, v15

    .line 385
    :goto_4
    invoke-direct {v7, v12, v13, v14, v10}, Lcom/google/android/gms/internal/ads/xc;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/Ef;Lcom/google/android/gms/internal/ads/vi;Lcom/google/android/gms/internal/ads/Pv;)V

    .line 386
    .line 387
    .line 388
    iget-object v4, v8, Lcom/google/android/gms/internal/ads/Eq;->a:Lcom/google/android/gms/internal/ads/di;

    .line 389
    .line 390
    check-cast v4, Lcom/google/android/gms/internal/ads/Ig;

    .line 391
    .line 392
    new-instance v10, Lcom/google/android/gms/internal/ads/Gg;

    .line 393
    .line 394
    iget-object v12, v4, Lcom/google/android/gms/internal/ads/Ig;->e:Lcom/google/android/gms/internal/ads/Ig;

    .line 395
    .line 396
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Ig;->d:Lcom/google/android/gms/internal/ads/Bg;

    .line 397
    .line 398
    invoke-direct {v10, v4, v12, v3, v7}, Lcom/google/android/gms/internal/ads/Gg;-><init>(Lcom/google/android/gms/internal/ads/Bg;Lcom/google/android/gms/internal/ads/Ig;La3/b;Lcom/google/android/gms/internal/ads/xc;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    check-cast v0, Ljava/lang/Boolean;

    .line 406
    .line 407
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    if-eqz v0, :cond_9

    .line 412
    .line 413
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/Cn;->c:Landroid/os/Bundle;

    .line 414
    .line 415
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 416
    .line 417
    iget-object v3, v3, Lk3/l;->j:LP3/b;

    .line 418
    .line 419
    const-string v4, "rendering-ad-component-creation-end"

    .line 420
    .line 421
    invoke-static {v3, v0, v4}, Lt/a;->g(LP3/b;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    :cond_9
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/Gg;->u0:Lcom/google/android/gms/internal/ads/MJ;

    .line 425
    .line 426
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    check-cast v3, Lcom/google/android/gms/internal/ads/gn;

    .line 431
    .line 432
    iget-object v4, v11, Lcom/google/android/gms/internal/ads/Cn;->c:Landroid/os/Bundle;

    .line 433
    .line 434
    invoke-virtual {v3, v13, v5, v2, v4}, Lcom/google/android/gms/internal/ads/gn;->a(Lcom/google/android/gms/internal/ads/Ef;ZLcom/google/android/gms/internal/ads/P9;Landroid/os/Bundle;)V

    .line 435
    .line 436
    .line 437
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/Gg;->i0:Lcom/google/android/gms/internal/ads/MJ;

    .line 438
    .line 439
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    check-cast v2, Lcom/google/android/gms/internal/ads/zj;

    .line 444
    .line 445
    new-instance v3, Lcom/google/android/gms/internal/ads/xq;

    .line 446
    .line 447
    const/4 v4, 0x1

    .line 448
    invoke-direct {v3, v13, v4}, Lcom/google/android/gms/internal/ads/xq;-><init>(Lcom/google/android/gms/internal/ads/Ef;I)V

    .line 449
    .line 450
    .line 451
    sget-object v4, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 452
    .line 453
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/mI;->Y0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 454
    .line 455
    .line 456
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/Ov;->s:Lcom/google/android/gms/internal/ads/Rv;

    .line 457
    .line 458
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/Rv;->a:Ljava/lang/String;

    .line 459
    .line 460
    sget-object v5, Lcom/google/android/gms/internal/ads/Q7;->J4:Lcom/google/android/gms/internal/ads/J7;

    .line 461
    .line 462
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v5

    .line 466
    check-cast v5, Ljava/lang/Boolean;

    .line 467
    .line 468
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 469
    .line 470
    .line 471
    move-result v5

    .line 472
    if-eqz v5, :cond_a

    .line 473
    .line 474
    iget-object v5, v10, Lcom/google/android/gms/internal/ads/Gg;->g0:Lcom/google/android/gms/internal/ads/MJ;

    .line 475
    .line 476
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v5

    .line 480
    check-cast v5, Lcom/google/android/gms/internal/ads/lq;

    .line 481
    .line 482
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/lq;->c()Z

    .line 483
    .line 484
    .line 485
    move-result v5

    .line 486
    if-eqz v5, :cond_a

    .line 487
    .line 488
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Zf;->a(Lcom/google/android/gms/internal/ads/Ov;)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v5

    .line 492
    filled-new-array {v5}, [Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v5

    .line 496
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/Zf;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v3

    .line 500
    :cond_a
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    check-cast v0, Lcom/google/android/gms/internal/ads/gn;

    .line 505
    .line 506
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/Rv;->b:Ljava/lang/String;

    .line 507
    .line 508
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/Cn;->c:Landroid/os/Bundle;

    .line 509
    .line 510
    invoke-static {v13, v0, v3, v2}, Lcom/google/android/gms/internal/ads/gn;->b(Lcom/google/android/gms/internal/ads/Ef;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/te;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    iget-boolean v2, v6, Lcom/google/android/gms/internal/ads/Ov;->M:Z

    .line 515
    .line 516
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Eq;->e:Ljava/util/concurrent/Executor;

    .line 517
    .line 518
    if-eqz v2, :cond_b

    .line 519
    .line 520
    new-instance v2, Lcom/google/android/gms/internal/ads/Nf;

    .line 521
    .line 522
    const/4 v5, 0x6

    .line 523
    invoke-direct {v2, v13, v5}, Lcom/google/android/gms/internal/ads/Nf;-><init>(Lcom/google/android/gms/internal/ads/Ef;I)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/te;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 527
    .line 528
    .line 529
    :cond_b
    new-instance v2, Lcom/google/android/gms/internal/ads/co;

    .line 530
    .line 531
    const/4 v5, 0x5

    .line 532
    invoke-direct {v2, v5, v8, v13}, Lcom/google/android/gms/internal/ads/co;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/te;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 536
    .line 537
    .line 538
    new-instance v2, Lcom/google/android/gms/internal/ads/Sc;

    .line 539
    .line 540
    const/4 v3, 0x3

    .line 541
    invoke-direct {v2, v10, v3}, Lcom/google/android/gms/internal/ads/Sc;-><init>(Ljava/lang/Object;I)V

    .line 542
    .line 543
    .line 544
    invoke-static {v0, v2, v4}, Lcom/google/android/gms/internal/ads/Cw;->b2(LD4/b;Lcom/google/android/gms/internal/ads/vz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/KB;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    return-object v0

    .line 549
    :pswitch_3
    check-cast v8, Lcom/google/android/gms/internal/ads/Tm;

    .line 550
    .line 551
    check-cast v6, Ljava/lang/String;

    .line 552
    .line 553
    check-cast v7, Lorg/json/JSONObject;

    .line 554
    .line 555
    move-object/from16 v0, p1

    .line 556
    .line 557
    check-cast v0, Lcom/google/android/gms/internal/ads/Ef;

    .line 558
    .line 559
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Tm;->h:Lcom/google/android/gms/internal/ads/Vl;

    .line 560
    .line 561
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 562
    .line 563
    .line 564
    new-instance v3, Lcom/google/android/gms/internal/ads/te;

    .line 565
    .line 566
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/te;-><init>()V

    .line 567
    .line 568
    .line 569
    sget-object v4, Lk3/l;->A:Lk3/l;

    .line 570
    .line 571
    iget-object v4, v4, Lk3/l;->c:Lo3/O;

    .line 572
    .line 573
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 574
    .line 575
    .line 576
    move-result-object v4

    .line 577
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v4

    .line 581
    new-instance v8, Lcom/google/android/gms/internal/ads/V9;

    .line 582
    .line 583
    invoke-direct {v8, v3, v5}, Lcom/google/android/gms/internal/ads/V9;-><init>(Lcom/google/android/gms/internal/ads/te;I)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v2, v4, v8}, Lcom/google/android/gms/internal/ads/Vl;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/W9;)V

    .line 587
    .line 588
    .line 589
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 590
    .line 591
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 592
    .line 593
    .line 594
    const-string v5, "id"

    .line 595
    .line 596
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 597
    .line 598
    .line 599
    const-string v4, "args"

    .line 600
    .line 601
    invoke-virtual {v2, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 602
    .line 603
    .line 604
    invoke-interface {v0, v2, v6}, Lcom/google/android/gms/internal/ads/ya;->g(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    .line 606
    .line 607
    goto :goto_5

    .line 608
    :catch_0
    move-exception v0

    .line 609
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/te;->c(Ljava/lang/Throwable;)Z

    .line 610
    .line 611
    .line 612
    :goto_5
    return-object v3

    .line 613
    :pswitch_4
    check-cast v8, Lg0/a;

    .line 614
    .line 615
    check-cast v7, Lcom/google/android/gms/internal/ads/dC;

    .line 616
    .line 617
    check-cast v6, LD4/b;

    .line 618
    .line 619
    move-object/from16 v0, p1

    .line 620
    .line 621
    check-cast v0, Lcom/google/android/gms/internal/ads/xi;

    .line 622
    .line 623
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 624
    .line 625
    .line 626
    if-eqz v0, :cond_c

    .line 627
    .line 628
    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/ads/dC;->zzb(Ljava/lang/Object;)V

    .line 629
    .line 630
    .line 631
    :cond_c
    sget-object v0, Lcom/google/android/gms/internal/ads/D8;->a:Lcom/google/android/gms/internal/ads/f8;

    .line 632
    .line 633
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    check-cast v0, Ljava/lang/Long;

    .line 638
    .line 639
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 640
    .line 641
    .line 642
    move-result-wide v2

    .line 643
    iget-object v0, v8, Lg0/a;->c:Ljava/lang/Object;

    .line 644
    .line 645
    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 646
    .line 647
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 648
    .line 649
    invoke-static {v6, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ads/Cw;->e2(LD4/b;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LD4/b;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    return-object v0

    .line 654
    :pswitch_5
    check-cast v8, Lv3/j;

    .line 655
    .line 656
    check-cast v7, [Lcom/google/android/gms/internal/ads/Tm;

    .line 657
    .line 658
    check-cast v6, Ljava/lang/String;

    .line 659
    .line 660
    move-object/from16 v0, p1

    .line 661
    .line 662
    check-cast v0, Lcom/google/android/gms/internal/ads/Tm;

    .line 663
    .line 664
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 665
    .line 666
    .line 667
    aput-object v0, v7, v5

    .line 668
    .line 669
    iget-object v3, v8, Lv3/j;->I:Landroid/content/Context;

    .line 670
    .line 671
    iget-object v4, v8, Lv3/j;->O:Lcom/google/android/gms/internal/ads/yc;

    .line 672
    .line 673
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/yc;->H:Ljava/util/Map;

    .line 674
    .line 675
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/yc;->G:Landroid/view/View;

    .line 676
    .line 677
    invoke-static {v3, v5, v5, v4, v2}, LS3/e;->C(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;

    .line 678
    .line 679
    .line 680
    move-result-object v3

    .line 681
    iget-object v4, v8, Lv3/j;->I:Landroid/content/Context;

    .line 682
    .line 683
    iget-object v5, v8, Lv3/j;->O:Lcom/google/android/gms/internal/ads/yc;

    .line 684
    .line 685
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/yc;->G:Landroid/view/View;

    .line 686
    .line 687
    invoke-static {v4, v5}, LS3/e;->F(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    .line 688
    .line 689
    .line 690
    move-result-object v4

    .line 691
    iget-object v5, v8, Lv3/j;->O:Lcom/google/android/gms/internal/ads/yc;

    .line 692
    .line 693
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/yc;->G:Landroid/view/View;

    .line 694
    .line 695
    invoke-static {v5}, LS3/e;->E(Landroid/view/View;)Lorg/json/JSONObject;

    .line 696
    .line 697
    .line 698
    move-result-object v5

    .line 699
    iget-object v7, v8, Lv3/j;->I:Landroid/content/Context;

    .line 700
    .line 701
    iget-object v9, v8, Lv3/j;->O:Lcom/google/android/gms/internal/ads/yc;

    .line 702
    .line 703
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/yc;->G:Landroid/view/View;

    .line 704
    .line 705
    invoke-static {v7, v9}, LS3/e;->D(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    .line 706
    .line 707
    .line 708
    move-result-object v7

    .line 709
    new-instance v9, Lorg/json/JSONObject;

    .line 710
    .line 711
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 712
    .line 713
    .line 714
    const-string v10, "asset_view_signal"

    .line 715
    .line 716
    invoke-virtual {v9, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 717
    .line 718
    .line 719
    const-string v3, "ad_view_signal"

    .line 720
    .line 721
    invoke-virtual {v9, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 722
    .line 723
    .line 724
    const-string v3, "scroll_view_signal"

    .line 725
    .line 726
    invoke-virtual {v9, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 727
    .line 728
    .line 729
    const-string v3, "lock_screen_signal"

    .line 730
    .line 731
    invoke-virtual {v9, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 732
    .line 733
    .line 734
    const-string v3, "google.afma.nativeAds.getPublisherCustomRenderedClickSignals"

    .line 735
    .line 736
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 737
    .line 738
    .line 739
    move-result v3

    .line 740
    if-eqz v3, :cond_d

    .line 741
    .line 742
    iget-object v3, v8, Lv3/j;->I:Landroid/content/Context;

    .line 743
    .line 744
    iget-object v4, v8, Lv3/j;->Q:Landroid/graphics/Point;

    .line 745
    .line 746
    iget-object v5, v8, Lv3/j;->P:Landroid/graphics/Point;

    .line 747
    .line 748
    invoke-static {v2, v3, v4, v5}, LS3/e;->B(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;

    .line 749
    .line 750
    .line 751
    move-result-object v2

    .line 752
    const-string v3, "click_signal"

    .line 753
    .line 754
    invoke-virtual {v9, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 755
    .line 756
    .line 757
    :cond_d
    invoke-virtual {v0, v9, v6}, Lcom/google/android/gms/internal/ads/Tm;->a(Lorg/json/JSONObject;Ljava/lang/String;)LD4/b;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    return-object v0

    .line 762
    nop

    .line 763
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
