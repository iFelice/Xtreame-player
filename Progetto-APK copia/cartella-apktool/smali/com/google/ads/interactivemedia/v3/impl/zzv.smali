.class final Lcom/google/ads/interactivemedia/v3/impl/zzv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/zzbh;


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzd()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v13

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzb()Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzc()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    move-object v14, v2

    .line 16
    check-cast v14, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;

    .line 17
    .line 18
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->activate:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/16 v2, 0xb

    .line 25
    .line 26
    const-wide/16 v3, 0xc8

    .line 27
    .line 28
    const-string v5, "Request not found for session id: "

    .line 29
    .line 30
    if-eq v1, v2, :cond_5

    .line 31
    .line 32
    const/16 v2, 0x1f

    .line 33
    .line 34
    if-eq v1, v2, :cond_2

    .line 35
    .line 36
    const/16 v2, 0x47

    .line 37
    .line 38
    if-eq v1, v2, :cond_0

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object v11, v14, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->streamId:Ljava/lang/String;

    .line 42
    .line 43
    iget-boolean v12, v14, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->monitorAppLifecycle:Z

    .line 44
    .line 45
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 46
    .line 47
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzb(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    move-object v10, v2

    .line 52
    check-cast v10, Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzm(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    move-object v15, v1

    .line 63
    check-cast v15, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    .line 64
    .line 65
    if-nez v15, :cond_1

    .line 66
    .line 67
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 68
    .line 69
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzd(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/impl/zzat;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    new-instance v3, Lcom/google/ads/interactivemedia/v3/impl/zzd;

    .line 78
    .line 79
    new-instance v4, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 80
    .line 81
    sget-object v6, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    .line 82
    .line 83
    sget-object v7, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 84
    .line 85
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-direct {v4, v6, v7, v2}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v2, Ljava/lang/Object;

    .line 93
    .line 94
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-direct {v3, v4, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzd;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzat;->zzc(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 101
    .line 102
    .line 103
    move-object v2, v14

    .line 104
    goto/16 :goto_0

    .line 105
    .line 106
    :cond_1
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 107
    .line 108
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzf(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/impl/zzbt;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-interface {v15}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->getContentUrl()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzc(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 120
    .line 121
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzf(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/impl/zzbt;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    const/4 v2, 0x1

    .line 126
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzd(Z)V

    .line 127
    .line 128
    .line 129
    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 130
    .line 131
    new-instance v8, Lcom/google/ads/interactivemedia/v3/impl/zzaa;

    .line 132
    .line 133
    new-instance v7, Lcom/google/ads/interactivemedia/v3/impl/zzby;

    .line 134
    .line 135
    invoke-static {v9}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zze(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    new-instance v5, Lcom/google/ads/interactivemedia/v3/impl/zzcd;

    .line 140
    .line 141
    invoke-static {v9}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zze(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzb()Landroid/webkit/WebView;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-interface {v10}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-direct {v5, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzcd;-><init>(Landroid/webkit/WebView;Landroid/view/ViewGroup;)V

    .line 154
    .line 155
    .line 156
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 157
    .line 158
    invoke-interface {v15}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getManifestSuffix()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v16

    .line 162
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzf(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/impl/zzbt;

    .line 163
    .line 164
    .line 165
    move-result-object v17

    .line 166
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzat;

    .line 167
    .line 168
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzh(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-direct {v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzat;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzfd;)V

    .line 173
    .line 174
    .line 175
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 176
    .line 177
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzi(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/internal/zzuv;

    .line 178
    .line 179
    .line 180
    move-result-object v18

    .line 181
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zza(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Landroid/content/Context;

    .line 182
    .line 183
    .line 184
    move-result-object v19

    .line 185
    new-instance v20, Lcom/google/ads/interactivemedia/v3/impl/zzcb;

    .line 186
    .line 187
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzar;

    .line 188
    .line 189
    move-object/from16 p1, v2

    .line 190
    .line 191
    invoke-interface {v10}, Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;->getVideoStreamPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzar;-><init>(Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;J)V

    .line 196
    .line 197
    .line 198
    move-object/from16 v21, v1

    .line 199
    .line 200
    move-object/from16 v1, v20

    .line 201
    .line 202
    move-object/from16 v22, p1

    .line 203
    .line 204
    move-object v2, v13

    .line 205
    move-object v3, v6

    .line 206
    move-object/from16 v4, v22

    .line 207
    .line 208
    move-object/from16 v23, v5

    .line 209
    .line 210
    move-object v5, v10

    .line 211
    move-object/from16 p1, v14

    .line 212
    .line 213
    move-object v14, v6

    .line 214
    move-object/from16 v6, v16

    .line 215
    .line 216
    move-object/from16 v16, v7

    .line 217
    .line 218
    move-object/from16 v7, v21

    .line 219
    .line 220
    move-object v0, v8

    .line 221
    move-object/from16 v8, v23

    .line 222
    .line 223
    move-object/from16 v24, v9

    .line 224
    .line 225
    move-object/from16 v9, v19

    .line 226
    .line 227
    invoke-direct/range {v1 .. v9}, Lcom/google/ads/interactivemedia/v3/impl/zzcb;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzbi;Lcom/google/ads/interactivemedia/v3/impl/zzat;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzar;Lcom/google/ads/interactivemedia/v3/impl/zzcd;Landroid/content/Context;)V

    .line 228
    .line 229
    .line 230
    new-instance v6, Lcom/google/ads/interactivemedia/v3/impl/zzb;

    .line 231
    .line 232
    invoke-interface {v10}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-direct {v6, v13, v14, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzb;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzbi;Landroid/view/View;)V

    .line 237
    .line 238
    .line 239
    move-object/from16 v1, v16

    .line 240
    .line 241
    move-object v3, v14

    .line 242
    move-object v4, v10

    .line 243
    move-object/from16 v5, v20

    .line 244
    .line 245
    move-object/from16 v7, v17

    .line 246
    .line 247
    move-object/from16 v8, v22

    .line 248
    .line 249
    move-object/from16 v9, v18

    .line 250
    .line 251
    move-object/from16 v10, v19

    .line 252
    .line 253
    invoke-direct/range {v1 .. v12}, Lcom/google/ads/interactivemedia/v3/impl/zzby;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzba;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;Lcom/google/ads/interactivemedia/v3/impl/zzcb;Lcom/google/ads/interactivemedia/v3/impl/zzb;Lcom/google/ads/interactivemedia/v3/impl/zzbt;Lcom/google/ads/interactivemedia/v3/impl/zzat;Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 254
    .line 255
    .line 256
    invoke-interface {v15}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->getUserRequestContext()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    move-object/from16 v2, v16

    .line 261
    .line 262
    invoke-direct {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzaa;-><init>(Lcom/google/ads/interactivemedia/v3/api/StreamManager;Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    move-object/from16 v1, v24

    .line 266
    .line 267
    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzn(Lcom/google/ads/interactivemedia/v3/impl/zzy;Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V

    .line 268
    .line 269
    .line 270
    move-object/from16 v0, p0

    .line 271
    .line 272
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 273
    .line 274
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzh(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-virtual {v1, v13}, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzc(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzahj;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzahj;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzahh;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzady;->zzaz()Lcom/google/ads/interactivemedia/v3/internal/zzadu;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/zzahg;

    .line 291
    .line 292
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzahh;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzahg;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 297
    .line 298
    .line 299
    move-result-wide v4

    .line 300
    invoke-virtual {v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzahg;->zza(J)Lcom/google/ads/interactivemedia/v3/internal/zzahg;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zzal()Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/zzahh;

    .line 308
    .line 309
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zzaj(Lcom/google/ads/interactivemedia/v3/internal/zzady;)Lcom/google/ads/interactivemedia/v3/internal/zzadu;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzahj;->zzg(Lcom/google/ads/interactivemedia/v3/internal/zzahg;)Lcom/google/ads/interactivemedia/v3/internal/zzahj;

    .line 313
    .line 314
    .line 315
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 316
    .line 317
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzh(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-virtual {v1, v13}, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zze(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    move-object/from16 v2, p1

    .line 325
    .line 326
    :goto_0
    iget-object v1, v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->streamId:Ljava/lang/String;

    .line 327
    .line 328
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    const-string v2, "Stream initialized with streamId: "

    .line 333
    .line 334
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzfk;->zzc(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    return-void

    .line 342
    :cond_2
    move-object v2, v14

    .line 343
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    .line 344
    .line 345
    iget v3, v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->errorCode:I

    .line 346
    .line 347
    iget-object v4, v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->errorMessage:Ljava/lang/String;

    .line 348
    .line 349
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->innerError:Ljava/lang/String;

    .line 350
    .line 351
    invoke-static {v4, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 356
    .line 357
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzl(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Ljava/util/Map;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    if-eqz v4, :cond_3

    .line 366
    .line 367
    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 368
    .line 369
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzl(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Ljava/util/Map;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    check-cast v4, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    .line 378
    .line 379
    invoke-interface {v4}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->getUserRequestContext()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v4

    .line 383
    goto :goto_1

    .line 384
    :cond_3
    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 385
    .line 386
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzm(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Ljava/util/Map;

    .line 387
    .line 388
    .line 389
    move-result-object v4

    .line 390
    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    if-eqz v4, :cond_4

    .line 395
    .line 396
    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 397
    .line 398
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzm(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Ljava/util/Map;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    check-cast v4, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    .line 407
    .line 408
    invoke-interface {v4}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->getUserRequestContext()Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    goto :goto_1

    .line 413
    :cond_4
    new-instance v4, Ljava/lang/Object;

    .line 414
    .line 415
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 416
    .line 417
    .line 418
    :goto_1
    new-instance v5, Lcom/google/ads/interactivemedia/v3/impl/zzd;

    .line 419
    .line 420
    new-instance v6, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 421
    .line 422
    invoke-direct {v6, v1, v3, v2}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V

    .line 423
    .line 424
    .line 425
    invoke-direct {v5, v6, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzd;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    .line 426
    .line 427
    .line 428
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 429
    .line 430
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzd(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/impl/zzat;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    invoke-virtual {v1, v5}, Lcom/google/ads/interactivemedia/v3/impl/zzat;->zzc(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 435
    .line 436
    .line 437
    return-void

    .line 438
    :cond_5
    move-object v2, v14

    .line 439
    if-nez v2, :cond_8

    .line 440
    .line 441
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 442
    .line 443
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    .line 444
    .line 445
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 446
    .line 447
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzl(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Ljava/util/Map;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    if-eqz v1, :cond_6

    .line 456
    .line 457
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 458
    .line 459
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzl(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Ljava/util/Map;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    .line 468
    .line 469
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->getUserRequestContext()Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    goto :goto_2

    .line 474
    :cond_6
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 475
    .line 476
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzm(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Ljava/util/Map;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    if-eqz v1, :cond_7

    .line 485
    .line 486
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 487
    .line 488
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzm(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Ljava/util/Map;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    .line 497
    .line 498
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->getUserRequestContext()Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    goto :goto_2

    .line 503
    :cond_7
    new-instance v1, Ljava/lang/Object;

    .line 504
    .line 505
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 506
    .line 507
    .line 508
    :goto_2
    new-instance v4, Lcom/google/ads/interactivemedia/v3/impl/zzd;

    .line 509
    .line 510
    new-instance v5, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 511
    .line 512
    const-string v6, "adsLoaded message did not contain cue points."

    .line 513
    .line 514
    invoke-direct {v5, v2, v3, v6}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    invoke-direct {v4, v5, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzd;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 521
    .line 522
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzd(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/impl/zzat;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    invoke-virtual {v1, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzat;->zzc(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 527
    .line 528
    .line 529
    return-void

    .line 530
    :cond_8
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 531
    .line 532
    iget-object v6, v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->adCuePoints:Ljava/util/List;

    .line 533
    .line 534
    iget-object v7, v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->internalCuePoints:Ljava/util/SortedSet;

    .line 535
    .line 536
    iget-boolean v12, v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->monitorAppLifecycle:Z

    .line 537
    .line 538
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzb(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    .line 539
    .line 540
    .line 541
    move-result-object v2

    .line 542
    move-object v8, v2

    .line 543
    check-cast v8, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    .line 544
    .line 545
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzl(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Ljava/util/Map;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    move-object v14, v1

    .line 554
    check-cast v14, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    .line 555
    .line 556
    if-nez v14, :cond_9

    .line 557
    .line 558
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 559
    .line 560
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzd(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/impl/zzat;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    new-instance v3, Lcom/google/ads/interactivemedia/v3/impl/zzd;

    .line 569
    .line 570
    new-instance v4, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 571
    .line 572
    sget-object v6, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    .line 573
    .line 574
    sget-object v7, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 575
    .line 576
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    invoke-direct {v4, v6, v7, v2}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    new-instance v2, Ljava/lang/Object;

    .line 584
    .line 585
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 586
    .line 587
    .line 588
    invoke-direct {v3, v4, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzd;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzat;->zzc(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 592
    .line 593
    .line 594
    return-void

    .line 595
    :cond_9
    invoke-interface {v14}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getContentProgressProvider()Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    const/4 v2, 0x0

    .line 600
    if-eqz v1, :cond_a

    .line 601
    .line 602
    new-instance v5, Lcom/google/ads/interactivemedia/v3/impl/zzar;

    .line 603
    .line 604
    invoke-direct {v5, v1, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzar;-><init>(Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;J)V

    .line 605
    .line 606
    .line 607
    goto :goto_3

    .line 608
    :cond_a
    move-object v5, v2

    .line 609
    :goto_3
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 610
    .line 611
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzf(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/impl/zzbt;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    invoke-interface {v14}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->getContentUrl()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v3

    .line 619
    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzbt;->zzc(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    if-eqz v7, :cond_b

    .line 623
    .line 624
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    .line 625
    .line 626
    .line 627
    move-result v1

    .line 628
    if-nez v1, :cond_b

    .line 629
    .line 630
    if-nez v5, :cond_b

    .line 631
    .line 632
    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 633
    .line 634
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->PLAY:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    .line 635
    .line 636
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->PLAYLIST_NO_CONTENT_TRACKING:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 637
    .line 638
    const-string v4, "Unable to handle cue points, no content progress provider configured."

    .line 639
    .line 640
    invoke-direct {v2, v1, v3, v4}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    :cond_b
    if-eqz v2, :cond_c

    .line 644
    .line 645
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 646
    .line 647
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzd(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/impl/zzat;

    .line 648
    .line 649
    .line 650
    move-result-object v1

    .line 651
    new-instance v3, Lcom/google/ads/interactivemedia/v3/impl/zzd;

    .line 652
    .line 653
    invoke-interface {v14}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->getUserRequestContext()Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v4

    .line 657
    invoke-direct {v3, v2, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzd;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzat;->zzc(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 661
    .line 662
    .line 663
    return-void

    .line 664
    :cond_c
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 665
    .line 666
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zze(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 667
    .line 668
    .line 669
    move-result-object v2

    .line 670
    new-instance v3, Lcom/google/ads/interactivemedia/v3/impl/zzcd;

    .line 671
    .line 672
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zze(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzb()Landroid/webkit/WebView;

    .line 677
    .line 678
    .line 679
    move-result-object v1

    .line 680
    invoke-interface {v8}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    .line 681
    .line 682
    .line 683
    move-result-object v4

    .line 684
    invoke-direct {v3, v1, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzcd;-><init>(Landroid/webkit/WebView;Landroid/view/ViewGroup;)V

    .line 685
    .line 686
    .line 687
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 688
    .line 689
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzf(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/impl/zzbt;

    .line 690
    .line 691
    .line 692
    move-result-object v9

    .line 693
    new-instance v10, Lcom/google/ads/interactivemedia/v3/impl/zzat;

    .line 694
    .line 695
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzh(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    .line 696
    .line 697
    .line 698
    move-result-object v1

    .line 699
    invoke-direct {v10, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzat;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzfd;)V

    .line 700
    .line 701
    .line 702
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 703
    .line 704
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzi(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/internal/zzuv;

    .line 705
    .line 706
    .line 707
    move-result-object v11

    .line 708
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zza(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Landroid/content/Context;

    .line 709
    .line 710
    .line 711
    move-result-object v15

    .line 712
    move-object v1, v13

    .line 713
    move-object v4, v8

    .line 714
    move-object v8, v9

    .line 715
    move-object v9, v10

    .line 716
    move-object v10, v11

    .line 717
    move-object v11, v15

    .line 718
    invoke-static/range {v1 .. v12}, Lcom/google/ads/interactivemedia/v3/impl/zzz;->zza(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzba;Lcom/google/ads/interactivemedia/v3/impl/zzcd;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Lcom/google/ads/interactivemedia/v3/impl/zzar;Ljava/util/List;Ljava/util/SortedSet;Lcom/google/ads/interactivemedia/v3/impl/zzbt;Lcom/google/ads/interactivemedia/v3/impl/zzat;Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Z)Lcom/google/ads/interactivemedia/v3/impl/zzz;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 723
    .line 724
    new-instance v3, Lcom/google/ads/interactivemedia/v3/impl/zzaa;

    .line 725
    .line 726
    invoke-interface {v14}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->getUserRequestContext()Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v4

    .line 730
    invoke-direct {v3, v1, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzaa;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdsManager;Ljava/lang/Object;)V

    .line 731
    .line 732
    .line 733
    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzn(Lcom/google/ads/interactivemedia/v3/impl/zzy;Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V

    .line 734
    .line 735
    .line 736
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 737
    .line 738
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzh(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    .line 739
    .line 740
    .line 741
    move-result-object v1

    .line 742
    invoke-virtual {v1, v13}, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzc(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzahj;

    .line 743
    .line 744
    .line 745
    move-result-object v1

    .line 746
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzahj;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzahh;

    .line 747
    .line 748
    .line 749
    move-result-object v2

    .line 750
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzady;->zzaz()Lcom/google/ads/interactivemedia/v3/internal/zzadu;

    .line 751
    .line 752
    .line 753
    move-result-object v2

    .line 754
    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/zzahg;

    .line 755
    .line 756
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzahh;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzahg;

    .line 757
    .line 758
    .line 759
    move-result-object v3

    .line 760
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 761
    .line 762
    .line 763
    move-result-wide v4

    .line 764
    invoke-virtual {v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzahg;->zza(J)Lcom/google/ads/interactivemedia/v3/internal/zzahg;

    .line 765
    .line 766
    .line 767
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zzal()Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 768
    .line 769
    .line 770
    move-result-object v3

    .line 771
    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/zzahh;

    .line 772
    .line 773
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zzaj(Lcom/google/ads/interactivemedia/v3/internal/zzady;)Lcom/google/ads/interactivemedia/v3/internal/zzadu;

    .line 774
    .line 775
    .line 776
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzahj;->zzg(Lcom/google/ads/interactivemedia/v3/internal/zzahg;)Lcom/google/ads/interactivemedia/v3/internal/zzahj;

    .line 777
    .line 778
    .line 779
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 780
    .line 781
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzh(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    .line 782
    .line 783
    .line 784
    move-result-object v1

    .line 785
    invoke-virtual {v1, v13}, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zze(Ljava/lang/String;)V

    .line 786
    .line 787
    .line 788
    return-void
.end method
