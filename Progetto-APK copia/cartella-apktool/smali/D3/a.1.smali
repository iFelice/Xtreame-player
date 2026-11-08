.class public final LD3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:LH3/b;

.field public static final l:Ljava/lang/Object;

.field public static volatile m:LD3/a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LD3/g;

.field public final c:LD3/k;

.field public final d:LD3/b;

.field public final e:LH3/t;

.field public final f:Lcom/google/android/gms/internal/cast/c;

.field public final g:Lcom/google/android/gms/internal/cast/n;

.field public final h:Ljava/util/List;

.field public final i:Lcom/google/android/gms/internal/cast/t;

.field public final j:Lcom/google/android/gms/internal/cast/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LH3/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "CastContext"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, LH3/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, LD3/a;->k:LH3/b;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, LD3/a;->l:Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LD3/b;Ljava/util/List;Lcom/google/android/gms/internal/cast/q;LH3/t;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, LD3/a;->a:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p2, p0, LD3/a;->d:LD3/b;

    .line 9
    .line 10
    iput-object p5, p0, LD3/a;->e:LH3/t;

    .line 11
    .line 12
    iput-object p3, p0, LD3/a;->h:Ljava/util/List;

    .line 13
    .line 14
    new-instance v2, Lcom/google/android/gms/internal/cast/n;

    .line 15
    .line 16
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/cast/n;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, LD3/a;->g:Lcom/google/android/gms/internal/cast/n;

    .line 20
    .line 21
    iget-object v2, p4, Lcom/google/android/gms/internal/cast/q;->K:Lcom/google/android/gms/internal/cast/t;

    .line 22
    .line 23
    iput-object v2, p0, LD3/a;->i:Lcom/google/android/gms/internal/cast/t;

    .line 24
    .line 25
    iget-object v2, p2, LD3/b;->G:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x0

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    new-instance v2, Lcom/google/android/gms/internal/cast/e;

    .line 35
    .line 36
    invoke-direct {v2, p1, p2, p4}, Lcom/google/android/gms/internal/cast/e;-><init>(Landroid/content/Context;LD3/b;Lcom/google/android/gms/internal/cast/q;)V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, LD3/a;->j:Lcom/google/android/gms/internal/cast/e;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iput-object v3, p0, LD3/a;->j:Lcom/google/android/gms/internal/cast/e;

    .line 43
    .line 44
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v4, p0, LD3/a;->j:Lcom/google/android/gms/internal/cast/e;

    .line 50
    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    iget-object v5, v4, Lcom/google/android/gms/internal/cast/e;->b:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v4, v4, Lcom/google/android/gms/internal/cast/e;->c:LD3/C;

    .line 56
    .line 57
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_1
    if-eqz p3, :cond_2

    .line 61
    .line 62
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_2

    .line 71
    .line 72
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Lcom/google/android/gms/internal/cast/e;

    .line 77
    .line 78
    const-string v5, "Additional SessionProvider must not be null."

    .line 79
    .line 80
    invoke-static {v4, v5}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v5, "Category for SessionProvider must not be null or empty string."

    .line 84
    .line 85
    iget-object v6, v4, Lcom/google/android/gms/internal/cast/e;->b:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {v5, v6}, Lcom/bumptech/glide/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    xor-int/2addr v5, v1

    .line 95
    new-instance v7, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v8, "SessionProvider for category "

    .line 98
    .line 99
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v8, " already added"

    .line 106
    .line 107
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-static {v7, v5}, Lcom/bumptech/glide/c;->a(Ljava/lang/String;Z)V

    .line 115
    .line 116
    .line 117
    iget-object v4, v4, Lcom/google/android/gms/internal/cast/e;->c:LD3/C;

    .line 118
    .line 119
    invoke-virtual {v2, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_2
    new-instance p3, LD3/F;

    .line 124
    .line 125
    invoke-direct {p3, v1}, LD3/F;-><init>(I)V

    .line 126
    .line 127
    .line 128
    iput-object p3, p2, LD3/b;->V:LD3/F;

    .line 129
    .line 130
    :try_start_0
    invoke-static {p1, p2, p4, v2}, Lcom/google/android/gms/internal/cast/d;->a(Landroid/content/Context;LD3/b;Lcom/google/android/gms/internal/cast/h;Ljava/util/HashMap;)LD3/o;

    .line 131
    .line 132
    .line 133
    move-result-object p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 134
    :try_start_1
    move-object p4, p3

    .line 135
    check-cast p4, LD3/m;

    .line 136
    .line 137
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    const/4 v4, 0x6

    .line 142
    invoke-virtual {p4, v4, v2}, Lcom/google/android/gms/internal/ads/y5;->v0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 143
    .line 144
    .line 145
    move-result-object p4

    .line 146
    invoke-virtual {p4}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    const/4 v4, 0x2

    .line 151
    if-nez v2, :cond_3

    .line 152
    .line 153
    move-object v6, v3

    .line 154
    goto :goto_2

    .line 155
    :cond_3
    const-string v5, "com.google.android.gms.cast.framework.IDiscoveryManager"

    .line 156
    .line 157
    invoke-interface {v2, v5}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    instance-of v7, v6, LD3/s;

    .line 162
    .line 163
    if-eqz v7, :cond_4

    .line 164
    .line 165
    check-cast v6, LD3/s;

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_4
    new-instance v6, LD3/s;

    .line 169
    .line 170
    invoke-direct {v6, v2, v5, v4}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 171
    .line 172
    .line 173
    :goto_2
    invoke-virtual {p4}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 174
    .line 175
    .line 176
    new-instance p4, LD3/k;

    .line 177
    .line 178
    invoke-direct {p4, v6}, LD3/k;-><init>(LD3/s;)V

    .line 179
    .line 180
    .line 181
    iput-object p4, p0, LD3/a;->c:LD3/k;

    .line 182
    .line 183
    :try_start_2
    move-object p4, p3

    .line 184
    check-cast p4, LD3/m;

    .line 185
    .line 186
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    const/4 v5, 0x5

    .line 191
    invoke-virtual {p4, v5, v2}, Lcom/google/android/gms/internal/ads/y5;->v0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 192
    .line 193
    .line 194
    move-result-object p4

    .line 195
    invoke-virtual {p4}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    if-nez v2, :cond_5

    .line 200
    .line 201
    move-object v6, v3

    .line 202
    goto :goto_3

    .line 203
    :cond_5
    const-string v5, "com.google.android.gms.cast.framework.ISessionManager"

    .line 204
    .line 205
    invoke-interface {v2, v5}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    instance-of v7, v6, LD3/z;

    .line 210
    .line 211
    if-eqz v7, :cond_6

    .line 212
    .line 213
    check-cast v6, LD3/z;

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_6
    new-instance v6, LD3/z;

    .line 217
    .line 218
    invoke-direct {v6, v2, v5, v4}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 219
    .line 220
    .line 221
    :goto_3
    invoke-virtual {p4}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 222
    .line 223
    .line 224
    new-instance p4, LD3/g;

    .line 225
    .line 226
    invoke-direct {p4, v6, p1}, LD3/g;-><init>(LD3/z;Landroid/content/Context;)V

    .line 227
    .line 228
    .line 229
    iput-object p4, p0, LD3/a;->b:LD3/g;

    .line 230
    .line 231
    const-string v2, "PrecacheManager"

    .line 232
    .line 233
    const-string v4, "The log tag cannot be null or empty."

    .line 234
    .line 235
    invoke-static {v4, v2}, Lcom/bumptech/glide/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-eqz v2, :cond_7

    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    const-string v4, "["

    .line 248
    .line 249
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v4, "] "

    .line 256
    .line 257
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    :goto_4
    iget-object v2, p0, LD3/a;->i:Lcom/google/android/gms/internal/cast/t;

    .line 261
    .line 262
    if-eqz v2, :cond_8

    .line 263
    .line 264
    iput-object p4, v2, Lcom/google/android/gms/internal/cast/t;->f:LD3/g;

    .line 265
    .line 266
    iget-object p4, v2, Lcom/google/android/gms/internal/cast/t;->c:LX3/d;

    .line 267
    .line 268
    invoke-static {p4}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    new-instance v4, Lcom/google/android/gms/internal/cast/s;

    .line 272
    .line 273
    invoke-direct {v4, v2, v1}, Lcom/google/android/gms/internal/cast/s;-><init>(Lcom/google/android/gms/internal/cast/t;I)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p4, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 277
    .line 278
    .line 279
    :cond_8
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 280
    .line 281
    const/16 v2, 0x17

    .line 282
    .line 283
    const/4 v4, 0x3

    .line 284
    if-lt p4, v2, :cond_b

    .line 285
    .line 286
    new-instance p4, Lcom/google/android/gms/internal/cast/w;

    .line 287
    .line 288
    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    instance-of v5, v2, Lcom/google/android/gms/internal/cast/M1;

    .line 293
    .line 294
    if-eqz v5, :cond_9

    .line 295
    .line 296
    check-cast v2, Lcom/google/android/gms/internal/cast/M1;

    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_9
    instance-of v5, v2, Ljava/util/concurrent/ScheduledExecutorService;

    .line 300
    .line 301
    if-eqz v5, :cond_a

    .line 302
    .line 303
    new-instance v5, Lcom/google/android/gms/internal/cast/R1;

    .line 304
    .line 305
    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    .line 306
    .line 307
    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/cast/R1;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 308
    .line 309
    .line 310
    :goto_5
    move-object v2, v5

    .line 311
    goto :goto_6

    .line 312
    :cond_a
    new-instance v5, Lcom/google/android/gms/internal/cast/N1;

    .line 313
    .line 314
    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/cast/N1;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 315
    .line 316
    .line 317
    goto :goto_5

    .line 318
    :goto_6
    invoke-direct {p4, p1, v2}, Lcom/google/android/gms/internal/cast/w;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cast/M1;)V

    .line 319
    .line 320
    .line 321
    goto :goto_7

    .line 322
    :cond_b
    new-instance p4, Lcom/google/android/gms/internal/cast/e0;

    .line 323
    .line 324
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 325
    .line 326
    .line 327
    :goto_7
    const-string p1, "BaseNetUtils"

    .line 328
    .line 329
    const-string v2, "The log tag cannot be null or empty."

    .line 330
    .line 331
    invoke-static {v2, p1}, Lcom/bumptech/glide/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 335
    .line 336
    .line 337
    move-result p1

    .line 338
    if-eqz p1, :cond_c

    .line 339
    .line 340
    goto :goto_8

    .line 341
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    const-string v2, "["

    .line 344
    .line 345
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string v2, "] "

    .line 352
    .line 353
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    :goto_8
    invoke-interface {p4}, Lcom/google/android/gms/internal/cast/v;->zza()V

    .line 357
    .line 358
    .line 359
    new-instance p1, Lcom/google/android/gms/internal/cast/c;

    .line 360
    .line 361
    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/c;-><init>()V

    .line 362
    .line 363
    .line 364
    iput-object p1, p0, LD3/a;->f:Lcom/google/android/gms/internal/cast/c;

    .line 365
    .line 366
    :try_start_3
    check-cast p3, LD3/m;

    .line 367
    .line 368
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 369
    .line 370
    .line 371
    move-result-object p4

    .line 372
    invoke-static {p4, p1}, Lcom/google/android/gms/internal/cast/u;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p3, v4, p4}, Lcom/google/android/gms/internal/ads/y5;->r1(ILandroid/os/Parcel;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 376
    .line 377
    .line 378
    iget-object p3, p0, LD3/a;->g:Lcom/google/android/gms/internal/cast/n;

    .line 379
    .line 380
    iget-object p3, p3, Lcom/google/android/gms/internal/cast/n;->a:Lcom/google/android/gms/internal/cast/m;

    .line 381
    .line 382
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/c;->H:Ljava/util/Set;

    .line 383
    .line 384
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    iget-object p1, p2, LD3/b;->R:Ljava/util/List;

    .line 388
    .line 389
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 394
    .line 395
    .line 396
    move-result p1

    .line 397
    if-nez p1, :cond_10

    .line 398
    .line 399
    sget-object p1, LD3/a;->k:LH3/b;

    .line 400
    .line 401
    iget-object p2, p0, LD3/a;->d:LD3/b;

    .line 402
    .line 403
    iget-object p2, p2, LD3/b;->R:Ljava/util/List;

    .line 404
    .line 405
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 406
    .line 407
    .line 408
    move-result-object p2

    .line 409
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object p2

    .line 413
    new-array p3, v0, [Ljava/lang/Object;

    .line 414
    .line 415
    const-string p4, "Setting Route Discovery for appIds: "

    .line 416
    .line 417
    invoke-virtual {p4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object p2

    .line 421
    iget-object p4, p1, LH3/b;->a:Ljava/lang/String;

    .line 422
    .line 423
    invoke-virtual {p1, p2, p3}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    iget-object p1, p0, LD3/a;->g:Lcom/google/android/gms/internal/cast/n;

    .line 431
    .line 432
    iget-object p2, p0, LD3/a;->d:LD3/b;

    .line 433
    .line 434
    iget-object p2, p2, LD3/b;->R:Ljava/util/List;

    .line 435
    .line 436
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 437
    .line 438
    .line 439
    move-result-object p2

    .line 440
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 441
    .line 442
    .line 443
    sget-object p3, Lcom/google/android/gms/internal/cast/n;->f:LH3/b;

    .line 444
    .line 445
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 446
    .line 447
    .line 448
    move-result p4

    .line 449
    const-string v2, "SetRouteDiscovery for "

    .line 450
    .line 451
    const-string v3, " IDs"

    .line 452
    .line 453
    invoke-static {v2, p4, v3}, LA0/O;->y(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object p4

    .line 457
    new-array v2, v0, [Ljava/lang/Object;

    .line 458
    .line 459
    invoke-virtual {p3, p4, v2}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    .line 461
    .line 462
    new-instance p3, Ljava/util/LinkedHashSet;

    .line 463
    .line 464
    invoke-direct {p3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 465
    .line 466
    .line 467
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 468
    .line 469
    .line 470
    move-result-object p2

    .line 471
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 472
    .line 473
    .line 474
    move-result p4

    .line 475
    if-eqz p4, :cond_d

    .line 476
    .line 477
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object p4

    .line 481
    check-cast p4, Ljava/lang/String;

    .line 482
    .line 483
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/Cw;->n0(Ljava/lang/String;)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object p4

    .line 487
    invoke-virtual {p3, p4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    goto :goto_9

    .line 491
    :cond_d
    iget-object p2, p1, Lcom/google/android/gms/internal/cast/n;->c:Ljava/util/Map;

    .line 492
    .line 493
    sget-object p4, Lcom/google/android/gms/internal/cast/n;->f:LH3/b;

    .line 494
    .line 495
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 496
    .line 497
    .line 498
    move-result-object p2

    .line 499
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object p2

    .line 503
    new-array v2, v0, [Ljava/lang/Object;

    .line 504
    .line 505
    const-string v3, "resetting routes. appIdToRouteInfo has these appId route keys: "

    .line 506
    .line 507
    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object p2

    .line 511
    invoke-virtual {p4, p2, v2}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    .line 513
    .line 514
    new-instance p2, Ljava/util/HashMap;

    .line 515
    .line 516
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 517
    .line 518
    .line 519
    iget-object p4, p1, Lcom/google/android/gms/internal/cast/n;->c:Ljava/util/Map;

    .line 520
    .line 521
    monitor-enter p4

    .line 522
    :try_start_4
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    :cond_e
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 527
    .line 528
    .line 529
    move-result v3

    .line 530
    if-eqz v3, :cond_f

    .line 531
    .line 532
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v3

    .line 536
    check-cast v3, Ljava/lang/String;

    .line 537
    .line 538
    iget-object v4, p1, Lcom/google/android/gms/internal/cast/n;->c:Ljava/util/Map;

    .line 539
    .line 540
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Cw;->n0(Ljava/lang/String;)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v5

    .line 544
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v4

    .line 548
    check-cast v4, Lcom/google/android/gms/internal/cast/l;

    .line 549
    .line 550
    if-eqz v4, :cond_e

    .line 551
    .line 552
    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    goto :goto_a

    .line 556
    :catchall_0
    move-exception p1

    .line 557
    goto :goto_b

    .line 558
    :cond_f
    iget-object v2, p1, Lcom/google/android/gms/internal/cast/n;->c:Ljava/util/Map;

    .line 559
    .line 560
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 561
    .line 562
    .line 563
    iget-object v2, p1, Lcom/google/android/gms/internal/cast/n;->c:Ljava/util/Map;

    .line 564
    .line 565
    invoke-interface {v2, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 566
    .line 567
    .line 568
    monitor-exit p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 569
    iget-object p2, p1, Lcom/google/android/gms/internal/cast/n;->c:Ljava/util/Map;

    .line 570
    .line 571
    sget-object p4, Lcom/google/android/gms/internal/cast/n;->f:LH3/b;

    .line 572
    .line 573
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 574
    .line 575
    .line 576
    move-result-object p2

    .line 577
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object p2

    .line 581
    new-array v2, v0, [Ljava/lang/Object;

    .line 582
    .line 583
    const-string v3, "Routes reset. appIdToRouteInfo has these appId route keys: "

    .line 584
    .line 585
    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object p2

    .line 589
    invoke-virtual {p4, p2, v2}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 590
    .line 591
    .line 592
    iget-object p2, p1, Lcom/google/android/gms/internal/cast/n;->d:Ljava/util/LinkedHashSet;

    .line 593
    .line 594
    monitor-enter p2

    .line 595
    :try_start_5
    iget-object p4, p1, Lcom/google/android/gms/internal/cast/n;->d:Ljava/util/LinkedHashSet;

    .line 596
    .line 597
    invoke-virtual {p4}, Ljava/util/AbstractCollection;->clear()V

    .line 598
    .line 599
    .line 600
    iget-object p4, p1, Lcom/google/android/gms/internal/cast/n;->d:Ljava/util/LinkedHashSet;

    .line 601
    .line 602
    invoke-virtual {p4, p3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 603
    .line 604
    .line 605
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 606
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/n;->f()V

    .line 607
    .line 608
    .line 609
    goto :goto_c

    .line 610
    :catchall_1
    move-exception p1

    .line 611
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 612
    throw p1

    .line 613
    :goto_b
    :try_start_7
    monitor-exit p4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 614
    throw p1

    .line 615
    :cond_10
    :goto_c
    const-string p1, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED"

    .line 616
    .line 617
    const-string p2, "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE"

    .line 618
    .line 619
    const-string p3, "com.google.android.gms.cast.FLAG_FIRELOG_UPLOAD_MODE"

    .line 620
    .line 621
    const-string p4, "com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE"

    .line 622
    .line 623
    const-string v2, "com.google.android.gms.cast.FLAG_CLIENT_FEATURE_USAGE_ANALYTICS_ENABLED"

    .line 624
    .line 625
    filled-new-array {p1, p2, p3, p4, v2}, [Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object p1

    .line 629
    invoke-virtual {p5, p1}, LH3/t;->c([Ljava/lang/String;)Lg4/h;

    .line 630
    .line 631
    .line 632
    move-result-object p1

    .line 633
    new-instance p2, LD3/D;

    .line 634
    .line 635
    invoke-direct {p2, p0, v0}, LD3/D;-><init>(LD3/a;I)V

    .line 636
    .line 637
    .line 638
    check-cast p1, Lg4/r;

    .line 639
    .line 640
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 641
    .line 642
    .line 643
    sget-object p3, Lg4/j;->a:Lg4/q;

    .line 644
    .line 645
    invoke-virtual {p1, p3, p2}, Lg4/r;->c(Ljava/util/concurrent/Executor;Lg4/f;)Lg4/r;

    .line 646
    .line 647
    .line 648
    const-string p1, "com.google.android.gms.cast.MAP_CAST_STATUS_CODES_TO_CAST_REASON_CODES"

    .line 649
    .line 650
    filled-new-array {p1}, [Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object p1

    .line 654
    invoke-static {}, LK3/s;->a()LK3/r;

    .line 655
    .line 656
    .line 657
    move-result-object p2

    .line 658
    new-instance p4, LF/i;

    .line 659
    .line 660
    const/16 v2, 0xd

    .line 661
    .line 662
    invoke-direct {p4, v2, p5, p1}, LF/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 663
    .line 664
    .line 665
    iput-object p4, p2, LK3/r;->c:Ljava/lang/Object;

    .line 666
    .line 667
    new-array p1, v1, [LJ3/d;

    .line 668
    .line 669
    sget-object p4, LC3/y;->d:LJ3/d;

    .line 670
    .line 671
    aput-object p4, p1, v0

    .line 672
    .line 673
    iput-object p1, p2, LK3/r;->d:Ljava/lang/Object;

    .line 674
    .line 675
    iput-boolean v0, p2, LK3/r;->b:Z

    .line 676
    .line 677
    const/16 p1, 0x20eb

    .line 678
    .line 679
    iput p1, p2, LK3/r;->a:I

    .line 680
    .line 681
    invoke-virtual {p2}, LK3/r;->a()LK3/O;

    .line 682
    .line 683
    .line 684
    move-result-object p1

    .line 685
    invoke-virtual {p5, p1}, Lcom/google/android/gms/common/api/j;->doRead(LK3/s;)Lg4/h;

    .line 686
    .line 687
    .line 688
    move-result-object p1

    .line 689
    new-instance p2, LD3/D;

    .line 690
    .line 691
    invoke-direct {p2, p0, v1}, LD3/D;-><init>(LD3/a;I)V

    .line 692
    .line 693
    .line 694
    check-cast p1, Lg4/r;

    .line 695
    .line 696
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 697
    .line 698
    .line 699
    invoke-virtual {p1, p3, p2}, Lg4/r;->c(Ljava/util/concurrent/Executor;Lg4/f;)Lg4/r;

    .line 700
    .line 701
    .line 702
    return-void

    .line 703
    :catch_0
    move-exception p1

    .line 704
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 705
    .line 706
    const-string p3, "Failed to call addAppVisibilityListener"

    .line 707
    .line 708
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 709
    .line 710
    .line 711
    throw p2

    .line 712
    :catch_1
    move-exception p1

    .line 713
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 714
    .line 715
    const-string p3, "Failed to call getSessionManagerImpl"

    .line 716
    .line 717
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 718
    .line 719
    .line 720
    throw p2

    .line 721
    :catch_2
    move-exception p1

    .line 722
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 723
    .line 724
    const-string p3, "Failed to call getDiscoveryManagerImpl"

    .line 725
    .line 726
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 727
    .line 728
    .line 729
    throw p2

    .line 730
    :catch_3
    move-exception p1

    .line 731
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 732
    .line 733
    const-string p3, "Failed to call newCastContextImpl"

    .line 734
    .line 735
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 736
    .line 737
    .line 738
    throw p2
.end method

.method public static a(Landroid/content/Context;)LD3/a;
    .locals 8

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, LD3/a;->m:LD3/a;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    sget-object v0, LD3/a;->l:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    sget-object v1, LD3/a;->m:LD3/a;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v3}, LD3/a;->b(Landroid/content/Context;)Landroidx/media3/cast/DefaultCastOptionsProvider;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0, v3}, Landroidx/media3/cast/DefaultCastOptionsProvider;->getCastOptions(Landroid/content/Context;)LD3/b;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    new-instance v7, LH3/t;

    .line 30
    .line 31
    sget-object v1, Lcom/google/android/gms/common/api/c;->a:Lcom/google/android/gms/common/api/b;

    .line 32
    .line 33
    sget-object v2, Lcom/google/android/gms/common/api/i;->c:Lcom/google/android/gms/common/api/i;

    .line 34
    .line 35
    sget-object v5, LH3/t;->a:Lcom/google/android/gms/common/api/g;

    .line 36
    .line 37
    invoke-direct {v7, v3, v5, v1, v2}, Lcom/google/android/gms/common/api/j;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/api/i;)V

    .line 38
    .line 39
    .line 40
    new-instance v6, Lcom/google/android/gms/internal/cast/q;

    .line 41
    .line 42
    invoke-static {v3}, LE1/H;->d(Landroid/content/Context;)LE1/H;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v6, v3, v1, v4, v7}, Lcom/google/android/gms/internal/cast/q;-><init>(Landroid/content/Context;LE1/H;LD3/b;LH3/t;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    :try_start_1
    new-instance v1, LD3/a;

    .line 50
    .line 51
    invoke-virtual {p0, v3}, Landroidx/media3/cast/DefaultCastOptionsProvider;->getAdditionalSessionProviders(Landroid/content/Context;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    move-object v2, v1

    .line 56
    invoke-direct/range {v2 .. v7}, LD3/a;-><init>(Landroid/content/Context;LD3/b;Ljava/util/List;Lcom/google/android/gms/internal/cast/q;LH3/t;)V

    .line 57
    .line 58
    .line 59
    sput-object v1, LD3/a;->m:LD3/a;
    :try_end_1
    .catch LD3/d; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception p0

    .line 65
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    throw v1

    .line 71
    :cond_0
    :goto_0
    monitor-exit v0

    .line 72
    goto :goto_2

    .line 73
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    throw p0

    .line 75
    :cond_1
    :goto_2
    sget-object p0, LD3/a;->m:LD3/a;

    .line 76
    .line 77
    return-object p0
.end method

.method public static b(Landroid/content/Context;)Landroidx/media3/cast/DefaultCastOptionsProvider;
    .locals 5

    .line 1
    :try_start_0
    invoke-static {p0}, LQ3/c;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/U1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/16 v1, 0x80

    .line 10
    .line 11
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/measurement/U1;->b(ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    sget-object v1, LD3/a;->k:LH3/b;

    .line 21
    .line 22
    new-array v2, v0, [Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v3, v1, LH3/b;->a:Ljava/lang/String;

    .line 25
    .line 26
    const-string v4, "Bundle is null"

    .line 27
    .line 28
    invoke-virtual {v1, v4, v2}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :catch_1
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :catch_2
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :catch_3
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :catch_4
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :catch_5
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :catch_6
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    const-string v1, "com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME"

    .line 51
    .line 52
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    if-eqz p0, :cond_1

    .line 57
    .line 58
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-class v1, Landroidx/media3/cast/DefaultCastOptionsProvider;

    .line 63
    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    new-array v1, v0, [Ljava/lang/Class;

    .line 69
    .line 70
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    new-array v0, v0, [Ljava/lang/Object;

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    check-cast p0, Landroidx/media3/cast/DefaultCastOptionsProvider;

    .line 81
    .line 82
    return-object p0

    .line 83
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    const-string v0, "The fully qualified name of the implementation of OptionsProvider must be provided as a metadata in the AndroidManifest.xml with key com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME."

    .line 86
    .line 87
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 92
    .line 93
    const-string v1, "Failed to initialize CastContext."

    .line 94
    .line 95
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    throw v0
.end method
