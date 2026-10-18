.class public final Lcom/google/android/gms/internal/pal/H6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/pal/p3;


# static fields
.field public static final f:[B


# instance fields
.field public final a:Lcom/google/android/gms/internal/pal/r1;

.field public final b:Ljava/lang/String;

.field public final c:[B

.field public final d:Lz/h;

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/pal/H6;->f:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;ILz/h;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/pal/y4;->f0(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/google/android/gms/internal/pal/r1;

    .line 20
    .line 21
    const/16 v1, 0xc

    .line 22
    .line 23
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/pal/r1;-><init>(Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/android/gms/internal/pal/H6;->a:Lcom/google/android/gms/internal/pal/r1;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/google/android/gms/internal/pal/H6;->c:[B

    .line 29
    .line 30
    iput-object p3, p0, Lcom/google/android/gms/internal/pal/H6;->b:Ljava/lang/String;

    .line 31
    .line 32
    iput p4, p0, Lcom/google/android/gms/internal/pal/H6;->e:I

    .line 33
    .line 34
    iput-object p5, p0, Lcom/google/android/gms/internal/pal/H6;->d:Lz/h;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/pal/H6;->d:Lz/h;

    .line 4
    .line 5
    iget v3, v2, Lz/h;->a:I

    .line 6
    .line 7
    iget-object v4, p0, Lcom/google/android/gms/internal/pal/H6;->a:Lcom/google/android/gms/internal/pal/r1;

    .line 8
    .line 9
    iget-object v5, v4, Lcom/google/android/gms/internal/pal/r1;->H:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v5, Ljava/security/interfaces/ECPublicKey;

    .line 12
    .line 13
    invoke-interface {v5}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    sget-object v6, Lcom/google/android/gms/internal/pal/J6;->h:Lcom/google/android/gms/internal/pal/J6;

    .line 18
    .line 19
    const-string v7, "EC"

    .line 20
    .line 21
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/pal/J6;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    check-cast v6, Ljava/security/KeyPairGenerator;

    .line 26
    .line 27
    invoke-virtual {v6, v5}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v5}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    check-cast v6, Ljava/security/interfaces/ECPublicKey;

    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Ljava/security/interfaces/ECPrivateKey;

    .line 45
    .line 46
    iget-object v4, v4, Lcom/google/android/gms/internal/pal/r1;->H:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v4, Ljava/security/interfaces/ECPublicKey;

    .line 49
    .line 50
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/pal/y4;->s0(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;)[B

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-interface {v6}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-interface {v6}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    iget v7, p0, Lcom/google/android/gms/internal/pal/H6;->e:I

    .line 67
    .line 68
    invoke-static {v5, v7, v6}, Lcom/google/android/gms/internal/pal/y4;->E0(Ljava/security/spec/EllipticCurve;ILjava/security/spec/ECPoint;)[B

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    const/4 v6, 0x2

    .line 73
    new-array v6, v6, [[B

    .line 74
    .line 75
    aput-object v5, v6, v0

    .line 76
    .line 77
    aput-object v4, v6, v1

    .line 78
    .line 79
    invoke-static {v6}, Lcom/google/android/gms/internal/pal/y4;->Y([[B)[B

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    sget-object v6, Lcom/google/android/gms/internal/pal/J6;->f:Lcom/google/android/gms/internal/pal/J6;

    .line 84
    .line 85
    iget-object v7, p0, Lcom/google/android/gms/internal/pal/H6;->b:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/pal/J6;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    check-cast v6, Ljavax/crypto/Mac;

    .line 92
    .line 93
    invoke-virtual {v6}, Ljavax/crypto/Mac;->getMacLength()I

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    mul-int/lit16 v8, v8, 0xff

    .line 98
    .line 99
    if-gt v3, v8, :cond_f

    .line 100
    .line 101
    iget-object v8, p0, Lcom/google/android/gms/internal/pal/H6;->c:[B

    .line 102
    .line 103
    if-eqz v8, :cond_1

    .line 104
    .line 105
    array-length v9, v8

    .line 106
    if-nez v9, :cond_0

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_0
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    .line 110
    .line 111
    invoke-direct {v9, v8, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6, v9}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_1
    :goto_0
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    .line 119
    .line 120
    invoke-virtual {v6}, Ljavax/crypto/Mac;->getMacLength()I

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    new-array v9, v9, [B

    .line 125
    .line 126
    invoke-direct {v8, v9, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6, v8}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 130
    .line 131
    .line 132
    :goto_1
    invoke-virtual {v6, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    new-array v8, v3, [B

    .line 137
    .line 138
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    .line 139
    .line 140
    invoke-direct {v9, v4, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v9}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 144
    .line 145
    .line 146
    new-array v4, v0, [B

    .line 147
    .line 148
    const/4 v7, 0x1

    .line 149
    const/4 v9, 0x0

    .line 150
    :goto_2
    invoke-virtual {v6, v4}, Ljavax/crypto/Mac;->update([B)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 154
    .line 155
    .line 156
    int-to-byte v4, v7

    .line 157
    invoke-virtual {v6, v4}, Ljavax/crypto/Mac;->update(B)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6}, Ljavax/crypto/Mac;->doFinal()[B

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    array-length v10, v4

    .line 165
    add-int v11, v9, v10

    .line 166
    .line 167
    if-ge v11, v3, :cond_2

    .line 168
    .line 169
    invoke-static {v4, v0, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    .line 171
    .line 172
    add-int/2addr v7, v1

    .line 173
    move v9, v11

    .line 174
    goto :goto_2

    .line 175
    :cond_2
    sub-int/2addr v3, v9

    .line 176
    invoke-static {v4, v0, v8, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    .line 178
    .line 179
    invoke-static {v5}, Lcom/google/android/gms/internal/pal/Q6;->a([B)Lcom/google/android/gms/internal/pal/Q6;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    invoke-static {v8}, Lcom/google/android/gms/internal/pal/Q6;->a([B)Lcom/google/android/gms/internal/pal/Q6;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    iget-object v1, v1, Lcom/google/android/gms/internal/pal/Q6;->a:[B

    .line 188
    .line 189
    array-length v3, v1

    .line 190
    new-array v4, v3, [B

    .line 191
    .line 192
    invoke-static {v1, v0, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    .line 194
    .line 195
    iget v1, v2, Lz/h;->a:I

    .line 196
    .line 197
    if-ne v3, v1, :cond_e

    .line 198
    .line 199
    iget-object v3, v2, Lz/h;->c:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v3, Ljava/lang/String;

    .line 202
    .line 203
    sget-object v5, Lcom/google/android/gms/internal/pal/H3;->b:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    const-class v6, Lcom/google/android/gms/internal/pal/m3;

    .line 210
    .line 211
    if-eqz v5, :cond_4

    .line 212
    .line 213
    invoke-static {}, Lcom/google/android/gms/internal/pal/n5;->n()Lcom/google/android/gms/internal/pal/m5;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    iget-object v2, v2, Lz/h;->d:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v2, Lcom/google/android/gms/internal/pal/n5;

    .line 220
    .line 221
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/pal/C;->b(Lcom/google/android/gms/internal/pal/D;)V

    .line 222
    .line 223
    .line 224
    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/pal/r;->o(I[BI)Lcom/google/android/gms/internal/pal/q;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    iget-boolean v2, v5, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 229
    .line 230
    if-eqz v2, :cond_3

    .line 231
    .line 232
    invoke-virtual {v5}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 233
    .line 234
    .line 235
    iput-boolean v0, v5, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 236
    .line 237
    :cond_3
    iget-object v2, v5, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 238
    .line 239
    check-cast v2, Lcom/google/android/gms/internal/pal/n5;

    .line 240
    .line 241
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/pal/n5;->r(Lcom/google/android/gms/internal/pal/n5;Lcom/google/android/gms/internal/pal/q;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v5}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    check-cast v1, Lcom/google/android/gms/internal/pal/n5;

    .line 249
    .line 250
    new-instance v2, Lcom/google/android/gms/internal/pal/m2;

    .line 251
    .line 252
    invoke-static {v3, v1, v6}, Lcom/google/android/gms/internal/pal/F3;->c(Ljava/lang/String;Lcom/google/android/gms/internal/pal/D;Ljava/lang/Class;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    check-cast v1, Lcom/google/android/gms/internal/pal/m3;

    .line 257
    .line 258
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/pal/m2;-><init>(Lcom/google/android/gms/internal/pal/m3;)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_3

    .line 262
    .line 263
    :cond_4
    sget-object v5, Lcom/google/android/gms/internal/pal/H3;->a:Ljava/lang/String;

    .line 264
    .line 265
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v5

    .line 269
    if-eqz v5, :cond_a

    .line 270
    .line 271
    iget v5, v2, Lz/h;->b:I

    .line 272
    .line 273
    invoke-static {v4, v0, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    invoke-static {v4, v5, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-static {}, Lcom/google/android/gms/internal/pal/b5;->n()Lcom/google/android/gms/internal/pal/a5;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    iget-object v2, v2, Lz/h;->e:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast v2, Lcom/google/android/gms/internal/pal/W4;

    .line 288
    .line 289
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/W4;->p()Lcom/google/android/gms/internal/pal/b5;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/pal/C;->b(Lcom/google/android/gms/internal/pal/D;)V

    .line 294
    .line 295
    .line 296
    array-length v5, v7

    .line 297
    invoke-static {v0, v7, v5}, Lcom/google/android/gms/internal/pal/r;->o(I[BI)Lcom/google/android/gms/internal/pal/q;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    iget-boolean v7, v4, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 302
    .line 303
    if-eqz v7, :cond_5

    .line 304
    .line 305
    invoke-virtual {v4}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 306
    .line 307
    .line 308
    iput-boolean v0, v4, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 309
    .line 310
    :cond_5
    iget-object v7, v4, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 311
    .line 312
    check-cast v7, Lcom/google/android/gms/internal/pal/b5;

    .line 313
    .line 314
    invoke-static {v7, v5}, Lcom/google/android/gms/internal/pal/b5;->u(Lcom/google/android/gms/internal/pal/b5;Lcom/google/android/gms/internal/pal/q;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v4}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    check-cast v4, Lcom/google/android/gms/internal/pal/b5;

    .line 322
    .line 323
    invoke-static {}, Lcom/google/android/gms/internal/pal/P5;->n()Lcom/google/android/gms/internal/pal/O5;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/W4;->q()Lcom/google/android/gms/internal/pal/P5;

    .line 328
    .line 329
    .line 330
    move-result-object v7

    .line 331
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/pal/C;->b(Lcom/google/android/gms/internal/pal/D;)V

    .line 332
    .line 333
    .line 334
    array-length v7, v1

    .line 335
    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/pal/r;->o(I[BI)Lcom/google/android/gms/internal/pal/q;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    iget-boolean v7, v5, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 340
    .line 341
    if-eqz v7, :cond_6

    .line 342
    .line 343
    invoke-virtual {v5}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 344
    .line 345
    .line 346
    iput-boolean v0, v5, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 347
    .line 348
    :cond_6
    iget-object v7, v5, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 349
    .line 350
    check-cast v7, Lcom/google/android/gms/internal/pal/P5;

    .line 351
    .line 352
    invoke-static {v7, v1}, Lcom/google/android/gms/internal/pal/P5;->u(Lcom/google/android/gms/internal/pal/P5;Lcom/google/android/gms/internal/pal/q;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v5}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    check-cast v1, Lcom/google/android/gms/internal/pal/P5;

    .line 360
    .line 361
    invoke-static {}, Lcom/google/android/gms/internal/pal/W4;->n()Lcom/google/android/gms/internal/pal/V4;

    .line 362
    .line 363
    .line 364
    move-result-object v5

    .line 365
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/W4;->m()I

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    iget-boolean v7, v5, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 370
    .line 371
    if-eqz v7, :cond_7

    .line 372
    .line 373
    invoke-virtual {v5}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 374
    .line 375
    .line 376
    iput-boolean v0, v5, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 377
    .line 378
    :cond_7
    iget-object v7, v5, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 379
    .line 380
    check-cast v7, Lcom/google/android/gms/internal/pal/W4;

    .line 381
    .line 382
    invoke-static {v7, v2}, Lcom/google/android/gms/internal/pal/W4;->r(Lcom/google/android/gms/internal/pal/W4;I)V

    .line 383
    .line 384
    .line 385
    iget-boolean v2, v5, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 386
    .line 387
    if-eqz v2, :cond_8

    .line 388
    .line 389
    invoke-virtual {v5}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 390
    .line 391
    .line 392
    iput-boolean v0, v5, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 393
    .line 394
    :cond_8
    iget-object v2, v5, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 395
    .line 396
    check-cast v2, Lcom/google/android/gms/internal/pal/W4;

    .line 397
    .line 398
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/pal/W4;->s(Lcom/google/android/gms/internal/pal/W4;Lcom/google/android/gms/internal/pal/b5;)V

    .line 399
    .line 400
    .line 401
    iget-boolean v2, v5, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 402
    .line 403
    if-eqz v2, :cond_9

    .line 404
    .line 405
    invoke-virtual {v5}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 406
    .line 407
    .line 408
    iput-boolean v0, v5, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 409
    .line 410
    :cond_9
    iget-object v2, v5, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 411
    .line 412
    check-cast v2, Lcom/google/android/gms/internal/pal/W4;

    .line 413
    .line 414
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/pal/W4;->t(Lcom/google/android/gms/internal/pal/W4;Lcom/google/android/gms/internal/pal/P5;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v5}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    check-cast v1, Lcom/google/android/gms/internal/pal/W4;

    .line 422
    .line 423
    new-instance v2, Lcom/google/android/gms/internal/pal/m2;

    .line 424
    .line 425
    invoke-static {v3, v1, v6}, Lcom/google/android/gms/internal/pal/F3;->c(Ljava/lang/String;Lcom/google/android/gms/internal/pal/D;Ljava/lang/Class;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    check-cast v1, Lcom/google/android/gms/internal/pal/m3;

    .line 430
    .line 431
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/pal/m2;-><init>(Lcom/google/android/gms/internal/pal/m3;)V

    .line 432
    .line 433
    .line 434
    goto :goto_3

    .line 435
    :cond_a
    sget-object v5, Lcom/google/android/gms/internal/pal/V3;->a:Ljava/lang/String;

    .line 436
    .line 437
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v5

    .line 441
    if-eqz v5, :cond_d

    .line 442
    .line 443
    invoke-static {}, Lcom/google/android/gms/internal/pal/v5;->n()Lcom/google/android/gms/internal/pal/u5;

    .line 444
    .line 445
    .line 446
    move-result-object v5

    .line 447
    iget-object v2, v2, Lz/h;->f:Ljava/lang/Object;

    .line 448
    .line 449
    check-cast v2, Lcom/google/android/gms/internal/pal/v5;

    .line 450
    .line 451
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/pal/C;->b(Lcom/google/android/gms/internal/pal/D;)V

    .line 452
    .line 453
    .line 454
    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/pal/r;->o(I[BI)Lcom/google/android/gms/internal/pal/q;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    iget-boolean v2, v5, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 459
    .line 460
    if-eqz v2, :cond_b

    .line 461
    .line 462
    invoke-virtual {v5}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 463
    .line 464
    .line 465
    iput-boolean v0, v5, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 466
    .line 467
    :cond_b
    iget-object v2, v5, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 468
    .line 469
    check-cast v2, Lcom/google/android/gms/internal/pal/v5;

    .line 470
    .line 471
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/pal/v5;->r(Lcom/google/android/gms/internal/pal/v5;Lcom/google/android/gms/internal/pal/q;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v5}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    check-cast v1, Lcom/google/android/gms/internal/pal/v5;

    .line 479
    .line 480
    new-instance v2, Lcom/google/android/gms/internal/pal/m2;

    .line 481
    .line 482
    const-class v4, Lcom/google/android/gms/internal/pal/n3;

    .line 483
    .line 484
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/pal/F3;->c(Ljava/lang/String;Lcom/google/android/gms/internal/pal/D;Ljava/lang/Class;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    check-cast v1, Lcom/google/android/gms/internal/pal/n3;

    .line 489
    .line 490
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/pal/m2;-><init>(Lcom/google/android/gms/internal/pal/n3;)V

    .line 491
    .line 492
    .line 493
    :goto_3
    sget-object v1, Lcom/google/android/gms/internal/pal/H6;->f:[B

    .line 494
    .line 495
    iget-object v3, v2, Lcom/google/android/gms/internal/pal/m2;->H:Ljava/lang/Object;

    .line 496
    .line 497
    check-cast v3, Lcom/google/android/gms/internal/pal/m3;

    .line 498
    .line 499
    if-eqz v3, :cond_c

    .line 500
    .line 501
    invoke-interface {v3, p1, v1}, Lcom/google/android/gms/internal/pal/m3;->zza([B[B)[B

    .line 502
    .line 503
    .line 504
    move-result-object p1

    .line 505
    goto :goto_4

    .line 506
    :cond_c
    iget-object v2, v2, Lcom/google/android/gms/internal/pal/m2;->I:Ljava/lang/Object;

    .line 507
    .line 508
    check-cast v2, Lcom/google/android/gms/internal/pal/n3;

    .line 509
    .line 510
    invoke-interface {v2, p1, v1}, Lcom/google/android/gms/internal/pal/n3;->zza([B[B)[B

    .line 511
    .line 512
    .line 513
    move-result-object p1

    .line 514
    :goto_4
    iget-object p2, p2, Lcom/google/android/gms/internal/pal/Q6;->a:[B

    .line 515
    .line 516
    array-length v1, p2

    .line 517
    new-array v2, v1, [B

    .line 518
    .line 519
    invoke-static {p2, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 520
    .line 521
    .line 522
    array-length p2, p1

    .line 523
    add-int/2addr v1, p2

    .line 524
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 525
    .line 526
    .line 527
    move-result-object p2

    .line 528
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 529
    .line 530
    .line 531
    move-result-object p2

    .line 532
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 533
    .line 534
    .line 535
    move-result-object p1

    .line 536
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 537
    .line 538
    .line 539
    move-result-object p1

    .line 540
    return-object p1

    .line 541
    :cond_d
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 542
    .line 543
    const-string p2, "unknown DEM key type"

    .line 544
    .line 545
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    throw p1

    .line 549
    :cond_e
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 550
    .line 551
    const-string p2, "Symmetric key has incorrect length"

    .line 552
    .line 553
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    throw p1

    .line 557
    :cond_f
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 558
    .line 559
    const-string p2, "size too large"

    .line 560
    .line 561
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    throw p1
.end method
