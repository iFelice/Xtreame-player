.class public final LR0/g;
.super LR0/o;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final K:I

.field public final L:Z

.field public final M:Ljava/lang/String;

.field public final N:LR0/k;

.field public final O:Z

.field public final P:I

.field public final Q:I

.field public final R:I

.field public final S:Z

.field public final T:Z

.field public final U:I

.field public final V:I

.field public final W:Z

.field public final X:I

.field public final Y:I

.field public final Z:I

.field public final a0:I

.field public final b0:Z

.field public final c0:Z

.field public final d0:Z


# direct methods
.method public constructor <init>(ILm0/g0;ILR0/k;IZLR0/f;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p3, p2}, LR0/o;-><init>(IILm0/g0;)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, LR0/g;->N:LR0/k;

    .line 5
    .line 6
    iget-boolean p1, p4, LR0/k;->O:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/16 p1, 0x18

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 p1, 0x10

    .line 14
    .line 15
    :goto_0
    const/4 p2, 0x1

    .line 16
    iget-boolean p3, p4, LR0/k;->K:Z

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    if-eqz p3, :cond_1

    .line 20
    .line 21
    and-int p3, p8, p1

    .line 22
    .line 23
    if-eqz p3, :cond_1

    .line 24
    .line 25
    const/4 p3, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 p3, 0x0

    .line 28
    :goto_1
    iput-boolean p3, p0, LR0/g;->S:Z

    .line 29
    .line 30
    iget-object p3, p0, LR0/o;->J:Lm0/t;

    .line 31
    .line 32
    iget-object p3, p3, Lm0/t;->d:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p3}, LR0/q;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    iput-object p3, p0, LR0/g;->M:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p5, v0}, LA0/O;->u(IZ)Z

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    iput-boolean p3, p0, LR0/g;->O:Z

    .line 45
    .line 46
    const/4 p3, 0x0

    .line 47
    :goto_2
    iget-object p8, p4, Lm0/k0;->p:Lz4/H;

    .line 48
    .line 49
    invoke-virtual {p8}, Ljava/util/AbstractCollection;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const v2, 0x7fffffff

    .line 54
    .line 55
    .line 56
    if-ge p3, v1, :cond_3

    .line 57
    .line 58
    iget-object v1, p0, LR0/o;->J:Lm0/t;

    .line 59
    .line 60
    invoke-interface {p8, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p8

    .line 64
    check-cast p8, Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v1, p8, v0}, LR0/q;->g(Lm0/t;Ljava/lang/String;Z)I

    .line 67
    .line 68
    .line 69
    move-result p8

    .line 70
    if-lez p8, :cond_2

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_2
    add-int/lit8 p3, p3, 0x1

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    const p3, 0x7fffffff

    .line 77
    .line 78
    .line 79
    const/4 p8, 0x0

    .line 80
    :goto_3
    iput p3, p0, LR0/g;->Q:I

    .line 81
    .line 82
    iput p8, p0, LR0/g;->P:I

    .line 83
    .line 84
    iget-object p3, p0, LR0/o;->J:Lm0/t;

    .line 85
    .line 86
    iget p3, p3, Lm0/t;->f:I

    .line 87
    .line 88
    iget p8, p4, Lm0/k0;->q:I

    .line 89
    .line 90
    invoke-static {p3, p8}, LR0/q;->c(II)I

    .line 91
    .line 92
    .line 93
    move-result p3

    .line 94
    iput p3, p0, LR0/g;->R:I

    .line 95
    .line 96
    iget-object p3, p0, LR0/o;->J:Lm0/t;

    .line 97
    .line 98
    iget p8, p3, Lm0/t;->f:I

    .line 99
    .line 100
    if-eqz p8, :cond_5

    .line 101
    .line 102
    and-int/2addr p8, p2

    .line 103
    if-eqz p8, :cond_4

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_4
    const/4 p8, 0x0

    .line 107
    goto :goto_5

    .line 108
    :cond_5
    :goto_4
    const/4 p8, 0x1

    .line 109
    :goto_5
    iput-boolean p8, p0, LR0/g;->T:Z

    .line 110
    .line 111
    iget p8, p3, Lm0/t;->e:I

    .line 112
    .line 113
    and-int/2addr p8, p2

    .line 114
    if-eqz p8, :cond_6

    .line 115
    .line 116
    const/4 p8, 0x1

    .line 117
    goto :goto_6

    .line 118
    :cond_6
    const/4 p8, 0x0

    .line 119
    :goto_6
    iput-boolean p8, p0, LR0/g;->W:Z

    .line 120
    .line 121
    invoke-static {p3}, LR0/q;->e(Lm0/t;)Z

    .line 122
    .line 123
    .line 124
    move-result p3

    .line 125
    iput-boolean p3, p0, LR0/g;->d0:Z

    .line 126
    .line 127
    iget-object p3, p0, LR0/o;->J:Lm0/t;

    .line 128
    .line 129
    iget p8, p3, Lm0/t;->G:I

    .line 130
    .line 131
    iput p8, p0, LR0/g;->X:I

    .line 132
    .line 133
    iget v1, p3, Lm0/t;->H:I

    .line 134
    .line 135
    iput v1, p0, LR0/g;->Y:I

    .line 136
    .line 137
    iget v1, p3, Lm0/t;->j:I

    .line 138
    .line 139
    iput v1, p0, LR0/g;->Z:I

    .line 140
    .line 141
    const/4 v3, -0x1

    .line 142
    if-eq v1, v3, :cond_7

    .line 143
    .line 144
    iget v4, p4, Lm0/k0;->s:I

    .line 145
    .line 146
    if-gt v1, v4, :cond_9

    .line 147
    .line 148
    :cond_7
    if-eq p8, v3, :cond_8

    .line 149
    .line 150
    iget v1, p4, Lm0/k0;->r:I

    .line 151
    .line 152
    if-gt p8, v1, :cond_9

    .line 153
    .line 154
    :cond_8
    invoke-virtual {p7, p3}, LR0/f;->apply(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result p3

    .line 158
    if-eqz p3, :cond_9

    .line 159
    .line 160
    const/4 p3, 0x1

    .line 161
    goto :goto_7

    .line 162
    :cond_9
    const/4 p3, 0x0

    .line 163
    :goto_7
    iput-boolean p3, p0, LR0/g;->L:Z

    .line 164
    .line 165
    invoke-static {}, Lp0/M;->E()[Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p3

    .line 169
    const/4 p7, 0x0

    .line 170
    :goto_8
    array-length p8, p3

    .line 171
    if-ge p7, p8, :cond_b

    .line 172
    .line 173
    iget-object p8, p0, LR0/o;->J:Lm0/t;

    .line 174
    .line 175
    aget-object v1, p3, p7

    .line 176
    .line 177
    invoke-static {p8, v1, v0}, LR0/q;->g(Lm0/t;Ljava/lang/String;Z)I

    .line 178
    .line 179
    .line 180
    move-result p8

    .line 181
    if-lez p8, :cond_a

    .line 182
    .line 183
    goto :goto_9

    .line 184
    :cond_a
    add-int/lit8 p7, p7, 0x1

    .line 185
    .line 186
    goto :goto_8

    .line 187
    :cond_b
    const p7, 0x7fffffff

    .line 188
    .line 189
    .line 190
    const/4 p8, 0x0

    .line 191
    :goto_9
    iput p7, p0, LR0/g;->U:I

    .line 192
    .line 193
    iput p8, p0, LR0/g;->V:I

    .line 194
    .line 195
    const/4 p3, 0x0

    .line 196
    :goto_a
    iget-object p7, p4, Lm0/k0;->t:Lz4/H;

    .line 197
    .line 198
    invoke-virtual {p7}, Ljava/util/AbstractCollection;->size()I

    .line 199
    .line 200
    .line 201
    move-result p8

    .line 202
    if-ge p3, p8, :cond_d

    .line 203
    .line 204
    iget-object p8, p0, LR0/o;->J:Lm0/t;

    .line 205
    .line 206
    iget-object p8, p8, Lm0/t;->o:Ljava/lang/String;

    .line 207
    .line 208
    if-eqz p8, :cond_c

    .line 209
    .line 210
    invoke-interface {p7, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object p7

    .line 214
    invoke-virtual {p8, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result p7

    .line 218
    if-eqz p7, :cond_c

    .line 219
    .line 220
    move v2, p3

    .line 221
    goto :goto_b

    .line 222
    :cond_c
    add-int/lit8 p3, p3, 0x1

    .line 223
    .line 224
    goto :goto_a

    .line 225
    :cond_d
    :goto_b
    iput v2, p0, LR0/g;->a0:I

    .line 226
    .line 227
    invoke-static {p5}, LA0/O;->p(I)I

    .line 228
    .line 229
    .line 230
    move-result p3

    .line 231
    const/16 p4, 0x80

    .line 232
    .line 233
    if-ne p3, p4, :cond_e

    .line 234
    .line 235
    const/4 p3, 0x1

    .line 236
    goto :goto_c

    .line 237
    :cond_e
    const/4 p3, 0x0

    .line 238
    :goto_c
    iput-boolean p3, p0, LR0/g;->b0:Z

    .line 239
    .line 240
    invoke-static {p5}, LA0/O;->q(I)I

    .line 241
    .line 242
    .line 243
    move-result p3

    .line 244
    const/16 p4, 0x40

    .line 245
    .line 246
    if-ne p3, p4, :cond_f

    .line 247
    .line 248
    const/4 p3, 0x1

    .line 249
    goto :goto_d

    .line 250
    :cond_f
    const/4 p3, 0x0

    .line 251
    :goto_d
    iput-boolean p3, p0, LR0/g;->c0:Z

    .line 252
    .line 253
    iget-object p3, p0, LR0/g;->N:LR0/k;

    .line 254
    .line 255
    iget-boolean p4, p3, LR0/k;->Q:Z

    .line 256
    .line 257
    invoke-static {p5, p4}, LA0/O;->u(IZ)Z

    .line 258
    .line 259
    .line 260
    move-result p4

    .line 261
    if-nez p4, :cond_10

    .line 262
    .line 263
    goto :goto_e

    .line 264
    :cond_10
    iget-boolean p4, p0, LR0/g;->L:Z

    .line 265
    .line 266
    if-nez p4, :cond_11

    .line 267
    .line 268
    iget-boolean p7, p3, LR0/k;->J:Z

    .line 269
    .line 270
    if-nez p7, :cond_11

    .line 271
    .line 272
    goto :goto_e

    .line 273
    :cond_11
    iget-object p7, p3, Lm0/k0;->u:Lm0/i0;

    .line 274
    .line 275
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    invoke-static {p5, v0}, LA0/O;->u(IZ)Z

    .line 279
    .line 280
    .line 281
    move-result p7

    .line 282
    if-eqz p7, :cond_13

    .line 283
    .line 284
    if-eqz p4, :cond_13

    .line 285
    .line 286
    iget-object p4, p0, LR0/o;->J:Lm0/t;

    .line 287
    .line 288
    iget p4, p4, Lm0/t;->j:I

    .line 289
    .line 290
    if-eq p4, v3, :cond_13

    .line 291
    .line 292
    iget-boolean p4, p3, Lm0/k0;->C:Z

    .line 293
    .line 294
    if-nez p4, :cond_13

    .line 295
    .line 296
    iget-boolean p4, p3, Lm0/k0;->B:Z

    .line 297
    .line 298
    if-nez p4, :cond_13

    .line 299
    .line 300
    iget-boolean p3, p3, LR0/k;->S:Z

    .line 301
    .line 302
    if-nez p3, :cond_12

    .line 303
    .line 304
    if-nez p6, :cond_13

    .line 305
    .line 306
    :cond_12
    and-int/2addr p1, p5

    .line 307
    if-eqz p1, :cond_13

    .line 308
    .line 309
    const/4 p2, 0x2

    .line 310
    :cond_13
    move v0, p2

    .line 311
    :goto_e
    iput v0, p0, LR0/g;->K:I

    .line 312
    .line 313
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LR0/g;->K:I

    .line 2
    .line 3
    return v0
.end method

.method public final b(LR0/o;)Z
    .locals 6

    .line 1
    check-cast p1, LR0/g;

    .line 2
    .line 3
    iget-object v0, p0, LR0/g;->N:LR0/k;

    .line 4
    .line 5
    iget-boolean v1, v0, LR0/k;->M:Z

    .line 6
    .line 7
    iget-object v2, p1, LR0/o;->J:Lm0/t;

    .line 8
    .line 9
    const/4 v3, -0x1

    .line 10
    iget-object v4, p0, LR0/o;->J:Lm0/t;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget v1, v4, Lm0/t;->G:I

    .line 15
    .line 16
    if-eq v1, v3, :cond_3

    .line 17
    .line 18
    iget v5, v2, Lm0/t;->G:I

    .line 19
    .line 20
    if-ne v1, v5, :cond_3

    .line 21
    .line 22
    :cond_0
    iget-boolean v1, p0, LR0/g;->S:Z

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    iget-object v1, v4, Lm0/t;->o:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    iget-object v5, v2, Lm0/t;->o:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    :cond_1
    iget-boolean v1, v0, LR0/k;->L:Z

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    iget v1, v4, Lm0/t;->H:I

    .line 43
    .line 44
    if-eq v1, v3, :cond_3

    .line 45
    .line 46
    iget v2, v2, Lm0/t;->H:I

    .line 47
    .line 48
    if-ne v1, v2, :cond_3

    .line 49
    .line 50
    :cond_2
    iget-boolean v0, v0, LR0/k;->N:Z

    .line 51
    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    iget-boolean v0, p1, LR0/g;->b0:Z

    .line 55
    .line 56
    iget-boolean v1, p0, LR0/g;->b0:Z

    .line 57
    .line 58
    if-ne v1, v0, :cond_3

    .line 59
    .line 60
    iget-boolean v0, p0, LR0/g;->c0:Z

    .line 61
    .line 62
    iget-boolean p1, p1, LR0/g;->c0:Z

    .line 63
    .line 64
    if-ne v0, p1, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const/4 p1, 0x0

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    :goto_0
    const/4 p1, 0x1

    .line 70
    :goto_1
    return p1
.end method

.method public final c(LR0/g;)I
    .locals 7

    .line 1
    iget-boolean v0, p0, LR0/g;->O:Z

    .line 2
    .line 3
    iget-boolean v1, p0, LR0/g;->L:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v2, LR0/q;->k:Lz4/c0;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v2, LR0/q;->k:Lz4/c0;

    .line 13
    .line 14
    invoke-virtual {v2}, Lz4/c0;->a()Lz4/c0;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :goto_0
    sget-object v3, Lz4/x;->a:Lz4/v;

    .line 19
    .line 20
    iget-boolean v4, p1, LR0/g;->O:Z

    .line 21
    .line 22
    invoke-virtual {v3, v0, v4}, Lz4/v;->c(ZZ)Lz4/x;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget v3, p0, LR0/g;->Q:I

    .line 27
    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    iget v4, p1, LR0/g;->Q:I

    .line 33
    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    sget-object v5, Lz4/b0;->G:Lz4/b0;

    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    sget-object v5, Lz4/k0;->G:Lz4/k0;

    .line 44
    .line 45
    invoke-virtual {v0, v3, v4, v5}, Lz4/x;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lz4/x;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget v3, p0, LR0/g;->P:I

    .line 50
    .line 51
    iget v4, p1, LR0/g;->P:I

    .line 52
    .line 53
    invoke-virtual {v0, v3, v4}, Lz4/x;->a(II)Lz4/x;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget v3, p0, LR0/g;->R:I

    .line 58
    .line 59
    iget v4, p1, LR0/g;->R:I

    .line 60
    .line 61
    invoke-virtual {v0, v3, v4}, Lz4/x;->a(II)Lz4/x;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-boolean v3, p0, LR0/g;->W:Z

    .line 66
    .line 67
    iget-boolean v4, p1, LR0/g;->W:Z

    .line 68
    .line 69
    invoke-virtual {v0, v3, v4}, Lz4/x;->c(ZZ)Lz4/x;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-boolean v3, p0, LR0/g;->T:Z

    .line 74
    .line 75
    iget-boolean v4, p1, LR0/g;->T:Z

    .line 76
    .line 77
    invoke-virtual {v0, v3, v4}, Lz4/x;->c(ZZ)Lz4/x;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget v3, p0, LR0/g;->U:I

    .line 82
    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    iget v4, p1, LR0/g;->U:I

    .line 88
    .line 89
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v0, v3, v4, v5}, Lz4/x;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lz4/x;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget v3, p0, LR0/g;->V:I

    .line 98
    .line 99
    iget v4, p1, LR0/g;->V:I

    .line 100
    .line 101
    invoke-virtual {v0, v3, v4}, Lz4/x;->a(II)Lz4/x;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-boolean v3, p1, LR0/g;->L:Z

    .line 106
    .line 107
    invoke-virtual {v0, v1, v3}, Lz4/x;->c(ZZ)Lz4/x;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget v1, p0, LR0/g;->a0:I

    .line 112
    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    iget v3, p1, LR0/g;->a0:I

    .line 118
    .line 119
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v0, v1, v3, v5}, Lz4/x;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lz4/x;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget-object v1, p0, LR0/g;->N:LR0/k;

    .line 128
    .line 129
    iget-boolean v1, v1, Lm0/k0;->B:Z

    .line 130
    .line 131
    iget v3, p0, LR0/g;->Z:I

    .line 132
    .line 133
    iget v4, p1, LR0/g;->Z:I

    .line 134
    .line 135
    if-eqz v1, :cond_1

    .line 136
    .line 137
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    sget-object v6, LR0/q;->k:Lz4/c0;

    .line 146
    .line 147
    invoke-virtual {v6}, Lz4/c0;->a()Lz4/c0;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    invoke-virtual {v0, v1, v5, v6}, Lz4/x;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lz4/x;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    :cond_1
    iget-boolean v1, p0, LR0/g;->b0:Z

    .line 156
    .line 157
    iget-boolean v5, p1, LR0/g;->b0:Z

    .line 158
    .line 159
    invoke-virtual {v0, v1, v5}, Lz4/x;->c(ZZ)Lz4/x;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iget-boolean v1, p0, LR0/g;->c0:Z

    .line 164
    .line 165
    iget-boolean v5, p1, LR0/g;->c0:Z

    .line 166
    .line 167
    invoke-virtual {v0, v1, v5}, Lz4/x;->c(ZZ)Lz4/x;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iget-boolean v1, p0, LR0/g;->d0:Z

    .line 172
    .line 173
    iget-boolean v5, p1, LR0/g;->d0:Z

    .line 174
    .line 175
    invoke-virtual {v0, v1, v5}, Lz4/x;->c(ZZ)Lz4/x;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iget v1, p0, LR0/g;->X:I

    .line 180
    .line 181
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    iget v5, p1, LR0/g;->X:I

    .line 186
    .line 187
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    invoke-virtual {v0, v1, v5, v2}, Lz4/x;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lz4/x;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iget v1, p0, LR0/g;->Y:I

    .line 196
    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    iget v5, p1, LR0/g;->Y:I

    .line 202
    .line 203
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    invoke-virtual {v0, v1, v5, v2}, Lz4/x;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lz4/x;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    iget-object v1, p0, LR0/g;->M:Ljava/lang/String;

    .line 212
    .line 213
    iget-object p1, p1, LR0/g;->M:Ljava/lang/String;

    .line 214
    .line 215
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-eqz p1, :cond_2

    .line 220
    .line 221
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v0, p1, v1, v2}, Lz4/x;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lz4/x;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    :cond_2
    invoke-virtual {v0}, Lz4/x;->e()I

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, LR0/g;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, LR0/g;->c(LR0/g;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
