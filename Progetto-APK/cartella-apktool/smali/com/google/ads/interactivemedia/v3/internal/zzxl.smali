.class public final Lcom/google/ads/interactivemedia/v3/internal/zzxl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/Map;ZLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxl;->zza:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxl;->zzb:Ljava/util/List;

    return-void
.end method

.method public static zzb(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "Interfaces can\'t be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: "

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v0, "Abstract classes can\'t be instantiated! Adjust the R8 configuration or register an InstanceCreator or a TypeAdapter for this type. Class name: "

    .line 33
    .line 34
    const-string v1, "\nSee https://github.com/google/gson/blob/main/Troubleshooting.md#r8-abstract-class"

    .line 35
    .line 36
    invoke-static {v0, p0, v1}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_1
    const/4 p0, 0x0

    .line 42
    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxl;->zza:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zza(Lcom/google/ads/interactivemedia/v3/internal/zzaca;)Lcom/google/ads/interactivemedia/v3/internal/zzya;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxl;->zza:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaca;->zzd()Ljava/lang/reflect/Type;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzaca;->zzc()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzvt;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzxc;

    .line 20
    .line 21
    invoke-direct {p1, p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzxc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzxl;Lcom/google/ads/interactivemedia/v3/internal/zzvt;Ljava/lang/reflect/Type;)V

    .line 22
    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxl;->zza:Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzvt;

    .line 32
    .line 33
    if-nez v0, :cond_16

    .line 34
    .line 35
    const-class v0, Ljava/util/EnumSet;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v2, 0x0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzxg;

    .line 45
    .line 46
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzxg;-><init>(Ljava/lang/reflect/Type;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-class v0, Ljava/util/EnumMap;

    .line 51
    .line 52
    if-ne p1, v0, :cond_2

    .line 53
    .line 54
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzxh;

    .line 55
    .line 56
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzxh;-><init>(Ljava/lang/reflect/Type;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move-object v0, v2

    .line 61
    :goto_0
    if-eqz v0, :cond_3

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxl;->zzb:Ljava/util/List;

    .line 65
    .line 66
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzyf;->zzb(Ljava/util/List;Ljava/lang/Class;)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    const/4 v4, 0x0

    .line 79
    const/4 v5, 0x1

    .line 80
    if-eqz v3, :cond_4

    .line 81
    .line 82
    :goto_1
    move-object v6, v2

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    :try_start_0
    new-array v3, v4, [Ljava/lang/Class;

    .line 85
    .line 86
    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 87
    .line 88
    .line 89
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    if-eq v0, v5, :cond_6

    .line 91
    .line 92
    sget-object v6, Lcom/google/ads/interactivemedia/v3/internal/zzye;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzye;

    .line 93
    .line 94
    invoke-virtual {v6, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzye;->zza(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_5

    .line 99
    .line 100
    const/4 v6, 0x4

    .line 101
    if-ne v0, v6, :cond_6

    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getModifiers()I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-eqz v6, :cond_5

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    const-string v6, "Unable to invoke no-args constructor of "

    .line 119
    .line 120
    const-string v7, "; constructor is not accessible and ReflectionAccessFilter does not permit making it accessible. Register an InstanceCreator or a TypeAdapter for this type, change the visibility of the constructor or adjust the access filter."

    .line 121
    .line 122
    invoke-static {v6, v3, v7}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/zzxi;

    .line 127
    .line 128
    invoke-direct {v6, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzxi;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_6
    :goto_2
    if-ne v0, v5, :cond_8

    .line 133
    .line 134
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzabp;->zzf(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    if-eqz v6, :cond_7

    .line 139
    .line 140
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/zzxj;

    .line 141
    .line 142
    invoke-direct {v3, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzxj;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    move-object v6, v3

    .line 146
    goto :goto_3

    .line 147
    :cond_7
    const/4 v0, 0x1

    .line 148
    :cond_8
    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/zzxk;

    .line 149
    .line 150
    invoke-direct {v6, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzxk;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :catch_0
    nop

    .line 155
    goto :goto_1

    .line 156
    :goto_3
    if-nez v6, :cond_15

    .line 157
    .line 158
    const-class v3, Ljava/util/Collection;

    .line 159
    .line 160
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-eqz v3, :cond_c

    .line 165
    .line 166
    const-class v1, Ljava/util/SortedSet;

    .line 167
    .line 168
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_9

    .line 173
    .line 174
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzws;

    .line 175
    .line 176
    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzws;-><init>()V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_4

    .line 180
    .line 181
    :cond_9
    const-class v1, Ljava/util/Set;

    .line 182
    .line 183
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_a

    .line 188
    .line 189
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzwt;

    .line 190
    .line 191
    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzwt;-><init>()V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_4

    .line 195
    .line 196
    :cond_a
    const-class v1, Ljava/util/Queue;

    .line 197
    .line 198
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_b

    .line 203
    .line 204
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzwu;

    .line 205
    .line 206
    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzwu;-><init>()V

    .line 207
    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_b
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzwv;

    .line 211
    .line 212
    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzwv;-><init>()V

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_c
    const-class v3, Ljava/util/Map;

    .line 217
    .line 218
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    if-eqz v3, :cond_11

    .line 223
    .line 224
    const-class v2, Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 225
    .line 226
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    if-eqz v2, :cond_d

    .line 231
    .line 232
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzww;

    .line 233
    .line 234
    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzww;-><init>()V

    .line 235
    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_d
    const-class v2, Ljava/util/concurrent/ConcurrentMap;

    .line 239
    .line 240
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    if-eqz v2, :cond_e

    .line 245
    .line 246
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzwx;

    .line 247
    .line 248
    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzwx;-><init>()V

    .line 249
    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_e
    const-class v2, Ljava/util/SortedMap;

    .line 253
    .line 254
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-eqz v2, :cond_f

    .line 259
    .line 260
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzwy;

    .line 261
    .line 262
    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzwy;-><init>()V

    .line 263
    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_f
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    .line 267
    .line 268
    if-eqz v2, :cond_10

    .line 269
    .line 270
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 271
    .line 272
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    aget-object v1, v1, v4

    .line 277
    .line 278
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzaca;->zzb(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/internal/zzaca;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzaca;->zzc()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    const-class v2, Ljava/lang/String;

    .line 287
    .line 288
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    if-nez v1, :cond_10

    .line 293
    .line 294
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzwz;

    .line 295
    .line 296
    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzwz;-><init>()V

    .line 297
    .line 298
    .line 299
    goto :goto_4

    .line 300
    :cond_10
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzxa;

    .line 301
    .line 302
    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzxa;-><init>()V

    .line 303
    .line 304
    .line 305
    :cond_11
    :goto_4
    if-eqz v2, :cond_12

    .line 306
    .line 307
    return-object v2

    .line 308
    :cond_12
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzxl;->zzb(Ljava/lang/Class;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    if-eqz v1, :cond_13

    .line 313
    .line 314
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzxe;

    .line 315
    .line 316
    invoke-direct {p1, p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzxe;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzxl;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    return-object p1

    .line 320
    :cond_13
    if-ne v0, v5, :cond_14

    .line 321
    .line 322
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzxb;

    .line 323
    .line 324
    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzxb;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzxl;Ljava/lang/Class;)V

    .line 325
    .line 326
    .line 327
    return-object v0

    .line 328
    :cond_14
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    const-string v0, "Unable to create instance of "

    .line 333
    .line 334
    const-string v1, "; ReflectionAccessFilter does not permit using reflection or Unsafe. Register an InstanceCreator or a TypeAdapter for this type or adjust the access filter to allow using reflection."

    .line 335
    .line 336
    invoke-static {v0, p1, v1}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzxf;

    .line 341
    .line 342
    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzxf;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzxl;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    return-object v0

    .line 346
    :cond_15
    return-object v6

    .line 347
    :cond_16
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzxd;

    .line 348
    .line 349
    invoke-direct {p1, p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzxd;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzxl;Lcom/google/ads/interactivemedia/v3/internal/zzvt;Ljava/lang/reflect/Type;)V

    .line 350
    .line 351
    .line 352
    return-object p1
.end method
