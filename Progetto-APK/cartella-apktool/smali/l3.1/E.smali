.class public abstract Ll3/E;
.super Lcom/google/android/gms/internal/ads/z5;
.source "SourceFile"

# interfaces
.implements Ll3/F;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/z5;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final y3(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    return v0

    .line 7
    :pswitch_1
    sget-object p1, Li3/a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Li3/a;

    .line 14
    .line 15
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, p1}, Ll3/F;->z1(Li3/a;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_9

    .line 25
    .line 26
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string v1, "com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback"

    .line 34
    .line 35
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/qa;

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    move-object v1, v2

    .line 44
    check-cast v1, Lcom/google/android/gms/internal/ads/qa;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/pa;

    .line 48
    .line 49
    invoke-direct {v2, p1, v1, v0}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    move-object v1, v2

    .line 53
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p0, v1}, Ll3/F;->C1(Lcom/google/android/gms/internal/ads/qa;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_9

    .line 63
    .line 64
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/la;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 65
    .line 66
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lcom/google/android/gms/internal/ads/la;

    .line 71
    .line 72
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p0, p1}, Ll3/F;->p3(Lcom/google/android/gms/internal/ads/la;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_9

    .line 82
    .line 83
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-nez p1, :cond_2

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    const-string v1, "com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener"

    .line 91
    .line 92
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/v9;

    .line 97
    .line 98
    if-eqz v3, :cond_3

    .line 99
    .line 100
    move-object v1, v2

    .line 101
    check-cast v1, Lcom/google/android/gms/internal/ads/v9;

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/ads/t9;

    .line 105
    .line 106
    invoke-direct {v2, p1, v1, v0}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    move-object v1, v2

    .line 110
    :goto_1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 111
    .line 112
    .line 113
    invoke-interface {p0, v1}, Ll3/F;->e1(Lcom/google/android/gms/internal/ads/v9;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_9

    .line 120
    .line 121
    :pswitch_5
    sget-object p1, Li3/d;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 122
    .line 123
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Li3/d;

    .line 128
    .line 129
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 130
    .line 131
    .line 132
    invoke-interface {p0, p1}, Ll3/F;->a1(Li3/d;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_9

    .line 139
    .line 140
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    if-nez p1, :cond_4

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_4
    const-string v1, "com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener"

    .line 148
    .line 149
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/s9;

    .line 154
    .line 155
    if-eqz v3, :cond_5

    .line 156
    .line 157
    move-object v1, v2

    .line 158
    check-cast v1, Lcom/google/android/gms/internal/ads/s9;

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_5
    new-instance v2, Lcom/google/android/gms/internal/ads/r9;

    .line 162
    .line 163
    invoke-direct {v2, p1, v1, v0}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 164
    .line 165
    .line 166
    move-object v1, v2

    .line 167
    :goto_2
    sget-object p1, Ll3/d1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 168
    .line 169
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Ll3/d1;

    .line 174
    .line 175
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 176
    .line 177
    .line 178
    invoke-interface {p0, v1, p1}, Ll3/F;->p2(Lcom/google/android/gms/internal/ads/s9;Ll3/d1;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_9

    .line 185
    .line 186
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    if-nez p1, :cond_6

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_6
    const-string v0, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider"

    .line 194
    .line 195
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    instance-of v1, v0, Ll3/Y;

    .line 200
    .line 201
    if-eqz v1, :cond_7

    .line 202
    .line 203
    move-object v1, v0

    .line 204
    check-cast v1, Ll3/Y;

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_7
    new-instance v1, Ll3/Y;

    .line 208
    .line 209
    invoke-direct {v1, p1}, Ll3/Y;-><init>(Landroid/os/IBinder;)V

    .line 210
    .line 211
    .line 212
    :goto_3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 213
    .line 214
    .line 215
    invoke-interface {p0, v1}, Ll3/F;->q2(Ll3/Y;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_9

    .line 222
    .line 223
    :pswitch_8
    sget-object p1, Lcom/google/android/gms/internal/ads/M8;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 224
    .line 225
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/A5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    check-cast p1, Lcom/google/android/gms/internal/ads/M8;

    .line 230
    .line 231
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 232
    .line 233
    .line 234
    invoke-interface {p0, p1}, Ll3/F;->i3(Lcom/google/android/gms/internal/ads/M8;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_9

    .line 241
    .line 242
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    if-nez v2, :cond_8

    .line 251
    .line 252
    move-object v4, v1

    .line 253
    goto :goto_4

    .line 254
    :cond_8
    const-string v3, "com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener"

    .line 255
    .line 256
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    instance-of v5, v4, Lcom/google/android/gms/internal/ads/p9;

    .line 261
    .line 262
    if-eqz v5, :cond_9

    .line 263
    .line 264
    check-cast v4, Lcom/google/android/gms/internal/ads/p9;

    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_9
    new-instance v4, Lcom/google/android/gms/internal/ads/o9;

    .line 268
    .line 269
    invoke-direct {v4, v2, v3, v0}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 270
    .line 271
    .line 272
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    if-nez v2, :cond_a

    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_a
    const-string v1, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener"

    .line 280
    .line 281
    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    instance-of v5, v3, Lcom/google/android/gms/internal/ads/n9;

    .line 286
    .line 287
    if-eqz v5, :cond_b

    .line 288
    .line 289
    move-object v1, v3

    .line 290
    check-cast v1, Lcom/google/android/gms/internal/ads/n9;

    .line 291
    .line 292
    goto :goto_5

    .line 293
    :cond_b
    new-instance v3, Lcom/google/android/gms/internal/ads/m9;

    .line 294
    .line 295
    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 296
    .line 297
    .line 298
    move-object v1, v3

    .line 299
    :goto_5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 300
    .line 301
    .line 302
    invoke-interface {p0, p1, v4, v1}, Ll3/F;->L2(Ljava/lang/String;Lcom/google/android/gms/internal/ads/p9;Lcom/google/android/gms/internal/ads/n9;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    .line 307
    .line 308
    goto/16 :goto_9

    .line 309
    .line 310
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    if-nez p1, :cond_c

    .line 315
    .line 316
    goto :goto_6

    .line 317
    :cond_c
    const-string v1, "com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener"

    .line 318
    .line 319
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/l9;

    .line 324
    .line 325
    if-eqz v3, :cond_d

    .line 326
    .line 327
    move-object v1, v2

    .line 328
    check-cast v1, Lcom/google/android/gms/internal/ads/l9;

    .line 329
    .line 330
    goto :goto_6

    .line 331
    :cond_d
    new-instance v2, Lcom/google/android/gms/internal/ads/k9;

    .line 332
    .line 333
    invoke-direct {v2, p1, v1, v0}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 334
    .line 335
    .line 336
    move-object v1, v2

    .line 337
    :goto_6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 338
    .line 339
    .line 340
    invoke-interface {p0, v1}, Ll3/F;->c1(Lcom/google/android/gms/internal/ads/l9;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    .line 345
    .line 346
    goto :goto_9

    .line 347
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    if-nez p1, :cond_e

    .line 352
    .line 353
    goto :goto_7

    .line 354
    :cond_e
    const-string v1, "com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener"

    .line 355
    .line 356
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/j9;

    .line 361
    .line 362
    if-eqz v3, :cond_f

    .line 363
    .line 364
    move-object v1, v2

    .line 365
    check-cast v1, Lcom/google/android/gms/internal/ads/j9;

    .line 366
    .line 367
    goto :goto_7

    .line 368
    :cond_f
    new-instance v2, Lcom/google/android/gms/internal/ads/h9;

    .line 369
    .line 370
    invoke-direct {v2, p1, v1, v0}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 371
    .line 372
    .line 373
    move-object v1, v2

    .line 374
    :goto_7
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 375
    .line 376
    .line 377
    invoke-interface {p0, v1}, Ll3/F;->b2(Lcom/google/android/gms/internal/ads/j9;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    .line 382
    .line 383
    goto :goto_9

    .line 384
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    if-nez p1, :cond_10

    .line 389
    .line 390
    goto :goto_8

    .line 391
    :cond_10
    const-string v0, "com.google.android.gms.ads.internal.client.IAdListener"

    .line 392
    .line 393
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    instance-of v1, v0, Ll3/w;

    .line 398
    .line 399
    if-eqz v1, :cond_11

    .line 400
    .line 401
    move-object v1, v0

    .line 402
    check-cast v1, Ll3/w;

    .line 403
    .line 404
    goto :goto_8

    .line 405
    :cond_11
    new-instance v1, Ll3/u;

    .line 406
    .line 407
    invoke-direct {v1, p1}, Ll3/u;-><init>(Landroid/os/IBinder;)V

    .line 408
    .line 409
    .line 410
    :goto_8
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/A5;->b(Landroid/os/Parcel;)V

    .line 411
    .line 412
    .line 413
    invoke-interface {p0, v1}, Ll3/F;->J1(Ll3/w;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    .line 418
    .line 419
    goto :goto_9

    .line 420
    :pswitch_d
    invoke-interface {p0}, Ll3/F;->zze()Ll3/C;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    .line 426
    .line 427
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 428
    .line 429
    .line 430
    :goto_9
    const/4 p1, 0x1

    .line 431
    return p1

    .line 432
    nop

    .line 433
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
