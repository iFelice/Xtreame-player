.class public final LE1/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Z

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, LE3/c;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LE3/c;-><init>(III)V

    invoke-direct {p0, p1, v0}, LE1/e0;-><init>(Landroid/content/Context;LE3/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LE1/A;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LE1/e0;->f:Ljava/lang/Object;

    .line 5
    new-instance v0, Lf/G;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lf/G;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, LE1/e0;->g:Ljava/lang/Object;

    .line 6
    new-instance v0, LE1/t;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LE1/t;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, LE1/e0;->h:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, LE1/e0;->a:Landroid/content/Context;

    .line 8
    iput-object p2, p0, LE1/e0;->c:Ljava/lang/Object;

    .line 9
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, LE1/e0;->d:Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, LE1/e0;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LE3/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/e0;->a:Landroid/content/Context;

    iput-object p2, p0, LE1/e0;->c:Ljava/lang/Object;

    new-instance p1, LF2/G;

    const/16 p2, 0x1a

    invoke-direct {p1, p2}, LF2/G;-><init>(I)V

    iput-object p1, p0, LE1/e0;->f:Ljava/lang/Object;

    invoke-virtual {p0}, LE1/e0;->c()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    .line 1
    iget-boolean v0, p0, LE1/e0;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v2, 0x1e

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-lt v1, v2, :cond_2

    .line 17
    .line 18
    new-instance v0, Landroid/content/Intent;

    .line 19
    .line 20
    const-string v1, "android.media.MediaRoute2ProviderService"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, LE1/e0;->e:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Landroid/content/pm/PackageManager;

    .line 33
    .line 34
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 53
    .line 54
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move-object v0, v1

    .line 61
    :cond_2
    new-instance v1, Landroid/content/Intent;

    .line 62
    .line 63
    const-string v2, "android.media.MediaRouteProviderService"

    .line 64
    .line 65
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v2, p0, LE1/e0;->e:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v2, Landroid/content/pm/PackageManager;

    .line 71
    .line 72
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const/4 v2, 0x0

    .line 81
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    iget-object v5, p0, LE1/e0;->f:Ljava/lang/Object;

    .line 86
    .line 87
    const/4 v6, 0x1

    .line 88
    iget-object v7, p0, LE1/e0;->c:Ljava/lang/Object;

    .line 89
    .line 90
    if-eqz v4, :cond_10

    .line 91
    .line 92
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 97
    .line 98
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 99
    .line 100
    if-nez v4, :cond_4

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_4
    sget-object v8, LE1/H;->c:LE1/A;

    .line 104
    .line 105
    if-nez v8, :cond_5

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_5
    invoke-static {}, LE1/H;->c()LE1/A;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-virtual {v8}, LE1/A;->g()Z

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    if-eqz v8, :cond_8

    .line 117
    .line 118
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    if-eqz v8, :cond_6

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    if-eqz v9, :cond_8

    .line 134
    .line 135
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    check-cast v9, Landroid/content/pm/ServiceInfo;

    .line 140
    .line 141
    iget-object v10, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 142
    .line 143
    iget-object v11, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v10

    .line 149
    if-eqz v10, :cond_7

    .line 150
    .line 151
    iget-object v10, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 152
    .line 153
    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    if-eqz v9, :cond_7

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_8
    :goto_2
    iget-object v8, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 163
    .line 164
    iget-object v9, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 165
    .line 166
    check-cast v5, Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 169
    .line 170
    .line 171
    move-result v10

    .line 172
    const/4 v11, 0x0

    .line 173
    :goto_3
    if-ge v11, v10, :cond_a

    .line 174
    .line 175
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v12

    .line 179
    check-cast v12, LE1/a0;

    .line 180
    .line 181
    iget-object v12, v12, LE1/a0;->i:Landroid/content/ComponentName;

    .line 182
    .line 183
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v13

    .line 187
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v13

    .line 191
    if-eqz v13, :cond_9

    .line 192
    .line 193
    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v12

    .line 197
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v12

    .line 201
    if-eqz v12, :cond_9

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_9
    add-int/lit8 v11, v11, 0x1

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_a
    const/4 v11, -0x1

    .line 208
    :goto_4
    if-gez v11, :cond_c

    .line 209
    .line 210
    new-instance v8, LE1/a0;

    .line 211
    .line 212
    new-instance v9, Landroid/content/ComponentName;

    .line 213
    .line 214
    iget-object v10, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 215
    .line 216
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 217
    .line 218
    invoke-direct {v9, v10, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget-object v4, p0, LE1/e0;->a:Landroid/content/Context;

    .line 222
    .line 223
    invoke-direct {v8, v4, v9}, LE1/a0;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 224
    .line 225
    .line 226
    new-instance v4, LC0/d;

    .line 227
    .line 228
    const/16 v9, 0xd

    .line 229
    .line 230
    invoke-direct {v4, v9, p0, v8}, LC0/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    iput-object v4, v8, LE1/a0;->p:LC0/d;

    .line 234
    .line 235
    iget-boolean v4, v8, LE1/a0;->l:Z

    .line 236
    .line 237
    if-nez v4, :cond_b

    .line 238
    .line 239
    iput-boolean v6, v8, LE1/a0;->l:Z

    .line 240
    .line 241
    invoke-virtual {v8}, LE1/a0;->m()V

    .line 242
    .line 243
    .line 244
    :cond_b
    add-int/lit8 v4, v2, 0x1

    .line 245
    .line 246
    invoke-virtual {v5, v2, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    check-cast v7, LE1/d0;

    .line 250
    .line 251
    check-cast v7, LE1/A;

    .line 252
    .line 253
    invoke-virtual {v7, v8, v3}, LE1/A;->a(LE1/n;Z)V

    .line 254
    .line 255
    .line 256
    :goto_5
    move v2, v4

    .line 257
    goto/16 :goto_1

    .line 258
    .line 259
    :cond_c
    if-lt v11, v2, :cond_3

    .line 260
    .line 261
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    check-cast v4, LE1/a0;

    .line 266
    .line 267
    iget-boolean v7, v4, LE1/a0;->l:Z

    .line 268
    .line 269
    if-nez v7, :cond_d

    .line 270
    .line 271
    iput-boolean v6, v4, LE1/a0;->l:Z

    .line 272
    .line 273
    invoke-virtual {v4}, LE1/a0;->m()V

    .line 274
    .line 275
    .line 276
    :cond_d
    iget-object v6, v4, LE1/a0;->n:LE1/U;

    .line 277
    .line 278
    if-nez v6, :cond_f

    .line 279
    .line 280
    iget-boolean v6, v4, LE1/a0;->l:Z

    .line 281
    .line 282
    if-eqz v6, :cond_f

    .line 283
    .line 284
    iget-object v6, v4, LE1/n;->e:LE1/i;

    .line 285
    .line 286
    if-eqz v6, :cond_e

    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_e
    iget-object v6, v4, LE1/a0;->k:Ljava/util/ArrayList;

    .line 290
    .line 291
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    if-nez v6, :cond_f

    .line 296
    .line 297
    :goto_6
    invoke-virtual {v4}, LE1/a0;->l()V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v4}, LE1/a0;->i()V

    .line 301
    .line 302
    .line 303
    :cond_f
    add-int/lit8 v4, v2, 0x1

    .line 304
    .line 305
    invoke-static {v5, v11, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 306
    .line 307
    .line 308
    goto :goto_5

    .line 309
    :cond_10
    check-cast v5, Ljava/util/ArrayList;

    .line 310
    .line 311
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-ge v2, v0, :cond_12

    .line 316
    .line 317
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    sub-int/2addr v0, v6

    .line 322
    :goto_7
    if-lt v0, v2, :cond_12

    .line 323
    .line 324
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    check-cast v1, LE1/a0;

    .line 329
    .line 330
    move-object v4, v7

    .line 331
    check-cast v4, LE1/d0;

    .line 332
    .line 333
    check-cast v4, LE1/A;

    .line 334
    .line 335
    invoke-virtual {v4, v1}, LE1/A;->j(LE1/n;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    const/4 v4, 0x0

    .line 342
    iput-object v4, v1, LE1/a0;->p:LC0/d;

    .line 343
    .line 344
    iget-boolean v4, v1, LE1/a0;->l:Z

    .line 345
    .line 346
    if-eqz v4, :cond_11

    .line 347
    .line 348
    iput-boolean v3, v1, LE1/a0;->l:Z

    .line 349
    .line 350
    invoke-virtual {v1}, LE1/a0;->m()V

    .line 351
    .line 352
    .line 353
    :cond_11
    add-int/lit8 v0, v0, -0x1

    .line 354
    .line 355
    goto :goto_7

    .line 356
    :cond_12
    return-void
.end method

.method public final b(Landroid/net/Uri;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, LE1/e0;->c()V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, LE1/e0;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Landroid/net/Uri;

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_3

    .line 17
    .line 18
    invoke-virtual {p0}, LE1/e0;->c()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, LE1/e0;->d:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object p1, p0, LE1/e0;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, LE3/c;

    .line 26
    .line 27
    iget v1, p1, LE3/c;->H:I

    .line 28
    .line 29
    iget-object v2, p0, LE1/e0;->a:Landroid/content/Context;

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget v3, p1, LE3/c;->I:I

    .line 34
    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance v3, LF3/c;

    .line 39
    .line 40
    iget p1, p1, LE3/c;->I:I

    .line 41
    .line 42
    invoke-direct {v3, v2, v1, p1, p0}, LF3/c;-><init>(Landroid/content/Context;IILE1/e0;)V

    .line 43
    .line 44
    .line 45
    iput-object v3, p0, LE1/e0;->e:Ljava/lang/Object;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    :goto_0
    new-instance p1, LF3/c;

    .line 49
    .line 50
    invoke-direct {p1, v2, v0, v0, p0}, LF3/c;-><init>(Landroid/content/Context;IILE1/e0;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, LE1/e0;->e:Ljava/lang/Object;

    .line 54
    .line 55
    :goto_1
    iget-object p1, p0, LE1/e0;->e:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p1, LF3/c;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, LE1/e0;->d:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v1, Landroid/net/Uri;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 70
    .line 71
    const/4 v3, 0x1

    .line 72
    new-array v3, v3, [Landroid/net/Uri;

    .line 73
    .line 74
    aput-object v1, v3, v0

    .line 75
    .line 76
    invoke-virtual {p1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 77
    .line 78
    .line 79
    :cond_3
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, LE1/e0;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LF3/c;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, LE1/e0;->e:Ljava/lang/Object;

    .line 13
    .line 14
    :cond_0
    iput-object v1, p0, LE1/e0;->d:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object v1, p0, LE1/e0;->g:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, LE1/e0;->b:Z

    .line 20
    .line 21
    return-void
.end method
