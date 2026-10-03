.class public final Lcom/google/android/gms/internal/ads/VD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/kC;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lcom/google/android/gms/internal/ads/kC;

.field public d:Lcom/google/android/gms/internal/ads/bG;

.field public e:Lcom/google/android/gms/internal/ads/xz;

.field public f:Lcom/google/android/gms/internal/ads/cB;

.field public g:Lcom/google/android/gms/internal/ads/kC;

.field public h:Lcom/google/android/gms/internal/ads/PJ;

.field public i:Lcom/google/android/gms/internal/ads/tB;

.field public j:Lcom/google/android/gms/internal/ads/cB;

.field public k:Lcom/google/android/gms/internal/ads/kC;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/rF;)V
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/VD;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/VD;->c:Lcom/google/android/gms/internal/ads/kC;

    .line 11
    .line 12
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/VD;->b:Ljava/util/ArrayList;

    .line 18
    .line 19
    return-void
.end method

.method public static final j(Lcom/google/android/gms/internal/ads/kC;Lcom/google/android/gms/internal/ads/lJ;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/kC;->f(Lcom/google/android/gms/internal/ads/lJ;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/CD;)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->k:Lcom/google/android/gms/internal/ads/kC;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {v0}, Lo3/r;->M(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/CD;->a:Landroid/net/Uri;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget v3, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 20
    .line 21
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/CD;->a:Landroid/net/Uri;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/VD;->a:Landroid/content/Context;

    .line 32
    .line 33
    if-nez v5, :cond_f

    .line 34
    .line 35
    const-string v5, "file"

    .line 36
    .line 37
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_1
    const-string v3, "asset"

    .line 46
    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->e:Lcom/google/android/gms/internal/ads/xz;

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    new-instance v0, Lcom/google/android/gms/internal/ads/xz;

    .line 58
    .line 59
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/xz;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->e:Lcom/google/android/gms/internal/ads/xz;

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/VD;->i(Lcom/google/android/gms/internal/ads/kC;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->e:Lcom/google/android/gms/internal/ads/xz;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->k:Lcom/google/android/gms/internal/ads/kC;

    .line 70
    .line 71
    goto/16 :goto_4

    .line 72
    .line 73
    :cond_3
    const-string v3, "content"

    .line 74
    .line 75
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_5

    .line 80
    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->f:Lcom/google/android/gms/internal/ads/cB;

    .line 82
    .line 83
    if-nez v0, :cond_4

    .line 84
    .line 85
    new-instance v0, Lcom/google/android/gms/internal/ads/cB;

    .line 86
    .line 87
    invoke-direct {v0, v6, v2}, Lcom/google/android/gms/internal/ads/cB;-><init>(Landroid/content/Context;I)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->f:Lcom/google/android/gms/internal/ads/cB;

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/VD;->i(Lcom/google/android/gms/internal/ads/kC;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->f:Lcom/google/android/gms/internal/ads/cB;

    .line 96
    .line 97
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->k:Lcom/google/android/gms/internal/ads/kC;

    .line 98
    .line 99
    goto/16 :goto_4

    .line 100
    .line 101
    :cond_5
    const-string v3, "rtmp"

    .line 102
    .line 103
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/VD;->c:Lcom/google/android/gms/internal/ads/kC;

    .line 108
    .line 109
    if-eqz v3, :cond_7

    .line 110
    .line 111
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->g:Lcom/google/android/gms/internal/ads/kC;

    .line 112
    .line 113
    if-nez v0, :cond_6

    .line 114
    .line 115
    :try_start_0
    const-class v0, Lv0/a;

    .line 116
    .line 117
    sget v1, Lv0/a;->g:I

    .line 118
    .line 119
    new-array v1, v2, [Ljava/lang/Class;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    new-array v1, v2, [Ljava/lang/Object;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Lcom/google/android/gms/internal/ads/kC;

    .line 132
    .line 133
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->g:Lcom/google/android/gms/internal/ads/kC;

    .line 134
    .line 135
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/VD;->i(Lcom/google/android/gms/internal/ads/kC;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :catch_0
    move-exception p1

    .line 140
    new-instance v0, Ljava/lang/RuntimeException;

    .line 141
    .line 142
    const-string v1, "Error instantiating RTMP extension"

    .line 143
    .line 144
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    throw v0

    .line 148
    :catch_1
    const-string v0, "DefaultDataSource"

    .line 149
    .line 150
    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    .line 151
    .line 152
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->g:Lcom/google/android/gms/internal/ads/kC;

    .line 156
    .line 157
    if-nez v0, :cond_6

    .line 158
    .line 159
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/VD;->g:Lcom/google/android/gms/internal/ads/kC;

    .line 160
    .line 161
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->g:Lcom/google/android/gms/internal/ads/kC;

    .line 162
    .line 163
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->k:Lcom/google/android/gms/internal/ads/kC;

    .line 164
    .line 165
    goto/16 :goto_4

    .line 166
    .line 167
    :cond_7
    const-string v3, "udp"

    .line 168
    .line 169
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    if-eqz v3, :cond_9

    .line 174
    .line 175
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->h:Lcom/google/android/gms/internal/ads/PJ;

    .line 176
    .line 177
    if-nez v0, :cond_8

    .line 178
    .line 179
    new-instance v0, Lcom/google/android/gms/internal/ads/PJ;

    .line 180
    .line 181
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/PJ;-><init>()V

    .line 182
    .line 183
    .line 184
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->h:Lcom/google/android/gms/internal/ads/PJ;

    .line 185
    .line 186
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/VD;->i(Lcom/google/android/gms/internal/ads/kC;)V

    .line 187
    .line 188
    .line 189
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->h:Lcom/google/android/gms/internal/ads/PJ;

    .line 190
    .line 191
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->k:Lcom/google/android/gms/internal/ads/kC;

    .line 192
    .line 193
    goto/16 :goto_4

    .line 194
    .line 195
    :cond_9
    const-string v3, "data"

    .line 196
    .line 197
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-eqz v3, :cond_b

    .line 202
    .line 203
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->i:Lcom/google/android/gms/internal/ads/tB;

    .line 204
    .line 205
    if-nez v0, :cond_a

    .line 206
    .line 207
    new-instance v0, Lcom/google/android/gms/internal/ads/tB;

    .line 208
    .line 209
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/Nz;-><init>(Z)V

    .line 210
    .line 211
    .line 212
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->i:Lcom/google/android/gms/internal/ads/tB;

    .line 213
    .line 214
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/VD;->i(Lcom/google/android/gms/internal/ads/kC;)V

    .line 215
    .line 216
    .line 217
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->i:Lcom/google/android/gms/internal/ads/tB;

    .line 218
    .line 219
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->k:Lcom/google/android/gms/internal/ads/kC;

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_b
    const-string v2, "rawresource"

    .line 223
    .line 224
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-nez v2, :cond_d

    .line 229
    .line 230
    const-string v2, "android.resource"

    .line 231
    .line 232
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-eqz v0, :cond_c

    .line 237
    .line 238
    goto :goto_2

    .line 239
    :cond_c
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/VD;->k:Lcom/google/android/gms/internal/ads/kC;

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->j:Lcom/google/android/gms/internal/ads/cB;

    .line 243
    .line 244
    if-nez v0, :cond_e

    .line 245
    .line 246
    new-instance v0, Lcom/google/android/gms/internal/ads/cB;

    .line 247
    .line 248
    invoke-direct {v0, v6, v1}, Lcom/google/android/gms/internal/ads/cB;-><init>(Landroid/content/Context;I)V

    .line 249
    .line 250
    .line 251
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->j:Lcom/google/android/gms/internal/ads/cB;

    .line 252
    .line 253
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/VD;->i(Lcom/google/android/gms/internal/ads/kC;)V

    .line 254
    .line 255
    .line 256
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->j:Lcom/google/android/gms/internal/ads/cB;

    .line 257
    .line 258
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->k:Lcom/google/android/gms/internal/ads/kC;

    .line 259
    .line 260
    goto :goto_4

    .line 261
    :cond_f
    :goto_3
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    if-eqz v0, :cond_11

    .line 266
    .line 267
    const-string v1, "/android_asset/"

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    if-eqz v0, :cond_11

    .line 274
    .line 275
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->e:Lcom/google/android/gms/internal/ads/xz;

    .line 276
    .line 277
    if-nez v0, :cond_10

    .line 278
    .line 279
    new-instance v0, Lcom/google/android/gms/internal/ads/xz;

    .line 280
    .line 281
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/xz;-><init>(Landroid/content/Context;)V

    .line 282
    .line 283
    .line 284
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->e:Lcom/google/android/gms/internal/ads/xz;

    .line 285
    .line 286
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/VD;->i(Lcom/google/android/gms/internal/ads/kC;)V

    .line 287
    .line 288
    .line 289
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->e:Lcom/google/android/gms/internal/ads/xz;

    .line 290
    .line 291
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->k:Lcom/google/android/gms/internal/ads/kC;

    .line 292
    .line 293
    goto :goto_4

    .line 294
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->d:Lcom/google/android/gms/internal/ads/bG;

    .line 295
    .line 296
    if-nez v0, :cond_12

    .line 297
    .line 298
    new-instance v0, Lcom/google/android/gms/internal/ads/bG;

    .line 299
    .line 300
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/Nz;-><init>(Z)V

    .line 301
    .line 302
    .line 303
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->d:Lcom/google/android/gms/internal/ads/bG;

    .line 304
    .line 305
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/VD;->i(Lcom/google/android/gms/internal/ads/kC;)V

    .line 306
    .line 307
    .line 308
    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->d:Lcom/google/android/gms/internal/ads/bG;

    .line 309
    .line 310
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->k:Lcom/google/android/gms/internal/ads/kC;

    .line 311
    .line 312
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->k:Lcom/google/android/gms/internal/ads/kC;

    .line 313
    .line 314
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/kC;->a(Lcom/google/android/gms/internal/ads/CD;)J

    .line 315
    .line 316
    .line 317
    move-result-wide v0

    .line 318
    return-wide v0
.end method

.method public final e([BII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->k:Lcom/google/android/gms/internal/ads/kC;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/HL;->e([BII)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final f(Lcom/google/android/gms/internal/ads/lJ;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->c:Lcom/google/android/gms/internal/ads/kC;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/kC;->f(Lcom/google/android/gms/internal/ads/lJ;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->d:Lcom/google/android/gms/internal/ads/bG;

    .line 15
    .line 16
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/VD;->j(Lcom/google/android/gms/internal/ads/kC;Lcom/google/android/gms/internal/ads/lJ;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->e:Lcom/google/android/gms/internal/ads/xz;

    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/VD;->j(Lcom/google/android/gms/internal/ads/kC;Lcom/google/android/gms/internal/ads/lJ;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->f:Lcom/google/android/gms/internal/ads/cB;

    .line 25
    .line 26
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/VD;->j(Lcom/google/android/gms/internal/ads/kC;Lcom/google/android/gms/internal/ads/lJ;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->g:Lcom/google/android/gms/internal/ads/kC;

    .line 30
    .line 31
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/VD;->j(Lcom/google/android/gms/internal/ads/kC;Lcom/google/android/gms/internal/ads/lJ;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->h:Lcom/google/android/gms/internal/ads/PJ;

    .line 35
    .line 36
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/VD;->j(Lcom/google/android/gms/internal/ads/kC;Lcom/google/android/gms/internal/ads/lJ;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->i:Lcom/google/android/gms/internal/ads/tB;

    .line 40
    .line 41
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/VD;->j(Lcom/google/android/gms/internal/ads/kC;Lcom/google/android/gms/internal/ads/lJ;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->j:Lcom/google/android/gms/internal/ads/cB;

    .line 45
    .line 46
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/VD;->j(Lcom/google/android/gms/internal/ads/kC;Lcom/google/android/gms/internal/ads/lJ;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final i(Lcom/google/android/gms/internal/ads/kC;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/VD;->b:Ljava/util/ArrayList;

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
    check-cast v1, Lcom/google/android/gms/internal/ads/lJ;

    .line 15
    .line 16
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/kC;->f(Lcom/google/android/gms/internal/ads/lJ;)V

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

.method public final zzc()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->k:Lcom/google/android/gms/internal/ads/kC;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/kC;->zzc()Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final zzd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->k:Lcom/google/android/gms/internal/ads/kC;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/kC;->zzd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/VD;->k:Lcom/google/android/gms/internal/ads/kC;

    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/VD;->k:Lcom/google/android/gms/internal/ads/kC;

    .line 14
    .line 15
    throw v0

    .line 16
    :cond_0
    return-void
.end method

.method public final zze()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VD;->k:Lcom/google/android/gms/internal/ads/kC;

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
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/kC;->zze()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    return-object v0
.end method
