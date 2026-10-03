.class public final LY/i;
.super LY/e0;
.source "SourceFile"


# direct methods
.method public static i(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 4

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_3

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 v1, 0x0

    .line 29
    :goto_0
    if-ge v1, p1, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    invoke-static {p0, v2}, LY/i;->i(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :cond_3
    :goto_1
    return-void
.end method

.method public static j(Landroid/view/View;Lr/f;)V
    .locals 4

    .line 1
    sget-object v0, LN/N;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-static {p0}, LN/E;->f(Landroid/view/View;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, v0, p0}, Lr/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    check-cast p0, Landroid/view/ViewGroup;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    if-ge v1, v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    invoke-static {v2, p1}, LY/i;->j(Landroid/view/View;Lr/f;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return-void
.end method

.method public static k(Lr/f;Ljava/util/Collection;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lr/f;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/view/View;

    .line 26
    .line 27
    sget-object v1, LN/N;->a:Ljava/util/WeakHashMap;

    .line 28
    .line 29
    invoke-static {v0}, LN/E;->f(Landroid/view/View;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;Z)V
    .locals 40

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v7, p2

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v9, 0x0

    .line 12
    const/4 v10, 0x0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v11, 0x2

    .line 18
    const/4 v12, 0x3

    .line 19
    const/4 v13, 0x1

    .line 20
    if-eqz v2, :cond_3

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, LY/d0;

    .line 27
    .line 28
    iget-object v3, v2, LY/d0;->c:LY/s;

    .line 29
    .line 30
    iget-object v3, v3, LY/s;->m0:Landroid/view/View;

    .line 31
    .line 32
    invoke-static {v3}, LA0/O;->f(Landroid/view/View;)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    iget v4, v2, LY/d0;->a:I

    .line 37
    .line 38
    invoke-static {v4}, Lu/h;->b(I)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    if-eq v4, v13, :cond_1

    .line 45
    .line 46
    if-eq v4, v11, :cond_2

    .line 47
    .line 48
    if-eq v4, v12, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    if-eq v3, v11, :cond_0

    .line 52
    .line 53
    move-object v10, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    if-ne v3, v11, :cond_0

    .line 56
    .line 57
    if-nez v9, :cond_0

    .line 58
    .line 59
    move-object v9, v2

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const-string v14, "FragmentManager"

    .line 62
    .line 63
    invoke-static {v14, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    const-string v15, " to "

    .line 68
    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v2, "Executing operations from "

    .line 74
    .line 75
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v14, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    new-instance v4, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .line 103
    .line 104
    new-instance v3, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v0, v13}, Lcom/google/protobuf/U2;->g(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, LY/d0;

    .line 114
    .line 115
    iget-object v1, v1, LY/d0;->c:LY/s;

    .line 116
    .line 117
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v16

    .line 125
    if-eqz v16, :cond_5

    .line 126
    .line 127
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v16

    .line 131
    move-object/from16 v8, v16

    .line 132
    .line 133
    check-cast v8, LY/d0;

    .line 134
    .line 135
    iget-object v8, v8, LY/d0;->c:LY/s;

    .line 136
    .line 137
    iget-object v8, v8, LY/s;->p0:LY/q;

    .line 138
    .line 139
    iget-object v13, v1, LY/s;->p0:LY/q;

    .line 140
    .line 141
    iget v11, v13, LY/q;->b:I

    .line 142
    .line 143
    iput v11, v8, LY/q;->b:I

    .line 144
    .line 145
    iget v11, v13, LY/q;->c:I

    .line 146
    .line 147
    iput v11, v8, LY/q;->c:I

    .line 148
    .line 149
    iget v11, v13, LY/q;->d:I

    .line 150
    .line 151
    iput v11, v8, LY/q;->d:I

    .line 152
    .line 153
    iget v11, v13, LY/q;->e:I

    .line 154
    .line 155
    iput v11, v8, LY/q;->e:I

    .line 156
    .line 157
    const/4 v11, 0x2

    .line 158
    const/4 v13, 0x1

    .line 159
    goto :goto_1

    .line 160
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    const/4 v8, 0x0

    .line 169
    if-eqz v1, :cond_8

    .line 170
    .line 171
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    check-cast v1, LY/d0;

    .line 176
    .line 177
    new-instance v2, LJ/c;

    .line 178
    .line 179
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, LY/d0;->d()V

    .line 183
    .line 184
    .line 185
    iget-object v11, v1, LY/d0;->e:Ljava/util/HashSet;

    .line 186
    .line 187
    invoke-virtual {v11, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    new-instance v13, LY/g;

    .line 191
    .line 192
    invoke-direct {v13, v1, v2}, Lf/H;-><init>(LY/d0;LJ/c;)V

    .line 193
    .line 194
    .line 195
    iput-boolean v8, v13, LY/g;->d:Z

    .line 196
    .line 197
    iput-boolean v7, v13, LY/g;->c:Z

    .line 198
    .line 199
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    new-instance v2, LJ/c;

    .line 203
    .line 204
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, LY/d0;->d()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v11, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    new-instance v11, LY/h;

    .line 214
    .line 215
    if-eqz v7, :cond_6

    .line 216
    .line 217
    if-ne v1, v9, :cond_7

    .line 218
    .line 219
    :goto_3
    const/4 v8, 0x1

    .line 220
    goto :goto_4

    .line 221
    :cond_6
    if-ne v1, v10, :cond_7

    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_7
    :goto_4
    invoke-direct {v11, v1, v2, v7, v8}, LY/h;-><init>(LY/d0;LJ/c;ZZ)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    new-instance v2, LK/a;

    .line 231
    .line 232
    invoke-direct {v2, v6, v3, v1, v12}, LK/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 233
    .line 234
    .line 235
    iget-object v1, v1, LY/d0;->d:Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_8
    new-instance v11, Ljava/util/HashMap;

    .line 242
    .line 243
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    const/4 v13, 0x0

    .line 251
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-eqz v1, :cond_10

    .line 256
    .line 257
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    check-cast v1, LY/h;

    .line 262
    .line 263
    invoke-virtual {v1}, Lf/H;->g()Z

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    if-eqz v2, :cond_9

    .line 268
    .line 269
    goto :goto_5

    .line 270
    :cond_9
    iget-object v2, v1, LY/h;->c:Ljava/lang/Object;

    .line 271
    .line 272
    invoke-virtual {v1, v2}, LY/h;->s(Ljava/lang/Object;)LY/Z;

    .line 273
    .line 274
    .line 275
    move-result-object v12

    .line 276
    iget-object v8, v1, LY/h;->e:Ljava/lang/Object;

    .line 277
    .line 278
    move-object/from16 v18, v0

    .line 279
    .line 280
    invoke-virtual {v1, v8}, LY/h;->s(Ljava/lang/Object;)LY/Z;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    move-object/from16 v19, v3

    .line 285
    .line 286
    const-string v3, " returned Transition "

    .line 287
    .line 288
    move-object/from16 v20, v5

    .line 289
    .line 290
    const-string v5, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    .line 291
    .line 292
    if-eqz v12, :cond_b

    .line 293
    .line 294
    if-eqz v0, :cond_b

    .line 295
    .line 296
    if-ne v12, v0, :cond_a

    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 300
    .line 301
    new-instance v4, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    iget-object v1, v1, Lf/H;->a:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast v1, LY/d0;

    .line 309
    .line 310
    iget-object v1, v1, LY/d0;->c:LY/s;

    .line 311
    .line 312
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    const-string v1, " which uses a different Transition  type than its shared element transition "

    .line 322
    .line 323
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw v0

    .line 337
    :cond_b
    :goto_6
    if-eqz v12, :cond_c

    .line 338
    .line 339
    goto :goto_7

    .line 340
    :cond_c
    move-object v12, v0

    .line 341
    :goto_7
    if-nez v13, :cond_d

    .line 342
    .line 343
    move-object v13, v12

    .line 344
    goto :goto_8

    .line 345
    :cond_d
    if-eqz v12, :cond_f

    .line 346
    .line 347
    if-ne v13, v12, :cond_e

    .line 348
    .line 349
    goto :goto_8

    .line 350
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 351
    .line 352
    new-instance v4, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    iget-object v1, v1, Lf/H;->a:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast v1, LY/d0;

    .line 360
    .line 361
    iget-object v1, v1, LY/d0;->c:LY/s;

    .line 362
    .line 363
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    const-string v1, " which uses a different Transition  type than other Fragments."

    .line 373
    .line 374
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    throw v0

    .line 385
    :cond_f
    :goto_8
    move-object/from16 v0, v18

    .line 386
    .line 387
    move-object/from16 v3, v19

    .line 388
    .line 389
    move-object/from16 v5, v20

    .line 390
    .line 391
    const/4 v8, 0x0

    .line 392
    const/4 v12, 0x3

    .line 393
    goto/16 :goto_5

    .line 394
    .line 395
    :cond_10
    move-object/from16 v19, v3

    .line 396
    .line 397
    move-object/from16 v20, v5

    .line 398
    .line 399
    iget-object v8, v6, LY/e0;->a:Landroid/view/ViewGroup;

    .line 400
    .line 401
    if-nez v13, :cond_12

    .line 402
    .line 403
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    if-eqz v1, :cond_11

    .line 412
    .line 413
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    check-cast v1, LY/h;

    .line 418
    .line 419
    iget-object v2, v1, Lf/H;->a:Ljava/lang/Object;

    .line 420
    .line 421
    check-cast v2, LY/d0;

    .line 422
    .line 423
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 424
    .line 425
    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1}, Lf/H;->c()V

    .line 429
    .line 430
    .line 431
    goto :goto_9

    .line 432
    :cond_11
    move-object/from16 v38, v9

    .line 433
    .line 434
    move-object/from16 v37, v10

    .line 435
    .line 436
    move-object v1, v11

    .line 437
    move-object/from16 v32, v15

    .line 438
    .line 439
    move-object/from16 v36, v19

    .line 440
    .line 441
    move-object/from16 v27, v20

    .line 442
    .line 443
    const/4 v3, 0x0

    .line 444
    move-object v15, v14

    .line 445
    goto/16 :goto_2a

    .line 446
    .line 447
    :cond_12
    new-instance v12, Landroid/view/View;

    .line 448
    .line 449
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    invoke-direct {v12, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 454
    .line 455
    .line 456
    new-instance v5, Landroid/graphics/Rect;

    .line 457
    .line 458
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 459
    .line 460
    .line 461
    new-instance v3, Ljava/util/ArrayList;

    .line 462
    .line 463
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .line 465
    .line 466
    new-instance v2, Ljava/util/ArrayList;

    .line 467
    .line 468
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .line 470
    .line 471
    new-instance v1, Lr/f;

    .line 472
    .line 473
    const/4 v0, 0x0

    .line 474
    invoke-direct {v1, v0}, Lr/m;-><init>(I)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 478
    .line 479
    .line 480
    move-result-object v24

    .line 481
    const/4 v0, 0x0

    .line 482
    const/16 v18, 0x0

    .line 483
    .line 484
    const/16 v25, 0x0

    .line 485
    .line 486
    :goto_a
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    .line 487
    .line 488
    .line 489
    move-result v21

    .line 490
    if-eqz v21, :cond_26

    .line 491
    .line 492
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v21

    .line 496
    move-object/from16 v22, v4

    .line 497
    .line 498
    move-object/from16 v4, v21

    .line 499
    .line 500
    check-cast v4, LY/h;

    .line 501
    .line 502
    iget-object v4, v4, LY/h;->e:Ljava/lang/Object;

    .line 503
    .line 504
    if-eqz v4, :cond_25

    .line 505
    .line 506
    if-eqz v9, :cond_25

    .line 507
    .line 508
    if-eqz v10, :cond_25

    .line 509
    .line 510
    invoke-virtual {v13, v4}, LY/Z;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    invoke-virtual {v13, v0}, LY/Z;->r(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v4

    .line 518
    iget-object v0, v10, LY/d0;->c:LY/s;

    .line 519
    .line 520
    move-object/from16 v21, v4

    .line 521
    .line 522
    iget-object v4, v0, LY/s;->p0:LY/q;

    .line 523
    .line 524
    if-eqz v4, :cond_14

    .line 525
    .line 526
    iget-object v4, v4, LY/q;->g:Ljava/util/ArrayList;

    .line 527
    .line 528
    if-nez v4, :cond_13

    .line 529
    .line 530
    goto :goto_c

    .line 531
    :cond_13
    :goto_b
    move-object/from16 v23, v5

    .line 532
    .line 533
    goto :goto_d

    .line 534
    :cond_14
    :goto_c
    new-instance v4, Ljava/util/ArrayList;

    .line 535
    .line 536
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .line 538
    .line 539
    goto :goto_b

    .line 540
    :goto_d
    iget-object v5, v9, LY/d0;->c:LY/s;

    .line 541
    .line 542
    iget-object v7, v5, LY/s;->p0:LY/q;

    .line 543
    .line 544
    if-eqz v7, :cond_16

    .line 545
    .line 546
    iget-object v7, v7, LY/q;->g:Ljava/util/ArrayList;

    .line 547
    .line 548
    if-nez v7, :cond_15

    .line 549
    .line 550
    goto :goto_f

    .line 551
    :cond_15
    :goto_e
    move-object/from16 v32, v15

    .line 552
    .line 553
    goto :goto_10

    .line 554
    :cond_16
    :goto_f
    new-instance v7, Ljava/util/ArrayList;

    .line 555
    .line 556
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 557
    .line 558
    .line 559
    goto :goto_e

    .line 560
    :goto_10
    iget-object v15, v5, LY/s;->p0:LY/q;

    .line 561
    .line 562
    if-eqz v15, :cond_17

    .line 563
    .line 564
    iget-object v15, v15, LY/q;->h:Ljava/util/ArrayList;

    .line 565
    .line 566
    if-nez v15, :cond_18

    .line 567
    .line 568
    :cond_17
    new-instance v15, Ljava/util/ArrayList;

    .line 569
    .line 570
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .line 572
    .line 573
    :cond_18
    move-object/from16 v33, v11

    .line 574
    .line 575
    const/4 v6, 0x0

    .line 576
    :goto_11
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 577
    .line 578
    .line 579
    move-result v11

    .line 580
    if-ge v6, v11, :cond_1a

    .line 581
    .line 582
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v11

    .line 586
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 587
    .line 588
    .line 589
    move-result v11

    .line 590
    move-object/from16 v26, v15

    .line 591
    .line 592
    const/4 v15, -0x1

    .line 593
    if-eq v11, v15, :cond_19

    .line 594
    .line 595
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v15

    .line 599
    check-cast v15, Ljava/lang/String;

    .line 600
    .line 601
    invoke-virtual {v4, v11, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    :cond_19
    add-int/lit8 v6, v6, 0x1

    .line 605
    .line 606
    move-object/from16 v15, v26

    .line 607
    .line 608
    goto :goto_11

    .line 609
    :cond_1a
    iget-object v6, v0, LY/s;->p0:LY/q;

    .line 610
    .line 611
    if-eqz v6, :cond_1b

    .line 612
    .line 613
    iget-object v6, v6, LY/q;->h:Ljava/util/ArrayList;

    .line 614
    .line 615
    if-nez v6, :cond_1c

    .line 616
    .line 617
    :cond_1b
    new-instance v6, Ljava/util/ArrayList;

    .line 618
    .line 619
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .line 621
    .line 622
    :cond_1c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 623
    .line 624
    .line 625
    move-result v7

    .line 626
    const/4 v11, 0x0

    .line 627
    :goto_12
    if-ge v11, v7, :cond_1d

    .line 628
    .line 629
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v15

    .line 633
    check-cast v15, Ljava/lang/String;

    .line 634
    .line 635
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    move-result-object v26

    .line 639
    move/from16 v27, v7

    .line 640
    .line 641
    move-object/from16 v7, v26

    .line 642
    .line 643
    check-cast v7, Ljava/lang/String;

    .line 644
    .line 645
    invoke-virtual {v1, v15, v7}, Lr/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    add-int/lit8 v11, v11, 0x1

    .line 649
    .line 650
    move/from16 v7, v27

    .line 651
    .line 652
    goto :goto_12

    .line 653
    :cond_1d
    const/4 v7, 0x2

    .line 654
    invoke-static {v14, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 655
    .line 656
    .line 657
    move-result v11

    .line 658
    if-eqz v11, :cond_1f

    .line 659
    .line 660
    const-string v7, ">>> entering view names <<<"

    .line 661
    .line 662
    invoke-static {v14, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    .line 664
    .line 665
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 666
    .line 667
    .line 668
    move-result-object v7

    .line 669
    :goto_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 670
    .line 671
    .line 672
    move-result v11

    .line 673
    const-string v15, "Name: "

    .line 674
    .line 675
    if-eqz v11, :cond_1e

    .line 676
    .line 677
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object v11

    .line 681
    check-cast v11, Ljava/lang/String;

    .line 682
    .line 683
    move-object/from16 v26, v7

    .line 684
    .line 685
    new-instance v7, Ljava/lang/StringBuilder;

    .line 686
    .line 687
    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v7

    .line 697
    invoke-static {v14, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    .line 699
    .line 700
    move-object/from16 v7, v26

    .line 701
    .line 702
    goto :goto_13

    .line 703
    :cond_1e
    const-string v7, ">>> exiting view names <<<"

    .line 704
    .line 705
    invoke-static {v14, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    .line 707
    .line 708
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 709
    .line 710
    .line 711
    move-result-object v7

    .line 712
    :goto_14
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 713
    .line 714
    .line 715
    move-result v11

    .line 716
    if-eqz v11, :cond_1f

    .line 717
    .line 718
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object v11

    .line 722
    check-cast v11, Ljava/lang/String;

    .line 723
    .line 724
    move-object/from16 v26, v7

    .line 725
    .line 726
    new-instance v7, Ljava/lang/StringBuilder;

    .line 727
    .line 728
    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v7

    .line 738
    invoke-static {v14, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    .line 740
    .line 741
    move-object/from16 v7, v26

    .line 742
    .line 743
    goto :goto_14

    .line 744
    :cond_1f
    new-instance v7, Lr/f;

    .line 745
    .line 746
    const/4 v11, 0x0

    .line 747
    invoke-direct {v7, v11}, Lr/m;-><init>(I)V

    .line 748
    .line 749
    .line 750
    iget-object v5, v5, LY/s;->m0:Landroid/view/View;

    .line 751
    .line 752
    invoke-static {v5, v7}, LY/i;->j(Landroid/view/View;Lr/f;)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v7, v4}, Lr/f;->m(Ljava/util/Collection;)Z

    .line 756
    .line 757
    .line 758
    invoke-virtual {v7}, Lr/f;->keySet()Ljava/util/Set;

    .line 759
    .line 760
    .line 761
    move-result-object v5

    .line 762
    invoke-virtual {v1, v5}, Lr/f;->m(Ljava/util/Collection;)Z

    .line 763
    .line 764
    .line 765
    new-instance v15, Lr/f;

    .line 766
    .line 767
    invoke-direct {v15, v11}, Lr/m;-><init>(I)V

    .line 768
    .line 769
    .line 770
    iget-object v0, v0, LY/s;->m0:Landroid/view/View;

    .line 771
    .line 772
    invoke-static {v0, v15}, LY/i;->j(Landroid/view/View;Lr/f;)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v15, v6}, Lr/f;->m(Ljava/util/Collection;)Z

    .line 776
    .line 777
    .line 778
    invoke-virtual {v1}, Lr/f;->values()Ljava/util/Collection;

    .line 779
    .line 780
    .line 781
    move-result-object v0

    .line 782
    invoke-virtual {v15, v0}, Lr/f;->m(Ljava/util/Collection;)Z

    .line 783
    .line 784
    .line 785
    sget-object v0, LY/S;->a:LY/X;

    .line 786
    .line 787
    iget v0, v1, Lr/m;->I:I

    .line 788
    .line 789
    const/4 v5, 0x1

    .line 790
    sub-int/2addr v0, v5

    .line 791
    :goto_15
    if-ltz v0, :cond_21

    .line 792
    .line 793
    invoke-virtual {v1, v0}, Lr/m;->j(I)Ljava/lang/Object;

    .line 794
    .line 795
    .line 796
    move-result-object v5

    .line 797
    check-cast v5, Ljava/lang/String;

    .line 798
    .line 799
    invoke-virtual {v15, v5}, Lr/f;->containsKey(Ljava/lang/Object;)Z

    .line 800
    .line 801
    .line 802
    move-result v5

    .line 803
    if-nez v5, :cond_20

    .line 804
    .line 805
    invoke-virtual {v1, v0}, Lr/m;->h(I)Ljava/lang/Object;

    .line 806
    .line 807
    .line 808
    :cond_20
    add-int/lit8 v0, v0, -0x1

    .line 809
    .line 810
    goto :goto_15

    .line 811
    :cond_21
    invoke-virtual {v1}, Lr/f;->keySet()Ljava/util/Set;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    invoke-static {v7, v0}, LY/i;->k(Lr/f;Ljava/util/Collection;)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v1}, Lr/f;->values()Ljava/util/Collection;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    invoke-static {v15, v0}, LY/i;->k(Lr/f;Ljava/util/Collection;)V

    .line 823
    .line 824
    .line 825
    invoke-virtual {v1}, Lr/m;->isEmpty()Z

    .line 826
    .line 827
    .line 828
    move-result v0

    .line 829
    if-eqz v0, :cond_22

    .line 830
    .line 831
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 832
    .line 833
    .line 834
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 835
    .line 836
    .line 837
    move-object/from16 v34, v1

    .line 838
    .line 839
    move-object v6, v9

    .line 840
    move-object v7, v10

    .line 841
    move-object/from16 v35, v14

    .line 842
    .line 843
    move-object/from16 v36, v19

    .line 844
    .line 845
    move-object/from16 v27, v20

    .line 846
    .line 847
    move-object/from16 v26, v22

    .line 848
    .line 849
    move-object/from16 v28, v23

    .line 850
    .line 851
    move-object/from16 v1, v33

    .line 852
    .line 853
    const/4 v0, 0x0

    .line 854
    move-object v14, v2

    .line 855
    move-object v10, v3

    .line 856
    goto/16 :goto_18

    .line 857
    .line 858
    :cond_22
    new-instance v11, LY/f;

    .line 859
    .line 860
    move-object/from16 v5, v18

    .line 861
    .line 862
    move-object v0, v11

    .line 863
    move-object/from16 v34, v1

    .line 864
    .line 865
    move-object/from16 v1, p0

    .line 866
    .line 867
    move-object/from16 v35, v14

    .line 868
    .line 869
    move-object v14, v2

    .line 870
    move-object v2, v10

    .line 871
    move-object/from16 v37, v10

    .line 872
    .line 873
    move-object/from16 v36, v19

    .line 874
    .line 875
    move-object v10, v3

    .line 876
    move-object v3, v9

    .line 877
    move-object/from16 v18, v4

    .line 878
    .line 879
    move-object/from16 v38, v9

    .line 880
    .line 881
    move-object/from16 v9, v21

    .line 882
    .line 883
    move-object/from16 v26, v22

    .line 884
    .line 885
    move/from16 v4, p2

    .line 886
    .line 887
    move-object/from16 v39, v5

    .line 888
    .line 889
    move-object/from16 v27, v20

    .line 890
    .line 891
    move-object/from16 v28, v23

    .line 892
    .line 893
    move-object v5, v15

    .line 894
    invoke-direct/range {v0 .. v5}, LY/f;-><init>(LY/i;LY/d0;LY/d0;ZLr/f;)V

    .line 895
    .line 896
    .line 897
    invoke-static {v8, v11}, LN/u;->a(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    .line 898
    .line 899
    .line 900
    invoke-virtual {v7}, Lr/f;->values()Ljava/util/Collection;

    .line 901
    .line 902
    .line 903
    move-result-object v0

    .line 904
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 905
    .line 906
    .line 907
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    .line 908
    .line 909
    .line 910
    move-result v0

    .line 911
    if-nez v0, :cond_23

    .line 912
    .line 913
    move-object/from16 v4, v18

    .line 914
    .line 915
    const/4 v0, 0x0

    .line 916
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 917
    .line 918
    .line 919
    move-result-object v1

    .line 920
    check-cast v1, Ljava/lang/String;

    .line 921
    .line 922
    invoke-virtual {v7, v1}, Lr/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    .line 924
    .line 925
    move-result-object v1

    .line 926
    check-cast v1, Landroid/view/View;

    .line 927
    .line 928
    invoke-virtual {v13, v1, v9}, LY/Z;->m(Landroid/view/View;Ljava/lang/Object;)V

    .line 929
    .line 930
    .line 931
    move-object/from16 v39, v1

    .line 932
    .line 933
    goto :goto_16

    .line 934
    :cond_23
    const/4 v0, 0x0

    .line 935
    :goto_16
    invoke-virtual {v15}, Lr/f;->values()Ljava/util/Collection;

    .line 936
    .line 937
    .line 938
    move-result-object v1

    .line 939
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 940
    .line 941
    .line 942
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 943
    .line 944
    .line 945
    move-result v1

    .line 946
    if-nez v1, :cond_24

    .line 947
    .line 948
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object v1

    .line 952
    check-cast v1, Ljava/lang/String;

    .line 953
    .line 954
    invoke-virtual {v15, v1}, Lr/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    .line 956
    .line 957
    move-result-object v0

    .line 958
    move-object v3, v0

    .line 959
    check-cast v3, Landroid/view/View;

    .line 960
    .line 961
    if-eqz v3, :cond_24

    .line 962
    .line 963
    new-instance v6, Lk/g;

    .line 964
    .line 965
    const/4 v5, 0x1

    .line 966
    move-object v0, v6

    .line 967
    move-object/from16 v1, p0

    .line 968
    .line 969
    move-object v2, v13

    .line 970
    move-object/from16 v4, v28

    .line 971
    .line 972
    invoke-direct/range {v0 .. v5}, Lk/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 973
    .line 974
    .line 975
    invoke-static {v8, v6}, LN/u;->a(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    .line 976
    .line 977
    .line 978
    const/16 v25, 0x1

    .line 979
    .line 980
    :cond_24
    invoke-virtual {v13, v9, v12, v10}, LY/Z;->p(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 981
    .line 982
    .line 983
    const/16 v20, 0x0

    .line 984
    .line 985
    const/16 v21, 0x0

    .line 986
    .line 987
    move-object/from16 v18, v13

    .line 988
    .line 989
    move-object/from16 v19, v9

    .line 990
    .line 991
    move-object/from16 v22, v9

    .line 992
    .line 993
    move-object/from16 v23, v14

    .line 994
    .line 995
    invoke-virtual/range {v18 .. v23}, LY/Z;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 996
    .line 997
    .line 998
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 999
    .line 1000
    move-object/from16 v1, v33

    .line 1001
    .line 1002
    move-object/from16 v6, v38

    .line 1003
    .line 1004
    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    .line 1006
    .line 1007
    move-object/from16 v7, v37

    .line 1008
    .line 1009
    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    .line 1011
    .line 1012
    move-object v0, v9

    .line 1013
    :goto_17
    move-object/from16 v18, v39

    .line 1014
    .line 1015
    goto :goto_18

    .line 1016
    :cond_25
    move-object/from16 v34, v1

    .line 1017
    .line 1018
    move-object/from16 v28, v5

    .line 1019
    .line 1020
    move-object v6, v9

    .line 1021
    move-object v7, v10

    .line 1022
    move-object v1, v11

    .line 1023
    move-object/from16 v35, v14

    .line 1024
    .line 1025
    move-object/from16 v32, v15

    .line 1026
    .line 1027
    move-object/from16 v39, v18

    .line 1028
    .line 1029
    move-object/from16 v36, v19

    .line 1030
    .line 1031
    move-object/from16 v27, v20

    .line 1032
    .line 1033
    move-object/from16 v26, v22

    .line 1034
    .line 1035
    move-object v14, v2

    .line 1036
    move-object v10, v3

    .line 1037
    goto :goto_17

    .line 1038
    :goto_18
    move-object v11, v1

    .line 1039
    move-object v9, v6

    .line 1040
    move-object v3, v10

    .line 1041
    move-object v2, v14

    .line 1042
    move-object/from16 v4, v26

    .line 1043
    .line 1044
    move-object/from16 v20, v27

    .line 1045
    .line 1046
    move-object/from16 v5, v28

    .line 1047
    .line 1048
    move-object/from16 v15, v32

    .line 1049
    .line 1050
    move-object/from16 v1, v34

    .line 1051
    .line 1052
    move-object/from16 v14, v35

    .line 1053
    .line 1054
    move-object/from16 v19, v36

    .line 1055
    .line 1056
    move-object/from16 v6, p0

    .line 1057
    .line 1058
    move-object v10, v7

    .line 1059
    move/from16 v7, p2

    .line 1060
    .line 1061
    goto/16 :goto_a

    .line 1062
    .line 1063
    :cond_26
    move-object/from16 v34, v1

    .line 1064
    .line 1065
    move-object/from16 v26, v4

    .line 1066
    .line 1067
    move-object/from16 v28, v5

    .line 1068
    .line 1069
    move-object v6, v9

    .line 1070
    move-object v7, v10

    .line 1071
    move-object v1, v11

    .line 1072
    move-object/from16 v35, v14

    .line 1073
    .line 1074
    move-object/from16 v32, v15

    .line 1075
    .line 1076
    move-object/from16 v39, v18

    .line 1077
    .line 1078
    move-object/from16 v36, v19

    .line 1079
    .line 1080
    move-object/from16 v27, v20

    .line 1081
    .line 1082
    move-object v14, v2

    .line 1083
    move-object v10, v3

    .line 1084
    new-instance v2, Ljava/util/ArrayList;

    .line 1085
    .line 1086
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v3

    .line 1093
    const/4 v4, 0x0

    .line 1094
    const/4 v5, 0x0

    .line 1095
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1096
    .line 1097
    .line 1098
    move-result v9

    .line 1099
    if-eqz v9, :cond_33

    .line 1100
    .line 1101
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v9

    .line 1105
    check-cast v9, LY/h;

    .line 1106
    .line 1107
    invoke-virtual {v9}, Lf/H;->g()Z

    .line 1108
    .line 1109
    .line 1110
    move-result v11

    .line 1111
    if-eqz v11, :cond_27

    .line 1112
    .line 1113
    iget-object v11, v9, Lf/H;->a:Ljava/lang/Object;

    .line 1114
    .line 1115
    check-cast v11, LY/d0;

    .line 1116
    .line 1117
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1118
    .line 1119
    invoke-virtual {v1, v11, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {v9}, Lf/H;->c()V

    .line 1123
    .line 1124
    .line 1125
    goto :goto_19

    .line 1126
    :cond_27
    iget-object v11, v9, LY/h;->c:Ljava/lang/Object;

    .line 1127
    .line 1128
    invoke-virtual {v13, v11}, LY/Z;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v11

    .line 1132
    iget-object v15, v9, Lf/H;->a:Ljava/lang/Object;

    .line 1133
    .line 1134
    check-cast v15, LY/d0;

    .line 1135
    .line 1136
    if-eqz v0, :cond_29

    .line 1137
    .line 1138
    if-eq v15, v6, :cond_28

    .line 1139
    .line 1140
    if-ne v15, v7, :cond_29

    .line 1141
    .line 1142
    :cond_28
    const/16 v18, 0x1

    .line 1143
    .line 1144
    goto :goto_1a

    .line 1145
    :cond_29
    const/16 v18, 0x0

    .line 1146
    .line 1147
    :goto_1a
    if-nez v11, :cond_2b

    .line 1148
    .line 1149
    if-nez v18, :cond_2a

    .line 1150
    .line 1151
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1152
    .line 1153
    invoke-virtual {v1, v15, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    .line 1155
    .line 1156
    invoke-virtual {v9}, Lf/H;->c()V

    .line 1157
    .line 1158
    .line 1159
    :cond_2a
    move-object/from16 p2, v3

    .line 1160
    .line 1161
    move-object/from16 v37, v7

    .line 1162
    .line 1163
    move-object/from16 v29, v10

    .line 1164
    .line 1165
    move-object/from16 v18, v12

    .line 1166
    .line 1167
    move-object/from16 v3, v28

    .line 1168
    .line 1169
    move-object/from16 v7, v39

    .line 1170
    .line 1171
    move-object/from16 v12, p0

    .line 1172
    .line 1173
    goto/16 :goto_1e

    .line 1174
    .line 1175
    :cond_2b
    move-object/from16 p2, v3

    .line 1176
    .line 1177
    new-instance v3, Ljava/util/ArrayList;

    .line 1178
    .line 1179
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1180
    .line 1181
    .line 1182
    move-object/from16 v37, v7

    .line 1183
    .line 1184
    iget-object v7, v15, LY/d0;->c:LY/s;

    .line 1185
    .line 1186
    iget-object v7, v7, LY/s;->m0:Landroid/view/View;

    .line 1187
    .line 1188
    invoke-static {v3, v7}, LY/i;->i(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 1189
    .line 1190
    .line 1191
    if-eqz v18, :cond_2d

    .line 1192
    .line 1193
    if-ne v15, v6, :cond_2c

    .line 1194
    .line 1195
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1196
    .line 1197
    .line 1198
    goto :goto_1b

    .line 1199
    :cond_2c
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1200
    .line 1201
    .line 1202
    :cond_2d
    :goto_1b
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1203
    .line 1204
    .line 1205
    move-result v7

    .line 1206
    if-eqz v7, :cond_2e

    .line 1207
    .line 1208
    invoke-virtual {v13, v12, v11}, LY/Z;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 1209
    .line 1210
    .line 1211
    move-object/from16 v29, v10

    .line 1212
    .line 1213
    move-object/from16 v18, v12

    .line 1214
    .line 1215
    move-object/from16 v12, p0

    .line 1216
    .line 1217
    goto :goto_1c

    .line 1218
    :cond_2e
    invoke-virtual {v13, v11, v3}, LY/Z;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1219
    .line 1220
    .line 1221
    const/16 v22, 0x0

    .line 1222
    .line 1223
    const/16 v23, 0x0

    .line 1224
    .line 1225
    move-object/from16 v18, v13

    .line 1226
    .line 1227
    move-object/from16 v19, v11

    .line 1228
    .line 1229
    move-object/from16 v20, v11

    .line 1230
    .line 1231
    move-object/from16 v21, v3

    .line 1232
    .line 1233
    invoke-virtual/range {v18 .. v23}, LY/Z;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1234
    .line 1235
    .line 1236
    iget v7, v15, LY/d0;->a:I

    .line 1237
    .line 1238
    move-object/from16 v18, v12

    .line 1239
    .line 1240
    const/4 v12, 0x3

    .line 1241
    if-ne v7, v12, :cond_2f

    .line 1242
    .line 1243
    move-object/from16 v7, v36

    .line 1244
    .line 1245
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1246
    .line 1247
    .line 1248
    new-instance v12, Ljava/util/ArrayList;

    .line 1249
    .line 1250
    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1251
    .line 1252
    .line 1253
    iget-object v7, v15, LY/d0;->c:LY/s;

    .line 1254
    .line 1255
    move-object/from16 v29, v10

    .line 1256
    .line 1257
    iget-object v10, v7, LY/s;->m0:Landroid/view/View;

    .line 1258
    .line 1259
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1260
    .line 1261
    .line 1262
    iget-object v7, v7, LY/s;->m0:Landroid/view/View;

    .line 1263
    .line 1264
    invoke-virtual {v13, v11, v7, v12}, LY/Z;->k(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 1265
    .line 1266
    .line 1267
    new-instance v7, Ll/k;

    .line 1268
    .line 1269
    const/4 v10, 0x5

    .line 1270
    move-object/from16 v12, p0

    .line 1271
    .line 1272
    invoke-direct {v7, v10, v12, v3}, Ll/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1273
    .line 1274
    .line 1275
    invoke-static {v8, v7}, LN/u;->a(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    .line 1276
    .line 1277
    .line 1278
    goto :goto_1c

    .line 1279
    :cond_2f
    move-object/from16 v12, p0

    .line 1280
    .line 1281
    move-object/from16 v29, v10

    .line 1282
    .line 1283
    :goto_1c
    iget v7, v15, LY/d0;->a:I

    .line 1284
    .line 1285
    const/4 v10, 0x2

    .line 1286
    if-ne v7, v10, :cond_31

    .line 1287
    .line 1288
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1289
    .line 1290
    .line 1291
    move-object/from16 v3, v28

    .line 1292
    .line 1293
    if-eqz v25, :cond_30

    .line 1294
    .line 1295
    invoke-virtual {v13, v11, v3}, LY/Z;->n(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1296
    .line 1297
    .line 1298
    :cond_30
    move-object/from16 v7, v39

    .line 1299
    .line 1300
    goto :goto_1d

    .line 1301
    :cond_31
    move-object/from16 v3, v28

    .line 1302
    .line 1303
    move-object/from16 v7, v39

    .line 1304
    .line 1305
    invoke-virtual {v13, v7, v11}, LY/Z;->m(Landroid/view/View;Ljava/lang/Object;)V

    .line 1306
    .line 1307
    .line 1308
    :goto_1d
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1309
    .line 1310
    invoke-virtual {v1, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    .line 1312
    .line 1313
    iget-boolean v9, v9, LY/h;->d:Z

    .line 1314
    .line 1315
    if-eqz v9, :cond_32

    .line 1316
    .line 1317
    invoke-virtual {v13, v4, v11}, LY/Z;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v4

    .line 1321
    goto :goto_1e

    .line 1322
    :cond_32
    invoke-virtual {v13, v5, v11}, LY/Z;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v5

    .line 1326
    :goto_1e
    move-object/from16 v28, v3

    .line 1327
    .line 1328
    move-object/from16 v39, v7

    .line 1329
    .line 1330
    move-object/from16 v12, v18

    .line 1331
    .line 1332
    move-object/from16 v10, v29

    .line 1333
    .line 1334
    move-object/from16 v7, v37

    .line 1335
    .line 1336
    move-object/from16 v3, p2

    .line 1337
    .line 1338
    goto/16 :goto_19

    .line 1339
    .line 1340
    :cond_33
    move-object/from16 v12, p0

    .line 1341
    .line 1342
    move-object/from16 v37, v7

    .line 1343
    .line 1344
    move-object/from16 v29, v10

    .line 1345
    .line 1346
    invoke-virtual {v13, v4, v5, v0}, LY/Z;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v3

    .line 1350
    if-nez v3, :cond_34

    .line 1351
    .line 1352
    move-object/from16 v38, v6

    .line 1353
    .line 1354
    move-object/from16 v15, v35

    .line 1355
    .line 1356
    :goto_1f
    const/4 v3, 0x0

    .line 1357
    goto/16 :goto_2a

    .line 1358
    .line 1359
    :cond_34
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v4

    .line 1363
    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1364
    .line 1365
    .line 1366
    move-result v5

    .line 1367
    const/4 v7, 0x4

    .line 1368
    if-eqz v5, :cond_3c

    .line 1369
    .line 1370
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v5

    .line 1374
    check-cast v5, LY/h;

    .line 1375
    .line 1376
    invoke-virtual {v5}, Lf/H;->g()Z

    .line 1377
    .line 1378
    .line 1379
    move-result v9

    .line 1380
    if-eqz v9, :cond_35

    .line 1381
    .line 1382
    goto :goto_20

    .line 1383
    :cond_35
    iget-object v9, v5, Lf/H;->a:Ljava/lang/Object;

    .line 1384
    .line 1385
    check-cast v9, LY/d0;

    .line 1386
    .line 1387
    move-object/from16 v10, v37

    .line 1388
    .line 1389
    if-eqz v0, :cond_37

    .line 1390
    .line 1391
    if-eq v9, v6, :cond_36

    .line 1392
    .line 1393
    if-ne v9, v10, :cond_37

    .line 1394
    .line 1395
    :cond_36
    const/4 v11, 0x1

    .line 1396
    goto :goto_21

    .line 1397
    :cond_37
    const/4 v11, 0x0

    .line 1398
    :goto_21
    iget-object v15, v5, LY/h;->c:Ljava/lang/Object;

    .line 1399
    .line 1400
    if-nez v15, :cond_39

    .line 1401
    .line 1402
    if-eqz v11, :cond_38

    .line 1403
    .line 1404
    goto :goto_22

    .line 1405
    :cond_38
    move-object/from16 v15, v35

    .line 1406
    .line 1407
    goto :goto_23

    .line 1408
    :cond_39
    :goto_22
    sget-object v11, LN/N;->a:Ljava/util/WeakHashMap;

    .line 1409
    .line 1410
    invoke-virtual {v8}, Landroid/view/View;->isLaidOut()Z

    .line 1411
    .line 1412
    .line 1413
    move-result v11

    .line 1414
    if-nez v11, :cond_3b

    .line 1415
    .line 1416
    move-object/from16 v15, v35

    .line 1417
    .line 1418
    const/4 v11, 0x2

    .line 1419
    invoke-static {v15, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1420
    .line 1421
    .line 1422
    move-result v7

    .line 1423
    if-eqz v7, :cond_3a

    .line 1424
    .line 1425
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1426
    .line 1427
    const-string v11, "SpecialEffectsController: Container "

    .line 1428
    .line 1429
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1430
    .line 1431
    .line 1432
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1433
    .line 1434
    .line 1435
    const-string v11, " has not been laid out. Completing operation "

    .line 1436
    .line 1437
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1438
    .line 1439
    .line 1440
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1441
    .line 1442
    .line 1443
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v7

    .line 1447
    invoke-static {v15, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    .line 1449
    .line 1450
    :cond_3a
    invoke-virtual {v5}, Lf/H;->c()V

    .line 1451
    .line 1452
    .line 1453
    goto :goto_23

    .line 1454
    :cond_3b
    move-object/from16 v15, v35

    .line 1455
    .line 1456
    iget-object v11, v5, Lf/H;->a:Ljava/lang/Object;

    .line 1457
    .line 1458
    check-cast v11, LY/d0;

    .line 1459
    .line 1460
    iget-object v11, v11, LY/d0;->c:LY/s;

    .line 1461
    .line 1462
    new-instance v11, LK/a;

    .line 1463
    .line 1464
    invoke-direct {v11, v12, v5, v9, v7}, LK/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1465
    .line 1466
    .line 1467
    invoke-virtual {v13, v3, v11}, LY/Z;->o(Ljava/lang/Object;LK/a;)V

    .line 1468
    .line 1469
    .line 1470
    :goto_23
    move-object/from16 v37, v10

    .line 1471
    .line 1472
    move-object/from16 v35, v15

    .line 1473
    .line 1474
    goto :goto_20

    .line 1475
    :cond_3c
    move-object/from16 v15, v35

    .line 1476
    .line 1477
    move-object/from16 v10, v37

    .line 1478
    .line 1479
    sget-object v4, LN/N;->a:Ljava/util/WeakHashMap;

    .line 1480
    .line 1481
    invoke-virtual {v8}, Landroid/view/View;->isLaidOut()Z

    .line 1482
    .line 1483
    .line 1484
    move-result v4

    .line 1485
    if-nez v4, :cond_3d

    .line 1486
    .line 1487
    move-object/from16 v38, v6

    .line 1488
    .line 1489
    move-object/from16 v37, v10

    .line 1490
    .line 1491
    goto/16 :goto_1f

    .line 1492
    .line 1493
    :cond_3d
    invoke-static {v2, v7}, LY/S;->a(Ljava/util/ArrayList;I)V

    .line 1494
    .line 1495
    .line 1496
    new-instance v4, Ljava/util/ArrayList;

    .line 1497
    .line 1498
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1499
    .line 1500
    .line 1501
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 1502
    .line 1503
    .line 1504
    move-result v5

    .line 1505
    const/4 v7, 0x0

    .line 1506
    :goto_24
    if-ge v7, v5, :cond_3e

    .line 1507
    .line 1508
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1509
    .line 1510
    .line 1511
    move-result-object v9

    .line 1512
    check-cast v9, Landroid/view/View;

    .line 1513
    .line 1514
    sget-object v11, LN/N;->a:Ljava/util/WeakHashMap;

    .line 1515
    .line 1516
    invoke-static {v9}, LN/E;->f(Landroid/view/View;)Ljava/lang/String;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v11

    .line 1520
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1521
    .line 1522
    .line 1523
    const/4 v11, 0x0

    .line 1524
    invoke-static {v9, v11}, LN/E;->m(Landroid/view/View;Ljava/lang/String;)V

    .line 1525
    .line 1526
    .line 1527
    add-int/lit8 v7, v7, 0x1

    .line 1528
    .line 1529
    goto :goto_24

    .line 1530
    :cond_3e
    const/4 v7, 0x2

    .line 1531
    invoke-static {v15, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1532
    .line 1533
    .line 1534
    move-result v5

    .line 1535
    if-eqz v5, :cond_40

    .line 1536
    .line 1537
    const-string v5, ">>>>> Beginning transition <<<<<"

    .line 1538
    .line 1539
    invoke-static {v15, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    .line 1541
    .line 1542
    const-string v5, ">>>>> SharedElementFirstOutViews <<<<<"

    .line 1543
    .line 1544
    invoke-static {v15, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    .line 1546
    .line 1547
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v5

    .line 1551
    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1552
    .line 1553
    .line 1554
    move-result v7

    .line 1555
    const-string v9, " Name: "

    .line 1556
    .line 1557
    const-string v11, "View: "

    .line 1558
    .line 1559
    if-eqz v7, :cond_3f

    .line 1560
    .line 1561
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1562
    .line 1563
    .line 1564
    move-result-object v7

    .line 1565
    check-cast v7, Landroid/view/View;

    .line 1566
    .line 1567
    move-object/from16 p2, v5

    .line 1568
    .line 1569
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1570
    .line 1571
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1572
    .line 1573
    .line 1574
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1575
    .line 1576
    .line 1577
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1578
    .line 1579
    .line 1580
    invoke-static {v7}, LN/E;->f(Landroid/view/View;)Ljava/lang/String;

    .line 1581
    .line 1582
    .line 1583
    move-result-object v7

    .line 1584
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    .line 1586
    .line 1587
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1588
    .line 1589
    .line 1590
    move-result-object v5

    .line 1591
    invoke-static {v15, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    .line 1593
    .line 1594
    move-object/from16 v5, p2

    .line 1595
    .line 1596
    goto :goto_25

    .line 1597
    :cond_3f
    const-string v5, ">>>>> SharedElementLastInViews <<<<<"

    .line 1598
    .line 1599
    invoke-static {v15, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    .line 1601
    .line 1602
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v5

    .line 1606
    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1607
    .line 1608
    .line 1609
    move-result v7

    .line 1610
    if-eqz v7, :cond_40

    .line 1611
    .line 1612
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1613
    .line 1614
    .line 1615
    move-result-object v7

    .line 1616
    check-cast v7, Landroid/view/View;

    .line 1617
    .line 1618
    move-object/from16 p2, v5

    .line 1619
    .line 1620
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1621
    .line 1622
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1623
    .line 1624
    .line 1625
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1626
    .line 1627
    .line 1628
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1629
    .line 1630
    .line 1631
    invoke-static {v7}, LN/E;->f(Landroid/view/View;)Ljava/lang/String;

    .line 1632
    .line 1633
    .line 1634
    move-result-object v7

    .line 1635
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1636
    .line 1637
    .line 1638
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1639
    .line 1640
    .line 1641
    move-result-object v5

    .line 1642
    invoke-static {v15, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    .line 1644
    .line 1645
    move-object/from16 v5, p2

    .line 1646
    .line 1647
    goto :goto_26

    .line 1648
    :cond_40
    invoke-virtual {v13, v8, v3}, LY/Z;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 1649
    .line 1650
    .line 1651
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 1652
    .line 1653
    .line 1654
    move-result v3

    .line 1655
    new-instance v5, Ljava/util/ArrayList;

    .line 1656
    .line 1657
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1658
    .line 1659
    .line 1660
    const/4 v7, 0x0

    .line 1661
    :goto_27
    if-ge v7, v3, :cond_44

    .line 1662
    .line 1663
    move-object/from16 v9, v29

    .line 1664
    .line 1665
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1666
    .line 1667
    .line 1668
    move-result-object v11

    .line 1669
    check-cast v11, Landroid/view/View;

    .line 1670
    .line 1671
    sget-object v18, LN/N;->a:Ljava/util/WeakHashMap;

    .line 1672
    .line 1673
    move-object/from16 v37, v10

    .line 1674
    .line 1675
    invoke-static {v11}, LN/E;->f(Landroid/view/View;)Ljava/lang/String;

    .line 1676
    .line 1677
    .line 1678
    move-result-object v10

    .line 1679
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1680
    .line 1681
    .line 1682
    if-nez v10, :cond_41

    .line 1683
    .line 1684
    move-object/from16 v38, v6

    .line 1685
    .line 1686
    goto :goto_29

    .line 1687
    :cond_41
    move-object/from16 v38, v6

    .line 1688
    .line 1689
    const/4 v6, 0x0

    .line 1690
    invoke-static {v11, v6}, LN/E;->m(Landroid/view/View;Ljava/lang/String;)V

    .line 1691
    .line 1692
    .line 1693
    move-object/from16 v11, v34

    .line 1694
    .line 1695
    invoke-virtual {v11, v10}, Lr/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    .line 1697
    .line 1698
    move-result-object v17

    .line 1699
    move-object/from16 v6, v17

    .line 1700
    .line 1701
    check-cast v6, Ljava/lang/String;

    .line 1702
    .line 1703
    move-object/from16 v34, v11

    .line 1704
    .line 1705
    const/4 v11, 0x0

    .line 1706
    :goto_28
    if-ge v11, v3, :cond_43

    .line 1707
    .line 1708
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1709
    .line 1710
    .line 1711
    move-result-object v12

    .line 1712
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1713
    .line 1714
    .line 1715
    move-result v12

    .line 1716
    if-eqz v12, :cond_42

    .line 1717
    .line 1718
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1719
    .line 1720
    .line 1721
    move-result-object v6

    .line 1722
    check-cast v6, Landroid/view/View;

    .line 1723
    .line 1724
    invoke-static {v6, v10}, LN/E;->m(Landroid/view/View;Ljava/lang/String;)V

    .line 1725
    .line 1726
    .line 1727
    goto :goto_29

    .line 1728
    :cond_42
    add-int/lit8 v11, v11, 0x1

    .line 1729
    .line 1730
    move-object/from16 v12, p0

    .line 1731
    .line 1732
    goto :goto_28

    .line 1733
    :cond_43
    :goto_29
    add-int/lit8 v7, v7, 0x1

    .line 1734
    .line 1735
    move-object/from16 v12, p0

    .line 1736
    .line 1737
    move-object/from16 v29, v9

    .line 1738
    .line 1739
    move-object/from16 v10, v37

    .line 1740
    .line 1741
    move-object/from16 v6, v38

    .line 1742
    .line 1743
    goto :goto_27

    .line 1744
    :cond_44
    move-object/from16 v38, v6

    .line 1745
    .line 1746
    move-object/from16 v37, v10

    .line 1747
    .line 1748
    move-object/from16 v9, v29

    .line 1749
    .line 1750
    new-instance v6, LY/Y;

    .line 1751
    .line 1752
    const/16 v25, 0x0

    .line 1753
    .line 1754
    move-object/from16 v18, v6

    .line 1755
    .line 1756
    move-object/from16 v19, v13

    .line 1757
    .line 1758
    move/from16 v20, v3

    .line 1759
    .line 1760
    move-object/from16 v21, v14

    .line 1761
    .line 1762
    move-object/from16 v22, v4

    .line 1763
    .line 1764
    move-object/from16 v23, v9

    .line 1765
    .line 1766
    move-object/from16 v24, v5

    .line 1767
    .line 1768
    invoke-direct/range {v18 .. v25}, LY/Y;-><init>(Ljava/lang/Object;ILjava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1769
    .line 1770
    .line 1771
    invoke-static {v8, v6}, LN/u;->a(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    .line 1772
    .line 1773
    .line 1774
    const/4 v3, 0x0

    .line 1775
    invoke-static {v2, v3}, LY/S;->a(Ljava/util/ArrayList;I)V

    .line 1776
    .line 1777
    .line 1778
    invoke-virtual {v13, v0, v9, v14}, LY/Z;->q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1779
    .line 1780
    .line 1781
    :goto_2a
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1782
    .line 1783
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    .line 1784
    .line 1785
    .line 1786
    move-result v6

    .line 1787
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1788
    .line 1789
    .line 1790
    move-result-object v7

    .line 1791
    new-instance v0, Ljava/util/ArrayList;

    .line 1792
    .line 1793
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1794
    .line 1795
    .line 1796
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1797
    .line 1798
    .line 1799
    move-result-object v2

    .line 1800
    const/4 v9, 0x0

    .line 1801
    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1802
    .line 1803
    .line 1804
    move-result v4

    .line 1805
    const-string v10, " has started."

    .line 1806
    .line 1807
    if-eqz v4, :cond_4d

    .line 1808
    .line 1809
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1810
    .line 1811
    .line 1812
    move-result-object v4

    .line 1813
    check-cast v4, LY/g;

    .line 1814
    .line 1815
    invoke-virtual {v4}, Lf/H;->g()Z

    .line 1816
    .line 1817
    .line 1818
    move-result v5

    .line 1819
    if-eqz v5, :cond_45

    .line 1820
    .line 1821
    invoke-virtual {v4}, Lf/H;->c()V

    .line 1822
    .line 1823
    .line 1824
    goto :goto_2b

    .line 1825
    :cond_45
    invoke-virtual {v4, v7}, LY/g;->s(Landroid/content/Context;)LY/w;

    .line 1826
    .line 1827
    .line 1828
    move-result-object v5

    .line 1829
    if-nez v5, :cond_46

    .line 1830
    .line 1831
    invoke-virtual {v4}, Lf/H;->c()V

    .line 1832
    .line 1833
    .line 1834
    goto :goto_2b

    .line 1835
    :cond_46
    iget-object v5, v5, LY/w;->b:Landroid/animation/Animator;

    .line 1836
    .line 1837
    if-nez v5, :cond_47

    .line 1838
    .line 1839
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1840
    .line 1841
    .line 1842
    goto :goto_2b

    .line 1843
    :cond_47
    iget-object v11, v4, Lf/H;->a:Ljava/lang/Object;

    .line 1844
    .line 1845
    check-cast v11, LY/d0;

    .line 1846
    .line 1847
    iget-object v12, v11, LY/d0;->c:LY/s;

    .line 1848
    .line 1849
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1850
    .line 1851
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1852
    .line 1853
    .line 1854
    move-result-object v14

    .line 1855
    invoke-virtual {v13, v14}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 1856
    .line 1857
    .line 1858
    move-result v13

    .line 1859
    if-eqz v13, :cond_49

    .line 1860
    .line 1861
    const/4 v13, 0x2

    .line 1862
    invoke-static {v15, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1863
    .line 1864
    .line 1865
    move-result v5

    .line 1866
    if-eqz v5, :cond_48

    .line 1867
    .line 1868
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1869
    .line 1870
    const-string v10, "Ignoring Animator set on "

    .line 1871
    .line 1872
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1873
    .line 1874
    .line 1875
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1876
    .line 1877
    .line 1878
    const-string v10, " as this Fragment was involved in a Transition."

    .line 1879
    .line 1880
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1881
    .line 1882
    .line 1883
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1884
    .line 1885
    .line 1886
    move-result-object v5

    .line 1887
    invoke-static {v15, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    .line 1889
    .line 1890
    :cond_48
    invoke-virtual {v4}, Lf/H;->c()V

    .line 1891
    .line 1892
    .line 1893
    goto :goto_2b

    .line 1894
    :cond_49
    iget v9, v11, LY/d0;->a:I

    .line 1895
    .line 1896
    const/4 v13, 0x3

    .line 1897
    if-ne v9, v13, :cond_4a

    .line 1898
    .line 1899
    const/16 v29, 0x1

    .line 1900
    .line 1901
    goto :goto_2c

    .line 1902
    :cond_4a
    const/16 v29, 0x0

    .line 1903
    .line 1904
    :goto_2c
    move-object/from16 v14, v36

    .line 1905
    .line 1906
    if-eqz v29, :cond_4b

    .line 1907
    .line 1908
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1909
    .line 1910
    .line 1911
    :cond_4b
    iget-object v9, v12, LY/s;->m0:Landroid/view/View;

    .line 1912
    .line 1913
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1914
    .line 1915
    .line 1916
    new-instance v12, LY/d;

    .line 1917
    .line 1918
    move-object/from16 v26, v12

    .line 1919
    .line 1920
    move-object/from16 v27, v8

    .line 1921
    .line 1922
    move-object/from16 v28, v9

    .line 1923
    .line 1924
    move-object/from16 v30, v11

    .line 1925
    .line 1926
    move-object/from16 v31, v4

    .line 1927
    .line 1928
    invoke-direct/range {v26 .. v31}, LY/d;-><init>(Landroid/view/ViewGroup;Landroid/view/View;ZLY/d0;LY/g;)V

    .line 1929
    .line 1930
    .line 1931
    invoke-virtual {v5, v12}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1932
    .line 1933
    .line 1934
    invoke-virtual {v5, v9}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1935
    .line 1936
    .line 1937
    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    .line 1938
    .line 1939
    .line 1940
    const/4 v9, 0x2

    .line 1941
    invoke-static {v15, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1942
    .line 1943
    .line 1944
    move-result v12

    .line 1945
    if-eqz v12, :cond_4c

    .line 1946
    .line 1947
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1948
    .line 1949
    const-string v12, "Animator from operation "

    .line 1950
    .line 1951
    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1952
    .line 1953
    .line 1954
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1955
    .line 1956
    .line 1957
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1958
    .line 1959
    .line 1960
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1961
    .line 1962
    .line 1963
    move-result-object v9

    .line 1964
    invoke-static {v15, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    .line 1966
    .line 1967
    :cond_4c
    iget-object v4, v4, Lf/H;->b:Ljava/lang/Object;

    .line 1968
    .line 1969
    check-cast v4, LJ/c;

    .line 1970
    .line 1971
    new-instance v9, Lm2/u;

    .line 1972
    .line 1973
    const/16 v10, 0x9

    .line 1974
    .line 1975
    move-object/from16 v12, p0

    .line 1976
    .line 1977
    invoke-direct {v9, v12, v5, v11, v10}, Lm2/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1978
    .line 1979
    .line 1980
    invoke-virtual {v4, v9}, LJ/c;->a(LJ/b;)V

    .line 1981
    .line 1982
    .line 1983
    move-object/from16 v36, v14

    .line 1984
    .line 1985
    const/4 v9, 0x1

    .line 1986
    goto/16 :goto_2b

    .line 1987
    .line 1988
    :cond_4d
    move-object/from16 v12, p0

    .line 1989
    .line 1990
    move-object/from16 v14, v36

    .line 1991
    .line 1992
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1993
    .line 1994
    .line 1995
    move-result-object v11

    .line 1996
    :goto_2d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 1997
    .line 1998
    .line 1999
    move-result v0

    .line 2000
    if-eqz v0, :cond_54

    .line 2001
    .line 2002
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2003
    .line 2004
    .line 2005
    move-result-object v0

    .line 2006
    move-object v4, v0

    .line 2007
    check-cast v4, LY/g;

    .line 2008
    .line 2009
    iget-object v0, v4, Lf/H;->a:Ljava/lang/Object;

    .line 2010
    .line 2011
    move-object v5, v0

    .line 2012
    check-cast v5, LY/d0;

    .line 2013
    .line 2014
    iget-object v0, v5, LY/d0;->c:LY/s;

    .line 2015
    .line 2016
    const-string v1, "Ignoring Animation set on "

    .line 2017
    .line 2018
    if-eqz v6, :cond_4f

    .line 2019
    .line 2020
    const/4 v2, 0x2

    .line 2021
    invoke-static {v15, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 2022
    .line 2023
    .line 2024
    move-result v3

    .line 2025
    if-eqz v3, :cond_4e

    .line 2026
    .line 2027
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2028
    .line 2029
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2030
    .line 2031
    .line 2032
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2033
    .line 2034
    .line 2035
    const-string v0, " as Animations cannot run alongside Transitions."

    .line 2036
    .line 2037
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2038
    .line 2039
    .line 2040
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2041
    .line 2042
    .line 2043
    move-result-object v0

    .line 2044
    invoke-static {v15, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    .line 2046
    .line 2047
    :cond_4e
    invoke-virtual {v4}, Lf/H;->c()V

    .line 2048
    .line 2049
    .line 2050
    goto :goto_2d

    .line 2051
    :cond_4f
    if-eqz v9, :cond_51

    .line 2052
    .line 2053
    const/4 v2, 0x2

    .line 2054
    invoke-static {v15, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 2055
    .line 2056
    .line 2057
    move-result v3

    .line 2058
    if-eqz v3, :cond_50

    .line 2059
    .line 2060
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2061
    .line 2062
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2063
    .line 2064
    .line 2065
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2066
    .line 2067
    .line 2068
    const-string v0, " as Animations cannot run alongside Animators."

    .line 2069
    .line 2070
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2071
    .line 2072
    .line 2073
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2074
    .line 2075
    .line 2076
    move-result-object v0

    .line 2077
    invoke-static {v15, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    .line 2079
    .line 2080
    :cond_50
    invoke-virtual {v4}, Lf/H;->c()V

    .line 2081
    .line 2082
    .line 2083
    goto :goto_2d

    .line 2084
    :cond_51
    iget-object v2, v0, LY/s;->m0:Landroid/view/View;

    .line 2085
    .line 2086
    invoke-virtual {v4, v7}, LY/g;->s(Landroid/content/Context;)LY/w;

    .line 2087
    .line 2088
    .line 2089
    move-result-object v0

    .line 2090
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2091
    .line 2092
    .line 2093
    iget-object v0, v0, LY/w;->a:Landroid/view/animation/Animation;

    .line 2094
    .line 2095
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2096
    .line 2097
    .line 2098
    iget v1, v5, LY/d0;->a:I

    .line 2099
    .line 2100
    const/4 v13, 0x1

    .line 2101
    if-eq v1, v13, :cond_52

    .line 2102
    .line 2103
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2104
    .line 2105
    .line 2106
    invoke-virtual {v4}, Lf/H;->c()V

    .line 2107
    .line 2108
    .line 2109
    goto :goto_2e

    .line 2110
    :cond_52
    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 2111
    .line 2112
    .line 2113
    new-instance v1, LY/x;

    .line 2114
    .line 2115
    invoke-direct {v1, v0, v8, v2}, LY/x;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 2116
    .line 2117
    .line 2118
    new-instance v0, LY/e;

    .line 2119
    .line 2120
    invoke-direct {v0, v5, v8, v2, v4}, LY/e;-><init>(LY/d0;Landroid/view/ViewGroup;Landroid/view/View;LY/g;)V

    .line 2121
    .line 2122
    .line 2123
    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2124
    .line 2125
    .line 2126
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2127
    .line 2128
    .line 2129
    const/4 v0, 0x2

    .line 2130
    invoke-static {v15, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 2131
    .line 2132
    .line 2133
    move-result v1

    .line 2134
    if-eqz v1, :cond_53

    .line 2135
    .line 2136
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2137
    .line 2138
    const-string v1, "Animation from operation "

    .line 2139
    .line 2140
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2141
    .line 2142
    .line 2143
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2144
    .line 2145
    .line 2146
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2147
    .line 2148
    .line 2149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2150
    .line 2151
    .line 2152
    move-result-object v0

    .line 2153
    invoke-static {v15, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    .line 2155
    .line 2156
    :cond_53
    :goto_2e
    iget-object v0, v4, Lf/H;->b:Ljava/lang/Object;

    .line 2157
    .line 2158
    move-object v3, v0

    .line 2159
    check-cast v3, LJ/c;

    .line 2160
    .line 2161
    new-instance v1, Lo/j;

    .line 2162
    .line 2163
    move-object v0, v1

    .line 2164
    move-object v13, v1

    .line 2165
    move-object/from16 v1, p0

    .line 2166
    .line 2167
    move/from16 p1, v6

    .line 2168
    .line 2169
    move-object v6, v3

    .line 2170
    move-object v3, v8

    .line 2171
    invoke-direct/range {v0 .. v5}, Lo/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2172
    .line 2173
    .line 2174
    invoke-virtual {v6, v13}, LJ/c;->a(LJ/b;)V

    .line 2175
    .line 2176
    .line 2177
    move/from16 v6, p1

    .line 2178
    .line 2179
    goto/16 :goto_2d

    .line 2180
    .line 2181
    :cond_54
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2182
    .line 2183
    .line 2184
    move-result-object v0

    .line 2185
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2186
    .line 2187
    .line 2188
    move-result v1

    .line 2189
    if-eqz v1, :cond_55

    .line 2190
    .line 2191
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2192
    .line 2193
    .line 2194
    move-result-object v1

    .line 2195
    check-cast v1, LY/d0;

    .line 2196
    .line 2197
    iget-object v2, v1, LY/d0;->c:LY/s;

    .line 2198
    .line 2199
    iget-object v2, v2, LY/s;->m0:Landroid/view/View;

    .line 2200
    .line 2201
    iget v1, v1, LY/d0;->a:I

    .line 2202
    .line 2203
    invoke-static {v1, v2}, LA0/O;->c(ILandroid/view/View;)V

    .line 2204
    .line 2205
    .line 2206
    goto :goto_2f

    .line 2207
    :cond_55
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 2208
    .line 2209
    .line 2210
    const/4 v0, 0x2

    .line 2211
    invoke-static {v15, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 2212
    .line 2213
    .line 2214
    move-result v0

    .line 2215
    if-eqz v0, :cond_56

    .line 2216
    .line 2217
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2218
    .line 2219
    const-string v1, "Completed executing operations from "

    .line 2220
    .line 2221
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2222
    .line 2223
    .line 2224
    move-object/from16 v8, v38

    .line 2225
    .line 2226
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2227
    .line 2228
    .line 2229
    move-object/from16 v1, v32

    .line 2230
    .line 2231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2232
    .line 2233
    .line 2234
    move-object/from16 v8, v37

    .line 2235
    .line 2236
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2237
    .line 2238
    .line 2239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2240
    .line 2241
    .line 2242
    move-result-object v0

    .line 2243
    invoke-static {v15, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    .line 2245
    .line 2246
    :cond_56
    return-void
.end method
