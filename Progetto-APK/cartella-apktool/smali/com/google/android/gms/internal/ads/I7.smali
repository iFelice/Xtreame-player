.class public final Lcom/google/android/gms/internal/ads/I7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/rk;
.implements Lcom/google/android/gms/internal/ads/dC;
.implements Lcom/google/android/gms/internal/ads/LM;


# instance fields
.field public final synthetic G:I

.field public final H:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/I7;->G:I

    .line 4
    const-string v0, "Context can not be null"

    invoke-static {p1, v0}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/I7;->H:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/I7;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/I7;->H:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/KM;)Lcom/google/android/gms/internal/ads/MM;
    .locals 11

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    const/16 v2, 0x23

    .line 6
    .line 7
    const-string v3, "createCodec:"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    if-lt v0, v1, :cond_8

    .line 12
    .line 13
    const/16 v1, 0x1f

    .line 14
    .line 15
    if-lt v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/I7;->H:Landroid/content/Context;

    .line 19
    .line 20
    if-eqz v1, :cond_8

    .line 21
    .line 22
    const/16 v6, 0x1c

    .line 23
    .line 24
    if-lt v0, v6, :cond_8

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v6, "com.amazon.hardware.tv_screen"

    .line 31
    .line 32
    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    goto/16 :goto_8

    .line 39
    .line 40
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/KM;->c:Lcom/google/android/gms/internal/ads/p0;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/va;->b(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    packed-switch v1, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    const-string v6, "camera motion"

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :pswitch_0
    const-string v6, "metadata"

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :pswitch_1
    const-string v6, "image"

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :pswitch_2
    const-string v6, "text"

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :pswitch_3
    const-string v6, "video"

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :pswitch_4
    const-string v6, "audio"

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :pswitch_5
    const-string v6, "default"

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :pswitch_6
    const-string v6, "unknown"

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :pswitch_7
    const-string v6, "none"

    .line 76
    .line 77
    :goto_1
    const-string v7, "Creating an asynchronous MediaCodec adapter for track type "

    .line 78
    .line 79
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    const-string v7, "DMCodecAdapterFactory"

    .line 84
    .line 85
    invoke-static {v7, v6}, Lcom/google/android/gms/internal/ads/Zo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance v6, LJ2/t;

    .line 89
    .line 90
    const/16 v7, 0x9

    .line 91
    .line 92
    invoke-direct {v6, v1, v7}, LJ2/t;-><init>(II)V

    .line 93
    .line 94
    .line 95
    const/4 v1, 0x1

    .line 96
    iput-boolean v1, v6, LJ2/t;->H:Z

    .line 97
    .line 98
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/KM;->a:Lcom/google/android/gms/internal/ads/PM;

    .line 99
    .line 100
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/PM;->a:Ljava/lang/String;

    .line 101
    .line 102
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v7}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 118
    .line 119
    .line 120
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 121
    :try_start_1
    iget-boolean v7, v6, LJ2/t;->H:Z

    .line 122
    .line 123
    if-eqz v7, :cond_4

    .line 124
    .line 125
    iget-object v7, p1, Lcom/google/android/gms/internal/ads/KM;->c:Lcom/google/android/gms/internal/ads/p0;

    .line 126
    .line 127
    const/16 v8, 0x22

    .line 128
    .line 129
    if-ge v0, v8, :cond_2

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_2
    if-ge v0, v2, :cond_3

    .line 133
    .line 134
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/va;->g(Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    if-eqz v7, :cond_4

    .line 141
    .line 142
    :cond_3
    new-instance v4, Lcom/google/android/gms/internal/ads/Xu;

    .line 143
    .line 144
    const/16 v7, 0x1d

    .line 145
    .line 146
    invoke-direct {v4, v3, v7}, Lcom/google/android/gms/internal/ads/Xu;-><init>(Ljava/lang/Object;I)V

    .line 147
    .line 148
    .line 149
    const/4 v7, 0x4

    .line 150
    goto :goto_3

    .line 151
    :cond_4
    :goto_2
    new-instance v7, Lcom/google/android/gms/internal/ads/FM;

    .line 152
    .line 153
    iget-object v8, v6, LJ2/t;->J:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v8, Lcom/google/android/gms/internal/ads/Gz;

    .line 156
    .line 157
    check-cast v8, Lcom/google/android/gms/internal/ads/CM;

    .line 158
    .line 159
    iget v8, v8, Lcom/google/android/gms/internal/ads/CM;->G:I

    .line 160
    .line 161
    new-instance v9, Landroid/os/HandlerThread;

    .line 162
    .line 163
    const-string v10, "ExoPlayer:MediaCodecQueueingThread:"

    .line 164
    .line 165
    invoke-static {v8, v10}, Lcom/google/android/gms/internal/ads/DM;->k(ILjava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    invoke-direct {v9, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-direct {v7, v3, v9}, Lcom/google/android/gms/internal/ads/FM;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V

    .line 173
    .line 174
    .line 175
    move-object v4, v7

    .line 176
    const/4 v7, 0x0

    .line 177
    :goto_3
    new-instance v8, Lcom/google/android/gms/internal/ads/DM;

    .line 178
    .line 179
    iget-object v6, v6, LJ2/t;->I:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v6, Lcom/google/android/gms/internal/ads/Gz;

    .line 182
    .line 183
    check-cast v6, Lcom/google/android/gms/internal/ads/BM;

    .line 184
    .line 185
    iget v6, v6, Lcom/google/android/gms/internal/ads/BM;->G:I

    .line 186
    .line 187
    new-instance v9, Landroid/os/HandlerThread;

    .line 188
    .line 189
    const-string v10, "ExoPlayer:MediaCodecAsyncAdapter:"

    .line 190
    .line 191
    invoke-static {v6, v10}, Lcom/google/android/gms/internal/ads/DM;->k(ILjava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-direct {v9, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-object v6, p1, Lcom/google/android/gms/internal/ads/KM;->e:Lcom/google/android/gms/internal/ads/JM;

    .line 199
    .line 200
    invoke-direct {v8, v3, v9, v4, v6}, Lcom/google/android/gms/internal/ads/DM;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Lcom/google/android/gms/internal/ads/NM;Lcom/google/android/gms/internal/ads/JM;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    .line 202
    .line 203
    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 204
    .line 205
    .line 206
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/KM;->d:Landroid/view/Surface;

    .line 207
    .line 208
    if-nez v4, :cond_5

    .line 209
    .line 210
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/PM;->h:Z

    .line 211
    .line 212
    if-eqz v1, :cond_5

    .line 213
    .line 214
    if-lt v0, v2, :cond_5

    .line 215
    .line 216
    or-int/lit8 v7, v7, 0x8

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :catch_0
    move-exception p1

    .line 220
    goto :goto_5

    .line 221
    :cond_5
    :goto_4
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/KM;->b:Landroid/media/MediaFormat;

    .line 222
    .line 223
    invoke-static {v8, p1, v4, v7}, Lcom/google/android/gms/internal/ads/DM;->j(Lcom/google/android/gms/internal/ads/DM;Landroid/media/MediaFormat;Landroid/view/Surface;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 224
    .line 225
    .line 226
    return-object v8

    .line 227
    :goto_5
    move-object v5, v8

    .line 228
    goto :goto_6

    .line 229
    :catch_1
    move-exception p1

    .line 230
    goto :goto_6

    .line 231
    :catch_2
    move-exception p1

    .line 232
    move-object v3, v5

    .line 233
    :goto_6
    if-nez v5, :cond_6

    .line 234
    .line 235
    if-eqz v3, :cond_7

    .line 236
    .line 237
    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 238
    .line 239
    .line 240
    goto :goto_7

    .line 241
    :cond_6
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/DM;->zzm()V

    .line 242
    .line 243
    .line 244
    :cond_7
    :goto_7
    throw p1

    .line 245
    :cond_8
    :goto_8
    :try_start_3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/KM;->a:Lcom/google/android/gms/internal/ads/PM;

    .line 246
    .line 247
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/PM;->a:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    .line 261
    .line 262
    .line 263
    :try_start_4
    const-string v3, "configureCodec"

    .line 264
    .line 265
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/KM;->d:Landroid/view/Surface;

    .line 269
    .line 270
    if-nez v3, :cond_9

    .line 271
    .line 272
    iget-object v6, p1, Lcom/google/android/gms/internal/ads/KM;->a:Lcom/google/android/gms/internal/ads/PM;

    .line 273
    .line 274
    iget-boolean v6, v6, Lcom/google/android/gms/internal/ads/PM;->h:Z

    .line 275
    .line 276
    if-eqz v6, :cond_9

    .line 277
    .line 278
    if-lt v0, v2, :cond_9

    .line 279
    .line 280
    const/16 v4, 0x8

    .line 281
    .line 282
    goto :goto_9

    .line 283
    :catch_3
    move-exception p1

    .line 284
    goto :goto_a

    .line 285
    :catch_4
    move-exception p1

    .line 286
    goto :goto_a

    .line 287
    :cond_9
    :goto_9
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/KM;->b:Landroid/media/MediaFormat;

    .line 288
    .line 289
    invoke-virtual {v1, v0, v3, v5, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 290
    .line 291
    .line 292
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 293
    .line 294
    .line 295
    const-string v0, "startCodec"

    .line 296
    .line 297
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 301
    .line 302
    .line 303
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 304
    .line 305
    .line 306
    new-instance v0, Lcom/google/android/gms/internal/ads/dN;

    .line 307
    .line 308
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/KM;->e:Lcom/google/android/gms/internal/ads/JM;

    .line 309
    .line 310
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/dN;-><init>(Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/JM;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    .line 311
    .line 312
    .line 313
    return-object v0

    .line 314
    :goto_a
    move-object v5, v1

    .line 315
    goto :goto_b

    .line 316
    :catch_5
    move-exception p1

    .line 317
    goto :goto_b

    .line 318
    :catch_6
    move-exception p1

    .line 319
    :goto_b
    if-eqz v5, :cond_a

    .line 320
    .line 321
    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V

    .line 322
    .line 323
    .line 324
    :cond_a
    throw p1

    .line 325
    :pswitch_data_0
    .packed-switch -0x2
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

.method public final b()Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Cw;->d:LG/c;

    .line 2
    .line 3
    iget-boolean v1, v0, LG/c;->H:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/I7;->H:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_6

    .line 18
    .line 19
    iget-boolean v2, v0, LG/c;->H:Z

    .line 20
    .line 21
    if-nez v2, :cond_5

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    iput-boolean v2, v0, LG/c;->H:Z

    .line 25
    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/Nx;->a()Lcom/google/android/gms/internal/ads/Nx;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v4, Landroid/os/Handler;

    .line 34
    .line 35
    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v5, Lcom/google/android/gms/internal/ads/Dx;

    .line 39
    .line 40
    invoke-direct {v5, v4, v1, v3}, Lcom/google/android/gms/internal/ads/Dx;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/google/android/gms/internal/ads/Nx;)V

    .line 41
    .line 42
    .line 43
    iput-object v5, v3, Lcom/google/android/gms/internal/ads/Nx;->b:Lcom/google/android/gms/internal/ads/Dx;

    .line 44
    .line 45
    sget-object v3, Lcom/google/android/gms/internal/ads/Gx;->J:Lcom/google/android/gms/internal/ads/Gx;

    .line 46
    .line 47
    instance-of v4, v1, Landroid/app/Application;

    .line 48
    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    move-object v5, v1

    .line 52
    check-cast v5, Landroid/app/Application;

    .line 53
    .line 54
    invoke-virtual {v5, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    const-string v3, "uimode"

    .line 58
    .line 59
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Landroid/app/UiModeManager;

    .line 64
    .line 65
    sput-object v3, Lcom/google/android/gms/internal/ads/Cw;->g:Landroid/app/UiModeManager;

    .line 66
    .line 67
    sget-object v3, Lcom/google/android/gms/internal/ads/Sx;->a:Landroid/view/WindowManager;

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 78
    .line 79
    sput v3, Lcom/google/android/gms/internal/ads/Sx;->c:F

    .line 80
    .line 81
    const-string v3, "window"

    .line 82
    .line 83
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Landroid/view/WindowManager;

    .line 88
    .line 89
    sput-object v3, Lcom/google/android/gms/internal/ads/Sx;->a:Landroid/view/WindowManager;

    .line 90
    .line 91
    new-instance v3, Landroid/content/IntentFilter;

    .line 92
    .line 93
    const-string v5, "android.media.action.HDMI_AUDIO_PLUG"

    .line 94
    .line 95
    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    new-instance v5, Lo3/N;

    .line 99
    .line 100
    invoke-direct {v5}, Lo3/N;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    sget-object v3, Lcom/google/android/gms/internal/ads/Mx;->H:Lcom/google/android/gms/internal/ads/Mx;

    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    iput-object v5, v3, Lcom/google/android/gms/internal/ads/Mx;->G:Landroid/content/Context;

    .line 113
    .line 114
    sget-object v3, Lcom/google/android/gms/internal/ads/Fx;->e:Lcom/google/android/gms/internal/ads/Fx;

    .line 115
    .line 116
    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/Fx;->b:Z

    .line 117
    .line 118
    if-nez v5, :cond_5

    .line 119
    .line 120
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/Fx;->c:Lcom/google/android/gms/internal/ads/Jx;

    .line 121
    .line 122
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    if-eqz v4, :cond_2

    .line 126
    .line 127
    check-cast v1, Landroid/app/Application;

    .line 128
    .line 129
    invoke-virtual {v1, v5}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 130
    .line 131
    .line 132
    :cond_2
    iput-object v3, v5, Lcom/google/android/gms/internal/ads/Jx;->I:Lcom/google/android/gms/internal/ads/Ix;

    .line 133
    .line 134
    iput-boolean v2, v5, Lcom/google/android/gms/internal/ads/Jx;->G:Z

    .line 135
    .line 136
    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 137
    .line 138
    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-static {v1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 142
    .line 143
    .line 144
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 145
    .line 146
    const/16 v4, 0x64

    .line 147
    .line 148
    if-ne v1, v4, :cond_3

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/Jx;->b()Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-nez v1, :cond_4

    .line 156
    .line 157
    const/4 v1, 0x0

    .line 158
    goto :goto_1

    .line 159
    :cond_4
    :goto_0
    const/4 v1, 0x1

    .line 160
    :goto_1
    iput-boolean v1, v5, Lcom/google/android/gms/internal/ads/Jx;->H:Z

    .line 161
    .line 162
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/Jx;->a(Z)V

    .line 163
    .line 164
    .line 165
    iget-boolean v1, v5, Lcom/google/android/gms/internal/ads/Jx;->H:Z

    .line 166
    .line 167
    iput-boolean v1, v3, Lcom/google/android/gms/internal/ads/Fx;->d:Z

    .line 168
    .line 169
    iput-boolean v2, v3, Lcom/google/android/gms/internal/ads/Fx;->b:Z

    .line 170
    .line 171
    :cond_5
    iget-boolean v0, v0, LG/c;->H:Z

    .line 172
    .line 173
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    :goto_2
    return-object v0

    .line 178
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 179
    .line 180
    const-string v1, "Application Context cannot be null"

    .line 181
    .line 182
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw v0
.end method

.method public final c(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    const-string v0, "Intent can not be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/I7;->H:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_0
    return v1
.end method

.method public final zza(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/I7;->G:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/I7;->H:Landroid/content/Context;

    packed-switch v0, :pswitch_data_0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/Bj;

    .line 2
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/Bj;->m(Landroid/content/Context;)V

    return-void

    .line 3
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/Bj;

    .line 4
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/Bj;->q(Landroid/content/Context;)V

    return-void

    .line 5
    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/ads/Bj;

    .line 6
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/Bj;->p(Landroid/content/Context;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/l8;->h:Lcom/google/android/gms/internal/ads/f8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Lo3/o;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/I7;->H:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Lf/b;->y0(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/fp;

    .line 2
    .line 3
    sget-object p1, Lcom/google/android/gms/internal/ads/l8;->j:Lcom/google/android/gms/internal/ads/f8;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/I7;->H:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {p1}, Lf/b;->y0(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
