.class public final Lcom/google/android/gms/internal/ads/vf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/lJ;
.implements Lcom/google/android/gms/internal/ads/eL;


# static fields
.field public static final a0:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final b0:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final G:Landroid/content/Context;

.field public final H:Lcom/google/android/gms/internal/ads/qf;

.field public final I:Lcom/google/android/gms/internal/ads/sO;

.field public final J:Lcom/google/android/gms/internal/ads/Ne;

.field public final K:Ljava/lang/ref/WeakReference;

.field public final L:Lcom/google/android/gms/internal/ads/NN;

.field public M:Lcom/google/android/gms/internal/ads/aL;

.field public N:Ljava/nio/ByteBuffer;

.field public O:Z

.field public P:Lcom/google/android/gms/internal/ads/He;

.field public Q:I

.field public R:I

.field public S:J

.field public final T:Ljava/lang/String;

.field public final U:I

.field public final V:Ljava/lang/Object;

.field public W:Ljava/lang/Integer;

.field public final X:Ljava/util/ArrayList;

.field public volatile Y:Lcom/google/android/gms/internal/ads/rf;

.field public final Z:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/android/gms/internal/ads/vf;->a0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/google/android/gms/internal/ads/vf;->b0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Ne;Lcom/google/android/gms/internal/ads/Oe;Ljava/lang/Integer;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->V:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->Z:Ljava/util/HashSet;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vf;->G:Landroid/content/Context;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vf;->J:Lcom/google/android/gms/internal/ads/Ne;

    .line 21
    .line 22
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/vf;->W:Ljava/lang/Integer;

    .line 23
    .line 24
    new-instance p4, Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    invoke-direct {p4, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/vf;->K:Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    new-instance p4, Lcom/google/android/gms/internal/ads/qf;

    .line 32
    .line 33
    invoke-direct {p4}, Lcom/google/android/gms/internal/ads/qf;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/vf;->H:Lcom/google/android/gms/internal/ads/qf;

    .line 37
    .line 38
    new-instance v0, Lcom/google/android/gms/internal/ads/sO;

    .line 39
    .line 40
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/sO;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->I:Lcom/google/android/gms/internal/ads/sO;

    .line 44
    .line 45
    invoke-static {}, Lo3/I;->m()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "SimpleExoPlayerAdapter initialize "

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/vf;->a0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 67
    .line 68
    .line 69
    new-instance v1, Lcom/google/android/gms/internal/ads/uf;

    .line 70
    .line 71
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/uf;-><init>(Lcom/google/android/gms/internal/ads/vf;)V

    .line 72
    .line 73
    .line 74
    new-instance v2, Lcom/google/android/gms/internal/ads/mK;

    .line 75
    .line 76
    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/ads/mK;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/uf;)V

    .line 77
    .line 78
    .line 79
    iget-boolean v1, v2, Lcom/google/android/gms/internal/ads/mK;->r:Z

    .line 80
    .line 81
    const/4 v3, 0x1

    .line 82
    xor-int/2addr v1, v3

    .line 83
    invoke-static {v1}, Lo3/r;->M(Z)V

    .line 84
    .line 85
    .line 86
    new-instance v1, Lcom/google/android/gms/internal/ads/kz;

    .line 87
    .line 88
    const/4 v4, 0x2

    .line 89
    invoke-direct {v1, v0, v4}, Lcom/google/android/gms/internal/ads/kz;-><init>(Ljava/lang/Object;I)V

    .line 90
    .line 91
    .line 92
    iput-object v1, v2, Lcom/google/android/gms/internal/ads/mK;->e:Lcom/google/android/gms/internal/ads/Gz;

    .line 93
    .line 94
    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/mK;->r:Z

    .line 95
    .line 96
    xor-int/2addr v0, v3

    .line 97
    invoke-static {v0}, Lo3/r;->M(Z)V

    .line 98
    .line 99
    .line 100
    new-instance v0, Lcom/google/android/gms/internal/ads/kz;

    .line 101
    .line 102
    invoke-direct {v0, p4, v3}, Lcom/google/android/gms/internal/ads/kz;-><init>(Ljava/lang/Object;I)V

    .line 103
    .line 104
    .line 105
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/mK;->f:Lcom/google/android/gms/internal/ads/Gz;

    .line 106
    .line 107
    iget-boolean p4, v2, Lcom/google/android/gms/internal/ads/mK;->r:Z

    .line 108
    .line 109
    xor-int/2addr p4, v3

    .line 110
    invoke-static {p4}, Lo3/r;->M(Z)V

    .line 111
    .line 112
    .line 113
    iput-boolean v3, v2, Lcom/google/android/gms/internal/ads/mK;->r:Z

    .line 114
    .line 115
    new-instance p4, Lcom/google/android/gms/internal/ads/aL;

    .line 116
    .line 117
    invoke-direct {p4, v2}, Lcom/google/android/gms/internal/ads/aL;-><init>(Lcom/google/android/gms/internal/ads/mK;)V

    .line 118
    .line 119
    .line 120
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 121
    .line 122
    invoke-virtual {p4, p0}, Lcom/google/android/gms/internal/ads/aL;->m(Lcom/google/android/gms/internal/ads/eL;)V

    .line 123
    .line 124
    .line 125
    const/4 p4, 0x0

    .line 126
    iput p4, p0, Lcom/google/android/gms/internal/ads/vf;->Q:I

    .line 127
    .line 128
    const-wide/16 v0, 0x0

    .line 129
    .line 130
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/vf;->S:J

    .line 131
    .line 132
    iput p4, p0, Lcom/google/android/gms/internal/ads/vf;->R:I

    .line 133
    .line 134
    new-instance v0, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->X:Ljava/util/ArrayList;

    .line 140
    .line 141
    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->Y:Lcom/google/android/gms/internal/ads/rf;

    .line 143
    .line 144
    if-eqz p3, :cond_1

    .line 145
    .line 146
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/Oe;->zzr()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    :cond_1
    if-nez v0, :cond_2

    .line 151
    .line 152
    sget-object v0, Lcom/google/android/gms/internal/ads/rz;->G:Lcom/google/android/gms/internal/ads/rz;

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/Az;

    .line 156
    .line 157
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/Az;-><init>(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    move-object v0, v1

    .line 161
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wz;->b()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Ljava/lang/String;

    .line 166
    .line 167
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->T:Ljava/lang/String;

    .line 168
    .line 169
    if-eqz p3, :cond_3

    .line 170
    .line 171
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/Oe;->zzf()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    goto :goto_1

    .line 176
    :cond_3
    const/4 v0, 0x0

    .line 177
    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/vf;->U:I

    .line 178
    .line 179
    new-instance v0, Lcom/google/android/gms/internal/ads/NN;

    .line 180
    .line 181
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 182
    .line 183
    iget-object v1, v1, Lk3/l;->c:Lo3/O;

    .line 184
    .line 185
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/Oe;->zzn()Lp3/a;

    .line 186
    .line 187
    .line 188
    move-result-object p3

    .line 189
    iget-object p3, p3, Lp3/a;->G:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v1, p1, p3}, Lo3/O;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/vf;->O:Z

    .line 196
    .line 197
    if-eqz p3, :cond_4

    .line 198
    .line 199
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/vf;->N:Ljava/nio/ByteBuffer;

    .line 200
    .line 201
    invoke-virtual {p3}, Ljava/nio/Buffer;->limit()I

    .line 202
    .line 203
    .line 204
    move-result p3

    .line 205
    if-lez p3, :cond_4

    .line 206
    .line 207
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vf;->N:Ljava/nio/ByteBuffer;

    .line 208
    .line 209
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    new-array p1, p1, [B

    .line 214
    .line 215
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vf;->N:Ljava/nio/ByteBuffer;

    .line 216
    .line 217
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 218
    .line 219
    .line 220
    new-instance p2, Lcom/google/android/gms/internal/ads/K4;

    .line 221
    .line 222
    const/16 p3, 0x1b

    .line 223
    .line 224
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/K4;-><init>(Ljava/lang/Object;I)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_7

    .line 228
    .line 229
    :cond_4
    sget-object p3, Lcom/google/android/gms/internal/ads/Q7;->Q1:Lcom/google/android/gms/internal/ads/J7;

    .line 230
    .line 231
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 232
    .line 233
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 234
    .line 235
    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object p3

    .line 239
    check-cast p3, Ljava/lang/Boolean;

    .line 240
    .line 241
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 242
    .line 243
    .line 244
    move-result p3

    .line 245
    if-eqz p3, :cond_6

    .line 246
    .line 247
    sget-object p3, Lcom/google/android/gms/internal/ads/Q7;->I1:Lcom/google/android/gms/internal/ads/J7;

    .line 248
    .line 249
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 250
    .line 251
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p3

    .line 255
    check-cast p3, Ljava/lang/Boolean;

    .line 256
    .line 257
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 258
    .line 259
    .line 260
    move-result p3

    .line 261
    if-nez p3, :cond_5

    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_5
    :goto_2
    const/4 p3, 0x1

    .line 265
    goto :goto_4

    .line 266
    :cond_6
    :goto_3
    iget-boolean p3, p2, Lcom/google/android/gms/internal/ads/Ne;->i:Z

    .line 267
    .line 268
    if-nez p3, :cond_7

    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_7
    const/4 p3, 0x0

    .line 272
    :goto_4
    iget-boolean v1, p2, Lcom/google/android/gms/internal/ads/Ne;->l:Z

    .line 273
    .line 274
    if-eqz v1, :cond_8

    .line 275
    .line 276
    new-instance v1, Lcom/google/android/gms/internal/ads/tf;

    .line 277
    .line 278
    invoke-direct {v1, p0, p1, p3, p4}, Lcom/google/android/gms/internal/ads/tf;-><init>(Lcom/google/android/gms/internal/ads/vf;Ljava/lang/String;ZI)V

    .line 279
    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_8
    iget p4, p2, Lcom/google/android/gms/internal/ads/Ne;->h:I

    .line 283
    .line 284
    if-lez p4, :cond_9

    .line 285
    .line 286
    new-instance v1, Lcom/google/android/gms/internal/ads/tf;

    .line 287
    .line 288
    invoke-direct {v1, p0, p1, p3, v3}, Lcom/google/android/gms/internal/ads/tf;-><init>(Lcom/google/android/gms/internal/ads/vf;Ljava/lang/String;ZI)V

    .line 289
    .line 290
    .line 291
    goto :goto_5

    .line 292
    :cond_9
    new-instance v1, Lcom/google/android/gms/internal/ads/tf;

    .line 293
    .line 294
    invoke-direct {v1, p0, p1, p3, v4}, Lcom/google/android/gms/internal/ads/tf;-><init>(Lcom/google/android/gms/internal/ads/vf;Ljava/lang/String;ZI)V

    .line 295
    .line 296
    .line 297
    :goto_5
    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/Ne;->i:Z

    .line 298
    .line 299
    if-eqz p1, :cond_a

    .line 300
    .line 301
    new-instance p1, Lcom/google/android/gms/internal/ads/x;

    .line 302
    .line 303
    const/16 p2, 0x11

    .line 304
    .line 305
    invoke-direct {p1, p2, p0, v1}, Lcom/google/android/gms/internal/ads/x;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    move-object p2, p1

    .line 309
    goto :goto_6

    .line 310
    :cond_a
    move-object p2, v1

    .line 311
    :goto_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vf;->N:Ljava/nio/ByteBuffer;

    .line 312
    .line 313
    if-eqz p1, :cond_b

    .line 314
    .line 315
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 316
    .line 317
    .line 318
    move-result p1

    .line 319
    if-lez p1, :cond_b

    .line 320
    .line 321
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vf;->N:Ljava/nio/ByteBuffer;

    .line 322
    .line 323
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 324
    .line 325
    .line 326
    move-result p1

    .line 327
    new-array p1, p1, [B

    .line 328
    .line 329
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/vf;->N:Ljava/nio/ByteBuffer;

    .line 330
    .line 331
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 332
    .line 333
    .line 334
    new-instance p3, Lcom/google/android/gms/internal/ads/x;

    .line 335
    .line 336
    const/16 p4, 0x12

    .line 337
    .line 338
    invoke-direct {p3, p4, p2, p1}, Lcom/google/android/gms/internal/ads/x;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    move-object p2, p3

    .line 342
    :cond_b
    :goto_7
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->l:Lcom/google/android/gms/internal/ads/J7;

    .line 343
    .line 344
    sget-object p3, Ll3/q;->d:Ll3/q;

    .line 345
    .line 346
    iget-object p3, p3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 347
    .line 348
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    check-cast p1, Ljava/lang/Boolean;

    .line 353
    .line 354
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 355
    .line 356
    .line 357
    move-result p1

    .line 358
    if-eqz p1, :cond_c

    .line 359
    .line 360
    new-instance p1, Lcom/google/android/gms/internal/ads/Aa;

    .line 361
    .line 362
    const/16 p3, 0x10

    .line 363
    .line 364
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/Aa;-><init>(I)V

    .line 365
    .line 366
    .line 367
    goto :goto_8

    .line 368
    :cond_c
    new-instance p1, Lcom/google/android/gms/internal/ads/Aa;

    .line 369
    .line 370
    const/16 p3, 0xf

    .line 371
    .line 372
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/Aa;-><init>(I)V

    .line 373
    .line 374
    .line 375
    :goto_8
    new-instance p3, Lcom/google/android/gms/internal/ads/MN;

    .line 376
    .line 377
    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/MN;-><init>(Ljava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/ads/NN;-><init>(Lcom/google/android/gms/internal/ads/VB;Lcom/google/android/gms/internal/ads/MN;)V

    .line 381
    .line 382
    .line 383
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->L:Lcom/google/android/gms/internal/ads/NN;

    .line 384
    .line 385
    return-void
.end method


# virtual methods
.method public final E()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->P:Lcom/google/android/gms/internal/ads/He;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/He;->h()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/p0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->K:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/Oe;

    .line 8
    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->I1:Lcom/google/android/gms/internal/ads/J7;

    .line 10
    .line 11
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 12
    .line 13
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    new-instance v1, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    iget v2, p1, Lcom/google/android/gms/internal/ads/p0;->u:F

    .line 35
    .line 36
    const-string v3, "frameRate"

    .line 37
    .line 38
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iget v2, p1, Lcom/google/android/gms/internal/ads/p0;->i:I

    .line 46
    .line 47
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string v3, "bitRate"

    .line 52
    .line 53
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    iget v3, p1, Lcom/google/android/gms/internal/ads/p0;->s:I

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v3, "x"

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v3, p1, Lcom/google/android/gms/internal/ads/p0;->t:I

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const-string v3, "resolution"

    .line 81
    .line 82
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/p0;->l:Ljava/lang/String;

    .line 86
    .line 87
    if-eqz v2, :cond_0

    .line 88
    .line 89
    const-string v3, "videoMime"

    .line 90
    .line 91
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    :cond_0
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 95
    .line 96
    if-eqz v2, :cond_1

    .line 97
    .line 98
    const-string v3, "videoSampleMime"

    .line 99
    .line 100
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    :cond_1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/p0;->j:Ljava/lang/String;

    .line 104
    .line 105
    if-eqz p1, :cond_2

    .line 106
    .line 107
    const-string v2, "videoCodec"

    .line 108
    .line 109
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    :cond_2
    const-string p1, "onMetadataEvent"

    .line 113
    .line 114
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/sa;->w(Ljava/lang/String;Ljava/util/Map;)V

    .line 115
    .line 116
    .line 117
    :cond_3
    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/dL;Lcom/google/android/gms/internal/ads/nL;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Ljava/io/IOException;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->P:Lcom/google/android/gms/internal/ads/He;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vf;->J:Lcom/google/android/gms/internal/ads/Ne;

    .line 6
    .line 7
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/Ne;->j:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/He;->c(Ljava/lang/Exception;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string v1, "onLoadError"

    .line 16
    .line 17
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/He;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/CD;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic e(Lcom/google/android/gms/internal/ads/Vc;Lcom/google/android/gms/internal/ads/Om;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/CD;ZI)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/vf;->Q:I

    .line 2
    .line 3
    add-int/2addr p1, p3

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/vf;->Q:I

    .line 5
    .line 6
    return-void
.end method

.method public final finalize()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/vf;->a0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lo3/I;->m()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "SimpleExoPlayerAdapter finalize "

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/kC;Lcom/google/android/gms/internal/ads/CD;Z)V
    .locals 2

    .line 1
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/DH;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vf;->V:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter p2

    .line 8
    :try_start_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/vf;->X:Ljava/util/ArrayList;

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/gms/internal/ads/DH;

    .line 11
    .line 12
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    monitor-exit p2

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p1

    .line 20
    :cond_0
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/rf;

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    check-cast p1, Lcom/google/android/gms/internal/ads/rf;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vf;->Y:Lcom/google/android/gms/internal/ads/rf;

    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vf;->K:Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/google/android/gms/internal/ads/Oe;

    .line 35
    .line 36
    sget-object p2, Lcom/google/android/gms/internal/ads/Q7;->I1:Lcom/google/android/gms/internal/ads/J7;

    .line 37
    .line 38
    sget-object p3, Ll3/q;->d:Ll3/q;

    .line 39
    .line 40
    iget-object p3, p3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 41
    .line 42
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vf;->Y:Lcom/google/android/gms/internal/ads/rf;

    .line 57
    .line 58
    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/rf;->n:Z

    .line 59
    .line 60
    if-eqz p2, :cond_1

    .line 61
    .line 62
    new-instance p2, Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 65
    .line 66
    .line 67
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/vf;->Y:Lcom/google/android/gms/internal/ads/rf;

    .line 68
    .line 69
    iget-boolean p3, p3, Lcom/google/android/gms/internal/ads/rf;->p:Z

    .line 70
    .line 71
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    const-string v0, "gcacheHit"

    .line 76
    .line 77
    invoke-virtual {p2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/vf;->Y:Lcom/google/android/gms/internal/ads/rf;

    .line 81
    .line 82
    iget-boolean p3, p3, Lcom/google/android/gms/internal/ads/rf;->q:Z

    .line 83
    .line 84
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    const-string v0, "gcacheDownloaded"

    .line 89
    .line 90
    invoke-virtual {p2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    sget-object p3, Lo3/O;->l:Lo3/J;

    .line 94
    .line 95
    new-instance v0, Lcom/google/android/gms/internal/ads/Ha;

    .line 96
    .line 97
    const/16 v1, 0x10

    .line 98
    .line 99
    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/Ha;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    .line 104
    .line 105
    :cond_1
    return-void
.end method

.method public final h(Lcom/google/android/gms/internal/ads/Xa;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->P:Lcom/google/android/gms/internal/ads/He;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "onPlayerError"

    .line 6
    .line 7
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/He;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final synthetic i(Lcom/google/android/gms/internal/ads/cK;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic j(Lcom/google/android/gms/internal/ads/dL;IJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final k(Lcom/google/android/gms/internal/ads/p0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->K:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/Oe;

    .line 8
    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->I1:Lcom/google/android/gms/internal/ads/J7;

    .line 10
    .line 11
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 12
    .line 13
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    new-instance v1, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/p0;->l:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    const-string v3, "audioMime"

    .line 39
    .line 40
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    const-string v3, "audioSampleMime"

    .line 48
    .line 49
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/p0;->j:Ljava/lang/String;

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    const-string v2, "audioCodec"

    .line 57
    .line 58
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_2
    const-string p1, "onMetadataEvent"

    .line 62
    .line 63
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/sa;->w(Ljava/lang/String;Ljava/util/Map;)V

    .line 64
    .line 65
    .line 66
    :cond_3
    return-void
.end method

.method public final l(Lcom/google/android/gms/internal/ads/th;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->P:Lcom/google/android/gms/internal/ads/He;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p1, Lcom/google/android/gms/internal/ads/th;->a:I

    .line 6
    .line 7
    iget p1, p1, Lcom/google/android/gms/internal/ads/th;->b:I

    .line 8
    .line 9
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/He;->i(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final synthetic m(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final n()J
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->Y:Lcom/google/android/gms/internal/ads/rf;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->Y:Lcom/google/android/gms/internal/ads/rf;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/rf;->o:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->Y:Lcom/google/android/gms/internal/ads/rf;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rf;->l()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    return-wide v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->V:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vf;->X:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/vf;->S:J

    .line 30
    .line 31
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vf;->X:Ljava/util/ArrayList;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/google/android/gms/internal/ads/DH;

    .line 39
    .line 40
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/kC;->zze()Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-wide/16 v5, 0x0

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    :catch_0
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_2

    .line 61
    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    check-cast v7, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    if-eqz v7, :cond_1

    .line 69
    .line 70
    :try_start_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    if-eqz v8, :cond_1

    .line 75
    .line 76
    const-string v8, "content-length"

    .line 77
    .line 78
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    check-cast v9, Ljava/lang/CharSequence;

    .line 83
    .line 84
    invoke-static {v8, v9}, Lo3/r;->F(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-eqz v8, :cond_1

    .line 89
    .line 90
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    if-eqz v8, :cond_1

    .line 95
    .line 96
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    check-cast v8, Ljava/util/List;

    .line 101
    .line 102
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    if-eqz v8, :cond_1

    .line 107
    .line 108
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    check-cast v7, Ljava/util/List;

    .line 113
    .line 114
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    check-cast v7, Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 121
    .line 122
    .line 123
    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    goto :goto_1

    .line 125
    :catchall_0
    move-exception v1

    .line 126
    goto :goto_2

    .line 127
    :cond_2
    :goto_1
    add-long/2addr v1, v5

    .line 128
    :try_start_2
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/vf;->S:J

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/vf;->S:J

    .line 133
    .line 134
    return-wide v0

    .line 135
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    throw v1
.end method

.method public final o([Landroid/net/Uri;Ljava/nio/ByteBuffer;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vf;->N:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/vf;->O:Z

    .line 8
    .line 9
    array-length p2, p1

    .line 10
    const/4 p3, 0x1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-ne p2, p3, :cond_0

    .line 13
    .line 14
    aget-object p1, p1, v0

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/vf;->r(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/ON;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-array p2, p2, [Lcom/google/android/gms/internal/ads/eN;

    .line 22
    .line 23
    :goto_0
    array-length p3, p1

    .line 24
    if-ge v0, p3, :cond_1

    .line 25
    .line 26
    aget-object p3, p1, v0

    .line 27
    .line 28
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/vf;->r(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/ON;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    aput-object p3, p2, v0

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/DN;

    .line 38
    .line 39
    new-instance p3, Lcom/google/android/gms/internal/ads/GH;

    .line 40
    .line 41
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/DN;-><init>(Lcom/google/android/gms/internal/ads/GH;[Lcom/google/android/gms/internal/ads/eN;)V

    .line 45
    .line 46
    .line 47
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/aL;->c(Lcom/google/android/gms/internal/ads/eN;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aL;->f()V

    .line 55
    .line 56
    .line 57
    sget-object p1, Lcom/google/android/gms/internal/ads/vf;->b0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method

.method public final p(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aL;->l()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-ge v0, v1, :cond_2

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vf;->I:Lcom/google/android/gms/internal/ads/sO;

    .line 15
    .line 16
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/sO;->c:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/sO;->f:Lcom/google/android/gms/internal/ads/lO;

    .line 20
    .line 21
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v2, Lcom/google/android/gms/internal/ads/kO;

    .line 26
    .line 27
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/kO;-><init>(Lcom/google/android/gms/internal/ads/lO;)V

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    xor-int/lit8 v4, p1, 0x1

    .line 32
    .line 33
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/kO;->t:Landroid/util/SparseBooleanArray;

    .line 34
    .line 35
    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-ne v6, v4, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    if-eqz v4, :cond_1

    .line 43
    .line 44
    invoke-virtual {v5, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/sO;->h(Lcom/google/android/gms/internal/ads/kO;)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    throw p1

    .line 60
    :cond_2
    return-void
.end method

.method public final q(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->P:Lcom/google/android/gms/internal/ads/He;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/He;->a(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final r(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/ON;
    .locals 9

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 10
    .line 11
    sget-object v8, Lcom/google/android/gms/internal/ads/J5;->a:Lcom/google/android/gms/internal/ads/J5;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    new-instance v2, Lcom/google/android/gms/internal/ads/e5;

    .line 16
    .line 17
    invoke-direct {v2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/e5;-><init>(Landroid/net/Uri;Ljava/util/List;Lcom/google/android/gms/internal/ads/uA;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    move-object p1, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    goto :goto_0

    .line 24
    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/ads/x6;

    .line 25
    .line 26
    new-instance v4, Lcom/google/android/gms/internal/ads/F3;

    .line 27
    .line 28
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/h3;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v6, Lcom/google/android/gms/internal/ads/A4;

    .line 32
    .line 33
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    sget-object v7, Lcom/google/android/gms/internal/ads/i9;->y:Lcom/google/android/gms/internal/ads/i9;

    .line 37
    .line 38
    const-string v3, ""

    .line 39
    .line 40
    move-object v2, v1

    .line 41
    move-object v5, p1

    .line 42
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/x6;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/F3;Lcom/google/android/gms/internal/ads/e5;Lcom/google/android/gms/internal/ads/A4;Lcom/google/android/gms/internal/ads/i9;Lcom/google/android/gms/internal/ads/J5;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->J:Lcom/google/android/gms/internal/ads/Ne;

    .line 46
    .line 47
    iget v0, v0, Lcom/google/android/gms/internal/ads/Ne;->f:I

    .line 48
    .line 49
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vf;->L:Lcom/google/android/gms/internal/ads/NN;

    .line 50
    .line 51
    iput v0, v2, Lcom/google/android/gms/internal/ads/NN;->b:I

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    new-instance p1, Lcom/google/android/gms/internal/ads/ON;

    .line 57
    .line 58
    iget v5, v2, Lcom/google/android/gms/internal/ads/NN;->b:I

    .line 59
    .line 60
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/NN;->d:Lcom/google/android/gms/internal/ads/GH;

    .line 61
    .line 62
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/NN;->a:Lcom/google/android/gms/internal/ads/VB;

    .line 63
    .line 64
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/NN;->c:Lcom/google/android/gms/internal/ads/MN;

    .line 65
    .line 66
    move-object v0, p1

    .line 67
    move-object v2, v3

    .line 68
    move-object v3, v6

    .line 69
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ON;-><init>(Lcom/google/android/gms/internal/ads/x6;Lcom/google/android/gms/internal/ads/VB;Lcom/google/android/gms/internal/ads/MN;Lcom/google/android/gms/internal/ads/GH;I)V

    .line 70
    .line 71
    .line 72
    return-object p1
.end method

.method public final s()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->Y:Lcom/google/android/gms/internal/ads/rf;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->Y:Lcom/google/android/gms/internal/ads/rf;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/rf;->o:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vf;->Y:Lcom/google/android/gms/internal/ads/rf;

    .line 12
    .line 13
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/rf;->p:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/ads/vf;->Q:I

    .line 18
    .line 19
    int-to-long v0, v0

    .line 20
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vf;->Y:Lcom/google/android/gms/internal/ads/rf;

    .line 21
    .line 22
    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/rf;->r:J

    .line 23
    .line 24
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    return-wide v0

    .line 29
    :cond_0
    const-wide/16 v0, 0x0

    .line 30
    .line 31
    return-wide v0
.end method

.method public final zzh(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/vf;->R:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/vf;->R:I

    .line 5
    .line 6
    return-void
.end method
