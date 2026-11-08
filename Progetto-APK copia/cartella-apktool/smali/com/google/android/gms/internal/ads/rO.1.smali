.class public final Lcom/google/android/gms/internal/ads/rO;
.super Lcom/google/android/gms/internal/ads/qO;
.source "SourceFile"


# instance fields
.field public final K:Z

.field public final L:Lcom/google/android/gms/internal/ads/lO;

.field public final M:Z

.field public final N:Z

.field public final O:Z

.field public final P:I

.field public final Q:I

.field public final R:I

.field public final S:I

.field public final T:Z

.field public final U:I

.field public final V:Z

.field public final W:Z

.field public final X:I


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/Ve;ILcom/google/android/gms/internal/ads/lO;IZ)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/qO;-><init>(ILcom/google/android/gms/internal/ads/Ve;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/rO;->L:Lcom/google/android/gms/internal/ads/lO;

    .line 5
    .line 6
    iget-boolean p1, p4, Lcom/google/android/gms/internal/ads/lO;->m:Z

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    if-eq p2, p1, :cond_0

    .line 10
    .line 11
    const/16 p1, 0x10

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 p1, 0x18

    .line 15
    .line 16
    :goto_0
    const/4 p3, 0x0

    .line 17
    const/high16 v0, -0x40800000    # -1.0f

    .line 18
    .line 19
    if-eqz p6, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qO;->J:Lcom/google/android/gms/internal/ads/p0;

    .line 22
    .line 23
    iget v2, v1, Lcom/google/android/gms/internal/ads/p0;->s:I

    .line 24
    .line 25
    iget v1, v1, Lcom/google/android/gms/internal/ads/p0;->u:F

    .line 26
    .line 27
    cmpl-float v2, v1, v0

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    const/high16 v2, 0x4f000000

    .line 32
    .line 33
    cmpg-float v1, v1, v2

    .line 34
    .line 35
    if-gtz v1, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v1, 0x0

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 41
    :goto_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/rO;->K:Z

    .line 42
    .line 43
    const/4 v1, -0x1

    .line 44
    if-eqz p6, :cond_3

    .line 45
    .line 46
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/qO;->J:Lcom/google/android/gms/internal/ads/p0;

    .line 47
    .line 48
    iget v2, p6, Lcom/google/android/gms/internal/ads/p0;->s:I

    .line 49
    .line 50
    if-eq v2, v1, :cond_4

    .line 51
    .line 52
    if-ltz v2, :cond_3

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_3
    const/4 p6, 0x0

    .line 56
    goto :goto_4

    .line 57
    :cond_4
    :goto_3
    iget v2, p6, Lcom/google/android/gms/internal/ads/p0;->t:I

    .line 58
    .line 59
    if-eq v2, v1, :cond_5

    .line 60
    .line 61
    if-ltz v2, :cond_3

    .line 62
    .line 63
    :cond_5
    iget v2, p6, Lcom/google/android/gms/internal/ads/p0;->u:F

    .line 64
    .line 65
    cmpl-float v3, v2, v0

    .line 66
    .line 67
    if-eqz v3, :cond_6

    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    cmpl-float v2, v2, v3

    .line 71
    .line 72
    if-ltz v2, :cond_3

    .line 73
    .line 74
    :cond_6
    iget p6, p6, Lcom/google/android/gms/internal/ads/p0;->i:I

    .line 75
    .line 76
    if-eq p6, v1, :cond_7

    .line 77
    .line 78
    if-ltz p6, :cond_3

    .line 79
    .line 80
    :cond_7
    const/4 p6, 0x1

    .line 81
    :goto_4
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/rO;->M:Z

    .line 82
    .line 83
    invoke-static {p5, p3}, Lcom/google/android/gms/internal/ads/Cw;->g0(IZ)Z

    .line 84
    .line 85
    .line 86
    move-result p6

    .line 87
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/rO;->N:Z

    .line 88
    .line 89
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/qO;->J:Lcom/google/android/gms/internal/ads/p0;

    .line 90
    .line 91
    iget v2, p6, Lcom/google/android/gms/internal/ads/p0;->u:F

    .line 92
    .line 93
    cmpl-float v0, v2, v0

    .line 94
    .line 95
    if-eqz v0, :cond_8

    .line 96
    .line 97
    const/high16 v0, 0x41200000    # 10.0f

    .line 98
    .line 99
    cmpl-float v0, v2, v0

    .line 100
    .line 101
    if-ltz v0, :cond_8

    .line 102
    .line 103
    const/4 v0, 0x1

    .line 104
    goto :goto_5

    .line 105
    :cond_8
    const/4 v0, 0x0

    .line 106
    :goto_5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rO;->O:Z

    .line 107
    .line 108
    iget v0, p6, Lcom/google/android/gms/internal/ads/p0;->i:I

    .line 109
    .line 110
    iput v0, p0, Lcom/google/android/gms/internal/ads/rO;->P:I

    .line 111
    .line 112
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/p0;->a()I

    .line 113
    .line 114
    .line 115
    move-result p6

    .line 116
    iput p6, p0, Lcom/google/android/gms/internal/ads/rO;->Q:I

    .line 117
    .line 118
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/qO;->J:Lcom/google/android/gms/internal/ads/p0;

    .line 119
    .line 120
    iget p6, p6, Lcom/google/android/gms/internal/ads/p0;->f:I

    .line 121
    .line 122
    invoke-static {p6, p3}, Lcom/google/android/gms/internal/ads/sO;->e(II)I

    .line 123
    .line 124
    .line 125
    move-result p6

    .line 126
    iput p6, p0, Lcom/google/android/gms/internal/ads/rO;->S:I

    .line 127
    .line 128
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/qO;->J:Lcom/google/android/gms/internal/ads/p0;

    .line 129
    .line 130
    iget p6, p6, Lcom/google/android/gms/internal/ads/p0;->f:I

    .line 131
    .line 132
    if-eqz p6, :cond_9

    .line 133
    .line 134
    and-int/2addr p6, p2

    .line 135
    if-eqz p6, :cond_a

    .line 136
    .line 137
    :cond_9
    const/4 p6, 0x1

    .line 138
    goto :goto_6

    .line 139
    :cond_a
    const/4 p6, 0x0

    .line 140
    :goto_6
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/rO;->T:Z

    .line 141
    .line 142
    const/4 p6, 0x0

    .line 143
    :goto_7
    iget-object v0, p4, Lcom/google/android/gms/internal/ads/pg;->d:Lcom/google/android/gms/internal/ads/uA;

    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-ge p6, v2, :cond_c

    .line 150
    .line 151
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qO;->J:Lcom/google/android/gms/internal/ads/p0;

    .line 152
    .line 153
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 154
    .line 155
    if-eqz v2, :cond_b

    .line 156
    .line 157
    invoke-interface {v0, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_b

    .line 166
    .line 167
    goto :goto_8

    .line 168
    :cond_b
    add-int/lit8 p6, p6, 0x1

    .line 169
    .line 170
    goto :goto_7

    .line 171
    :cond_c
    const p6, 0x7fffffff

    .line 172
    .line 173
    .line 174
    :goto_8
    iput p6, p0, Lcom/google/android/gms/internal/ads/rO;->R:I

    .line 175
    .line 176
    and-int/lit16 p4, p5, 0x180

    .line 177
    .line 178
    const/16 p6, 0x80

    .line 179
    .line 180
    if-ne p4, p6, :cond_d

    .line 181
    .line 182
    const/4 p4, 0x1

    .line 183
    goto :goto_9

    .line 184
    :cond_d
    const/4 p4, 0x0

    .line 185
    :goto_9
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/rO;->V:Z

    .line 186
    .line 187
    and-int/lit8 p4, p5, 0x40

    .line 188
    .line 189
    const/16 p6, 0x40

    .line 190
    .line 191
    if-ne p4, p6, :cond_e

    .line 192
    .line 193
    const/4 p4, 0x1

    .line 194
    goto :goto_a

    .line 195
    :cond_e
    const/4 p4, 0x0

    .line 196
    :goto_a
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/rO;->W:Z

    .line 197
    .line 198
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/qO;->J:Lcom/google/android/gms/internal/ads/p0;

    .line 199
    .line 200
    iget-object p6, p4, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 201
    .line 202
    const/4 v0, 0x2

    .line 203
    if-nez p6, :cond_f

    .line 204
    .line 205
    :goto_b
    const/4 v3, 0x0

    .line 206
    goto :goto_e

    .line 207
    :cond_f
    invoke-virtual {p6}, Ljava/lang/String;->hashCode()I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    const/4 v3, 0x3

    .line 212
    const/4 v4, 0x4

    .line 213
    sparse-switch v2, :sswitch_data_0

    .line 214
    .line 215
    .line 216
    :goto_c
    const/4 p6, -0x1

    .line 217
    goto :goto_d

    .line 218
    :sswitch_0
    const-string v2, "video/x-vnd.on2.vp9"

    .line 219
    .line 220
    invoke-virtual {p6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result p6

    .line 224
    if-nez p6, :cond_10

    .line 225
    .line 226
    goto :goto_c

    .line 227
    :cond_10
    const/4 p6, 0x4

    .line 228
    goto :goto_d

    .line 229
    :sswitch_1
    const-string v2, "video/avc"

    .line 230
    .line 231
    invoke-virtual {p6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result p6

    .line 235
    if-nez p6, :cond_11

    .line 236
    .line 237
    goto :goto_c

    .line 238
    :cond_11
    const/4 p6, 0x3

    .line 239
    goto :goto_d

    .line 240
    :sswitch_2
    const-string v2, "video/hevc"

    .line 241
    .line 242
    invoke-virtual {p6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result p6

    .line 246
    if-nez p6, :cond_12

    .line 247
    .line 248
    goto :goto_c

    .line 249
    :cond_12
    const/4 p6, 0x2

    .line 250
    goto :goto_d

    .line 251
    :sswitch_3
    const-string v2, "video/av01"

    .line 252
    .line 253
    invoke-virtual {p6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result p6

    .line 257
    if-nez p6, :cond_13

    .line 258
    .line 259
    goto :goto_c

    .line 260
    :cond_13
    const/4 p6, 0x1

    .line 261
    goto :goto_d

    .line 262
    :sswitch_4
    const-string v2, "video/dolby-vision"

    .line 263
    .line 264
    invoke-virtual {p6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result p6

    .line 268
    if-nez p6, :cond_14

    .line 269
    .line 270
    goto :goto_c

    .line 271
    :cond_14
    const/4 p6, 0x0

    .line 272
    :goto_d
    packed-switch p6, :pswitch_data_0

    .line 273
    .line 274
    .line 275
    goto :goto_b

    .line 276
    :pswitch_0
    const/4 v3, 0x2

    .line 277
    goto :goto_e

    .line 278
    :pswitch_1
    const/4 v3, 0x1

    .line 279
    goto :goto_e

    .line 280
    :pswitch_2
    const/4 v3, 0x4

    .line 281
    goto :goto_e

    .line 282
    :pswitch_3
    const/4 v3, 0x5

    .line 283
    :goto_e
    :pswitch_4
    iput v3, p0, Lcom/google/android/gms/internal/ads/rO;->X:I

    .line 284
    .line 285
    iget p6, p4, Lcom/google/android/gms/internal/ads/p0;->f:I

    .line 286
    .line 287
    and-int/lit16 p6, p6, 0x4000

    .line 288
    .line 289
    if-eqz p6, :cond_15

    .line 290
    .line 291
    :goto_f
    const/4 p2, 0x0

    .line 292
    goto :goto_10

    .line 293
    :cond_15
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/rO;->L:Lcom/google/android/gms/internal/ads/lO;

    .line 294
    .line 295
    iget-boolean v2, p6, Lcom/google/android/gms/internal/ads/lO;->q:Z

    .line 296
    .line 297
    invoke-static {p5, v2}, Lcom/google/android/gms/internal/ads/Cw;->g0(IZ)Z

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    if-nez v2, :cond_16

    .line 302
    .line 303
    goto :goto_f

    .line 304
    :cond_16
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/rO;->K:Z

    .line 305
    .line 306
    if-nez v2, :cond_17

    .line 307
    .line 308
    iget-boolean p6, p6, Lcom/google/android/gms/internal/ads/lO;->l:Z

    .line 309
    .line 310
    if-nez p6, :cond_17

    .line 311
    .line 312
    goto :goto_f

    .line 313
    :cond_17
    invoke-static {p5, p3}, Lcom/google/android/gms/internal/ads/Cw;->g0(IZ)Z

    .line 314
    .line 315
    .line 316
    move-result p3

    .line 317
    if-eqz p3, :cond_18

    .line 318
    .line 319
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/rO;->M:Z

    .line 320
    .line 321
    if-eqz p3, :cond_18

    .line 322
    .line 323
    if-eqz v2, :cond_18

    .line 324
    .line 325
    iget p3, p4, Lcom/google/android/gms/internal/ads/p0;->i:I

    .line 326
    .line 327
    if-eq p3, v1, :cond_18

    .line 328
    .line 329
    and-int/2addr p1, p5

    .line 330
    if-eqz p1, :cond_18

    .line 331
    .line 332
    const/4 p2, 0x2

    .line 333
    :cond_18
    :goto_10
    iput p2, p0, Lcom/google/android/gms/internal/ads/rO;->U:I

    .line 334
    .line 335
    return-void

    .line 336
    nop

    .line 337
    :sswitch_data_0
    .sparse-switch
        -0x6e5534ef -> :sswitch_4
        -0x631b55f6 -> :sswitch_3
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/rO;->U:I

    return v0
.end method

.method public final bridge synthetic b(Lcom/google/android/gms/internal/ads/qO;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/rO;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qO;->J:Lcom/google/android/gms/internal/ads/p0;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/qO;->J:Lcom/google/android/gms/internal/ads/p0;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rO;->L:Lcom/google/android/gms/internal/ads/lO;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rO;->V:Z

    .line 23
    .line 24
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/rO;->V:Z

    .line 25
    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rO;->W:Z

    .line 29
    .line 30
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/rO;->W:Z

    .line 31
    .line 32
    if-ne v0, p1, :cond_0

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    return p1

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    return p1
.end method
