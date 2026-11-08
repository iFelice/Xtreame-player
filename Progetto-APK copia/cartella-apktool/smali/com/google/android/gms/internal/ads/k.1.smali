.class public final Lcom/google/android/gms/internal/ads/k;
.super Lcom/google/android/gms/internal/ads/VM;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/m;


# static fields
.field public static final e1:[I

.field public static f1:Z

.field public static g1:Z


# instance fields
.field public final A0:Z

.field public final B0:Lcom/google/android/gms/internal/ads/n;

.field public final C0:LU0/C;

.field public D0:LA2/i;

.field public E0:Z

.field public F0:Z

.field public G0:Lcom/google/android/gms/internal/ads/f;

.field public H0:Z

.field public I0:Ljava/util/List;

.field public J0:Landroid/view/Surface;

.field public K0:Lcom/google/android/gms/internal/ads/l;

.field public L0:Lcom/google/android/gms/internal/ads/Br;

.field public M0:Z

.field public N0:I

.field public O0:I

.field public P0:J

.field public Q0:I

.field public R0:I

.field public S0:I

.field public T0:J

.field public U0:I

.field public V0:J

.field public W0:Lcom/google/android/gms/internal/ads/th;

.field public X0:Lcom/google/android/gms/internal/ads/th;

.field public Y0:I

.field public Z0:I

.field public a1:Lcom/google/android/gms/internal/ads/tK;

.field public b1:J

.field public c1:J

.field public d1:Z

.field public final x0:Landroid/content/Context;

.field public final y0:Z

.field public final z0:Lcom/google/android/gms/internal/ads/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/k;->e1:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/I7;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/sK;)V
    .locals 2

    .line 1
    const/high16 v0, 0x41f00000    # 30.0f

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {p0, v1, p2, v0}, Lcom/google/android/gms/internal/ads/VM;-><init>(ILcom/google/android/gms/internal/ads/I7;F)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/k;->x0:Landroid/content/Context;

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 15
    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/x;

    .line 17
    .line 18
    invoke-direct {v0, p3, p4}, Lcom/google/android/gms/internal/ads/x;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/sK;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/k;->z0:Lcom/google/android/gms/internal/ads/x;

    .line 22
    .line 23
    const/4 p3, 0x1

    .line 24
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/k;->y0:Z

    .line 25
    .line 26
    new-instance p4, Lcom/google/android/gms/internal/ads/n;

    .line 27
    .line 28
    invoke-direct {p4, p1, p0}, Lcom/google/android/gms/internal/ads/n;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/m;)V

    .line 29
    .line 30
    .line 31
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/k;->B0:Lcom/google/android/gms/internal/ads/n;

    .line 32
    .line 33
    new-instance p1, LU0/C;

    .line 34
    .line 35
    invoke-direct {p1}, LU0/C;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/k;->C0:LU0/C;

    .line 39
    .line 40
    const-string p1, "NVIDIA"

    .line 41
    .line 42
    sget-object p4, Lcom/google/android/gms/internal/ads/Et;->c:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/k;->A0:Z

    .line 49
    .line 50
    sget-object p1, Lcom/google/android/gms/internal/ads/Br;->c:Lcom/google/android/gms/internal/ads/Br;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/k;->L0:Lcom/google/android/gms/internal/ads/Br;

    .line 53
    .line 54
    iput p3, p0, Lcom/google/android/gms/internal/ads/k;->N0:I

    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lcom/google/android/gms/internal/ads/k;->O0:I

    .line 58
    .line 59
    sget-object p3, Lcom/google/android/gms/internal/ads/th;->d:Lcom/google/android/gms/internal/ads/th;

    .line 60
    .line 61
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/k;->W0:Lcom/google/android/gms/internal/ads/th;

    .line 62
    .line 63
    iput p1, p0, Lcom/google/android/gms/internal/ads/k;->Z0:I

    .line 64
    .line 65
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/k;->X0:Lcom/google/android/gms/internal/ads/th;

    .line 66
    .line 67
    const/16 p1, -0x3e8

    .line 68
    .line 69
    iput p1, p0, Lcom/google/android/gms/internal/ads/k;->Y0:I

    .line 70
    .line 71
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/k;->b1:J

    .line 77
    .line 78
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/k;->c1:J

    .line 79
    .line 80
    return-void
.end method

.method public static final p0(Ljava/lang/String;)Z
    .locals 17

    .line 1
    const-string v0, "OMX.google"

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    const-class v2, Lcom/google/android/gms/internal/ads/k;

    .line 14
    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/internal/ads/k;->f1:Z

    .line 17
    .line 18
    if-nez v0, :cond_8

    .line 19
    .line 20
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 21
    .line 22
    const/16 v3, 0x1c

    .line 23
    .line 24
    const/4 v4, -0x1

    .line 25
    const/4 v5, 0x3

    .line 26
    const/4 v6, 0x2

    .line 27
    const/4 v7, 0x7

    .line 28
    const/4 v8, 0x4

    .line 29
    const/4 v9, 0x6

    .line 30
    const/4 v10, 0x5

    .line 31
    const/4 v11, 0x1

    .line 32
    if-gt v0, v3, :cond_2

    .line 33
    .line 34
    sget-object v12, Lcom/google/android/gms/internal/ads/Et;->b:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    sparse-switch v13, :sswitch_data_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :sswitch_0
    const-string v13, "machuca"

    .line 45
    .line 46
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v12

    .line 50
    if-eqz v12, :cond_1

    .line 51
    .line 52
    const/4 v12, 0x5

    .line 53
    goto :goto_1

    .line 54
    :sswitch_1
    const-string v13, "once"

    .line 55
    .line 56
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v12

    .line 60
    if-eqz v12, :cond_1

    .line 61
    .line 62
    const/4 v12, 0x6

    .line 63
    goto :goto_1

    .line 64
    :sswitch_2
    const-string v13, "magnolia"

    .line 65
    .line 66
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v12

    .line 70
    if-eqz v12, :cond_1

    .line 71
    .line 72
    const/4 v12, 0x4

    .line 73
    goto :goto_1

    .line 74
    :sswitch_3
    const-string v13, "aquaman"

    .line 75
    .line 76
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v12

    .line 80
    if-eqz v12, :cond_1

    .line 81
    .line 82
    const/4 v12, 0x0

    .line 83
    goto :goto_1

    .line 84
    :sswitch_4
    const-string v13, "oneday"

    .line 85
    .line 86
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    if-eqz v12, :cond_1

    .line 91
    .line 92
    const/4 v12, 0x7

    .line 93
    goto :goto_1

    .line 94
    :sswitch_5
    const-string v13, "dangalUHD"

    .line 95
    .line 96
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v12

    .line 100
    if-eqz v12, :cond_1

    .line 101
    .line 102
    const/4 v12, 0x2

    .line 103
    goto :goto_1

    .line 104
    :sswitch_6
    const-string v13, "dangalFHD"

    .line 105
    .line 106
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v12

    .line 110
    if-eqz v12, :cond_1

    .line 111
    .line 112
    const/4 v12, 0x3

    .line 113
    goto :goto_1

    .line 114
    :sswitch_7
    const-string v13, "dangal"

    .line 115
    .line 116
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    if-eqz v12, :cond_1

    .line 121
    .line 122
    const/4 v12, 0x1

    .line 123
    goto :goto_1

    .line 124
    :cond_1
    :goto_0
    const/4 v12, -0x1

    .line 125
    :goto_1
    packed-switch v12, :pswitch_data_0

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :goto_2
    :pswitch_0
    const/4 v1, 0x1

    .line 130
    goto/16 :goto_8

    .line 131
    .line 132
    :catchall_0
    move-exception v0

    .line 133
    goto/16 :goto_9

    .line 134
    .line 135
    :cond_2
    :goto_3
    const/16 v12, 0x1b

    .line 136
    .line 137
    if-gt v0, v12, :cond_3

    .line 138
    .line 139
    :try_start_1
    const-string v13, "HWEML"

    .line 140
    .line 141
    sget-object v14, Lcom/google/android/gms/internal/ads/Et;->b:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v13

    .line 147
    if-eqz v13, :cond_3

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_3
    sget-object v13, Lcom/google/android/gms/internal/ads/Et;->d:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    .line 153
    .line 154
    .line 155
    move-result v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    const/16 v15, 0x8

    .line 157
    .line 158
    sparse-switch v14, :sswitch_data_1

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :sswitch_8
    const-string v14, "AFTEUFF014"

    .line 163
    .line 164
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v14

    .line 168
    if-eqz v14, :cond_4

    .line 169
    .line 170
    const/4 v14, 0x5

    .line 171
    goto :goto_5

    .line 172
    :sswitch_9
    const-string v14, "AFTSO001"

    .line 173
    .line 174
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v14

    .line 178
    if-eqz v14, :cond_4

    .line 179
    .line 180
    const/16 v14, 0x8

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :sswitch_a
    const-string v14, "AFTEU014"

    .line 184
    .line 185
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v14

    .line 189
    if-eqz v14, :cond_4

    .line 190
    .line 191
    const/4 v14, 0x4

    .line 192
    goto :goto_5

    .line 193
    :sswitch_b
    const-string v14, "AFTEU011"

    .line 194
    .line 195
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v14

    .line 199
    if-eqz v14, :cond_4

    .line 200
    .line 201
    const/4 v14, 0x3

    .line 202
    goto :goto_5

    .line 203
    :sswitch_c
    const-string v14, "AFTR"

    .line 204
    .line 205
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v14

    .line 209
    if-eqz v14, :cond_4

    .line 210
    .line 211
    const/4 v14, 0x2

    .line 212
    goto :goto_5

    .line 213
    :sswitch_d
    const-string v14, "AFTN"

    .line 214
    .line 215
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v14

    .line 219
    if-eqz v14, :cond_4

    .line 220
    .line 221
    const/4 v14, 0x1

    .line 222
    goto :goto_5

    .line 223
    :sswitch_e
    const-string v14, "AFTA"

    .line 224
    .line 225
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v14

    .line 229
    if-eqz v14, :cond_4

    .line 230
    .line 231
    const/4 v14, 0x0

    .line 232
    goto :goto_5

    .line 233
    :sswitch_f
    const-string v14, "AFTKMST12"

    .line 234
    .line 235
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v14

    .line 239
    if-eqz v14, :cond_4

    .line 240
    .line 241
    const/4 v14, 0x7

    .line 242
    goto :goto_5

    .line 243
    :sswitch_10
    const-string v14, "AFTJMST12"

    .line 244
    .line 245
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v14

    .line 249
    if-eqz v14, :cond_4

    .line 250
    .line 251
    const/4 v14, 0x6

    .line 252
    goto :goto_5

    .line 253
    :cond_4
    :goto_4
    const/4 v14, -0x1

    .line 254
    :goto_5
    packed-switch v14, :pswitch_data_1

    .line 255
    .line 256
    .line 257
    const/16 v14, 0x1a

    .line 258
    .line 259
    if-gt v0, v14, :cond_7

    .line 260
    .line 261
    :try_start_2
    sget-object v0, Lcom/google/android/gms/internal/ads/Et;->b:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 264
    .line 265
    .line 266
    move-result v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    sparse-switch v16, :sswitch_data_2

    .line 268
    .line 269
    .line 270
    goto/16 :goto_6

    .line 271
    .line 272
    :sswitch_11
    const-string v3, "HWWAS-H"

    .line 273
    .line 274
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-eqz v0, :cond_5

    .line 279
    .line 280
    const/16 v3, 0x42

    .line 281
    .line 282
    goto/16 :goto_7

    .line 283
    .line 284
    :sswitch_12
    const-string v3, "HWVNS-H"

    .line 285
    .line 286
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-eqz v0, :cond_5

    .line 291
    .line 292
    const/16 v3, 0x41

    .line 293
    .line 294
    goto/16 :goto_7

    .line 295
    .line 296
    :sswitch_13
    const-string v3, "ELUGA_Prim"

    .line 297
    .line 298
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    if-eqz v0, :cond_5

    .line 303
    .line 304
    const/16 v3, 0x21

    .line 305
    .line 306
    goto/16 :goto_7

    .line 307
    .line 308
    :sswitch_14
    const-string v3, "ELUGA_Note"

    .line 309
    .line 310
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    if-eqz v0, :cond_5

    .line 315
    .line 316
    const/16 v3, 0x20

    .line 317
    .line 318
    goto/16 :goto_7

    .line 319
    .line 320
    :sswitch_15
    const-string v3, "ASUS_X00AD_2"

    .line 321
    .line 322
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    if-eqz v0, :cond_5

    .line 327
    .line 328
    const/16 v3, 0xe

    .line 329
    .line 330
    goto/16 :goto_7

    .line 331
    .line 332
    :sswitch_16
    const-string v3, "HWCAM-H"

    .line 333
    .line 334
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    if-eqz v0, :cond_5

    .line 339
    .line 340
    const/16 v3, 0x40

    .line 341
    .line 342
    goto/16 :goto_7

    .line 343
    .line 344
    :sswitch_17
    const-string v3, "HWBLN-H"

    .line 345
    .line 346
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-eqz v0, :cond_5

    .line 351
    .line 352
    const/16 v3, 0x3f

    .line 353
    .line 354
    goto/16 :goto_7

    .line 355
    .line 356
    :sswitch_18
    const-string v3, "DM-01K"

    .line 357
    .line 358
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    if-eqz v0, :cond_5

    .line 363
    .line 364
    const/16 v3, 0x1d

    .line 365
    .line 366
    goto/16 :goto_7

    .line 367
    .line 368
    :sswitch_19
    const-string v3, "BRAVIA_ATV3_4K"

    .line 369
    .line 370
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-eqz v0, :cond_5

    .line 375
    .line 376
    const/16 v3, 0x13

    .line 377
    .line 378
    goto/16 :goto_7

    .line 379
    .line 380
    :sswitch_1a
    const-string v3, "Infinix-X572"

    .line 381
    .line 382
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    if-eqz v0, :cond_5

    .line 387
    .line 388
    const/16 v3, 0x45

    .line 389
    .line 390
    goto/16 :goto_7

    .line 391
    .line 392
    :sswitch_1b
    const-string v3, "PB2-670M"

    .line 393
    .line 394
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    if-eqz v0, :cond_5

    .line 399
    .line 400
    const/16 v3, 0x64

    .line 401
    .line 402
    goto/16 :goto_7

    .line 403
    .line 404
    :sswitch_1c
    const-string v3, "santoni"

    .line 405
    .line 406
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    if-eqz v0, :cond_5

    .line 411
    .line 412
    const/16 v3, 0x75

    .line 413
    .line 414
    goto/16 :goto_7

    .line 415
    .line 416
    :sswitch_1d
    const-string v3, "iball8735_9806"

    .line 417
    .line 418
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    if-eqz v0, :cond_5

    .line 423
    .line 424
    const/16 v3, 0x44

    .line 425
    .line 426
    goto/16 :goto_7

    .line 427
    .line 428
    :sswitch_1e
    const-string v3, "CPH1715"

    .line 429
    .line 430
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    if-eqz v0, :cond_5

    .line 435
    .line 436
    const/16 v3, 0x18

    .line 437
    .line 438
    goto/16 :goto_7

    .line 439
    .line 440
    :sswitch_1f
    const-string v3, "CPH1609"

    .line 441
    .line 442
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    if-eqz v0, :cond_5

    .line 447
    .line 448
    const/16 v3, 0x17

    .line 449
    .line 450
    goto/16 :goto_7

    .line 451
    .line 452
    :sswitch_20
    const-string v3, "woods_f"

    .line 453
    .line 454
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v0

    .line 458
    if-eqz v0, :cond_5

    .line 459
    .line 460
    const/16 v3, 0x85

    .line 461
    .line 462
    goto/16 :goto_7

    .line 463
    .line 464
    :sswitch_21
    const-string v3, "htc_e56ml_dtul"

    .line 465
    .line 466
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result v0

    .line 470
    if-eqz v0, :cond_5

    .line 471
    .line 472
    const/16 v3, 0x3d

    .line 473
    .line 474
    goto/16 :goto_7

    .line 475
    .line 476
    :sswitch_22
    const-string v3, "EverStar_S"

    .line 477
    .line 478
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    if-eqz v0, :cond_5

    .line 483
    .line 484
    const/16 v3, 0x23

    .line 485
    .line 486
    goto/16 :goto_7

    .line 487
    .line 488
    :sswitch_23
    const-string v3, "hwALE-H"

    .line 489
    .line 490
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    if-eqz v0, :cond_5

    .line 495
    .line 496
    const/16 v3, 0x3e

    .line 497
    .line 498
    goto/16 :goto_7

    .line 499
    .line 500
    :sswitch_24
    const-string v3, "itel_S41"

    .line 501
    .line 502
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    if-eqz v0, :cond_5

    .line 507
    .line 508
    const/16 v3, 0x47

    .line 509
    .line 510
    goto/16 :goto_7

    .line 511
    .line 512
    :sswitch_25
    const-string v3, "LS-5017"

    .line 513
    .line 514
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    move-result v0

    .line 518
    if-eqz v0, :cond_5

    .line 519
    .line 520
    const/16 v3, 0x4e

    .line 521
    .line 522
    goto/16 :goto_7

    .line 523
    .line 524
    :sswitch_26
    const-string v3, "panell_d"

    .line 525
    .line 526
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    move-result v0

    .line 530
    if-eqz v0, :cond_5

    .line 531
    .line 532
    const/16 v3, 0x60

    .line 533
    .line 534
    goto/16 :goto_7

    .line 535
    .line 536
    :sswitch_27
    const-string v3, "j2xlteins"

    .line 537
    .line 538
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    move-result v0

    .line 542
    if-eqz v0, :cond_5

    .line 543
    .line 544
    const/16 v3, 0x48

    .line 545
    .line 546
    goto/16 :goto_7

    .line 547
    .line 548
    :sswitch_28
    const-string v3, "A7000plus"

    .line 549
    .line 550
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    move-result v0

    .line 554
    if-eqz v0, :cond_5

    .line 555
    .line 556
    const/16 v3, 0xa

    .line 557
    .line 558
    goto/16 :goto_7

    .line 559
    .line 560
    :sswitch_29
    const-string v3, "manning"

    .line 561
    .line 562
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 563
    .line 564
    .line 565
    move-result v0

    .line 566
    if-eqz v0, :cond_5

    .line 567
    .line 568
    const/16 v3, 0x51

    .line 569
    .line 570
    goto/16 :goto_7

    .line 571
    .line 572
    :sswitch_2a
    const-string v3, "GIONEE_WBL7519"

    .line 573
    .line 574
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    if-eqz v0, :cond_5

    .line 579
    .line 580
    const/16 v3, 0x3b

    .line 581
    .line 582
    goto/16 :goto_7

    .line 583
    .line 584
    :sswitch_2b
    const-string v3, "GIONEE_WBL7365"

    .line 585
    .line 586
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 587
    .line 588
    .line 589
    move-result v0

    .line 590
    if-eqz v0, :cond_5

    .line 591
    .line 592
    const/16 v3, 0x3a

    .line 593
    .line 594
    goto/16 :goto_7

    .line 595
    .line 596
    :sswitch_2c
    const-string v3, "GIONEE_WBL5708"

    .line 597
    .line 598
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    move-result v0

    .line 602
    if-eqz v0, :cond_5

    .line 603
    .line 604
    const/16 v3, 0x39

    .line 605
    .line 606
    goto/16 :goto_7

    .line 607
    .line 608
    :sswitch_2d
    const-string v3, "QM16XE_U"

    .line 609
    .line 610
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 611
    .line 612
    .line 613
    move-result v0

    .line 614
    if-eqz v0, :cond_5

    .line 615
    .line 616
    const/16 v3, 0x72

    .line 617
    .line 618
    goto/16 :goto_7

    .line 619
    .line 620
    :sswitch_2e
    const-string v3, "Pixi5-10_4G"

    .line 621
    .line 622
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    move-result v0

    .line 626
    if-eqz v0, :cond_5

    .line 627
    .line 628
    const/16 v3, 0x6a

    .line 629
    .line 630
    goto/16 :goto_7

    .line 631
    .line 632
    :sswitch_2f
    const-string v3, "TB3-850M"

    .line 633
    .line 634
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    move-result v0

    .line 638
    if-eqz v0, :cond_5

    .line 639
    .line 640
    const/16 v3, 0x7d

    .line 641
    .line 642
    goto/16 :goto_7

    .line 643
    .line 644
    :sswitch_30
    const-string v3, "TB3-850F"

    .line 645
    .line 646
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 647
    .line 648
    .line 649
    move-result v0

    .line 650
    if-eqz v0, :cond_5

    .line 651
    .line 652
    const/16 v3, 0x7c

    .line 653
    .line 654
    goto/16 :goto_7

    .line 655
    .line 656
    :sswitch_31
    const-string v3, "TB3-730X"

    .line 657
    .line 658
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    move-result v0

    .line 662
    if-eqz v0, :cond_5

    .line 663
    .line 664
    const/16 v3, 0x7b

    .line 665
    .line 666
    goto/16 :goto_7

    .line 667
    .line 668
    :sswitch_32
    const-string v3, "TB3-730F"

    .line 669
    .line 670
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 671
    .line 672
    .line 673
    move-result v0

    .line 674
    if-eqz v0, :cond_5

    .line 675
    .line 676
    const/16 v3, 0x7a

    .line 677
    .line 678
    goto/16 :goto_7

    .line 679
    .line 680
    :sswitch_33
    const-string v3, "A7020a48"

    .line 681
    .line 682
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 683
    .line 684
    .line 685
    move-result v0

    .line 686
    if-eqz v0, :cond_5

    .line 687
    .line 688
    const/16 v3, 0xc

    .line 689
    .line 690
    goto/16 :goto_7

    .line 691
    .line 692
    :sswitch_34
    const-string v3, "A7010a48"

    .line 693
    .line 694
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 695
    .line 696
    .line 697
    move-result v0

    .line 698
    if-eqz v0, :cond_5

    .line 699
    .line 700
    const/16 v3, 0xb

    .line 701
    .line 702
    goto/16 :goto_7

    .line 703
    .line 704
    :sswitch_35
    const-string v3, "griffin"

    .line 705
    .line 706
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 707
    .line 708
    .line 709
    move-result v0

    .line 710
    if-eqz v0, :cond_5

    .line 711
    .line 712
    const/16 v3, 0x3c

    .line 713
    .line 714
    goto/16 :goto_7

    .line 715
    .line 716
    :sswitch_36
    const-string v3, "marino_f"

    .line 717
    .line 718
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 719
    .line 720
    .line 721
    move-result v0

    .line 722
    if-eqz v0, :cond_5

    .line 723
    .line 724
    const/16 v3, 0x52

    .line 725
    .line 726
    goto/16 :goto_7

    .line 727
    .line 728
    :sswitch_37
    const-string v3, "CPY83_I00"

    .line 729
    .line 730
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 731
    .line 732
    .line 733
    move-result v0

    .line 734
    if-eqz v0, :cond_5

    .line 735
    .line 736
    const/16 v3, 0x19

    .line 737
    .line 738
    goto/16 :goto_7

    .line 739
    .line 740
    :sswitch_38
    const-string v3, "A2016a40"

    .line 741
    .line 742
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 743
    .line 744
    .line 745
    move-result v0

    .line 746
    if-eqz v0, :cond_5

    .line 747
    .line 748
    const/16 v3, 0x8

    .line 749
    .line 750
    goto/16 :goto_7

    .line 751
    .line 752
    :sswitch_39
    const-string v3, "le_x6"

    .line 753
    .line 754
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 755
    .line 756
    .line 757
    move-result v0

    .line 758
    if-eqz v0, :cond_5

    .line 759
    .line 760
    const/16 v3, 0x4d

    .line 761
    .line 762
    goto/16 :goto_7

    .line 763
    .line 764
    :sswitch_3a
    const-string v3, "l5460"

    .line 765
    .line 766
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 767
    .line 768
    .line 769
    move-result v0

    .line 770
    if-eqz v0, :cond_5

    .line 771
    .line 772
    const/16 v3, 0x4c

    .line 773
    .line 774
    goto/16 :goto_7

    .line 775
    .line 776
    :sswitch_3b
    const-string v3, "i9031"

    .line 777
    .line 778
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 779
    .line 780
    .line 781
    move-result v0

    .line 782
    if-eqz v0, :cond_5

    .line 783
    .line 784
    const/16 v3, 0x43

    .line 785
    .line 786
    goto/16 :goto_7

    .line 787
    .line 788
    :sswitch_3c
    const-string v3, "X3_HK"

    .line 789
    .line 790
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 791
    .line 792
    .line 793
    move-result v0

    .line 794
    if-eqz v0, :cond_5

    .line 795
    .line 796
    const/16 v3, 0x87

    .line 797
    .line 798
    goto/16 :goto_7

    .line 799
    .line 800
    :sswitch_3d
    const-string v3, "V23GB"

    .line 801
    .line 802
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 803
    .line 804
    .line 805
    move-result v0

    .line 806
    if-eqz v0, :cond_5

    .line 807
    .line 808
    const/16 v3, 0x80

    .line 809
    .line 810
    goto/16 :goto_7

    .line 811
    .line 812
    :sswitch_3e
    const-string v3, "Q4310"

    .line 813
    .line 814
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 815
    .line 816
    .line 817
    move-result v0

    .line 818
    if-eqz v0, :cond_5

    .line 819
    .line 820
    const/16 v3, 0x70

    .line 821
    .line 822
    goto/16 :goto_7

    .line 823
    .line 824
    :sswitch_3f
    const-string v3, "Q4260"

    .line 825
    .line 826
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 827
    .line 828
    .line 829
    move-result v0

    .line 830
    if-eqz v0, :cond_5

    .line 831
    .line 832
    const/16 v3, 0x6e

    .line 833
    .line 834
    goto/16 :goto_7

    .line 835
    .line 836
    :sswitch_40
    const-string v3, "PRO7S"

    .line 837
    .line 838
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 839
    .line 840
    .line 841
    move-result v0

    .line 842
    if-eqz v0, :cond_5

    .line 843
    .line 844
    const/16 v3, 0x6c

    .line 845
    .line 846
    goto/16 :goto_7

    .line 847
    .line 848
    :sswitch_41
    const-string v3, "F3311"

    .line 849
    .line 850
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 851
    .line 852
    .line 853
    move-result v0

    .line 854
    if-eqz v0, :cond_5

    .line 855
    .line 856
    const/16 v3, 0x30

    .line 857
    .line 858
    goto/16 :goto_7

    .line 859
    .line 860
    :sswitch_42
    const-string v3, "F3215"

    .line 861
    .line 862
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 863
    .line 864
    .line 865
    move-result v0

    .line 866
    if-eqz v0, :cond_5

    .line 867
    .line 868
    const/16 v3, 0x2f

    .line 869
    .line 870
    goto/16 :goto_7

    .line 871
    .line 872
    :sswitch_43
    const-string v3, "F3213"

    .line 873
    .line 874
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 875
    .line 876
    .line 877
    move-result v0

    .line 878
    if-eqz v0, :cond_5

    .line 879
    .line 880
    const/16 v3, 0x2e

    .line 881
    .line 882
    goto/16 :goto_7

    .line 883
    .line 884
    :sswitch_44
    const-string v3, "F3211"

    .line 885
    .line 886
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 887
    .line 888
    .line 889
    move-result v0

    .line 890
    if-eqz v0, :cond_5

    .line 891
    .line 892
    const/16 v3, 0x2d

    .line 893
    .line 894
    goto/16 :goto_7

    .line 895
    .line 896
    :sswitch_45
    const-string v3, "F3116"

    .line 897
    .line 898
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 899
    .line 900
    .line 901
    move-result v0

    .line 902
    if-eqz v0, :cond_5

    .line 903
    .line 904
    const/16 v3, 0x2c

    .line 905
    .line 906
    goto/16 :goto_7

    .line 907
    .line 908
    :sswitch_46
    const-string v3, "F3113"

    .line 909
    .line 910
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 911
    .line 912
    .line 913
    move-result v0

    .line 914
    if-eqz v0, :cond_5

    .line 915
    .line 916
    const/16 v3, 0x2b

    .line 917
    .line 918
    goto/16 :goto_7

    .line 919
    .line 920
    :sswitch_47
    const-string v3, "F3111"

    .line 921
    .line 922
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 923
    .line 924
    .line 925
    move-result v0

    .line 926
    if-eqz v0, :cond_5

    .line 927
    .line 928
    const/16 v3, 0x2a

    .line 929
    .line 930
    goto/16 :goto_7

    .line 931
    .line 932
    :sswitch_48
    const-string v3, "E5643"

    .line 933
    .line 934
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 935
    .line 936
    .line 937
    move-result v0

    .line 938
    if-eqz v0, :cond_5

    .line 939
    .line 940
    const/16 v3, 0x1e

    .line 941
    .line 942
    goto/16 :goto_7

    .line 943
    .line 944
    :sswitch_49
    const-string v3, "A1601"

    .line 945
    .line 946
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 947
    .line 948
    .line 949
    move-result v0

    .line 950
    if-eqz v0, :cond_5

    .line 951
    .line 952
    const/4 v3, 0x7

    .line 953
    goto/16 :goto_7

    .line 954
    .line 955
    :sswitch_4a
    const-string v3, "Aura_Note_2"

    .line 956
    .line 957
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 958
    .line 959
    .line 960
    move-result v0

    .line 961
    if-eqz v0, :cond_5

    .line 962
    .line 963
    const/16 v3, 0xf

    .line 964
    .line 965
    goto/16 :goto_7

    .line 966
    .line 967
    :sswitch_4b
    const-string v3, "602LV"

    .line 968
    .line 969
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 970
    .line 971
    .line 972
    move-result v0

    .line 973
    if-eqz v0, :cond_5

    .line 974
    .line 975
    const/4 v3, 0x4

    .line 976
    goto/16 :goto_7

    .line 977
    .line 978
    :sswitch_4c
    const-string v3, "601LV"

    .line 979
    .line 980
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 981
    .line 982
    .line 983
    move-result v0

    .line 984
    if-eqz v0, :cond_5

    .line 985
    .line 986
    const/4 v3, 0x3

    .line 987
    goto/16 :goto_7

    .line 988
    .line 989
    :sswitch_4d
    const-string v3, "MEIZU_M5"

    .line 990
    .line 991
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 992
    .line 993
    .line 994
    move-result v0

    .line 995
    if-eqz v0, :cond_5

    .line 996
    .line 997
    const/16 v3, 0x53

    .line 998
    .line 999
    goto/16 :goto_7

    .line 1000
    .line 1001
    :sswitch_4e
    const-string v3, "p212"

    .line 1002
    .line 1003
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1004
    .line 1005
    .line 1006
    move-result v0

    .line 1007
    if-eqz v0, :cond_5

    .line 1008
    .line 1009
    const/16 v3, 0x5c

    .line 1010
    .line 1011
    goto/16 :goto_7

    .line 1012
    .line 1013
    :sswitch_4f
    const-string v3, "mido"

    .line 1014
    .line 1015
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1016
    .line 1017
    .line 1018
    move-result v0

    .line 1019
    if-eqz v0, :cond_5

    .line 1020
    .line 1021
    const/16 v3, 0x55

    .line 1022
    .line 1023
    goto/16 :goto_7

    .line 1024
    .line 1025
    :sswitch_50
    const-string v3, "kate"

    .line 1026
    .line 1027
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1028
    .line 1029
    .line 1030
    move-result v0

    .line 1031
    if-eqz v0, :cond_5

    .line 1032
    .line 1033
    const/16 v3, 0x4b

    .line 1034
    .line 1035
    goto/16 :goto_7

    .line 1036
    .line 1037
    :sswitch_51
    const-string v3, "fugu"

    .line 1038
    .line 1039
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1040
    .line 1041
    .line 1042
    move-result v0

    .line 1043
    if-eqz v0, :cond_5

    .line 1044
    .line 1045
    const/16 v3, 0x32

    .line 1046
    .line 1047
    goto/16 :goto_7

    .line 1048
    .line 1049
    :sswitch_52
    const-string v3, "XE2X"

    .line 1050
    .line 1051
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1052
    .line 1053
    .line 1054
    move-result v0

    .line 1055
    if-eqz v0, :cond_5

    .line 1056
    .line 1057
    const/16 v3, 0x88

    .line 1058
    .line 1059
    goto/16 :goto_7

    .line 1060
    .line 1061
    :sswitch_53
    const-string v3, "Q427"

    .line 1062
    .line 1063
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1064
    .line 1065
    .line 1066
    move-result v0

    .line 1067
    if-eqz v0, :cond_5

    .line 1068
    .line 1069
    const/16 v3, 0x6f

    .line 1070
    .line 1071
    goto/16 :goto_7

    .line 1072
    .line 1073
    :sswitch_54
    const-string v3, "Q350"

    .line 1074
    .line 1075
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1076
    .line 1077
    .line 1078
    move-result v0

    .line 1079
    if-eqz v0, :cond_5

    .line 1080
    .line 1081
    const/16 v3, 0x6d

    .line 1082
    .line 1083
    goto/16 :goto_7

    .line 1084
    .line 1085
    :sswitch_55
    const-string v3, "P681"

    .line 1086
    .line 1087
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1088
    .line 1089
    .line 1090
    move-result v0

    .line 1091
    if-eqz v0, :cond_5

    .line 1092
    .line 1093
    const/16 v3, 0x5d

    .line 1094
    .line 1095
    goto/16 :goto_7

    .line 1096
    .line 1097
    :sswitch_56
    const-string v3, "F04J"

    .line 1098
    .line 1099
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1100
    .line 1101
    .line 1102
    move-result v0

    .line 1103
    if-eqz v0, :cond_5

    .line 1104
    .line 1105
    const/16 v3, 0x29

    .line 1106
    .line 1107
    goto/16 :goto_7

    .line 1108
    .line 1109
    :sswitch_57
    const-string v3, "F04H"

    .line 1110
    .line 1111
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1112
    .line 1113
    .line 1114
    move-result v0

    .line 1115
    if-eqz v0, :cond_5

    .line 1116
    .line 1117
    const/16 v3, 0x28

    .line 1118
    .line 1119
    goto/16 :goto_7

    .line 1120
    .line 1121
    :sswitch_58
    const-string v3, "F03H"

    .line 1122
    .line 1123
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1124
    .line 1125
    .line 1126
    move-result v0

    .line 1127
    if-eqz v0, :cond_5

    .line 1128
    .line 1129
    const/16 v3, 0x27

    .line 1130
    .line 1131
    goto/16 :goto_7

    .line 1132
    .line 1133
    :sswitch_59
    const-string v3, "F02H"

    .line 1134
    .line 1135
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1136
    .line 1137
    .line 1138
    move-result v0

    .line 1139
    if-eqz v0, :cond_5

    .line 1140
    .line 1141
    const/16 v3, 0x26

    .line 1142
    .line 1143
    goto/16 :goto_7

    .line 1144
    .line 1145
    :sswitch_5a
    const-string v3, "F01J"

    .line 1146
    .line 1147
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1148
    .line 1149
    .line 1150
    move-result v0

    .line 1151
    if-eqz v0, :cond_5

    .line 1152
    .line 1153
    const/16 v3, 0x25

    .line 1154
    .line 1155
    goto/16 :goto_7

    .line 1156
    .line 1157
    :sswitch_5b
    const-string v3, "F01H"

    .line 1158
    .line 1159
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1160
    .line 1161
    .line 1162
    move-result v0

    .line 1163
    if-eqz v0, :cond_5

    .line 1164
    .line 1165
    const/16 v3, 0x24

    .line 1166
    .line 1167
    goto/16 :goto_7

    .line 1168
    .line 1169
    :sswitch_5c
    const-string v3, "1714"

    .line 1170
    .line 1171
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1172
    .line 1173
    .line 1174
    move-result v0

    .line 1175
    if-eqz v0, :cond_5

    .line 1176
    .line 1177
    const/4 v3, 0x2

    .line 1178
    goto/16 :goto_7

    .line 1179
    .line 1180
    :sswitch_5d
    const-string v3, "1713"

    .line 1181
    .line 1182
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1183
    .line 1184
    .line 1185
    move-result v0

    .line 1186
    if-eqz v0, :cond_5

    .line 1187
    .line 1188
    const/4 v3, 0x1

    .line 1189
    goto/16 :goto_7

    .line 1190
    .line 1191
    :sswitch_5e
    const-string v3, "1601"

    .line 1192
    .line 1193
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1194
    .line 1195
    .line 1196
    move-result v0

    .line 1197
    if-eqz v0, :cond_5

    .line 1198
    .line 1199
    const/4 v3, 0x0

    .line 1200
    goto/16 :goto_7

    .line 1201
    .line 1202
    :sswitch_5f
    const-string v3, "flo"

    .line 1203
    .line 1204
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1205
    .line 1206
    .line 1207
    move-result v0

    .line 1208
    if-eqz v0, :cond_5

    .line 1209
    .line 1210
    const/16 v3, 0x31

    .line 1211
    .line 1212
    goto/16 :goto_7

    .line 1213
    .line 1214
    :sswitch_60
    const-string v5, "deb"

    .line 1215
    .line 1216
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1217
    .line 1218
    .line 1219
    move-result v0

    .line 1220
    if-eqz v0, :cond_5

    .line 1221
    .line 1222
    goto/16 :goto_7

    .line 1223
    .line 1224
    :sswitch_61
    const-string v3, "cv3"

    .line 1225
    .line 1226
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1227
    .line 1228
    .line 1229
    move-result v0

    .line 1230
    if-eqz v0, :cond_5

    .line 1231
    .line 1232
    const/16 v3, 0x1b

    .line 1233
    .line 1234
    goto/16 :goto_7

    .line 1235
    .line 1236
    :sswitch_62
    const-string v3, "cv1"

    .line 1237
    .line 1238
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1239
    .line 1240
    .line 1241
    move-result v0

    .line 1242
    if-eqz v0, :cond_5

    .line 1243
    .line 1244
    const/16 v3, 0x1a

    .line 1245
    .line 1246
    goto/16 :goto_7

    .line 1247
    .line 1248
    :sswitch_63
    const-string v3, "Z80"

    .line 1249
    .line 1250
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1251
    .line 1252
    .line 1253
    move-result v0

    .line 1254
    if-eqz v0, :cond_5

    .line 1255
    .line 1256
    const/16 v3, 0x8b

    .line 1257
    .line 1258
    goto/16 :goto_7

    .line 1259
    .line 1260
    :sswitch_64
    const-string v3, "QX1"

    .line 1261
    .line 1262
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1263
    .line 1264
    .line 1265
    move-result v0

    .line 1266
    if-eqz v0, :cond_5

    .line 1267
    .line 1268
    const/16 v3, 0x73

    .line 1269
    .line 1270
    goto/16 :goto_7

    .line 1271
    .line 1272
    :sswitch_65
    const-string v3, "PLE"

    .line 1273
    .line 1274
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1275
    .line 1276
    .line 1277
    move-result v0

    .line 1278
    if-eqz v0, :cond_5

    .line 1279
    .line 1280
    const/16 v3, 0x6b

    .line 1281
    .line 1282
    goto/16 :goto_7

    .line 1283
    .line 1284
    :sswitch_66
    const-string v3, "P85"

    .line 1285
    .line 1286
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1287
    .line 1288
    .line 1289
    move-result v0

    .line 1290
    if-eqz v0, :cond_5

    .line 1291
    .line 1292
    const/16 v3, 0x5e

    .line 1293
    .line 1294
    goto/16 :goto_7

    .line 1295
    .line 1296
    :sswitch_67
    const-string v3, "MX6"

    .line 1297
    .line 1298
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1299
    .line 1300
    .line 1301
    move-result v0

    .line 1302
    if-eqz v0, :cond_5

    .line 1303
    .line 1304
    const/16 v3, 0x56

    .line 1305
    .line 1306
    goto/16 :goto_7

    .line 1307
    .line 1308
    :sswitch_68
    const-string v3, "M5c"

    .line 1309
    .line 1310
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1311
    .line 1312
    .line 1313
    move-result v0

    .line 1314
    if-eqz v0, :cond_5

    .line 1315
    .line 1316
    const/16 v3, 0x50

    .line 1317
    .line 1318
    goto/16 :goto_7

    .line 1319
    .line 1320
    :sswitch_69
    const-string v3, "M04"

    .line 1321
    .line 1322
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1323
    .line 1324
    .line 1325
    move-result v0

    .line 1326
    if-eqz v0, :cond_5

    .line 1327
    .line 1328
    const/16 v3, 0x4f

    .line 1329
    .line 1330
    goto/16 :goto_7

    .line 1331
    .line 1332
    :sswitch_6a
    const-string v3, "JGZ"

    .line 1333
    .line 1334
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1335
    .line 1336
    .line 1337
    move-result v0

    .line 1338
    if-eqz v0, :cond_5

    .line 1339
    .line 1340
    const/16 v3, 0x49

    .line 1341
    .line 1342
    goto/16 :goto_7

    .line 1343
    .line 1344
    :sswitch_6b
    const-string v3, "mh"

    .line 1345
    .line 1346
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1347
    .line 1348
    .line 1349
    move-result v0

    .line 1350
    if-eqz v0, :cond_5

    .line 1351
    .line 1352
    const/16 v3, 0x54

    .line 1353
    .line 1354
    goto/16 :goto_7

    .line 1355
    .line 1356
    :sswitch_6c
    const-string v3, "b5"

    .line 1357
    .line 1358
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1359
    .line 1360
    .line 1361
    move-result v0

    .line 1362
    if-eqz v0, :cond_5

    .line 1363
    .line 1364
    const/16 v3, 0x10

    .line 1365
    .line 1366
    goto/16 :goto_7

    .line 1367
    .line 1368
    :sswitch_6d
    const-string v3, "V5"

    .line 1369
    .line 1370
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1371
    .line 1372
    .line 1373
    move-result v0

    .line 1374
    if-eqz v0, :cond_5

    .line 1375
    .line 1376
    const/16 v3, 0x81

    .line 1377
    .line 1378
    goto/16 :goto_7

    .line 1379
    .line 1380
    :sswitch_6e
    const-string v3, "V1"

    .line 1381
    .line 1382
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1383
    .line 1384
    .line 1385
    move-result v0

    .line 1386
    if-eqz v0, :cond_5

    .line 1387
    .line 1388
    const/16 v3, 0x7f

    .line 1389
    .line 1390
    goto/16 :goto_7

    .line 1391
    .line 1392
    :sswitch_6f
    const-string v3, "Q5"

    .line 1393
    .line 1394
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1395
    .line 1396
    .line 1397
    move-result v0

    .line 1398
    if-eqz v0, :cond_5

    .line 1399
    .line 1400
    const/16 v3, 0x71

    .line 1401
    .line 1402
    goto/16 :goto_7

    .line 1403
    .line 1404
    :sswitch_70
    const-string v3, "C1"

    .line 1405
    .line 1406
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1407
    .line 1408
    .line 1409
    move-result v0

    .line 1410
    if-eqz v0, :cond_5

    .line 1411
    .line 1412
    const/16 v3, 0x14

    .line 1413
    .line 1414
    goto/16 :goto_7

    .line 1415
    .line 1416
    :sswitch_71
    const-string v3, "woods_fn"

    .line 1417
    .line 1418
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1419
    .line 1420
    .line 1421
    move-result v0

    .line 1422
    if-eqz v0, :cond_5

    .line 1423
    .line 1424
    const/16 v3, 0x86

    .line 1425
    .line 1426
    goto/16 :goto_7

    .line 1427
    .line 1428
    :sswitch_72
    const-string v3, "ELUGA_A3_Pro"

    .line 1429
    .line 1430
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1431
    .line 1432
    .line 1433
    move-result v0

    .line 1434
    if-eqz v0, :cond_5

    .line 1435
    .line 1436
    const/16 v3, 0x1f

    .line 1437
    .line 1438
    goto/16 :goto_7

    .line 1439
    .line 1440
    :sswitch_73
    const-string v3, "Z12_PRO"

    .line 1441
    .line 1442
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1443
    .line 1444
    .line 1445
    move-result v0

    .line 1446
    if-eqz v0, :cond_5

    .line 1447
    .line 1448
    const/16 v3, 0x8a

    .line 1449
    .line 1450
    goto/16 :goto_7

    .line 1451
    .line 1452
    :sswitch_74
    const-string v3, "BLACK-1X"

    .line 1453
    .line 1454
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1455
    .line 1456
    .line 1457
    move-result v0

    .line 1458
    if-eqz v0, :cond_5

    .line 1459
    .line 1460
    const/16 v3, 0x11

    .line 1461
    .line 1462
    goto/16 :goto_7

    .line 1463
    .line 1464
    :sswitch_75
    const-string v3, "taido_row"

    .line 1465
    .line 1466
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1467
    .line 1468
    .line 1469
    move-result v0

    .line 1470
    if-eqz v0, :cond_5

    .line 1471
    .line 1472
    const/16 v3, 0x79

    .line 1473
    .line 1474
    goto/16 :goto_7

    .line 1475
    .line 1476
    :sswitch_76
    const-string v3, "Pixi4-7_3G"

    .line 1477
    .line 1478
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1479
    .line 1480
    .line 1481
    move-result v0

    .line 1482
    if-eqz v0, :cond_5

    .line 1483
    .line 1484
    const/16 v3, 0x69

    .line 1485
    .line 1486
    goto/16 :goto_7

    .line 1487
    .line 1488
    :sswitch_77
    const-string v3, "GIONEE_GBL7360"

    .line 1489
    .line 1490
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1491
    .line 1492
    .line 1493
    move-result v0

    .line 1494
    if-eqz v0, :cond_5

    .line 1495
    .line 1496
    const/16 v3, 0x35

    .line 1497
    .line 1498
    goto/16 :goto_7

    .line 1499
    .line 1500
    :sswitch_78
    const-string v3, "GiONEE_CBL7513"

    .line 1501
    .line 1502
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1503
    .line 1504
    .line 1505
    move-result v0

    .line 1506
    if-eqz v0, :cond_5

    .line 1507
    .line 1508
    const/16 v3, 0x33

    .line 1509
    .line 1510
    goto/16 :goto_7

    .line 1511
    .line 1512
    :sswitch_79
    const-string v3, "OnePlus5T"

    .line 1513
    .line 1514
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1515
    .line 1516
    .line 1517
    move-result v0

    .line 1518
    if-eqz v0, :cond_5

    .line 1519
    .line 1520
    const/16 v3, 0x5b

    .line 1521
    .line 1522
    goto/16 :goto_7

    .line 1523
    .line 1524
    :sswitch_7a
    const-string v3, "whyred"

    .line 1525
    .line 1526
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1527
    .line 1528
    .line 1529
    move-result v0

    .line 1530
    if-eqz v0, :cond_5

    .line 1531
    .line 1532
    const/16 v3, 0x84

    .line 1533
    .line 1534
    goto/16 :goto_7

    .line 1535
    .line 1536
    :sswitch_7b
    const-string v3, "watson"

    .line 1537
    .line 1538
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1539
    .line 1540
    .line 1541
    move-result v0

    .line 1542
    if-eqz v0, :cond_5

    .line 1543
    .line 1544
    const/16 v3, 0x83

    .line 1545
    .line 1546
    goto/16 :goto_7

    .line 1547
    .line 1548
    :sswitch_7c
    const-string v3, "SVP-DTV15"

    .line 1549
    .line 1550
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1551
    .line 1552
    .line 1553
    move-result v0

    .line 1554
    if-eqz v0, :cond_5

    .line 1555
    .line 1556
    const/16 v3, 0x77

    .line 1557
    .line 1558
    goto/16 :goto_7

    .line 1559
    .line 1560
    :sswitch_7d
    const-string v3, "A7000-a"

    .line 1561
    .line 1562
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1563
    .line 1564
    .line 1565
    move-result v0

    .line 1566
    if-eqz v0, :cond_5

    .line 1567
    .line 1568
    const/16 v3, 0x9

    .line 1569
    .line 1570
    goto/16 :goto_7

    .line 1571
    .line 1572
    :sswitch_7e
    const-string v3, "nicklaus_f"

    .line 1573
    .line 1574
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1575
    .line 1576
    .line 1577
    move-result v0

    .line 1578
    if-eqz v0, :cond_5

    .line 1579
    .line 1580
    const/16 v3, 0x58

    .line 1581
    .line 1582
    goto/16 :goto_7

    .line 1583
    .line 1584
    :sswitch_7f
    const-string v3, "tcl_eu"

    .line 1585
    .line 1586
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1587
    .line 1588
    .line 1589
    move-result v0

    .line 1590
    if-eqz v0, :cond_5

    .line 1591
    .line 1592
    const/16 v3, 0x7e

    .line 1593
    .line 1594
    goto/16 :goto_7

    .line 1595
    .line 1596
    :sswitch_80
    const-string v3, "ELUGA_Ray_X"

    .line 1597
    .line 1598
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1599
    .line 1600
    .line 1601
    move-result v0

    .line 1602
    if-eqz v0, :cond_5

    .line 1603
    .line 1604
    const/16 v3, 0x22

    .line 1605
    .line 1606
    goto/16 :goto_7

    .line 1607
    .line 1608
    :sswitch_81
    const-string v3, "s905x018"

    .line 1609
    .line 1610
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1611
    .line 1612
    .line 1613
    move-result v0

    .line 1614
    if-eqz v0, :cond_5

    .line 1615
    .line 1616
    const/16 v3, 0x78

    .line 1617
    .line 1618
    goto/16 :goto_7

    .line 1619
    .line 1620
    :sswitch_82
    const-string v3, "A10-70L"

    .line 1621
    .line 1622
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1623
    .line 1624
    .line 1625
    move-result v0

    .line 1626
    if-eqz v0, :cond_5

    .line 1627
    .line 1628
    const/4 v3, 0x6

    .line 1629
    goto/16 :goto_7

    .line 1630
    .line 1631
    :sswitch_83
    const-string v3, "A10-70F"

    .line 1632
    .line 1633
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1634
    .line 1635
    .line 1636
    move-result v0

    .line 1637
    if-eqz v0, :cond_5

    .line 1638
    .line 1639
    const/4 v3, 0x5

    .line 1640
    goto/16 :goto_7

    .line 1641
    .line 1642
    :sswitch_84
    const-string v3, "namath"

    .line 1643
    .line 1644
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1645
    .line 1646
    .line 1647
    move-result v0

    .line 1648
    if-eqz v0, :cond_5

    .line 1649
    .line 1650
    const/16 v3, 0x57

    .line 1651
    .line 1652
    goto/16 :goto_7

    .line 1653
    .line 1654
    :sswitch_85
    const-string v3, "Slate_Pro"

    .line 1655
    .line 1656
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1657
    .line 1658
    .line 1659
    move-result v0

    .line 1660
    if-eqz v0, :cond_5

    .line 1661
    .line 1662
    const/16 v3, 0x76

    .line 1663
    .line 1664
    goto/16 :goto_7

    .line 1665
    .line 1666
    :sswitch_86
    const-string v3, "iris60"

    .line 1667
    .line 1668
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1669
    .line 1670
    .line 1671
    move-result v0

    .line 1672
    if-eqz v0, :cond_5

    .line 1673
    .line 1674
    const/16 v3, 0x46

    .line 1675
    .line 1676
    goto/16 :goto_7

    .line 1677
    .line 1678
    :sswitch_87
    const-string v3, "BRAVIA_ATV2"

    .line 1679
    .line 1680
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1681
    .line 1682
    .line 1683
    move-result v0

    .line 1684
    if-eqz v0, :cond_5

    .line 1685
    .line 1686
    const/16 v3, 0x12

    .line 1687
    .line 1688
    goto/16 :goto_7

    .line 1689
    .line 1690
    :sswitch_88
    const-string v3, "GiONEE_GBL7319"

    .line 1691
    .line 1692
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1693
    .line 1694
    .line 1695
    move-result v0

    .line 1696
    if-eqz v0, :cond_5

    .line 1697
    .line 1698
    const/16 v3, 0x34

    .line 1699
    .line 1700
    goto/16 :goto_7

    .line 1701
    .line 1702
    :sswitch_89
    const-string v3, "panell_dt"

    .line 1703
    .line 1704
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1705
    .line 1706
    .line 1707
    move-result v0

    .line 1708
    if-eqz v0, :cond_5

    .line 1709
    .line 1710
    const/16 v3, 0x63

    .line 1711
    .line 1712
    goto/16 :goto_7

    .line 1713
    .line 1714
    :sswitch_8a
    const-string v3, "panell_ds"

    .line 1715
    .line 1716
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1717
    .line 1718
    .line 1719
    move-result v0

    .line 1720
    if-eqz v0, :cond_5

    .line 1721
    .line 1722
    const/16 v3, 0x62

    .line 1723
    .line 1724
    goto/16 :goto_7

    .line 1725
    .line 1726
    :sswitch_8b
    const-string v3, "panell_dl"

    .line 1727
    .line 1728
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1729
    .line 1730
    .line 1731
    move-result v0

    .line 1732
    if-eqz v0, :cond_5

    .line 1733
    .line 1734
    const/16 v3, 0x61

    .line 1735
    .line 1736
    goto/16 :goto_7

    .line 1737
    .line 1738
    :sswitch_8c
    const-string v3, "vernee_M5"

    .line 1739
    .line 1740
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1741
    .line 1742
    .line 1743
    move-result v0

    .line 1744
    if-eqz v0, :cond_5

    .line 1745
    .line 1746
    const/16 v3, 0x82

    .line 1747
    .line 1748
    goto/16 :goto_7

    .line 1749
    .line 1750
    :sswitch_8d
    const-string v3, "pacificrim"

    .line 1751
    .line 1752
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1753
    .line 1754
    .line 1755
    move-result v0

    .line 1756
    if-eqz v0, :cond_5

    .line 1757
    .line 1758
    const/16 v3, 0x5f

    .line 1759
    .line 1760
    goto/16 :goto_7

    .line 1761
    .line 1762
    :sswitch_8e
    const-string v3, "Phantom6"

    .line 1763
    .line 1764
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1765
    .line 1766
    .line 1767
    move-result v0

    .line 1768
    if-eqz v0, :cond_5

    .line 1769
    .line 1770
    const/16 v3, 0x68

    .line 1771
    .line 1772
    goto/16 :goto_7

    .line 1773
    .line 1774
    :sswitch_8f
    const-string v3, "ComioS1"

    .line 1775
    .line 1776
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1777
    .line 1778
    .line 1779
    move-result v0

    .line 1780
    if-eqz v0, :cond_5

    .line 1781
    .line 1782
    const/16 v3, 0x15

    .line 1783
    .line 1784
    goto/16 :goto_7

    .line 1785
    .line 1786
    :sswitch_90
    const-string v3, "XT1663"

    .line 1787
    .line 1788
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1789
    .line 1790
    .line 1791
    move-result v0

    .line 1792
    if-eqz v0, :cond_5

    .line 1793
    .line 1794
    const/16 v3, 0x89

    .line 1795
    .line 1796
    goto/16 :goto_7

    .line 1797
    .line 1798
    :sswitch_91
    const-string v3, "RAIJIN"

    .line 1799
    .line 1800
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1801
    .line 1802
    .line 1803
    move-result v0

    .line 1804
    if-eqz v0, :cond_5

    .line 1805
    .line 1806
    const/16 v3, 0x74

    .line 1807
    .line 1808
    goto/16 :goto_7

    .line 1809
    .line 1810
    :sswitch_92
    const-string v3, "AquaPowerM"

    .line 1811
    .line 1812
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1813
    .line 1814
    .line 1815
    move-result v0

    .line 1816
    if-eqz v0, :cond_5

    .line 1817
    .line 1818
    const/16 v3, 0xd

    .line 1819
    .line 1820
    goto/16 :goto_7

    .line 1821
    .line 1822
    :sswitch_93
    const-string v3, "PGN611"

    .line 1823
    .line 1824
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1825
    .line 1826
    .line 1827
    move-result v0

    .line 1828
    if-eqz v0, :cond_5

    .line 1829
    .line 1830
    const/16 v3, 0x67

    .line 1831
    .line 1832
    goto/16 :goto_7

    .line 1833
    .line 1834
    :sswitch_94
    const-string v3, "PGN610"

    .line 1835
    .line 1836
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1837
    .line 1838
    .line 1839
    move-result v0

    .line 1840
    if-eqz v0, :cond_5

    .line 1841
    .line 1842
    const/16 v3, 0x66

    .line 1843
    .line 1844
    goto :goto_7

    .line 1845
    :sswitch_95
    const-string v3, "PGN528"

    .line 1846
    .line 1847
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1848
    .line 1849
    .line 1850
    move-result v0

    .line 1851
    if-eqz v0, :cond_5

    .line 1852
    .line 1853
    const/16 v3, 0x65

    .line 1854
    .line 1855
    goto :goto_7

    .line 1856
    :sswitch_96
    const-string v3, "NX573J"

    .line 1857
    .line 1858
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1859
    .line 1860
    .line 1861
    move-result v0

    .line 1862
    if-eqz v0, :cond_5

    .line 1863
    .line 1864
    const/16 v3, 0x5a

    .line 1865
    .line 1866
    goto :goto_7

    .line 1867
    :sswitch_97
    const-string v3, "NX541J"

    .line 1868
    .line 1869
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1870
    .line 1871
    .line 1872
    move-result v0

    .line 1873
    if-eqz v0, :cond_5

    .line 1874
    .line 1875
    const/16 v3, 0x59

    .line 1876
    .line 1877
    goto :goto_7

    .line 1878
    :sswitch_98
    const-string v3, "CP8676_I02"

    .line 1879
    .line 1880
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1881
    .line 1882
    .line 1883
    move-result v0

    .line 1884
    if-eqz v0, :cond_5

    .line 1885
    .line 1886
    const/16 v3, 0x16

    .line 1887
    .line 1888
    goto :goto_7

    .line 1889
    :sswitch_99
    const-string v3, "K50a40"

    .line 1890
    .line 1891
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1892
    .line 1893
    .line 1894
    move-result v0

    .line 1895
    if-eqz v0, :cond_5

    .line 1896
    .line 1897
    const/16 v3, 0x4a

    .line 1898
    .line 1899
    goto :goto_7

    .line 1900
    :sswitch_9a
    const-string v3, "GIONEE_SWW1631"

    .line 1901
    .line 1902
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1903
    .line 1904
    .line 1905
    move-result v0

    .line 1906
    if-eqz v0, :cond_5

    .line 1907
    .line 1908
    const/16 v3, 0x38

    .line 1909
    .line 1910
    goto :goto_7

    .line 1911
    :sswitch_9b
    const-string v3, "GIONEE_SWW1627"

    .line 1912
    .line 1913
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1914
    .line 1915
    .line 1916
    move-result v0

    .line 1917
    if-eqz v0, :cond_5

    .line 1918
    .line 1919
    const/16 v3, 0x37

    .line 1920
    .line 1921
    goto :goto_7

    .line 1922
    :sswitch_9c
    const-string v3, "GIONEE_SWW1609"

    .line 1923
    .line 1924
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1925
    .line 1926
    .line 1927
    move-result v0

    .line 1928
    if-eqz v0, :cond_5

    .line 1929
    .line 1930
    const/16 v3, 0x36

    .line 1931
    .line 1932
    goto :goto_7

    .line 1933
    :cond_5
    :goto_6
    const/4 v3, -0x1

    .line 1934
    :goto_7
    packed-switch v3, :pswitch_data_2

    .line 1935
    .line 1936
    .line 1937
    :try_start_3
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    .line 1938
    .line 1939
    .line 1940
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1941
    const v3, -0x236fe21d

    .line 1942
    .line 1943
    .line 1944
    if-eq v0, v3, :cond_6

    .line 1945
    .line 1946
    goto :goto_8

    .line 1947
    :cond_6
    const-string v0, "JSN-L21"

    .line 1948
    .line 1949
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1950
    .line 1951
    .line 1952
    move-result v0

    .line 1953
    if-eqz v0, :cond_7

    .line 1954
    .line 1955
    goto/16 :goto_2

    .line 1956
    .line 1957
    :cond_7
    :goto_8
    :try_start_4
    sput-boolean v1, Lcom/google/android/gms/internal/ads/k;->g1:Z

    .line 1958
    .line 1959
    sput-boolean v11, Lcom/google/android/gms/internal/ads/k;->f1:Z

    .line 1960
    .line 1961
    :cond_8
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1962
    sget-boolean v0, Lcom/google/android/gms/internal/ads/k;->g1:Z

    .line 1963
    .line 1964
    return v0

    .line 1965
    :goto_9
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1966
    throw v0

    .line 1967
    :sswitch_data_0
    .sparse-switch
        -0x4fd0ea5f -> :sswitch_7
        -0x48b8f57f -> :sswitch_6
        -0x48b8bd30 -> :sswitch_5
        -0x3c588c8a -> :sswitch_4
        -0x2d5172e2 -> :sswitch_3
        -0x3de1850 -> :sswitch_2
        0x341e81 -> :sswitch_1
        0x31316ffa -> :sswitch_0
    .end sparse-switch

    .line 1968
    .line 1969
    .line 1970
    .line 1971
    .line 1972
    .line 1973
    .line 1974
    .line 1975
    .line 1976
    .line 1977
    .line 1978
    .line 1979
    .line 1980
    .line 1981
    .line 1982
    .line 1983
    .line 1984
    .line 1985
    .line 1986
    .line 1987
    .line 1988
    .line 1989
    .line 1990
    .line 1991
    .line 1992
    .line 1993
    .line 1994
    .line 1995
    .line 1996
    .line 1997
    .line 1998
    .line 1999
    .line 2000
    .line 2001
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2002
    .line 2003
    .line 2004
    .line 2005
    .line 2006
    .line 2007
    .line 2008
    .line 2009
    .line 2010
    .line 2011
    .line 2012
    .line 2013
    .line 2014
    .line 2015
    .line 2016
    .line 2017
    .line 2018
    .line 2019
    .line 2020
    .line 2021
    :sswitch_data_1
    .sparse-switch
        -0x14d76e6c -> :sswitch_10
        -0x132295cd -> :sswitch_f
        0x1e9d52 -> :sswitch_e
        0x1e9d5f -> :sswitch_d
        0x1e9d63 -> :sswitch_c
        0x6a6b6031 -> :sswitch_b
        0x6a6b6034 -> :sswitch_a
        0x6b2deee6 -> :sswitch_9
        0x7e53ab34 -> :sswitch_8
    .end sparse-switch

    .line 2022
    .line 2023
    .line 2024
    .line 2025
    .line 2026
    .line 2027
    .line 2028
    .line 2029
    .line 2030
    .line 2031
    .line 2032
    .line 2033
    .line 2034
    .line 2035
    .line 2036
    .line 2037
    .line 2038
    .line 2039
    .line 2040
    .line 2041
    .line 2042
    .line 2043
    .line 2044
    .line 2045
    .line 2046
    .line 2047
    .line 2048
    .line 2049
    .line 2050
    .line 2051
    .line 2052
    .line 2053
    .line 2054
    .line 2055
    .line 2056
    .line 2057
    .line 2058
    .line 2059
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2060
    .line 2061
    .line 2062
    .line 2063
    .line 2064
    :sswitch_data_2
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_9c
        -0x7fd6c381 -> :sswitch_9b
        -0x7fd6c368 -> :sswitch_9a
        -0x7d026749 -> :sswitch_99
        -0x78929d6a -> :sswitch_98
        -0x75f50a1e -> :sswitch_97
        -0x75f4fe9d -> :sswitch_96
        -0x736f875c -> :sswitch_95
        -0x736f83c2 -> :sswitch_94
        -0x736f83c1 -> :sswitch_93
        -0x7327ce1c -> :sswitch_92
        -0x705c574b -> :sswitch_91
        -0x651ebb62 -> :sswitch_90
        -0x6423293b -> :sswitch_8f
        -0x604f5117 -> :sswitch_8e
        -0x5f691e13 -> :sswitch_8d
        -0x5ca40cc4 -> :sswitch_8c
        -0x58520ec1 -> :sswitch_8b
        -0x58520eba -> :sswitch_8a
        -0x58520eb9 -> :sswitch_89
        -0x4eaed329 -> :sswitch_88
        -0x4892fb4f -> :sswitch_87
        -0x465b3df3 -> :sswitch_86
        -0x43e6c939 -> :sswitch_85
        -0x3ec0fcc5 -> :sswitch_84
        -0x3b33cca0 -> :sswitch_83
        -0x3b33cc9a -> :sswitch_82
        -0x398ae3f6 -> :sswitch_81
        -0x391f0fb4 -> :sswitch_80
        -0x346837ae -> :sswitch_7f
        -0x323788e3 -> :sswitch_7e
        -0x30f57652 -> :sswitch_7d
        -0x2f88a116 -> :sswitch_7c
        -0x2f61ed98 -> :sswitch_7b
        -0x2efd0837 -> :sswitch_7a
        -0x2e9e9441 -> :sswitch_79
        -0x2247b8b1 -> :sswitch_78
        -0x1f0fa2b7 -> :sswitch_77
        -0x19af3b41 -> :sswitch_76
        -0x114fad3e -> :sswitch_75
        -0x10dae90b -> :sswitch_74
        -0x1084b7b7 -> :sswitch_73
        -0xa5988e9 -> :sswitch_72
        -0x35f9fbf -> :sswitch_71
        0x84e -> :sswitch_70
        0xa04 -> :sswitch_6f
        0xa9b -> :sswitch_6e
        0xa9f -> :sswitch_6d
        0xc13 -> :sswitch_6c
        0xd9b -> :sswitch_6b
        0x11ebd -> :sswitch_6a
        0x12711 -> :sswitch_69
        0x127db -> :sswitch_68
        0x12beb -> :sswitch_67
        0x1334d -> :sswitch_66
        0x135c9 -> :sswitch_65
        0x13aea -> :sswitch_64
        0x158d2 -> :sswitch_63
        0x1821e -> :sswitch_62
        0x18220 -> :sswitch_61
        0x18401 -> :sswitch_60
        0x18c69 -> :sswitch_5f
        0x1716e6 -> :sswitch_5e
        0x171ac8 -> :sswitch_5d
        0x171ac9 -> :sswitch_5c
        0x208c61 -> :sswitch_5b
        0x208c63 -> :sswitch_5a
        0x208c80 -> :sswitch_59
        0x208c9f -> :sswitch_58
        0x208cbe -> :sswitch_57
        0x208cc0 -> :sswitch_56
        0x252f5f -> :sswitch_55
        0x25981d -> :sswitch_54
        0x259b88 -> :sswitch_53
        0x290a13 -> :sswitch_52
        0x3021fd -> :sswitch_51
        0x321e47 -> :sswitch_50
        0x332327 -> :sswitch_4f
        0x33ab63 -> :sswitch_4e
        0x27691fb -> :sswitch_4d
        0x30f8881 -> :sswitch_4c
        0x30f8c42 -> :sswitch_4b
        0x349f581 -> :sswitch_4a
        0x3ab0ea7 -> :sswitch_49
        0x3e53ea5 -> :sswitch_48
        0x3f25a44 -> :sswitch_47
        0x3f25a46 -> :sswitch_46
        0x3f25a49 -> :sswitch_45
        0x3f25e05 -> :sswitch_44
        0x3f25e07 -> :sswitch_43
        0x3f25e09 -> :sswitch_42
        0x3f261c6 -> :sswitch_41
        0x48dce49 -> :sswitch_40
        0x48dd589 -> :sswitch_3f
        0x48dd8af -> :sswitch_3e
        0x4d36832 -> :sswitch_3d
        0x4f0b0e7 -> :sswitch_3c
        0x5e2479e -> :sswitch_3b
        0x60acc05 -> :sswitch_3a
        0x6214744 -> :sswitch_39
        0x9d91379 -> :sswitch_38
        0xadc0551 -> :sswitch_37
        0xea056b3 -> :sswitch_36
        0x1121dbc3 -> :sswitch_35
        0x1255818c -> :sswitch_34
        0x1263990d -> :sswitch_33
        0x12d90f3a -> :sswitch_32
        0x12d90f4c -> :sswitch_31
        0x12d98b1b -> :sswitch_30
        0x12d98b22 -> :sswitch_2f
        0x1844c711 -> :sswitch_2e
        0x1e3e8044 -> :sswitch_2d
        0x2f5336ed -> :sswitch_2c
        0x2f54115e -> :sswitch_2b
        0x2f541849 -> :sswitch_2a
        0x31cf010e -> :sswitch_29
        0x36ad82f4 -> :sswitch_28
        0x391a0b61 -> :sswitch_27
        0x3f3728cd -> :sswitch_26
        0x448ec687 -> :sswitch_25
        0x46260f63 -> :sswitch_24
        0x4c505106 -> :sswitch_23
        0x4de67084 -> :sswitch_22
        0x506ac5a9 -> :sswitch_21
        0x5abad9cd -> :sswitch_20
        0x64d2e6e9 -> :sswitch_1f
        0x64d2eac5 -> :sswitch_1e
        0x65e4085b -> :sswitch_1d
        0x6f373556 -> :sswitch_1c
        0x719f1dcb -> :sswitch_1b
        0x75d9a0f0 -> :sswitch_1a
        0x7796d144 -> :sswitch_19
        0x785bcb26 -> :sswitch_18
        0x78fc0e50 -> :sswitch_17
        0x790521fb -> :sswitch_16
        0x7933207f -> :sswitch_15
        0x7a05a409 -> :sswitch_14
        0x7a0696bd -> :sswitch_13
        0x7a16dfe7 -> :sswitch_12
        0x7a1f0e95 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static r0(Landroid/content/Context;Lcom/google/android/gms/internal/ads/WM;Lcom/google/android/gms/internal/ads/p0;ZZ)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    sget v1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 9
    .line 10
    const/16 v2, 0x1a

    .line 11
    .line 12
    if-lt v1, v2, :cond_2

    .line 13
    .line 14
    const-string v1, "video/dolby-vision"

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j;->a(Landroid/content/Context;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_2

    .line 27
    .line 28
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/cN;->b(Lcom/google/android/gms/internal/ads/p0;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-nez p0, :cond_1

    .line 33
    .line 34
    sget-object p0, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move-object v0, p1

    .line 38
    check-cast v0, Lcom/google/android/gms/internal/ads/y1;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {p0, p3, p4}, Lcom/google/android/gms/internal/ads/cN;->c(Ljava/lang/String;ZZ)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_2
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/cN;->d(Lcom/google/android/gms/internal/ads/WM;Lcom/google/android/gms/internal/ads/p0;ZZ)Lcom/google/android/gms/internal/ads/PA;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method

.method public static s0(Lcom/google/android/gms/internal/ads/PM;Lcom/google/android/gms/internal/ads/p0;)I
    .locals 10

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/p0;->s:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_c

    .line 5
    .line 6
    iget v2, p1, Lcom/google/android/gms/internal/ads/p0;->t:I

    .line 7
    .line 8
    if-ne v2, v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_4

    .line 11
    .line 12
    :cond_0
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string v4, "video/dolby-vision"

    .line 18
    .line 19
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const-string v5, "video/hevc"

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    const/4 v7, 0x2

    .line 27
    const-string v8, "video/avc"

    .line 28
    .line 29
    if-eqz v4, :cond_3

    .line 30
    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cN;->a(Lcom/google/android/gms/internal/ads/p0;)Landroid/util/Pair;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    const/16 v3, 0x200

    .line 46
    .line 47
    if-eq p1, v3, :cond_1

    .line 48
    .line 49
    if-eq p1, v6, :cond_1

    .line 50
    .line 51
    if-ne p1, v7, :cond_2

    .line 52
    .line 53
    :cond_1
    move-object v3, v8

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    move-object v3, v5

    .line 56
    :cond_3
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    const/4 v4, 0x4

    .line 61
    const/4 v9, 0x3

    .line 62
    sparse-switch p1, :sswitch_data_0

    .line 63
    .line 64
    .line 65
    :goto_1
    const/4 v6, -0x1

    .line 66
    goto :goto_2

    .line 67
    :sswitch_0
    const-string p1, "video/x-vnd.on2.vp9"

    .line 68
    .line 69
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_4

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    const/4 v6, 0x6

    .line 77
    goto :goto_2

    .line 78
    :sswitch_1
    const-string p1, "video/x-vnd.on2.vp8"

    .line 79
    .line 80
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_5

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    const/4 v6, 0x5

    .line 88
    goto :goto_2

    .line 89
    :sswitch_2
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_6

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_6
    const/4 v6, 0x4

    .line 97
    goto :goto_2

    .line 98
    :sswitch_3
    const-string p1, "video/mp4v-es"

    .line 99
    .line 100
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_7

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_7
    const/4 v6, 0x3

    .line 108
    goto :goto_2

    .line 109
    :sswitch_4
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_8

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_8
    const/4 v6, 0x2

    .line 117
    goto :goto_2

    .line 118
    :sswitch_5
    const-string p1, "video/av01"

    .line 119
    .line 120
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-nez p1, :cond_a

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :sswitch_6
    const-string p1, "video/3gpp"

    .line 128
    .line 129
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-nez p1, :cond_9

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_9
    const/4 v6, 0x0

    .line 137
    :cond_a
    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 138
    .line 139
    .line 140
    goto :goto_4

    .line 141
    :pswitch_0
    const/16 v4, 0x8

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/ads/Et;->d:Ljava/lang/String;

    .line 145
    .line 146
    const-string v3, "BRAVIA 4K 2015"

    .line 147
    .line 148
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-nez v3, :cond_c

    .line 153
    .line 154
    const-string v3, "Amazon"

    .line 155
    .line 156
    sget-object v5, Lcom/google/android/gms/internal/ads/Et;->c:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_b

    .line 163
    .line 164
    const-string v3, "KFSOWI"

    .line 165
    .line 166
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-nez v3, :cond_c

    .line 171
    .line 172
    const-string v3, "AFTS"

    .line 173
    .line 174
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_b

    .line 179
    .line 180
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/PM;->f:Z

    .line 181
    .line 182
    if-nez p0, :cond_c

    .line 183
    .line 184
    :cond_b
    add-int/lit8 v0, v0, 0xf

    .line 185
    .line 186
    add-int/lit8 v2, v2, 0xf

    .line 187
    .line 188
    div-int/lit8 v0, v0, 0x10

    .line 189
    .line 190
    div-int/lit8 v2, v2, 0x10

    .line 191
    .line 192
    mul-int v2, v2, v0

    .line 193
    .line 194
    mul-int/lit16 v2, v2, 0x300

    .line 195
    .line 196
    div-int/2addr v2, v4

    .line 197
    return v2

    .line 198
    :pswitch_2
    mul-int v0, v0, v2

    .line 199
    .line 200
    mul-int/lit8 v0, v0, 0x3

    .line 201
    .line 202
    div-int/2addr v0, v4

    .line 203
    const/high16 p0, 0x200000

    .line 204
    .line 205
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 206
    .line 207
    .line 208
    move-result p0

    .line 209
    return p0

    .line 210
    :goto_3
    :pswitch_3
    mul-int v0, v0, v2

    .line 211
    .line 212
    mul-int/lit8 v0, v0, 0x3

    .line 213
    .line 214
    div-int/2addr v0, v4

    .line 215
    return v0

    .line 216
    :cond_c
    :goto_4
    return v1

    .line 217
    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_6
        -0x631b55f6 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static t0(Lcom/google/android/gms/internal/ads/PM;Lcom/google/android/gms/internal/ads/p0;)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    iget v1, p1, Lcom/google/android/gms/internal/ads/p0;->n:I

    .line 3
    .line 4
    if-eq v1, v0, :cond_1

    .line 5
    .line 6
    iget-object p0, p1, Lcom/google/android/gms/internal/ads/p0;->p:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v0, p1, :cond_0

    .line 15
    .line 16
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, [B

    .line 21
    .line 22
    array-length v3, v3

    .line 23
    add-int/2addr v2, v3

    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    add-int/2addr v1, v2

    .line 28
    return v1

    .line 29
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/k;->s0(Lcom/google/android/gms/internal/ads/PM;Lcom/google/android/gms/internal/ads/p0;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method


# virtual methods
.method public final A(JZ)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/f;->b(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->r0:Lcom/google/android/gms/internal/ads/UM;

    .line 12
    .line 13
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/UM;->b:J

    .line 14
    .line 15
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/k;->b1:J

    .line 16
    .line 17
    neg-long v7, v5

    .line 18
    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/aK;->l:J

    .line 19
    .line 20
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/UM;->c:J

    .line 21
    .line 22
    invoke-virtual/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/f;->f(JJJJ)V

    .line 23
    .line 24
    .line 25
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/k;->d1:Z

    .line 26
    .line 27
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/VM;->A(JZ)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 31
    .line 32
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/k;->B0:Lcom/google/android/gms/internal/ads/n;

    .line 38
    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/n;->b:LU0/I;

    .line 42
    .line 43
    const-wide/16 v4, 0x0

    .line 44
    .line 45
    iput-wide v4, p1, LU0/I;->j:J

    .line 46
    .line 47
    const-wide/16 v4, -0x1

    .line 48
    .line 49
    iput-wide v4, p1, LU0/I;->m:J

    .line 50
    .line 51
    iput-wide v4, p1, LU0/I;->k:J

    .line 52
    .line 53
    iput-wide v2, p2, Lcom/google/android/gms/internal/ads/n;->g:J

    .line 54
    .line 55
    iput-wide v2, p2, Lcom/google/android/gms/internal/ads/n;->e:J

    .line 56
    .line 57
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/n;->f(I)V

    .line 58
    .line 59
    .line 60
    iput-wide v2, p2, Lcom/google/android/gms/internal/ads/n;->h:J

    .line 61
    .line 62
    :cond_1
    const/4 p1, 0x0

    .line 63
    if-eqz p3, :cond_3

    .line 64
    .line 65
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 66
    .line 67
    if-eqz p3, :cond_2

    .line 68
    .line 69
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/f;->m:Lcom/google/android/gms/internal/ads/g;

    .line 70
    .line 71
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/g;->b:Lcom/google/android/gms/internal/ads/n;

    .line 72
    .line 73
    iput-boolean p1, p2, Lcom/google/android/gms/internal/ads/n;->i:Z

    .line 74
    .line 75
    iput-wide v2, p2, Lcom/google/android/gms/internal/ads/n;->h:J

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    iput-boolean p1, p2, Lcom/google/android/gms/internal/ads/n;->i:Z

    .line 79
    .line 80
    iput-wide v2, p2, Lcom/google/android/gms/internal/ads/n;->h:J

    .line 81
    .line 82
    :cond_3
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/k;->R0:I

    .line 83
    .line 84
    return-void
.end method

.method public final B(F[Lcom/google/android/gms/internal/ads/p0;)F
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, -0x40800000    # -1.0f

    .line 3
    .line 4
    const/high16 v2, -0x40800000    # -1.0f

    .line 5
    .line 6
    :goto_0
    array-length v3, p2

    .line 7
    if-ge v0, v3, :cond_1

    .line 8
    .line 9
    aget-object v3, p2, v0

    .line 10
    .line 11
    iget v3, v3, Lcom/google/android/gms/internal/ads/p0;->u:F

    .line 12
    .line 13
    cmpl-float v4, v3, v1

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    cmpl-float p2, v2, v1

    .line 25
    .line 26
    if-nez p2, :cond_2

    .line 27
    .line 28
    return v1

    .line 29
    :cond_2
    mul-float v2, v2, p1

    .line 30
    .line 31
    return v2
.end method

.method public final C(Ljava/lang/IllegalStateException;Lcom/google/android/gms/internal/ads/PM;)Lcom/google/android/gms/internal/ads/OM;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/h;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k;->J0:Landroid/view/Surface;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/OM;-><init>(Ljava/lang/IllegalStateException;Lcom/google/android/gms/internal/ads/PM;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object v0
.end method

.method public final E(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/VM;->E(J)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lcom/google/android/gms/internal/ads/k;->S0:I

    .line 5
    .line 6
    add-int/lit8 p1, p1, -0x1

    .line 7
    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/k;->S0:I

    .line 9
    .line 10
    return-void
.end method

.method public final F()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/k;->S0:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/k;->S0:I

    .line 6
    .line 7
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 8
    .line 9
    return-void
.end method

.method public final G(Lcom/google/android/gms/internal/ads/p0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/f;->c(Lcom/google/android/gms/internal/ads/p0;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/z; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/16 v2, 0x1b58

    .line 14
    .line 15
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/aK;->s(ILcom/google/android/gms/internal/ads/p0;Ljava/lang/Exception;Z)Lcom/google/android/gms/internal/ads/jK;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    throw p1
.end method

.method public final I()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/VM;->I()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/k;->S0:I

    .line 6
    .line 7
    return-void
.end method

.method public final L(Lcom/google/android/gms/internal/ads/PM;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k;->J0:Landroid/view/Surface;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 6
    .line 7
    const/16 v1, 0x23

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/PM;->h:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/k;->v0(Lcom/google/android/gms/internal/ads/PM;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 26
    :goto_1
    return p1
.end method

.method public final M(Lcom/google/android/gms/internal/ads/VJ;)Z
    .locals 8

    .line 1
    const/high16 v0, 0x4000000

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lq0/e;->b(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aK;->l()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const/high16 v0, 0x20000000

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lq0/e;->b(I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/k;->c1:J

    .line 26
    .line 27
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    cmp-long v0, v2, v4

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/VJ;->g:J

    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->r0:Lcom/google/android/gms/internal/ads/UM;

    .line 39
    .line 40
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/UM;->c:J

    .line 41
    .line 42
    sub-long/2addr v4, v6

    .line 43
    sub-long/2addr v2, v4

    .line 44
    const-wide/32 v4, 0x186a0

    .line 45
    .line 46
    .line 47
    cmp-long v0, v2, v4

    .line 48
    .line 49
    if-lez v0, :cond_1

    .line 50
    .line 51
    const/high16 v0, 0x40000000    # 2.0f

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lq0/e;->b(I)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/VJ;->g:J

    .line 60
    .line 61
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/aK;->l:J

    .line 62
    .line 63
    cmp-long p1, v2, v4

    .line 64
    .line 65
    if-gez p1, :cond_1

    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    return p1

    .line 69
    :cond_1
    :goto_0
    return v1
.end method

.method public final T(Lcom/google/android/gms/internal/ads/WM;Lcom/google/android/gms/internal/ads/p0;)I
    .locals 11

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/va;->g(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x80

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/p0;->q:Lcom/google/android/gms/internal/ads/mO;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v2, 0x0

    .line 21
    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/k;->x0:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v4, p1, p2, v2, v3}, Lcom/google/android/gms/internal/ads/k;->r0(Landroid/content/Context;Lcom/google/android/gms/internal/ads/WM;Lcom/google/android/gms/internal/ads/p0;ZZ)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_2

    .line 34
    .line 35
    invoke-static {v4, p1, p2, v3, v3}, Lcom/google/android/gms/internal/ads/k;->r0(Landroid/content/Context;Lcom/google/android/gms/internal/ads/WM;Lcom/google/android/gms/internal/ads/p0;ZZ)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_3

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    iget v6, p2, Lcom/google/android/gms/internal/ads/p0;->H:I

    .line 47
    .line 48
    if-eqz v6, :cond_4

    .line 49
    .line 50
    const/4 v0, 0x2

    .line 51
    :goto_1
    or-int/lit16 p1, v0, 0x80

    .line 52
    .line 53
    return p1

    .line 54
    :cond_4
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    check-cast v6, Lcom/google/android/gms/internal/ads/PM;

    .line 59
    .line 60
    invoke-virtual {v6, p2}, Lcom/google/android/gms/internal/ads/PM;->c(Lcom/google/android/gms/internal/ads/p0;)Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-nez v7, :cond_6

    .line 65
    .line 66
    const/4 v8, 0x1

    .line 67
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    if-ge v8, v9, :cond_6

    .line 72
    .line 73
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    check-cast v9, Lcom/google/android/gms/internal/ads/PM;

    .line 78
    .line 79
    invoke-virtual {v9, p2}, Lcom/google/android/gms/internal/ads/PM;->c(Lcom/google/android/gms/internal/ads/p0;)Z

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    if-eqz v10, :cond_5

    .line 84
    .line 85
    move-object v6, v9

    .line 86
    const/4 v5, 0x0

    .line 87
    const/4 v7, 0x1

    .line 88
    goto :goto_3

    .line 89
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_6
    const/4 v5, 0x1

    .line 93
    :goto_3
    if-eq v0, v7, :cond_7

    .line 94
    .line 95
    const/4 v8, 0x3

    .line 96
    goto :goto_4

    .line 97
    :cond_7
    const/4 v8, 0x4

    .line 98
    :goto_4
    invoke-virtual {v6, p2}, Lcom/google/android/gms/internal/ads/PM;->d(Lcom/google/android/gms/internal/ads/p0;)Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    if-eq v0, v9, :cond_8

    .line 103
    .line 104
    const/16 v9, 0x8

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_8
    const/16 v9, 0x10

    .line 108
    .line 109
    :goto_5
    iget-boolean v6, v6, Lcom/google/android/gms/internal/ads/PM;->g:Z

    .line 110
    .line 111
    if-eq v0, v6, :cond_9

    .line 112
    .line 113
    const/4 v6, 0x0

    .line 114
    goto :goto_6

    .line 115
    :cond_9
    const/16 v6, 0x40

    .line 116
    .line 117
    :goto_6
    if-eq v0, v5, :cond_a

    .line 118
    .line 119
    const/4 v1, 0x0

    .line 120
    :cond_a
    sget v5, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 121
    .line 122
    const/16 v10, 0x1a

    .line 123
    .line 124
    if-lt v5, v10, :cond_b

    .line 125
    .line 126
    iget-object v5, p2, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 127
    .line 128
    const-string v10, "video/dolby-vision"

    .line 129
    .line 130
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_b

    .line 135
    .line 136
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/j;->a(Landroid/content/Context;)Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-nez v5, :cond_b

    .line 141
    .line 142
    const/16 v1, 0x100

    .line 143
    .line 144
    :cond_b
    if-eqz v7, :cond_c

    .line 145
    .line 146
    invoke-static {v4, p1, p2, v2, v0}, Lcom/google/android/gms/internal/ads/k;->r0(Landroid/content/Context;Lcom/google/android/gms/internal/ads/WM;Lcom/google/android/gms/internal/ads/p0;ZZ)Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-nez v0, :cond_c

    .line 155
    .line 156
    sget-object v0, Lcom/google/android/gms/internal/ads/cN;->a:Ljava/util/regex/Pattern;

    .line 157
    .line 158
    new-instance v0, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 161
    .line 162
    .line 163
    new-instance p1, Lcom/google/android/gms/internal/ads/Xu;

    .line 164
    .line 165
    const/16 v2, 0x1c

    .line 166
    .line 167
    invoke-direct {p1, p2, v2}, Lcom/google/android/gms/internal/ads/Xu;-><init>(Ljava/lang/Object;I)V

    .line 168
    .line 169
    .line 170
    new-instance v2, Lcom/google/android/gms/internal/ads/XM;

    .line 171
    .line 172
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/XM;-><init>(Lcom/google/android/gms/internal/ads/bN;)V

    .line 173
    .line 174
    .line 175
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    check-cast p1, Lcom/google/android/gms/internal/ads/PM;

    .line 183
    .line 184
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/PM;->c(Lcom/google/android/gms/internal/ads/p0;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_c

    .line 189
    .line 190
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/PM;->d(Lcom/google/android/gms/internal/ads/p0;)Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-eqz p1, :cond_c

    .line 195
    .line 196
    const/16 v3, 0x20

    .line 197
    .line 198
    :cond_c
    or-int p1, v8, v9

    .line 199
    .line 200
    or-int/2addr p1, v3

    .line 201
    or-int/2addr p1, v6

    .line 202
    or-int/2addr p1, v1

    .line 203
    return p1
.end method

.method public final U(Lcom/google/android/gms/internal/ads/PM;Lcom/google/android/gms/internal/ads/p0;Lcom/google/android/gms/internal/ads/p0;)Lcom/google/android/gms/internal/ads/dK;
    .locals 11

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/PM;->a(Lcom/google/android/gms/internal/ads/p0;Lcom/google/android/gms/internal/ads/p0;)Lcom/google/android/gms/internal/ads/dK;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k;->D0:LA2/i;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget v2, p3, Lcom/google/android/gms/internal/ads/p0;->s:I

    .line 11
    .line 12
    iget v3, v1, LA2/i;->a:I

    .line 13
    .line 14
    iget v4, v0, Lcom/google/android/gms/internal/ads/dK;->e:I

    .line 15
    .line 16
    if-gt v2, v3, :cond_0

    .line 17
    .line 18
    iget v2, p3, Lcom/google/android/gms/internal/ads/p0;->t:I

    .line 19
    .line 20
    iget v3, v1, LA2/i;->b:I

    .line 21
    .line 22
    if-le v2, v3, :cond_1

    .line 23
    .line 24
    :cond_0
    or-int/lit16 v4, v4, 0x100

    .line 25
    .line 26
    :cond_1
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/k;->t0(Lcom/google/android/gms/internal/ads/PM;Lcom/google/android/gms/internal/ads/p0;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget v1, v1, LA2/i;->c:I

    .line 31
    .line 32
    if-le v2, v1, :cond_2

    .line 33
    .line 34
    or-int/lit8 v4, v4, 0x40

    .line 35
    .line 36
    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/dK;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    if-eqz v4, :cond_3

    .line 40
    .line 41
    move v10, v4

    .line 42
    const/4 v9, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    iget v0, v0, Lcom/google/android/gms/internal/ads/dK;->d:I

    .line 45
    .line 46
    move v9, v0

    .line 47
    const/4 v10, 0x0

    .line 48
    :goto_0
    iget-object v6, p1, Lcom/google/android/gms/internal/ads/PM;->a:Ljava/lang/String;

    .line 49
    .line 50
    move-object v5, v1

    .line 51
    move-object v7, p2

    .line 52
    move-object v8, p3

    .line 53
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/dK;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/p0;Lcom/google/android/gms/internal/ads/p0;II)V

    .line 54
    .line 55
    .line 56
    return-object v1
.end method

.method public final V(Lcom/google/android/gms/internal/ads/Om;)Lcom/google/android/gms/internal/ads/dK;
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/VM;->V(Lcom/google/android/gms/internal/ads/Om;)Lcom/google/android/gms/internal/ads/dK;

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Om;->H:Ljava/lang/Object;

    .line 6
    .line 7
    move-object v2, p1

    .line 8
    check-cast v2, Lcom/google/android/gms/internal/ads/p0;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k;->z0:Lcom/google/android/gms/internal/ads/x;

    .line 14
    .line 15
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Landroid/os/Handler;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    new-instance v7, LK/a;

    .line 22
    .line 23
    const/16 v4, 0x11

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    move-object v0, v7

    .line 27
    move-object v3, v6

    .line 28
    invoke-direct/range {v0 .. v5}, LK/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    return-object v6
.end method

.method public final Y(Lcom/google/android/gms/internal/ads/PM;Lcom/google/android/gms/internal/ads/p0;F)Lcom/google/android/gms/internal/ads/KM;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    move/from16 v1, p3

    .line 8
    .line 9
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/aK;->j:[Lcom/google/android/gms/internal/ads/p0;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    array-length v5, v3

    .line 15
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/k;->t0(Lcom/google/android/gms/internal/ads/PM;Lcom/google/android/gms/internal/ads/p0;)I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    const/4 v7, 0x1

    .line 20
    const/4 v8, -0x1

    .line 21
    iget v10, v4, Lcom/google/android/gms/internal/ads/p0;->u:F

    .line 22
    .line 23
    iget-object v11, v4, Lcom/google/android/gms/internal/ads/p0;->z:Lcom/google/android/gms/internal/ads/rL;

    .line 24
    .line 25
    iget v12, v4, Lcom/google/android/gms/internal/ads/p0;->t:I

    .line 26
    .line 27
    iget v13, v4, Lcom/google/android/gms/internal/ads/p0;->s:I

    .line 28
    .line 29
    if-ne v5, v7, :cond_1

    .line 30
    .line 31
    if-eq v6, v8, :cond_0

    .line 32
    .line 33
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/k;->s0(Lcom/google/android/gms/internal/ads/PM;Lcom/google/android/gms/internal/ads/p0;)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eq v3, v8, :cond_0

    .line 38
    .line 39
    int-to-float v5, v6

    .line 40
    const/high16 v6, 0x3fc00000    # 1.5f

    .line 41
    .line 42
    mul-float v5, v5, v6

    .line 43
    .line 44
    float-to-int v5, v5

    .line 45
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    :cond_0
    move-object/from16 v16, v11

    .line 50
    .line 51
    move v7, v12

    .line 52
    move/from16 v17, v7

    .line 53
    .line 54
    move v9, v13

    .line 55
    move/from16 v19, v9

    .line 56
    .line 57
    goto/16 :goto_d

    .line 58
    .line 59
    :cond_1
    move v7, v12

    .line 60
    move v9, v13

    .line 61
    const/4 v14, 0x0

    .line 62
    const/4 v15, 0x0

    .line 63
    :goto_0
    if-ge v14, v5, :cond_6

    .line 64
    .line 65
    aget-object v8, v3, v14

    .line 66
    .line 67
    move-object/from16 v17, v3

    .line 68
    .line 69
    if-eqz v11, :cond_2

    .line 70
    .line 71
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/p0;->z:Lcom/google/android/gms/internal/ads/rL;

    .line 72
    .line 73
    if-nez v3, :cond_2

    .line 74
    .line 75
    new-instance v3, Lcom/google/android/gms/internal/ads/K;

    .line 76
    .line 77
    invoke-direct {v3, v8}, Lcom/google/android/gms/internal/ads/K;-><init>(Lcom/google/android/gms/internal/ads/p0;)V

    .line 78
    .line 79
    .line 80
    iput-object v11, v3, Lcom/google/android/gms/internal/ads/K;->y:Lcom/google/android/gms/internal/ads/rL;

    .line 81
    .line 82
    new-instance v8, Lcom/google/android/gms/internal/ads/p0;

    .line 83
    .line 84
    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-virtual {v2, v4, v8}, Lcom/google/android/gms/internal/ads/PM;->a(Lcom/google/android/gms/internal/ads/p0;Lcom/google/android/gms/internal/ads/p0;)Lcom/google/android/gms/internal/ads/dK;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    iget v3, v3, Lcom/google/android/gms/internal/ads/dK;->d:I

    .line 92
    .line 93
    if-eqz v3, :cond_5

    .line 94
    .line 95
    iget v3, v8, Lcom/google/android/gms/internal/ads/p0;->t:I

    .line 96
    .line 97
    move/from16 v18, v5

    .line 98
    .line 99
    iget v5, v8, Lcom/google/android/gms/internal/ads/p0;->s:I

    .line 100
    .line 101
    const/4 v1, -0x1

    .line 102
    if-eq v5, v1, :cond_3

    .line 103
    .line 104
    if-ne v3, v1, :cond_4

    .line 105
    .line 106
    :cond_3
    const/16 v16, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    const/16 v16, 0x0

    .line 110
    .line 111
    :goto_1
    or-int v15, v15, v16

    .line 112
    .line 113
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    invoke-static {v2, v8}, Lcom/google/android/gms/internal/ads/k;->t0(Lcom/google/android/gms/internal/ads/PM;Lcom/google/android/gms/internal/ads/p0;)I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    move v6, v3

    .line 130
    goto :goto_2

    .line 131
    :cond_5
    move/from16 v18, v5

    .line 132
    .line 133
    const/4 v1, -0x1

    .line 134
    :goto_2
    add-int/lit8 v14, v14, 0x1

    .line 135
    .line 136
    move/from16 v1, p3

    .line 137
    .line 138
    move-object/from16 v3, v17

    .line 139
    .line 140
    move/from16 v5, v18

    .line 141
    .line 142
    const/4 v8, -0x1

    .line 143
    goto :goto_0

    .line 144
    :cond_6
    if-eqz v15, :cond_13

    .line 145
    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v3, "Resolutions unknown. Codec max resolution: "

    .line 149
    .line 150
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v3, "x"

    .line 157
    .line 158
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    const-string v5, "MediaCodecVideoRenderer"

    .line 169
    .line 170
    invoke-static {v5, v1}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    if-le v12, v13, :cond_7

    .line 174
    .line 175
    const/4 v1, 0x1

    .line 176
    goto :goto_3

    .line 177
    :cond_7
    const/4 v1, 0x0

    .line 178
    :goto_3
    if-eqz v1, :cond_8

    .line 179
    .line 180
    move v14, v12

    .line 181
    :goto_4
    const/4 v8, 0x1

    .line 182
    goto :goto_5

    .line 183
    :cond_8
    move v14, v13

    .line 184
    goto :goto_4

    .line 185
    :goto_5
    if-ne v8, v1, :cond_9

    .line 186
    .line 187
    move v8, v13

    .line 188
    goto :goto_6

    .line 189
    :cond_9
    move v8, v12

    .line 190
    :goto_6
    sget-object v15, Lcom/google/android/gms/internal/ads/k;->e1:[I

    .line 191
    .line 192
    move-object/from16 v16, v11

    .line 193
    .line 194
    move/from16 v17, v12

    .line 195
    .line 196
    const/4 v11, 0x0

    .line 197
    :goto_7
    const/16 v12, 0x9

    .line 198
    .line 199
    const/16 v18, 0x0

    .line 200
    .line 201
    if-ge v11, v12, :cond_12

    .line 202
    .line 203
    int-to-float v12, v8

    .line 204
    move/from16 v19, v13

    .line 205
    .line 206
    int-to-float v13, v14

    .line 207
    aget v0, v15, v11

    .line 208
    .line 209
    move-object/from16 v20, v15

    .line 210
    .line 211
    int-to-float v15, v0

    .line 212
    if-le v0, v14, :cond_a

    .line 213
    .line 214
    div-float/2addr v12, v13

    .line 215
    mul-float v12, v12, v15

    .line 216
    .line 217
    float-to-int v12, v12

    .line 218
    if-gt v12, v8, :cond_b

    .line 219
    .line 220
    :cond_a
    :goto_8
    move-object/from16 v0, v18

    .line 221
    .line 222
    goto :goto_c

    .line 223
    :cond_b
    const/4 v13, 0x1

    .line 224
    if-eq v13, v1, :cond_c

    .line 225
    .line 226
    move v15, v0

    .line 227
    goto :goto_9

    .line 228
    :cond_c
    move v15, v12

    .line 229
    :goto_9
    if-ne v13, v1, :cond_d

    .line 230
    .line 231
    goto :goto_a

    .line 232
    :cond_d
    move v0, v12

    .line 233
    :goto_a
    iget-object v12, v2, Lcom/google/android/gms/internal/ads/PM;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 234
    .line 235
    if-nez v12, :cond_e

    .line 236
    .line 237
    goto :goto_b

    .line 238
    :cond_e
    invoke-virtual {v12}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 239
    .line 240
    .line 241
    move-result-object v12

    .line 242
    if-eqz v12, :cond_f

    .line 243
    .line 244
    invoke-static {v12, v15, v0}, Lcom/google/android/gms/internal/ads/PM;->f(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    .line 245
    .line 246
    .line 247
    move-result-object v18

    .line 248
    :cond_f
    :goto_b
    move-object/from16 v0, v18

    .line 249
    .line 250
    if-eqz v0, :cond_10

    .line 251
    .line 252
    float-to-double v12, v10

    .line 253
    iget v15, v0, Landroid/graphics/Point;->x:I

    .line 254
    .line 255
    move/from16 v21, v1

    .line 256
    .line 257
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 258
    .line 259
    invoke-virtual {v2, v15, v1, v12, v13}, Lcom/google/android/gms/internal/ads/PM;->e(IID)Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-eqz v1, :cond_11

    .line 264
    .line 265
    goto :goto_c

    .line 266
    :cond_10
    move/from16 v21, v1

    .line 267
    .line 268
    :cond_11
    add-int/lit8 v11, v11, 0x1

    .line 269
    .line 270
    move-object/from16 v0, p0

    .line 271
    .line 272
    move/from16 v13, v19

    .line 273
    .line 274
    move-object/from16 v15, v20

    .line 275
    .line 276
    move/from16 v1, v21

    .line 277
    .line 278
    goto :goto_7

    .line 279
    :cond_12
    move/from16 v19, v13

    .line 280
    .line 281
    goto :goto_8

    .line 282
    :goto_c
    if-eqz v0, :cond_14

    .line 283
    .line 284
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 285
    .line 286
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    .line 287
    .line 288
    .line 289
    move-result v9

    .line 290
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 291
    .line 292
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    .line 293
    .line 294
    .line 295
    move-result v7

    .line 296
    new-instance v0, Lcom/google/android/gms/internal/ads/K;

    .line 297
    .line 298
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/K;-><init>(Lcom/google/android/gms/internal/ads/p0;)V

    .line 299
    .line 300
    .line 301
    iput v9, v0, Lcom/google/android/gms/internal/ads/K;->r:I

    .line 302
    .line 303
    iput v7, v0, Lcom/google/android/gms/internal/ads/K;->s:I

    .line 304
    .line 305
    new-instance v1, Lcom/google/android/gms/internal/ads/p0;

    .line 306
    .line 307
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 308
    .line 309
    .line 310
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/k;->s0(Lcom/google/android/gms/internal/ads/PM;Lcom/google/android/gms/internal/ads/p0;)I

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    .line 315
    .line 316
    .line 317
    move-result v6

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    const-string v1, "Codec max resolution adjusted to: "

    .line 321
    .line 322
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    goto :goto_d

    .line 342
    :cond_13
    move-object/from16 v16, v11

    .line 343
    .line 344
    move/from16 v17, v12

    .line 345
    .line 346
    move/from16 v19, v13

    .line 347
    .line 348
    :cond_14
    :goto_d
    new-instance v0, LA2/i;

    .line 349
    .line 350
    invoke-direct {v0, v9, v7, v6}, LA2/i;-><init>(III)V

    .line 351
    .line 352
    .line 353
    move-object/from16 v8, p0

    .line 354
    .line 355
    iput-object v0, v8, Lcom/google/android/gms/internal/ads/k;->D0:LA2/i;

    .line 356
    .line 357
    new-instance v3, Landroid/media/MediaFormat;

    .line 358
    .line 359
    invoke-direct {v3}, Landroid/media/MediaFormat;-><init>()V

    .line 360
    .line 361
    .line 362
    const-string v0, "mime"

    .line 363
    .line 364
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/PM;->c:Ljava/lang/String;

    .line 365
    .line 366
    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    const-string v0, "width"

    .line 370
    .line 371
    move/from16 v1, v19

    .line 372
    .line 373
    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 374
    .line 375
    .line 376
    const-string v0, "height"

    .line 377
    .line 378
    move/from16 v1, v17

    .line 379
    .line 380
    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 381
    .line 382
    .line 383
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/p0;->p:Ljava/util/List;

    .line 384
    .line 385
    invoke-static {v3, v0}, Lo3/r;->w(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 386
    .line 387
    .line 388
    const/high16 v0, -0x40800000    # -1.0f

    .line 389
    .line 390
    cmpl-float v1, v10, v0

    .line 391
    .line 392
    if-eqz v1, :cond_15

    .line 393
    .line 394
    const-string v1, "frame-rate"

    .line 395
    .line 396
    invoke-virtual {v3, v1, v10}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 397
    .line 398
    .line 399
    :cond_15
    iget v1, v4, Lcom/google/android/gms/internal/ads/p0;->v:I

    .line 400
    .line 401
    const-string v5, "rotation-degrees"

    .line 402
    .line 403
    invoke-static {v3, v5, v1}, Lo3/r;->r(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 404
    .line 405
    .line 406
    if-eqz v16, :cond_16

    .line 407
    .line 408
    const-string v1, "color-transfer"

    .line 409
    .line 410
    move-object/from16 v5, v16

    .line 411
    .line 412
    iget v10, v5, Lcom/google/android/gms/internal/ads/rL;->c:I

    .line 413
    .line 414
    invoke-static {v3, v1, v10}, Lo3/r;->r(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 415
    .line 416
    .line 417
    const-string v1, "color-standard"

    .line 418
    .line 419
    iget v10, v5, Lcom/google/android/gms/internal/ads/rL;->a:I

    .line 420
    .line 421
    invoke-static {v3, v1, v10}, Lo3/r;->r(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 422
    .line 423
    .line 424
    const-string v1, "color-range"

    .line 425
    .line 426
    iget v10, v5, Lcom/google/android/gms/internal/ads/rL;->b:I

    .line 427
    .line 428
    invoke-static {v3, v1, v10}, Lo3/r;->r(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 429
    .line 430
    .line 431
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/rL;->d:[B

    .line 432
    .line 433
    if-eqz v1, :cond_16

    .line 434
    .line 435
    const-string v5, "hdr-static-info"

    .line 436
    .line 437
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    invoke-virtual {v3, v5, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 442
    .line 443
    .line 444
    :cond_16
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 445
    .line 446
    const-string v5, "video/dolby-vision"

    .line 447
    .line 448
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    if-eqz v1, :cond_17

    .line 453
    .line 454
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/cN;->a(Lcom/google/android/gms/internal/ads/p0;)Landroid/util/Pair;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    if-eqz v1, :cond_17

    .line 459
    .line 460
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 461
    .line 462
    check-cast v1, Ljava/lang/Integer;

    .line 463
    .line 464
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 465
    .line 466
    .line 467
    move-result v1

    .line 468
    const-string v5, "profile"

    .line 469
    .line 470
    invoke-static {v3, v5, v1}, Lo3/r;->r(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 471
    .line 472
    .line 473
    :cond_17
    const-string v1, "max-width"

    .line 474
    .line 475
    invoke-virtual {v3, v1, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 476
    .line 477
    .line 478
    const-string v1, "max-height"

    .line 479
    .line 480
    invoke-virtual {v3, v1, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 481
    .line 482
    .line 483
    const-string v1, "max-input-size"

    .line 484
    .line 485
    invoke-static {v3, v1, v6}, Lo3/r;->r(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 486
    .line 487
    .line 488
    sget v1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 489
    .line 490
    const/16 v5, 0x17

    .line 491
    .line 492
    if-lt v1, v5, :cond_18

    .line 493
    .line 494
    const-string v5, "priority"

    .line 495
    .line 496
    const/4 v6, 0x0

    .line 497
    invoke-virtual {v3, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 498
    .line 499
    .line 500
    move/from16 v5, p3

    .line 501
    .line 502
    cmpl-float v0, v5, v0

    .line 503
    .line 504
    if-eqz v0, :cond_18

    .line 505
    .line 506
    const-string v0, "operating-rate"

    .line 507
    .line 508
    invoke-virtual {v3, v0, v5}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 509
    .line 510
    .line 511
    :cond_18
    iget-boolean v0, v8, Lcom/google/android/gms/internal/ads/k;->A0:Z

    .line 512
    .line 513
    if-eqz v0, :cond_19

    .line 514
    .line 515
    const-string v0, "no-post-process"

    .line 516
    .line 517
    const/4 v5, 0x1

    .line 518
    invoke-virtual {v3, v0, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 519
    .line 520
    .line 521
    const-string v0, "auto-frc"

    .line 522
    .line 523
    const/4 v5, 0x0

    .line 524
    invoke-virtual {v3, v0, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 525
    .line 526
    .line 527
    goto :goto_e

    .line 528
    :cond_19
    const/4 v5, 0x0

    .line 529
    :goto_e
    const/16 v0, 0x23

    .line 530
    .line 531
    if-lt v1, v0, :cond_1a

    .line 532
    .line 533
    iget v0, v8, Lcom/google/android/gms/internal/ads/k;->Y0:I

    .line 534
    .line 535
    neg-int v0, v0

    .line 536
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 537
    .line 538
    .line 539
    move-result v0

    .line 540
    const-string v1, "importance"

    .line 541
    .line 542
    invoke-virtual {v3, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 543
    .line 544
    .line 545
    :cond_1a
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/k;->q0(Lcom/google/android/gms/internal/ads/PM;)Landroid/view/Surface;

    .line 546
    .line 547
    .line 548
    move-result-object v5

    .line 549
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 550
    .line 551
    if-eqz v0, :cond_1b

    .line 552
    .line 553
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/f;->a:Landroid/content/Context;

    .line 554
    .line 555
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Et;->d(Landroid/content/Context;)Z

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    if-nez v0, :cond_1b

    .line 560
    .line 561
    const-string v0, "allow-frame-drop"

    .line 562
    .line 563
    const/4 v1, 0x0

    .line 564
    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 565
    .line 566
    .line 567
    :cond_1b
    new-instance v0, Lcom/google/android/gms/internal/ads/KM;

    .line 568
    .line 569
    const/4 v6, 0x0

    .line 570
    move-object v1, v0

    .line 571
    move-object/from16 v2, p1

    .line 572
    .line 573
    move-object/from16 v4, p2

    .line 574
    .line 575
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/KM;-><init>(Lcom/google/android/gms/internal/ads/PM;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/p0;Landroid/view/Surface;Lcom/google/android/gms/internal/ads/JM;)V

    .line 576
    .line 577
    .line 578
    return-object v0
.end method

.method public final Z(Lcom/google/android/gms/internal/ads/WM;Lcom/google/android/gms/internal/ads/p0;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k;->x0:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/gms/internal/ads/k;->r0(Landroid/content/Context;Lcom/google/android/gms/internal/ads/WM;Lcom/google/android/gms/internal/ads/p0;ZZ)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/cN;->a:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/Xu;

    .line 16
    .line 17
    const/16 v1, 0x1c

    .line 18
    .line 19
    invoke-direct {p1, p2, v1}, Lcom/google/android/gms/internal/ads/Xu;-><init>(Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    new-instance p2, Lcom/google/android/gms/internal/ads/XM;

    .line 23
    .line 24
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/XM;-><init>(Lcom/google/android/gms/internal/ads/bN;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 10

    .line 1
    const/16 v0, 0x23

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/k;->B0:Lcom/google/android/gms/internal/ads/n;

    .line 6
    .line 7
    if-eq p1, v2, :cond_c

    .line 8
    .line 9
    const/4 v4, 0x7

    .line 10
    if-eq p1, v4, :cond_b

    .line 11
    .line 12
    const/16 v4, 0xa

    .line 13
    .line 14
    if-eq p1, v4, :cond_a

    .line 15
    .line 16
    const/16 v4, 0x10

    .line 17
    .line 18
    if-eq p1, v4, :cond_9

    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    if-eq p1, v0, :cond_8

    .line 22
    .line 23
    const/4 v0, 0x5

    .line 24
    if-eq p1, v0, :cond_4

    .line 25
    .line 26
    const/16 v0, 0xd

    .line 27
    .line 28
    if-eq p1, v0, :cond_2

    .line 29
    .line 30
    const/16 v0, 0xe

    .line 31
    .line 32
    if-eq p1, v0, :cond_1

    .line 33
    .line 34
    const/16 v0, 0xb

    .line 35
    .line 36
    if-ne p1, v0, :cond_0

    .line 37
    .line 38
    check-cast p2, Lcom/google/android/gms/internal/ads/yK;

    .line 39
    .line 40
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/VM;->D:Lcom/google/android/gms/internal/ads/yK;

    .line 41
    .line 42
    :cond_0
    return-void

    .line 43
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    check-cast p2, Lcom/google/android/gms/internal/ads/Br;

    .line 47
    .line 48
    iget p1, p2, Lcom/google/android/gms/internal/ads/Br;->a:I

    .line 49
    .line 50
    if-eqz p1, :cond_1c

    .line 51
    .line 52
    iget p1, p2, Lcom/google/android/gms/internal/ads/Br;->b:I

    .line 53
    .line 54
    if-eqz p1, :cond_1c

    .line 55
    .line 56
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/k;->L0:Lcom/google/android/gms/internal/ads/Br;

    .line 57
    .line 58
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 59
    .line 60
    if-eqz p1, :cond_1c

    .line 61
    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k;->J0:Landroid/view/Surface;

    .line 63
    .line 64
    invoke-static {v0}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/f;->e(Landroid/view/Surface;Lcom/google/android/gms/internal/ads/Br;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    check-cast p2, Ljava/util/List;

    .line 75
    .line 76
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/k;->I0:Ljava/util/List;

    .line 77
    .line 78
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 79
    .line 80
    if-eqz p1, :cond_1c

    .line 81
    .line 82
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/f;->b:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_3

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/f;->a()V

    .line 98
    .line 99
    .line 100
    :goto_0
    return-void

    .line 101
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    check-cast p2, Ljava/lang/Integer;

    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    iput p1, p0, Lcom/google/android/gms/internal/ads/k;->O0:I

    .line 111
    .line 112
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 113
    .line 114
    if-eqz p2, :cond_6

    .line 115
    .line 116
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/f;->m:Lcom/google/android/gms/internal/ads/g;

    .line 117
    .line 118
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/g;->b:Lcom/google/android/gms/internal/ads/n;

    .line 119
    .line 120
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/n;->b:LU0/I;

    .line 121
    .line 122
    iget v0, p2, LU0/I;->g:I

    .line 123
    .line 124
    if-ne v0, p1, :cond_5

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    iput p1, p2, LU0/I;->g:I

    .line 128
    .line 129
    invoke-virtual {p2, v2}, LU0/I;->h(Z)V

    .line 130
    .line 131
    .line 132
    :goto_1
    return-void

    .line 133
    :cond_6
    iget-object p2, v3, Lcom/google/android/gms/internal/ads/n;->b:LU0/I;

    .line 134
    .line 135
    iget v0, p2, LU0/I;->g:I

    .line 136
    .line 137
    if-ne v0, p1, :cond_7

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_7
    iput p1, p2, LU0/I;->g:I

    .line 141
    .line 142
    invoke-virtual {p2, v2}, LU0/I;->h(Z)V

    .line 143
    .line 144
    .line 145
    :goto_2
    return-void

    .line 146
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    check-cast p2, Ljava/lang/Integer;

    .line 150
    .line 151
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    iput p1, p0, Lcom/google/android/gms/internal/ads/k;->N0:I

    .line 156
    .line 157
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/VM;->G:Lcom/google/android/gms/internal/ads/MM;

    .line 158
    .line 159
    if-eqz p2, :cond_1c

    .line 160
    .line 161
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/MM;->e(I)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    check-cast p2, Ljava/lang/Integer;

    .line 169
    .line 170
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    iput p1, p0, Lcom/google/android/gms/internal/ads/k;->Y0:I

    .line 175
    .line 176
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/VM;->G:Lcom/google/android/gms/internal/ads/MM;

    .line 177
    .line 178
    if-eqz p1, :cond_1c

    .line 179
    .line 180
    sget p2, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 181
    .line 182
    if-lt p2, v0, :cond_1c

    .line 183
    .line 184
    new-instance p2, Landroid/os/Bundle;

    .line 185
    .line 186
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 187
    .line 188
    .line 189
    iget v0, p0, Lcom/google/android/gms/internal/ads/k;->Y0:I

    .line 190
    .line 191
    neg-int v0, v0

    .line 192
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    const-string v1, "importance"

    .line 197
    .line 198
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 199
    .line 200
    .line 201
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/MM;->i(Landroid/os/Bundle;)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    check-cast p2, Ljava/lang/Integer;

    .line 209
    .line 210
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    iget p2, p0, Lcom/google/android/gms/internal/ads/k;->Z0:I

    .line 215
    .line 216
    if-eq p2, p1, :cond_1c

    .line 217
    .line 218
    iput p1, p0, Lcom/google/android/gms/internal/ads/k;->Z0:I

    .line 219
    .line 220
    return-void

    .line 221
    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    check-cast p2, Lcom/google/android/gms/internal/ads/tK;

    .line 225
    .line 226
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/k;->a1:Lcom/google/android/gms/internal/ads/tK;

    .line 227
    .line 228
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 229
    .line 230
    if-eqz p1, :cond_1c

    .line 231
    .line 232
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/f;->m:Lcom/google/android/gms/internal/ads/g;

    .line 233
    .line 234
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/g;->h:Lcom/google/android/gms/internal/ads/tK;

    .line 235
    .line 236
    return-void

    .line 237
    :cond_c
    instance-of p1, p2, Landroid/view/Surface;

    .line 238
    .line 239
    const/4 v4, 0x0

    .line 240
    if-eqz p1, :cond_d

    .line 241
    .line 242
    check-cast p2, Landroid/view/Surface;

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_d
    move-object p2, v4

    .line 246
    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k;->J0:Landroid/view/Surface;

    .line 247
    .line 248
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/k;->z0:Lcom/google/android/gms/internal/ads/x;

    .line 249
    .line 250
    if-eq p1, p2, :cond_1a

    .line 251
    .line 252
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/k;->J0:Landroid/view/Surface;

    .line 253
    .line 254
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 255
    .line 256
    if-nez p1, :cond_f

    .line 257
    .line 258
    iget-object p1, v3, Lcom/google/android/gms/internal/ads/n;->b:LU0/I;

    .line 259
    .line 260
    iget-object v6, p1, LU0/I;->b:Landroid/view/Surface;

    .line 261
    .line 262
    if-ne v6, p2, :cond_e

    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_e
    invoke-virtual {p1}, LU0/I;->f()V

    .line 266
    .line 267
    .line 268
    iput-object p2, p1, LU0/I;->b:Landroid/view/Surface;

    .line 269
    .line 270
    invoke-virtual {p1, v2}, LU0/I;->h(Z)V

    .line 271
    .line 272
    .line 273
    :goto_4
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/n;->f(I)V

    .line 274
    .line 275
    .line 276
    :cond_f
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/k;->M0:Z

    .line 277
    .line 278
    iget p1, p0, Lcom/google/android/gms/internal/ads/aK;->h:I

    .line 279
    .line 280
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/VM;->G:Lcom/google/android/gms/internal/ads/MM;

    .line 281
    .line 282
    if-eqz v6, :cond_16

    .line 283
    .line 284
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 285
    .line 286
    if-nez v7, :cond_16

    .line 287
    .line 288
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/VM;->N:Lcom/google/android/gms/internal/ads/PM;

    .line 289
    .line 290
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/k;->J0:Landroid/view/Surface;

    .line 294
    .line 295
    if-nez v8, :cond_11

    .line 296
    .line 297
    sget v8, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 298
    .line 299
    if-lt v8, v0, :cond_10

    .line 300
    .line 301
    iget-boolean v8, v7, Lcom/google/android/gms/internal/ads/PM;->h:Z

    .line 302
    .line 303
    if-eqz v8, :cond_10

    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_10
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/k;->v0(Lcom/google/android/gms/internal/ads/PM;)Z

    .line 307
    .line 308
    .line 309
    move-result v8

    .line 310
    if-eqz v8, :cond_12

    .line 311
    .line 312
    :cond_11
    :goto_5
    const/4 v1, 0x1

    .line 313
    :cond_12
    sget v8, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 314
    .line 315
    const/16 v9, 0x17

    .line 316
    .line 317
    if-lt v8, v9, :cond_15

    .line 318
    .line 319
    if-eqz v1, :cond_15

    .line 320
    .line 321
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/k;->E0:Z

    .line 322
    .line 323
    if-nez v1, :cond_15

    .line 324
    .line 325
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/k;->q0(Lcom/google/android/gms/internal/ads/PM;)Landroid/view/Surface;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    if-lt v8, v9, :cond_13

    .line 330
    .line 331
    if-eqz v1, :cond_13

    .line 332
    .line 333
    invoke-interface {v6, v1}, Lcom/google/android/gms/internal/ads/MM;->b(Landroid/view/Surface;)V

    .line 334
    .line 335
    .line 336
    goto :goto_6

    .line 337
    :cond_13
    if-lt v8, v0, :cond_14

    .line 338
    .line 339
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/MM;->zzi()V

    .line 340
    .line 341
    .line 342
    goto :goto_6

    .line 343
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 344
    .line 345
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 346
    .line 347
    .line 348
    throw p1

    .line 349
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->H()V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->D()V

    .line 353
    .line 354
    .line 355
    :cond_16
    :goto_6
    if-eqz p2, :cond_19

    .line 356
    .line 357
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/k;->X0:Lcom/google/android/gms/internal/ads/th;

    .line 358
    .line 359
    if-eqz p2, :cond_17

    .line 360
    .line 361
    invoke-virtual {v5, p2}, Lcom/google/android/gms/internal/ads/x;->p(Lcom/google/android/gms/internal/ads/th;)V

    .line 362
    .line 363
    .line 364
    :cond_17
    const/4 p2, 0x2

    .line 365
    if-ne p1, p2, :cond_1c

    .line 366
    .line 367
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 368
    .line 369
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    if-eqz p1, :cond_18

    .line 375
    .line 376
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/f;->m:Lcom/google/android/gms/internal/ads/g;

    .line 377
    .line 378
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/g;->b:Lcom/google/android/gms/internal/ads/n;

    .line 379
    .line 380
    iput-boolean v2, p1, Lcom/google/android/gms/internal/ads/n;->i:Z

    .line 381
    .line 382
    iput-wide v0, p1, Lcom/google/android/gms/internal/ads/n;->h:J

    .line 383
    .line 384
    return-void

    .line 385
    :cond_18
    iput-boolean v2, v3, Lcom/google/android/gms/internal/ads/n;->i:Z

    .line 386
    .line 387
    iput-wide v0, v3, Lcom/google/android/gms/internal/ads/n;->h:J

    .line 388
    .line 389
    return-void

    .line 390
    :cond_19
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/k;->X0:Lcom/google/android/gms/internal/ads/th;

    .line 391
    .line 392
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 393
    .line 394
    if-eqz p1, :cond_1c

    .line 395
    .line 396
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/f;->m:Lcom/google/android/gms/internal/ads/g;

    .line 397
    .line 398
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    .line 400
    .line 401
    sget-object p2, Lcom/google/android/gms/internal/ads/Br;->c:Lcom/google/android/gms/internal/ads/Br;

    .line 402
    .line 403
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 404
    .line 405
    .line 406
    iput-object v4, p1, Lcom/google/android/gms/internal/ads/g;->j:Landroid/util/Pair;

    .line 407
    .line 408
    return-void

    .line 409
    :cond_1a
    if-eqz p2, :cond_1c

    .line 410
    .line 411
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k;->X0:Lcom/google/android/gms/internal/ads/th;

    .line 412
    .line 413
    if-eqz p1, :cond_1b

    .line 414
    .line 415
    invoke-virtual {v5, p1}, Lcom/google/android/gms/internal/ads/x;->p(Lcom/google/android/gms/internal/ads/th;)V

    .line 416
    .line 417
    .line 418
    :cond_1b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k;->J0:Landroid/view/Surface;

    .line 419
    .line 420
    if-eqz p1, :cond_1c

    .line 421
    .line 422
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/k;->M0:Z

    .line 423
    .line 424
    if-eqz p2, :cond_1c

    .line 425
    .line 426
    iget-object p2, v5, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 427
    .line 428
    check-cast p2, Landroid/os/Handler;

    .line 429
    .line 430
    if-eqz p2, :cond_1c

    .line 431
    .line 432
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 433
    .line 434
    .line 435
    move-result-wide v0

    .line 436
    new-instance v2, Lcom/google/android/gms/internal/ads/v;

    .line 437
    .line 438
    invoke-direct {v2, v5, p1, v0, v1}, Lcom/google/android/gms/internal/ads/v;-><init>(Lcom/google/android/gms/internal/ads/x;Landroid/view/Surface;J)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 442
    .line 443
    .line 444
    :cond_1c
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/k;->y0:Z

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/f;->m:Lcom/google/android/gms/internal/ads/g;

    .line 10
    .line 11
    iget v1, v0, Lcom/google/android/gms/internal/ads/g;->l:I

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/g;->i:Lcom/google/android/gms/internal/ads/ts;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ts;->a:Landroid/os/Handler;

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/g;->j:Landroid/util/Pair;

    .line 28
    .line 29
    iput v2, v0, Lcom/google/android/gms/internal/ads/g;->l:I

    .line 30
    .line 31
    :cond_2
    :goto_0
    return-void
.end method

.method public final c0(Lcom/google/android/gms/internal/ads/VJ;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/k;->F0:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/VJ;->h:Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x7

    .line 16
    if-lt v0, v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/4 v5, 0x0

    .line 39
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 40
    .line 41
    .line 42
    const/16 v6, -0x4b

    .line 43
    .line 44
    if-ne v0, v6, :cond_2

    .line 45
    .line 46
    const/16 v0, 0x3c

    .line 47
    .line 48
    if-ne v1, v0, :cond_2

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    if-ne v2, v0, :cond_2

    .line 52
    .line 53
    const/4 v1, 0x4

    .line 54
    if-ne v3, v1, :cond_2

    .line 55
    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    if-ne v4, v0, :cond_2

    .line 59
    .line 60
    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    new-array v0, v0, [B

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/VM;->G:Lcom/google/android/gms/internal/ads/MM;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    new-instance v1, Landroid/os/Bundle;

    .line 78
    .line 79
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v2, "hdr10-plus-info"

    .line 83
    .line 84
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 85
    .line 86
    .line 87
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/MM;->i(Landroid/os/Bundle;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->W()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->H()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    .line 13
    .line 14
    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->v0:Lcom/google/android/gms/internal/ads/yM;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/k;->H0:Z

    .line 17
    .line 18
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/k;->b1:J

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k;->K0:Lcom/google/android/gms/internal/ads/l;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/l;->release()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/k;->K0:Lcom/google/android/gms/internal/ads/l;

    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :catchall_0
    move-exception v4

    .line 31
    goto :goto_0

    .line 32
    :catchall_1
    move-exception v4

    .line 33
    :try_start_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->v0:Lcom/google/android/gms/internal/ads/yM;

    .line 34
    .line 35
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    :goto_0
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/k;->H0:Z

    .line 37
    .line 38
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/k;->b1:J

    .line 39
    .line 40
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k;->K0:Lcom/google/android/gms/internal/ads/l;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/l;->release()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/k;->K0:Lcom/google/android/gms/internal/ads/l;

    .line 48
    .line 49
    :cond_1
    throw v4
.end method

.method public final d0(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    const-string v0, "MediaCodecVideoRenderer"

    .line 2
    .line 3
    const-string v1, "Video codec error"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Zo;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k;->z0:Lcom/google/android/gms/internal/ads/x;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Landroid/os/Handler;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    new-instance v2, Lcom/google/android/gms/internal/ads/Ha;

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    invoke-direct {v2, v3, v0, p1}, Lcom/google/android/gms/internal/ads/Ha;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/k;->Q0:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aK;->g:Lcom/google/android/gms/internal/ads/pl;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/k;->P0:J

    .line 14
    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/k;->T0:J

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/gms/internal/ads/k;->U0:I

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/f;->m:Lcom/google/android/gms/internal/ads/g;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/g;->b:Lcom/google/android/gms/internal/ads/n;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/n;->b()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k;->B0:Lcom/google/android/gms/internal/ads/n;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/n;->b()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final e0(Ljava/lang/String;JJ)V
    .locals 10

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k;->z0:Lcom/google/android/gms/internal/ads/x;

    .line 2
    .line 3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v8, v0

    .line 6
    check-cast v8, Landroid/os/Handler;

    .line 7
    .line 8
    if-eqz v8, :cond_0

    .line 9
    .line 10
    new-instance v9, Lcom/google/android/gms/internal/ads/t;

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    move-object v0, v9

    .line 14
    move-object v2, p1

    .line 15
    move-wide v3, p2

    .line 16
    move-wide v5, p4

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/t;-><init>(Ljava/lang/Object;Ljava/lang/String;JJI)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k;->p0(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/k;->E0:Z

    .line 28
    .line 29
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/VM;->N:Lcom/google/android/gms/internal/ads/PM;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    sget p2, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 35
    .line 36
    const/16 p3, 0x1d

    .line 37
    .line 38
    const/4 p4, 0x0

    .line 39
    if-lt p2, p3, :cond_4

    .line 40
    .line 41
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/PM;->b:Ljava/lang/String;

    .line 42
    .line 43
    const-string p3, "video/x-vnd.on2.vp9"

    .line 44
    .line 45
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-eqz p2, :cond_4

    .line 50
    .line 51
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/PM;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    iget-object p1, p1, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 56
    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    :cond_1
    new-array p1, p4, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 60
    .line 61
    :cond_2
    array-length p2, p1

    .line 62
    const/4 p3, 0x0

    .line 63
    :goto_0
    if-ge p3, p2, :cond_4

    .line 64
    .line 65
    aget-object p5, p1, p3

    .line 66
    .line 67
    iget p5, p5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 68
    .line 69
    const/16 v0, 0x4000

    .line 70
    .line 71
    if-ne p5, v0, :cond_3

    .line 72
    .line 73
    const/4 p4, 0x1

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    add-int/lit8 p3, p3, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    :goto_1
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/k;->F0:Z

    .line 79
    .line 80
    return-void
.end method

.method public final f()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/k;->Q0:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/k;->z0:Lcom/google/android/gms/internal/ads/x;

    .line 5
    .line 6
    if-lez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aK;->g:Lcom/google/android/gms/internal/ads/pl;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/k;->P0:J

    .line 18
    .line 19
    sub-long v5, v3, v5

    .line 20
    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/ads/k;->Q0:I

    .line 22
    .line 23
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v7, Landroid/os/Handler;

    .line 26
    .line 27
    if-eqz v7, :cond_0

    .line 28
    .line 29
    new-instance v8, Lcom/google/android/gms/internal/ads/u;

    .line 30
    .line 31
    invoke-direct {v8, v2, v0, v5, v6}, Lcom/google/android/gms/internal/ads/u;-><init>(Lcom/google/android/gms/internal/ads/x;IJ)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/k;->Q0:I

    .line 38
    .line 39
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/k;->P0:J

    .line 40
    .line 41
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/k;->U0:I

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/k;->T0:J

    .line 46
    .line 47
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v5, Landroid/os/Handler;

    .line 50
    .line 51
    if-eqz v5, :cond_2

    .line 52
    .line 53
    new-instance v6, Lcom/google/android/gms/internal/ads/u;

    .line 54
    .line 55
    invoke-direct {v6, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ads/u;-><init>(Lcom/google/android/gms/internal/ads/x;JI)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    :cond_2
    const-wide/16 v2, 0x0

    .line 62
    .line 63
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/k;->T0:J

    .line 64
    .line 65
    iput v1, p0, Lcom/google/android/gms/internal/ads/k;->U0:I

    .line 66
    .line 67
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/f;->m:Lcom/google/android/gms/internal/ads/g;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/g;->b:Lcom/google/android/gms/internal/ads/n;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/n;->c()V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k;->B0:Lcom/google/android/gms/internal/ads/n;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/n;->c()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final f0(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k;->z0:Lcom/google/android/gms/internal/ads/x;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/os/Handler;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v2, Lcom/google/android/gms/internal/ads/Ha;

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    invoke-direct {v2, v3, v0, p1}, Lcom/google/android/gms/internal/ads/Ha;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final g([Lcom/google/android/gms/internal/ads/p0;JJLcom/google/android/gms/internal/ads/wN;)V
    .locals 2

    .line 1
    invoke-super/range {p0 .. p6}, Lcom/google/android/gms/internal/ads/VM;->g([Lcom/google/android/gms/internal/ads/p0;JJLcom/google/android/gms/internal/ads/wN;)V

    .line 2
    .line 3
    .line 4
    iget-wide p4, p0, Lcom/google/android/gms/internal/ads/k;->b1:J

    .line 5
    .line 6
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    cmp-long p1, p4, v0

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/k;->b1:J

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aK;->p:Lcom/google/android/gms/internal/ads/Ie;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/k;->c1:J

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object p2, p6, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 29
    .line 30
    new-instance p3, Lcom/google/android/gms/internal/ads/je;

    .line 31
    .line 32
    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/je;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/je;->d:J

    .line 40
    .line 41
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/k;->c1:J

    .line 42
    .line 43
    return-void
.end method

.method public final g0(Lcom/google/android/gms/internal/ads/p0;Landroid/media/MediaFormat;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->G:Lcom/google/android/gms/internal/ads/MM;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/ads/k;->N0:I

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/MM;->e(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const-string v0, "crop-right"

    .line 14
    .line 15
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string v2, "crop-top"

    .line 20
    .line 21
    const-string v3, "crop-bottom"

    .line 22
    .line 23
    const-string v4, "crop-left"

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    const/4 v6, 0x0

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v1, 0x0

    .line 50
    :goto_0
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    sub-int/2addr v0, v4

    .line 61
    add-int/2addr v0, v5

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const-string v0, "width"

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    :goto_1
    if-eqz v1, :cond_3

    .line 70
    .line 71
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    sub-int/2addr v1, p2

    .line 80
    add-int/2addr v1, v5

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    const-string v1, "height"

    .line 83
    .line 84
    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    :goto_2
    iget p2, p1, Lcom/google/android/gms/internal/ads/p0;->w:F

    .line 89
    .line 90
    const/16 v2, 0x5a

    .line 91
    .line 92
    iget v3, p1, Lcom/google/android/gms/internal/ads/p0;->v:I

    .line 93
    .line 94
    if-eq v3, v2, :cond_4

    .line 95
    .line 96
    const/16 v2, 0x10e

    .line 97
    .line 98
    if-ne v3, v2, :cond_5

    .line 99
    .line 100
    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 101
    .line 102
    div-float p2, v2, p2

    .line 103
    .line 104
    move v7, v1

    .line 105
    move v1, v0

    .line 106
    move v0, v7

    .line 107
    :cond_5
    new-instance v2, Lcom/google/android/gms/internal/ads/th;

    .line 108
    .line 109
    invoke-direct {v2, p2, v0, v1}, Lcom/google/android/gms/internal/ads/th;-><init>(FII)V

    .line 110
    .line 111
    .line 112
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/k;->W0:Lcom/google/android/gms/internal/ads/th;

    .line 113
    .line 114
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 115
    .line 116
    if-eqz v2, :cond_8

    .line 117
    .line 118
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/k;->d1:Z

    .line 119
    .line 120
    if-eqz v3, :cond_8

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/p0;->b()Lcom/google/android/gms/internal/ads/K;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iput v0, p1, Lcom/google/android/gms/internal/ads/K;->r:I

    .line 127
    .line 128
    iput v1, p1, Lcom/google/android/gms/internal/ads/K;->s:I

    .line 129
    .line 130
    iput p2, p1, Lcom/google/android/gms/internal/ads/K;->v:F

    .line 131
    .line 132
    new-instance p2, Lcom/google/android/gms/internal/ads/p0;

    .line 133
    .line 134
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 135
    .line 136
    .line 137
    invoke-static {v6}, Lo3/r;->M(Z)V

    .line 138
    .line 139
    .line 140
    iget-object p1, v2, Lcom/google/android/gms/internal/ads/f;->m:Lcom/google/android/gms/internal/ads/g;

    .line 141
    .line 142
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/g;->b:Lcom/google/android/gms/internal/ads/n;

    .line 143
    .line 144
    iget v0, p2, Lcom/google/android/gms/internal/ads/p0;->u:F

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/n;->d(F)V

    .line 147
    .line 148
    .line 149
    iput-object p2, v2, Lcom/google/android/gms/internal/ads/f;->d:Lcom/google/android/gms/internal/ads/p0;

    .line 150
    .line 151
    iget-boolean p1, v2, Lcom/google/android/gms/internal/ads/f;->i:Z

    .line 152
    .line 153
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    if-nez p1, :cond_6

    .line 159
    .line 160
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/f;->a()V

    .line 161
    .line 162
    .line 163
    iput-boolean v5, v2, Lcom/google/android/gms/internal/ads/f;->i:Z

    .line 164
    .line 165
    iput-wide v0, v2, Lcom/google/android/gms/internal/ads/f;->j:J

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_6
    iget-wide p1, v2, Lcom/google/android/gms/internal/ads/f;->h:J

    .line 169
    .line 170
    cmp-long v3, p1, v0

    .line 171
    .line 172
    if-eqz v3, :cond_7

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_7
    const/4 v5, 0x0

    .line 176
    :goto_3
    invoke-static {v5}, Lo3/r;->M(Z)V

    .line 177
    .line 178
    .line 179
    iget-wide p1, v2, Lcom/google/android/gms/internal/ads/f;->h:J

    .line 180
    .line 181
    iput-wide p1, v2, Lcom/google/android/gms/internal/ads/f;->j:J

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/k;->B0:Lcom/google/android/gms/internal/ads/n;

    .line 185
    .line 186
    iget p1, p1, Lcom/google/android/gms/internal/ads/p0;->u:F

    .line 187
    .line 188
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/n;->d(F)V

    .line 189
    .line 190
    .line 191
    :goto_4
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/k;->d1:Z

    .line 192
    .line 193
    return-void
.end method

.method public final h0()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/VM;->r0:Lcom/google/android/gms/internal/ads/UM;

    .line 6
    .line 7
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/UM;->b:J

    .line 8
    .line 9
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/UM;->c:J

    .line 10
    .line 11
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/k;->b1:J

    .line 12
    .line 13
    neg-long v6, v6

    .line 14
    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/aK;->l:J

    .line 15
    .line 16
    move-wide v1, v2

    .line 17
    move-wide v3, v4

    .line 18
    move-wide v5, v6

    .line 19
    move-wide v7, v8

    .line 20
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/f;->f(JJJJ)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x2

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k;->B0:Lcom/google/android/gms/internal/ads/n;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/n;->f(I)V

    .line 28
    .line 29
    .line 30
    :goto_0
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/k;->d1:Z

    .line 32
    .line 33
    return-void
.end method

.method public final j0(JJLcom/google/android/gms/internal/ads/MM;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/p0;)Z
    .locals 19

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p5

    .line 4
    .line 5
    move/from16 v4, p7

    .line 6
    .line 7
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/VM;->r0:Lcom/google/android/gms/internal/ads/UM;

    .line 11
    .line 12
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/UM;->c:J

    .line 13
    .line 14
    sub-long v5, p10, v2

    .line 15
    .line 16
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 17
    .line 18
    const/4 v14, 0x0

    .line 19
    if-eqz v8, :cond_0

    .line 20
    .line 21
    iget-wide v1, v7, Lcom/google/android/gms/internal/ads/k;->b1:J

    .line 22
    .line 23
    neg-long v1, v1

    .line 24
    add-long v9, p10, v1

    .line 25
    .line 26
    :try_start_0
    new-instance v16, Lcom/google/android/gms/internal/ads/i;

    .line 27
    .line 28
    move-object/from16 v1, v16

    .line 29
    .line 30
    move-object/from16 v2, p0

    .line 31
    .line 32
    move-object/from16 v3, p5

    .line 33
    .line 34
    move/from16 v4, p7

    .line 35
    .line 36
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/i;-><init>(Lcom/google/android/gms/internal/ads/k;Lcom/google/android/gms/internal/ads/MM;IJ)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/z; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    .line 38
    .line 39
    move/from16 v11, p13

    .line 40
    .line 41
    move-wide/from16 v12, p1

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    move-wide/from16 v14, p3

    .line 45
    .line 46
    :try_start_1
    invoke-virtual/range {v8 .. v16}, Lcom/google/android/gms/internal/ads/f;->g(JZJJLcom/google/android/gms/internal/ads/i;)Z

    .line 47
    .line 48
    .line 49
    move-result v0
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/z; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    return v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    goto :goto_0

    .line 53
    :catch_1
    move-exception v0

    .line 54
    const/4 v2, 0x0

    .line 55
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/z;->G:Lcom/google/android/gms/internal/ads/p0;

    .line 56
    .line 57
    const/16 v3, 0x1b59

    .line 58
    .line 59
    invoke-virtual {v7, v3, v1, v0, v2}, Lcom/google/android/gms/internal/ads/aK;->s(ILcom/google/android/gms/internal/ads/p0;Ljava/lang/Exception;Z)Lcom/google/android/gms/internal/ads/jK;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    throw v0

    .line 64
    :cond_0
    const/4 v2, 0x0

    .line 65
    iget-object v3, v7, Lcom/google/android/gms/internal/ads/k;->C0:LU0/C;

    .line 66
    .line 67
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/k;->B0:Lcom/google/android/gms/internal/ads/n;

    .line 68
    .line 69
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/UM;->b:J

    .line 70
    .line 71
    move-wide/from16 v9, p10

    .line 72
    .line 73
    move-wide/from16 v11, p1

    .line 74
    .line 75
    move-wide/from16 v13, p3

    .line 76
    .line 77
    move-wide v15, v5

    .line 78
    move/from16 v17, p13

    .line 79
    .line 80
    move-object/from16 v18, v3

    .line 81
    .line 82
    invoke-virtual/range {v8 .. v18}, Lcom/google/android/gms/internal/ads/n;->a(JJJJZLU0/C;)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    const/4 v3, 0x4

    .line 87
    if-ne v1, v3, :cond_1

    .line 88
    .line 89
    return v2

    .line 90
    :cond_1
    const/4 v3, 0x1

    .line 91
    if-eqz p12, :cond_3

    .line 92
    .line 93
    if-eqz p13, :cond_2

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v7, v0, v4}, Lcom/google/android/gms/internal/ads/k;->m0(Lcom/google/android/gms/internal/ads/MM;I)V

    .line 97
    .line 98
    .line 99
    return v3

    .line 100
    :cond_3
    :goto_1
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/k;->J0:Landroid/view/Surface;

    .line 101
    .line 102
    iget-object v6, v7, Lcom/google/android/gms/internal/ads/k;->C0:LU0/C;

    .line 103
    .line 104
    if-nez v5, :cond_5

    .line 105
    .line 106
    iget-wide v8, v6, LU0/C;->a:J

    .line 107
    .line 108
    const-wide/16 v10, 0x7530

    .line 109
    .line 110
    cmp-long v1, v8, v10

    .line 111
    .line 112
    if-gez v1, :cond_4

    .line 113
    .line 114
    invoke-virtual {v7, v0, v4}, Lcom/google/android/gms/internal/ads/k;->m0(Lcom/google/android/gms/internal/ads/MM;I)V

    .line 115
    .line 116
    .line 117
    iget-wide v0, v6, LU0/C;->a:J

    .line 118
    .line 119
    invoke-virtual {v7, v0, v1}, Lcom/google/android/gms/internal/ads/k;->o0(J)V

    .line 120
    .line 121
    .line 122
    return v3

    .line 123
    :cond_4
    return v2

    .line 124
    :cond_5
    if-eqz v1, :cond_b

    .line 125
    .line 126
    if-eq v1, v3, :cond_9

    .line 127
    .line 128
    const/4 v5, 0x2

    .line 129
    if-eq v1, v5, :cond_8

    .line 130
    .line 131
    const/4 v5, 0x3

    .line 132
    if-eq v1, v5, :cond_7

    .line 133
    .line 134
    const/4 v0, 0x5

    .line 135
    if-ne v1, v0, :cond_6

    .line 136
    .line 137
    return v2

    .line 138
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 139
    .line 140
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw v0

    .line 148
    :cond_7
    invoke-virtual {v7, v0, v4}, Lcom/google/android/gms/internal/ads/k;->m0(Lcom/google/android/gms/internal/ads/MM;I)V

    .line 149
    .line 150
    .line 151
    iget-wide v0, v6, LU0/C;->a:J

    .line 152
    .line 153
    invoke-virtual {v7, v0, v1}, Lcom/google/android/gms/internal/ads/k;->o0(J)V

    .line 154
    .line 155
    .line 156
    return v3

    .line 157
    :cond_8
    const-string v1, "dropVideoBuffer"

    .line 158
    .line 159
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/MM;->O(I)V

    .line 163
    .line 164
    .line 165
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7, v2, v3}, Lcom/google/android/gms/internal/ads/k;->n0(II)V

    .line 169
    .line 170
    .line 171
    iget-wide v0, v6, LU0/C;->a:J

    .line 172
    .line 173
    invoke-virtual {v7, v0, v1}, Lcom/google/android/gms/internal/ads/k;->o0(J)V

    .line 174
    .line 175
    .line 176
    return v3

    .line 177
    :cond_9
    iget-wide v1, v6, LU0/C;->b:J

    .line 178
    .line 179
    iget-wide v5, v6, LU0/C;->a:J

    .line 180
    .line 181
    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/k;->V0:J

    .line 182
    .line 183
    cmp-long v10, v1, v8

    .line 184
    .line 185
    if-nez v10, :cond_a

    .line 186
    .line 187
    invoke-virtual {v7, v0, v4}, Lcom/google/android/gms/internal/ads/k;->m0(Lcom/google/android/gms/internal/ads/MM;I)V

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_a
    invoke-virtual {v7, v0, v4, v1, v2}, Lcom/google/android/gms/internal/ads/k;->u0(Lcom/google/android/gms/internal/ads/MM;IJ)V

    .line 192
    .line 193
    .line 194
    :goto_2
    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/ads/k;->o0(J)V

    .line 195
    .line 196
    .line 197
    iput-wide v1, v7, Lcom/google/android/gms/internal/ads/k;->V0:J

    .line 198
    .line 199
    return v3

    .line 200
    :cond_b
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/aK;->g:Lcom/google/android/gms/internal/ads/pl;

    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 206
    .line 207
    .line 208
    move-result-wide v1

    .line 209
    invoke-virtual {v7, v0, v4, v1, v2}, Lcom/google/android/gms/internal/ads/k;->u0(Lcom/google/android/gms/internal/ads/MM;IJ)V

    .line 210
    .line 211
    .line 212
    iget-wide v0, v6, LU0/C;->a:J

    .line 213
    .line 214
    invoke-virtual {v7, v0, v1}, Lcom/google/android/gms/internal/ads/k;->o0(J)V

    .line 215
    .line 216
    .line 217
    return v3
.end method

.method public final k(FF)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/VM;->k(FF)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz p2, :cond_2

    .line 12
    .line 13
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/f;->m:Lcom/google/android/gms/internal/ads/g;

    .line 14
    .line 15
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/g;->c:Lcom/google/android/gms/internal/ads/s;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    cmpl-float v5, p1, v5

    .line 22
    .line 23
    if-lez v5, :cond_0

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v5, 0x0

    .line 28
    :goto_0
    invoke-static {v5}, Lo3/r;->J(Z)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/s;->a:Lcom/google/android/gms/internal/ads/n;

    .line 32
    .line 33
    iget v5, p2, Lcom/google/android/gms/internal/ads/n;->j:F

    .line 34
    .line 35
    cmpl-float v5, p1, v5

    .line 36
    .line 37
    if-nez v5, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iput p1, p2, Lcom/google/android/gms/internal/ads/n;->j:F

    .line 41
    .line 42
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/n;->b:LU0/I;

    .line 43
    .line 44
    iput p1, p2, LU0/I;->f:F

    .line 45
    .line 46
    iput-wide v2, p2, LU0/I;->j:J

    .line 47
    .line 48
    iput-wide v0, p2, LU0/I;->m:J

    .line 49
    .line 50
    iput-wide v0, p2, LU0/I;->k:J

    .line 51
    .line 52
    invoke-virtual {p2, v4}, LU0/I;->h(Z)V

    .line 53
    .line 54
    .line 55
    :goto_1
    return-void

    .line 56
    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/k;->B0:Lcom/google/android/gms/internal/ads/n;

    .line 57
    .line 58
    iget v5, p2, Lcom/google/android/gms/internal/ads/n;->j:F

    .line 59
    .line 60
    cmpl-float v5, p1, v5

    .line 61
    .line 62
    if-nez v5, :cond_3

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    iput p1, p2, Lcom/google/android/gms/internal/ads/n;->j:F

    .line 66
    .line 67
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/n;->b:LU0/I;

    .line 68
    .line 69
    iput p1, p2, LU0/I;->f:F

    .line 70
    .line 71
    iput-wide v2, p2, LU0/I;->j:J

    .line 72
    .line 73
    iput-wide v0, p2, LU0/I;->m:J

    .line 74
    .line 75
    iput-wide v0, p2, LU0/I;->k:J

    .line 76
    .line 77
    invoke-virtual {p2, v4}, LU0/I;->h(Z)V

    .line 78
    .line 79
    .line 80
    :goto_2
    return-void
.end method

.method public final l0()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "MediaCodecVideoRenderer"

    return-object v0
.end method

.method public final m0(Lcom/google/android/gms/internal/ads/MM;I)V
    .locals 1

    .line 1
    const-string v0, "skipVideoBuffer"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/MM;->O(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/VM;->q0:Lcom/google/android/gms/internal/ads/cK;

    .line 13
    .line 14
    iget p2, p1, Lcom/google/android/gms/internal/ads/cK;->f:I

    .line 15
    .line 16
    add-int/lit8 p2, p2, 0x1

    .line 17
    .line 18
    iput p2, p1, Lcom/google/android/gms/internal/ads/cK;->f:I

    .line 19
    .line 20
    return-void
.end method

.method public final n(JJ)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/VM;->n(JJ)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/f;->d(JJ)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/z; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p1

    .line 13
    const/16 p2, 0x1b59

    .line 14
    .line 15
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/z;->G:Lcom/google/android/gms/internal/ads/p0;

    .line 16
    .line 17
    const/4 p4, 0x0

    .line 18
    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/google/android/gms/internal/ads/aK;->s(ILcom/google/android/gms/internal/ads/p0;Ljava/lang/Exception;Z)Lcom/google/android/gms/internal/ads/jK;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    throw p1

    .line 23
    :cond_0
    return-void
.end method

.method public final n0(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->q0:Lcom/google/android/gms/internal/ads/cK;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/cK;->h:I

    .line 4
    .line 5
    add-int/2addr v1, p1

    .line 6
    iput v1, v0, Lcom/google/android/gms/internal/ads/cK;->h:I

    .line 7
    .line 8
    iget v1, v0, Lcom/google/android/gms/internal/ads/cK;->g:I

    .line 9
    .line 10
    add-int/2addr p1, p2

    .line 11
    add-int/2addr v1, p1

    .line 12
    iput v1, v0, Lcom/google/android/gms/internal/ads/cK;->g:I

    .line 13
    .line 14
    iget p2, p0, Lcom/google/android/gms/internal/ads/k;->Q0:I

    .line 15
    .line 16
    add-int/2addr p2, p1

    .line 17
    iput p2, p0, Lcom/google/android/gms/internal/ads/k;->Q0:I

    .line 18
    .line 19
    iget p2, p0, Lcom/google/android/gms/internal/ads/k;->R0:I

    .line 20
    .line 21
    add-int/2addr p2, p1

    .line 22
    iput p2, p0, Lcom/google/android/gms/internal/ads/k;->R0:I

    .line 23
    .line 24
    iget p1, v0, Lcom/google/android/gms/internal/ads/cK;->i:I

    .line 25
    .line 26
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, v0, Lcom/google/android/gms/internal/ads/cK;->i:I

    .line 31
    .line 32
    return-void
.end method

.method public final o()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/VM;->o0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    nop

    .line 12
    :cond_0
    return v1
.end method

.method public final o0(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->q0:Lcom/google/android/gms/internal/ads/cK;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/cK;->k:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/cK;->k:J

    iget v1, v0, Lcom/google/android/gms/internal/ads/cK;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/cK;->l:I

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/k;->T0:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/k;->T0:J

    iget p1, p0, Lcom/google/android/gms/internal/ads/k;->U0:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/k;->U0:I

    return-void
.end method

.method public final p()Z
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/VM;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/f;->m:Lcom/google/android/gms/internal/ads/g;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/g;->c:Lcom/google/android/gms/internal/ads/s;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/s;->a:Lcom/google/android/gms/internal/ads/n;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/n;->e(Z)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0

    .line 21
    :cond_0
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/VM;->G:Lcom/google/android/gms/internal/ads/MM;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k;->J0:Landroid/view/Surface;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x1

    .line 33
    return v0

    .line 34
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k;->B0:Lcom/google/android/gms/internal/ads/n;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/n;->e(Z)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    return v0
.end method

.method public final q0(Lcom/google/android/gms/internal/ads/PM;)Landroid/view/Surface;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_b

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k;->J0:Landroid/view/Surface;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 13
    .line 14
    const/16 v3, 0x23

    .line 15
    .line 16
    if-lt v0, v3, :cond_1

    .line 17
    .line 18
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/PM;->h:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    return-object v2

    .line 23
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/k;->v0(Lcom/google/android/gms/internal/ads/PM;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Lo3/r;->M(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k;->K0:Lcom/google/android/gms/internal/ads/l;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/PM;->f:Z

    .line 35
    .line 36
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/l;->G:Z

    .line 37
    .line 38
    if-eq v4, v3, :cond_2

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l;->release()V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/k;->K0:Lcom/google/android/gms/internal/ads/l;

    .line 46
    .line 47
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k;->K0:Lcom/google/android/gms/internal/ads/l;

    .line 48
    .line 49
    if-nez v0, :cond_a

    .line 50
    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k;->x0:Landroid/content/Context;

    .line 52
    .line 53
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/PM;->f:Z

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/l;->a(Landroid/content/Context;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    :goto_0
    const/4 v0, 0x1

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    const/4 v0, 0x0

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    sget v0, Lcom/google/android/gms/internal/ads/l;->J:I

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :goto_1
    invoke-static {v0}, Lo3/r;->M(Z)V

    .line 72
    .line 73
    .line 74
    new-instance v0, LU0/l;

    .line 75
    .line 76
    invoke-direct {v0, v2}, LU0/l;-><init>(I)V

    .line 77
    .line 78
    .line 79
    if-eqz p1, :cond_5

    .line 80
    .line 81
    sget p1, Lcom/google/android/gms/internal/ads/l;->J:I

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_5
    const/4 p1, 0x0

    .line 85
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 86
    .line 87
    .line 88
    new-instance v3, Landroid/os/Handler;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-direct {v3, v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 95
    .line 96
    .line 97
    iput-object v3, v0, LU0/l;->H:Landroid/os/Handler;

    .line 98
    .line 99
    new-instance v4, Lcom/google/android/gms/internal/ads/Jm;

    .line 100
    .line 101
    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/Jm;-><init>(Landroid/os/Handler;)V

    .line 102
    .line 103
    .line 104
    iput-object v4, v0, LU0/l;->K:Ljava/lang/Object;

    .line 105
    .line 106
    monitor-enter v0

    .line 107
    :try_start_0
    iget-object v3, v0, LU0/l;->H:Landroid/os/Handler;

    .line 108
    .line 109
    invoke-virtual {v3, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 114
    .line 115
    .line 116
    :goto_3
    iget-object p1, v0, LU0/l;->L:Landroid/view/Surface;

    .line 117
    .line 118
    check-cast p1, Lcom/google/android/gms/internal/ads/l;

    .line 119
    .line 120
    if-nez p1, :cond_6

    .line 121
    .line 122
    iget-object p1, v0, LU0/l;->J:Ljava/lang/RuntimeException;

    .line 123
    .line 124
    if-nez p1, :cond_6

    .line 125
    .line 126
    iget-object p1, v0, LU0/l;->I:Ljava/lang/Error;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .line 128
    if-nez p1, :cond_6

    .line 129
    .line 130
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :catchall_0
    move-exception p1

    .line 135
    goto :goto_4

    .line 136
    :catch_0
    const/4 v1, 0x1

    .line 137
    goto :goto_3

    .line 138
    :cond_6
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    if-eqz v1, :cond_7

    .line 140
    .line 141
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 146
    .line 147
    .line 148
    :cond_7
    iget-object p1, v0, LU0/l;->J:Ljava/lang/RuntimeException;

    .line 149
    .line 150
    if-nez p1, :cond_9

    .line 151
    .line 152
    iget-object p1, v0, LU0/l;->I:Ljava/lang/Error;

    .line 153
    .line 154
    if-nez p1, :cond_8

    .line 155
    .line 156
    iget-object p1, v0, LU0/l;->L:Landroid/view/Surface;

    .line 157
    .line 158
    check-cast p1, Lcom/google/android/gms/internal/ads/l;

    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/k;->K0:Lcom/google/android/gms/internal/ads/l;

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_8
    throw p1

    .line 167
    :cond_9
    throw p1

    .line 168
    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    throw p1

    .line 170
    :cond_a
    :goto_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k;->K0:Lcom/google/android/gms/internal/ads/l;

    .line 171
    .line 172
    return-object p1

    .line 173
    :cond_b
    invoke-static {v1}, Lo3/r;->M(Z)V

    .line 174
    .line 175
    .line 176
    invoke-static {v2}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    throw v2
.end method

.method public final u0(Lcom/google/android/gms/internal/ads/MM;IJ)V
    .locals 3

    .line 1
    const-string v0, "releaseOutputBuffer"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/MM;->d(IJ)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/VM;->q0:Lcom/google/android/gms/internal/ads/cK;

    .line 13
    .line 14
    iget p2, p1, Lcom/google/android/gms/internal/ads/cK;->e:I

    .line 15
    .line 16
    const/4 p3, 0x1

    .line 17
    add-int/2addr p2, p3

    .line 18
    iput p2, p1, Lcom/google/android/gms/internal/ads/cK;->e:I

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/google/android/gms/internal/ads/k;->R0:I

    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k;->W0:Lcom/google/android/gms/internal/ads/th;

    .line 28
    .line 29
    sget-object p2, Lcom/google/android/gms/internal/ads/th;->d:Lcom/google/android/gms/internal/ads/th;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/th;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/k;->z0:Lcom/google/android/gms/internal/ads/x;

    .line 36
    .line 37
    if-nez p2, :cond_0

    .line 38
    .line 39
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/k;->X0:Lcom/google/android/gms/internal/ads/th;

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/th;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-nez p2, :cond_0

    .line 46
    .line 47
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/k;->X0:Lcom/google/android/gms/internal/ads/th;

    .line 48
    .line 49
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/ads/x;->p(Lcom/google/android/gms/internal/ads/th;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k;->B0:Lcom/google/android/gms/internal/ads/n;

    .line 53
    .line 54
    iget p2, p1, Lcom/google/android/gms/internal/ads/n;->d:I

    .line 55
    .line 56
    const/4 v0, 0x3

    .line 57
    iput v0, p1, Lcom/google/android/gms/internal/ads/n;->d:I

    .line 58
    .line 59
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/n;->k:Lcom/google/android/gms/internal/ads/pl;

    .line 60
    .line 61
    check-cast v1, Lcom/google/android/gms/internal/ads/Nr;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 67
    .line 68
    .line 69
    move-result-wide v1

    .line 70
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Et;->t(J)J

    .line 71
    .line 72
    .line 73
    move-result-wide v1

    .line 74
    iput-wide v1, p1, Lcom/google/android/gms/internal/ads/n;->f:J

    .line 75
    .line 76
    if-eq p2, v0, :cond_2

    .line 77
    .line 78
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k;->J0:Landroid/view/Surface;

    .line 79
    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    iget-object p2, p4, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p2, Landroid/os/Handler;

    .line 85
    .line 86
    if-eqz p2, :cond_1

    .line 87
    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 89
    .line 90
    .line 91
    move-result-wide v0

    .line 92
    new-instance v2, Lcom/google/android/gms/internal/ads/v;

    .line 93
    .line 94
    invoke-direct {v2, p4, p1, v0, v1}, Lcom/google/android/gms/internal/ads/v;-><init>(Lcom/google/android/gms/internal/ads/x;Landroid/view/Surface;J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    .line 99
    .line 100
    :cond_1
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/k;->M0:Z

    .line 101
    .line 102
    :cond_2
    return-void
.end method

.method public final v0(Lcom/google/android/gms/internal/ads/PM;)Z
    .locals 3

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_2

    .line 7
    .line 8
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/PM;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k;->p0(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/PM;->f:Z

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k;->x0:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/l;->a(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return v0

    .line 31
    :cond_1
    const/4 v2, 0x1

    .line 32
    :cond_2
    :goto_0
    return v2
.end method

.method public final x()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/f;->m:Lcom/google/android/gms/internal/ads/g;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/g;->b:Lcom/google/android/gms/internal/ads/n;

    .line 9
    .line 10
    iget v2, v0, Lcom/google/android/gms/internal/ads/n;->d:I

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iput v1, v0, Lcom/google/android/gms/internal/ads/n;->d:I

    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k;->B0:Lcom/google/android/gms/internal/ads/n;

    .line 18
    .line 19
    iget v2, v0, Lcom/google/android/gms/internal/ads/n;->d:I

    .line 20
    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    iput v1, v0, Lcom/google/android/gms/internal/ads/n;->d:I

    .line 24
    .line 25
    :cond_2
    return-void
.end method

.method public final y()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k;->z0:Lcom/google/android/gms/internal/ads/x;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/k;->X0:Lcom/google/android/gms/internal/ads/th;

    .line 5
    .line 6
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/k;->c1:J

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/f;->m:Lcom/google/android/gms/internal/ads/g;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/g;->b:Lcom/google/android/gms/internal/ads/n;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/n;->f(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k;->B0:Lcom/google/android/gms/internal/ads/n;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/n;->f(I)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/k;->M0:Z

    .line 32
    .line 33
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/VM;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/VM;->q0:Lcom/google/android/gms/internal/ads/cK;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    monitor-enter v1

    .line 42
    monitor-exit v1

    .line 43
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v2, Landroid/os/Handler;

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    new-instance v3, Lcom/google/android/gms/internal/ads/w;

    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    invoke-direct {v3, v0, v1, v4}, Lcom/google/android/gms/internal/ads/w;-><init>(Lcom/google/android/gms/internal/ads/x;Lcom/google/android/gms/internal/ads/cK;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    .line 57
    .line 58
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/th;->d:Lcom/google/android/gms/internal/ads/th;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/x;->p(Lcom/google/android/gms/internal/ads/th;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception v1

    .line 65
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/VM;->q0:Lcom/google/android/gms/internal/ads/cK;

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/x;->i(Lcom/google/android/gms/internal/ads/cK;)V

    .line 68
    .line 69
    .line 70
    sget-object v2, Lcom/google/android/gms/internal/ads/th;->d:Lcom/google/android/gms/internal/ads/th;

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/x;->p(Lcom/google/android/gms/internal/ads/th;)V

    .line 73
    .line 74
    .line 75
    throw v1
.end method

.method public final z(ZZ)V
    .locals 5

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/cK;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/VM;->q0:Lcom/google/android/gms/internal/ads/cK;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aK;->u()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k;->z0:Lcom/google/android/gms/internal/ads/x;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VM;->q0:Lcom/google/android/gms/internal/ads/cK;

    .line 14
    .line 15
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Landroid/os/Handler;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    new-instance v3, Lcom/google/android/gms/internal/ads/w;

    .line 23
    .line 24
    invoke-direct {v3, p1, v0, v2}, Lcom/google/android/gms/internal/ads/w;-><init>(Lcom/google/android/gms/internal/ads/x;Lcom/google/android/gms/internal/ads/cK;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/k;->H0:Z

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k;->B0:Lcom/google/android/gms/internal/ads/n;

    .line 34
    .line 35
    if-nez p1, :cond_4

    .line 36
    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k;->I0:Ljava/util/List;

    .line 38
    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 42
    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    new-instance p1, La/x;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/k;->x0:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iput-object v3, p1, La/x;->b:Ljava/lang/Object;

    .line 57
    .line 58
    iput-object v1, p1, La/x;->c:Ljava/lang/Object;

    .line 59
    .line 60
    sget-object v3, Lcom/google/android/gms/internal/ads/pl;->a:Lcom/google/android/gms/internal/ads/Nr;

    .line 61
    .line 62
    iput-object v3, p1, La/x;->f:Ljava/lang/Object;

    .line 63
    .line 64
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aK;->g:Lcom/google/android/gms/internal/ads/pl;

    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iput-object v3, p1, La/x;->f:Ljava/lang/Object;

    .line 70
    .line 71
    iget-boolean v3, p1, La/x;->a:Z

    .line 72
    .line 73
    xor-int/2addr v3, v0

    .line 74
    invoke-static {v3}, Lo3/r;->M(Z)V

    .line 75
    .line 76
    .line 77
    iget-object v3, p1, La/x;->e:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v3, Lcom/google/android/gms/internal/ads/d;

    .line 80
    .line 81
    if-nez v3, :cond_2

    .line 82
    .line 83
    iget-object v3, p1, La/x;->d:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v3, Lcom/google/android/gms/internal/ads/Ug;

    .line 86
    .line 87
    if-nez v3, :cond_1

    .line 88
    .line 89
    new-instance v3, Lcom/google/android/gms/internal/ads/c;

    .line 90
    .line 91
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object v3, p1, La/x;->d:Ljava/lang/Object;

    .line 95
    .line 96
    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/ads/d;

    .line 97
    .line 98
    iget-object v4, p1, La/x;->d:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v4, Lcom/google/android/gms/internal/ads/Ug;

    .line 101
    .line 102
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/d;-><init>(Lcom/google/android/gms/internal/ads/Ug;)V

    .line 103
    .line 104
    .line 105
    iput-object v3, p1, La/x;->e:Ljava/lang/Object;

    .line 106
    .line 107
    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/ads/g;

    .line 108
    .line 109
    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ads/g;-><init>(La/x;)V

    .line 110
    .line 111
    .line 112
    iput-boolean v0, p1, La/x;->a:Z

    .line 113
    .line 114
    iget-object p1, v3, Lcom/google/android/gms/internal/ads/g;->a:Lcom/google/android/gms/internal/ads/f;

    .line 115
    .line 116
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 117
    .line 118
    :cond_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/k;->H0:Z

    .line 119
    .line 120
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 121
    .line 122
    if-eqz p1, :cond_c

    .line 123
    .line 124
    new-instance v1, Lcom/google/android/gms/internal/ads/K4;

    .line 125
    .line 126
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/K4;-><init>(Ljava/lang/Object;I)V

    .line 127
    .line 128
    .line 129
    sget-object v3, Lcom/google/android/gms/internal/ads/XB;->G:Lcom/google/android/gms/internal/ads/XB;

    .line 130
    .line 131
    iput-object v1, p1, Lcom/google/android/gms/internal/ads/f;->k:Lcom/google/android/gms/internal/ads/y;

    .line 132
    .line 133
    iput-object v3, p1, Lcom/google/android/gms/internal/ads/f;->l:Ljava/util/concurrent/Executor;

    .line 134
    .line 135
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k;->a1:Lcom/google/android/gms/internal/ads/tK;

    .line 136
    .line 137
    if-eqz v1, :cond_5

    .line 138
    .line 139
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/f;->m:Lcom/google/android/gms/internal/ads/g;

    .line 140
    .line 141
    iput-object v1, p1, Lcom/google/android/gms/internal/ads/g;->h:Lcom/google/android/gms/internal/ads/tK;

    .line 142
    .line 143
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k;->J0:Landroid/view/Surface;

    .line 144
    .line 145
    if-eqz p1, :cond_6

    .line 146
    .line 147
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k;->L0:Lcom/google/android/gms/internal/ads/Br;

    .line 148
    .line 149
    sget-object v1, Lcom/google/android/gms/internal/ads/Br;->c:Lcom/google/android/gms/internal/ads/Br;

    .line 150
    .line 151
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/Br;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-nez p1, :cond_6

    .line 156
    .line 157
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 158
    .line 159
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k;->J0:Landroid/view/Surface;

    .line 160
    .line 161
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/k;->L0:Lcom/google/android/gms/internal/ads/Br;

    .line 162
    .line 163
    invoke-virtual {p1, v1, v3}, Lcom/google/android/gms/internal/ads/f;->e(Landroid/view/Surface;Lcom/google/android/gms/internal/ads/Br;)V

    .line 164
    .line 165
    .line 166
    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 167
    .line 168
    iget v1, p0, Lcom/google/android/gms/internal/ads/k;->O0:I

    .line 169
    .line 170
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/f;->m:Lcom/google/android/gms/internal/ads/g;

    .line 171
    .line 172
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/g;->b:Lcom/google/android/gms/internal/ads/n;

    .line 173
    .line 174
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/n;->b:LU0/I;

    .line 175
    .line 176
    iget v3, p1, LU0/I;->g:I

    .line 177
    .line 178
    if-ne v3, v1, :cond_7

    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_7
    iput v1, p1, LU0/I;->g:I

    .line 182
    .line 183
    invoke-virtual {p1, v0}, LU0/I;->h(Z)V

    .line 184
    .line 185
    .line 186
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 187
    .line 188
    iget v1, p0, Lcom/google/android/gms/internal/ads/VM;->E:F

    .line 189
    .line 190
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/f;->m:Lcom/google/android/gms/internal/ads/g;

    .line 191
    .line 192
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/g;->c:Lcom/google/android/gms/internal/ads/s;

    .line 193
    .line 194
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    const/4 v3, 0x0

    .line 198
    cmpl-float v3, v1, v3

    .line 199
    .line 200
    if-lez v3, :cond_8

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_8
    const/4 v0, 0x0

    .line 204
    :goto_1
    invoke-static {v0}, Lo3/r;->J(Z)V

    .line 205
    .line 206
    .line 207
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/s;->a:Lcom/google/android/gms/internal/ads/n;

    .line 208
    .line 209
    iget v0, p1, Lcom/google/android/gms/internal/ads/n;->j:F

    .line 210
    .line 211
    cmpl-float v0, v1, v0

    .line 212
    .line 213
    if-nez v0, :cond_9

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_9
    iput v1, p1, Lcom/google/android/gms/internal/ads/n;->j:F

    .line 217
    .line 218
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/n;->b:LU0/I;

    .line 219
    .line 220
    iput v1, p1, LU0/I;->f:F

    .line 221
    .line 222
    const-wide/16 v0, 0x0

    .line 223
    .line 224
    iput-wide v0, p1, LU0/I;->j:J

    .line 225
    .line 226
    const-wide/16 v0, -0x1

    .line 227
    .line 228
    iput-wide v0, p1, LU0/I;->m:J

    .line 229
    .line 230
    iput-wide v0, p1, LU0/I;->k:J

    .line 231
    .line 232
    invoke-virtual {p1, v2}, LU0/I;->h(Z)V

    .line 233
    .line 234
    .line 235
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k;->I0:Ljava/util/List;

    .line 236
    .line 237
    if-eqz p1, :cond_b

    .line 238
    .line 239
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 240
    .line 241
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/f;->b:Ljava/util/ArrayList;

    .line 242
    .line 243
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-eqz v2, :cond_a

    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f;->a()V

    .line 257
    .line 258
    .line 259
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k;->G0:Lcom/google/android/gms/internal/ads/f;

    .line 260
    .line 261
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/f;->m:Lcom/google/android/gms/internal/ads/g;

    .line 262
    .line 263
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/g;->b:Lcom/google/android/gms/internal/ads/n;

    .line 264
    .line 265
    iput p2, p1, Lcom/google/android/gms/internal/ads/n;->d:I

    .line 266
    .line 267
    return-void

    .line 268
    :cond_c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aK;->g:Lcom/google/android/gms/internal/ads/pl;

    .line 269
    .line 270
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    iput-object p1, v1, Lcom/google/android/gms/internal/ads/n;->k:Lcom/google/android/gms/internal/ads/pl;

    .line 274
    .line 275
    iput p2, v1, Lcom/google/android/gms/internal/ads/n;->d:I

    .line 276
    .line 277
    return-void
.end method
