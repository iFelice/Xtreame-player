.class public final LY/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Z

.field public final I:Ljava/lang/Object;

.field public final synthetic J:Ljava/lang/Object;

.field public final synthetic K:Ljava/lang/Object;

.field public final synthetic L:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LY/i;LY/d0;LY/d0;ZLr/f;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, LY/f;->G:I

    .line 18
    iput-object p1, p0, LY/f;->L:Ljava/lang/Object;

    iput-object p2, p0, LY/f;->I:Ljava/lang/Object;

    iput-object p3, p0, LY/f;->J:Ljava/lang/Object;

    iput-boolean p4, p0, LY/f;->H:Z

    iput-object p5, p0, LY/f;->K:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc4/K0;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, LY/f;->G:I

    .line 3
    iput-object p2, p0, LY/f;->I:Ljava/lang/Object;

    iput-object p3, p0, LY/f;->J:Ljava/lang/Object;

    iput-object p4, p0, LY/f;->K:Ljava/lang/Object;

    iput-boolean p5, p0, LY/f;->H:Z

    iput-object p1, p0, LY/f;->L:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc4/d1;Lc4/J1;ZLc4/t;Landroid/os/Bundle;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 5
    iput v0, p0, LY/f;->G:I

    .line 6
    iput-object p2, p0, LY/f;->I:Ljava/lang/Object;

    iput-boolean p3, p0, LY/f;->H:Z

    iput-object p4, p0, LY/f;->J:Ljava/lang/Object;

    iput-object p5, p0, LY/f;->K:Ljava/lang/Object;

    iput-object p1, p0, LY/f;->L:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/Q5;Lcom/google/android/gms/internal/ads/M5;Landroid/webkit/WebView;Z)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 14
    iput v0, p0, LY/f;->G:I

    .line 15
    iput-object p2, p0, LY/f;->J:Ljava/lang/Object;

    iput-object p3, p0, LY/f;->K:Ljava/lang/Object;

    iput-boolean p4, p0, LY/f;->H:Z

    iput-object p1, p0, LY/f;->L:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/ads/P5;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/P5;-><init>(LY/f;)V

    iput-object p1, p0, LY/f;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/l0;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 8
    iput v0, p0, LY/f;->G:I

    .line 9
    iput-boolean p2, p0, LY/f;->H:Z

    iput-object p3, p0, LY/f;->I:Ljava/lang/Object;

    iput-object p4, p0, LY/f;->J:Ljava/lang/Object;

    iput-object p5, p0, LY/f;->K:Ljava/lang/Object;

    iput-object p1, p0, LY/f;->L:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/M;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 11
    iput v0, p0, LY/f;->G:I

    .line 12
    iput-object p2, p0, LY/f;->I:Ljava/lang/Object;

    iput-object p3, p0, LY/f;->J:Ljava/lang/Object;

    iput-object p4, p0, LY/f;->K:Ljava/lang/Object;

    iput-boolean p5, p0, LY/f;->H:Z

    iput-object p1, p0, LY/f;->L:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, LY/f;->G:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    iget-boolean v4, v1, LY/f;->H:Z

    .line 8
    .line 9
    iget-object v5, v1, LY/f;->L:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v6, v1, LY/f;->J:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v7, v1, LY/f;->K:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v8, v1, LY/f;->I:Ljava/lang/Object;

    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    check-cast v5, Lc4/d1;

    .line 21
    .line 22
    iget-object v0, v5, Lc4/d1;->J:Lc4/G;

    .line 23
    .line 24
    const-string v3, "Failed to send default event parameters to service"

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    iget-object v0, v5, Lc1/d;->G:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lc4/l0;

    .line 31
    .line 32
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 33
    .line 34
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    iget-object v9, v5, Lc1/d;->G:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v9, Lc4/l0;

    .line 46
    .line 47
    iget-object v9, v9, Lc4/l0;->M:Lc4/h;

    .line 48
    .line 49
    sget-object v10, Lc4/E;->m1:Lc4/D;

    .line 50
    .line 51
    invoke-virtual {v9, v2, v10}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-eqz v9, :cond_2

    .line 56
    .line 57
    check-cast v8, Lc4/J1;

    .line 58
    .line 59
    invoke-static {v8}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    if-eqz v4, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move-object v2, v6

    .line 66
    check-cast v2, Lc4/t;

    .line 67
    .line 68
    :goto_0
    invoke-virtual {v5, v0, v2, v8}, Lc4/d1;->t(Lc4/G;LM3/a;Lc4/J1;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    :try_start_0
    check-cast v8, Lc4/J1;

    .line 73
    .line 74
    invoke-static {v8}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    check-cast v7, Landroid/os/Bundle;

    .line 78
    .line 79
    invoke-interface {v0, v7, v8}, Lc4/G;->b1(Landroid/os/Bundle;Lc4/J1;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Lc4/d1;->D()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    iget-object v2, v5, Lc1/d;->G:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v2, Lc4/l0;

    .line 90
    .line 91
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 92
    .line 93
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 94
    .line 95
    .line 96
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 97
    .line 98
    invoke-virtual {v2, v0, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :goto_1
    return-void

    .line 102
    :pswitch_0
    const-string v0, "gclid="

    .line 103
    .line 104
    check-cast v5, Lcom/google/android/gms/internal/measurement/l0;

    .line 105
    .line 106
    iget-object v3, v5, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v3, Lc4/K0;

    .line 109
    .line 110
    invoke-virtual {v3}, Lc4/z;->m()V

    .line 111
    .line 112
    .line 113
    check-cast v7, Ljava/lang/String;

    .line 114
    .line 115
    check-cast v8, Landroid/net/Uri;

    .line 116
    .line 117
    :try_start_1
    iget-object v9, v3, Lc1/d;->G:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v9, Lc4/l0;

    .line 120
    .line 121
    iget-object v10, v9, Lc4/l0;->R:Lc4/I1;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 122
    .line 123
    iget-object v11, v9, Lc4/l0;->O:Lc4/T;

    .line 124
    .line 125
    :try_start_2
    invoke-static {v10}, Lc4/l0;->i(Lc4/s0;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 126
    .line 127
    .line 128
    :try_start_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 129
    .line 130
    .line 131
    move-result v12
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 132
    const-string v13, "_cis"

    .line 133
    .line 134
    const-string v14, "Activity created with data \'referrer\' without required params"

    .line 135
    .line 136
    const-string v15, "utm_medium"

    .line 137
    .line 138
    const-string v2, "utm_source"

    .line 139
    .line 140
    const-string v1, "utm_campaign"

    .line 141
    .line 142
    move-object/from16 v16, v5

    .line 143
    .line 144
    const-string v5, "gclid"

    .line 145
    .line 146
    if-eqz v12, :cond_3

    .line 147
    .line 148
    :goto_2
    const/4 v10, 0x0

    .line 149
    goto :goto_4

    .line 150
    :cond_3
    :try_start_4
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result v12

    .line 154
    if-nez v12, :cond_4

    .line 155
    .line 156
    const-string v12, "gbraid"

    .line 157
    .line 158
    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 159
    .line 160
    .line 161
    move-result v12

    .line 162
    if-nez v12, :cond_4

    .line 163
    .line 164
    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 165
    .line 166
    .line 167
    move-result v12

    .line 168
    if-nez v12, :cond_4

    .line 169
    .line 170
    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 171
    .line 172
    .line 173
    move-result v12

    .line 174
    if-nez v12, :cond_4

    .line 175
    .line 176
    invoke-virtual {v7, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result v12

    .line 180
    if-nez v12, :cond_4

    .line 181
    .line 182
    const-string v12, "utm_id"

    .line 183
    .line 184
    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 185
    .line 186
    .line 187
    move-result v12

    .line 188
    if-nez v12, :cond_4

    .line 189
    .line 190
    const-string v12, "dclid"

    .line 191
    .line 192
    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 193
    .line 194
    .line 195
    move-result v12

    .line 196
    if-nez v12, :cond_4

    .line 197
    .line 198
    const-string v12, "srsltid"

    .line 199
    .line 200
    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 201
    .line 202
    .line 203
    move-result v12

    .line 204
    if-nez v12, :cond_4

    .line 205
    .line 206
    const-string v12, "sfmc_id"

    .line 207
    .line 208
    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 209
    .line 210
    .line 211
    move-result v12

    .line 212
    if-nez v12, :cond_4

    .line 213
    .line 214
    iget-object v10, v10, Lc1/d;->G:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v10, Lc4/l0;

    .line 217
    .line 218
    iget-object v10, v10, Lc4/l0;->O:Lc4/T;

    .line 219
    .line 220
    invoke-static {v10}, Lc4/l0;->k(Lc4/s0;)V

    .line 221
    .line 222
    .line 223
    iget-object v10, v10, Lc4/T;->S:Lc4/Q;

    .line 224
    .line 225
    invoke-virtual {v10, v14}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    goto :goto_2

    .line 229
    :catch_1
    move-exception v0

    .line 230
    :goto_3
    move-object/from16 v5, v16

    .line 231
    .line 232
    goto/16 :goto_9

    .line 233
    .line 234
    :cond_4
    const-string v12, "https://google.com/search?"

    .line 235
    .line 236
    invoke-virtual {v12, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v12

    .line 240
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 241
    .line 242
    .line 243
    move-result-object v12

    .line 244
    invoke-virtual {v10, v12}, Lc4/I1;->z0(Landroid/net/Uri;)Landroid/os/Bundle;

    .line 245
    .line 246
    .line 247
    move-result-object v10

    .line 248
    if-eqz v10, :cond_5

    .line 249
    .line 250
    const-string v12, "referrer"

    .line 251
    .line 252
    invoke-virtual {v10, v13, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 253
    .line 254
    .line 255
    :cond_5
    :goto_4
    check-cast v6, Ljava/lang/String;

    .line 256
    .line 257
    const-string v12, "_cmp"

    .line 258
    .line 259
    move-object/from16 v17, v14

    .line 260
    .line 261
    iget-object v14, v3, Lc4/K0;->X:Lc4/k0;

    .line 262
    .line 263
    if-eqz v4, :cond_7

    .line 264
    .line 265
    :try_start_5
    iget-object v4, v9, Lc4/l0;->R:Lc4/I1;

    .line 266
    .line 267
    invoke-static {v4}, Lc4/l0;->i(Lc4/s0;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v4, v8}, Lc4/I1;->z0(Landroid/net/Uri;)Landroid/os/Bundle;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    if-eqz v4, :cond_7

    .line 275
    .line 276
    const-string v8, "intent"

    .line 277
    .line 278
    invoke-virtual {v4, v13, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    move-result v8

    .line 285
    if-nez v8, :cond_6

    .line 286
    .line 287
    if-eqz v10, :cond_6

    .line 288
    .line 289
    invoke-virtual {v10, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 290
    .line 291
    .line 292
    move-result v8

    .line 293
    if-eqz v8, :cond_6

    .line 294
    .line 295
    const-string v8, "_cer"

    .line 296
    .line 297
    invoke-virtual {v10, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v13

    .line 301
    move-object/from16 v18, v15

    .line 302
    .line 303
    new-instance v15, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-virtual {v4, v8, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    goto :goto_5

    .line 319
    :cond_6
    move-object/from16 v18, v15

    .line 320
    .line 321
    :goto_5
    invoke-virtual {v3, v6, v12, v4}, Lc4/K0;->y(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v14, v6, v4}, Lc4/k0;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 325
    .line 326
    .line 327
    goto :goto_6

    .line 328
    :cond_7
    move-object/from16 v18, v15

    .line 329
    .line 330
    :goto_6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-eqz v0, :cond_8

    .line 335
    .line 336
    goto/16 :goto_a

    .line 337
    .line 338
    :cond_8
    invoke-static {v11}, Lc4/l0;->k(Lc4/s0;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 339
    .line 340
    .line 341
    iget-object v0, v11, Lc4/T;->S:Lc4/Q;

    .line 342
    .line 343
    :try_start_6
    const-string v4, "Activity created with referrer"

    .line 344
    .line 345
    invoke-virtual {v0, v7, v4}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    iget-object v4, v9, Lc4/l0;->M:Lc4/h;

    .line 349
    .line 350
    sget-object v8, Lc4/E;->G0:Lc4/D;

    .line 351
    .line 352
    const/4 v9, 0x0

    .line 353
    invoke-virtual {v4, v9, v8}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 354
    .line 355
    .line 356
    move-result v4
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 357
    const/4 v8, 0x1

    .line 358
    const-string v9, "_ldl"

    .line 359
    .line 360
    const-string v13, "auto"

    .line 361
    .line 362
    if-eqz v4, :cond_a

    .line 363
    .line 364
    if-eqz v10, :cond_9

    .line 365
    .line 366
    :try_start_7
    invoke-virtual {v3, v6, v12, v10}, Lc4/K0;->y(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v14, v6, v10}, Lc4/k0;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 370
    .line 371
    .line 372
    :goto_7
    const/4 v0, 0x0

    .line 373
    goto :goto_8

    .line 374
    :cond_9
    invoke-static {v11}, Lc4/l0;->k(Lc4/s0;)V

    .line 375
    .line 376
    .line 377
    const-string v1, "Referrer does not contain valid parameters"

    .line 378
    .line 379
    invoke-virtual {v0, v7, v1}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    goto :goto_7

    .line 383
    :goto_8
    invoke-virtual {v3, v13, v9, v0, v8}, Lc4/K0;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 384
    .line 385
    .line 386
    goto :goto_a

    .line 387
    :cond_a
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 388
    .line 389
    .line 390
    move-result v4

    .line 391
    if-eqz v4, :cond_c

    .line 392
    .line 393
    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    if-nez v1, :cond_b

    .line 398
    .line 399
    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    if-nez v1, :cond_b

    .line 404
    .line 405
    move-object/from16 v1, v18

    .line 406
    .line 407
    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    if-nez v1, :cond_b

    .line 412
    .line 413
    const-string v1, "utm_term"

    .line 414
    .line 415
    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    if-nez v1, :cond_b

    .line 420
    .line 421
    const-string v1, "utm_content"

    .line 422
    .line 423
    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    if-eqz v1, :cond_c

    .line 428
    .line 429
    :cond_b
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    if-nez v0, :cond_d

    .line 434
    .line 435
    invoke-virtual {v3, v13, v9, v7, v8}, Lc4/K0;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 436
    .line 437
    .line 438
    goto :goto_a

    .line 439
    :cond_c
    invoke-static {v11}, Lc4/l0;->k(Lc4/s0;)V

    .line 440
    .line 441
    .line 442
    move-object/from16 v1, v17

    .line 443
    .line 444
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 445
    .line 446
    .line 447
    goto :goto_a

    .line 448
    :catch_2
    move-exception v0

    .line 449
    move-object/from16 v16, v5

    .line 450
    .line 451
    goto :goto_9

    .line 452
    :catch_3
    move-exception v0

    .line 453
    move-object/from16 v16, v5

    .line 454
    .line 455
    goto/16 :goto_3

    .line 456
    .line 457
    :goto_9
    iget-object v1, v5, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    .line 458
    .line 459
    check-cast v1, Lc4/K0;

    .line 460
    .line 461
    iget-object v1, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 462
    .line 463
    check-cast v1, Lc4/l0;

    .line 464
    .line 465
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 466
    .line 467
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 468
    .line 469
    .line 470
    const-string v2, "Throwable caught in handleReferrerForOnActivityCreated"

    .line 471
    .line 472
    iget-object v1, v1, Lc4/T;->L:Lc4/Q;

    .line 473
    .line 474
    invoke-virtual {v1, v0, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    :cond_d
    :goto_a
    return-void

    .line 478
    :pswitch_1
    check-cast v6, Ljava/lang/String;

    .line 479
    .line 480
    check-cast v7, Ljava/lang/String;

    .line 481
    .line 482
    check-cast v5, Lc4/K0;

    .line 483
    .line 484
    iget-object v0, v5, Lc1/d;->G:Ljava/lang/Object;

    .line 485
    .line 486
    check-cast v0, Lc4/l0;

    .line 487
    .line 488
    invoke-virtual {v0}, Lc4/l0;->r()Lc4/d1;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    move-object v5, v8

    .line 493
    check-cast v5, Ljava/util/concurrent/atomic/AtomicReference;

    .line 494
    .line 495
    invoke-virtual {v0}, Lc4/z;->m()V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v0}, Lc4/B;->n()V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v0, v3}, Lc4/d1;->B(Z)Lc4/J1;

    .line 502
    .line 503
    .line 504
    move-result-object v8

    .line 505
    new-instance v1, Lcom/google/android/gms/internal/ads/LK;

    .line 506
    .line 507
    move-object/from16 v2, p0

    .line 508
    .line 509
    iget-boolean v9, v2, LY/f;->H:Z

    .line 510
    .line 511
    move-object v3, v1

    .line 512
    move-object v4, v0

    .line 513
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/LK;-><init>(Lc4/d1;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Lc4/J1;Z)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0, v1}, Lc4/d1;->E(Ljava/lang/Runnable;)V

    .line 517
    .line 518
    .line 519
    return-void

    .line 520
    :pswitch_2
    move-object v2, v1

    .line 521
    check-cast v5, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    .line 522
    .line 523
    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 524
    .line 525
    invoke-virtual {v0}, Lc4/l0;->r()Lc4/d1;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    move-object v15, v8

    .line 530
    check-cast v15, Lcom/google/android/gms/internal/measurement/M;

    .line 531
    .line 532
    move-object v11, v6

    .line 533
    check-cast v11, Ljava/lang/String;

    .line 534
    .line 535
    move-object v12, v7

    .line 536
    check-cast v12, Ljava/lang/String;

    .line 537
    .line 538
    invoke-virtual {v0}, Lc4/z;->m()V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v0}, Lc4/B;->n()V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v0, v3}, Lc4/d1;->B(Z)Lc4/J1;

    .line 545
    .line 546
    .line 547
    move-result-object v13

    .line 548
    new-instance v1, Lcom/google/android/gms/internal/ads/LK;

    .line 549
    .line 550
    iget-boolean v14, v2, LY/f;->H:Z

    .line 551
    .line 552
    move-object v9, v1

    .line 553
    move-object v10, v0

    .line 554
    invoke-direct/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/LK;-><init>(Lc4/d1;Ljava/lang/String;Ljava/lang/String;Lc4/J1;ZLcom/google/android/gms/internal/measurement/M;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v0, v1}, Lc4/d1;->E(Ljava/lang/Runnable;)V

    .line 558
    .line 559
    .line 560
    return-void

    .line 561
    :pswitch_3
    move-object v2, v1

    .line 562
    move-object v0, v7

    .line 563
    check-cast v0, Landroid/webkit/WebView;

    .line 564
    .line 565
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    .line 570
    .line 571
    .line 572
    move-result v0

    .line 573
    if-eqz v0, :cond_e

    .line 574
    .line 575
    :try_start_8
    check-cast v7, Landroid/webkit/WebView;

    .line 576
    .line 577
    const-string v0, "(function() { return  {text:document.body.innerText}})();"

    .line 578
    .line 579
    move-object v1, v8

    .line 580
    check-cast v1, Landroid/webkit/ValueCallback;

    .line 581
    .line 582
    invoke-virtual {v7, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 583
    .line 584
    .line 585
    goto :goto_b

    .line 586
    :catchall_0
    check-cast v8, Landroid/webkit/ValueCallback;

    .line 587
    .line 588
    const-string v0, ""

    .line 589
    .line 590
    invoke-interface {v8, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 591
    .line 592
    .line 593
    :cond_e
    :goto_b
    return-void

    .line 594
    :pswitch_4
    move-object v2, v1

    .line 595
    check-cast v8, LY/d0;

    .line 596
    .line 597
    iget-object v0, v8, LY/d0;->c:LY/s;

    .line 598
    .line 599
    check-cast v6, LY/d0;

    .line 600
    .line 601
    iget-object v1, v6, LY/d0;->c:LY/s;

    .line 602
    .line 603
    sget-object v3, LY/S;->a:LY/X;

    .line 604
    .line 605
    if-eqz v4, :cond_f

    .line 606
    .line 607
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 608
    .line 609
    .line 610
    goto :goto_c

    .line 611
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 612
    .line 613
    .line 614
    :goto_c
    return-void

    .line 615
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
