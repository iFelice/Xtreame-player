.class final Lcom/google/ads/interactivemedia/v3/impl/zzah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/zzbh;


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzak;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzb()Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzc()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v4, v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->adData:Lcom/google/ads/interactivemedia/v3/impl/data/zzc;

    .line 17
    .line 18
    if-nez v4, :cond_1

    .line 19
    .line 20
    :cond_0
    move-object v4, v3

    .line 21
    :cond_1
    sget-object v5, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 22
    .line 23
    sget-object v5, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->activate:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v5, 0x1

    .line 30
    if-eq v1, v5, :cond_1b

    .line 31
    .line 32
    const/4 v5, 0x2

    .line 33
    const-string v6, "adBreakTime"

    .line 34
    .line 35
    if-eq v1, v5, :cond_1a

    .line 36
    .line 37
    const/4 v5, 0x3

    .line 38
    if-eq v1, v5, :cond_19

    .line 39
    .line 40
    const/4 v5, 0x4

    .line 41
    if-eq v1, v5, :cond_18

    .line 42
    .line 43
    const/4 v5, 0x5

    .line 44
    if-eq v1, v5, :cond_17

    .line 45
    .line 46
    const/16 v5, 0xc

    .line 47
    .line 48
    if-eq v1, v5, :cond_16

    .line 49
    .line 50
    const/16 v5, 0x10

    .line 51
    .line 52
    if-eq v1, v5, :cond_15

    .line 53
    .line 54
    const/16 v5, 0x12

    .line 55
    .line 56
    if-eq v1, v5, :cond_14

    .line 57
    .line 58
    const/16 v5, 0x19

    .line 59
    .line 60
    if-eq v1, v5, :cond_12

    .line 61
    .line 62
    const/16 v5, 0x28

    .line 63
    .line 64
    if-eq v1, v5, :cond_11

    .line 65
    .line 66
    const/16 v5, 0x2e

    .line 67
    .line 68
    if-eq v1, v5, :cond_f

    .line 69
    .line 70
    const/16 v5, 0x33

    .line 71
    .line 72
    if-eq v1, v5, :cond_e

    .line 73
    .line 74
    const/16 v5, 0x37

    .line 75
    .line 76
    if-eq v1, v5, :cond_d

    .line 77
    .line 78
    const/16 v5, 0x40

    .line 79
    .line 80
    if-eq v1, v5, :cond_c

    .line 81
    .line 82
    const/16 v5, 0x48

    .line 83
    .line 84
    if-eq v1, v5, :cond_b

    .line 85
    .line 86
    const/16 v5, 0x14

    .line 87
    .line 88
    if-eq v1, v5, :cond_a

    .line 89
    .line 90
    const/16 v5, 0x15

    .line 91
    .line 92
    if-eq v1, v5, :cond_9

    .line 93
    .line 94
    const/16 v5, 0x1f

    .line 95
    .line 96
    if-eq v1, v5, :cond_8

    .line 97
    .line 98
    const/16 v5, 0x20

    .line 99
    .line 100
    if-eq v1, v5, :cond_7

    .line 101
    .line 102
    const/16 v5, 0x30

    .line 103
    .line 104
    if-eq v1, v5, :cond_6

    .line 105
    .line 106
    const/16 v5, 0x31

    .line 107
    .line 108
    if-eq v1, v5, :cond_5

    .line 109
    .line 110
    const/16 v5, 0x4e

    .line 111
    .line 112
    if-eq v1, v5, :cond_4

    .line 113
    .line 114
    const/16 v5, 0x4f

    .line 115
    .line 116
    if-eq v1, v5, :cond_2

    .line 117
    .line 118
    packed-switch v1, :pswitch_data_0

    .line 119
    .line 120
    .line 121
    packed-switch v1, :pswitch_data_1

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :pswitch_0
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 126
    .line 127
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 128
    .line 129
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 130
    .line 131
    invoke-direct {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :pswitch_1
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 139
    .line 140
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 141
    .line 142
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->SKIPPABLE_STATE_CHANGED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 143
    .line 144
    invoke-direct {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :pswitch_2
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 152
    .line 153
    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->SKIPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 154
    .line 155
    invoke-direct {v1, v4, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 156
    .line 157
    .line 158
    iget-wide v2, v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->seekTime:D

    .line 159
    .line 160
    iput-wide v2, v1, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zzg:D

    .line 161
    .line 162
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 163
    .line 164
    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :pswitch_3
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 169
    .line 170
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_PROGRESS:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 171
    .line 172
    invoke-direct {v1, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 173
    .line 174
    .line 175
    new-instance v3, Lcom/google/ads/interactivemedia/v3/impl/zzh;

    .line 176
    .line 177
    iget-wide v6, v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->currentTime:D

    .line 178
    .line 179
    iget-wide v8, v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->duration:D

    .line 180
    .line 181
    iget v10, v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->adPosition:I

    .line 182
    .line 183
    iget v11, v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->totalAds:I

    .line 184
    .line 185
    iget-wide v12, v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->adBreakDuration:D

    .line 186
    .line 187
    iget-wide v14, v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->adPeriodDuration:D

    .line 188
    .line 189
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->adsDurationsMs:Ljava/util/List;

    .line 190
    .line 191
    move-object v5, v3

    .line 192
    move-object/from16 v16, v2

    .line 193
    .line 194
    invoke-direct/range {v5 .. v16}, Lcom/google/ads/interactivemedia/v3/impl/zzh;-><init>(DDIIDDLjava/util/List;)V

    .line 195
    .line 196
    .line 197
    iput-object v3, v1, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zze:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    .line 198
    .line 199
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 200
    .line 201
    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :pswitch_4
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 206
    .line 207
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 208
    .line 209
    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_PERIOD_STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 210
    .line 211
    invoke-direct {v2, v4, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :pswitch_5
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 219
    .line 220
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 221
    .line 222
    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_PERIOD_ENDED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 223
    .line 224
    invoke-direct {v2, v4, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :cond_2
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 232
    .line 233
    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ICON_TAPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 234
    .line 235
    invoke-direct {v1, v4, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 236
    .line 237
    .line 238
    if-eqz v2, :cond_3

    .line 239
    .line 240
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->iconClickFallbackImages:Ljava/util/List;

    .line 241
    .line 242
    iput-object v2, v1, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zzf:Ljava/util/List;

    .line 243
    .line 244
    :cond_3
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 245
    .line 246
    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :cond_4
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 251
    .line 252
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 253
    .line 254
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->TAPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 255
    .line 256
    invoke-direct {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 260
    .line 261
    .line 262
    return-void

    .line 263
    :cond_5
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 264
    .line 265
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 266
    .line 267
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->MIDPOINT:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 268
    .line 269
    invoke-direct {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    :cond_6
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 277
    .line 278
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->LOG:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 279
    .line 280
    invoke-direct {v1, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 281
    .line 282
    .line 283
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->logData:Lcom/google/ads/interactivemedia/v3/impl/data/zzbt;

    .line 284
    .line 285
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbt;->constructMap()Ljava/util/Map;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    iput-object v2, v1, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zzc:Ljava/util/Map;

    .line 290
    .line 291
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 292
    .line 293
    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 294
    .line 295
    .line 296
    return-void

    .line 297
    :cond_7
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 298
    .line 299
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 300
    .line 301
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->FIRST_QUARTILE:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 302
    .line 303
    invoke-direct {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 307
    .line 308
    .line 309
    return-void

    .line 310
    :cond_8
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 311
    .line 312
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->PLAY:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    .line 313
    .line 314
    iget v4, v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->errorCode:I

    .line 315
    .line 316
    iget-object v5, v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->errorMessage:Ljava/lang/String;

    .line 317
    .line 318
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->innerError:Ljava/lang/String;

    .line 319
    .line 320
    invoke-static {v5, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    invoke-static {v1, v3, v4, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzi(Lcom/google/ads/interactivemedia/v3/impl/zzak;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V

    .line 325
    .line 326
    .line 327
    return-void

    .line 328
    :cond_9
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 329
    .line 330
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 331
    .line 332
    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CONTENT_RESUME_REQUESTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 333
    .line 334
    invoke-direct {v2, v4, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 338
    .line 339
    .line 340
    return-void

    .line 341
    :cond_a
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 342
    .line 343
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 344
    .line 345
    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CONTENT_PAUSE_REQUESTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 346
    .line 347
    invoke-direct {v2, v4, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 351
    .line 352
    .line 353
    return-void

    .line 354
    :cond_b
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 355
    .line 356
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 357
    .line 358
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->THIRD_QUARTILE:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 359
    .line 360
    invoke-direct {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 364
    .line 365
    .line 366
    return-void

    .line 367
    :cond_c
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 368
    .line 369
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 370
    .line 371
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->RESUMED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 372
    .line 373
    invoke-direct {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 377
    .line 378
    .line 379
    return-void

    .line 380
    :cond_d
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 381
    .line 382
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 383
    .line 384
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->PAUSED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 385
    .line 386
    invoke-direct {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 390
    .line 391
    .line 392
    return-void

    .line 393
    :cond_e
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 394
    .line 395
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->url:Ljava/lang/String;

    .line 396
    .line 397
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzn(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    return-void

    .line 401
    :cond_f
    if-eqz v4, :cond_10

    .line 402
    .line 403
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 404
    .line 405
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 406
    .line 407
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->LOADED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 408
    .line 409
    invoke-direct {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 413
    .line 414
    .line 415
    return-void

    .line 416
    :cond_10
    const-string v1, "Ad loaded message requires adData"

    .line 417
    .line 418
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzfk;->zza(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 422
    .line 423
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    .line 424
    .line 425
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 426
    .line 427
    const-string v4, "Ad loaded message did not contain adData."

    .line 428
    .line 429
    invoke-static {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzj(Lcom/google/ads/interactivemedia/v3/impl/zzak;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    return-void

    .line 433
    :cond_11
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 434
    .line 435
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 436
    .line 437
    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ICON_FALLBACK_IMAGE_CLOSED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 438
    .line 439
    invoke-direct {v2, v4, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 443
    .line 444
    .line 445
    return-void

    .line 446
    :cond_12
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 447
    .line 448
    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CUEPOINTS_CHANGED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 449
    .line 450
    invoke-direct {v1, v4, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 451
    .line 452
    .line 453
    new-instance v3, Ljava/util/ArrayList;

    .line 454
    .line 455
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .line 457
    .line 458
    iput-object v3, v1, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zzd:Ljava/util/List;

    .line 459
    .line 460
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->cuepoints:Ljava/util/List;

    .line 461
    .line 462
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 467
    .line 468
    .line 469
    move-result v3

    .line 470
    if-eqz v3, :cond_13

    .line 471
    .line 472
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v3

    .line 476
    check-cast v3, Lcom/google/ads/interactivemedia/v3/impl/data/zzbf;

    .line 477
    .line 478
    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zzd:Ljava/util/List;

    .line 479
    .line 480
    new-instance v11, Lcom/google/ads/interactivemedia/v3/impl/zzas;

    .line 481
    .line 482
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbf;->start()D

    .line 483
    .line 484
    .line 485
    move-result-wide v6

    .line 486
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbf;->end()D

    .line 487
    .line 488
    .line 489
    move-result-wide v8

    .line 490
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbf;->played()Z

    .line 491
    .line 492
    .line 493
    move-result v10

    .line 494
    move-object v5, v11

    .line 495
    invoke-direct/range {v5 .. v10}, Lcom/google/ads/interactivemedia/v3/impl/zzas;-><init>(DDZ)V

    .line 496
    .line 497
    .line 498
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    goto :goto_0

    .line 502
    :cond_13
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 503
    .line 504
    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 505
    .line 506
    .line 507
    return-void

    .line 508
    :cond_14
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 509
    .line 510
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 511
    .line 512
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 513
    .line 514
    invoke-direct {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 518
    .line 519
    .line 520
    return-void

    .line 521
    :cond_15
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 522
    .line 523
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 524
    .line 525
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CLICKED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 526
    .line 527
    invoke-direct {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 531
    .line 532
    .line 533
    return-void

    .line 534
    :cond_16
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 535
    .line 536
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 537
    .line 538
    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 539
    .line 540
    invoke-direct {v2, v4, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 544
    .line 545
    .line 546
    return-void

    .line 547
    :cond_17
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 548
    .line 549
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BUFFERING:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 550
    .line 551
    invoke-direct {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 552
    .line 553
    .line 554
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 555
    .line 556
    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 557
    .line 558
    .line 559
    return-void

    .line 560
    :cond_18
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 561
    .line 562
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 563
    .line 564
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 565
    .line 566
    invoke-direct {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 570
    .line 571
    .line 572
    return-void

    .line 573
    :cond_19
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 574
    .line 575
    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_READY:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 576
    .line 577
    invoke-direct {v1, v4, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 578
    .line 579
    .line 580
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->adBreakTime:Ljava/lang/String;

    .line 581
    .line 582
    invoke-static {v6, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->zze(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzrp;

    .line 583
    .line 584
    .line 585
    move-result-object v2

    .line 586
    iput-object v2, v1, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zzc:Ljava/util/Map;

    .line 587
    .line 588
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 589
    .line 590
    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 591
    .line 592
    .line 593
    return-void

    .line 594
    :cond_1a
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 595
    .line 596
    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_FETCH_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 597
    .line 598
    invoke-direct {v1, v4, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 599
    .line 600
    .line 601
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->adBreakTime:Ljava/lang/String;

    .line 602
    .line 603
    invoke-static {v6, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->zze(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzrp;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    iput-object v2, v1, Lcom/google/ads/interactivemedia/v3/impl/zzag;->zzc:Ljava/util/Map;

    .line 608
    .line 609
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 610
    .line 611
    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 612
    .line 613
    .line 614
    return-void

    .line 615
    :cond_1b
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/zzah;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 616
    .line 617
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/zzag;

    .line 618
    .line 619
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_ENDED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 620
    .line 621
    invoke-direct {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzag;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/zzc;)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzag;)V

    .line 625
    .line 626
    .line 627
    return-void

    .line 628
    nop

    .line 629
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
