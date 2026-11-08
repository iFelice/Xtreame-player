.class public abstract Lcom/google/android/gms/internal/ads/bF;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/yG;->zza:I

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/bF;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    throw v1
.end method

.method public static a()V
    .locals 14

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/rE;->b:Lcom/google/android/gms/internal/ads/rE;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/eF;->a:Lcom/google/android/gms/internal/ads/eF;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rE;->d(Lcom/google/android/gms/internal/ads/EE;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/eF;->b:Lcom/google/android/gms/internal/ads/zE;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rE;->c(Lcom/google/android/gms/internal/ads/zE;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcom/google/android/gms/internal/ads/UE;->a:Lcom/google/android/gms/internal/ads/UE;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rE;->d(Lcom/google/android/gms/internal/ads/EE;)V

    .line 16
    .line 17
    .line 18
    sget v1, Lcom/google/android/gms/internal/ads/XE;->f:I

    .line 19
    .line 20
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->f0(I)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    sget-object v2, Lcom/google/android/gms/internal/ads/iF;->a:Lcom/google/android/gms/internal/ads/WD;

    .line 27
    .line 28
    sget-object v2, Lcom/google/android/gms/internal/ads/sE;->b:Lcom/google/android/gms/internal/ads/sE;

    .line 29
    .line 30
    sget-object v3, Lcom/google/android/gms/internal/ads/iF;->c:Lcom/google/android/gms/internal/ads/wE;

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/sE;->h(Lcom/google/android/gms/internal/ads/wE;)V

    .line 33
    .line 34
    .line 35
    sget-object v3, Lcom/google/android/gms/internal/ads/iF;->d:Lcom/google/android/gms/internal/ads/uE;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/sE;->g(Lcom/google/android/gms/internal/ads/uE;)V

    .line 38
    .line 39
    .line 40
    sget-object v3, Lcom/google/android/gms/internal/ads/iF;->e:Lcom/google/android/gms/internal/ads/aE;

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/sE;->f(Lcom/google/android/gms/internal/ads/aE;)V

    .line 43
    .line 44
    .line 45
    sget-object v3, Lcom/google/android/gms/internal/ads/iF;->f:Lcom/google/android/gms/internal/ads/YD;

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/sE;->e(Lcom/google/android/gms/internal/ads/YD;)V

    .line 48
    .line 49
    .line 50
    sget-object v3, Lcom/google/android/gms/internal/ads/XE;->a:Lcom/google/android/gms/internal/ads/zE;

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/rE;->c(Lcom/google/android/gms/internal/ads/zE;)V

    .line 53
    .line 54
    .line 55
    sget-object v3, Lcom/google/android/gms/internal/ads/XE;->b:Lcom/google/android/gms/internal/ads/zE;

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/rE;->c(Lcom/google/android/gms/internal/ads/zE;)V

    .line 58
    .line 59
    .line 60
    sget-object v3, Lcom/google/android/gms/internal/ads/qE;->b:Lcom/google/android/gms/internal/ads/qE;

    .line 61
    .line 62
    new-instance v4, Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v5, "HMAC_SHA256_128BITTAG"

    .line 68
    .line 69
    sget-object v6, Lcom/google/android/gms/internal/ads/gF;->a:Lcom/google/android/gms/internal/ads/aF;

    .line 70
    .line 71
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    new-instance v5, Lcom/google/android/gms/internal/ads/xc;

    .line 75
    .line 76
    const/4 v6, 0x0

    .line 77
    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/xc;-><init>(Lcom/google/android/gms/internal/ads/uc;)V

    .line 78
    .line 79
    .line 80
    const/16 v7, 0x20

    .line 81
    .line 82
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/xc;->u(I)V

    .line 83
    .line 84
    .line 85
    const/16 v8, 0x10

    .line 86
    .line 87
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/xc;->z(I)V

    .line 88
    .line 89
    .line 90
    sget-object v9, Lcom/google/android/gms/internal/ads/ZE;->e:Lcom/google/android/gms/internal/ads/ZE;

    .line 91
    .line 92
    iput-object v9, v5, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 93
    .line 94
    sget-object v10, Lcom/google/android/gms/internal/ads/YE;->d:Lcom/google/android/gms/internal/ads/YE;

    .line 95
    .line 96
    iput-object v10, v5, Lcom/google/android/gms/internal/ads/xc;->J:Ljava/lang/Object;

    .line 97
    .line 98
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/xc;->I()Lcom/google/android/gms/internal/ads/aF;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    const-string v11, "HMAC_SHA256_128BITTAG_RAW"

    .line 103
    .line 104
    invoke-virtual {v4, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    new-instance v5, Lcom/google/android/gms/internal/ads/xc;

    .line 108
    .line 109
    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/xc;-><init>(Lcom/google/android/gms/internal/ads/uc;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/xc;->u(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/xc;->z(I)V

    .line 116
    .line 117
    .line 118
    sget-object v11, Lcom/google/android/gms/internal/ads/ZE;->b:Lcom/google/android/gms/internal/ads/ZE;

    .line 119
    .line 120
    iput-object v11, v5, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 121
    .line 122
    iput-object v10, v5, Lcom/google/android/gms/internal/ads/xc;->J:Ljava/lang/Object;

    .line 123
    .line 124
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/xc;->I()Lcom/google/android/gms/internal/ads/aF;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    const-string v12, "HMAC_SHA256_256BITTAG"

    .line 129
    .line 130
    invoke-virtual {v4, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    new-instance v5, Lcom/google/android/gms/internal/ads/xc;

    .line 134
    .line 135
    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/xc;-><init>(Lcom/google/android/gms/internal/ads/uc;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/xc;->u(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/xc;->z(I)V

    .line 142
    .line 143
    .line 144
    iput-object v9, v5, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 145
    .line 146
    iput-object v10, v5, Lcom/google/android/gms/internal/ads/xc;->J:Ljava/lang/Object;

    .line 147
    .line 148
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/xc;->I()Lcom/google/android/gms/internal/ads/aF;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    const-string v10, "HMAC_SHA256_256BITTAG_RAW"

    .line 153
    .line 154
    invoke-virtual {v4, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    new-instance v5, Lcom/google/android/gms/internal/ads/xc;

    .line 158
    .line 159
    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/xc;-><init>(Lcom/google/android/gms/internal/ads/uc;)V

    .line 160
    .line 161
    .line 162
    const/16 v10, 0x40

    .line 163
    .line 164
    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/ads/xc;->u(I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/xc;->z(I)V

    .line 168
    .line 169
    .line 170
    iput-object v11, v5, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 171
    .line 172
    sget-object v12, Lcom/google/android/gms/internal/ads/YE;->f:Lcom/google/android/gms/internal/ads/YE;

    .line 173
    .line 174
    iput-object v12, v5, Lcom/google/android/gms/internal/ads/xc;->J:Ljava/lang/Object;

    .line 175
    .line 176
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/xc;->I()Lcom/google/android/gms/internal/ads/aF;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    const-string v13, "HMAC_SHA512_128BITTAG"

    .line 181
    .line 182
    invoke-virtual {v4, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    new-instance v5, Lcom/google/android/gms/internal/ads/xc;

    .line 186
    .line 187
    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/xc;-><init>(Lcom/google/android/gms/internal/ads/uc;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/ads/xc;->u(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/xc;->z(I)V

    .line 194
    .line 195
    .line 196
    iput-object v9, v5, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 197
    .line 198
    iput-object v12, v5, Lcom/google/android/gms/internal/ads/xc;->J:Ljava/lang/Object;

    .line 199
    .line 200
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/xc;->I()Lcom/google/android/gms/internal/ads/aF;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    const-string v13, "HMAC_SHA512_128BITTAG_RAW"

    .line 205
    .line 206
    invoke-virtual {v4, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    new-instance v5, Lcom/google/android/gms/internal/ads/xc;

    .line 210
    .line 211
    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/xc;-><init>(Lcom/google/android/gms/internal/ads/uc;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/ads/xc;->u(I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/xc;->z(I)V

    .line 218
    .line 219
    .line 220
    iput-object v11, v5, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 221
    .line 222
    iput-object v12, v5, Lcom/google/android/gms/internal/ads/xc;->J:Ljava/lang/Object;

    .line 223
    .line 224
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/xc;->I()Lcom/google/android/gms/internal/ads/aF;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    const-string v11, "HMAC_SHA512_256BITTAG"

    .line 229
    .line 230
    invoke-virtual {v4, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    new-instance v5, Lcom/google/android/gms/internal/ads/xc;

    .line 234
    .line 235
    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/xc;-><init>(Lcom/google/android/gms/internal/ads/uc;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/ads/xc;->u(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/xc;->z(I)V

    .line 242
    .line 243
    .line 244
    iput-object v9, v5, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 245
    .line 246
    iput-object v12, v5, Lcom/google/android/gms/internal/ads/xc;->J:Ljava/lang/Object;

    .line 247
    .line 248
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/xc;->I()Lcom/google/android/gms/internal/ads/aF;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    const-string v11, "HMAC_SHA512_256BITTAG_RAW"

    .line 253
    .line 254
    invoke-virtual {v4, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    const-string v5, "HMAC_SHA512_512BITTAG"

    .line 258
    .line 259
    sget-object v11, Lcom/google/android/gms/internal/ads/gF;->b:Lcom/google/android/gms/internal/ads/aF;

    .line 260
    .line 261
    invoke-virtual {v4, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    new-instance v5, Lcom/google/android/gms/internal/ads/xc;

    .line 265
    .line 266
    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/xc;-><init>(Lcom/google/android/gms/internal/ads/uc;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/ads/xc;->u(I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/ads/xc;->z(I)V

    .line 273
    .line 274
    .line 275
    iput-object v9, v5, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 276
    .line 277
    iput-object v12, v5, Lcom/google/android/gms/internal/ads/xc;->J:Ljava/lang/Object;

    .line 278
    .line 279
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/xc;->I()Lcom/google/android/gms/internal/ads/aF;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    const-string v9, "HMAC_SHA512_512BITTAG_RAW"

    .line 284
    .line 285
    invoke-virtual {v4, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/qE;->c(Ljava/util/Map;)V

    .line 293
    .line 294
    .line 295
    sget-object v4, Lcom/google/android/gms/internal/ads/lE;->b:Lcom/google/android/gms/internal/ads/lE;

    .line 296
    .line 297
    sget-object v5, Lcom/google/android/gms/internal/ads/XE;->e:Lcom/google/android/gms/internal/ads/jE;

    .line 298
    .line 299
    const-class v9, Lcom/google/android/gms/internal/ads/aF;

    .line 300
    .line 301
    invoke-virtual {v4, v5, v9}, Lcom/google/android/gms/internal/ads/lE;->b(Lcom/google/android/gms/internal/ads/kE;Ljava/lang/Class;)V

    .line 302
    .line 303
    .line 304
    sget-object v5, Lcom/google/android/gms/internal/ads/nE;->b:Lcom/google/android/gms/internal/ads/nE;

    .line 305
    .line 306
    sget-object v10, Lcom/google/android/gms/internal/ads/XE;->d:Lcom/google/android/gms/internal/ads/SC;

    .line 307
    .line 308
    invoke-virtual {v5, v10, v9}, Lcom/google/android/gms/internal/ads/nE;->a(Lcom/google/android/gms/internal/ads/SC;Ljava/lang/Class;)V

    .line 309
    .line 310
    .line 311
    sget-object v5, Lcom/google/android/gms/internal/ads/XD;->d:Lcom/google/android/gms/internal/ads/XD;

    .line 312
    .line 313
    sget-object v9, Lcom/google/android/gms/internal/ads/XE;->c:Lcom/google/android/gms/internal/ads/cE;

    .line 314
    .line 315
    invoke-virtual {v5, v9, v1}, Lcom/google/android/gms/internal/ads/XD;->b(Lcom/google/android/gms/internal/ads/cE;I)V

    .line 316
    .line 317
    .line 318
    invoke-static {}, Lcom/google/android/gms/internal/ads/UD;->a()Z

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    if-eqz v1, :cond_0

    .line 323
    .line 324
    return-void

    .line 325
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/PE;->a:Lcom/google/android/gms/internal/ads/jE;

    .line 326
    .line 327
    const/4 v1, 0x1

    .line 328
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->f0(I)Z

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    if-eqz v1, :cond_1

    .line 333
    .line 334
    sget-object v1, Lcom/google/android/gms/internal/ads/hF;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 335
    .line 336
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/sE;->h(Lcom/google/android/gms/internal/ads/wE;)V

    .line 337
    .line 338
    .line 339
    sget-object v1, Lcom/google/android/gms/internal/ads/hF;->b:Lcom/google/android/gms/internal/ads/uE;

    .line 340
    .line 341
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/sE;->g(Lcom/google/android/gms/internal/ads/uE;)V

    .line 342
    .line 343
    .line 344
    sget-object v1, Lcom/google/android/gms/internal/ads/hF;->c:Lcom/google/android/gms/internal/ads/aE;

    .line 345
    .line 346
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/sE;->f(Lcom/google/android/gms/internal/ads/aE;)V

    .line 347
    .line 348
    .line 349
    sget-object v1, Lcom/google/android/gms/internal/ads/hF;->d:Lcom/google/android/gms/internal/ads/YD;

    .line 350
    .line 351
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/sE;->e(Lcom/google/android/gms/internal/ads/YD;)V

    .line 352
    .line 353
    .line 354
    sget-object v1, Lcom/google/android/gms/internal/ads/PE;->a:Lcom/google/android/gms/internal/ads/jE;

    .line 355
    .line 356
    const-class v2, Lcom/google/android/gms/internal/ads/RE;

    .line 357
    .line 358
    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/ads/lE;->b(Lcom/google/android/gms/internal/ads/kE;Ljava/lang/Class;)V

    .line 359
    .line 360
    .line 361
    sget-object v1, Lcom/google/android/gms/internal/ads/PE;->b:Lcom/google/android/gms/internal/ads/zE;

    .line 362
    .line 363
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rE;->c(Lcom/google/android/gms/internal/ads/zE;)V

    .line 364
    .line 365
    .line 366
    sget-object v1, Lcom/google/android/gms/internal/ads/PE;->c:Lcom/google/android/gms/internal/ads/zE;

    .line 367
    .line 368
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rE;->c(Lcom/google/android/gms/internal/ads/zE;)V

    .line 369
    .line 370
    .line 371
    new-instance v0, Ljava/util/HashMap;

    .line 372
    .line 373
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 374
    .line 375
    .line 376
    sget-object v1, Lcom/google/android/gms/internal/ads/gF;->c:Lcom/google/android/gms/internal/ads/RE;

    .line 377
    .line 378
    const-string v2, "AES_CMAC"

    .line 379
    .line 380
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    const-string v2, "AES256_CMAC"

    .line 384
    .line 385
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    new-instance v1, Lcom/google/android/gms/internal/ads/bD;

    .line 389
    .line 390
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/ads/bD;-><init>(Ljava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/bD;->l(I)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/bD;->n(I)V

    .line 397
    .line 398
    .line 399
    sget-object v2, Lcom/google/android/gms/internal/ads/QE;->e:Lcom/google/android/gms/internal/ads/QE;

    .line 400
    .line 401
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 402
    .line 403
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bD;->s()Lcom/google/android/gms/internal/ads/RE;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    const-string v2, "AES256_CMAC_RAW"

    .line 408
    .line 409
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/qE;->c(Ljava/util/Map;)V

    .line 417
    .line 418
    .line 419
    sget-object v0, Lcom/google/android/gms/internal/ads/PE;->d:Lcom/google/android/gms/internal/ads/cE;

    .line 420
    .line 421
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/XD;->a(Lcom/google/android/gms/internal/ads/cE;)V

    .line 422
    .line 423
    .line 424
    return-void

    .line 425
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 426
    .line 427
    const-string v1, "Registering AES CMAC is not supported in FIPS mode"

    .line 428
    .line 429
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    throw v0

    .line 433
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 434
    .line 435
    const-string v1, "Can not use HMAC in FIPS-mode, as BoringCrypto module is not available."

    .line 436
    .line 437
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    throw v0
.end method
