.class public final Lcom/google/android/gms/internal/pal/L3;
.super Lcom/google/android/gms/internal/pal/n4;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/gms/internal/pal/L3;->b:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/pal/n4;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/pal/j;)Lcom/google/android/gms/internal/pal/j;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/pal/L3;->b:I

    .line 3
    .line 4
    const/16 v2, 0x20

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lcom/google/android/gms/internal/pal/R5;

    .line 11
    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/pal/P5;->n()Lcom/google/android/gms/internal/pal/O5;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-boolean v1, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 21
    .line 22
    .line 23
    iput-boolean v3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 24
    .line 25
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 26
    .line 27
    check-cast v1, Lcom/google/android/gms/internal/pal/P5;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/google/android/gms/internal/pal/P5;->s(Lcom/google/android/gms/internal/pal/P5;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/R5;->q()Lcom/google/android/gms/internal/pal/T5;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-boolean v2, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 41
    .line 42
    .line 43
    iput-boolean v3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 44
    .line 45
    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 46
    .line 47
    check-cast v2, Lcom/google/android/gms/internal/pal/P5;

    .line 48
    .line 49
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/pal/P5;->t(Lcom/google/android/gms/internal/pal/P5;Lcom/google/android/gms/internal/pal/T5;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/R5;->m()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/O6;->a(I)[B

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    array-length v1, p1

    .line 61
    invoke-static {v3, p1, v1}, Lcom/google/android/gms/internal/pal/r;->o(I[BI)Lcom/google/android/gms/internal/pal/q;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-boolean v1, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 70
    .line 71
    .line 72
    iput-boolean v3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 73
    .line 74
    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 75
    .line 76
    check-cast v1, Lcom/google/android/gms/internal/pal/P5;

    .line 77
    .line 78
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/pal/P5;->u(Lcom/google/android/gms/internal/pal/P5;Lcom/google/android/gms/internal/pal/q;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lcom/google/android/gms/internal/pal/P5;

    .line 86
    .line 87
    return-object p1

    .line 88
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/pal/W5;

    .line 89
    .line 90
    invoke-static {}, Lcom/google/android/gms/internal/pal/y4;->N()[B

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/y4;->X([B)[B

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {}, Lcom/google/android/gms/internal/pal/c6;->o()Lcom/google/android/gms/internal/pal/b6;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    iget-boolean v5, v4, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 103
    .line 104
    if-eqz v5, :cond_3

    .line 105
    .line 106
    invoke-virtual {v4}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 107
    .line 108
    .line 109
    iput-boolean v3, v4, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 110
    .line 111
    :cond_3
    iget-object v5, v4, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 112
    .line 113
    check-cast v5, Lcom/google/android/gms/internal/pal/c6;

    .line 114
    .line 115
    invoke-static {v5}, Lcom/google/android/gms/internal/pal/c6;->s(Lcom/google/android/gms/internal/pal/c6;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/W5;->o()Lcom/google/android/gms/internal/pal/Y5;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iget-boolean v5, v4, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 123
    .line 124
    if-eqz v5, :cond_4

    .line 125
    .line 126
    invoke-virtual {v4}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 127
    .line 128
    .line 129
    iput-boolean v3, v4, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 130
    .line 131
    :cond_4
    iget-object v5, v4, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 132
    .line 133
    check-cast v5, Lcom/google/android/gms/internal/pal/c6;

    .line 134
    .line 135
    invoke-static {v5, p1}, Lcom/google/android/gms/internal/pal/c6;->t(Lcom/google/android/gms/internal/pal/c6;Lcom/google/android/gms/internal/pal/Y5;)V

    .line 136
    .line 137
    .line 138
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/pal/r;->o(I[BI)Lcom/google/android/gms/internal/pal/q;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    iget-boolean v1, v4, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 143
    .line 144
    if-eqz v1, :cond_5

    .line 145
    .line 146
    invoke-virtual {v4}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 147
    .line 148
    .line 149
    iput-boolean v3, v4, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 150
    .line 151
    :cond_5
    iget-object v1, v4, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 152
    .line 153
    check-cast v1, Lcom/google/android/gms/internal/pal/c6;

    .line 154
    .line 155
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/pal/c6;->u(Lcom/google/android/gms/internal/pal/c6;Lcom/google/android/gms/internal/pal/q;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    check-cast p1, Lcom/google/android/gms/internal/pal/c6;

    .line 163
    .line 164
    invoke-static {}, Lcom/google/android/gms/internal/pal/a6;->n()Lcom/google/android/gms/internal/pal/Z5;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    iget-boolean v2, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 169
    .line 170
    if-eqz v2, :cond_6

    .line 171
    .line 172
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 173
    .line 174
    .line 175
    iput-boolean v3, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 176
    .line 177
    :cond_6
    iget-object v2, v1, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 178
    .line 179
    check-cast v2, Lcom/google/android/gms/internal/pal/a6;

    .line 180
    .line 181
    invoke-static {v2}, Lcom/google/android/gms/internal/pal/a6;->r(Lcom/google/android/gms/internal/pal/a6;)V

    .line 182
    .line 183
    .line 184
    iget-boolean v2, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 185
    .line 186
    if-eqz v2, :cond_7

    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 189
    .line 190
    .line 191
    iput-boolean v3, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 192
    .line 193
    :cond_7
    iget-object v2, v1, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 194
    .line 195
    check-cast v2, Lcom/google/android/gms/internal/pal/a6;

    .line 196
    .line 197
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/pal/a6;->s(Lcom/google/android/gms/internal/pal/a6;Lcom/google/android/gms/internal/pal/c6;)V

    .line 198
    .line 199
    .line 200
    array-length p1, v0

    .line 201
    invoke-static {v3, v0, p1}, Lcom/google/android/gms/internal/pal/r;->o(I[BI)Lcom/google/android/gms/internal/pal/q;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    iget-boolean v0, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 206
    .line 207
    if-eqz v0, :cond_8

    .line 208
    .line 209
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 210
    .line 211
    .line 212
    iput-boolean v3, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 213
    .line 214
    :cond_8
    iget-object v0, v1, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 215
    .line 216
    check-cast v0, Lcom/google/android/gms/internal/pal/a6;

    .line 217
    .line 218
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/pal/a6;->t(Lcom/google/android/gms/internal/pal/a6;Lcom/google/android/gms/internal/pal/q;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    check-cast p1, Lcom/google/android/gms/internal/pal/a6;

    .line 226
    .line 227
    return-object p1

    .line 228
    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/pal/E5;

    .line 229
    .line 230
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/E5;->o()Lcom/google/android/gms/internal/pal/G5;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/G5;->p()Lcom/google/android/gms/internal/pal/N5;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/N5;->q()I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/y4;->Q(I)I

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/y4;->C0(I)Ljava/security/spec/ECParameterSpec;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    sget-object v1, Lcom/google/android/gms/internal/pal/J6;->h:Lcom/google/android/gms/internal/pal/J6;

    .line 251
    .line 252
    const-string v2, "EC"

    .line 253
    .line 254
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/pal/J6;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    check-cast v1, Ljava/security/KeyPairGenerator;

    .line 259
    .line 260
    invoke-virtual {v1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    .line 272
    .line 273
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 278
    .line 279
    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-static {}, Lcom/google/android/gms/internal/pal/L5;->o()Lcom/google/android/gms/internal/pal/K5;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    iget-boolean v4, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 288
    .line 289
    if-eqz v4, :cond_9

    .line 290
    .line 291
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 292
    .line 293
    .line 294
    iput-boolean v3, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 295
    .line 296
    :cond_9
    iget-object v4, v2, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 297
    .line 298
    check-cast v4, Lcom/google/android/gms/internal/pal/L5;

    .line 299
    .line 300
    invoke-static {v4}, Lcom/google/android/gms/internal/pal/L5;->t(Lcom/google/android/gms/internal/pal/L5;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/E5;->o()Lcom/google/android/gms/internal/pal/G5;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    iget-boolean v4, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 308
    .line 309
    if-eqz v4, :cond_a

    .line 310
    .line 311
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 312
    .line 313
    .line 314
    iput-boolean v3, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 315
    .line 316
    :cond_a
    iget-object v4, v2, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 317
    .line 318
    check-cast v4, Lcom/google/android/gms/internal/pal/L5;

    .line 319
    .line 320
    invoke-static {v4, p1}, Lcom/google/android/gms/internal/pal/L5;->u(Lcom/google/android/gms/internal/pal/L5;Lcom/google/android/gms/internal/pal/G5;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    array-length v4, p1

    .line 332
    invoke-static {v3, p1, v4}, Lcom/google/android/gms/internal/pal/r;->o(I[BI)Lcom/google/android/gms/internal/pal/q;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    iget-boolean v4, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 337
    .line 338
    if-eqz v4, :cond_b

    .line 339
    .line 340
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 341
    .line 342
    .line 343
    iput-boolean v3, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 344
    .line 345
    :cond_b
    iget-object v4, v2, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 346
    .line 347
    check-cast v4, Lcom/google/android/gms/internal/pal/L5;

    .line 348
    .line 349
    invoke-static {v4, p1}, Lcom/google/android/gms/internal/pal/L5;->v(Lcom/google/android/gms/internal/pal/L5;Lcom/google/android/gms/internal/pal/q;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    array-length v1, p1

    .line 361
    invoke-static {v3, p1, v1}, Lcom/google/android/gms/internal/pal/r;->o(I[BI)Lcom/google/android/gms/internal/pal/q;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    iget-boolean v1, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 366
    .line 367
    if-eqz v1, :cond_c

    .line 368
    .line 369
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 370
    .line 371
    .line 372
    iput-boolean v3, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 373
    .line 374
    :cond_c
    iget-object v1, v2, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 375
    .line 376
    check-cast v1, Lcom/google/android/gms/internal/pal/L5;

    .line 377
    .line 378
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/pal/L5;->w(Lcom/google/android/gms/internal/pal/L5;Lcom/google/android/gms/internal/pal/q;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    check-cast p1, Lcom/google/android/gms/internal/pal/L5;

    .line 386
    .line 387
    invoke-static {}, Lcom/google/android/gms/internal/pal/J5;->n()Lcom/google/android/gms/internal/pal/I5;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    iget-boolean v2, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 392
    .line 393
    if-eqz v2, :cond_d

    .line 394
    .line 395
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 396
    .line 397
    .line 398
    iput-boolean v3, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 399
    .line 400
    :cond_d
    iget-object v2, v1, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 401
    .line 402
    check-cast v2, Lcom/google/android/gms/internal/pal/J5;

    .line 403
    .line 404
    invoke-static {v2}, Lcom/google/android/gms/internal/pal/J5;->r(Lcom/google/android/gms/internal/pal/J5;)V

    .line 405
    .line 406
    .line 407
    iget-boolean v2, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 408
    .line 409
    if-eqz v2, :cond_e

    .line 410
    .line 411
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 412
    .line 413
    .line 414
    iput-boolean v3, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 415
    .line 416
    :cond_e
    iget-object v2, v1, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 417
    .line 418
    check-cast v2, Lcom/google/android/gms/internal/pal/J5;

    .line 419
    .line 420
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/pal/J5;->s(Lcom/google/android/gms/internal/pal/J5;Lcom/google/android/gms/internal/pal/L5;)V

    .line 421
    .line 422
    .line 423
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 428
    .line 429
    .line 430
    move-result-object p1

    .line 431
    array-length v0, p1

    .line 432
    invoke-static {v3, p1, v0}, Lcom/google/android/gms/internal/pal/r;->o(I[BI)Lcom/google/android/gms/internal/pal/q;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    iget-boolean v0, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 437
    .line 438
    if-eqz v0, :cond_f

    .line 439
    .line 440
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 441
    .line 442
    .line 443
    iput-boolean v3, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 444
    .line 445
    :cond_f
    iget-object v0, v1, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 446
    .line 447
    check-cast v0, Lcom/google/android/gms/internal/pal/J5;

    .line 448
    .line 449
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/pal/J5;->t(Lcom/google/android/gms/internal/pal/J5;Lcom/google/android/gms/internal/pal/q;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 453
    .line 454
    .line 455
    move-result-object p1

    .line 456
    check-cast p1, Lcom/google/android/gms/internal/pal/J5;

    .line 457
    .line 458
    return-object p1

    .line 459
    :pswitch_2
    check-cast p1, Lcom/google/android/gms/internal/pal/x5;

    .line 460
    .line 461
    invoke-static {}, Lcom/google/android/gms/internal/pal/v5;->n()Lcom/google/android/gms/internal/pal/u5;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/x5;->m()I

    .line 466
    .line 467
    .line 468
    move-result p1

    .line 469
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/O6;->a(I)[B

    .line 470
    .line 471
    .line 472
    move-result-object p1

    .line 473
    array-length v1, p1

    .line 474
    invoke-static {v3, p1, v1}, Lcom/google/android/gms/internal/pal/r;->o(I[BI)Lcom/google/android/gms/internal/pal/q;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    iget-boolean v1, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 479
    .line 480
    if-eqz v1, :cond_10

    .line 481
    .line 482
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 483
    .line 484
    .line 485
    iput-boolean v3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 486
    .line 487
    :cond_10
    iget-object v1, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 488
    .line 489
    check-cast v1, Lcom/google/android/gms/internal/pal/v5;

    .line 490
    .line 491
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/pal/v5;->r(Lcom/google/android/gms/internal/pal/v5;Lcom/google/android/gms/internal/pal/q;)V

    .line 492
    .line 493
    .line 494
    iget-boolean p1, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 495
    .line 496
    if-eqz p1, :cond_11

    .line 497
    .line 498
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 499
    .line 500
    .line 501
    iput-boolean v3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 502
    .line 503
    :cond_11
    iget-object p1, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 504
    .line 505
    check-cast p1, Lcom/google/android/gms/internal/pal/v5;

    .line 506
    .line 507
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/v5;->q(Lcom/google/android/gms/internal/pal/v5;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 511
    .line 512
    .line 513
    move-result-object p1

    .line 514
    check-cast p1, Lcom/google/android/gms/internal/pal/v5;

    .line 515
    .line 516
    return-object p1

    .line 517
    :pswitch_3
    check-cast p1, Lcom/google/android/gms/internal/pal/A6;

    .line 518
    .line 519
    invoke-static {}, Lcom/google/android/gms/internal/pal/z6;->n()Lcom/google/android/gms/internal/pal/y6;

    .line 520
    .line 521
    .line 522
    move-result-object p1

    .line 523
    iget-boolean v0, p1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 524
    .line 525
    if-eqz v0, :cond_12

    .line 526
    .line 527
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 528
    .line 529
    .line 530
    iput-boolean v3, p1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 531
    .line 532
    :cond_12
    iget-object v0, p1, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 533
    .line 534
    check-cast v0, Lcom/google/android/gms/internal/pal/z6;

    .line 535
    .line 536
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/z6;->q(Lcom/google/android/gms/internal/pal/z6;)V

    .line 537
    .line 538
    .line 539
    invoke-static {v2}, Lcom/google/android/gms/internal/pal/O6;->a(I)[B

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    array-length v1, v0

    .line 544
    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/pal/r;->o(I[BI)Lcom/google/android/gms/internal/pal/q;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    iget-boolean v1, p1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 549
    .line 550
    if-eqz v1, :cond_13

    .line 551
    .line 552
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 553
    .line 554
    .line 555
    iput-boolean v3, p1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 556
    .line 557
    :cond_13
    iget-object v1, p1, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 558
    .line 559
    check-cast v1, Lcom/google/android/gms/internal/pal/z6;

    .line 560
    .line 561
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/pal/z6;->r(Lcom/google/android/gms/internal/pal/z6;Lcom/google/android/gms/internal/pal/q;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 565
    .line 566
    .line 567
    move-result-object p1

    .line 568
    check-cast p1, Lcom/google/android/gms/internal/pal/z6;

    .line 569
    .line 570
    return-object p1

    .line 571
    :pswitch_4
    check-cast p1, Lcom/google/android/gms/internal/pal/w6;

    .line 572
    .line 573
    invoke-static {}, Lcom/google/android/gms/internal/pal/v6;->n()Lcom/google/android/gms/internal/pal/u6;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    iget-boolean v1, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 578
    .line 579
    if-eqz v1, :cond_14

    .line 580
    .line 581
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 582
    .line 583
    .line 584
    iput-boolean v3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 585
    .line 586
    :cond_14
    iget-object v1, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 587
    .line 588
    check-cast v1, Lcom/google/android/gms/internal/pal/v6;

    .line 589
    .line 590
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/pal/v6;->r(Lcom/google/android/gms/internal/pal/v6;Lcom/google/android/gms/internal/pal/w6;)V

    .line 591
    .line 592
    .line 593
    iget-boolean p1, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 594
    .line 595
    if-eqz p1, :cond_15

    .line 596
    .line 597
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 598
    .line 599
    .line 600
    iput-boolean v3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 601
    .line 602
    :cond_15
    iget-object p1, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 603
    .line 604
    check-cast p1, Lcom/google/android/gms/internal/pal/v6;

    .line 605
    .line 606
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/v6;->q(Lcom/google/android/gms/internal/pal/v6;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 610
    .line 611
    .line 612
    move-result-object p1

    .line 613
    check-cast p1, Lcom/google/android/gms/internal/pal/v6;

    .line 614
    .line 615
    return-object p1

    .line 616
    :pswitch_5
    check-cast p1, Lcom/google/android/gms/internal/pal/t6;

    .line 617
    .line 618
    invoke-static {}, Lcom/google/android/gms/internal/pal/s6;->n()Lcom/google/android/gms/internal/pal/r6;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    iget-boolean v1, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 623
    .line 624
    if-eqz v1, :cond_16

    .line 625
    .line 626
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 627
    .line 628
    .line 629
    iput-boolean v3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 630
    .line 631
    :cond_16
    iget-object v1, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 632
    .line 633
    check-cast v1, Lcom/google/android/gms/internal/pal/s6;

    .line 634
    .line 635
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/pal/s6;->r(Lcom/google/android/gms/internal/pal/s6;Lcom/google/android/gms/internal/pal/t6;)V

    .line 636
    .line 637
    .line 638
    iget-boolean p1, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 639
    .line 640
    if-eqz p1, :cond_17

    .line 641
    .line 642
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 643
    .line 644
    .line 645
    iput-boolean v3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 646
    .line 647
    :cond_17
    iget-object p1, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 648
    .line 649
    check-cast p1, Lcom/google/android/gms/internal/pal/s6;

    .line 650
    .line 651
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/s6;->q(Lcom/google/android/gms/internal/pal/s6;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 655
    .line 656
    .line 657
    move-result-object p1

    .line 658
    check-cast p1, Lcom/google/android/gms/internal/pal/s6;

    .line 659
    .line 660
    return-object p1

    .line 661
    :pswitch_6
    check-cast p1, Lcom/google/android/gms/internal/pal/A5;

    .line 662
    .line 663
    invoke-static {}, Lcom/google/android/gms/internal/pal/z5;->n()Lcom/google/android/gms/internal/pal/y5;

    .line 664
    .line 665
    .line 666
    move-result-object p1

    .line 667
    iget-boolean v0, p1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 668
    .line 669
    if-eqz v0, :cond_18

    .line 670
    .line 671
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 672
    .line 673
    .line 674
    iput-boolean v3, p1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 675
    .line 676
    :cond_18
    iget-object v0, p1, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 677
    .line 678
    check-cast v0, Lcom/google/android/gms/internal/pal/z5;

    .line 679
    .line 680
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/z5;->q(Lcom/google/android/gms/internal/pal/z5;)V

    .line 681
    .line 682
    .line 683
    invoke-static {v2}, Lcom/google/android/gms/internal/pal/O6;->a(I)[B

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    array-length v1, v0

    .line 688
    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/pal/r;->o(I[BI)Lcom/google/android/gms/internal/pal/q;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    iget-boolean v1, p1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 693
    .line 694
    if-eqz v1, :cond_19

    .line 695
    .line 696
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 697
    .line 698
    .line 699
    iput-boolean v3, p1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 700
    .line 701
    :cond_19
    iget-object v1, p1, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 702
    .line 703
    check-cast v1, Lcom/google/android/gms/internal/pal/z5;

    .line 704
    .line 705
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/pal/z5;->r(Lcom/google/android/gms/internal/pal/z5;Lcom/google/android/gms/internal/pal/q;)V

    .line 706
    .line 707
    .line 708
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 709
    .line 710
    .line 711
    move-result-object p1

    .line 712
    check-cast p1, Lcom/google/android/gms/internal/pal/z5;

    .line 713
    .line 714
    return-object p1

    .line 715
    :pswitch_7
    check-cast p1, Lcom/google/android/gms/internal/pal/t5;

    .line 716
    .line 717
    invoke-static {}, Lcom/google/android/gms/internal/pal/r5;->n()Lcom/google/android/gms/internal/pal/q5;

    .line 718
    .line 719
    .line 720
    move-result-object v0

    .line 721
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/t5;->m()I

    .line 722
    .line 723
    .line 724
    move-result p1

    .line 725
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/O6;->a(I)[B

    .line 726
    .line 727
    .line 728
    move-result-object p1

    .line 729
    array-length v1, p1

    .line 730
    invoke-static {v3, p1, v1}, Lcom/google/android/gms/internal/pal/r;->o(I[BI)Lcom/google/android/gms/internal/pal/q;

    .line 731
    .line 732
    .line 733
    move-result-object p1

    .line 734
    iget-boolean v1, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 735
    .line 736
    if-eqz v1, :cond_1a

    .line 737
    .line 738
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 739
    .line 740
    .line 741
    iput-boolean v3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 742
    .line 743
    :cond_1a
    iget-object v1, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 744
    .line 745
    check-cast v1, Lcom/google/android/gms/internal/pal/r5;

    .line 746
    .line 747
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/pal/r5;->r(Lcom/google/android/gms/internal/pal/r5;Lcom/google/android/gms/internal/pal/q;)V

    .line 748
    .line 749
    .line 750
    iget-boolean p1, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 751
    .line 752
    if-eqz p1, :cond_1b

    .line 753
    .line 754
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 755
    .line 756
    .line 757
    iput-boolean v3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 758
    .line 759
    :cond_1b
    iget-object p1, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 760
    .line 761
    check-cast p1, Lcom/google/android/gms/internal/pal/r5;

    .line 762
    .line 763
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/r5;->q(Lcom/google/android/gms/internal/pal/r5;)V

    .line 764
    .line 765
    .line 766
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 767
    .line 768
    .line 769
    move-result-object p1

    .line 770
    check-cast p1, Lcom/google/android/gms/internal/pal/r5;

    .line 771
    .line 772
    return-object p1

    .line 773
    :pswitch_8
    check-cast p1, Lcom/google/android/gms/internal/pal/p5;

    .line 774
    .line 775
    invoke-static {}, Lcom/google/android/gms/internal/pal/n5;->n()Lcom/google/android/gms/internal/pal/m5;

    .line 776
    .line 777
    .line 778
    move-result-object v0

    .line 779
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/p5;->m()I

    .line 780
    .line 781
    .line 782
    move-result p1

    .line 783
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/O6;->a(I)[B

    .line 784
    .line 785
    .line 786
    move-result-object p1

    .line 787
    array-length v1, p1

    .line 788
    invoke-static {v3, p1, v1}, Lcom/google/android/gms/internal/pal/r;->o(I[BI)Lcom/google/android/gms/internal/pal/q;

    .line 789
    .line 790
    .line 791
    move-result-object p1

    .line 792
    iget-boolean v1, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 793
    .line 794
    if-eqz v1, :cond_1c

    .line 795
    .line 796
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 797
    .line 798
    .line 799
    iput-boolean v3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 800
    .line 801
    :cond_1c
    iget-object v1, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 802
    .line 803
    check-cast v1, Lcom/google/android/gms/internal/pal/n5;

    .line 804
    .line 805
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/pal/n5;->r(Lcom/google/android/gms/internal/pal/n5;Lcom/google/android/gms/internal/pal/q;)V

    .line 806
    .line 807
    .line 808
    iget-boolean p1, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 809
    .line 810
    if-eqz p1, :cond_1d

    .line 811
    .line 812
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 813
    .line 814
    .line 815
    iput-boolean v3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 816
    .line 817
    :cond_1d
    iget-object p1, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 818
    .line 819
    check-cast p1, Lcom/google/android/gms/internal/pal/n5;

    .line 820
    .line 821
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/n5;->q(Lcom/google/android/gms/internal/pal/n5;)V

    .line 822
    .line 823
    .line 824
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 825
    .line 826
    .line 827
    move-result-object p1

    .line 828
    check-cast p1, Lcom/google/android/gms/internal/pal/n5;

    .line 829
    .line 830
    return-object p1

    .line 831
    :pswitch_9
    check-cast p1, Lcom/google/android/gms/internal/pal/j5;

    .line 832
    .line 833
    invoke-static {}, Lcom/google/android/gms/internal/pal/h5;->n()Lcom/google/android/gms/internal/pal/g5;

    .line 834
    .line 835
    .line 836
    move-result-object v0

    .line 837
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/j5;->m()I

    .line 838
    .line 839
    .line 840
    move-result v1

    .line 841
    invoke-static {v1}, Lcom/google/android/gms/internal/pal/O6;->a(I)[B

    .line 842
    .line 843
    .line 844
    move-result-object v1

    .line 845
    array-length v2, v1

    .line 846
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/pal/r;->o(I[BI)Lcom/google/android/gms/internal/pal/q;

    .line 847
    .line 848
    .line 849
    move-result-object v1

    .line 850
    iget-boolean v2, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 851
    .line 852
    if-eqz v2, :cond_1e

    .line 853
    .line 854
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 855
    .line 856
    .line 857
    iput-boolean v3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 858
    .line 859
    :cond_1e
    iget-object v2, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 860
    .line 861
    check-cast v2, Lcom/google/android/gms/internal/pal/h5;

    .line 862
    .line 863
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/pal/h5;->t(Lcom/google/android/gms/internal/pal/h5;Lcom/google/android/gms/internal/pal/q;)V

    .line 864
    .line 865
    .line 866
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/j5;->p()Lcom/google/android/gms/internal/pal/l5;

    .line 867
    .line 868
    .line 869
    move-result-object p1

    .line 870
    iget-boolean v1, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 871
    .line 872
    if-eqz v1, :cond_1f

    .line 873
    .line 874
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 875
    .line 876
    .line 877
    iput-boolean v3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 878
    .line 879
    :cond_1f
    iget-object v1, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 880
    .line 881
    check-cast v1, Lcom/google/android/gms/internal/pal/h5;

    .line 882
    .line 883
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/pal/h5;->s(Lcom/google/android/gms/internal/pal/h5;Lcom/google/android/gms/internal/pal/l5;)V

    .line 884
    .line 885
    .line 886
    iget-boolean p1, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 887
    .line 888
    if-eqz p1, :cond_20

    .line 889
    .line 890
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 891
    .line 892
    .line 893
    iput-boolean v3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 894
    .line 895
    :cond_20
    iget-object p1, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 896
    .line 897
    check-cast p1, Lcom/google/android/gms/internal/pal/h5;

    .line 898
    .line 899
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/h5;->r(Lcom/google/android/gms/internal/pal/h5;)V

    .line 900
    .line 901
    .line 902
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 903
    .line 904
    .line 905
    move-result-object p1

    .line 906
    check-cast p1, Lcom/google/android/gms/internal/pal/h5;

    .line 907
    .line 908
    return-object p1

    .line 909
    :pswitch_a
    check-cast p1, Lcom/google/android/gms/internal/pal/Y4;

    .line 910
    .line 911
    new-instance v1, Lcom/google/android/gms/internal/pal/K3;

    .line 912
    .line 913
    const-class v2, Lcom/google/android/gms/internal/pal/M6;

    .line 914
    .line 915
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/pal/K3;-><init>(ILjava/lang/Class;)V

    .line 916
    .line 917
    .line 918
    new-array v2, v0, [Lcom/google/android/gms/internal/pal/w4;

    .line 919
    .line 920
    aput-object v1, v2, v3

    .line 921
    .line 922
    new-instance v1, Ljava/util/HashMap;

    .line 923
    .line 924
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 925
    .line 926
    .line 927
    const/4 v4, 0x0

    .line 928
    :goto_0
    if-gtz v4, :cond_22

    .line 929
    .line 930
    aget-object v5, v2, v4

    .line 931
    .line 932
    iget-object v6, v5, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 933
    .line 934
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 935
    .line 936
    .line 937
    move-result v6

    .line 938
    iget-object v7, v5, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 939
    .line 940
    if-nez v6, :cond_21

    .line 941
    .line 942
    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    .line 944
    .line 945
    add-int/2addr v4, v0

    .line 946
    goto :goto_0

    .line 947
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 948
    .line 949
    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v0

    .line 953
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v0

    .line 957
    const-string v1, "KeyTypeManager constructed with duplicate factories for primitive "

    .line 958
    .line 959
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 960
    .line 961
    .line 962
    move-result-object v0

    .line 963
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 964
    .line 965
    .line 966
    throw p1

    .line 967
    :cond_22
    aget-object v0, v2, v3

    .line 968
    .line 969
    iget-object v0, v0, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 970
    .line 971
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 972
    .line 973
    .line 974
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/Y4;->o()Lcom/google/android/gms/internal/pal/d5;

    .line 975
    .line 976
    .line 977
    move-result-object v0

    .line 978
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/N3;->e(Lcom/google/android/gms/internal/pal/d5;)Lcom/google/android/gms/internal/pal/b5;

    .line 979
    .line 980
    .line 981
    move-result-object v0

    .line 982
    new-instance v1, Lcom/google/android/gms/internal/pal/M3;

    .line 983
    .line 984
    const/16 v2, 0xd

    .line 985
    .line 986
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/pal/M3;-><init>(I)V

    .line 987
    .line 988
    .line 989
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/M3;->n()Lcom/google/android/gms/internal/pal/n4;

    .line 990
    .line 991
    .line 992
    move-result-object v1

    .line 993
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/Y4;->p()Lcom/google/android/gms/internal/pal/R5;

    .line 994
    .line 995
    .line 996
    move-result-object p1

    .line 997
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/pal/n4;->a(Lcom/google/android/gms/internal/pal/j;)Lcom/google/android/gms/internal/pal/j;

    .line 998
    .line 999
    .line 1000
    move-result-object p1

    .line 1001
    invoke-static {}, Lcom/google/android/gms/internal/pal/W4;->n()Lcom/google/android/gms/internal/pal/V4;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v1

    .line 1005
    iget-boolean v2, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 1006
    .line 1007
    if-eqz v2, :cond_23

    .line 1008
    .line 1009
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 1010
    .line 1011
    .line 1012
    iput-boolean v3, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 1013
    .line 1014
    :cond_23
    iget-object v2, v1, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 1015
    .line 1016
    check-cast v2, Lcom/google/android/gms/internal/pal/W4;

    .line 1017
    .line 1018
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/pal/W4;->s(Lcom/google/android/gms/internal/pal/W4;Lcom/google/android/gms/internal/pal/b5;)V

    .line 1019
    .line 1020
    .line 1021
    check-cast p1, Lcom/google/android/gms/internal/pal/P5;

    .line 1022
    .line 1023
    iget-boolean v0, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 1024
    .line 1025
    if-eqz v0, :cond_24

    .line 1026
    .line 1027
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 1028
    .line 1029
    .line 1030
    iput-boolean v3, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 1031
    .line 1032
    :cond_24
    iget-object v0, v1, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 1033
    .line 1034
    check-cast v0, Lcom/google/android/gms/internal/pal/W4;

    .line 1035
    .line 1036
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/pal/W4;->t(Lcom/google/android/gms/internal/pal/W4;Lcom/google/android/gms/internal/pal/P5;)V

    .line 1037
    .line 1038
    .line 1039
    iget-boolean p1, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 1040
    .line 1041
    if-eqz p1, :cond_25

    .line 1042
    .line 1043
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 1044
    .line 1045
    .line 1046
    iput-boolean v3, v1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 1047
    .line 1048
    :cond_25
    iget-object p1, v1, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 1049
    .line 1050
    check-cast p1, Lcom/google/android/gms/internal/pal/W4;

    .line 1051
    .line 1052
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/pal/W4;->r(Lcom/google/android/gms/internal/pal/W4;I)V

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 1056
    .line 1057
    .line 1058
    move-result-object p1

    .line 1059
    check-cast p1, Lcom/google/android/gms/internal/pal/W4;

    .line 1060
    .line 1061
    return-object p1

    .line 1062
    nop

    .line 1063
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public final synthetic b(Lcom/google/android/gms/internal/pal/r;)Lcom/google/android/gms/internal/pal/j;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/pal/L3;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/pal/x;->a()Lcom/google/android/gms/internal/pal/x;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/pal/R5;->p(Lcom/google/android/gms/internal/pal/r;Lcom/google/android/gms/internal/pal/x;)Lcom/google/android/gms/internal/pal/R5;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/pal/x;->a()Lcom/google/android/gms/internal/pal/x;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/pal/W5;->n(Lcom/google/android/gms/internal/pal/r;Lcom/google/android/gms/internal/pal/x;)Lcom/google/android/gms/internal/pal/W5;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :pswitch_1
    invoke-static {}, Lcom/google/android/gms/internal/pal/x;->a()Lcom/google/android/gms/internal/pal/x;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/pal/E5;->n(Lcom/google/android/gms/internal/pal/r;Lcom/google/android/gms/internal/pal/x;)Lcom/google/android/gms/internal/pal/E5;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :pswitch_2
    invoke-static {}, Lcom/google/android/gms/internal/pal/x;->a()Lcom/google/android/gms/internal/pal/x;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/pal/x5;->o(Lcom/google/android/gms/internal/pal/r;Lcom/google/android/gms/internal/pal/x;)Lcom/google/android/gms/internal/pal/x5;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/pal/x;->a()Lcom/google/android/gms/internal/pal/x;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/pal/A6;->n(Lcom/google/android/gms/internal/pal/r;Lcom/google/android/gms/internal/pal/x;)Lcom/google/android/gms/internal/pal/A6;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :pswitch_4
    invoke-static {}, Lcom/google/android/gms/internal/pal/x;->a()Lcom/google/android/gms/internal/pal/x;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/pal/w6;->n(Lcom/google/android/gms/internal/pal/r;Lcom/google/android/gms/internal/pal/x;)Lcom/google/android/gms/internal/pal/w6;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    :pswitch_5
    invoke-static {}, Lcom/google/android/gms/internal/pal/x;->a()Lcom/google/android/gms/internal/pal/x;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/pal/t6;->n(Lcom/google/android/gms/internal/pal/r;Lcom/google/android/gms/internal/pal/x;)Lcom/google/android/gms/internal/pal/t6;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :pswitch_6
    invoke-static {}, Lcom/google/android/gms/internal/pal/x;->a()Lcom/google/android/gms/internal/pal/x;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/pal/A5;->n(Lcom/google/android/gms/internal/pal/r;Lcom/google/android/gms/internal/pal/x;)Lcom/google/android/gms/internal/pal/A5;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1

    .line 78
    :pswitch_7
    invoke-static {}, Lcom/google/android/gms/internal/pal/x;->a()Lcom/google/android/gms/internal/pal/x;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/pal/t5;->o(Lcom/google/android/gms/internal/pal/r;Lcom/google/android/gms/internal/pal/x;)Lcom/google/android/gms/internal/pal/t5;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    return-object p1

    .line 87
    :pswitch_8
    invoke-static {}, Lcom/google/android/gms/internal/pal/x;->a()Lcom/google/android/gms/internal/pal/x;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/pal/p5;->o(Lcom/google/android/gms/internal/pal/r;Lcom/google/android/gms/internal/pal/x;)Lcom/google/android/gms/internal/pal/p5;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    return-object p1

    .line 96
    :pswitch_9
    invoke-static {}, Lcom/google/android/gms/internal/pal/x;->a()Lcom/google/android/gms/internal/pal/x;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/pal/j5;->o(Lcom/google/android/gms/internal/pal/r;Lcom/google/android/gms/internal/pal/x;)Lcom/google/android/gms/internal/pal/j5;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    return-object p1

    .line 105
    :pswitch_a
    invoke-static {}, Lcom/google/android/gms/internal/pal/x;->a()Lcom/google/android/gms/internal/pal/x;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/pal/Y4;->n(Lcom/google/android/gms/internal/pal/r;Lcom/google/android/gms/internal/pal/x;)Lcom/google/android/gms/internal/pal/Y4;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    return-object p1

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public final c()Ljava/util/Map;
    .locals 10

    .line 1
    const/4 v0, 0x4

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/pal/L3;->b:I

    .line 3
    .line 4
    const-string v2, "AES128_CTR_HMAC_SHA256"

    .line 5
    .line 6
    const-string v3, "AES128_GCM"

    .line 7
    .line 8
    const/4 v4, 0x6

    .line 9
    const/4 v5, 0x5

    .line 10
    const/16 v6, 0x10

    .line 11
    .line 12
    const/16 v7, 0x20

    .line 13
    .line 14
    const/4 v8, 0x3

    .line 15
    const/4 v9, 0x1

    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    :pswitch_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :pswitch_1
    new-instance v0, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {v7, v6, v5, v9}, Lcom/google/android/gms/internal/pal/M3;->z(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "HMAC_SHA256_128BITTAG"

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    invoke-static {v7, v6, v5, v8}, Lcom/google/android/gms/internal/pal/M3;->z(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "HMAC_SHA256_128BITTAG_RAW"

    .line 43
    .line 44
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    invoke-static {v7, v7, v5, v9}, Lcom/google/android/gms/internal/pal/M3;->z(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "HMAC_SHA256_256BITTAG"

    .line 52
    .line 53
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    invoke-static {v7, v7, v5, v8}, Lcom/google/android/gms/internal/pal/M3;->z(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v2, "HMAC_SHA256_256BITTAG_RAW"

    .line 61
    .line 62
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    const/16 v1, 0x40

    .line 66
    .line 67
    invoke-static {v1, v6, v4, v9}, Lcom/google/android/gms/internal/pal/M3;->z(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const-string v3, "HMAC_SHA512_128BITTAG"

    .line 72
    .line 73
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v6, v4, v8}, Lcom/google/android/gms/internal/pal/M3;->z(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const-string v3, "HMAC_SHA512_128BITTAG_RAW"

    .line 81
    .line 82
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v7, v4, v9}, Lcom/google/android/gms/internal/pal/M3;->z(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const-string v3, "HMAC_SHA512_256BITTAG"

    .line 90
    .line 91
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    invoke-static {v1, v7, v4, v8}, Lcom/google/android/gms/internal/pal/M3;->z(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    const-string v3, "HMAC_SHA512_256BITTAG_RAW"

    .line 99
    .line 100
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    invoke-static {v1, v1, v4, v9}, Lcom/google/android/gms/internal/pal/M3;->z(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    const-string v3, "HMAC_SHA512_512BITTAG"

    .line 108
    .line 109
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    invoke-static {v1, v1, v4, v8}, Lcom/google/android/gms/internal/pal/M3;->z(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    const-string v2, "HMAC_SHA512_512BITTAG_RAW"

    .line 117
    .line 118
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    return-object v0

    .line 126
    :pswitch_2
    new-instance v1, Ljava/util/HashMap;

    .line 127
    .line 128
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-static {v8, v8, v8, v9}, Lcom/google/android/gms/internal/pal/h4;->v(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    const-string v3, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_128_GCM"

    .line 136
    .line 137
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    invoke-static {v8, v8, v8, v8}, Lcom/google/android/gms/internal/pal/h4;->v(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    const-string v3, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_128_GCM_RAW"

    .line 145
    .line 146
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    invoke-static {v8, v8, v0, v9}, Lcom/google/android/gms/internal/pal/h4;->v(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    const-string v3, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_256_GCM"

    .line 154
    .line 155
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    invoke-static {v8, v8, v0, v8}, Lcom/google/android/gms/internal/pal/h4;->v(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    const-string v3, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_256_GCM_RAW"

    .line 163
    .line 164
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    invoke-static {v8, v8, v5, v9}, Lcom/google/android/gms/internal/pal/h4;->v(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    const-string v3, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_CHACHA20_POLY1305"

    .line 172
    .line 173
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    invoke-static {v8, v8, v5, v8}, Lcom/google/android/gms/internal/pal/h4;->v(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    const-string v3, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_CHACHA20_POLY1305_RAW"

    .line 181
    .line 182
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    invoke-static {v0, v8, v8, v9}, Lcom/google/android/gms/internal/pal/h4;->v(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    const-string v3, "DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_128_GCM"

    .line 190
    .line 191
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    invoke-static {v0, v8, v8, v8}, Lcom/google/android/gms/internal/pal/h4;->v(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    const-string v3, "DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_128_GCM_RAW"

    .line 199
    .line 200
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    invoke-static {v0, v8, v0, v9}, Lcom/google/android/gms/internal/pal/h4;->v(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    const-string v3, "DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_256_GCM"

    .line 208
    .line 209
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    invoke-static {v0, v8, v0, v8}, Lcom/google/android/gms/internal/pal/h4;->v(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    const-string v3, "DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_256_GCM_RAW"

    .line 217
    .line 218
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    invoke-static {v5, v0, v8, v9}, Lcom/google/android/gms/internal/pal/h4;->v(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    const-string v3, "DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_128_GCM"

    .line 226
    .line 227
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    invoke-static {v5, v0, v8, v8}, Lcom/google/android/gms/internal/pal/h4;->v(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    const-string v3, "DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_128_GCM_RAW"

    .line 235
    .line 236
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    invoke-static {v5, v0, v0, v9}, Lcom/google/android/gms/internal/pal/h4;->v(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    const-string v3, "DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_256_GCM"

    .line 244
    .line 245
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    invoke-static {v5, v0, v0, v8}, Lcom/google/android/gms/internal/pal/h4;->v(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    const-string v3, "DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_256_GCM_RAW"

    .line 253
    .line 254
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    invoke-static {v4, v5, v8, v9}, Lcom/google/android/gms/internal/pal/h4;->v(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    const-string v3, "DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_128_GCM"

    .line 262
    .line 263
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    invoke-static {v4, v5, v8, v8}, Lcom/google/android/gms/internal/pal/h4;->v(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    const-string v3, "DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_128_GCM_RAW"

    .line 271
    .line 272
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    invoke-static {v4, v5, v0, v9}, Lcom/google/android/gms/internal/pal/h4;->v(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    const-string v3, "DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_256_GCM"

    .line 280
    .line 281
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    invoke-static {v4, v5, v0, v8}, Lcom/google/android/gms/internal/pal/h4;->v(IIII)Lcom/google/android/gms/internal/pal/m4;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    const-string v2, "DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_256_GCM_RAW"

    .line 289
    .line 290
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    return-object v0

    .line 298
    :pswitch_3
    new-instance v1, Ljava/util/HashMap;

    .line 299
    .line 300
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 301
    .line 302
    .line 303
    invoke-static {v3}, Lcom/google/android/gms/internal/pal/y4;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/pal/x3;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    sget-object v5, Lcom/google/android/gms/internal/pal/Y3;->d:[B

    .line 308
    .line 309
    invoke-static {v8, v4, v5, v9}, Lcom/google/android/gms/internal/pal/Y3;->v(ILcom/google/android/gms/internal/pal/x3;[BI)Lcom/google/android/gms/internal/pal/m4;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    const-string v6, "ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM"

    .line 314
    .line 315
    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    invoke-static {v3}, Lcom/google/android/gms/internal/pal/y4;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/pal/x3;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    invoke-static {v8, v4, v5, v8}, Lcom/google/android/gms/internal/pal/Y3;->v(ILcom/google/android/gms/internal/pal/x3;[BI)Lcom/google/android/gms/internal/pal/m4;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    const-string v6, "ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_RAW"

    .line 327
    .line 328
    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    invoke-static {v3}, Lcom/google/android/gms/internal/pal/y4;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/pal/x3;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    invoke-static {v0, v4, v5, v9}, Lcom/google/android/gms/internal/pal/Y3;->v(ILcom/google/android/gms/internal/pal/x3;[BI)Lcom/google/android/gms/internal/pal/m4;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    const-string v6, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM"

    .line 340
    .line 341
    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    invoke-static {v3}, Lcom/google/android/gms/internal/pal/y4;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/pal/x3;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    invoke-static {v0, v4, v5, v8}, Lcom/google/android/gms/internal/pal/Y3;->v(ILcom/google/android/gms/internal/pal/x3;[BI)Lcom/google/android/gms/internal/pal/m4;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    const-string v6, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM_RAW"

    .line 353
    .line 354
    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    invoke-static {v3}, Lcom/google/android/gms/internal/pal/y4;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/pal/x3;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    invoke-static {v0, v3, v5, v8}, Lcom/google/android/gms/internal/pal/Y3;->v(ILcom/google/android/gms/internal/pal/x3;[BI)Lcom/google/android/gms/internal/pal/m4;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    const-string v4, "ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_COMPRESSED_WITHOUT_PREFIX"

    .line 366
    .line 367
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    invoke-static {v2}, Lcom/google/android/gms/internal/pal/y4;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/pal/x3;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    invoke-static {v8, v3, v5, v9}, Lcom/google/android/gms/internal/pal/Y3;->v(ILcom/google/android/gms/internal/pal/x3;[BI)Lcom/google/android/gms/internal/pal/m4;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    const-string v4, "ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256"

    .line 379
    .line 380
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    invoke-static {v2}, Lcom/google/android/gms/internal/pal/y4;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/pal/x3;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    invoke-static {v8, v3, v5, v8}, Lcom/google/android/gms/internal/pal/Y3;->v(ILcom/google/android/gms/internal/pal/x3;[BI)Lcom/google/android/gms/internal/pal/m4;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    const-string v4, "ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW"

    .line 392
    .line 393
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    invoke-static {v2}, Lcom/google/android/gms/internal/pal/y4;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/pal/x3;

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    invoke-static {v0, v3, v5, v9}, Lcom/google/android/gms/internal/pal/Y3;->v(ILcom/google/android/gms/internal/pal/x3;[BI)Lcom/google/android/gms/internal/pal/m4;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    const-string v4, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256"

    .line 405
    .line 406
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    invoke-static {v2}, Lcom/google/android/gms/internal/pal/y4;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/pal/x3;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    invoke-static {v0, v2, v5, v8}, Lcom/google/android/gms/internal/pal/Y3;->v(ILcom/google/android/gms/internal/pal/x3;[BI)Lcom/google/android/gms/internal/pal/m4;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    const-string v2, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW"

    .line 418
    .line 419
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    return-object v0

    .line 427
    :pswitch_4
    new-instance v0, Ljava/util/HashMap;

    .line 428
    .line 429
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 430
    .line 431
    .line 432
    new-instance v1, Lcom/google/android/gms/internal/pal/m4;

    .line 433
    .line 434
    invoke-static {}, Lcom/google/android/gms/internal/pal/x5;->n()Lcom/google/android/gms/internal/pal/w5;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    iget-boolean v3, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 439
    .line 440
    const/4 v4, 0x0

    .line 441
    if-eqz v3, :cond_0

    .line 442
    .line 443
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 444
    .line 445
    .line 446
    iput-boolean v4, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 447
    .line 448
    :cond_0
    iget-object v3, v2, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 449
    .line 450
    check-cast v3, Lcom/google/android/gms/internal/pal/x5;

    .line 451
    .line 452
    invoke-static {v3}, Lcom/google/android/gms/internal/pal/x5;->p(Lcom/google/android/gms/internal/pal/x5;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    check-cast v2, Lcom/google/android/gms/internal/pal/x5;

    .line 460
    .line 461
    invoke-direct {v1, v2, v9}, Lcom/google/android/gms/internal/pal/m4;-><init>(Lcom/google/android/gms/internal/pal/D;I)V

    .line 462
    .line 463
    .line 464
    const-string v2, "AES256_SIV"

    .line 465
    .line 466
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    new-instance v1, Lcom/google/android/gms/internal/pal/m4;

    .line 470
    .line 471
    invoke-static {}, Lcom/google/android/gms/internal/pal/x5;->n()Lcom/google/android/gms/internal/pal/w5;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    iget-boolean v3, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 476
    .line 477
    if-eqz v3, :cond_1

    .line 478
    .line 479
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 480
    .line 481
    .line 482
    iput-boolean v4, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 483
    .line 484
    :cond_1
    iget-object v3, v2, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 485
    .line 486
    check-cast v3, Lcom/google/android/gms/internal/pal/x5;

    .line 487
    .line 488
    invoke-static {v3}, Lcom/google/android/gms/internal/pal/x5;->p(Lcom/google/android/gms/internal/pal/x5;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    check-cast v2, Lcom/google/android/gms/internal/pal/x5;

    .line 496
    .line 497
    invoke-direct {v1, v2, v8}, Lcom/google/android/gms/internal/pal/m4;-><init>(Lcom/google/android/gms/internal/pal/D;I)V

    .line 498
    .line 499
    .line 500
    const-string v2, "AES256_SIV_RAW"

    .line 501
    .line 502
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    return-object v0

    .line 510
    :pswitch_5
    new-instance v0, Ljava/util/HashMap;

    .line 511
    .line 512
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 513
    .line 514
    .line 515
    new-instance v1, Lcom/google/android/gms/internal/pal/m4;

    .line 516
    .line 517
    invoke-static {}, Lcom/google/android/gms/internal/pal/A6;->m()Lcom/google/android/gms/internal/pal/A6;

    .line 518
    .line 519
    .line 520
    move-result-object v2

    .line 521
    invoke-direct {v1, v2, v9}, Lcom/google/android/gms/internal/pal/m4;-><init>(Lcom/google/android/gms/internal/pal/D;I)V

    .line 522
    .line 523
    .line 524
    const-string v2, "XCHACHA20_POLY1305"

    .line 525
    .line 526
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    new-instance v1, Lcom/google/android/gms/internal/pal/m4;

    .line 530
    .line 531
    invoke-static {}, Lcom/google/android/gms/internal/pal/A6;->m()Lcom/google/android/gms/internal/pal/A6;

    .line 532
    .line 533
    .line 534
    move-result-object v2

    .line 535
    invoke-direct {v1, v2, v8}, Lcom/google/android/gms/internal/pal/m4;-><init>(Lcom/google/android/gms/internal/pal/D;I)V

    .line 536
    .line 537
    .line 538
    const-string v2, "XCHACHA20_POLY1305_RAW"

    .line 539
    .line 540
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    return-object v0

    .line 548
    :pswitch_6
    new-instance v0, Ljava/util/HashMap;

    .line 549
    .line 550
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 551
    .line 552
    .line 553
    new-instance v1, Lcom/google/android/gms/internal/pal/m4;

    .line 554
    .line 555
    invoke-static {}, Lcom/google/android/gms/internal/pal/A5;->m()Lcom/google/android/gms/internal/pal/A5;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    invoke-direct {v1, v2, v9}, Lcom/google/android/gms/internal/pal/m4;-><init>(Lcom/google/android/gms/internal/pal/D;I)V

    .line 560
    .line 561
    .line 562
    const-string v2, "CHACHA20_POLY1305"

    .line 563
    .line 564
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    new-instance v1, Lcom/google/android/gms/internal/pal/m4;

    .line 568
    .line 569
    invoke-static {}, Lcom/google/android/gms/internal/pal/A5;->m()Lcom/google/android/gms/internal/pal/A5;

    .line 570
    .line 571
    .line 572
    move-result-object v2

    .line 573
    invoke-direct {v1, v2, v8}, Lcom/google/android/gms/internal/pal/m4;-><init>(Lcom/google/android/gms/internal/pal/D;I)V

    .line 574
    .line 575
    .line 576
    const-string v2, "CHACHA20_POLY1305_RAW"

    .line 577
    .line 578
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    return-object v0

    .line 586
    :pswitch_7
    new-instance v0, Ljava/util/HashMap;

    .line 587
    .line 588
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 589
    .line 590
    .line 591
    invoke-static {v6, v9}, Lcom/google/android/gms/internal/pal/M3;->x(II)Lcom/google/android/gms/internal/pal/m4;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    const-string v2, "AES128_GCM_SIV"

    .line 596
    .line 597
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    invoke-static {v6, v8}, Lcom/google/android/gms/internal/pal/M3;->x(II)Lcom/google/android/gms/internal/pal/m4;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    const-string v2, "AES128_GCM_SIV_RAW"

    .line 605
    .line 606
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    invoke-static {v7, v9}, Lcom/google/android/gms/internal/pal/M3;->x(II)Lcom/google/android/gms/internal/pal/m4;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    const-string v2, "AES256_GCM_SIV"

    .line 614
    .line 615
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/pal/M3;->x(II)Lcom/google/android/gms/internal/pal/m4;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    const-string v2, "AES256_GCM_SIV_RAW"

    .line 623
    .line 624
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    return-object v0

    .line 632
    :pswitch_8
    new-instance v0, Ljava/util/HashMap;

    .line 633
    .line 634
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 635
    .line 636
    .line 637
    invoke-static {v6, v9}, Lcom/google/android/gms/internal/pal/M3;->w(II)Lcom/google/android/gms/internal/pal/m4;

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    invoke-static {v6, v8}, Lcom/google/android/gms/internal/pal/M3;->w(II)Lcom/google/android/gms/internal/pal/m4;

    .line 645
    .line 646
    .line 647
    move-result-object v1

    .line 648
    const-string v2, "AES128_GCM_RAW"

    .line 649
    .line 650
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    invoke-static {v7, v9}, Lcom/google/android/gms/internal/pal/M3;->w(II)Lcom/google/android/gms/internal/pal/m4;

    .line 654
    .line 655
    .line 656
    move-result-object v1

    .line 657
    const-string v2, "AES256_GCM"

    .line 658
    .line 659
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/pal/M3;->w(II)Lcom/google/android/gms/internal/pal/m4;

    .line 663
    .line 664
    .line 665
    move-result-object v1

    .line 666
    const-string v2, "AES256_GCM_RAW"

    .line 667
    .line 668
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    return-object v0

    .line 676
    :pswitch_9
    new-instance v0, Ljava/util/HashMap;

    .line 677
    .line 678
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 679
    .line 680
    .line 681
    invoke-static {v6, v9}, Lcom/google/android/gms/internal/pal/M3;->u(II)Lcom/google/android/gms/internal/pal/m4;

    .line 682
    .line 683
    .line 684
    move-result-object v1

    .line 685
    const-string v2, "AES128_EAX"

    .line 686
    .line 687
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    invoke-static {v6, v8}, Lcom/google/android/gms/internal/pal/M3;->u(II)Lcom/google/android/gms/internal/pal/m4;

    .line 691
    .line 692
    .line 693
    move-result-object v1

    .line 694
    const-string v2, "AES128_EAX_RAW"

    .line 695
    .line 696
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    invoke-static {v7, v9}, Lcom/google/android/gms/internal/pal/M3;->u(II)Lcom/google/android/gms/internal/pal/m4;

    .line 700
    .line 701
    .line 702
    move-result-object v1

    .line 703
    const-string v2, "AES256_EAX"

    .line 704
    .line 705
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/pal/M3;->u(II)Lcom/google/android/gms/internal/pal/m4;

    .line 709
    .line 710
    .line 711
    move-result-object v1

    .line 712
    const-string v2, "AES256_EAX_RAW"

    .line 713
    .line 714
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 718
    .line 719
    .line 720
    move-result-object v0

    .line 721
    return-object v0

    .line 722
    :pswitch_a
    new-instance v0, Ljava/util/HashMap;

    .line 723
    .line 724
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 725
    .line 726
    .line 727
    invoke-static {v6, v6, v9}, Lcom/google/android/gms/internal/pal/M3;->v(III)Lcom/google/android/gms/internal/pal/m4;

    .line 728
    .line 729
    .line 730
    move-result-object v1

    .line 731
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    invoke-static {v6, v6, v8}, Lcom/google/android/gms/internal/pal/M3;->v(III)Lcom/google/android/gms/internal/pal/m4;

    .line 735
    .line 736
    .line 737
    move-result-object v1

    .line 738
    const-string v2, "AES128_CTR_HMAC_SHA256_RAW"

    .line 739
    .line 740
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    invoke-static {v7, v7, v9}, Lcom/google/android/gms/internal/pal/M3;->v(III)Lcom/google/android/gms/internal/pal/m4;

    .line 744
    .line 745
    .line 746
    move-result-object v1

    .line 747
    const-string v2, "AES256_CTR_HMAC_SHA256"

    .line 748
    .line 749
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    invoke-static {v7, v7, v8}, Lcom/google/android/gms/internal/pal/M3;->v(III)Lcom/google/android/gms/internal/pal/m4;

    .line 753
    .line 754
    .line 755
    move-result-object v1

    .line 756
    const-string v2, "AES256_CTR_HMAC_SHA256_RAW"

    .line 757
    .line 758
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    return-object v0

    .line 766
    nop

    .line 767
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final d(Lcom/google/android/gms/internal/pal/j;)V
    .locals 4

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/pal/L3;->b:I

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lcom/google/android/gms/internal/pal/R5;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/R5;->m()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-lt v0, v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/R5;->q()Lcom/google/android/gms/internal/pal/T5;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/M3;->B(Lcom/google/android/gms/internal/pal/T5;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 27
    .line 28
    const-string v0, "key too short"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/pal/W5;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/W5;->o()Lcom/google/android/gms/internal/pal/Y5;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/i4;->a(Lcom/google/android/gms/internal/pal/Y5;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/pal/E5;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/E5;->o()Lcom/google/android/gms/internal/pal/G5;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/y4;->s(Lcom/google/android/gms/internal/pal/G5;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_2
    check-cast p1, Lcom/google/android/gms/internal/pal/x5;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/x5;->m()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/16 v1, 0x40

    .line 61
    .line 62
    if-ne v0, v1, :cond_1

    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/x5;->m()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    const-string v1, "invalid key size: "

    .line 72
    .line 73
    const-string v2, ". Valid keys must have 64 bytes."

    .line 74
    .line 75
    invoke-static {v1, p1, v2}, LA0/O;->y(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0

    .line 83
    :pswitch_3
    check-cast p1, Lcom/google/android/gms/internal/pal/A6;

    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_4
    check-cast p1, Lcom/google/android/gms/internal/pal/w6;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/w6;->o()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_2

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/w6;->p()Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_2

    .line 103
    .line 104
    return-void

    .line 105
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 106
    .line 107
    const-string v0, "invalid key format: missing KEK URI or DEK template"

    .line 108
    .line 109
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :pswitch_5
    check-cast p1, Lcom/google/android/gms/internal/pal/t6;

    .line 114
    .line 115
    return-void

    .line 116
    :pswitch_6
    check-cast p1, Lcom/google/android/gms/internal/pal/A5;

    .line 117
    .line 118
    return-void

    .line 119
    :pswitch_7
    check-cast p1, Lcom/google/android/gms/internal/pal/t5;

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/t5;->m()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/P6;->a(I)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :pswitch_8
    check-cast p1, Lcom/google/android/gms/internal/pal/p5;

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/p5;->m()I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/P6;->a(I)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :pswitch_9
    check-cast p1, Lcom/google/android/gms/internal/pal/j5;

    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/j5;->m()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    invoke-static {v1}, Lcom/google/android/gms/internal/pal/P6;->a(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/j5;->p()Lcom/google/android/gms/internal/pal/l5;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/l5;->m()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eq v1, v0, :cond_4

    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/j5;->p()Lcom/google/android/gms/internal/pal/l5;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/l5;->m()I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-ne p1, v2, :cond_3

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 170
    .line 171
    const-string v0, "invalid IV size; acceptable values have 12 or 16 bytes"

    .line 172
    .line 173
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p1

    .line 177
    :cond_4
    :goto_0
    return-void

    .line 178
    :pswitch_a
    check-cast p1, Lcom/google/android/gms/internal/pal/Y4;

    .line 179
    .line 180
    new-instance v1, Lcom/google/android/gms/internal/pal/M3;

    .line 181
    .line 182
    const/4 v3, 0x1

    .line 183
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/pal/M3;-><init>(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/M3;->n()Lcom/google/android/gms/internal/pal/n4;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/Y4;->o()Lcom/google/android/gms/internal/pal/d5;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    check-cast v1, Lcom/google/android/gms/internal/pal/N3;

    .line 195
    .line 196
    invoke-virtual {v3}, Lcom/google/android/gms/internal/pal/d5;->m()I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    invoke-static {v1}, Lcom/google/android/gms/internal/pal/P6;->a(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3}, Lcom/google/android/gms/internal/pal/d5;->q()Lcom/google/android/gms/internal/pal/f5;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/f5;->m()I

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    if-lt v3, v0, :cond_5

    .line 212
    .line 213
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/f5;->m()I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-gt v0, v2, :cond_5

    .line 218
    .line 219
    new-instance v0, Lcom/google/android/gms/internal/pal/M3;

    .line 220
    .line 221
    const/16 v1, 0xd

    .line 222
    .line 223
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/pal/M3;-><init>(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/M3;->n()Lcom/google/android/gms/internal/pal/n4;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/Y4;->p()Lcom/google/android/gms/internal/pal/R5;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pal/n4;->d(Lcom/google/android/gms/internal/pal/j;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/Y4;->o()Lcom/google/android/gms/internal/pal/d5;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/d5;->m()I

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/P6;->a(I)V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :cond_5
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 250
    .line 251
    const-string v0, "invalid IV size"

    .line 252
    .line 253
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw p1

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
