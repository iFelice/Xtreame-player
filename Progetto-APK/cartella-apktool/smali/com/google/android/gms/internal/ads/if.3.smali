.class public final Lcom/google/android/gms/internal/ads/if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/String;

.field public final synthetic I:Ljava/lang/Object;

.field public final synthetic J:Ljava/lang/Object;

.field public final synthetic K:Ljava/lang/Object;

.field public final synthetic L:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/eo;Ljava/lang/String;Lcom/google/android/gms/internal/ads/do;Lcom/google/android/gms/internal/ads/gw;Ljava/util/ArrayList;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/if;->G:I

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/if;->I:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/if;->H:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/if;->J:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/if;->K:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/if;->L:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/jf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/if;->G:I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/if;->H:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/if;->I:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/if;->J:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/if;->K:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/if;->L:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/if;->G:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/if;->L:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/if;->K:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/if;->J:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/if;->H:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/if;->I:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v6, Lcom/google/android/gms/internal/ads/eo;

    .line 18
    .line 19
    check-cast v4, Lcom/google/android/gms/internal/ads/ha;

    .line 20
    .line 21
    check-cast v3, Lcom/google/android/gms/internal/ads/gw;

    .line 22
    .line 23
    check-cast v2, Ljava/util/List;

    .line 24
    .line 25
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const-string v0, "Failed to initialize adapter. "

    .line 29
    .line 30
    :try_start_0
    const-string v7, "com.google.ads.mediation.admob.AdMobAdapter"

    .line 31
    .line 32
    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    if-eqz v7, :cond_0

    .line 37
    .line 38
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/ha;->a()V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :catch_0
    move-exception v0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/eo;->g:Ljava/lang/ref/WeakReference;

    .line 45
    .line 46
    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    check-cast v7, Landroid/content/Context;

    .line 51
    .line 52
    if-eqz v7, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/eo;->f:Landroid/content/Context;

    .line 56
    .line 57
    :goto_0
    invoke-virtual {v3, v7, v4, v2}, Lcom/google/android/gms/internal/ads/gw;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ha;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/aw; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :goto_1
    new-instance v2, LY/r;

    .line 62
    .line 63
    invoke-direct {v2, v1, v0}, LY/r;-><init>(ILjava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    throw v2

    .line 67
    :catch_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v0, " does not implement the initialize() method."

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/ads/ha;->o(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :catch_2
    move-exception v0

    .line 89
    const-string v1, ""

    .line 90
    .line 91
    invoke-static {v1, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    :goto_2
    return-void

    .line 95
    :pswitch_0
    const-string v0, "event"

    .line 96
    .line 97
    const-string v7, "precacheCanceled"

    .line 98
    .line 99
    const-string v8, "src"

    .line 100
    .line 101
    invoke-static {v0, v7, v8, v5}, La/r;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v6, Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-nez v5, :cond_2

    .line 112
    .line 113
    const-string v5, "cachedSrc"

    .line 114
    .line 115
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    :cond_2
    check-cast v4, Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    sparse-switch v5, :sswitch_data_0

    .line 125
    .line 126
    .line 127
    goto/16 :goto_3

    .line 128
    .line 129
    :sswitch_0
    const-string v1, "noCacheDir"

    .line 130
    .line 131
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_3

    .line 136
    .line 137
    const/4 v1, 0x7

    .line 138
    goto/16 :goto_4

    .line 139
    .line 140
    :sswitch_1
    const-string v1, "expireFailed"

    .line 141
    .line 142
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_3

    .line 147
    .line 148
    const/4 v1, 0x6

    .line 149
    goto/16 :goto_4

    .line 150
    .line 151
    :sswitch_2
    const-string v1, "error"

    .line 152
    .line 153
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_3

    .line 158
    .line 159
    const/4 v1, 0x1

    .line 160
    goto :goto_4

    .line 161
    :sswitch_3
    const-string v1, "noop"

    .line 162
    .line 163
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_3

    .line 168
    .line 169
    const/4 v1, 0x4

    .line 170
    goto :goto_4

    .line 171
    :sswitch_4
    const-string v1, "externalAbort"

    .line 172
    .line 173
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_3

    .line 178
    .line 179
    const/16 v1, 0xa

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :sswitch_5
    const-string v1, "sizeExceeded"

    .line 183
    .line 184
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_3

    .line 189
    .line 190
    const/16 v1, 0xb

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :sswitch_6
    const-string v1, "playerFailed"

    .line 194
    .line 195
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_3

    .line 200
    .line 201
    const/4 v1, 0x5

    .line 202
    goto :goto_4

    .line 203
    :sswitch_7
    const-string v1, "contentLengthMissing"

    .line 204
    .line 205
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-eqz v1, :cond_3

    .line 210
    .line 211
    const/4 v1, 0x0

    .line 212
    goto :goto_4

    .line 213
    :sswitch_8
    const-string v1, "downloadTimeout"

    .line 214
    .line 215
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-eqz v1, :cond_3

    .line 220
    .line 221
    const/16 v1, 0x9

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :sswitch_9
    const-string v1, "inProgress"

    .line 225
    .line 226
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_3

    .line 231
    .line 232
    const/4 v1, 0x2

    .line 233
    goto :goto_4

    .line 234
    :sswitch_a
    const-string v1, "badUrl"

    .line 235
    .line 236
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-eqz v1, :cond_3

    .line 241
    .line 242
    const/16 v1, 0x8

    .line 243
    .line 244
    goto :goto_4

    .line 245
    :sswitch_b
    const-string v5, "interrupted"

    .line 246
    .line 247
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    if-eqz v5, :cond_3

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_3
    :goto_3
    const/4 v1, -0x1

    .line 255
    :goto_4
    packed-switch v1, :pswitch_data_1

    .line 256
    .line 257
    .line 258
    const-string v1, "internal"

    .line 259
    .line 260
    goto :goto_5

    .line 261
    :pswitch_1
    const-string v1, "policy"

    .line 262
    .line 263
    goto :goto_5

    .line 264
    :pswitch_2
    const-string v1, "network"

    .line 265
    .line 266
    goto :goto_5

    .line 267
    :pswitch_3
    const-string v1, "io"

    .line 268
    .line 269
    :goto_5
    const-string v5, "type"

    .line 270
    .line 271
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    const-string v1, "reason"

    .line 275
    .line 276
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    check-cast v3, Ljava/lang/String;

    .line 280
    .line 281
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-nez v1, :cond_4

    .line 286
    .line 287
    const-string v1, "message"

    .line 288
    .line 289
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    :cond_4
    check-cast v2, Lcom/google/android/gms/internal/ads/jf;

    .line 293
    .line 294
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jf;->k(Lcom/google/android/gms/internal/ads/jf;Ljava/util/HashMap;)V

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    nop

    .line 299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    :sswitch_data_0
    .sparse-switch
        -0x7416d1be -> :sswitch_b
        -0x533f68d6 -> :sswitch_a
        -0x5049c18e -> :sswitch_9
        -0x36c40c47 -> :sswitch_8
        -0x274d4859 -> :sswitch_7
        -0x26475182 -> :sswitch_6
        -0x151a598c -> :sswitch_5
        -0x1e989db -> :sswitch_4
        0x33af62 -> :sswitch_3
        0x5c4d208 -> :sswitch_2
        0x2293ea3c -> :sswitch_1
        0x2b3e368c -> :sswitch_0
    .end sparse-switch

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
