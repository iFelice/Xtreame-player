.class public final Lcom/google/ads/interactivemedia/v3/internal/zzzq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzwk;


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zzxl;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzxn;

.field private final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzyx;

.field private final zzd:Ljava/util/List;

.field private final zze:I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzxl;ILcom/google/ads/interactivemedia/v3/internal/zzxn;Lcom/google/ads/interactivemedia/v3/internal/zzyx;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzq;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzxl;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzq;->zze:I

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzq;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzxn;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzq;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzyx;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzq;->zzd:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic zzb(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V
    .locals 2

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/lang/reflect/Member;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v1, v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    :cond_0
    invoke-static {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyf;->zza(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-static {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzabp;->zze(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string p1, " is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type."

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzvx;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzvx;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method private final zzc(Lcom/google/ads/interactivemedia/v3/internal/zzvr;Lcom/google/ads/interactivemedia/v3/internal/zzaca;Ljava/lang/Class;ZZ)Lcom/google/ads/interactivemedia/v3/internal/zzzo;
    .locals 29

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    move-object/from16 v12, p3

    .line 6
    .line 7
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzzo;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzzo;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v13, Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v14, Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    move-object/from16 v15, p2

    .line 27
    .line 28
    move/from16 v0, p4

    .line 29
    .line 30
    move-object v9, v12

    .line 31
    :goto_0
    const-class v1, Ljava/lang/Object;

    .line 32
    .line 33
    if-eq v9, v1, :cond_1a

    .line 34
    .line 35
    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    const/4 v7, 0x1

    .line 40
    const/4 v6, 0x0

    .line 41
    if-eq v9, v12, :cond_3

    .line 42
    .line 43
    array-length v1, v8

    .line 44
    if-lez v1, :cond_3

    .line 45
    .line 46
    iget-object v0, v10, Lcom/google/ads/interactivemedia/v3/internal/zzzq;->zzd:Ljava/util/List;

    .line 47
    .line 48
    invoke-static {v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/zzyf;->zzb(Ljava/util/List;Ljava/lang/Class;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/4 v1, 0x4

    .line 53
    if-eq v0, v1, :cond_2

    .line 54
    .line 55
    const/4 v1, 0x3

    .line 56
    if-ne v0, v1, :cond_1

    .line 57
    .line 58
    const/16 v16, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const/16 v16, 0x0

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzvx;

    .line 65
    .line 66
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const-string v3, "ReflectionAccessFilter does not permit using reflection for "

    .line 75
    .line 76
    const-string v4, " (supertype of "

    .line 77
    .line 78
    const-string v5, "). Register a TypeAdapter for this type or adjust the access filter."

    .line 79
    .line 80
    invoke-static {v3, v1, v4, v2, v5}, LA0/O;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzvx;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :cond_3
    move/from16 v16, v0

    .line 89
    .line 90
    :goto_1
    array-length v5, v8

    .line 91
    const/4 v4, 0x0

    .line 92
    :goto_2
    if-ge v4, v5, :cond_19

    .line 93
    .line 94
    aget-object v3, v8, v4

    .line 95
    .line 96
    invoke-direct {v10, v3, v7}, Lcom/google/ads/interactivemedia/v3/internal/zzzq;->zze(Ljava/lang/reflect/Field;Z)Z

    .line 97
    .line 98
    .line 99
    move-result v17

    .line 100
    invoke-direct {v10, v3, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzzq;->zze(Ljava/lang/reflect/Field;Z)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-nez v17, :cond_5

    .line 105
    .line 106
    if-nez v0, :cond_4

    .line 107
    .line 108
    move/from16 v26, v4

    .line 109
    .line 110
    move/from16 v27, v5

    .line 111
    .line 112
    move-object/from16 v24, v8

    .line 113
    .line 114
    move-object/from16 p2, v9

    .line 115
    .line 116
    const/16 v19, 0x1

    .line 117
    .line 118
    const/16 v20, 0x0

    .line 119
    .line 120
    goto/16 :goto_f

    .line 121
    .line 122
    :cond_4
    const/4 v0, 0x1

    .line 123
    :cond_5
    const-class v1, Lcom/google/ads/interactivemedia/v3/internal/zzwm;

    .line 124
    .line 125
    const/4 v2, 0x0

    .line 126
    if-eqz p5, :cond_a

    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 129
    .line 130
    .line 131
    move-result v18

    .line 132
    invoke-static/range {v18 .. v18}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 133
    .line 134
    .line 135
    move-result v18

    .line 136
    if-eqz v18, :cond_6

    .line 137
    .line 138
    move-object v7, v2

    .line 139
    const/16 v18, 0x0

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_6
    invoke-static {v9, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzabp;->zzh(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    if-nez v16, :cond_7

    .line 147
    .line 148
    invoke-static {v7}, Lcom/google/ads/interactivemedia/v3/internal/zzabp;->zzi(Ljava/lang/reflect/AccessibleObject;)V

    .line 149
    .line 150
    .line 151
    :cond_7
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 152
    .line 153
    .line 154
    move-result-object v18

    .line 155
    if-eqz v18, :cond_9

    .line 156
    .line 157
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 158
    .line 159
    .line 160
    move-result-object v18

    .line 161
    if-eqz v18, :cond_8

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_8
    invoke-static {v7, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzabp;->zze(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzvx;

    .line 169
    .line 170
    const-string v2, "@SerializedName on "

    .line 171
    .line 172
    const-string v3, " is not supported"

    .line 173
    .line 174
    invoke-static {v2, v0, v3}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzvx;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw v1

    .line 182
    :cond_9
    :goto_3
    move/from16 v18, v0

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_a
    move/from16 v18, v0

    .line 186
    .line 187
    move-object v7, v2

    .line 188
    :goto_4
    if-nez v16, :cond_b

    .line 189
    .line 190
    if-nez v7, :cond_b

    .line 191
    .line 192
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzabp;->zzi(Ljava/lang/reflect/AccessibleObject;)V

    .line 193
    .line 194
    .line 195
    :cond_b
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/zzaca;->zzd()Ljava/lang/reflect/Type;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    invoke-static {v0, v9, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzwr;->zze(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzwm;

    .line 212
    .line 213
    if-nez v1, :cond_d

    .line 214
    .line 215
    iget v1, v10, Lcom/google/ads/interactivemedia/v3/internal/zzzq;->zze:I

    .line 216
    .line 217
    if-eqz v1, :cond_c

    .line 218
    .line 219
    add-int/lit8 v1, v1, -0x1

    .line 220
    .line 221
    if-nez v1, :cond_c

    .line 222
    .line 223
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    :goto_5
    move-object v6, v1

    .line 232
    move/from16 v20, v4

    .line 233
    .line 234
    :goto_6
    const/4 v4, 0x0

    .line 235
    goto :goto_7

    .line 236
    :cond_c
    throw v2

    .line 237
    :cond_d
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzwm;->zza()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzwm;->zzb()[Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    array-length v2, v1

    .line 246
    if-nez v2, :cond_e

    .line 247
    .line 248
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    goto :goto_5

    .line 253
    :cond_e
    add-int/lit8 v2, v2, 0x1

    .line 254
    .line 255
    move/from16 v20, v4

    .line 256
    .line 257
    new-instance v4, Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    invoke-static {v4, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-object v6, v4

    .line 269
    goto :goto_6

    .line 270
    :goto_7
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    move-object v2, v1

    .line 275
    check-cast v2, Ljava/lang/String;

    .line 276
    .line 277
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaca;->zzb(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/internal/zzaca;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzaca;->zzc()Ljava/lang/Class;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    instance-of v4, v0, Ljava/lang/Class;

    .line 286
    .line 287
    if-eqz v4, :cond_f

    .line 288
    .line 289
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_f

    .line 294
    .line 295
    const/16 v21, 0x1

    .line 296
    .line 297
    goto :goto_8

    .line 298
    :cond_f
    const/16 v21, 0x0

    .line 299
    .line 300
    :goto_8
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 305
    .line 306
    .line 307
    move-result v4

    .line 308
    if-eqz v4, :cond_10

    .line 309
    .line 310
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    if-eqz v0, :cond_10

    .line 315
    .line 316
    const/16 v22, 0x1

    .line 317
    .line 318
    goto :goto_9

    .line 319
    :cond_10
    const/16 v22, 0x0

    .line 320
    .line 321
    :goto_9
    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/zzwl;

    .line 322
    .line 323
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    move-object v4, v0

    .line 328
    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/zzwl;

    .line 329
    .line 330
    if-eqz v4, :cond_11

    .line 331
    .line 332
    iget-object v0, v10, Lcom/google/ads/interactivemedia/v3/internal/zzzq;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzyx;

    .line 333
    .line 334
    move-object/from16 v23, v1

    .line 335
    .line 336
    iget-object v1, v10, Lcom/google/ads/interactivemedia/v3/internal/zzzq;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzxl;

    .line 337
    .line 338
    const/16 v19, 0x0

    .line 339
    .line 340
    move-object/from16 v24, v23

    .line 341
    .line 342
    move-object/from16 v23, v2

    .line 343
    .line 344
    move-object/from16 v2, p1

    .line 345
    .line 346
    move-object/from16 v25, v3

    .line 347
    .line 348
    move-object/from16 v3, v24

    .line 349
    .line 350
    move/from16 v26, v20

    .line 351
    .line 352
    const/16 v20, 0x0

    .line 353
    .line 354
    move/from16 v27, v5

    .line 355
    .line 356
    move/from16 v5, v19

    .line 357
    .line 358
    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/zzyx;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzxl;Lcom/google/ads/interactivemedia/v3/internal/zzvr;Lcom/google/ads/interactivemedia/v3/internal/zzaca;Lcom/google/ads/interactivemedia/v3/internal/zzwl;Z)Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    goto :goto_a

    .line 363
    :cond_11
    move-object/from16 v24, v1

    .line 364
    .line 365
    move-object/from16 v23, v2

    .line 366
    .line 367
    move-object/from16 v25, v3

    .line 368
    .line 369
    move/from16 v27, v5

    .line 370
    .line 371
    move/from16 v26, v20

    .line 372
    .line 373
    const/16 v20, 0x0

    .line 374
    .line 375
    const/4 v2, 0x0

    .line 376
    :goto_a
    if-nez v2, :cond_12

    .line 377
    .line 378
    move-object/from16 v0, v24

    .line 379
    .line 380
    invoke-virtual {v11, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzaca;)Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    move-object v5, v1

    .line 385
    goto :goto_b

    .line 386
    :cond_12
    move-object/from16 v0, v24

    .line 387
    .line 388
    move-object v5, v2

    .line 389
    :goto_b
    if-eqz v17, :cond_14

    .line 390
    .line 391
    if-eqz v2, :cond_13

    .line 392
    .line 393
    goto :goto_c

    .line 394
    :cond_13
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzzw;

    .line 395
    .line 396
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaca;->zzd()Ljava/lang/reflect/Type;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-direct {v1, v11, v5, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzzw;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzvr;Lcom/google/ads/interactivemedia/v3/internal/zzwj;Ljava/lang/reflect/Type;)V

    .line 401
    .line 402
    .line 403
    move-object/from16 v19, v1

    .line 404
    .line 405
    goto :goto_d

    .line 406
    :cond_14
    :goto_c
    move-object/from16 v19, v5

    .line 407
    .line 408
    :goto_d
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/zzzk;

    .line 409
    .line 410
    move-object v0, v4

    .line 411
    move-object/from16 v1, p0

    .line 412
    .line 413
    move-object/from16 v2, v23

    .line 414
    .line 415
    move-object/from16 v3, v25

    .line 416
    .line 417
    move-object v10, v4

    .line 418
    move/from16 v4, v16

    .line 419
    .line 420
    move-object/from16 v24, v5

    .line 421
    .line 422
    move-object v5, v7

    .line 423
    move-object/from16 v28, v6

    .line 424
    .line 425
    move-object/from16 v6, v19

    .line 426
    .line 427
    const/16 v19, 0x1

    .line 428
    .line 429
    move-object/from16 v7, v24

    .line 430
    .line 431
    move-object/from16 v24, v8

    .line 432
    .line 433
    move/from16 v8, v21

    .line 434
    .line 435
    move-object/from16 p2, v9

    .line 436
    .line 437
    move/from16 v9, v22

    .line 438
    .line 439
    invoke-direct/range {v0 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/zzzk;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzzq;Ljava/lang/String;Ljava/lang/reflect/Field;ZLjava/lang/reflect/Method;Lcom/google/ads/interactivemedia/v3/internal/zzwj;Lcom/google/ads/interactivemedia/v3/internal/zzwj;ZZ)V

    .line 440
    .line 441
    .line 442
    if-eqz v18, :cond_16

    .line 443
    .line 444
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    if-eqz v1, :cond_16

    .line 453
    .line 454
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    check-cast v1, Ljava/lang/String;

    .line 459
    .line 460
    invoke-interface {v13, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/zzzm;

    .line 465
    .line 466
    if-nez v2, :cond_15

    .line 467
    .line 468
    goto :goto_e

    .line 469
    :cond_15
    iget-object v0, v2, Lcom/google/ads/interactivemedia/v3/internal/zzzm;->zzh:Ljava/lang/reflect/Field;

    .line 470
    .line 471
    move-object/from16 v2, v25

    .line 472
    .line 473
    invoke-static {v12, v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzzq;->zzd(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)Ljava/lang/IllegalArgumentException;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    throw v0

    .line 478
    :cond_16
    move-object/from16 v2, v25

    .line 479
    .line 480
    if-eqz v17, :cond_18

    .line 481
    .line 482
    move-object/from16 v1, v23

    .line 483
    .line 484
    invoke-interface {v14, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzzm;

    .line 489
    .line 490
    if-nez v0, :cond_17

    .line 491
    .line 492
    goto :goto_f

    .line 493
    :cond_17
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzzm;->zzh:Ljava/lang/reflect/Field;

    .line 494
    .line 495
    invoke-static {v12, v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzzq;->zzd(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)Ljava/lang/IllegalArgumentException;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    throw v0

    .line 500
    :cond_18
    :goto_f
    add-int/lit8 v4, v26, 0x1

    .line 501
    .line 502
    const/4 v6, 0x0

    .line 503
    const/4 v7, 0x1

    .line 504
    move-object/from16 v10, p0

    .line 505
    .line 506
    move-object/from16 v9, p2

    .line 507
    .line 508
    move-object/from16 v8, v24

    .line 509
    .line 510
    move/from16 v5, v27

    .line 511
    .line 512
    goto/16 :goto_2

    .line 513
    .line 514
    :cond_19
    move-object/from16 p2, v9

    .line 515
    .line 516
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/zzaca;->zzd()Ljava/lang/reflect/Type;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    move-object/from16 v2, p2

    .line 525
    .line 526
    invoke-static {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzwr;->zze(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaca;->zzb(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/internal/zzaca;

    .line 531
    .line 532
    .line 533
    move-result-object v15

    .line 534
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/zzaca;->zzc()Ljava/lang/Class;

    .line 535
    .line 536
    .line 537
    move-result-object v9

    .line 538
    move-object/from16 v10, p0

    .line 539
    .line 540
    move/from16 v0, v16

    .line 541
    .line 542
    goto/16 :goto_0

    .line 543
    .line 544
    :cond_1a
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzzo;

    .line 545
    .line 546
    new-instance v1, Ljava/util/ArrayList;

    .line 547
    .line 548
    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 549
    .line 550
    .line 551
    move-result-object v2

    .line 552
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 553
    .line 554
    .line 555
    invoke-direct {v0, v13, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzzo;-><init>(Ljava/util/Map;Ljava/util/List;)V

    .line 556
    .line 557
    .line 558
    return-object v0
.end method

.method private static zzd(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)Ljava/lang/IllegalArgumentException;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzabp;->zzd(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p3}, Lcom/google/ads/interactivemedia/v3/internal/zzabp;->zzd(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    const-string v1, "Class "

    .line 16
    .line 17
    const-string v2, " declares multiple JSON fields named \'"

    .line 18
    .line 19
    const-string v3, "\'; conflict is caused by fields "

    .line 20
    .line 21
    invoke-static {v1, p0, v2, p1, v3}, Lcom/google/protobuf/U2;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, " and "

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, "\nSee https://github.com/google/gson/blob/main/Troubleshooting.md#duplicate-fields"

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0
.end method

.method private final zze(Ljava/lang/reflect/Field;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzq;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzxn;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzxn;->zzd(Ljava/lang/reflect/Field;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1
.end method


# virtual methods
.method public final zza(Lcom/google/ads/interactivemedia/v3/internal/zzvr;Lcom/google/ads/interactivemedia/v3/internal/zzaca;)Lcom/google/ads/interactivemedia/v3/internal/zzwj;
    .locals 10

    .line 1
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaca;->zzc()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    const-class v0, Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return-object p1

    .line 15
    :cond_0
    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/internal/zzabp;->zzj(Ljava/lang/Class;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzzj;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzzj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzzq;)V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzq;->zzd:Ljava/util/List;

    .line 28
    .line 29
    invoke-static {v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzyf;->zzb(Ljava/util/List;Ljava/lang/Class;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x4

    .line 34
    if-eq v0, v1, :cond_4

    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    if-ne v0, v1, :cond_2

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    const/4 v7, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 v0, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    :goto_0
    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/internal/zzabp;->zzk(Ljava/lang/Class;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/zzzp;

    .line 51
    .line 52
    const/4 v5, 0x1

    .line 53
    move-object v0, p0

    .line 54
    move-object v1, p1

    .line 55
    move-object v2, p2

    .line 56
    move-object v3, v6

    .line 57
    move v4, v7

    .line 58
    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/zzzq;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzvr;Lcom/google/ads/interactivemedia/v3/internal/zzaca;Ljava/lang/Class;ZZ)Lcom/google/ads/interactivemedia/v3/internal/zzzo;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {v8, v6, p1, v7}, Lcom/google/ads/interactivemedia/v3/internal/zzzp;-><init>(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzzo;Z)V

    .line 63
    .line 64
    .line 65
    return-object v8

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzzq;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzxl;

    .line 67
    .line 68
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzxl;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzaca;)Lcom/google/ads/interactivemedia/v3/internal/zzya;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    new-instance v9, Lcom/google/ads/interactivemedia/v3/internal/zzzn;

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    move-object v0, p0

    .line 76
    move-object v1, p1

    .line 77
    move-object v2, p2

    .line 78
    move-object v3, v6

    .line 79
    move v4, v7

    .line 80
    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/zzzq;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzvr;Lcom/google/ads/interactivemedia/v3/internal/zzaca;Ljava/lang/Class;ZZ)Lcom/google/ads/interactivemedia/v3/internal/zzzo;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {v9, v8, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzzn;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzya;Lcom/google/ads/interactivemedia/v3/internal/zzzo;)V

    .line 85
    .line 86
    .line 87
    return-object v9

    .line 88
    :cond_4
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzvx;

    .line 89
    .line 90
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    const-string v0, "ReflectionAccessFilter does not permit using reflection for "

    .line 95
    .line 96
    const-string v1, ". Register a TypeAdapter for this type or adjust the access filter."

    .line 97
    .line 98
    invoke-static {v0, p2, v1}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzvx;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1
.end method
