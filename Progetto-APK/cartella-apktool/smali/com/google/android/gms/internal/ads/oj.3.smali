.class public final Lcom/google/android/gms/internal/ads/oj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/IJ;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/google/android/gms/internal/ads/QJ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/MJ;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1d

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/oj;->a:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oj;->b:Lcom/google/android/gms/internal/ads/QJ;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/MJ;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/oj;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oj;->b:Lcom/google/android/gms/internal/ads/QJ;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/NJ;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/oj;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oj;->b:Lcom/google/android/gms/internal/ads/QJ;

    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/oj;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oj;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/gms/internal/ads/jl;

    .line 13
    .line 14
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/google/android/gms/internal/ads/Lk;

    .line 20
    .line 21
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 22
    .line 23
    .line 24
    return-object v2

    .line 25
    :pswitch_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/google/android/gms/internal/ads/Wi;

    .line 30
    .line 31
    new-instance v1, Lcom/google/android/gms/internal/ads/Lk;

    .line 32
    .line 33
    sget-object v2, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 34
    .line 35
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :pswitch_1
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/google/android/gms/internal/ads/an;

    .line 51
    .line 52
    new-instance v1, Lcom/google/android/gms/internal/ads/Lk;

    .line 53
    .line 54
    sget-object v2, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 55
    .line 56
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 57
    .line 58
    .line 59
    return-object v1

    .line 60
    :pswitch_2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/google/android/gms/internal/ads/hl;

    .line 65
    .line 66
    new-instance v1, Lcom/google/android/gms/internal/ads/Lk;

    .line 67
    .line 68
    sget-object v2, Lcom/google/android/gms/internal/ads/se;->e:Lcom/google/android/gms/internal/ads/re;

    .line 69
    .line 70
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 71
    .line 72
    .line 73
    return-object v1

    .line 74
    :pswitch_3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lcom/google/android/gms/internal/ads/hl;

    .line 79
    .line 80
    new-instance v1, Lcom/google/android/gms/internal/ads/Lk;

    .line 81
    .line 82
    sget-object v2, Lcom/google/android/gms/internal/ads/se;->e:Lcom/google/android/gms/internal/ads/re;

    .line 83
    .line 84
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 85
    .line 86
    .line 87
    return-object v1

    .line 88
    :pswitch_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcom/google/android/gms/internal/ads/hl;

    .line 93
    .line 94
    new-instance v1, Lcom/google/android/gms/internal/ads/Lk;

    .line 95
    .line 96
    sget-object v2, Lcom/google/android/gms/internal/ads/se;->e:Lcom/google/android/gms/internal/ads/re;

    .line 97
    .line 98
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 99
    .line 100
    .line 101
    return-object v1

    .line 102
    :pswitch_5
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/google/android/gms/internal/ads/Wi;

    .line 107
    .line 108
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 109
    .line 110
    new-instance v2, Lcom/google/android/gms/internal/ads/Lk;

    .line 111
    .line 112
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    return-object v0

    .line 123
    :pswitch_6
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Lcom/google/android/gms/internal/ads/Nw;

    .line 128
    .line 129
    new-instance v1, Lcom/google/android/gms/internal/ads/Lk;

    .line 130
    .line 131
    sget-object v2, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 132
    .line 133
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 134
    .line 135
    .line 136
    return-object v1

    .line 137
    :pswitch_7
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Lcom/google/android/gms/internal/ads/Nw;

    .line 142
    .line 143
    new-instance v1, Lcom/google/android/gms/internal/ads/Lk;

    .line 144
    .line 145
    sget-object v2, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 146
    .line 147
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 148
    .line 149
    .line 150
    return-object v1

    .line 151
    :pswitch_8
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Lcom/google/android/gms/internal/ads/Wi;

    .line 156
    .line 157
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 158
    .line 159
    new-instance v2, Lcom/google/android/gms/internal/ads/Lk;

    .line 160
    .line 161
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 162
    .line 163
    .line 164
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    return-object v0

    .line 172
    :pswitch_9
    check-cast v1, Lcom/google/android/gms/internal/ads/NJ;

    .line 173
    .line 174
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NJ;->b()Ljava/util/Set;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    new-instance v1, Lcom/google/android/gms/internal/ads/Uk;

    .line 179
    .line 180
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/mI;-><init>(Ljava/util/Set;)V

    .line 181
    .line 182
    .line 183
    return-object v1

    .line 184
    :pswitch_a
    check-cast v1, Lcom/google/android/gms/internal/ads/NJ;

    .line 185
    .line 186
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NJ;->b()Ljava/util/Set;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    new-instance v1, Lcom/google/android/gms/internal/ads/Tk;

    .line 191
    .line 192
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/mI;-><init>(Ljava/util/Set;)V

    .line 193
    .line 194
    .line 195
    return-object v1

    .line 196
    :pswitch_b
    check-cast v1, Lcom/google/android/gms/internal/ads/NJ;

    .line 197
    .line 198
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NJ;->b()Ljava/util/Set;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    new-instance v1, Lcom/google/android/gms/internal/ads/Rk;

    .line 203
    .line 204
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/mI;-><init>(Ljava/util/Set;)V

    .line 205
    .line 206
    .line 207
    return-object v1

    .line 208
    :pswitch_c
    check-cast v1, Lcom/google/android/gms/internal/ads/NJ;

    .line 209
    .line 210
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NJ;->b()Ljava/util/Set;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    new-instance v1, Lcom/google/android/gms/internal/ads/Pk;

    .line 215
    .line 216
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/mI;-><init>(Ljava/util/Set;)V

    .line 217
    .line 218
    .line 219
    return-object v1

    .line 220
    :pswitch_d
    check-cast v1, Lcom/google/android/gms/internal/ads/NJ;

    .line 221
    .line 222
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NJ;->b()Ljava/util/Set;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    new-instance v1, Lcom/google/android/gms/internal/ads/Nk;

    .line 227
    .line 228
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/mI;-><init>(Ljava/util/Set;)V

    .line 229
    .line 230
    .line 231
    return-object v1

    .line 232
    :pswitch_e
    check-cast v1, Lcom/google/android/gms/internal/ads/NJ;

    .line 233
    .line 234
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NJ;->b()Ljava/util/Set;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    new-instance v1, Lcom/google/android/gms/internal/ads/Jk;

    .line 239
    .line 240
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/mI;-><init>(Ljava/util/Set;)V

    .line 241
    .line 242
    .line 243
    return-object v1

    .line 244
    :pswitch_f
    check-cast v1, Lcom/google/android/gms/internal/ads/NJ;

    .line 245
    .line 246
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NJ;->b()Ljava/util/Set;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    new-instance v1, Lcom/google/android/gms/internal/ads/Ik;

    .line 251
    .line 252
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/mI;-><init>(Ljava/util/Set;)V

    .line 253
    .line 254
    .line 255
    return-object v1

    .line 256
    :pswitch_10
    check-cast v1, Lcom/google/android/gms/internal/ads/NJ;

    .line 257
    .line 258
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NJ;->b()Ljava/util/Set;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    new-instance v1, Lcom/google/android/gms/internal/ads/pk;

    .line 263
    .line 264
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/mI;-><init>(Ljava/util/Set;)V

    .line 265
    .line 266
    .line 267
    return-object v1

    .line 268
    :pswitch_11
    check-cast v1, Lcom/google/android/gms/internal/ads/NJ;

    .line 269
    .line 270
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NJ;->b()Ljava/util/Set;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    new-instance v1, Lcom/google/android/gms/internal/ads/nk;

    .line 275
    .line 276
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/mI;-><init>(Ljava/util/Set;)V

    .line 277
    .line 278
    .line 279
    return-object v1

    .line 280
    :pswitch_12
    check-cast v1, Lcom/google/android/gms/internal/ads/NJ;

    .line 281
    .line 282
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NJ;->b()Ljava/util/Set;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    new-instance v1, Lcom/google/android/gms/internal/ads/jk;

    .line 287
    .line 288
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/mI;-><init>(Ljava/util/Set;)V

    .line 289
    .line 290
    .line 291
    return-object v1

    .line 292
    :pswitch_13
    check-cast v1, Lcom/google/android/gms/internal/ads/NJ;

    .line 293
    .line 294
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NJ;->b()Ljava/util/Set;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    new-instance v1, Lcom/google/android/gms/internal/ads/hk;

    .line 299
    .line 300
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/mI;-><init>(Ljava/util/Set;)V

    .line 301
    .line 302
    .line 303
    return-object v1

    .line 304
    :pswitch_14
    check-cast v1, Lcom/google/android/gms/internal/ads/NJ;

    .line 305
    .line 306
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NJ;->b()Ljava/util/Set;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    new-instance v1, Lcom/google/android/gms/internal/ads/fk;

    .line 311
    .line 312
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/mI;-><init>(Ljava/util/Set;)V

    .line 313
    .line 314
    .line 315
    return-object v1

    .line 316
    :pswitch_15
    check-cast v1, Lcom/google/android/gms/internal/ads/NJ;

    .line 317
    .line 318
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NJ;->b()Ljava/util/Set;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    new-instance v1, Lcom/google/android/gms/internal/ads/Qj;

    .line 323
    .line 324
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/mI;-><init>(Ljava/util/Set;)V

    .line 325
    .line 326
    .line 327
    return-object v1

    .line 328
    :pswitch_16
    check-cast v1, Lcom/google/android/gms/internal/ads/NJ;

    .line 329
    .line 330
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NJ;->b()Ljava/util/Set;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    new-instance v1, Lcom/google/android/gms/internal/ads/Nj;

    .line 335
    .line 336
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/mI;-><init>(Ljava/util/Set;)V

    .line 337
    .line 338
    .line 339
    return-object v1

    .line 340
    :pswitch_17
    check-cast v1, Lcom/google/android/gms/internal/ads/NJ;

    .line 341
    .line 342
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NJ;->b()Ljava/util/Set;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    new-instance v1, Lcom/google/android/gms/internal/ads/Mj;

    .line 347
    .line 348
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/Mj;-><init>(Ljava/util/Set;)V

    .line 349
    .line 350
    .line 351
    return-object v1

    .line 352
    :pswitch_18
    check-cast v1, Lcom/google/android/gms/internal/ads/NJ;

    .line 353
    .line 354
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NJ;->b()Ljava/util/Set;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    new-instance v1, Lcom/google/android/gms/internal/ads/Hj;

    .line 359
    .line 360
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/mI;-><init>(Ljava/util/Set;)V

    .line 361
    .line 362
    .line 363
    return-object v1

    .line 364
    :pswitch_19
    check-cast v1, Lcom/google/android/gms/internal/ads/NJ;

    .line 365
    .line 366
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NJ;->b()Ljava/util/Set;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    new-instance v1, Lcom/google/android/gms/internal/ads/Fj;

    .line 371
    .line 372
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/mI;-><init>(Ljava/util/Set;)V

    .line 373
    .line 374
    .line 375
    return-object v1

    .line 376
    :pswitch_1a
    check-cast v1, Lcom/google/android/gms/internal/ads/NJ;

    .line 377
    .line 378
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NJ;->b()Ljava/util/Set;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    new-instance v1, Lcom/google/android/gms/internal/ads/Cj;

    .line 383
    .line 384
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/mI;-><init>(Ljava/util/Set;)V

    .line 385
    .line 386
    .line 387
    return-object v1

    .line 388
    :pswitch_1b
    check-cast v1, Lcom/google/android/gms/internal/ads/NJ;

    .line 389
    .line 390
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NJ;->b()Ljava/util/Set;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    new-instance v1, Lcom/google/android/gms/internal/ads/zj;

    .line 395
    .line 396
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/mI;-><init>(Ljava/util/Set;)V

    .line 397
    .line 398
    .line 399
    const/4 v0, 0x0

    .line 400
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zj;->H:Z

    .line 401
    .line 402
    return-object v1

    .line 403
    :pswitch_1c
    check-cast v1, Lcom/google/android/gms/internal/ads/NJ;

    .line 404
    .line 405
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NJ;->b()Ljava/util/Set;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    new-instance v1, Lcom/google/android/gms/internal/ads/nj;

    .line 410
    .line 411
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/mI;-><init>(Ljava/util/Set;)V

    .line 412
    .line 413
    .line 414
    return-object v1

    .line 415
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
