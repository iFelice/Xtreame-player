.class public abstract Lcom/google/android/gms/internal/ads/MC;
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
    invoke-static {}, Lcom/google/android/gms/internal/ads/MC;->a()V
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
    sget-object v1, Lcom/google/android/gms/internal/ads/QC;->a:Lcom/google/android/gms/internal/ads/QC;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rE;->d(Lcom/google/android/gms/internal/ads/EE;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/QC;->b:Lcom/google/android/gms/internal/ads/zE;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rE;->c(Lcom/google/android/gms/internal/ads/zE;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/bF;->a()V

    .line 14
    .line 15
    .line 16
    sget v1, Lcom/google/android/gms/internal/ads/TC;->e:I

    .line 17
    .line 18
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->f0(I)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_8

    .line 23
    .line 24
    sget-object v2, Lcom/google/android/gms/internal/ads/FD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 25
    .line 26
    sget-object v2, Lcom/google/android/gms/internal/ads/sE;->b:Lcom/google/android/gms/internal/ads/sE;

    .line 27
    .line 28
    sget-object v3, Lcom/google/android/gms/internal/ads/FD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/sE;->h(Lcom/google/android/gms/internal/ads/wE;)V

    .line 31
    .line 32
    .line 33
    sget-object v3, Lcom/google/android/gms/internal/ads/FD;->b:Lcom/google/android/gms/internal/ads/uE;

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/sE;->g(Lcom/google/android/gms/internal/ads/uE;)V

    .line 36
    .line 37
    .line 38
    sget-object v3, Lcom/google/android/gms/internal/ads/FD;->c:Lcom/google/android/gms/internal/ads/aE;

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/sE;->f(Lcom/google/android/gms/internal/ads/aE;)V

    .line 41
    .line 42
    .line 43
    sget-object v3, Lcom/google/android/gms/internal/ads/FD;->d:Lcom/google/android/gms/internal/ads/YD;

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/sE;->e(Lcom/google/android/gms/internal/ads/YD;)V

    .line 46
    .line 47
    .line 48
    sget-object v3, Lcom/google/android/gms/internal/ads/TC;->a:Lcom/google/android/gms/internal/ads/zE;

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/rE;->c(Lcom/google/android/gms/internal/ads/zE;)V

    .line 51
    .line 52
    .line 53
    sget-object v3, Lcom/google/android/gms/internal/ads/qE;->b:Lcom/google/android/gms/internal/ads/qE;

    .line 54
    .line 55
    new-instance v4, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v5, "AES128_CTR_HMAC_SHA256"

    .line 61
    .line 62
    sget-object v6, Lcom/google/android/gms/internal/ads/zD;->e:Lcom/google/android/gms/internal/ads/WC;

    .line 63
    .line 64
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    new-instance v5, Lcom/google/android/gms/internal/ads/rs;

    .line 68
    .line 69
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/rs;-><init>()V

    .line 70
    .line 71
    .line 72
    const/16 v6, 0x10

    .line 73
    .line 74
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/rs;->e(I)V

    .line 75
    .line 76
    .line 77
    const/16 v7, 0x20

    .line 78
    .line 79
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/rs;->h(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/rs;->l(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/rs;->j(I)V

    .line 86
    .line 87
    .line 88
    sget-object v8, Lcom/google/android/gms/internal/ads/UC;->d:Lcom/google/android/gms/internal/ads/UC;

    .line 89
    .line 90
    iput-object v8, v5, Lcom/google/android/gms/internal/ads/rs;->K:Ljava/lang/Object;

    .line 91
    .line 92
    sget-object v9, Lcom/google/android/gms/internal/ads/VC;->d:Lcom/google/android/gms/internal/ads/VC;

    .line 93
    .line 94
    iput-object v9, v5, Lcom/google/android/gms/internal/ads/rs;->L:Ljava/lang/Object;

    .line 95
    .line 96
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/rs;->o()Lcom/google/android/gms/internal/ads/WC;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    const-string v10, "AES128_CTR_HMAC_SHA256_RAW"

    .line 101
    .line 102
    invoke-virtual {v4, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    const-string v5, "AES256_CTR_HMAC_SHA256"

    .line 106
    .line 107
    sget-object v10, Lcom/google/android/gms/internal/ads/zD;->f:Lcom/google/android/gms/internal/ads/WC;

    .line 108
    .line 109
    invoke-virtual {v4, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    new-instance v5, Lcom/google/android/gms/internal/ads/rs;

    .line 113
    .line 114
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/rs;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/rs;->e(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/rs;->h(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/rs;->l(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/rs;->j(I)V

    .line 127
    .line 128
    .line 129
    iput-object v8, v5, Lcom/google/android/gms/internal/ads/rs;->K:Ljava/lang/Object;

    .line 130
    .line 131
    iput-object v9, v5, Lcom/google/android/gms/internal/ads/rs;->L:Ljava/lang/Object;

    .line 132
    .line 133
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/rs;->o()Lcom/google/android/gms/internal/ads/WC;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    const-string v8, "AES256_CTR_HMAC_SHA256_RAW"

    .line 138
    .line 139
    invoke-virtual {v4, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/qE;->c(Ljava/util/Map;)V

    .line 147
    .line 148
    .line 149
    sget-object v4, Lcom/google/android/gms/internal/ads/nE;->b:Lcom/google/android/gms/internal/ads/nE;

    .line 150
    .line 151
    sget-object v5, Lcom/google/android/gms/internal/ads/TC;->c:Lcom/google/android/gms/internal/ads/SC;

    .line 152
    .line 153
    const-class v8, Lcom/google/android/gms/internal/ads/WC;

    .line 154
    .line 155
    invoke-virtual {v4, v5, v8}, Lcom/google/android/gms/internal/ads/nE;->a(Lcom/google/android/gms/internal/ads/SC;Ljava/lang/Class;)V

    .line 156
    .line 157
    .line 158
    sget-object v5, Lcom/google/android/gms/internal/ads/lE;->b:Lcom/google/android/gms/internal/ads/lE;

    .line 159
    .line 160
    sget-object v9, Lcom/google/android/gms/internal/ads/TC;->d:Lcom/google/android/gms/internal/ads/jE;

    .line 161
    .line 162
    invoke-virtual {v5, v9, v8}, Lcom/google/android/gms/internal/ads/lE;->b(Lcom/google/android/gms/internal/ads/kE;Ljava/lang/Class;)V

    .line 163
    .line 164
    .line 165
    sget-object v8, Lcom/google/android/gms/internal/ads/XD;->d:Lcom/google/android/gms/internal/ads/XD;

    .line 166
    .line 167
    sget-object v9, Lcom/google/android/gms/internal/ads/TC;->b:Lcom/google/android/gms/internal/ads/cE;

    .line 168
    .line 169
    invoke-virtual {v8, v9, v1}, Lcom/google/android/gms/internal/ads/XD;->b(Lcom/google/android/gms/internal/ads/cE;I)V

    .line 170
    .line 171
    .line 172
    sget v1, Lcom/google/android/gms/internal/ads/dD;->e:I

    .line 173
    .line 174
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->f0(I)Z

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    if-eqz v9, :cond_7

    .line 179
    .line 180
    sget-object v9, Lcom/google/android/gms/internal/ads/JD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 181
    .line 182
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/sE;->h(Lcom/google/android/gms/internal/ads/wE;)V

    .line 183
    .line 184
    .line 185
    sget-object v9, Lcom/google/android/gms/internal/ads/JD;->b:Lcom/google/android/gms/internal/ads/uE;

    .line 186
    .line 187
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/sE;->g(Lcom/google/android/gms/internal/ads/uE;)V

    .line 188
    .line 189
    .line 190
    sget-object v9, Lcom/google/android/gms/internal/ads/JD;->c:Lcom/google/android/gms/internal/ads/aE;

    .line 191
    .line 192
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/sE;->f(Lcom/google/android/gms/internal/ads/aE;)V

    .line 193
    .line 194
    .line 195
    sget-object v9, Lcom/google/android/gms/internal/ads/JD;->d:Lcom/google/android/gms/internal/ads/YD;

    .line 196
    .line 197
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/sE;->e(Lcom/google/android/gms/internal/ads/YD;)V

    .line 198
    .line 199
    .line 200
    sget-object v9, Lcom/google/android/gms/internal/ads/dD;->a:Lcom/google/android/gms/internal/ads/zE;

    .line 201
    .line 202
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/rE;->c(Lcom/google/android/gms/internal/ads/zE;)V

    .line 203
    .line 204
    .line 205
    new-instance v9, Ljava/util/HashMap;

    .line 206
    .line 207
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v10, "AES128_GCM"

    .line 211
    .line 212
    sget-object v11, Lcom/google/android/gms/internal/ads/zD;->a:Lcom/google/android/gms/internal/ads/fD;

    .line 213
    .line 214
    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    new-instance v10, Lcom/google/android/gms/internal/ads/xc;

    .line 218
    .line 219
    const/4 v11, 0x0

    .line 220
    invoke-direct {v10, v11}, Lcom/google/android/gms/internal/ads/xc;-><init>(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/xc;->m()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/xc;->t(I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/xc;->x()V

    .line 230
    .line 231
    .line 232
    sget-object v12, Lcom/google/android/gms/internal/ads/eD;->d:Lcom/google/android/gms/internal/ads/eD;

    .line 233
    .line 234
    iput-object v12, v10, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 235
    .line 236
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/xc;->H()Lcom/google/android/gms/internal/ads/fD;

    .line 237
    .line 238
    .line 239
    move-result-object v10

    .line 240
    const-string v13, "AES128_GCM_RAW"

    .line 241
    .line 242
    invoke-virtual {v9, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    const-string v10, "AES256_GCM"

    .line 246
    .line 247
    sget-object v13, Lcom/google/android/gms/internal/ads/zD;->b:Lcom/google/android/gms/internal/ads/fD;

    .line 248
    .line 249
    invoke-virtual {v9, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    new-instance v10, Lcom/google/android/gms/internal/ads/xc;

    .line 253
    .line 254
    invoke-direct {v10, v11}, Lcom/google/android/gms/internal/ads/xc;-><init>(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/xc;->m()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/xc;->t(I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/xc;->x()V

    .line 264
    .line 265
    .line 266
    iput-object v12, v10, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 267
    .line 268
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/xc;->H()Lcom/google/android/gms/internal/ads/fD;

    .line 269
    .line 270
    .line 271
    move-result-object v10

    .line 272
    const-string v11, "AES256_GCM_RAW"

    .line 273
    .line 274
    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 278
    .line 279
    .line 280
    move-result-object v9

    .line 281
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/qE;->c(Ljava/util/Map;)V

    .line 282
    .line 283
    .line 284
    sget-object v9, Lcom/google/android/gms/internal/ads/dD;->c:Lcom/google/android/gms/internal/ads/SC;

    .line 285
    .line 286
    const-class v10, Lcom/google/android/gms/internal/ads/fD;

    .line 287
    .line 288
    invoke-virtual {v4, v9, v10}, Lcom/google/android/gms/internal/ads/nE;->a(Lcom/google/android/gms/internal/ads/SC;Ljava/lang/Class;)V

    .line 289
    .line 290
    .line 291
    sget-object v9, Lcom/google/android/gms/internal/ads/dD;->d:Lcom/google/android/gms/internal/ads/jE;

    .line 292
    .line 293
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/internal/ads/lE;->b(Lcom/google/android/gms/internal/ads/kE;Ljava/lang/Class;)V

    .line 294
    .line 295
    .line 296
    sget-object v9, Lcom/google/android/gms/internal/ads/dD;->b:Lcom/google/android/gms/internal/ads/cE;

    .line 297
    .line 298
    invoke-virtual {v8, v9, v1}, Lcom/google/android/gms/internal/ads/XD;->b(Lcom/google/android/gms/internal/ads/cE;I)V

    .line 299
    .line 300
    .line 301
    invoke-static {}, Lcom/google/android/gms/internal/ads/UD;->a()Z

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-eqz v1, :cond_0

    .line 306
    .line 307
    return-void

    .line 308
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/YC;->a:Lcom/google/android/gms/internal/ads/zE;

    .line 309
    .line 310
    const/4 v1, 0x1

    .line 311
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->f0(I)Z

    .line 312
    .line 313
    .line 314
    move-result v9

    .line 315
    if-eqz v9, :cond_6

    .line 316
    .line 317
    sget-object v9, Lcom/google/android/gms/internal/ads/HD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 318
    .line 319
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/sE;->h(Lcom/google/android/gms/internal/ads/wE;)V

    .line 320
    .line 321
    .line 322
    sget-object v9, Lcom/google/android/gms/internal/ads/HD;->b:Lcom/google/android/gms/internal/ads/uE;

    .line 323
    .line 324
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/sE;->g(Lcom/google/android/gms/internal/ads/uE;)V

    .line 325
    .line 326
    .line 327
    sget-object v9, Lcom/google/android/gms/internal/ads/HD;->c:Lcom/google/android/gms/internal/ads/aE;

    .line 328
    .line 329
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/sE;->f(Lcom/google/android/gms/internal/ads/aE;)V

    .line 330
    .line 331
    .line 332
    sget-object v9, Lcom/google/android/gms/internal/ads/HD;->d:Lcom/google/android/gms/internal/ads/YD;

    .line 333
    .line 334
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/sE;->e(Lcom/google/android/gms/internal/ads/YD;)V

    .line 335
    .line 336
    .line 337
    sget-object v9, Lcom/google/android/gms/internal/ads/YC;->a:Lcom/google/android/gms/internal/ads/zE;

    .line 338
    .line 339
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/rE;->c(Lcom/google/android/gms/internal/ads/zE;)V

    .line 340
    .line 341
    .line 342
    new-instance v9, Ljava/util/HashMap;

    .line 343
    .line 344
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 345
    .line 346
    .line 347
    const-string v10, "AES128_EAX"

    .line 348
    .line 349
    sget-object v11, Lcom/google/android/gms/internal/ads/zD;->c:Lcom/google/android/gms/internal/ads/aD;

    .line 350
    .line 351
    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    new-instance v10, Lcom/google/android/gms/internal/ads/xc;

    .line 355
    .line 356
    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/xc;-><init>()V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/xc;->l(I)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/xc;->s(I)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/xc;->y()V

    .line 366
    .line 367
    .line 368
    sget-object v11, Lcom/google/android/gms/internal/ads/ZC;->d:Lcom/google/android/gms/internal/ads/ZC;

    .line 369
    .line 370
    iput-object v11, v10, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 371
    .line 372
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/xc;->G()Lcom/google/android/gms/internal/ads/aD;

    .line 373
    .line 374
    .line 375
    move-result-object v10

    .line 376
    const-string v12, "AES128_EAX_RAW"

    .line 377
    .line 378
    invoke-virtual {v9, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    const-string v10, "AES256_EAX"

    .line 382
    .line 383
    sget-object v12, Lcom/google/android/gms/internal/ads/zD;->d:Lcom/google/android/gms/internal/ads/aD;

    .line 384
    .line 385
    invoke-virtual {v9, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    new-instance v10, Lcom/google/android/gms/internal/ads/xc;

    .line 389
    .line 390
    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/xc;-><init>()V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/xc;->l(I)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/xc;->s(I)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/xc;->y()V

    .line 400
    .line 401
    .line 402
    iput-object v11, v10, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 403
    .line 404
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/xc;->G()Lcom/google/android/gms/internal/ads/aD;

    .line 405
    .line 406
    .line 407
    move-result-object v10

    .line 408
    const-string v11, "AES256_EAX_RAW"

    .line 409
    .line 410
    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 414
    .line 415
    .line 416
    move-result-object v9

    .line 417
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/qE;->c(Ljava/util/Map;)V

    .line 418
    .line 419
    .line 420
    sget-object v9, Lcom/google/android/gms/internal/ads/YC;->c:Lcom/google/android/gms/internal/ads/jE;

    .line 421
    .line 422
    const-class v10, Lcom/google/android/gms/internal/ads/aD;

    .line 423
    .line 424
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/internal/ads/lE;->b(Lcom/google/android/gms/internal/ads/kE;Ljava/lang/Class;)V

    .line 425
    .line 426
    .line 427
    sget-object v9, Lcom/google/android/gms/internal/ads/YC;->b:Lcom/google/android/gms/internal/ads/cE;

    .line 428
    .line 429
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/XD;->a(Lcom/google/android/gms/internal/ads/cE;)V

    .line 430
    .line 431
    .line 432
    sget-object v9, Lcom/google/android/gms/internal/ads/hD;->a:Lcom/google/android/gms/internal/ads/zE;

    .line 433
    .line 434
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->f0(I)Z

    .line 435
    .line 436
    .line 437
    move-result v9

    .line 438
    if-eqz v9, :cond_5

    .line 439
    .line 440
    sget-object v9, Lcom/google/android/gms/internal/ads/KD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 441
    .line 442
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/sE;->h(Lcom/google/android/gms/internal/ads/wE;)V

    .line 443
    .line 444
    .line 445
    sget-object v9, Lcom/google/android/gms/internal/ads/KD;->b:Lcom/google/android/gms/internal/ads/uE;

    .line 446
    .line 447
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/sE;->g(Lcom/google/android/gms/internal/ads/uE;)V

    .line 448
    .line 449
    .line 450
    sget-object v9, Lcom/google/android/gms/internal/ads/KD;->c:Lcom/google/android/gms/internal/ads/aE;

    .line 451
    .line 452
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/sE;->f(Lcom/google/android/gms/internal/ads/aE;)V

    .line 453
    .line 454
    .line 455
    sget-object v9, Lcom/google/android/gms/internal/ads/KD;->d:Lcom/google/android/gms/internal/ads/YD;

    .line 456
    .line 457
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/sE;->e(Lcom/google/android/gms/internal/ads/YD;)V

    .line 458
    .line 459
    .line 460
    :try_start_0
    const-string v2, "AES/GCM-SIV/NoPadding"

    .line 461
    .line 462
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    .line 464
    .line 465
    sget-object v2, Lcom/google/android/gms/internal/ads/hD;->a:Lcom/google/android/gms/internal/ads/zE;

    .line 466
    .line 467
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/rE;->c(Lcom/google/android/gms/internal/ads/zE;)V

    .line 468
    .line 469
    .line 470
    new-instance v0, Ljava/util/HashMap;

    .line 471
    .line 472
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 473
    .line 474
    .line 475
    sget-object v2, Lcom/google/android/gms/internal/ads/iD;->d:Lcom/google/android/gms/internal/ads/iD;

    .line 476
    .line 477
    sget-object v9, Lcom/google/android/gms/internal/ads/iD;->b:Lcom/google/android/gms/internal/ads/iD;

    .line 478
    .line 479
    new-instance v10, Lcom/google/android/gms/internal/ads/jD;

    .line 480
    .line 481
    invoke-direct {v10, v6, v9}, Lcom/google/android/gms/internal/ads/jD;-><init>(ILcom/google/android/gms/internal/ads/iD;)V

    .line 482
    .line 483
    .line 484
    const-string v11, "AES128_GCM_SIV"

    .line 485
    .line 486
    invoke-virtual {v0, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    new-instance v10, Lcom/google/android/gms/internal/ads/jD;

    .line 490
    .line 491
    invoke-direct {v10, v6, v2}, Lcom/google/android/gms/internal/ads/jD;-><init>(ILcom/google/android/gms/internal/ads/iD;)V

    .line 492
    .line 493
    .line 494
    const-string v6, "AES128_GCM_SIV_RAW"

    .line 495
    .line 496
    invoke-virtual {v0, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    new-instance v6, Lcom/google/android/gms/internal/ads/jD;

    .line 500
    .line 501
    invoke-direct {v6, v7, v9}, Lcom/google/android/gms/internal/ads/jD;-><init>(ILcom/google/android/gms/internal/ads/iD;)V

    .line 502
    .line 503
    .line 504
    const-string v9, "AES256_GCM_SIV"

    .line 505
    .line 506
    invoke-virtual {v0, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    new-instance v6, Lcom/google/android/gms/internal/ads/jD;

    .line 510
    .line 511
    invoke-direct {v6, v7, v2}, Lcom/google/android/gms/internal/ads/jD;-><init>(ILcom/google/android/gms/internal/ads/iD;)V

    .line 512
    .line 513
    .line 514
    const-string v2, "AES256_GCM_SIV_RAW"

    .line 515
    .line 516
    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/qE;->c(Ljava/util/Map;)V

    .line 524
    .line 525
    .line 526
    sget-object v0, Lcom/google/android/gms/internal/ads/hD;->c:Lcom/google/android/gms/internal/ads/SC;

    .line 527
    .line 528
    const-class v2, Lcom/google/android/gms/internal/ads/jD;

    .line 529
    .line 530
    invoke-virtual {v4, v0, v2}, Lcom/google/android/gms/internal/ads/nE;->a(Lcom/google/android/gms/internal/ads/SC;Ljava/lang/Class;)V

    .line 531
    .line 532
    .line 533
    sget-object v0, Lcom/google/android/gms/internal/ads/hD;->b:Lcom/google/android/gms/internal/ads/jE;

    .line 534
    .line 535
    invoke-virtual {v5, v0, v2}, Lcom/google/android/gms/internal/ads/lE;->b(Lcom/google/android/gms/internal/ads/kE;Ljava/lang/Class;)V

    .line 536
    .line 537
    .line 538
    sget-object v0, Lcom/google/android/gms/internal/ads/hD;->d:Lcom/google/android/gms/internal/ads/cE;

    .line 539
    .line 540
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/XD;->a(Lcom/google/android/gms/internal/ads/cE;)V

    .line 541
    .line 542
    .line 543
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/lD;->a:Lcom/google/android/gms/internal/ads/zE;

    .line 544
    .line 545
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->f0(I)Z

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    if-eqz v0, :cond_4

    .line 550
    .line 551
    sget-object v0, Lcom/google/android/gms/internal/ads/MD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 552
    .line 553
    sget-object v0, Lcom/google/android/gms/internal/ads/sE;->b:Lcom/google/android/gms/internal/ads/sE;

    .line 554
    .line 555
    sget-object v2, Lcom/google/android/gms/internal/ads/MD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 556
    .line 557
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/sE;->h(Lcom/google/android/gms/internal/ads/wE;)V

    .line 558
    .line 559
    .line 560
    sget-object v2, Lcom/google/android/gms/internal/ads/MD;->b:Lcom/google/android/gms/internal/ads/uE;

    .line 561
    .line 562
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/sE;->g(Lcom/google/android/gms/internal/ads/uE;)V

    .line 563
    .line 564
    .line 565
    sget-object v2, Lcom/google/android/gms/internal/ads/MD;->c:Lcom/google/android/gms/internal/ads/aE;

    .line 566
    .line 567
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/sE;->f(Lcom/google/android/gms/internal/ads/aE;)V

    .line 568
    .line 569
    .line 570
    sget-object v2, Lcom/google/android/gms/internal/ads/MD;->d:Lcom/google/android/gms/internal/ads/YD;

    .line 571
    .line 572
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/sE;->e(Lcom/google/android/gms/internal/ads/YD;)V

    .line 573
    .line 574
    .line 575
    sget-object v2, Lcom/google/android/gms/internal/ads/rE;->b:Lcom/google/android/gms/internal/ads/rE;

    .line 576
    .line 577
    sget-object v3, Lcom/google/android/gms/internal/ads/lD;->a:Lcom/google/android/gms/internal/ads/zE;

    .line 578
    .line 579
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/rE;->c(Lcom/google/android/gms/internal/ads/zE;)V

    .line 580
    .line 581
    .line 582
    sget-object v3, Lcom/google/android/gms/internal/ads/lE;->b:Lcom/google/android/gms/internal/ads/lE;

    .line 583
    .line 584
    sget-object v4, Lcom/google/android/gms/internal/ads/lD;->b:Lcom/google/android/gms/internal/ads/jE;

    .line 585
    .line 586
    const-class v5, Lcom/google/android/gms/internal/ads/nD;

    .line 587
    .line 588
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/lE;->b(Lcom/google/android/gms/internal/ads/kE;Ljava/lang/Class;)V

    .line 589
    .line 590
    .line 591
    sget-object v4, Lcom/google/android/gms/internal/ads/qE;->b:Lcom/google/android/gms/internal/ads/qE;

    .line 592
    .line 593
    new-instance v5, Ljava/util/HashMap;

    .line 594
    .line 595
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 596
    .line 597
    .line 598
    sget-object v6, Lcom/google/android/gms/internal/ads/mD;->b:Lcom/google/android/gms/internal/ads/mD;

    .line 599
    .line 600
    new-instance v7, Lcom/google/android/gms/internal/ads/nD;

    .line 601
    .line 602
    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/ads/nD;-><init>(Lcom/google/android/gms/internal/ads/mD;)V

    .line 603
    .line 604
    .line 605
    const-string v6, "CHACHA20_POLY1305"

    .line 606
    .line 607
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    sget-object v6, Lcom/google/android/gms/internal/ads/mD;->d:Lcom/google/android/gms/internal/ads/mD;

    .line 611
    .line 612
    new-instance v7, Lcom/google/android/gms/internal/ads/nD;

    .line 613
    .line 614
    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/ads/nD;-><init>(Lcom/google/android/gms/internal/ads/mD;)V

    .line 615
    .line 616
    .line 617
    const-string v6, "CHACHA20_POLY1305_RAW"

    .line 618
    .line 619
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 623
    .line 624
    .line 625
    move-result-object v5

    .line 626
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/qE;->c(Ljava/util/Map;)V

    .line 627
    .line 628
    .line 629
    sget-object v5, Lcom/google/android/gms/internal/ads/XD;->d:Lcom/google/android/gms/internal/ads/XD;

    .line 630
    .line 631
    sget-object v6, Lcom/google/android/gms/internal/ads/lD;->c:Lcom/google/android/gms/internal/ads/cE;

    .line 632
    .line 633
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/XD;->a(Lcom/google/android/gms/internal/ads/cE;)V

    .line 634
    .line 635
    .line 636
    sget-object v6, Lcom/google/android/gms/internal/ads/oD;->a:Lcom/google/android/gms/internal/ads/zE;

    .line 637
    .line 638
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->f0(I)Z

    .line 639
    .line 640
    .line 641
    move-result v6

    .line 642
    if-eqz v6, :cond_3

    .line 643
    .line 644
    sget-object v6, Lcom/google/android/gms/internal/ads/tD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 645
    .line 646
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/sE;->h(Lcom/google/android/gms/internal/ads/wE;)V

    .line 647
    .line 648
    .line 649
    sget-object v6, Lcom/google/android/gms/internal/ads/tD;->b:Lcom/google/android/gms/internal/ads/uE;

    .line 650
    .line 651
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/sE;->g(Lcom/google/android/gms/internal/ads/uE;)V

    .line 652
    .line 653
    .line 654
    sget-object v6, Lcom/google/android/gms/internal/ads/tD;->c:Lcom/google/android/gms/internal/ads/aE;

    .line 655
    .line 656
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/sE;->f(Lcom/google/android/gms/internal/ads/aE;)V

    .line 657
    .line 658
    .line 659
    sget-object v6, Lcom/google/android/gms/internal/ads/tD;->d:Lcom/google/android/gms/internal/ads/YD;

    .line 660
    .line 661
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/sE;->e(Lcom/google/android/gms/internal/ads/YD;)V

    .line 662
    .line 663
    .line 664
    sget-object v6, Lcom/google/android/gms/internal/ads/oD;->a:Lcom/google/android/gms/internal/ads/zE;

    .line 665
    .line 666
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/rE;->c(Lcom/google/android/gms/internal/ads/zE;)V

    .line 667
    .line 668
    .line 669
    sget-object v6, Lcom/google/android/gms/internal/ads/oD;->c:Lcom/google/android/gms/internal/ads/jE;

    .line 670
    .line 671
    const-class v7, Lcom/google/android/gms/internal/ads/sD;

    .line 672
    .line 673
    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/ads/lE;->b(Lcom/google/android/gms/internal/ads/kE;Ljava/lang/Class;)V

    .line 674
    .line 675
    .line 676
    sget-object v6, Lcom/google/android/gms/internal/ads/oD;->b:Lcom/google/android/gms/internal/ads/cE;

    .line 677
    .line 678
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/XD;->a(Lcom/google/android/gms/internal/ads/cE;)V

    .line 679
    .line 680
    .line 681
    sget-object v6, Lcom/google/android/gms/internal/ads/pD;->a:Lcom/google/android/gms/internal/ads/cE;

    .line 682
    .line 683
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->f0(I)Z

    .line 684
    .line 685
    .line 686
    move-result v6

    .line 687
    if-eqz v6, :cond_2

    .line 688
    .line 689
    sget-object v6, Lcom/google/android/gms/internal/ads/yD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 690
    .line 691
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/sE;->h(Lcom/google/android/gms/internal/ads/wE;)V

    .line 692
    .line 693
    .line 694
    sget-object v6, Lcom/google/android/gms/internal/ads/yD;->b:Lcom/google/android/gms/internal/ads/uE;

    .line 695
    .line 696
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/sE;->g(Lcom/google/android/gms/internal/ads/uE;)V

    .line 697
    .line 698
    .line 699
    sget-object v6, Lcom/google/android/gms/internal/ads/yD;->c:Lcom/google/android/gms/internal/ads/aE;

    .line 700
    .line 701
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/sE;->f(Lcom/google/android/gms/internal/ads/aE;)V

    .line 702
    .line 703
    .line 704
    sget-object v6, Lcom/google/android/gms/internal/ads/yD;->d:Lcom/google/android/gms/internal/ads/YD;

    .line 705
    .line 706
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/sE;->e(Lcom/google/android/gms/internal/ads/YD;)V

    .line 707
    .line 708
    .line 709
    sget-object v6, Lcom/google/android/gms/internal/ads/pD;->b:Lcom/google/android/gms/internal/ads/jE;

    .line 710
    .line 711
    const-class v7, Lcom/google/android/gms/internal/ads/xD;

    .line 712
    .line 713
    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/ads/lE;->b(Lcom/google/android/gms/internal/ads/kE;Ljava/lang/Class;)V

    .line 714
    .line 715
    .line 716
    sget-object v6, Lcom/google/android/gms/internal/ads/pD;->c:Lcom/google/android/gms/internal/ads/zE;

    .line 717
    .line 718
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/rE;->c(Lcom/google/android/gms/internal/ads/zE;)V

    .line 719
    .line 720
    .line 721
    sget-object v6, Lcom/google/android/gms/internal/ads/pD;->a:Lcom/google/android/gms/internal/ads/cE;

    .line 722
    .line 723
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/XD;->a(Lcom/google/android/gms/internal/ads/cE;)V

    .line 724
    .line 725
    .line 726
    sget-object v6, Lcom/google/android/gms/internal/ads/BD;->a:Lcom/google/android/gms/internal/ads/zE;

    .line 727
    .line 728
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->f0(I)Z

    .line 729
    .line 730
    .line 731
    move-result v1

    .line 732
    if-eqz v1, :cond_1

    .line 733
    .line 734
    sget-object v1, Lcom/google/android/gms/internal/ads/SD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 735
    .line 736
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/sE;->h(Lcom/google/android/gms/internal/ads/wE;)V

    .line 737
    .line 738
    .line 739
    sget-object v1, Lcom/google/android/gms/internal/ads/SD;->b:Lcom/google/android/gms/internal/ads/uE;

    .line 740
    .line 741
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/sE;->g(Lcom/google/android/gms/internal/ads/uE;)V

    .line 742
    .line 743
    .line 744
    sget-object v1, Lcom/google/android/gms/internal/ads/SD;->c:Lcom/google/android/gms/internal/ads/aE;

    .line 745
    .line 746
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/sE;->f(Lcom/google/android/gms/internal/ads/aE;)V

    .line 747
    .line 748
    .line 749
    sget-object v1, Lcom/google/android/gms/internal/ads/SD;->d:Lcom/google/android/gms/internal/ads/YD;

    .line 750
    .line 751
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/sE;->e(Lcom/google/android/gms/internal/ads/YD;)V

    .line 752
    .line 753
    .line 754
    sget-object v0, Lcom/google/android/gms/internal/ads/BD;->a:Lcom/google/android/gms/internal/ads/zE;

    .line 755
    .line 756
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/rE;->c(Lcom/google/android/gms/internal/ads/zE;)V

    .line 757
    .line 758
    .line 759
    new-instance v0, Ljava/util/HashMap;

    .line 760
    .line 761
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 762
    .line 763
    .line 764
    sget-object v1, Lcom/google/android/gms/internal/ads/DD;->b:Lcom/google/android/gms/internal/ads/DD;

    .line 765
    .line 766
    new-instance v2, Lcom/google/android/gms/internal/ads/ED;

    .line 767
    .line 768
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/ED;-><init>(Lcom/google/android/gms/internal/ads/DD;)V

    .line 769
    .line 770
    .line 771
    const-string v1, "XCHACHA20_POLY1305"

    .line 772
    .line 773
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    sget-object v1, Lcom/google/android/gms/internal/ads/DD;->d:Lcom/google/android/gms/internal/ads/DD;

    .line 777
    .line 778
    new-instance v2, Lcom/google/android/gms/internal/ads/ED;

    .line 779
    .line 780
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/ED;-><init>(Lcom/google/android/gms/internal/ads/DD;)V

    .line 781
    .line 782
    .line 783
    const-string v1, "XCHACHA20_POLY1305_RAW"

    .line 784
    .line 785
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/qE;->c(Ljava/util/Map;)V

    .line 793
    .line 794
    .line 795
    sget-object v0, Lcom/google/android/gms/internal/ads/BD;->d:Lcom/google/android/gms/internal/ads/jE;

    .line 796
    .line 797
    const-class v1, Lcom/google/android/gms/internal/ads/ED;

    .line 798
    .line 799
    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/lE;->b(Lcom/google/android/gms/internal/ads/kE;Ljava/lang/Class;)V

    .line 800
    .line 801
    .line 802
    sget-object v0, Lcom/google/android/gms/internal/ads/nE;->b:Lcom/google/android/gms/internal/ads/nE;

    .line 803
    .line 804
    sget-object v2, Lcom/google/android/gms/internal/ads/BD;->c:Lcom/google/android/gms/internal/ads/SC;

    .line 805
    .line 806
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/nE;->a(Lcom/google/android/gms/internal/ads/SC;Ljava/lang/Class;)V

    .line 807
    .line 808
    .line 809
    sget-object v0, Lcom/google/android/gms/internal/ads/BD;->b:Lcom/google/android/gms/internal/ads/cE;

    .line 810
    .line 811
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/XD;->a(Lcom/google/android/gms/internal/ads/cE;)V

    .line 812
    .line 813
    .line 814
    return-void

    .line 815
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 816
    .line 817
    const-string v1, "Registering XChaCha20Poly1305 is not supported in FIPS mode"

    .line 818
    .line 819
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 820
    .line 821
    .line 822
    throw v0

    .line 823
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 824
    .line 825
    const-string v1, "Registering KMS Envelope AEAD is not supported in FIPS mode"

    .line 826
    .line 827
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    throw v0

    .line 831
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 832
    .line 833
    const-string v1, "Registering KMS AEAD is not supported in FIPS mode"

    .line 834
    .line 835
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    throw v0

    .line 839
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 840
    .line 841
    const-string v1, "Registering ChaCha20Poly1305 is not supported in FIPS mode"

    .line 842
    .line 843
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 844
    .line 845
    .line 846
    throw v0

    .line 847
    :cond_5
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 848
    .line 849
    const-string v1, "Registering AES GCM SIV is not supported in FIPS mode"

    .line 850
    .line 851
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    throw v0

    .line 855
    :cond_6
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 856
    .line 857
    const-string v1, "Registering AES EAX is not supported in FIPS mode"

    .line 858
    .line 859
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 860
    .line 861
    .line 862
    throw v0

    .line 863
    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 864
    .line 865
    const-string v1, "Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available."

    .line 866
    .line 867
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 868
    .line 869
    .line 870
    throw v0

    .line 871
    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 872
    .line 873
    const-string v1, "Can not use AES-CTR-HMAC in FIPS-mode, as BoringCrypto module is not available."

    .line 874
    .line 875
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 876
    .line 877
    .line 878
    throw v0
.end method
