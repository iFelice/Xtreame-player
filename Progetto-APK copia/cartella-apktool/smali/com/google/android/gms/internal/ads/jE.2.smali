.class public final synthetic Lcom/google/android/gms/internal/ads/jE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/kE;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/jE;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/GC;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/Cw;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/ads/jE;->a:I

    .line 3
    .line 4
    const-string v2, "192 bit AES GCM Parameters are not valid"

    .line 5
    .line 6
    const/16 v3, 0x18

    .line 7
    .line 8
    const/16 v4, 0x20

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p1, Lcom/google/android/gms/internal/ads/aF;

    .line 15
    .line 16
    new-instance v1, Lcom/google/android/gms/internal/ads/bD;

    .line 17
    .line 18
    const/4 v2, 0x5

    .line 19
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/bD;-><init>(II)V

    .line 20
    .line 21
    .line 22
    iput-object p1, v1, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 23
    .line 24
    iget p1, p1, Lcom/google/android/gms/internal/ads/aF;->a:I

    .line 25
    .line 26
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Xu;->q(I)Lcom/google/android/gms/internal/ads/Xu;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, v1, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 31
    .line 32
    iput-object p2, v1, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bD;->t()Lcom/google/android/gms/internal/ads/WE;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/RE;

    .line 40
    .line 41
    sget-object v1, Lcom/google/android/gms/internal/ads/PE;->a:Lcom/google/android/gms/internal/ads/jE;

    .line 42
    .line 43
    iget v1, p1, Lcom/google/android/gms/internal/ads/RE;->a:I

    .line 44
    .line 45
    if-ne v1, v4, :cond_0

    .line 46
    .line 47
    new-instance v2, Lcom/google/android/gms/internal/ads/bD;

    .line 48
    .line 49
    const/4 v3, 0x3

    .line 50
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/ads/bD;-><init>(II)V

    .line 51
    .line 52
    .line 53
    iput-object p1, v2, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 54
    .line 55
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Xu;->q(I)Lcom/google/android/gms/internal/ads/Xu;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, v2, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 60
    .line 61
    iput-object p2, v2, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/bD;->r()Lcom/google/android/gms/internal/ads/OE;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 69
    .line 70
    const-string p2, "AesCmacKey size wrong, must be 32 bytes"

    .line 71
    .line 72
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/ads/ED;

    .line 77
    .line 78
    sget-object v0, Lcom/google/android/gms/internal/ads/BD;->a:Lcom/google/android/gms/internal/ads/zE;

    .line 79
    .line 80
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ED;->a:Lcom/google/android/gms/internal/ads/DD;

    .line 81
    .line 82
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Xu;->q(I)Lcom/google/android/gms/internal/ads/Xu;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/AD;->i2(Lcom/google/android/gms/internal/ads/DD;Lcom/google/android/gms/internal/ads/Xu;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/AD;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    return-object p1

    .line 91
    :pswitch_2
    check-cast p1, Lcom/google/android/gms/internal/ads/xD;

    .line 92
    .line 93
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/uD;->i2(Lcom/google/android/gms/internal/ads/xD;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/uD;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    return-object p1

    .line 98
    :pswitch_3
    check-cast p1, Lcom/google/android/gms/internal/ads/sD;

    .line 99
    .line 100
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/qD;->i2(Lcom/google/android/gms/internal/ads/sD;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/qD;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    return-object p1

    .line 105
    :pswitch_4
    check-cast p1, Lcom/google/android/gms/internal/ads/nD;

    .line 106
    .line 107
    sget-object v0, Lcom/google/android/gms/internal/ads/lD;->a:Lcom/google/android/gms/internal/ads/zE;

    .line 108
    .line 109
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/nD;->a:Lcom/google/android/gms/internal/ads/mD;

    .line 110
    .line 111
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Xu;->q(I)Lcom/google/android/gms/internal/ads/Xu;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/kD;->i2(Lcom/google/android/gms/internal/ads/mD;Lcom/google/android/gms/internal/ads/Xu;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/kD;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    return-object p1

    .line 120
    :pswitch_5
    check-cast p1, Lcom/google/android/gms/internal/ads/jD;

    .line 121
    .line 122
    new-instance v1, Lcom/google/android/gms/internal/ads/bD;

    .line 123
    .line 124
    const/4 v2, 0x1

    .line 125
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/bD;-><init>(II)V

    .line 126
    .line 127
    .line 128
    iput-object p1, v1, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 129
    .line 130
    iput-object p2, v1, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 131
    .line 132
    iget p1, p1, Lcom/google/android/gms/internal/ads/jD;->a:I

    .line 133
    .line 134
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Xu;->q(I)Lcom/google/android/gms/internal/ads/Xu;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iput-object p1, v1, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bD;->q()Lcom/google/android/gms/internal/ads/gD;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    return-object p1

    .line 145
    :pswitch_6
    check-cast p1, Lcom/google/android/gms/internal/ads/fD;

    .line 146
    .line 147
    sget-object v1, Lcom/google/android/gms/internal/ads/dD;->a:Lcom/google/android/gms/internal/ads/zE;

    .line 148
    .line 149
    iget v1, p1, Lcom/google/android/gms/internal/ads/fD;->a:I

    .line 150
    .line 151
    if-eq v1, v3, :cond_1

    .line 152
    .line 153
    new-instance v2, Lcom/google/android/gms/internal/ads/bD;

    .line 154
    .line 155
    invoke-direct {v2, v0, v0}, Lcom/google/android/gms/internal/ads/bD;-><init>(II)V

    .line 156
    .line 157
    .line 158
    iput-object p1, v2, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 159
    .line 160
    iput-object p2, v2, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 161
    .line 162
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Xu;->q(I)Lcom/google/android/gms/internal/ads/Xu;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iput-object p1, v2, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 167
    .line 168
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/bD;->p()Lcom/google/android/gms/internal/ads/cD;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    return-object p1

    .line 173
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 174
    .line 175
    invoke-direct {p1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw p1

    .line 179
    :pswitch_7
    check-cast p1, Lcom/google/android/gms/internal/ads/aD;

    .line 180
    .line 181
    sget-object v0, Lcom/google/android/gms/internal/ads/YC;->a:Lcom/google/android/gms/internal/ads/zE;

    .line 182
    .line 183
    iget v0, p1, Lcom/google/android/gms/internal/ads/aD;->a:I

    .line 184
    .line 185
    if-eq v0, v3, :cond_2

    .line 186
    .line 187
    new-instance v1, La3/b;

    .line 188
    .line 189
    invoke-direct {v1}, La3/b;-><init>()V

    .line 190
    .line 191
    .line 192
    iput-object p1, v1, La3/b;->H:Ljava/lang/Object;

    .line 193
    .line 194
    iput-object p2, v1, La3/b;->J:Ljava/lang/Object;

    .line 195
    .line 196
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Xu;->q(I)Lcom/google/android/gms/internal/ads/Xu;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    iput-object p1, v1, La3/b;->I:Ljava/lang/Object;

    .line 201
    .line 202
    invoke-virtual {v1}, La3/b;->s()Lcom/google/android/gms/internal/ads/XC;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    return-object p1

    .line 207
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 208
    .line 209
    invoke-direct {p1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p1

    .line 213
    :pswitch_8
    check-cast p1, Lcom/google/android/gms/internal/ads/WC;

    .line 214
    .line 215
    sget-object v0, Lcom/google/android/gms/internal/ads/TC;->a:Lcom/google/android/gms/internal/ads/zE;

    .line 216
    .line 217
    iget v0, p1, Lcom/google/android/gms/internal/ads/WC;->a:I

    .line 218
    .line 219
    const/16 v1, 0x10

    .line 220
    .line 221
    if-eq v0, v1, :cond_4

    .line 222
    .line 223
    if-ne v0, v4, :cond_3

    .line 224
    .line 225
    goto :goto_0

    .line 226
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 227
    .line 228
    const-string p2, "AES key size must be 16 or 32 bytes"

    .line 229
    .line 230
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw p1

    .line 234
    :cond_4
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/xc;

    .line 235
    .line 236
    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/xc;-><init>(Lcom/google/android/gms/internal/ads/wc;)V

    .line 237
    .line 238
    .line 239
    iput-object p1, v1, Lcom/google/android/gms/internal/ads/xc;->H:Ljava/lang/Object;

    .line 240
    .line 241
    iput-object p2, v1, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 242
    .line 243
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Xu;->q(I)Lcom/google/android/gms/internal/ads/Xu;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    iput-object p2, v1, Lcom/google/android/gms/internal/ads/xc;->I:Ljava/lang/Object;

    .line 248
    .line 249
    iget p1, p1, Lcom/google/android/gms/internal/ads/WC;->b:I

    .line 250
    .line 251
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Xu;->q(I)Lcom/google/android/gms/internal/ads/Xu;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    iput-object p1, v1, Lcom/google/android/gms/internal/ads/xc;->J:Ljava/lang/Object;

    .line 256
    .line 257
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xc;->F()Lcom/google/android/gms/internal/ads/RC;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    return-object p1

    .line 262
    :pswitch_9
    check-cast p1, Lcom/google/android/gms/internal/ads/fE;

    .line 263
    .line 264
    sget-object v0, Lcom/google/android/gms/internal/ads/lE;->b:Lcom/google/android/gms/internal/ads/lE;

    .line 265
    .line 266
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/fE;->a:Lcom/google/android/gms/internal/ads/GE;

    .line 267
    .line 268
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/GE;->b:Lcom/google/android/gms/internal/ads/eG;

    .line 269
    .line 270
    sget-object v0, Lcom/google/android/gms/internal/ads/XD;->d:Lcom/google/android/gms/internal/ads/XD;

    .line 271
    .line 272
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->F()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/XD;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/cE;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->F()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/XD;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 285
    .line 286
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    check-cast v0, Ljava/lang/Boolean;

    .line 291
    .line 292
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-eqz v0, :cond_5

    .line 297
    .line 298
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->E()Lcom/google/android/gms/internal/ads/XG;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    invoke-static {}, Lcom/google/android/gms/internal/ads/eG;->A()Lcom/google/android/gms/internal/ads/dG;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cE;->a:Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/dG;->f(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/dG;->g(Lcom/google/android/gms/internal/ads/XG;)V

    .line 315
    .line 316
    .line 317
    sget-object v0, Lcom/google/android/gms/internal/ads/xG;->K:Lcom/google/android/gms/internal/ads/xG;

    .line 318
    .line 319
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/dG;->e(Lcom/google/android/gms/internal/ads/xG;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    check-cast v0, Lcom/google/android/gms/internal/ads/eG;

    .line 327
    .line 328
    new-instance v1, Lcom/google/android/gms/internal/ads/GE;

    .line 329
    .line 330
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eG;->F()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/NE;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/NG;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/GE;-><init>(Lcom/google/android/gms/internal/ads/eG;Lcom/google/android/gms/internal/ads/NG;)V

    .line 339
    .line 340
    .line 341
    sget-object v0, Lcom/google/android/gms/internal/ads/sE;->b:Lcom/google/android/gms/internal/ads/sE;

    .line 342
    .line 343
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/sE;->b(Lcom/google/android/gms/internal/ads/GE;)Lcom/google/android/gms/internal/ads/GC;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    sget-object v2, Lcom/google/android/gms/internal/ads/lE;->b:Lcom/google/android/gms/internal/ads/lE;

    .line 348
    .line 349
    invoke-virtual {v2, v1, v5}, Lcom/google/android/gms/internal/ads/lE;->a(Lcom/google/android/gms/internal/ads/GC;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/Cw;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/sE;->c(Lcom/google/android/gms/internal/ads/Cw;)Lcom/google/android/gms/internal/ads/IE;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    check-cast v0, Lcom/google/android/gms/internal/ads/FE;

    .line 358
    .line 359
    invoke-static {}, Lcom/google/android/gms/internal/ads/cG;->A()Lcom/google/android/gms/internal/ads/aG;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 364
    .line 365
    .line 366
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 367
    .line 368
    check-cast v2, Lcom/google/android/gms/internal/ads/cG;

    .line 369
    .line 370
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/FE;->a:Ljava/lang/String;

    .line 371
    .line 372
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/cG;->F(Lcom/google/android/gms/internal/ads/cG;Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 376
    .line 377
    .line 378
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 379
    .line 380
    check-cast v2, Lcom/google/android/gms/internal/ads/cG;

    .line 381
    .line 382
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/FE;->c:Lcom/google/android/gms/internal/ads/XG;

    .line 383
    .line 384
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/cG;->G(Lcom/google/android/gms/internal/ads/cG;Lcom/google/android/gms/internal/ads/XG;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 388
    .line 389
    .line 390
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 391
    .line 392
    check-cast v2, Lcom/google/android/gms/internal/ads/cG;

    .line 393
    .line 394
    iget v0, v0, Lcom/google/android/gms/internal/ads/FE;->d:I

    .line 395
    .line 396
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/cG;->H(Lcom/google/android/gms/internal/ads/cG;I)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    check-cast v0, Lcom/google/android/gms/internal/ads/cG;

    .line 404
    .line 405
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cG;->E()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cG;->D()Lcom/google/android/gms/internal/ads/XG;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cG;->B()I

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->D()Lcom/google/android/gms/internal/ads/xG;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    invoke-static {v1, v2, v0, p1, p2}, Lcom/google/android/gms/internal/ads/FE;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/XG;ILcom/google/android/gms/internal/ads/xG;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/FE;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    new-instance p2, Lcom/google/android/gms/internal/ads/eE;

    .line 426
    .line 427
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/eE;-><init>(Lcom/google/android/gms/internal/ads/FE;)V

    .line 428
    .line 429
    .line 430
    return-object p2

    .line 431
    :cond_5
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 432
    .line 433
    const-string p2, "Creating new keys is not allowed."

    .line 434
    .line 435
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    throw p1

    .line 439
    :pswitch_data_0
    .packed-switch 0x0
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
