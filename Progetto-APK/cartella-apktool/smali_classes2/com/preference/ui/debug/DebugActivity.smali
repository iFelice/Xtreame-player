.class public Lcom/preference/ui/debug/DebugActivity;
.super Lf/o;
.source "SourceFile"

# interfaces
.implements LT5/g;
.implements LT5/c;
.implements LU5/a;


# instance fields
.field public e0:Landroidx/recyclerview/widget/RecyclerView;

.field public f0:LT5/f;

.field public g0:LP0/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/o;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    const v0, 0x7f14012c

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lf/o;->setTheme(I)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, LY/v;->onCreate(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0e0043

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lf/o;->setContentView(I)V

    .line 14
    .line 15
    .line 16
    const-string p1, "Debug"

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lf/o;->q()Lf/X;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x4

    .line 26
    const/4 v1, 0x1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Lf/o;->q()Lf/X;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget-object v2, p1, Lf/X;->Q:Ll/q0;

    .line 37
    .line 38
    check-cast v2, Ll/o1;

    .line 39
    .line 40
    iget v3, v2, Ll/o1;->b:I

    .line 41
    .line 42
    iput-boolean v1, p1, Lf/X;->T:Z

    .line 43
    .line 44
    and-int/lit8 p1, v3, -0x5

    .line 45
    .line 46
    or-int/2addr p1, v0

    .line 47
    invoke-virtual {v2, p1}, Ll/o1;->a(I)V

    .line 48
    .line 49
    .line 50
    :cond_0
    const p1, 0x7f0b041f

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lf/o;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/preference/ui/debug/DebugActivity;->e0:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    .line 61
    new-instance v2, LO1/k;

    .line 62
    .line 63
    invoke-direct {v2, p0}, LO1/k;-><init>(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->i(LO1/I;)V

    .line 67
    .line 68
    .line 69
    new-instance p1, LP0/j;

    .line 70
    .line 71
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p0, p1, LP0/j;->H:Ljava/lang/Object;

    .line 75
    .line 76
    iput-object p1, p0, Lcom/preference/ui/debug/DebugActivity;->g0:LP0/j;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const/4 v3, 0x0

    .line 87
    if-eqz v2, :cond_1

    .line 88
    .line 89
    const-string v4, "editable"

    .line 90
    .line 91
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    iput-boolean v2, p1, LP0/j;->G:Z

    .line 96
    .line 97
    :cond_1
    iget-object p1, p0, Lcom/preference/ui/debug/DebugActivity;->g0:LP0/j;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    new-instance v2, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-static {}, LQ5/b;->b()LQ5/b;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    new-instance v5, Ljava/util/HashMap;

    .line 115
    .line 116
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 117
    .line 118
    .line 119
    new-instance v6, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .line 123
    .line 124
    new-instance v7, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    new-instance v8, Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .line 133
    .line 134
    new-instance v9, Ljava/io/File;

    .line 135
    .line 136
    new-instance v10, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-static {}, LQ5/b;->b()LQ5/b;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    iget-object v11, v11, LQ5/b;->a:Landroid/content/Context;

    .line 146
    .line 147
    invoke-virtual {v11}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 148
    .line 149
    .line 150
    move-result-object v11

    .line 151
    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 152
    .line 153
    const-string v12, "/shared_prefs"

    .line 154
    .line 155
    invoke-static {v10, v11, v12}, La/r;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    if-eqz v9, :cond_2

    .line 167
    .line 168
    array-length v10, v9

    .line 169
    const/4 v11, 0x0

    .line 170
    :goto_0
    if-ge v11, v10, :cond_2

    .line 171
    .line 172
    aget-object v12, v9, v11

    .line 173
    .line 174
    const-string v13, ".xml"

    .line 175
    .line 176
    invoke-static {v12, v13}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    .line 177
    .line 178
    .line 179
    move-result v13

    .line 180
    invoke-virtual {v12, v3, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v12

    .line 184
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    add-int/lit8 v11, v11, 0x1

    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    if-eqz v9, :cond_3

    .line 199
    .line 200
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    check-cast v9, Ljava/lang/String;

    .line 205
    .line 206
    iget-object v10, v4, LQ5/b;->a:Landroid/content/Context;

    .line 207
    .line 208
    invoke-virtual {v10, v9, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 209
    .line 210
    .line 211
    move-result-object v10

    .line 212
    invoke-virtual {v5, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    if-eqz v4, :cond_b

    .line 228
    .line 229
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    check-cast v4, Landroid/content/SharedPreferences;

    .line 234
    .line 235
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    invoke-interface {v7}, Ljava/util/Map;->size()I

    .line 240
    .line 241
    .line 242
    move-result v8

    .line 243
    if-lez v8, :cond_4

    .line 244
    .line 245
    new-instance v8, Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .line 249
    .line 250
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 259
    .line 260
    .line 261
    move-result v9

    .line 262
    if-eqz v9, :cond_a

    .line 263
    .line 264
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v9

    .line 268
    check-cast v9, Ljava/util/Map$Entry;

    .line 269
    .line 270
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v10

    .line 274
    instance-of v11, v10, Ljava/lang/Boolean;

    .line 275
    .line 276
    if-eqz v11, :cond_5

    .line 277
    .line 278
    const/4 v12, 0x1

    .line 279
    goto :goto_4

    .line 280
    :cond_5
    instance-of v11, v10, Ljava/lang/String;

    .line 281
    .line 282
    const/4 v12, 0x2

    .line 283
    if-eqz v11, :cond_6

    .line 284
    .line 285
    goto :goto_4

    .line 286
    :cond_6
    instance-of v11, v10, Ljava/lang/Integer;

    .line 287
    .line 288
    if-eqz v11, :cond_7

    .line 289
    .line 290
    const/4 v12, 0x5

    .line 291
    goto :goto_4

    .line 292
    :cond_7
    instance-of v11, v10, Ljava/lang/Float;

    .line 293
    .line 294
    if-eqz v11, :cond_8

    .line 295
    .line 296
    const/4 v12, 0x4

    .line 297
    goto :goto_4

    .line 298
    :cond_8
    instance-of v10, v10, Ljava/lang/Long;

    .line 299
    .line 300
    if-eqz v10, :cond_9

    .line 301
    .line 302
    const/4 v12, 0x3

    .line 303
    :cond_9
    :goto_4
    new-instance v10, LR5/b;

    .line 304
    .line 305
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v11

    .line 309
    check-cast v11, Ljava/lang/String;

    .line 310
    .line 311
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v9

    .line 315
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v13

    .line 319
    check-cast v13, Ljava/lang/String;

    .line 320
    .line 321
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 322
    .line 323
    .line 324
    iput-object v11, v10, LR5/b;->H:Ljava/lang/String;

    .line 325
    .line 326
    iput-object v9, v10, LR5/b;->I:Ljava/lang/Object;

    .line 327
    .line 328
    iput-object v13, v10, LR5/b;->G:Ljava/lang/String;

    .line 329
    .line 330
    iput v12, v10, LR5/b;->J:I

    .line 331
    .line 332
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    goto :goto_3

    .line 336
    :cond_a
    new-instance v7, LR5/a;

    .line 337
    .line 338
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    check-cast v4, Ljava/lang/String;

    .line 343
    .line 344
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 345
    .line 346
    .line 347
    iput-object v4, v7, LR5/a;->a:Ljava/lang/String;

    .line 348
    .line 349
    iput-object v8, v7, LR5/a;->b:Ljava/util/List;

    .line 350
    .line 351
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    goto/16 :goto_2

    .line 355
    .line 356
    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 361
    .line 362
    .line 363
    move-result v1

    .line 364
    if-eqz v1, :cond_c

    .line 365
    .line 366
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    check-cast v1, LR5/a;

    .line 371
    .line 372
    new-instance v3, LT5/b;

    .line 373
    .line 374
    iget-object v4, v1, LR5/a;->a:Ljava/lang/String;

    .line 375
    .line 376
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 377
    .line 378
    .line 379
    iput-object v4, v3, LW5/a;->G:Ljava/lang/String;

    .line 380
    .line 381
    iget-object v1, v1, LR5/a;->b:Ljava/util/List;

    .line 382
    .line 383
    iput-object v1, v3, LW5/a;->H:Ljava/util/List;

    .line 384
    .line 385
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    goto :goto_5

    .line 389
    :cond_c
    iget-object v0, p1, LP0/j;->H:Ljava/lang/Object;

    .line 390
    .line 391
    check-cast v0, LT5/g;

    .line 392
    .line 393
    iget-boolean p1, p1, LP0/j;->G:Z

    .line 394
    .line 395
    check-cast v0, Lcom/preference/ui/debug/DebugActivity;

    .line 396
    .line 397
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    .line 399
    .line 400
    new-instance v1, LT5/f;

    .line 401
    .line 402
    invoke-direct {v1, v2, v0, p1}, LT5/f;-><init>(Ljava/util/ArrayList;Lcom/preference/ui/debug/DebugActivity;Z)V

    .line 403
    .line 404
    .line 405
    iput-object v1, v0, Lcom/preference/ui/debug/DebugActivity;->f0:LT5/f;

    .line 406
    .line 407
    invoke-virtual {v1}, LT5/f;->f()V

    .line 408
    .line 409
    .line 410
    iget-object p1, v0, Lcom/preference/ui/debug/DebugActivity;->e0:Landroidx/recyclerview/widget/RecyclerView;

    .line 411
    .line 412
    iget-object v0, v0, Lcom/preference/ui/debug/DebugActivity;->f0:LT5/f;

    .line 413
    .line 414
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LO1/C;)V

    .line 415
    .line 416
    .line 417
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/o;->getMenuInflater()Landroid/view/MenuInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, 0x7f0f0000

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x102002c

    .line 6
    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/preference/ui/debug/DebugActivity;->g0:LP0/j;

    .line 11
    .line 12
    iget-object v0, v0, LP0/j;->H:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, LT5/g;

    .line 15
    .line 16
    check-cast v0, Lcom/preference/ui/debug/DebugActivity;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    const v1, 0x7f0b0215

    .line 24
    .line 25
    .line 26
    if-ne v0, v1, :cond_5

    .line 27
    .line 28
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "expand"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/preference/ui/debug/DebugActivity;->g0:LP0/j;

    .line 45
    .line 46
    iget-object v0, v0, LP0/j;->H:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, LT5/g;

    .line 49
    .line 50
    check-cast v0, Lcom/preference/ui/debug/DebugActivity;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    const-string v1, "collapse"

    .line 56
    .line 57
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 58
    .line 59
    .line 60
    iget-object v0, v0, Lcom/preference/ui/debug/DebugActivity;->f0:LT5/f;

    .line 61
    .line 62
    invoke-virtual {v0}, LT5/f;->f()V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/preference/ui/debug/DebugActivity;->g0:LP0/j;

    .line 67
    .line 68
    iget-object v0, v0, LP0/j;->H:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, LT5/g;

    .line 71
    .line 72
    check-cast v0, Lcom/preference/ui/debug/DebugActivity;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 78
    .line 79
    .line 80
    iget-object v0, v0, Lcom/preference/ui/debug/DebugActivity;->f0:LT5/f;

    .line 81
    .line 82
    iget-object v1, v0, LV5/b;->I:LF/i;

    .line 83
    .line 84
    iget-object v1, v1, LF/i;->H:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v1, Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_5

    .line 97
    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, LW5/a;

    .line 103
    .line 104
    iget-object v3, v0, LV5/b;->J:LV5/a;

    .line 105
    .line 106
    iget-object v3, v3, LV5/a;->b:LF/i;

    .line 107
    .line 108
    iget-object v4, v3, LF/i;->H:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v4, Ljava/util/List;

    .line 111
    .line 112
    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    iget-object v3, v3, LF/i;->I:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v3, [Z

    .line 119
    .line 120
    aget-boolean v3, v3, v4

    .line 121
    .line 122
    if-eqz v3, :cond_2

    .line 123
    .line 124
    iget-object v3, v0, LV5/b;->J:LV5/a;

    .line 125
    .line 126
    iget-object v4, v3, LV5/a;->b:LF/i;

    .line 127
    .line 128
    iget-object v5, v4, LF/i;->H:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v5, Ljava/util/List;

    .line 131
    .line 132
    invoke-interface {v5, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    const/4 v5, 0x0

    .line 137
    const/4 v6, 0x0

    .line 138
    :goto_1
    if-ge v5, v2, :cond_3

    .line 139
    .line 140
    invoke-virtual {v4, v5}, LF/i;->v(I)I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    add-int/2addr v6, v7

    .line 145
    add-int/lit8 v5, v5, 0x1

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_3
    invoke-virtual {v4, v6}, LF/i;->m(I)LW5/b;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    iget-object v4, v4, LF/i;->I:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v4, [Z

    .line 155
    .line 156
    iget v5, v2, LW5/b;->a:I

    .line 157
    .line 158
    aget-boolean v4, v4, v5

    .line 159
    .line 160
    if-eqz v4, :cond_4

    .line 161
    .line 162
    invoke-virtual {v3, v2}, LV5/a;->a(LW5/b;)V

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_4
    invoke-virtual {v3, v2}, LV5/a;->b(LW5/b;)V

    .line 167
    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_5
    :goto_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    return p1
.end method
