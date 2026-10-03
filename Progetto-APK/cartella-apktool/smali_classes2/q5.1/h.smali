.class public final Lq5/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq5/k;


# static fields
.field public static final c:[Lq5/k;


# instance fields
.field public a:Ljava/util/Map;

.field public b:[Lq5/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lq5/k;

    .line 3
    .line 4
    sput-object v0, Lq5/h;->c:[Lq5/k;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lq5/h;->b:[Lq5/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_0

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-interface {v3}, Lq5/k;->a()V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method public final b(Lm2/l;)Lq5/m;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lq5/h;->e(Ljava/util/Map;)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lq5/h;->d(Lm2/l;)Lq5/m;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final c(Lm2/l;Ljava/util/Map;)Lq5/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lq5/h;->e(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lq5/h;->d(Lm2/l;)Lq5/m;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public final d(Lm2/l;)Lq5/m;
    .locals 5

    .line 1
    iget-object v0, p0, Lq5/h;->b:[Lq5/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_0

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    :try_start_0
    iget-object v4, p0, Lq5/h;->a:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v3, p1, v4}, Lq5/k;->c(Lm2/l;Ljava/util/Map;)Lq5/m;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_0
    .catch Lq5/l; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object p1

    .line 18
    :catch_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object p1, Lq5/i;->I:Lq5/i;

    .line 22
    .line 23
    throw p1
.end method

.method public final e(Ljava/util/Map;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lq5/h;->a:Ljava/util/Map;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object v2, Lq5/c;->J:Lq5/c;

    .line 8
    .line 9
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-nez p1, :cond_1

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    sget-object v3, Lq5/c;->I:Lq5/c;

    .line 23
    .line 24
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/util/Collection;

    .line 29
    .line 30
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    if-eqz v3, :cond_a

    .line 36
    .line 37
    sget-object v5, Lq5/a;->U:Lq5/a;

    .line 38
    .line 39
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-nez v5, :cond_2

    .line 44
    .line 45
    sget-object v5, Lq5/a;->V:Lq5/a;

    .line 46
    .line 47
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-nez v5, :cond_2

    .line 52
    .line 53
    sget-object v5, Lq5/a;->N:Lq5/a;

    .line 54
    .line 55
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-nez v5, :cond_2

    .line 60
    .line 61
    sget-object v5, Lq5/a;->M:Lq5/a;

    .line 62
    .line 63
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-nez v5, :cond_2

    .line 68
    .line 69
    sget-object v5, Lq5/a;->H:Lq5/a;

    .line 70
    .line 71
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-nez v5, :cond_2

    .line 76
    .line 77
    sget-object v5, Lq5/a;->I:Lq5/a;

    .line 78
    .line 79
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-nez v5, :cond_2

    .line 84
    .line 85
    sget-object v5, Lq5/a;->J:Lq5/a;

    .line 86
    .line 87
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-nez v5, :cond_2

    .line 92
    .line 93
    sget-object v5, Lq5/a;->K:Lq5/a;

    .line 94
    .line 95
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-nez v5, :cond_2

    .line 100
    .line 101
    sget-object v5, Lq5/a;->O:Lq5/a;

    .line 102
    .line 103
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-nez v5, :cond_2

    .line 108
    .line 109
    sget-object v5, Lq5/a;->S:Lq5/a;

    .line 110
    .line 111
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-nez v5, :cond_2

    .line 116
    .line 117
    sget-object v5, Lq5/a;->T:Lq5/a;

    .line 118
    .line 119
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eqz v5, :cond_3

    .line 124
    .line 125
    :cond_2
    const/4 v0, 0x1

    .line 126
    :cond_3
    if-eqz v0, :cond_4

    .line 127
    .line 128
    if-nez v2, :cond_4

    .line 129
    .line 130
    new-instance v1, LC5/h;

    .line 131
    .line 132
    invoke-direct {v1, p1}, LC5/h;-><init>(Ljava/util/Map;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    :cond_4
    sget-object v1, Lq5/a;->R:Lq5/a;

    .line 139
    .line 140
    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_5

    .line 145
    .line 146
    new-instance v1, LK5/a;

    .line 147
    .line 148
    invoke-direct {v1}, LK5/a;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    :cond_5
    sget-object v1, Lq5/a;->L:Lq5/a;

    .line 155
    .line 156
    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_6

    .line 161
    .line 162
    new-instance v1, Ly5/a;

    .line 163
    .line 164
    invoke-direct {v1}, Ly5/a;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    :cond_6
    sget-object v1, Lq5/a;->G:Lq5/a;

    .line 171
    .line 172
    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_7

    .line 177
    .line 178
    new-instance v1, Lr5/b;

    .line 179
    .line 180
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    :cond_7
    sget-object v1, Lq5/a;->Q:Lq5/a;

    .line 187
    .line 188
    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_8

    .line 193
    .line 194
    new-instance v1, LG5/b;

    .line 195
    .line 196
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    :cond_8
    sget-object v1, Lq5/a;->P:Lq5/a;

    .line 203
    .line 204
    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-eqz v1, :cond_9

    .line 209
    .line 210
    new-instance v1, LA5/a;

    .line 211
    .line 212
    invoke-direct {v1}, LA5/a;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    :cond_9
    if-eqz v0, :cond_a

    .line 219
    .line 220
    if-eqz v2, :cond_a

    .line 221
    .line 222
    new-instance v0, LC5/h;

    .line 223
    .line 224
    invoke-direct {v0, p1}, LC5/h;-><init>(Ljava/util/Map;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_c

    .line 235
    .line 236
    if-nez v2, :cond_b

    .line 237
    .line 238
    new-instance v0, LC5/h;

    .line 239
    .line 240
    invoke-direct {v0, p1}, LC5/h;-><init>(Ljava/util/Map;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    :cond_b
    new-instance v0, LK5/a;

    .line 247
    .line 248
    invoke-direct {v0}, LK5/a;-><init>()V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    new-instance v0, Ly5/a;

    .line 255
    .line 256
    invoke-direct {v0}, Ly5/a;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    new-instance v0, Lr5/b;

    .line 263
    .line 264
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    new-instance v0, LG5/b;

    .line 271
    .line 272
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    new-instance v0, LA5/a;

    .line 279
    .line 280
    invoke-direct {v0}, LA5/a;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    if-eqz v2, :cond_c

    .line 287
    .line 288
    new-instance v0, LC5/h;

    .line 289
    .line 290
    invoke-direct {v0, p1}, LC5/h;-><init>(Ljava/util/Map;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    :cond_c
    sget-object p1, Lq5/h;->c:[Lq5/k;

    .line 297
    .line 298
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    check-cast p1, [Lq5/k;

    .line 303
    .line 304
    iput-object p1, p0, Lq5/h;->b:[Lq5/k;

    .line 305
    .line 306
    return-void
.end method
