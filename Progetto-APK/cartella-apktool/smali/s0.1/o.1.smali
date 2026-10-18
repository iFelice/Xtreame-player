.class public final Ls0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/i;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ls0/i;

.field public d:Ls0/v;

.field public e:Ls0/b;

.field public f:Ls0/f;

.field public g:Ls0/i;

.field public h:Ls0/Q;

.field public i:Ls0/g;

.field public j:Ls0/L;

.field public k:Ls0/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls0/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Ls0/o;->a:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Ls0/o;->c:Ls0/i;

    .line 14
    .line 15
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Ls0/o;->b:Ljava/util/ArrayList;

    .line 21
    .line 22
    return-void
.end method

.method public static t(Ls0/i;Ls0/O;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ls0/i;->p(Ls0/O;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ls0/m;)J
    .locals 6

    .line 1
    iget-object v0, p0, Ls0/o;->k:Ls0/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p1, Ls0/m;->a:Landroid/net/Uri;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v2, Lp0/M;->a:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v2, p1, Ls0/m;->a:Landroid/net/Uri;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    iget-object v5, p0, Ls0/o;->a:Landroid/content/Context;

    .line 31
    .line 32
    if-nez v4, :cond_f

    .line 33
    .line 34
    const-string v4, "file"

    .line 35
    .line 36
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    goto/16 :goto_3

    .line 43
    .line 44
    :cond_1
    const-string v2, "asset"

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    iget-object v0, p0, Ls0/o;->e:Ls0/b;

    .line 53
    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    new-instance v0, Ls0/b;

    .line 57
    .line 58
    invoke-direct {v0, v5}, Ls0/b;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Ls0/o;->e:Ls0/b;

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Ls0/o;->s(Ls0/i;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    iget-object v0, p0, Ls0/o;->e:Ls0/b;

    .line 67
    .line 68
    iput-object v0, p0, Ls0/o;->k:Ls0/i;

    .line 69
    .line 70
    goto/16 :goto_4

    .line 71
    .line 72
    :cond_3
    const-string v2, "content"

    .line 73
    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_5

    .line 79
    .line 80
    iget-object v0, p0, Ls0/o;->f:Ls0/f;

    .line 81
    .line 82
    if-nez v0, :cond_4

    .line 83
    .line 84
    new-instance v0, Ls0/f;

    .line 85
    .line 86
    invoke-direct {v0, v5}, Ls0/f;-><init>(Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Ls0/o;->f:Ls0/f;

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Ls0/o;->s(Ls0/i;)V

    .line 92
    .line 93
    .line 94
    :cond_4
    iget-object v0, p0, Ls0/o;->f:Ls0/f;

    .line 95
    .line 96
    iput-object v0, p0, Ls0/o;->k:Ls0/i;

    .line 97
    .line 98
    goto/16 :goto_4

    .line 99
    .line 100
    :cond_5
    const-string v2, "rtmp"

    .line 101
    .line 102
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    iget-object v3, p0, Ls0/o;->c:Ls0/i;

    .line 107
    .line 108
    if-eqz v2, :cond_7

    .line 109
    .line 110
    iget-object v0, p0, Ls0/o;->g:Ls0/i;

    .line 111
    .line 112
    if-nez v0, :cond_6

    .line 113
    .line 114
    :try_start_0
    const-class v0, Lv0/a;

    .line 115
    .line 116
    sget v2, Lv0/a;->g:I

    .line 117
    .line 118
    new-array v2, v1, [Ljava/lang/Class;

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    new-array v1, v1, [Ljava/lang/Object;

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Ls0/i;

    .line 131
    .line 132
    iput-object v0, p0, Ls0/o;->g:Ls0/i;

    .line 133
    .line 134
    invoke-virtual {p0, v0}, Ls0/o;->s(Ls0/i;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :catch_0
    move-exception p1

    .line 139
    new-instance v0, Ljava/lang/RuntimeException;

    .line 140
    .line 141
    const-string v1, "Error instantiating RTMP extension"

    .line 142
    .line 143
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    throw v0

    .line 147
    :catch_1
    const-string v0, "DefaultDataSource"

    .line 148
    .line 149
    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    .line 150
    .line 151
    invoke-static {v0, v1}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :goto_1
    iget-object v0, p0, Ls0/o;->g:Ls0/i;

    .line 155
    .line 156
    if-nez v0, :cond_6

    .line 157
    .line 158
    iput-object v3, p0, Ls0/o;->g:Ls0/i;

    .line 159
    .line 160
    :cond_6
    iget-object v0, p0, Ls0/o;->g:Ls0/i;

    .line 161
    .line 162
    iput-object v0, p0, Ls0/o;->k:Ls0/i;

    .line 163
    .line 164
    goto/16 :goto_4

    .line 165
    .line 166
    :cond_7
    const-string v2, "udp"

    .line 167
    .line 168
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_9

    .line 173
    .line 174
    iget-object v0, p0, Ls0/o;->h:Ls0/Q;

    .line 175
    .line 176
    if-nez v0, :cond_8

    .line 177
    .line 178
    new-instance v0, Ls0/Q;

    .line 179
    .line 180
    invoke-direct {v0}, Ls0/Q;-><init>()V

    .line 181
    .line 182
    .line 183
    iput-object v0, p0, Ls0/o;->h:Ls0/Q;

    .line 184
    .line 185
    invoke-virtual {p0, v0}, Ls0/o;->s(Ls0/i;)V

    .line 186
    .line 187
    .line 188
    :cond_8
    iget-object v0, p0, Ls0/o;->h:Ls0/Q;

    .line 189
    .line 190
    iput-object v0, p0, Ls0/o;->k:Ls0/i;

    .line 191
    .line 192
    goto/16 :goto_4

    .line 193
    .line 194
    :cond_9
    const-string v2, "data"

    .line 195
    .line 196
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-eqz v2, :cond_b

    .line 201
    .line 202
    iget-object v0, p0, Ls0/o;->i:Ls0/g;

    .line 203
    .line 204
    if-nez v0, :cond_a

    .line 205
    .line 206
    new-instance v0, Ls0/g;

    .line 207
    .line 208
    invoke-direct {v0, v1}, Ls0/c;-><init>(Z)V

    .line 209
    .line 210
    .line 211
    iput-object v0, p0, Ls0/o;->i:Ls0/g;

    .line 212
    .line 213
    invoke-virtual {p0, v0}, Ls0/o;->s(Ls0/i;)V

    .line 214
    .line 215
    .line 216
    :cond_a
    iget-object v0, p0, Ls0/o;->i:Ls0/g;

    .line 217
    .line 218
    iput-object v0, p0, Ls0/o;->k:Ls0/i;

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_b
    const-string v1, "rawresource"

    .line 222
    .line 223
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-nez v1, :cond_d

    .line 228
    .line 229
    const-string v1, "android.resource"

    .line 230
    .line 231
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_c

    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_c
    iput-object v3, p0, Ls0/o;->k:Ls0/i;

    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_d
    :goto_2
    iget-object v0, p0, Ls0/o;->j:Ls0/L;

    .line 242
    .line 243
    if-nez v0, :cond_e

    .line 244
    .line 245
    new-instance v0, Ls0/L;

    .line 246
    .line 247
    invoke-direct {v0, v5}, Ls0/L;-><init>(Landroid/content/Context;)V

    .line 248
    .line 249
    .line 250
    iput-object v0, p0, Ls0/o;->j:Ls0/L;

    .line 251
    .line 252
    invoke-virtual {p0, v0}, Ls0/o;->s(Ls0/i;)V

    .line 253
    .line 254
    .line 255
    :cond_e
    iget-object v0, p0, Ls0/o;->j:Ls0/L;

    .line 256
    .line 257
    iput-object v0, p0, Ls0/o;->k:Ls0/i;

    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_f
    :goto_3
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    if-eqz v0, :cond_11

    .line 265
    .line 266
    const-string v2, "/android_asset/"

    .line 267
    .line 268
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-eqz v0, :cond_11

    .line 273
    .line 274
    iget-object v0, p0, Ls0/o;->e:Ls0/b;

    .line 275
    .line 276
    if-nez v0, :cond_10

    .line 277
    .line 278
    new-instance v0, Ls0/b;

    .line 279
    .line 280
    invoke-direct {v0, v5}, Ls0/b;-><init>(Landroid/content/Context;)V

    .line 281
    .line 282
    .line 283
    iput-object v0, p0, Ls0/o;->e:Ls0/b;

    .line 284
    .line 285
    invoke-virtual {p0, v0}, Ls0/o;->s(Ls0/i;)V

    .line 286
    .line 287
    .line 288
    :cond_10
    iget-object v0, p0, Ls0/o;->e:Ls0/b;

    .line 289
    .line 290
    iput-object v0, p0, Ls0/o;->k:Ls0/i;

    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_11
    iget-object v0, p0, Ls0/o;->d:Ls0/v;

    .line 294
    .line 295
    if-nez v0, :cond_12

    .line 296
    .line 297
    new-instance v0, Ls0/v;

    .line 298
    .line 299
    invoke-direct {v0, v1}, Ls0/c;-><init>(Z)V

    .line 300
    .line 301
    .line 302
    iput-object v0, p0, Ls0/o;->d:Ls0/v;

    .line 303
    .line 304
    invoke-virtual {p0, v0}, Ls0/o;->s(Ls0/i;)V

    .line 305
    .line 306
    .line 307
    :cond_12
    iget-object v0, p0, Ls0/o;->d:Ls0/v;

    .line 308
    .line 309
    iput-object v0, p0, Ls0/o;->k:Ls0/i;

    .line 310
    .line 311
    :goto_4
    iget-object v0, p0, Ls0/o;->k:Ls0/i;

    .line 312
    .line 313
    invoke-interface {v0, p1}, Ls0/i;->a(Ls0/m;)J

    .line 314
    .line 315
    .line 316
    move-result-wide v0

    .line 317
    return-wide v0
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Ls0/o;->k:Ls0/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-interface {v0}, Ls0/i;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Ls0/o;->k:Ls0/i;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    iput-object v1, p0, Ls0/o;->k:Ls0/i;

    .line 14
    .line 15
    throw v0

    .line 16
    :cond_0
    :goto_0
    return-void
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Ls0/o;->k:Ls0/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Ls0/i;->getUri()Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    return-object v0
.end method

.method public final k()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Ls0/o;->k:Ls0/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0}, Ls0/i;->k()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    return-object v0
.end method

.method public final p(Ls0/O;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ls0/o;->c:Ls0/i;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ls0/i;->p(Ls0/O;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Ls0/o;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Ls0/o;->d:Ls0/v;

    .line 15
    .line 16
    invoke-static {v0, p1}, Ls0/o;->t(Ls0/i;Ls0/O;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Ls0/o;->e:Ls0/b;

    .line 20
    .line 21
    invoke-static {v0, p1}, Ls0/o;->t(Ls0/i;Ls0/O;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Ls0/o;->f:Ls0/f;

    .line 25
    .line 26
    invoke-static {v0, p1}, Ls0/o;->t(Ls0/i;Ls0/O;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Ls0/o;->g:Ls0/i;

    .line 30
    .line 31
    invoke-static {v0, p1}, Ls0/o;->t(Ls0/i;Ls0/O;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Ls0/o;->h:Ls0/Q;

    .line 35
    .line 36
    invoke-static {v0, p1}, Ls0/o;->t(Ls0/i;Ls0/O;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Ls0/o;->i:Ls0/g;

    .line 40
    .line 41
    invoke-static {v0, p1}, Ls0/o;->t(Ls0/i;Ls0/O;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Ls0/o;->j:Ls0/L;

    .line 45
    .line 46
    invoke-static {v0, p1}, Ls0/o;->t(Ls0/i;Ls0/O;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final q([BII)I
    .locals 1

    .line 1
    iget-object v0, p0, Ls0/o;->k:Ls0/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lm0/j;->q([BII)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final s(Ls0/i;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Ls0/o;->b:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ls0/O;

    .line 15
    .line 16
    invoke-interface {p1, v1}, Ls0/i;->p(Ls0/O;)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method
