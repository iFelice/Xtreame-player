.class public final Lcom/google/android/gms/internal/measurement/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lcom/google/android/gms/internal/measurement/n;
.implements Lcom/google/android/gms/internal/measurement/j;


# instance fields
.field public final G:Ljava/util/TreeMap;

.field public final H:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->G:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/TreeMap;

    .line 2
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->H:Ljava/util/TreeMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/d;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/d;->t(ILcom/google/android/gms/internal/measurement/n;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;
    .locals 2

    .line 1
    const-string v0, "length"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p1, Lcom/google/android/gms/internal/measurement/g;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    int-to-double v0, v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/d;->c(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->H:Ljava/util/TreeMap;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/google/android/gms/internal/measurement/n;

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/measurement/n;->s:Lcom/google/android/gms/internal/measurement/r;

    .line 42
    .line 43
    return-object p1
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "length"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->H:Ljava/util/TreeMap;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/d;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/d;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eq v1, v3, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/d;->G:Ljava/util/TreeMap;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/d;->G:Ljava/util/TreeMap;

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    :cond_3
    invoke-virtual {v1}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    :goto_0
    invoke-virtual {v1}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-gt v3, v4, :cond_5

    .line 60
    .line 61
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/d;->o(I)Lcom/google/android/gms/internal/measurement/n;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/d;->o(I)Lcom/google/android/gms/internal/measurement/n;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-nez v4, :cond_4

    .line 74
    .line 75
    return v2

    .line 76
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->G:Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    return v0
.end method

.method public final i(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->H:Ljava/util/TreeMap;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/p;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final l(Ljava/lang/String;Lm2/i;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/n;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const-string v9, "concat"

    .line 10
    .line 11
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v10

    .line 15
    const-string v11, "unshift"

    .line 16
    .line 17
    const-string v12, "toString"

    .line 18
    .line 19
    const-string v13, "splice"

    .line 20
    .line 21
    const-string v14, "sort"

    .line 22
    .line 23
    const-string v15, "some"

    .line 24
    .line 25
    const-string v4, "slice"

    .line 26
    .line 27
    const-string v7, "shift"

    .line 28
    .line 29
    const-string v6, "reverse"

    .line 30
    .line 31
    const-string v8, "reduceRight"

    .line 32
    .line 33
    const-string v5, "reduce"

    .line 34
    .line 35
    move-object/from16 v16, v9

    .line 36
    .line 37
    const-string v9, "push"

    .line 38
    .line 39
    const-string v0, "pop"

    .line 40
    .line 41
    const-string v2, "map"

    .line 42
    .line 43
    const-string v3, "lastIndexOf"

    .line 44
    .line 45
    move-object/from16 v17, v11

    .line 46
    .line 47
    const-string v11, "join"

    .line 48
    .line 49
    move-object/from16 v18, v12

    .line 50
    .line 51
    const-string v12, "indexOf"

    .line 52
    .line 53
    move-object/from16 v19, v13

    .line 54
    .line 55
    const-string v13, "forEach"

    .line 56
    .line 57
    move-object/from16 v20, v14

    .line 58
    .line 59
    const-string v14, "filter"

    .line 60
    .line 61
    move-object/from16 v21, v15

    .line 62
    .line 63
    const-string v15, "every"

    .line 64
    .line 65
    if-nez v10, :cond_5

    .line 66
    .line 67
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    if-nez v10, :cond_5

    .line 72
    .line 73
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    if-nez v10, :cond_5

    .line 78
    .line 79
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    if-nez v10, :cond_5

    .line 84
    .line 85
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    if-nez v10, :cond_5

    .line 90
    .line 91
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    if-nez v10, :cond_5

    .line 96
    .line 97
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    if-nez v10, :cond_5

    .line 102
    .line 103
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    if-nez v10, :cond_5

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    if-nez v10, :cond_5

    .line 114
    .line 115
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    if-nez v10, :cond_5

    .line 120
    .line 121
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    if-nez v10, :cond_5

    .line 126
    .line 127
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    if-nez v10, :cond_5

    .line 132
    .line 133
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    if-nez v10, :cond_5

    .line 138
    .line 139
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    if-nez v10, :cond_5

    .line 144
    .line 145
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v10

    .line 149
    if-nez v10, :cond_5

    .line 150
    .line 151
    move-object/from16 v10, v21

    .line 152
    .line 153
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v21

    .line 157
    if-nez v21, :cond_4

    .line 158
    .line 159
    move-object/from16 v21, v0

    .line 160
    .line 161
    move-object/from16 v0, v20

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v20

    .line 167
    if-nez v20, :cond_3

    .line 168
    .line 169
    move-object/from16 v20, v2

    .line 170
    .line 171
    move-object/from16 v2, v19

    .line 172
    .line 173
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v19

    .line 177
    if-nez v19, :cond_2

    .line 178
    .line 179
    move-object/from16 v19, v3

    .line 180
    .line 181
    move-object/from16 v3, v18

    .line 182
    .line 183
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v18

    .line 187
    if-nez v18, :cond_1

    .line 188
    .line 189
    move-object/from16 v18, v3

    .line 190
    .line 191
    move-object/from16 v3, v17

    .line 192
    .line 193
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v17

    .line 197
    if-eqz v17, :cond_0

    .line 198
    .line 199
    :goto_0
    move-object/from16 v17, v14

    .line 200
    .line 201
    move-object/from16 v14, v21

    .line 202
    .line 203
    move-object/from16 v25, v20

    .line 204
    .line 205
    move-object/from16 v20, v2

    .line 206
    .line 207
    move-object/from16 v2, v19

    .line 208
    .line 209
    move-object/from16 v19, v5

    .line 210
    .line 211
    move-object/from16 v5, v25

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/q;

    .line 215
    .line 216
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    move-object/from16 v1, p0

    .line 220
    .line 221
    move-object/from16 v2, p2

    .line 222
    .line 223
    move-object/from16 v3, p3

    .line 224
    .line 225
    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/Cw;->D(Lcom/google/android/gms/internal/measurement/j;Lcom/google/android/gms/internal/measurement/q;Lm2/i;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/n;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    return-object v0

    .line 230
    :cond_1
    move-object/from16 v18, v3

    .line 231
    .line 232
    move-object/from16 v3, v17

    .line 233
    .line 234
    goto :goto_0

    .line 235
    :cond_2
    move-object/from16 v19, v5

    .line 236
    .line 237
    move-object/from16 v5, v20

    .line 238
    .line 239
    move-object/from16 v20, v2

    .line 240
    .line 241
    :goto_1
    move-object v2, v3

    .line 242
    move-object/from16 v3, v17

    .line 243
    .line 244
    move-object/from16 v17, v14

    .line 245
    .line 246
    move-object/from16 v14, v21

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_3
    move-object/from16 v20, v19

    .line 250
    .line 251
    move-object/from16 v19, v5

    .line 252
    .line 253
    move-object v5, v2

    .line 254
    goto :goto_1

    .line 255
    :cond_4
    :goto_2
    move-object/from16 v25, v14

    .line 256
    .line 257
    move-object v14, v0

    .line 258
    move-object/from16 v0, v20

    .line 259
    .line 260
    move-object/from16 v20, v19

    .line 261
    .line 262
    move-object/from16 v19, v5

    .line 263
    .line 264
    move-object v5, v2

    .line 265
    move-object v2, v3

    .line 266
    move-object/from16 v3, v17

    .line 267
    .line 268
    move-object/from16 v17, v25

    .line 269
    .line 270
    goto :goto_3

    .line 271
    :cond_5
    move-object/from16 v10, v21

    .line 272
    .line 273
    goto :goto_2

    .line 274
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 275
    .line 276
    .line 277
    move-result v21

    .line 278
    sparse-switch v21, :sswitch_data_0

    .line 279
    .line 280
    .line 281
    :cond_6
    move-object/from16 v3, v17

    .line 282
    .line 283
    :cond_7
    move-object/from16 v8, v18

    .line 284
    .line 285
    goto/16 :goto_5

    .line 286
    .line 287
    :sswitch_0
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    if-eqz v1, :cond_6

    .line 292
    .line 293
    const/4 v1, 0x4

    .line 294
    :goto_4
    move-object/from16 v3, v17

    .line 295
    .line 296
    move-object/from16 v8, v18

    .line 297
    .line 298
    goto/16 :goto_6

    .line 299
    .line 300
    :sswitch_1
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-eqz v1, :cond_6

    .line 305
    .line 306
    const/16 v1, 0xc

    .line 307
    .line 308
    goto :goto_4

    .line 309
    :sswitch_2
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    if-eqz v1, :cond_6

    .line 314
    .line 315
    const/16 v1, 0xb

    .line 316
    .line 317
    goto :goto_4

    .line 318
    :sswitch_3
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    if-eqz v1, :cond_6

    .line 323
    .line 324
    const/16 v1, 0xe

    .line 325
    .line 326
    goto :goto_4

    .line 327
    :sswitch_4
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-eqz v1, :cond_6

    .line 332
    .line 333
    const/16 v1, 0xd

    .line 334
    .line 335
    goto :goto_4

    .line 336
    :sswitch_5
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-eqz v1, :cond_6

    .line 341
    .line 342
    move-object/from16 v3, v17

    .line 343
    .line 344
    move-object/from16 v8, v18

    .line 345
    .line 346
    const/4 v1, 0x1

    .line 347
    goto/16 :goto_6

    .line 348
    .line 349
    :sswitch_6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    if-eqz v1, :cond_6

    .line 354
    .line 355
    const/16 v1, 0x10

    .line 356
    .line 357
    goto :goto_4

    .line 358
    :sswitch_7
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-eqz v1, :cond_6

    .line 363
    .line 364
    const/16 v1, 0xf

    .line 365
    .line 366
    goto :goto_4

    .line 367
    :sswitch_8
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    if-eqz v1, :cond_6

    .line 372
    .line 373
    const/16 v1, 0x9

    .line 374
    .line 375
    goto :goto_4

    .line 376
    :sswitch_9
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    if-eqz v1, :cond_6

    .line 381
    .line 382
    const/4 v1, 0x5

    .line 383
    goto :goto_4

    .line 384
    :sswitch_a
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    if-eqz v1, :cond_6

    .line 389
    .line 390
    const/16 v1, 0x8

    .line 391
    .line 392
    goto :goto_4

    .line 393
    :sswitch_b
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    if-eqz v1, :cond_6

    .line 398
    .line 399
    const/4 v1, 0x7

    .line 400
    goto :goto_4

    .line 401
    :sswitch_c
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    if-eqz v1, :cond_6

    .line 406
    .line 407
    const/16 v1, 0x13

    .line 408
    .line 409
    goto :goto_4

    .line 410
    :sswitch_d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    if-eqz v1, :cond_6

    .line 415
    .line 416
    const/4 v1, 0x6

    .line 417
    goto :goto_4

    .line 418
    :sswitch_e
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v1

    .line 422
    if-eqz v1, :cond_6

    .line 423
    .line 424
    move-object/from16 v3, v17

    .line 425
    .line 426
    move-object/from16 v8, v18

    .line 427
    .line 428
    const/4 v1, 0x3

    .line 429
    goto :goto_6

    .line 430
    :sswitch_f
    move-object/from16 v3, v20

    .line 431
    .line 432
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result v1

    .line 436
    if-eqz v1, :cond_6

    .line 437
    .line 438
    const/16 v1, 0x11

    .line 439
    .line 440
    goto/16 :goto_4

    .line 441
    .line 442
    :sswitch_10
    move-object/from16 v3, v19

    .line 443
    .line 444
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    move-result v1

    .line 448
    if-eqz v1, :cond_6

    .line 449
    .line 450
    const/16 v1, 0xa

    .line 451
    .line 452
    goto/16 :goto_4

    .line 453
    .line 454
    :sswitch_11
    move-object/from16 v3, v17

    .line 455
    .line 456
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    if-eqz v1, :cond_7

    .line 461
    .line 462
    move-object/from16 v8, v18

    .line 463
    .line 464
    const/4 v1, 0x2

    .line 465
    goto :goto_6

    .line 466
    :sswitch_12
    move-object/from16 v8, v16

    .line 467
    .line 468
    move-object/from16 v3, v17

    .line 469
    .line 470
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    move-result v1

    .line 474
    if-eqz v1, :cond_7

    .line 475
    .line 476
    move-object/from16 v8, v18

    .line 477
    .line 478
    const/4 v1, 0x0

    .line 479
    goto :goto_6

    .line 480
    :sswitch_13
    move-object/from16 v3, v17

    .line 481
    .line 482
    move-object/from16 v8, v18

    .line 483
    .line 484
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    if-eqz v1, :cond_8

    .line 489
    .line 490
    const/16 v1, 0x12

    .line 491
    .line 492
    goto :goto_6

    .line 493
    :cond_8
    :goto_5
    const/4 v1, -0x1

    .line 494
    :goto_6
    sget-object v9, Lcom/google/android/gms/internal/measurement/n;->s:Lcom/google/android/gms/internal/measurement/r;

    .line 495
    .line 496
    move-object/from16 p1, v9

    .line 497
    .line 498
    const-string v9, ","

    .line 499
    .line 500
    move-object/from16 v17, v3

    .line 501
    .line 502
    move-object/from16 v16, v15

    .line 503
    .line 504
    move-object/from16 v15, p0

    .line 505
    .line 506
    iget-object v3, v15, Lcom/google/android/gms/internal/measurement/d;->G:Ljava/util/TreeMap;

    .line 507
    .line 508
    sget-object v18, Lcom/google/android/gms/internal/measurement/n;->x:Lcom/google/android/gms/internal/measurement/e;

    .line 509
    .line 510
    sget-object v19, Lcom/google/android/gms/internal/measurement/n;->y:Lcom/google/android/gms/internal/measurement/e;

    .line 511
    .line 512
    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    .line 513
    .line 514
    move-object/from16 v22, v13

    .line 515
    .line 516
    const-string v13, "Callback should be a method"

    .line 517
    .line 518
    move-object/from16 v23, v11

    .line 519
    .line 520
    move-object/from16 v24, v12

    .line 521
    .line 522
    const/4 v11, 0x0

    .line 523
    packed-switch v1, :pswitch_data_0

    .line 524
    .line 525
    .line 526
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 527
    .line 528
    const-string v1, "Command not supported"

    .line 529
    .line 530
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    throw v0

    .line 534
    :pswitch_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 535
    .line 536
    .line 537
    move-result v0

    .line 538
    if-nez v0, :cond_c

    .line 539
    .line 540
    new-instance v0, Lcom/google/android/gms/internal/measurement/d;

    .line 541
    .line 542
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/d;-><init>()V

    .line 543
    .line 544
    .line 545
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 550
    .line 551
    .line 552
    move-result v2

    .line 553
    if-eqz v2, :cond_a

    .line 554
    .line 555
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    .line 560
    .line 561
    move-object/from16 v6, p2

    .line 562
    .line 563
    invoke-virtual {v6, v2}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 564
    .line 565
    .line 566
    move-result-object v2

    .line 567
    instance-of v4, v2, Lcom/google/android/gms/internal/measurement/f;

    .line 568
    .line 569
    if-nez v4, :cond_9

    .line 570
    .line 571
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 572
    .line 573
    .line 574
    move-result v4

    .line 575
    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/internal/measurement/d;->t(ILcom/google/android/gms/internal/measurement/n;)V

    .line 576
    .line 577
    .line 578
    goto :goto_7

    .line 579
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 580
    .line 581
    const-string v1, "Argument evaluation failed"

    .line 582
    .line 583
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    throw v0

    .line 587
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 588
    .line 589
    .line 590
    move-result v1

    .line 591
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->q()Ljava/util/Iterator;

    .line 592
    .line 593
    .line 594
    move-result-object v2

    .line 595
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 596
    .line 597
    .line 598
    move-result v4

    .line 599
    if-eqz v4, :cond_b

    .line 600
    .line 601
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v4

    .line 605
    check-cast v4, Ljava/lang/Integer;

    .line 606
    .line 607
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 608
    .line 609
    .line 610
    move-result v5

    .line 611
    add-int/2addr v5, v1

    .line 612
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 613
    .line 614
    .line 615
    move-result v4

    .line 616
    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/measurement/d;->o(I)Lcom/google/android/gms/internal/measurement/n;

    .line 617
    .line 618
    .line 619
    move-result-object v4

    .line 620
    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/measurement/d;->t(ILcom/google/android/gms/internal/measurement/n;)V

    .line 621
    .line 622
    .line 623
    goto :goto_8

    .line 624
    :cond_b
    invoke-virtual {v3}, Ljava/util/TreeMap;->clear()V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->q()Ljava/util/Iterator;

    .line 628
    .line 629
    .line 630
    move-result-object v1

    .line 631
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 632
    .line 633
    .line 634
    move-result v2

    .line 635
    if-eqz v2, :cond_c

    .line 636
    .line 637
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v2

    .line 641
    check-cast v2, Ljava/lang/Integer;

    .line 642
    .line 643
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 644
    .line 645
    .line 646
    move-result v3

    .line 647
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 648
    .line 649
    .line 650
    move-result v2

    .line 651
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/d;->o(I)Lcom/google/android/gms/internal/measurement/n;

    .line 652
    .line 653
    .line 654
    move-result-object v2

    .line 655
    invoke-virtual {v15, v3, v2}, Lcom/google/android/gms/internal/measurement/d;->t(ILcom/google/android/gms/internal/measurement/n;)V

    .line 656
    .line 657
    .line 658
    goto :goto_9

    .line 659
    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    .line 660
    .line 661
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 662
    .line 663
    .line 664
    move-result v1

    .line 665
    int-to-double v1, v1

    .line 666
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 667
    .line 668
    .line 669
    move-result-object v1

    .line 670
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 671
    .line 672
    .line 673
    goto/16 :goto_27

    .line 674
    .line 675
    :pswitch_1
    move-object/from16 v1, p3

    .line 676
    .line 677
    const/4 v0, 0x0

    .line 678
    invoke-static {v8, v0, v1}, Lcom/google/android/gms/internal/ads/Cw;->O1(Ljava/lang/String;ILjava/util/List;)V

    .line 679
    .line 680
    .line 681
    new-instance v0, Lcom/google/android/gms/internal/measurement/q;

    .line 682
    .line 683
    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/measurement/d;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v1

    .line 687
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    goto/16 :goto_27

    .line 691
    .line 692
    :pswitch_2
    move-object/from16 v6, p2

    .line 693
    .line 694
    move-object/from16 v1, p3

    .line 695
    .line 696
    const/4 v0, 0x0

    .line 697
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 698
    .line 699
    .line 700
    move-result v2

    .line 701
    if-eqz v2, :cond_d

    .line 702
    .line 703
    new-instance v1, Lcom/google/android/gms/internal/measurement/d;

    .line 704
    .line 705
    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/d;-><init>()V

    .line 706
    .line 707
    .line 708
    goto/16 :goto_26

    .line 709
    .line 710
    :cond_d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    move-result-object v2

    .line 714
    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    .line 715
    .line 716
    invoke-virtual {v6, v2}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 717
    .line 718
    .line 719
    move-result-object v2

    .line 720
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/n;->zzh()Ljava/lang/Double;

    .line 721
    .line 722
    .line 723
    move-result-object v2

    .line 724
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 725
    .line 726
    .line 727
    move-result-wide v4

    .line 728
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/Cw;->r(D)D

    .line 729
    .line 730
    .line 731
    move-result-wide v4

    .line 732
    double-to-int v2, v4

    .line 733
    if-gez v2, :cond_e

    .line 734
    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 736
    .line 737
    .line 738
    move-result v4

    .line 739
    add-int/2addr v4, v2

    .line 740
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 741
    .line 742
    .line 743
    move-result v2

    .line 744
    goto :goto_a

    .line 745
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 746
    .line 747
    .line 748
    move-result v0

    .line 749
    if-le v2, v0, :cond_f

    .line 750
    .line 751
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 752
    .line 753
    .line 754
    move-result v2

    .line 755
    :cond_f
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 756
    .line 757
    .line 758
    move-result v0

    .line 759
    new-instance v4, Lcom/google/android/gms/internal/measurement/d;

    .line 760
    .line 761
    invoke-direct {v4}, Lcom/google/android/gms/internal/measurement/d;-><init>()V

    .line 762
    .line 763
    .line 764
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    .line 765
    .line 766
    .line 767
    move-result v5

    .line 768
    const/4 v7, 0x1

    .line 769
    if-le v5, v7, :cond_16

    .line 770
    .line 771
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 772
    .line 773
    .line 774
    move-result-object v5

    .line 775
    check-cast v5, Lcom/google/android/gms/internal/measurement/n;

    .line 776
    .line 777
    invoke-virtual {v6, v5}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 778
    .line 779
    .line 780
    move-result-object v5

    .line 781
    invoke-interface {v5}, Lcom/google/android/gms/internal/measurement/n;->zzh()Ljava/lang/Double;

    .line 782
    .line 783
    .line 784
    move-result-object v5

    .line 785
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 786
    .line 787
    .line 788
    move-result-wide v7

    .line 789
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/Cw;->r(D)D

    .line 790
    .line 791
    .line 792
    move-result-wide v7

    .line 793
    double-to-int v5, v7

    .line 794
    const/4 v7, 0x0

    .line 795
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    .line 796
    .line 797
    .line 798
    move-result v5

    .line 799
    if-lez v5, :cond_10

    .line 800
    .line 801
    move v7, v2

    .line 802
    :goto_b
    add-int v8, v2, v5

    .line 803
    .line 804
    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    .line 805
    .line 806
    .line 807
    move-result v8

    .line 808
    if-ge v7, v8, :cond_10

    .line 809
    .line 810
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/measurement/d;->o(I)Lcom/google/android/gms/internal/measurement/n;

    .line 811
    .line 812
    .line 813
    move-result-object v8

    .line 814
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 815
    .line 816
    .line 817
    move-result v9

    .line 818
    invoke-virtual {v4, v9, v8}, Lcom/google/android/gms/internal/measurement/d;->t(ILcom/google/android/gms/internal/measurement/n;)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/measurement/d;->s(I)V

    .line 822
    .line 823
    .line 824
    const/4 v8, 0x1

    .line 825
    add-int/2addr v7, v8

    .line 826
    goto :goto_b

    .line 827
    :cond_10
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    .line 828
    .line 829
    .line 830
    move-result v0

    .line 831
    const/4 v5, 0x2

    .line 832
    if-le v0, v5, :cond_17

    .line 833
    .line 834
    const/4 v0, 0x2

    .line 835
    :goto_c
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    .line 836
    .line 837
    .line 838
    move-result v5

    .line 839
    if-ge v0, v5, :cond_17

    .line 840
    .line 841
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 842
    .line 843
    .line 844
    move-result-object v5

    .line 845
    check-cast v5, Lcom/google/android/gms/internal/measurement/n;

    .line 846
    .line 847
    invoke-virtual {v6, v5}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 848
    .line 849
    .line 850
    move-result-object v5

    .line 851
    instance-of v7, v5, Lcom/google/android/gms/internal/measurement/f;

    .line 852
    .line 853
    if-nez v7, :cond_15

    .line 854
    .line 855
    add-int v7, v2, v0

    .line 856
    .line 857
    add-int/lit8 v7, v7, -0x2

    .line 858
    .line 859
    if-ltz v7, :cond_14

    .line 860
    .line 861
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 862
    .line 863
    .line 864
    move-result v8

    .line 865
    if-lt v7, v8, :cond_11

    .line 866
    .line 867
    invoke-virtual {v15, v7, v5}, Lcom/google/android/gms/internal/measurement/d;->t(ILcom/google/android/gms/internal/measurement/n;)V

    .line 868
    .line 869
    .line 870
    const/4 v11, 0x1

    .line 871
    goto :goto_e

    .line 872
    :cond_11
    invoke-virtual {v3}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    .line 873
    .line 874
    .line 875
    move-result-object v8

    .line 876
    check-cast v8, Ljava/lang/Integer;

    .line 877
    .line 878
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 879
    .line 880
    .line 881
    move-result v8

    .line 882
    :goto_d
    if-lt v8, v7, :cond_13

    .line 883
    .line 884
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 885
    .line 886
    .line 887
    move-result-object v9

    .line 888
    invoke-virtual {v3, v9}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    move-result-object v10

    .line 892
    check-cast v10, Lcom/google/android/gms/internal/measurement/n;

    .line 893
    .line 894
    const/4 v11, 0x1

    .line 895
    if-eqz v10, :cond_12

    .line 896
    .line 897
    add-int/lit8 v12, v8, 0x1

    .line 898
    .line 899
    invoke-virtual {v15, v12, v10}, Lcom/google/android/gms/internal/measurement/d;->t(ILcom/google/android/gms/internal/measurement/n;)V

    .line 900
    .line 901
    .line 902
    invoke-virtual {v3, v9}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    :cond_12
    const/4 v9, -0x1

    .line 906
    add-int/2addr v8, v9

    .line 907
    goto :goto_d

    .line 908
    :cond_13
    const/4 v11, 0x1

    .line 909
    invoke-virtual {v15, v7, v5}, Lcom/google/android/gms/internal/measurement/d;->t(ILcom/google/android/gms/internal/measurement/n;)V

    .line 910
    .line 911
    .line 912
    :goto_e
    add-int/2addr v0, v11

    .line 913
    goto :goto_c

    .line 914
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 915
    .line 916
    const-string v1, "Invalid value index: "

    .line 917
    .line 918
    invoke-static {v1, v7}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object v1

    .line 922
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 923
    .line 924
    .line 925
    throw v0

    .line 926
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 927
    .line 928
    const-string v1, "Failed to parse elements to add"

    .line 929
    .line 930
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 931
    .line 932
    .line 933
    throw v0

    .line 934
    :cond_16
    :goto_f
    if-ge v2, v0, :cond_17

    .line 935
    .line 936
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/measurement/d;->o(I)Lcom/google/android/gms/internal/measurement/n;

    .line 937
    .line 938
    .line 939
    move-result-object v1

    .line 940
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 941
    .line 942
    .line 943
    move-result v3

    .line 944
    invoke-virtual {v4, v3, v1}, Lcom/google/android/gms/internal/measurement/d;->t(ILcom/google/android/gms/internal/measurement/n;)V

    .line 945
    .line 946
    .line 947
    invoke-virtual {v15, v2, v11}, Lcom/google/android/gms/internal/measurement/d;->t(ILcom/google/android/gms/internal/measurement/n;)V

    .line 948
    .line 949
    .line 950
    const/4 v5, 0x1

    .line 951
    add-int/2addr v2, v5

    .line 952
    goto :goto_f

    .line 953
    :cond_17
    move-object v1, v4

    .line 954
    goto/16 :goto_26

    .line 955
    .line 956
    :pswitch_3
    move-object/from16 v6, p2

    .line 957
    .line 958
    move-object/from16 v1, p3

    .line 959
    .line 960
    const/4 v5, 0x1

    .line 961
    invoke-static {v0, v5, v1}, Lcom/google/android/gms/internal/ads/Cw;->U1(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 962
    .line 963
    .line 964
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 965
    .line 966
    .line 967
    move-result v0

    .line 968
    const/4 v2, 0x2

    .line 969
    if-lt v0, v2, :cond_26

    .line 970
    .line 971
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->r()Ljava/util/ArrayList;

    .line 972
    .line 973
    .line 974
    move-result-object v0

    .line 975
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 976
    .line 977
    .line 978
    move-result v2

    .line 979
    if-nez v2, :cond_19

    .line 980
    .line 981
    const/4 v2, 0x0

    .line 982
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 983
    .line 984
    .line 985
    move-result-object v1

    .line 986
    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 987
    .line 988
    invoke-virtual {v6, v1}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 989
    .line 990
    .line 991
    move-result-object v1

    .line 992
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/h;

    .line 993
    .line 994
    if-eqz v2, :cond_18

    .line 995
    .line 996
    move-object v11, v1

    .line 997
    check-cast v11, Lcom/google/android/gms/internal/measurement/h;

    .line 998
    .line 999
    goto :goto_10

    .line 1000
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1001
    .line 1002
    const-string v1, "Comparator should be a method"

    .line 1003
    .line 1004
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1005
    .line 1006
    .line 1007
    throw v0

    .line 1008
    :cond_19
    :goto_10
    new-instance v1, Lcom/google/android/gms/internal/measurement/u;

    .line 1009
    .line 1010
    invoke-direct {v1, v11, v6}, Lcom/google/android/gms/internal/measurement/u;-><init>(Lcom/google/android/gms/internal/measurement/h;Lm2/i;)V

    .line 1011
    .line 1012
    .line 1013
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v3}, Ljava/util/TreeMap;->clear()V

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v0

    .line 1023
    const/4 v5, 0x0

    .line 1024
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1025
    .line 1026
    .line 1027
    move-result v1

    .line 1028
    if-eqz v1, :cond_26

    .line 1029
    .line 1030
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v1

    .line 1034
    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 1035
    .line 1036
    const/4 v2, 0x1

    .line 1037
    add-int/lit8 v3, v5, 0x1

    .line 1038
    .line 1039
    invoke-virtual {v15, v5, v1}, Lcom/google/android/gms/internal/measurement/d;->t(ILcom/google/android/gms/internal/measurement/n;)V

    .line 1040
    .line 1041
    .line 1042
    move v5, v3

    .line 1043
    goto :goto_11

    .line 1044
    :pswitch_4
    move-object/from16 v6, p2

    .line 1045
    .line 1046
    move-object/from16 v1, p3

    .line 1047
    .line 1048
    const/4 v2, 0x1

    .line 1049
    invoke-static {v10, v2, v1}, Lcom/google/android/gms/internal/ads/Cw;->O1(Ljava/lang/String;ILjava/util/List;)V

    .line 1050
    .line 1051
    .line 1052
    const/4 v0, 0x0

    .line 1053
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v1

    .line 1057
    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 1058
    .line 1059
    invoke-virtual {v6, v1}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v0

    .line 1063
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/h;

    .line 1064
    .line 1065
    if-eqz v1, :cond_1e

    .line 1066
    .line 1067
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 1068
    .line 1069
    .line 1070
    move-result v1

    .line 1071
    if-nez v1, :cond_1b

    .line 1072
    .line 1073
    :cond_1a
    :goto_12
    move-object/from16 v1, v19

    .line 1074
    .line 1075
    goto/16 :goto_26

    .line 1076
    .line 1077
    :cond_1b
    check-cast v0, Lcom/google/android/gms/internal/measurement/h;

    .line 1078
    .line 1079
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->q()Ljava/util/Iterator;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v1

    .line 1083
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1084
    .line 1085
    .line 1086
    move-result v2

    .line 1087
    if-eqz v2, :cond_1a

    .line 1088
    .line 1089
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v2

    .line 1093
    check-cast v2, Ljava/lang/Integer;

    .line 1094
    .line 1095
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1096
    .line 1097
    .line 1098
    move-result v2

    .line 1099
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/measurement/d;->u(I)Z

    .line 1100
    .line 1101
    .line 1102
    move-result v3

    .line 1103
    if-eqz v3, :cond_1c

    .line 1104
    .line 1105
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/measurement/d;->o(I)Lcom/google/android/gms/internal/measurement/n;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v3

    .line 1109
    int-to-double v4, v2

    .line 1110
    new-instance v2, Lcom/google/android/gms/internal/measurement/g;

    .line 1111
    .line 1112
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v4

    .line 1116
    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 1117
    .line 1118
    .line 1119
    const/4 v4, 0x3

    .line 1120
    new-array v5, v4, [Lcom/google/android/gms/internal/measurement/n;

    .line 1121
    .line 1122
    const/4 v7, 0x0

    .line 1123
    aput-object v3, v5, v7

    .line 1124
    .line 1125
    const/4 v3, 0x1

    .line 1126
    aput-object v2, v5, v3

    .line 1127
    .line 1128
    const/4 v2, 0x2

    .line 1129
    aput-object v15, v5, v2

    .line 1130
    .line 1131
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v2

    .line 1135
    invoke-virtual {v0, v6, v2}, Lcom/google/android/gms/internal/measurement/h;->a(Lm2/i;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/n;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v2

    .line 1139
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/n;->zzg()Ljava/lang/Boolean;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v2

    .line 1143
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1144
    .line 1145
    .line 1146
    move-result v2

    .line 1147
    if-eqz v2, :cond_1c

    .line 1148
    .line 1149
    :cond_1d
    :goto_13
    move-object/from16 v1, v18

    .line 1150
    .line 1151
    goto/16 :goto_26

    .line 1152
    .line 1153
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1154
    .line 1155
    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1156
    .line 1157
    .line 1158
    throw v0

    .line 1159
    :pswitch_5
    move-object/from16 v6, p2

    .line 1160
    .line 1161
    move-object/from16 v1, p3

    .line 1162
    .line 1163
    const/4 v0, 0x2

    .line 1164
    invoke-static {v4, v0, v1}, Lcom/google/android/gms/internal/ads/Cw;->U1(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1168
    .line 1169
    .line 1170
    move-result v0

    .line 1171
    if-eqz v0, :cond_1f

    .line 1172
    .line 1173
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->zzd()Lcom/google/android/gms/internal/measurement/n;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v1

    .line 1177
    goto/16 :goto_26

    .line 1178
    .line 1179
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 1180
    .line 1181
    .line 1182
    move-result v0

    .line 1183
    int-to-double v2, v0

    .line 1184
    const/4 v0, 0x0

    .line 1185
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v0

    .line 1189
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 1190
    .line 1191
    invoke-virtual {v6, v0}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v0

    .line 1195
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzh()Ljava/lang/Double;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v0

    .line 1199
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 1200
    .line 1201
    .line 1202
    move-result-wide v4

    .line 1203
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/Cw;->r(D)D

    .line 1204
    .line 1205
    .line 1206
    move-result-wide v4

    .line 1207
    const-wide/16 v7, 0x0

    .line 1208
    .line 1209
    cmpg-double v0, v4, v7

    .line 1210
    .line 1211
    if-gez v0, :cond_20

    .line 1212
    .line 1213
    add-double/2addr v4, v2

    .line 1214
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(DD)D

    .line 1215
    .line 1216
    .line 1217
    move-result-wide v4

    .line 1218
    goto :goto_14

    .line 1219
    :cond_20
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    .line 1220
    .line 1221
    .line 1222
    move-result-wide v4

    .line 1223
    :goto_14
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    .line 1224
    .line 1225
    .line 1226
    move-result v0

    .line 1227
    const/4 v7, 0x2

    .line 1228
    if-ne v0, v7, :cond_22

    .line 1229
    .line 1230
    const/4 v0, 0x1

    .line 1231
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v1

    .line 1235
    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 1236
    .line 1237
    invoke-virtual {v6, v1}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v0

    .line 1241
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzh()Ljava/lang/Double;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v0

    .line 1245
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 1246
    .line 1247
    .line 1248
    move-result-wide v0

    .line 1249
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Cw;->r(D)D

    .line 1250
    .line 1251
    .line 1252
    move-result-wide v0

    .line 1253
    const-wide/16 v6, 0x0

    .line 1254
    .line 1255
    cmpg-double v8, v0, v6

    .line 1256
    .line 1257
    if-gez v8, :cond_21

    .line 1258
    .line 1259
    add-double/2addr v2, v0

    .line 1260
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    .line 1261
    .line 1262
    .line 1263
    move-result-wide v2

    .line 1264
    goto :goto_15

    .line 1265
    :cond_21
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    .line 1266
    .line 1267
    .line 1268
    move-result-wide v2

    .line 1269
    :cond_22
    :goto_15
    new-instance v1, Lcom/google/android/gms/internal/measurement/d;

    .line 1270
    .line 1271
    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/d;-><init>()V

    .line 1272
    .line 1273
    .line 1274
    double-to-int v0, v4

    .line 1275
    :goto_16
    int-to-double v4, v0

    .line 1276
    cmpg-double v6, v4, v2

    .line 1277
    .line 1278
    if-gez v6, :cond_47

    .line 1279
    .line 1280
    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/measurement/d;->o(I)Lcom/google/android/gms/internal/measurement/n;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v4

    .line 1284
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 1285
    .line 1286
    .line 1287
    move-result v5

    .line 1288
    invoke-virtual {v1, v5, v4}, Lcom/google/android/gms/internal/measurement/d;->t(ILcom/google/android/gms/internal/measurement/n;)V

    .line 1289
    .line 1290
    .line 1291
    const/4 v4, 0x1

    .line 1292
    add-int/2addr v0, v4

    .line 1293
    goto :goto_16

    .line 1294
    :pswitch_6
    move-object/from16 v1, p3

    .line 1295
    .line 1296
    const/4 v0, 0x0

    .line 1297
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/ads/Cw;->O1(Ljava/lang/String;ILjava/util/List;)V

    .line 1298
    .line 1299
    .line 1300
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 1301
    .line 1302
    .line 1303
    move-result v1

    .line 1304
    if-nez v1, :cond_23

    .line 1305
    .line 1306
    :goto_17
    move-object/from16 v1, p1

    .line 1307
    .line 1308
    goto/16 :goto_26

    .line 1309
    .line 1310
    :cond_23
    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/measurement/d;->o(I)Lcom/google/android/gms/internal/measurement/n;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v1

    .line 1314
    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/measurement/d;->s(I)V

    .line 1315
    .line 1316
    .line 1317
    goto/16 :goto_26

    .line 1318
    .line 1319
    :pswitch_7
    move-object/from16 v1, p3

    .line 1320
    .line 1321
    const/4 v0, 0x0

    .line 1322
    invoke-static {v6, v0, v1}, Lcom/google/android/gms/internal/ads/Cw;->O1(Ljava/lang/String;ILjava/util/List;)V

    .line 1323
    .line 1324
    .line 1325
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 1326
    .line 1327
    .line 1328
    move-result v0

    .line 1329
    if-eqz v0, :cond_26

    .line 1330
    .line 1331
    const/4 v1, 0x2

    .line 1332
    const/4 v5, 0x0

    .line 1333
    :goto_18
    div-int/lit8 v2, v0, 0x2

    .line 1334
    .line 1335
    if-ge v5, v2, :cond_26

    .line 1336
    .line 1337
    invoke-virtual {v15, v5}, Lcom/google/android/gms/internal/measurement/d;->u(I)Z

    .line 1338
    .line 1339
    .line 1340
    move-result v1

    .line 1341
    if-eqz v1, :cond_25

    .line 1342
    .line 1343
    invoke-virtual {v15, v5}, Lcom/google/android/gms/internal/measurement/d;->o(I)Lcom/google/android/gms/internal/measurement/n;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v1

    .line 1347
    invoke-virtual {v15, v5, v11}, Lcom/google/android/gms/internal/measurement/d;->t(ILcom/google/android/gms/internal/measurement/n;)V

    .line 1348
    .line 1349
    .line 1350
    const/4 v2, -0x1

    .line 1351
    add-int/lit8 v7, v0, -0x1

    .line 1352
    .line 1353
    sub-int/2addr v7, v5

    .line 1354
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/d;->u(I)Z

    .line 1355
    .line 1356
    .line 1357
    move-result v2

    .line 1358
    if-eqz v2, :cond_24

    .line 1359
    .line 1360
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/d;->o(I)Lcom/google/android/gms/internal/measurement/n;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v2

    .line 1364
    invoke-virtual {v15, v5, v2}, Lcom/google/android/gms/internal/measurement/d;->t(ILcom/google/android/gms/internal/measurement/n;)V

    .line 1365
    .line 1366
    .line 1367
    :cond_24
    invoke-virtual {v15, v7, v1}, Lcom/google/android/gms/internal/measurement/d;->t(ILcom/google/android/gms/internal/measurement/n;)V

    .line 1368
    .line 1369
    .line 1370
    :cond_25
    const/4 v2, 0x1

    .line 1371
    add-int/2addr v5, v2

    .line 1372
    const/4 v1, 0x2

    .line 1373
    goto :goto_18

    .line 1374
    :cond_26
    move-object v1, v15

    .line 1375
    goto/16 :goto_26

    .line 1376
    .line 1377
    :pswitch_8
    move-object/from16 v6, p2

    .line 1378
    .line 1379
    move-object/from16 v1, p3

    .line 1380
    .line 1381
    const/4 v0, 0x0

    .line 1382
    invoke-static {v15, v6, v1, v0}, Lcom/google/android/gms/internal/ads/Cw;->Z0(Lcom/google/android/gms/internal/measurement/d;Lm2/i;Ljava/util/ArrayList;Z)Lcom/google/android/gms/internal/measurement/n;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v0

    .line 1386
    goto/16 :goto_27

    .line 1387
    .line 1388
    :pswitch_9
    move-object/from16 v6, p2

    .line 1389
    .line 1390
    move-object/from16 v1, p3

    .line 1391
    .line 1392
    const/4 v2, 0x1

    .line 1393
    invoke-static {v15, v6, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->Z0(Lcom/google/android/gms/internal/measurement/d;Lm2/i;Ljava/util/ArrayList;Z)Lcom/google/android/gms/internal/measurement/n;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v0

    .line 1397
    goto/16 :goto_27

    .line 1398
    .line 1399
    :pswitch_a
    move-object/from16 v6, p2

    .line 1400
    .line 1401
    move-object/from16 v1, p3

    .line 1402
    .line 1403
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1404
    .line 1405
    .line 1406
    move-result v0

    .line 1407
    if-nez v0, :cond_27

    .line 1408
    .line 1409
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v0

    .line 1413
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1414
    .line 1415
    .line 1416
    move-result v1

    .line 1417
    if-eqz v1, :cond_27

    .line 1418
    .line 1419
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v1

    .line 1423
    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 1424
    .line 1425
    invoke-virtual {v6, v1}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v1

    .line 1429
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 1430
    .line 1431
    .line 1432
    move-result v2

    .line 1433
    invoke-virtual {v15, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(ILcom/google/android/gms/internal/measurement/n;)V

    .line 1434
    .line 1435
    .line 1436
    goto :goto_19

    .line 1437
    :cond_27
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    .line 1438
    .line 1439
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 1440
    .line 1441
    .line 1442
    move-result v1

    .line 1443
    int-to-double v1, v1

    .line 1444
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v1

    .line 1448
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 1449
    .line 1450
    .line 1451
    goto/16 :goto_27

    .line 1452
    .line 1453
    :pswitch_b
    move-object/from16 v1, p3

    .line 1454
    .line 1455
    const/4 v0, 0x0

    .line 1456
    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/ads/Cw;->O1(Ljava/lang/String;ILjava/util/List;)V

    .line 1457
    .line 1458
    .line 1459
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 1460
    .line 1461
    .line 1462
    move-result v0

    .line 1463
    if-nez v0, :cond_28

    .line 1464
    .line 1465
    goto/16 :goto_17

    .line 1466
    .line 1467
    :cond_28
    const/4 v1, -0x1

    .line 1468
    add-int/2addr v0, v1

    .line 1469
    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/measurement/d;->o(I)Lcom/google/android/gms/internal/measurement/n;

    .line 1470
    .line 1471
    .line 1472
    move-result-object v1

    .line 1473
    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/measurement/d;->s(I)V

    .line 1474
    .line 1475
    .line 1476
    goto/16 :goto_26

    .line 1477
    .line 1478
    :pswitch_c
    move-object/from16 v6, p2

    .line 1479
    .line 1480
    move-object/from16 v1, p3

    .line 1481
    .line 1482
    const/4 v0, 0x0

    .line 1483
    const/4 v2, 0x1

    .line 1484
    invoke-static {v5, v2, v1}, Lcom/google/android/gms/internal/ads/Cw;->O1(Ljava/lang/String;ILjava/util/List;)V

    .line 1485
    .line 1486
    .line 1487
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v0

    .line 1491
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 1492
    .line 1493
    invoke-virtual {v6, v0}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v0

    .line 1497
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/m;

    .line 1498
    .line 1499
    if-eqz v1, :cond_2a

    .line 1500
    .line 1501
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 1502
    .line 1503
    .line 1504
    move-result v1

    .line 1505
    if-nez v1, :cond_29

    .line 1506
    .line 1507
    new-instance v1, Lcom/google/android/gms/internal/measurement/d;

    .line 1508
    .line 1509
    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/d;-><init>()V

    .line 1510
    .line 1511
    .line 1512
    goto/16 :goto_26

    .line 1513
    .line 1514
    :cond_29
    check-cast v0, Lcom/google/android/gms/internal/measurement/m;

    .line 1515
    .line 1516
    invoke-static {v15, v6, v0, v11, v11}, Lcom/google/android/gms/internal/ads/Cw;->B0(Lcom/google/android/gms/internal/measurement/d;Lm2/i;Lcom/google/android/gms/internal/measurement/m;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/d;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v1

    .line 1520
    goto/16 :goto_26

    .line 1521
    .line 1522
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1523
    .line 1524
    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1525
    .line 1526
    .line 1527
    throw v0

    .line 1528
    :pswitch_d
    move-object/from16 v6, p2

    .line 1529
    .line 1530
    move-object/from16 v1, p3

    .line 1531
    .line 1532
    const/4 v0, 0x2

    .line 1533
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/Cw;->U1(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1534
    .line 1535
    .line 1536
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1537
    .line 1538
    .line 1539
    move-result v0

    .line 1540
    if-nez v0, :cond_2b

    .line 1541
    .line 1542
    const/4 v0, 0x0

    .line 1543
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1544
    .line 1545
    .line 1546
    move-result-object v0

    .line 1547
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 1548
    .line 1549
    invoke-virtual {v6, v0}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v9

    .line 1553
    goto :goto_1a

    .line 1554
    :cond_2b
    move-object/from16 v9, p1

    .line 1555
    .line 1556
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 1557
    .line 1558
    .line 1559
    move-result v0

    .line 1560
    const/4 v2, -0x1

    .line 1561
    add-int/2addr v0, v2

    .line 1562
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    .line 1563
    .line 1564
    .line 1565
    move-result v3

    .line 1566
    const/4 v4, 0x1

    .line 1567
    if-le v3, v4, :cond_2d

    .line 1568
    .line 1569
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1570
    .line 1571
    .line 1572
    move-result-object v0

    .line 1573
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 1574
    .line 1575
    invoke-virtual {v6, v0}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1576
    .line 1577
    .line 1578
    move-result-object v0

    .line 1579
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzh()Ljava/lang/Double;

    .line 1580
    .line 1581
    .line 1582
    move-result-object v1

    .line 1583
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 1584
    .line 1585
    .line 1586
    move-result-wide v3

    .line 1587
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 1588
    .line 1589
    .line 1590
    move-result v1

    .line 1591
    if-eqz v1, :cond_2c

    .line 1592
    .line 1593
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 1594
    .line 1595
    .line 1596
    move-result v0

    .line 1597
    add-int/2addr v0, v2

    .line 1598
    int-to-double v0, v0

    .line 1599
    :goto_1b
    const-wide/16 v2, 0x0

    .line 1600
    .line 1601
    goto :goto_1c

    .line 1602
    :cond_2c
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzh()Ljava/lang/Double;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v0

    .line 1606
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 1607
    .line 1608
    .line 1609
    move-result-wide v0

    .line 1610
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Cw;->r(D)D

    .line 1611
    .line 1612
    .line 1613
    move-result-wide v0

    .line 1614
    goto :goto_1b

    .line 1615
    :goto_1c
    cmpg-double v4, v0, v2

    .line 1616
    .line 1617
    if-gez v4, :cond_2e

    .line 1618
    .line 1619
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 1620
    .line 1621
    .line 1622
    move-result v4

    .line 1623
    int-to-double v4, v4

    .line 1624
    add-double/2addr v0, v4

    .line 1625
    goto :goto_1d

    .line 1626
    :cond_2d
    const-wide/16 v2, 0x0

    .line 1627
    .line 1628
    int-to-double v0, v0

    .line 1629
    :cond_2e
    :goto_1d
    cmpg-double v4, v0, v2

    .line 1630
    .line 1631
    if-gez v4, :cond_2f

    .line 1632
    .line 1633
    new-instance v1, Lcom/google/android/gms/internal/measurement/g;

    .line 1634
    .line 1635
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1636
    .line 1637
    .line 1638
    move-result-object v0

    .line 1639
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 1640
    .line 1641
    .line 1642
    goto/16 :goto_26

    .line 1643
    .line 1644
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 1645
    .line 1646
    .line 1647
    move-result v2

    .line 1648
    int-to-double v2, v2

    .line 1649
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    .line 1650
    .line 1651
    .line 1652
    move-result-wide v0

    .line 1653
    double-to-int v0, v0

    .line 1654
    :goto_1e
    if-ltz v0, :cond_32

    .line 1655
    .line 1656
    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/measurement/d;->u(I)Z

    .line 1657
    .line 1658
    .line 1659
    move-result v1

    .line 1660
    if-eqz v1, :cond_31

    .line 1661
    .line 1662
    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/measurement/d;->o(I)Lcom/google/android/gms/internal/measurement/n;

    .line 1663
    .line 1664
    .line 1665
    move-result-object v1

    .line 1666
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/ads/Cw;->Z1(Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Z

    .line 1667
    .line 1668
    .line 1669
    move-result v1

    .line 1670
    if-eqz v1, :cond_31

    .line 1671
    .line 1672
    int-to-double v0, v0

    .line 1673
    new-instance v2, Lcom/google/android/gms/internal/measurement/g;

    .line 1674
    .line 1675
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1676
    .line 1677
    .line 1678
    move-result-object v0

    .line 1679
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 1680
    .line 1681
    .line 1682
    :cond_30
    move-object v1, v2

    .line 1683
    goto/16 :goto_26

    .line 1684
    .line 1685
    :cond_31
    const/4 v1, -0x1

    .line 1686
    add-int/2addr v0, v1

    .line 1687
    goto :goto_1e

    .line 1688
    :cond_32
    new-instance v1, Lcom/google/android/gms/internal/measurement/g;

    .line 1689
    .line 1690
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1691
    .line 1692
    .line 1693
    move-result-object v0

    .line 1694
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 1695
    .line 1696
    .line 1697
    goto/16 :goto_26

    .line 1698
    .line 1699
    :pswitch_e
    move-object/from16 v6, p2

    .line 1700
    .line 1701
    move-object/from16 v1, p3

    .line 1702
    .line 1703
    move-object/from16 v0, v23

    .line 1704
    .line 1705
    const/4 v2, 0x1

    .line 1706
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Cw;->U1(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1707
    .line 1708
    .line 1709
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 1710
    .line 1711
    .line 1712
    move-result v0

    .line 1713
    if-nez v0, :cond_33

    .line 1714
    .line 1715
    sget-object v1, Lcom/google/android/gms/internal/measurement/n;->z:Lcom/google/android/gms/internal/measurement/q;

    .line 1716
    .line 1717
    goto/16 :goto_26

    .line 1718
    .line 1719
    :cond_33
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1720
    .line 1721
    .line 1722
    move-result v0

    .line 1723
    if-nez v0, :cond_36

    .line 1724
    .line 1725
    const/4 v0, 0x0

    .line 1726
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1727
    .line 1728
    .line 1729
    move-result-object v0

    .line 1730
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 1731
    .line 1732
    invoke-virtual {v6, v0}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1733
    .line 1734
    .line 1735
    move-result-object v0

    .line 1736
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/l;

    .line 1737
    .line 1738
    if-nez v1, :cond_35

    .line 1739
    .line 1740
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/r;

    .line 1741
    .line 1742
    if-eqz v1, :cond_34

    .line 1743
    .line 1744
    goto :goto_1f

    .line 1745
    :cond_34
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzi()Ljava/lang/String;

    .line 1746
    .line 1747
    .line 1748
    move-result-object v9

    .line 1749
    goto :goto_20

    .line 1750
    :cond_35
    :goto_1f
    const-string v9, ""

    .line 1751
    .line 1752
    :cond_36
    :goto_20
    new-instance v1, Lcom/google/android/gms/internal/measurement/q;

    .line 1753
    .line 1754
    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/measurement/d;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 1755
    .line 1756
    .line 1757
    move-result-object v0

    .line 1758
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    .line 1759
    .line 1760
    .line 1761
    goto/16 :goto_26

    .line 1762
    .line 1763
    :pswitch_f
    move-object/from16 v6, p2

    .line 1764
    .line 1765
    move-object/from16 v1, p3

    .line 1766
    .line 1767
    move-object/from16 v0, v24

    .line 1768
    .line 1769
    const/4 v2, 0x2

    .line 1770
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Cw;->U1(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1771
    .line 1772
    .line 1773
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1774
    .line 1775
    .line 1776
    move-result v0

    .line 1777
    if-nez v0, :cond_37

    .line 1778
    .line 1779
    const/4 v0, 0x0

    .line 1780
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1781
    .line 1782
    .line 1783
    move-result-object v0

    .line 1784
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 1785
    .line 1786
    invoke-virtual {v6, v0}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1787
    .line 1788
    .line 1789
    move-result-object v9

    .line 1790
    goto :goto_21

    .line 1791
    :cond_37
    move-object/from16 v9, p1

    .line 1792
    .line 1793
    :goto_21
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    .line 1794
    .line 1795
    .line 1796
    move-result v0

    .line 1797
    const/4 v2, 0x1

    .line 1798
    if-le v0, v2, :cond_3a

    .line 1799
    .line 1800
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1801
    .line 1802
    .line 1803
    move-result-object v0

    .line 1804
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 1805
    .line 1806
    invoke-virtual {v6, v0}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1807
    .line 1808
    .line 1809
    move-result-object v0

    .line 1810
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzh()Ljava/lang/Double;

    .line 1811
    .line 1812
    .line 1813
    move-result-object v0

    .line 1814
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 1815
    .line 1816
    .line 1817
    move-result-wide v0

    .line 1818
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Cw;->r(D)D

    .line 1819
    .line 1820
    .line 1821
    move-result-wide v0

    .line 1822
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 1823
    .line 1824
    .line 1825
    move-result v2

    .line 1826
    int-to-double v2, v2

    .line 1827
    cmpl-double v4, v0, v2

    .line 1828
    .line 1829
    if-ltz v4, :cond_38

    .line 1830
    .line 1831
    new-instance v1, Lcom/google/android/gms/internal/measurement/g;

    .line 1832
    .line 1833
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1834
    .line 1835
    .line 1836
    move-result-object v0

    .line 1837
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 1838
    .line 1839
    .line 1840
    goto/16 :goto_26

    .line 1841
    .line 1842
    :cond_38
    const-wide/16 v2, 0x0

    .line 1843
    .line 1844
    cmpg-double v4, v0, v2

    .line 1845
    .line 1846
    if-gez v4, :cond_39

    .line 1847
    .line 1848
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 1849
    .line 1850
    .line 1851
    move-result v2

    .line 1852
    int-to-double v2, v2

    .line 1853
    add-double v11, v2, v0

    .line 1854
    .line 1855
    goto :goto_22

    .line 1856
    :cond_39
    move-wide v11, v0

    .line 1857
    goto :goto_22

    .line 1858
    :cond_3a
    const-wide/16 v2, 0x0

    .line 1859
    .line 1860
    move-wide v11, v2

    .line 1861
    :goto_22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->q()Ljava/util/Iterator;

    .line 1862
    .line 1863
    .line 1864
    move-result-object v0

    .line 1865
    :cond_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1866
    .line 1867
    .line 1868
    move-result v1

    .line 1869
    if-eqz v1, :cond_3c

    .line 1870
    .line 1871
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1872
    .line 1873
    .line 1874
    move-result-object v1

    .line 1875
    check-cast v1, Ljava/lang/Integer;

    .line 1876
    .line 1877
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1878
    .line 1879
    .line 1880
    move-result v1

    .line 1881
    int-to-double v2, v1

    .line 1882
    cmpg-double v4, v2, v11

    .line 1883
    .line 1884
    if-ltz v4, :cond_3b

    .line 1885
    .line 1886
    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/measurement/d;->o(I)Lcom/google/android/gms/internal/measurement/n;

    .line 1887
    .line 1888
    .line 1889
    move-result-object v1

    .line 1890
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/ads/Cw;->Z1(Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Z

    .line 1891
    .line 1892
    .line 1893
    move-result v1

    .line 1894
    if-eqz v1, :cond_3b

    .line 1895
    .line 1896
    new-instance v1, Lcom/google/android/gms/internal/measurement/g;

    .line 1897
    .line 1898
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1899
    .line 1900
    .line 1901
    move-result-object v0

    .line 1902
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 1903
    .line 1904
    .line 1905
    goto/16 :goto_26

    .line 1906
    .line 1907
    :cond_3c
    new-instance v1, Lcom/google/android/gms/internal/measurement/g;

    .line 1908
    .line 1909
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1910
    .line 1911
    .line 1912
    move-result-object v0

    .line 1913
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 1914
    .line 1915
    .line 1916
    goto/16 :goto_26

    .line 1917
    .line 1918
    :pswitch_10
    move-object/from16 v6, p2

    .line 1919
    .line 1920
    move-object/from16 v1, p3

    .line 1921
    .line 1922
    move-object/from16 v0, v22

    .line 1923
    .line 1924
    const/4 v2, 0x1

    .line 1925
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Cw;->O1(Ljava/lang/String;ILjava/util/List;)V

    .line 1926
    .line 1927
    .line 1928
    const/4 v0, 0x0

    .line 1929
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1930
    .line 1931
    .line 1932
    move-result-object v0

    .line 1933
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 1934
    .line 1935
    invoke-virtual {v6, v0}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1936
    .line 1937
    .line 1938
    move-result-object v0

    .line 1939
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/m;

    .line 1940
    .line 1941
    if-eqz v1, :cond_3e

    .line 1942
    .line 1943
    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    .line 1944
    .line 1945
    .line 1946
    move-result v1

    .line 1947
    if-nez v1, :cond_3d

    .line 1948
    .line 1949
    goto/16 :goto_17

    .line 1950
    .line 1951
    :cond_3d
    check-cast v0, Lcom/google/android/gms/internal/measurement/m;

    .line 1952
    .line 1953
    invoke-static {v15, v6, v0, v11, v11}, Lcom/google/android/gms/internal/ads/Cw;->B0(Lcom/google/android/gms/internal/measurement/d;Lm2/i;Lcom/google/android/gms/internal/measurement/m;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/d;

    .line 1954
    .line 1955
    .line 1956
    goto/16 :goto_17

    .line 1957
    .line 1958
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1959
    .line 1960
    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1961
    .line 1962
    .line 1963
    throw v0

    .line 1964
    :pswitch_11
    move-object/from16 v6, p2

    .line 1965
    .line 1966
    move-object/from16 v1, p3

    .line 1967
    .line 1968
    move-object/from16 v0, v17

    .line 1969
    .line 1970
    const/4 v2, 0x1

    .line 1971
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Cw;->O1(Ljava/lang/String;ILjava/util/List;)V

    .line 1972
    .line 1973
    .line 1974
    const/4 v0, 0x0

    .line 1975
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1976
    .line 1977
    .line 1978
    move-result-object v0

    .line 1979
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 1980
    .line 1981
    invoke-virtual {v6, v0}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1982
    .line 1983
    .line 1984
    move-result-object v0

    .line 1985
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/m;

    .line 1986
    .line 1987
    if-eqz v1, :cond_40

    .line 1988
    .line 1989
    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    .line 1990
    .line 1991
    .line 1992
    move-result v1

    .line 1993
    if-nez v1, :cond_3f

    .line 1994
    .line 1995
    new-instance v1, Lcom/google/android/gms/internal/measurement/d;

    .line 1996
    .line 1997
    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/d;-><init>()V

    .line 1998
    .line 1999
    .line 2000
    goto/16 :goto_26

    .line 2001
    .line 2002
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->zzd()Lcom/google/android/gms/internal/measurement/n;

    .line 2003
    .line 2004
    .line 2005
    move-result-object v1

    .line 2006
    check-cast v1, Lcom/google/android/gms/internal/measurement/d;

    .line 2007
    .line 2008
    check-cast v0, Lcom/google/android/gms/internal/measurement/m;

    .line 2009
    .line 2010
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2011
    .line 2012
    invoke-static {v15, v6, v0, v11, v2}, Lcom/google/android/gms/internal/ads/Cw;->B0(Lcom/google/android/gms/internal/measurement/d;Lm2/i;Lcom/google/android/gms/internal/measurement/m;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/d;

    .line 2013
    .line 2014
    .line 2015
    move-result-object v0

    .line 2016
    new-instance v2, Lcom/google/android/gms/internal/measurement/d;

    .line 2017
    .line 2018
    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/d;-><init>()V

    .line 2019
    .line 2020
    .line 2021
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->q()Ljava/util/Iterator;

    .line 2022
    .line 2023
    .line 2024
    move-result-object v0

    .line 2025
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2026
    .line 2027
    .line 2028
    move-result v3

    .line 2029
    if-eqz v3, :cond_30

    .line 2030
    .line 2031
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2032
    .line 2033
    .line 2034
    move-result-object v3

    .line 2035
    check-cast v3, Ljava/lang/Integer;

    .line 2036
    .line 2037
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 2038
    .line 2039
    .line 2040
    move-result v3

    .line 2041
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/d;->o(I)Lcom/google/android/gms/internal/measurement/n;

    .line 2042
    .line 2043
    .line 2044
    move-result-object v3

    .line 2045
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 2046
    .line 2047
    .line 2048
    move-result v4

    .line 2049
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/measurement/d;->t(ILcom/google/android/gms/internal/measurement/n;)V

    .line 2050
    .line 2051
    .line 2052
    goto :goto_23

    .line 2053
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2054
    .line 2055
    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2056
    .line 2057
    .line 2058
    throw v0

    .line 2059
    :pswitch_12
    move-object/from16 v6, p2

    .line 2060
    .line 2061
    move-object/from16 v1, p3

    .line 2062
    .line 2063
    move-object/from16 v0, v16

    .line 2064
    .line 2065
    const/4 v2, 0x1

    .line 2066
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Cw;->O1(Ljava/lang/String;ILjava/util/List;)V

    .line 2067
    .line 2068
    .line 2069
    const/4 v0, 0x0

    .line 2070
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2071
    .line 2072
    .line 2073
    move-result-object v0

    .line 2074
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 2075
    .line 2076
    invoke-virtual {v6, v0}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 2077
    .line 2078
    .line 2079
    move-result-object v0

    .line 2080
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/m;

    .line 2081
    .line 2082
    if-eqz v1, :cond_42

    .line 2083
    .line 2084
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 2085
    .line 2086
    .line 2087
    move-result v1

    .line 2088
    if-nez v1, :cond_41

    .line 2089
    .line 2090
    goto/16 :goto_13

    .line 2091
    .line 2092
    :cond_41
    check-cast v0, Lcom/google/android/gms/internal/measurement/m;

    .line 2093
    .line 2094
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2095
    .line 2096
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2097
    .line 2098
    invoke-static {v15, v6, v0, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->B0(Lcom/google/android/gms/internal/measurement/d;Lm2/i;Lcom/google/android/gms/internal/measurement/m;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/d;

    .line 2099
    .line 2100
    .line 2101
    move-result-object v0

    .line 2102
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 2103
    .line 2104
    .line 2105
    move-result v0

    .line 2106
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 2107
    .line 2108
    .line 2109
    move-result v1

    .line 2110
    if-eq v0, v1, :cond_1d

    .line 2111
    .line 2112
    goto/16 :goto_12

    .line 2113
    .line 2114
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2115
    .line 2116
    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2117
    .line 2118
    .line 2119
    throw v0

    .line 2120
    :pswitch_13
    move-object/from16 v6, p2

    .line 2121
    .line 2122
    move-object/from16 v1, p3

    .line 2123
    .line 2124
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/d;->zzd()Lcom/google/android/gms/internal/measurement/n;

    .line 2125
    .line 2126
    .line 2127
    move-result-object v0

    .line 2128
    check-cast v0, Lcom/google/android/gms/internal/measurement/d;

    .line 2129
    .line 2130
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2131
    .line 2132
    .line 2133
    move-result v2

    .line 2134
    if-nez v2, :cond_46

    .line 2135
    .line 2136
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2137
    .line 2138
    .line 2139
    move-result-object v1

    .line 2140
    :cond_43
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2141
    .line 2142
    .line 2143
    move-result v2

    .line 2144
    if-eqz v2, :cond_46

    .line 2145
    .line 2146
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2147
    .line 2148
    .line 2149
    move-result-object v2

    .line 2150
    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    .line 2151
    .line 2152
    invoke-virtual {v6, v2}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 2153
    .line 2154
    .line 2155
    move-result-object v2

    .line 2156
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/f;

    .line 2157
    .line 2158
    if-nez v3, :cond_45

    .line 2159
    .line 2160
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 2161
    .line 2162
    .line 2163
    move-result v3

    .line 2164
    instance-of v4, v2, Lcom/google/android/gms/internal/measurement/d;

    .line 2165
    .line 2166
    if-eqz v4, :cond_44

    .line 2167
    .line 2168
    check-cast v2, Lcom/google/android/gms/internal/measurement/d;

    .line 2169
    .line 2170
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/d;->q()Ljava/util/Iterator;

    .line 2171
    .line 2172
    .line 2173
    move-result-object v4

    .line 2174
    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 2175
    .line 2176
    .line 2177
    move-result v5

    .line 2178
    if-eqz v5, :cond_43

    .line 2179
    .line 2180
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2181
    .line 2182
    .line 2183
    move-result-object v5

    .line 2184
    check-cast v5, Ljava/lang/Integer;

    .line 2185
    .line 2186
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 2187
    .line 2188
    .line 2189
    move-result v7

    .line 2190
    add-int/2addr v7, v3

    .line 2191
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 2192
    .line 2193
    .line 2194
    move-result v5

    .line 2195
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/measurement/d;->o(I)Lcom/google/android/gms/internal/measurement/n;

    .line 2196
    .line 2197
    .line 2198
    move-result-object v5

    .line 2199
    invoke-virtual {v0, v7, v5}, Lcom/google/android/gms/internal/measurement/d;->t(ILcom/google/android/gms/internal/measurement/n;)V

    .line 2200
    .line 2201
    .line 2202
    goto :goto_25

    .line 2203
    :cond_44
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/measurement/d;->t(ILcom/google/android/gms/internal/measurement/n;)V

    .line 2204
    .line 2205
    .line 2206
    goto :goto_24

    .line 2207
    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2208
    .line 2209
    const-string v1, "Failed evaluation of arguments"

    .line 2210
    .line 2211
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2212
    .line 2213
    .line 2214
    throw v0

    .line 2215
    :cond_46
    move-object v1, v0

    .line 2216
    :cond_47
    :goto_26
    move-object v0, v1

    .line 2217
    :goto_27
    return-object v0

    .line 2218
    nop

    :sswitch_data_0
    .sparse-switch
        -0x69e9ad94 -> :sswitch_13
        -0x50c088ec -> :sswitch_12
        -0x4bf73488 -> :sswitch_11
        -0x37b90a9a -> :sswitch_10
        -0x3565b984 -> :sswitch_f
        -0x28732996 -> :sswitch_e
        -0x1bdda92d -> :sswitch_d
        -0x108c6a77 -> :sswitch_c
        0x1a55c -> :sswitch_b
        0x1b251 -> :sswitch_a
        0x31dd2a -> :sswitch_9
        0x34af1a -> :sswitch_8
        0x35f4f4 -> :sswitch_7
        0x35f59e -> :sswitch_6
        0x5c6731b -> :sswitch_5
        0x6856c82 -> :sswitch_4
        0x6873d92 -> :sswitch_3
        0x398d4c56 -> :sswitch_2
        0x418e52e2 -> :sswitch_1
        0x73d44649 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final n()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->G:Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    return v0
.end method

.method public final o(I)Lcom/google/android/gms/internal/measurement/n;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ge p1, v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/d;->u(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->G:Ljava/util/TreeMap;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/google/android/gms/internal/measurement/n;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/n;->s:Lcom/google/android/gms/internal/measurement/r;

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 32
    .line 33
    const-string v0, "Attempting to get element outside of current array"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public final p(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/d;->G:Ljava/util/TreeMap;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_3

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-nez p1, :cond_0

    .line 17
    .line 18
    const-string v3, ""

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    move-object v3, p1

    .line 22
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-ge v2, v4, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/d;->o(I)Lcom/google/android/gms/internal/measurement/n;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    instance-of v3, v4, Lcom/google/android/gms/internal/measurement/r;

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    instance-of v3, v4, Lcom/google/android/gms/internal/measurement/l;

    .line 40
    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/n;->zzi()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method

.method public final q()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->G:Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final r()Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/d;->n()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/d;->o(I)Lcom/google/android/gms/internal/measurement/n;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-object v0
.end method

.method public final s(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->G:Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-gt p1, v1, :cond_2

    .line 14
    .line 15
    if-gez p1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    if-ne p1, v1, :cond_1

    .line 26
    .line 27
    add-int/lit8 p1, p1, -0x1

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    if-ltz p1, :cond_2

    .line 40
    .line 41
    sget-object p1, Lcom/google/android/gms/internal/measurement/n;->s:Lcom/google/android/gms/internal/measurement/r;

    .line 42
    .line 43
    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-gt p1, v1, :cond_2

    .line 60
    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    .line 70
    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    add-int/lit8 v3, p1, -0x1

    .line 74
    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    :goto_1
    return-void
.end method

.method public final t(ILcom/google/android/gms/internal/measurement/n;)V
    .locals 1

    .line 1
    const/16 v0, 0x7ed4

    .line 2
    .line 3
    if-gt p1, v0, :cond_2

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->G:Ljava/util/TreeMap;

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 28
    .line 29
    const-string v0, "Out of bounds index: "

    .line 30
    .line 31
    invoke-static {v0, p1}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p2

    .line 39
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string p2, "Array too large"

    .line 42
    .line 43
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/d;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final u(I)Z
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->G:Ljava/util/TreeMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-gt p1, v1, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 27
    .line 28
    const-string v1, "Out of bounds index: "

    .line 29
    .line 30
    invoke-static {v1, p1}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/measurement/n;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/d;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/d;->G:Ljava/util/TreeMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    instance-of v3, v3, Lcom/google/android/gms/internal/measurement/j;

    .line 33
    .line 34
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/d;->G:Ljava/util/TreeMap;

    .line 35
    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    .line 49
    .line 50
    invoke-virtual {v4, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    .line 65
    .line 66
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/n;->zzd()Lcom/google/android/gms/internal/measurement/n;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v4, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    return-object v0
.end method

.method public final zzg()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzh()Ljava/lang/Double;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->G:Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/d;->o(I)Lcom/google/android/gms/internal/measurement/n;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzh()Ljava/lang/Double;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-gtz v0, :cond_1

    .line 25
    .line 26
    const-wide/16 v0, 0x0

    .line 27
    .line 28
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/d;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zzl()Ljava/util/Iterator;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->G:Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/d;->H:Ljava/util/TreeMap;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lcom/google/android/gms/internal/measurement/c;

    .line 22
    .line 23
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/c;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;)V

    .line 24
    .line 25
    .line 26
    return-object v2
.end method
