.class public final LO0/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO0/w;
.implements LW0/u;
.implements LS0/h;
.implements LS0/k;
.implements LO0/S;


# static fields
.field public static final x0:Ljava/util/Map;

.field public static final y0:Lm0/t;


# instance fields
.field public final G:Landroid/net/Uri;

.field public final H:Ls0/i;

.field public final I:LG0/r;

.field public final J:LU4/b;

.field public final K:LO0/D;

.field public final L:LG0/o;

.field public final M:LO0/N;

.field public final N:LS0/d;

.field public final O:Ljava/lang/String;

.field public final P:J

.field public final Q:I

.field public final R:Lm0/t;

.field public final S:J

.field public final T:LS0/m;

.field public final U:Lm2/u;

.field public final V:Lp0/i;

.field public final W:LO0/F;

.field public final X:LO0/F;

.field public final Y:Landroid/os/Handler;

.field public Z:LO0/v;

.field public a0:Lh1/b;

.field public b0:[LO0/T;

.field public c0:[LO0/J;

.field public d0:Z

.field public e0:Z

.field public f0:Z

.field public g0:Z

.field public h0:LO0/K;

.field public i0:LW0/F;

.field public j0:J

.field public k0:Z

.field public l0:I

.field public m0:Z

.field public n0:Z

.field public o0:Z

.field public p0:I

.field public q0:Z

.field public r0:J

.field public s0:J

.field public t0:Z

.field public u0:I

.field public v0:Z

.field public w0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Icy-MetaData"

    .line 7
    .line 8
    const-string v2, "1"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, LO0/L;->x0:Ljava/util/Map;

    .line 18
    .line 19
    new-instance v0, Lm0/s;

    .line 20
    .line 21
    invoke-direct {v0}, Lm0/s;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v1, "icy"

    .line 25
    .line 26
    iput-object v1, v0, Lm0/s;->a:Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, "application/x-icy"

    .line 29
    .line 30
    invoke-static {v1}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, v0, Lm0/s;->n:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0}, Lm0/s;->a()Lm0/t;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, LO0/L;->y0:Lm0/t;

    .line 41
    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ls0/i;Lm2/u;LG0/r;LG0/o;LU4/b;LO0/D;LO0/N;LS0/d;Ljava/lang/String;IILm0/t;JLT0/a;)V
    .locals 4

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p16

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    move-object v2, p1

    .line 8
    iput-object v2, v0, LO0/L;->G:Landroid/net/Uri;

    .line 9
    .line 10
    move-object v2, p2

    .line 11
    iput-object v2, v0, LO0/L;->H:Ls0/i;

    .line 12
    .line 13
    move-object v2, p4

    .line 14
    iput-object v2, v0, LO0/L;->I:LG0/r;

    .line 15
    .line 16
    move-object v2, p5

    .line 17
    iput-object v2, v0, LO0/L;->L:LG0/o;

    .line 18
    .line 19
    move-object v2, p6

    .line 20
    iput-object v2, v0, LO0/L;->J:LU4/b;

    .line 21
    .line 22
    move-object v2, p7

    .line 23
    iput-object v2, v0, LO0/L;->K:LO0/D;

    .line 24
    .line 25
    move-object v2, p8

    .line 26
    iput-object v2, v0, LO0/L;->M:LO0/N;

    .line 27
    .line 28
    move-object v2, p9

    .line 29
    iput-object v2, v0, LO0/L;->N:LS0/d;

    .line 30
    .line 31
    move-object v2, p10

    .line 32
    iput-object v2, v0, LO0/L;->O:Ljava/lang/String;

    .line 33
    .line 34
    move v2, p11

    .line 35
    int-to-long v2, v2

    .line 36
    iput-wide v2, v0, LO0/L;->P:J

    .line 37
    .line 38
    move/from16 v2, p12

    .line 39
    .line 40
    iput v2, v0, LO0/L;->Q:I

    .line 41
    .line 42
    move-object/from16 v2, p13

    .line 43
    .line 44
    iput-object v2, v0, LO0/L;->R:Lm0/t;

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    new-instance v2, LS0/m;

    .line 49
    .line 50
    invoke-direct {v2, v1}, LS0/m;-><init>(LT0/a;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance v2, LS0/m;

    .line 55
    .line 56
    const-string v1, "ProgressiveMediaPeriod"

    .line 57
    .line 58
    invoke-direct {v2, v1}, LS0/m;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    iput-object v2, v0, LO0/L;->T:LS0/m;

    .line 62
    .line 63
    move-object v1, p3

    .line 64
    iput-object v1, v0, LO0/L;->U:Lm2/u;

    .line 65
    .line 66
    move-wide/from16 v1, p14

    .line 67
    .line 68
    iput-wide v1, v0, LO0/L;->S:J

    .line 69
    .line 70
    new-instance v1, Lp0/i;

    .line 71
    .line 72
    invoke-direct {v1}, Lp0/i;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v1, v0, LO0/L;->V:Lp0/i;

    .line 76
    .line 77
    new-instance v1, LO0/F;

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    invoke-direct {v1, p0, v2}, LO0/F;-><init>(LO0/L;I)V

    .line 81
    .line 82
    .line 83
    iput-object v1, v0, LO0/L;->W:LO0/F;

    .line 84
    .line 85
    new-instance v1, LO0/F;

    .line 86
    .line 87
    const/4 v3, 0x1

    .line 88
    invoke-direct {v1, p0, v3}, LO0/F;-><init>(LO0/L;I)V

    .line 89
    .line 90
    .line 91
    iput-object v1, v0, LO0/L;->X:LO0/F;

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    invoke-static {v1}, Lp0/M;->n(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iput-object v1, v0, LO0/L;->Y:Landroid/os/Handler;

    .line 99
    .line 100
    new-array v1, v2, [LO0/J;

    .line 101
    .line 102
    iput-object v1, v0, LO0/L;->c0:[LO0/J;

    .line 103
    .line 104
    new-array v1, v2, [LO0/T;

    .line 105
    .line 106
    iput-object v1, v0, LO0/L;->b0:[LO0/T;

    .line 107
    .line 108
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    iput-wide v1, v0, LO0/L;->s0:J

    .line 114
    .line 115
    iput v3, v0, LO0/L;->l0:I

    .line 116
    .line 117
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 15

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-boolean v2, p0, LO0/L;->w0:Z

    .line 4
    .line 5
    if-nez v2, :cond_c

    .line 6
    .line 7
    iget-boolean v2, p0, LO0/L;->e0:Z

    .line 8
    .line 9
    if-nez v2, :cond_c

    .line 10
    .line 11
    iget-boolean v2, p0, LO0/L;->d0:Z

    .line 12
    .line 13
    if-eqz v2, :cond_c

    .line 14
    .line 15
    iget-object v2, p0, LO0/L;->i0:LW0/F;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto/16 :goto_6

    .line 20
    .line 21
    :cond_0
    iget-object v2, p0, LO0/L;->b0:[LO0/T;

    .line 22
    .line 23
    array-length v3, v2

    .line 24
    const/4 v4, 0x0

    .line 25
    :goto_0
    if-ge v4, v3, :cond_2

    .line 26
    .line 27
    aget-object v5, v2, v4

    .line 28
    .line 29
    invoke-virtual {v5}, LO0/T;->w()Lm0/t;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    if-nez v5, :cond_1

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    add-int/2addr v4, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object v2, p0, LO0/L;->V:Lp0/i;

    .line 39
    .line 40
    invoke-virtual {v2}, Lp0/i;->e()V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, LO0/L;->b0:[LO0/T;

    .line 44
    .line 45
    array-length v2, v2

    .line 46
    new-array v3, v2, [Lm0/g0;

    .line 47
    .line 48
    new-array v4, v2, [Z

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    :goto_1
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    iget-wide v8, p0, LO0/L;->S:J

    .line 57
    .line 58
    if-ge v5, v2, :cond_a

    .line 59
    .line 60
    iget-object v10, p0, LO0/L;->b0:[LO0/T;

    .line 61
    .line 62
    aget-object v10, v10, v5

    .line 63
    .line 64
    invoke-virtual {v10}, LO0/T;->w()Lm0/t;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-object v11, v10, Lm0/t;->o:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v11}, Lm0/O;->k(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v12

    .line 77
    if-nez v12, :cond_4

    .line 78
    .line 79
    invoke-static {v11}, Lm0/O;->o(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v13

    .line 83
    if-eqz v13, :cond_3

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    const/4 v13, 0x0

    .line 87
    goto :goto_3

    .line 88
    :cond_4
    :goto_2
    const/4 v13, 0x1

    .line 89
    :goto_3
    aput-boolean v13, v4, v5

    .line 90
    .line 91
    iget-boolean v14, p0, LO0/L;->f0:Z

    .line 92
    .line 93
    or-int/2addr v13, v14

    .line 94
    iput-boolean v13, p0, LO0/L;->f0:Z

    .line 95
    .line 96
    invoke-static {v11}, Lm0/O;->m(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    cmp-long v13, v8, v6

    .line 101
    .line 102
    if-eqz v13, :cond_5

    .line 103
    .line 104
    if-ne v2, v1, :cond_5

    .line 105
    .line 106
    if-eqz v11, :cond_5

    .line 107
    .line 108
    const/4 v6, 0x1

    .line 109
    goto :goto_4

    .line 110
    :cond_5
    const/4 v6, 0x0

    .line 111
    :goto_4
    iput-boolean v6, p0, LO0/L;->g0:Z

    .line 112
    .line 113
    iget-object v6, p0, LO0/L;->a0:Lh1/b;

    .line 114
    .line 115
    if-eqz v6, :cond_9

    .line 116
    .line 117
    if-nez v12, :cond_6

    .line 118
    .line 119
    iget-object v7, p0, LO0/L;->c0:[LO0/J;

    .line 120
    .line 121
    aget-object v7, v7, v5

    .line 122
    .line 123
    iget-boolean v7, v7, LO0/J;->b:Z

    .line 124
    .line 125
    if-eqz v7, :cond_8

    .line 126
    .line 127
    :cond_6
    iget-object v7, v10, Lm0/t;->l:Lm0/N;

    .line 128
    .line 129
    if-nez v7, :cond_7

    .line 130
    .line 131
    new-instance v7, Lm0/N;

    .line 132
    .line 133
    new-array v8, v1, [Lm0/M;

    .line 134
    .line 135
    aput-object v6, v8, v0

    .line 136
    .line 137
    invoke-direct {v7, v8}, Lm0/N;-><init>([Lm0/M;)V

    .line 138
    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_7
    new-array v8, v1, [Lm0/M;

    .line 142
    .line 143
    aput-object v6, v8, v0

    .line 144
    .line 145
    invoke-virtual {v7, v8}, Lm0/N;->a([Lm0/M;)Lm0/N;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    :goto_5
    invoke-virtual {v10}, Lm0/t;->a()Lm0/s;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    iput-object v7, v8, Lm0/s;->k:Lm0/N;

    .line 154
    .line 155
    new-instance v10, Lm0/t;

    .line 156
    .line 157
    invoke-direct {v10, v8}, Lm0/t;-><init>(Lm0/s;)V

    .line 158
    .line 159
    .line 160
    :cond_8
    if-eqz v12, :cond_9

    .line 161
    .line 162
    iget v7, v10, Lm0/t;->h:I

    .line 163
    .line 164
    const/4 v8, -0x1

    .line 165
    if-ne v7, v8, :cond_9

    .line 166
    .line 167
    iget v7, v10, Lm0/t;->i:I

    .line 168
    .line 169
    if-ne v7, v8, :cond_9

    .line 170
    .line 171
    iget v6, v6, Lh1/b;->a:I

    .line 172
    .line 173
    if-eq v6, v8, :cond_9

    .line 174
    .line 175
    invoke-virtual {v10}, Lm0/t;->a()Lm0/s;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    iput v6, v7, Lm0/s;->h:I

    .line 180
    .line 181
    new-instance v10, Lm0/t;

    .line 182
    .line 183
    invoke-direct {v10, v7}, Lm0/t;-><init>(Lm0/s;)V

    .line 184
    .line 185
    .line 186
    :cond_9
    iget-object v6, p0, LO0/L;->I:LG0/r;

    .line 187
    .line 188
    invoke-interface {v6, v10}, LG0/r;->m(Lm0/t;)I

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    invoke-virtual {v10}, Lm0/t;->a()Lm0/s;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    iput v6, v7, Lm0/s;->O:I

    .line 197
    .line 198
    invoke-virtual {v7}, Lm0/s;->a()Lm0/t;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    new-instance v7, Lm0/g0;

    .line 203
    .line 204
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    new-array v9, v1, [Lm0/t;

    .line 209
    .line 210
    aput-object v6, v9, v0

    .line 211
    .line 212
    invoke-direct {v7, v8, v9}, Lm0/g0;-><init>(Ljava/lang/String;[Lm0/t;)V

    .line 213
    .line 214
    .line 215
    aput-object v7, v3, v5

    .line 216
    .line 217
    iget-boolean v7, p0, LO0/L;->o0:Z

    .line 218
    .line 219
    iget-boolean v6, v6, Lm0/t;->u:Z

    .line 220
    .line 221
    or-int/2addr v6, v7

    .line 222
    iput-boolean v6, p0, LO0/L;->o0:Z

    .line 223
    .line 224
    add-int/2addr v5, v1

    .line 225
    goto/16 :goto_1

    .line 226
    .line 227
    :cond_a
    new-instance v0, LO0/K;

    .line 228
    .line 229
    new-instance v2, LO0/Z;

    .line 230
    .line 231
    invoke-direct {v2, v3}, LO0/Z;-><init>([Lm0/g0;)V

    .line 232
    .line 233
    .line 234
    invoke-direct {v0, v2, v4}, LO0/K;-><init>(LO0/Z;[Z)V

    .line 235
    .line 236
    .line 237
    iput-object v0, p0, LO0/L;->h0:LO0/K;

    .line 238
    .line 239
    iget-boolean v0, p0, LO0/L;->g0:Z

    .line 240
    .line 241
    if-eqz v0, :cond_b

    .line 242
    .line 243
    iget-wide v2, p0, LO0/L;->j0:J

    .line 244
    .line 245
    cmp-long v0, v2, v6

    .line 246
    .line 247
    if-nez v0, :cond_b

    .line 248
    .line 249
    iput-wide v8, p0, LO0/L;->j0:J

    .line 250
    .line 251
    new-instance v0, LO0/G;

    .line 252
    .line 253
    iget-object v2, p0, LO0/L;->i0:LW0/F;

    .line 254
    .line 255
    invoke-direct {v0, p0, v2}, LO0/G;-><init>(LO0/L;LW0/F;)V

    .line 256
    .line 257
    .line 258
    iput-object v0, p0, LO0/L;->i0:LW0/F;

    .line 259
    .line 260
    :cond_b
    iget-wide v2, p0, LO0/L;->j0:J

    .line 261
    .line 262
    iget-object v0, p0, LO0/L;->i0:LW0/F;

    .line 263
    .line 264
    iget-boolean v4, p0, LO0/L;->k0:Z

    .line 265
    .line 266
    iget-object v5, p0, LO0/L;->M:LO0/N;

    .line 267
    .line 268
    invoke-virtual {v5, v2, v3, v0, v4}, LO0/N;->u(JLW0/F;Z)V

    .line 269
    .line 270
    .line 271
    iput-boolean v1, p0, LO0/L;->e0:Z

    .line 272
    .line 273
    iget-object v0, p0, LO0/L;->Z:LO0/v;

    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    invoke-interface {v0, p0}, LO0/v;->t(LO0/w;)V

    .line 279
    .line 280
    .line 281
    :cond_c
    :goto_6
    return-void
.end method

.method public final B(I)V
    .locals 10

    .line 1
    invoke-virtual {p0}, LO0/L;->f()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LO0/L;->h0:LO0/K;

    .line 5
    .line 6
    iget-object v1, v0, LO0/K;->d:[Z

    .line 7
    .line 8
    aget-boolean v2, v1, p1

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, LO0/K;->a:LO0/Z;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, LO0/Z;->a(I)Lm0/g0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Lm0/g0;->d:[Lm0/t;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    aget-object v5, v0, v2

    .line 22
    .line 23
    iget-object v0, v5, Lm0/t;->o:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0}, Lm0/O;->i(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v7, 0x0

    .line 30
    iget-wide v8, p0, LO0/L;->r0:J

    .line 31
    .line 32
    iget-object v3, p0, LO0/L;->K:LO0/D;

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    invoke-virtual/range {v3 .. v9}, LO0/D;->b(ILm0/t;ILjava/lang/Object;J)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    aput-boolean v0, v1, p1

    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public final C(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, LO0/L;->f()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, LO0/L;->t0:Z

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-boolean v0, p0, LO0/L;->f0:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, LO0/L;->h0:LO0/K;

    .line 13
    .line 14
    iget-object v0, v0, LO0/K;->b:[Z

    .line 15
    .line 16
    aget-boolean v0, v0, p1

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, LO0/L;->b0:[LO0/T;

    .line 21
    .line 22
    aget-object p1, v0, p1

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, LO0/T;->y(Z)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const-wide/16 v1, 0x0

    .line 33
    .line 34
    iput-wide v1, p0, LO0/L;->s0:J

    .line 35
    .line 36
    iput-boolean v0, p0, LO0/L;->t0:Z

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, LO0/L;->n0:Z

    .line 40
    .line 41
    iput-wide v1, p0, LO0/L;->r0:J

    .line 42
    .line 43
    iput v0, p0, LO0/L;->u0:I

    .line 44
    .line 45
    iget-object p1, p0, LO0/L;->b0:[LO0/T;

    .line 46
    .line 47
    array-length v1, p1

    .line 48
    const/4 v2, 0x0

    .line 49
    :goto_0
    if-ge v2, v1, :cond_2

    .line 50
    .line 51
    aget-object v3, p1, v2

    .line 52
    .line 53
    invoke-virtual {v3, v0}, LO0/T;->E(Z)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget-object p1, p0, LO0/L;->Z:LO0/v;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, p0}, LO0/V;->r(LO0/W;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_1
    return-void
.end method

.method public final D(LO0/J;)LW0/L;
    .locals 5

    .line 1
    iget-object v0, p0, LO0/L;->b0:[LO0/T;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, LO0/L;->c0:[LO0/J;

    .line 8
    .line 9
    aget-object v2, v2, v1

    .line 10
    .line 11
    invoke-virtual {p1, v2}, LO0/J;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, LO0/L;->b0:[LO0/T;

    .line 18
    .line 19
    aget-object p1, p1, v1

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-boolean v1, p0, LO0/L;->d0:Z

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "Extractor added new track (id="

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget p1, p1, LO0/J;->a:I

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, ") after finishing tracks."

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v0, "ProgressiveMediaPeriod"

    .line 51
    .line 52
    invoke-static {v0, p1}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance p1, LW0/q;

    .line 56
    .line 57
    invoke-direct {p1}, LW0/q;-><init>()V

    .line 58
    .line 59
    .line 60
    return-object p1

    .line 61
    :cond_2
    new-instance v1, LO0/T;

    .line 62
    .line 63
    iget-object v2, p0, LO0/L;->I:LG0/r;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    iget-object v3, p0, LO0/L;->L:LG0/o;

    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    iget-object v4, p0, LO0/L;->N:LS0/d;

    .line 74
    .line 75
    invoke-direct {v1, v4, v2, v3}, LO0/T;-><init>(LS0/d;LG0/r;LG0/o;)V

    .line 76
    .line 77
    .line 78
    iput-object p0, v1, LO0/T;->f:LO0/S;

    .line 79
    .line 80
    iget-object v2, p0, LO0/L;->c0:[LO0/J;

    .line 81
    .line 82
    add-int/lit8 v3, v0, 0x1

    .line 83
    .line 84
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, [LO0/J;

    .line 89
    .line 90
    aput-object p1, v2, v0

    .line 91
    .line 92
    sget-object p1, Lp0/M;->a:Ljava/lang/String;

    .line 93
    .line 94
    iput-object v2, p0, LO0/L;->c0:[LO0/J;

    .line 95
    .line 96
    iget-object p1, p0, LO0/L;->b0:[LO0/T;

    .line 97
    .line 98
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, [LO0/T;

    .line 103
    .line 104
    aput-object v1, p1, v0

    .line 105
    .line 106
    iput-object p1, p0, LO0/L;->b0:[LO0/T;

    .line 107
    .line 108
    return-object v1
.end method

.method public final E(LW0/F;)V
    .locals 6

    .line 1
    iget-object v0, p0, LO0/L;->a0:Lh1/b;

    .line 2
    .line 3
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    move-object v0, p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, LW0/x;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, LW0/x;-><init>(J)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iput-object v0, p0, LO0/L;->i0:LW0/F;

    .line 18
    .line 19
    invoke-interface {p1}, LW0/F;->m()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    iput-wide v3, p0, LO0/L;->j0:J

    .line 24
    .line 25
    iget-boolean v0, p0, LO0/L;->q0:Z

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-interface {p1}, LW0/F;->m()J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    cmp-long v0, v4, v1

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    :goto_1
    iput-boolean v0, p0, LO0/L;->k0:Z

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    const/4 v3, 0x7

    .line 46
    :cond_2
    iput v3, p0, LO0/L;->l0:I

    .line 47
    .line 48
    iget-boolean v1, p0, LO0/L;->e0:Z

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    iget-object v1, p0, LO0/L;->M:LO0/N;

    .line 53
    .line 54
    iget-wide v2, p0, LO0/L;->j0:J

    .line 55
    .line 56
    invoke-virtual {v1, v2, v3, p1, v0}, LO0/N;->u(JLW0/F;Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    invoke-virtual {p0}, LO0/L;->A()V

    .line 61
    .line 62
    .line 63
    :goto_2
    return-void
.end method

.method public final F()V
    .locals 10

    .line 1
    new-instance v7, LO0/H;

    .line 2
    .line 3
    iget-object v2, p0, LO0/L;->G:Landroid/net/Uri;

    .line 4
    .line 5
    iget-object v3, p0, LO0/L;->H:Ls0/i;

    .line 6
    .line 7
    iget-object v4, p0, LO0/L;->U:Lm2/u;

    .line 8
    .line 9
    iget-object v6, p0, LO0/L;->V:Lp0/i;

    .line 10
    .line 11
    move-object v0, v7

    .line 12
    move-object v1, p0

    .line 13
    move-object v5, p0

    .line 14
    invoke-direct/range {v0 .. v6}, LO0/H;-><init>(LO0/L;Landroid/net/Uri;Ls0/i;Lm2/u;LW0/u;Lp0/i;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v0, p0, LO0/L;->e0:Z

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, LO0/L;->z()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 26
    .line 27
    .line 28
    iget-wide v0, p0, LO0/L;->j0:J

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    cmp-long v5, v0, v3

    .line 37
    .line 38
    if-eqz v5, :cond_0

    .line 39
    .line 40
    iget-wide v5, p0, LO0/L;->s0:J

    .line 41
    .line 42
    cmp-long v8, v5, v0

    .line 43
    .line 44
    if-lez v8, :cond_0

    .line 45
    .line 46
    iput-boolean v2, p0, LO0/L;->v0:Z

    .line 47
    .line 48
    iput-wide v3, p0, LO0/L;->s0:J

    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, LO0/L;->i0:LW0/F;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    iget-wide v5, p0, LO0/L;->s0:J

    .line 57
    .line 58
    invoke-interface {v0, v5, v6}, LW0/F;->k(J)LW0/E;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v0, v0, LW0/E;->a:LW0/G;

    .line 63
    .line 64
    iget-wide v0, v0, LW0/G;->b:J

    .line 65
    .line 66
    iget-wide v5, p0, LO0/L;->s0:J

    .line 67
    .line 68
    iget-object v8, v7, LO0/H;->M:LW0/w;

    .line 69
    .line 70
    iput-wide v0, v8, LW0/w;->a:J

    .line 71
    .line 72
    iput-wide v5, v7, LO0/H;->P:J

    .line 73
    .line 74
    iput-boolean v2, v7, LO0/H;->O:Z

    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    iput-boolean v0, v7, LO0/H;->S:Z

    .line 78
    .line 79
    iget-object v1, p0, LO0/L;->b0:[LO0/T;

    .line 80
    .line 81
    array-length v2, v1

    .line 82
    :goto_0
    if-ge v0, v2, :cond_1

    .line 83
    .line 84
    aget-object v5, v1, v0

    .line 85
    .line 86
    iget-wide v8, p0, LO0/L;->s0:J

    .line 87
    .line 88
    iput-wide v8, v5, LO0/T;->t:J

    .line 89
    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    iput-wide v3, p0, LO0/L;->s0:J

    .line 94
    .line 95
    :cond_2
    invoke-virtual {p0}, LO0/L;->x()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    iput v0, p0, LO0/L;->u0:I

    .line 100
    .line 101
    iget-object v0, p0, LO0/L;->J:LU4/b;

    .line 102
    .line 103
    iget v1, p0, LO0/L;->l0:I

    .line 104
    .line 105
    invoke-virtual {v0, v1}, LU4/b;->Y(I)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    iget-object v1, p0, LO0/L;->T:LS0/m;

    .line 110
    .line 111
    invoke-virtual {v1, v7, p0, v0}, LS0/m;->g(LS0/j;LS0/h;I)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public final G()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LO0/L;->n0:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, LO0/L;->z()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public final a(JLB0/I0;)J
    .locals 9

    .line 1
    invoke-virtual {p0}, LO0/L;->f()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LO0/L;->i0:LW0/F;

    .line 5
    .line 6
    invoke-interface {v0}, LW0/F;->f()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-wide/16 p1, 0x0

    .line 13
    .line 14
    return-wide p1

    .line 15
    :cond_0
    iget-object v0, p0, LO0/L;->i0:LW0/F;

    .line 16
    .line 17
    invoke-interface {v0, p1, p2}, LW0/F;->k(J)LW0/E;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, v0, LW0/E;->a:LW0/G;

    .line 22
    .line 23
    iget-wide v5, v1, LW0/G;->a:J

    .line 24
    .line 25
    iget-object v0, v0, LW0/E;->b:LW0/G;

    .line 26
    .line 27
    iget-wide v7, v0, LW0/G;->a:J

    .line 28
    .line 29
    move-object v2, p3

    .line 30
    move-wide v3, p1

    .line 31
    invoke-virtual/range {v2 .. v8}, LB0/I0;->a(JJJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide p1

    .line 35
    return-wide p1
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, LO0/L;->Y:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, LO0/L;->W:LO0/F;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final c(LS0/j;JJZ)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    check-cast v1, LO0/H;

    .line 4
    .line 5
    iget-object v2, v1, LO0/H;->I:Ls0/M;

    .line 6
    .line 7
    new-instance v4, LO0/p;

    .line 8
    .line 9
    iget-object v3, v2, Ls0/M;->c:Landroid/net/Uri;

    .line 10
    .line 11
    iget-object v2, v2, Ls0/M;->d:Ljava/util/Map;

    .line 12
    .line 13
    move-wide/from16 v5, p4

    .line 14
    .line 15
    invoke-direct {v4, v2, v5, v6}, LO0/p;-><init>(Ljava/util/Map;J)V

    .line 16
    .line 17
    .line 18
    iget-object v2, v0, LO0/L;->J:LU4/b;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-wide v10, v1, LO0/H;->P:J

    .line 24
    .line 25
    iget-wide v12, v0, LO0/L;->j0:J

    .line 26
    .line 27
    const/4 v6, -0x1

    .line 28
    const/4 v7, 0x0

    .line 29
    iget-object v3, v0, LO0/L;->K:LO0/D;

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    const/4 v8, 0x0

    .line 33
    const/4 v9, 0x0

    .line 34
    invoke-virtual/range {v3 .. v13}, LO0/D;->c(LO0/p;IILm0/t;ILjava/lang/Object;JJ)V

    .line 35
    .line 36
    .line 37
    if-nez p6, :cond_1

    .line 38
    .line 39
    iget-object v1, v0, LO0/L;->b0:[LO0/T;

    .line 40
    .line 41
    array-length v2, v1

    .line 42
    const/4 v3, 0x0

    .line 43
    const/4 v4, 0x0

    .line 44
    :goto_0
    if-ge v4, v2, :cond_0

    .line 45
    .line 46
    aget-object v5, v1, v4

    .line 47
    .line 48
    invoke-virtual {v5, v3}, LO0/T;->E(Z)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v4, v4, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget v1, v0, LO0/L;->p0:I

    .line 55
    .line 56
    if-lez v1, :cond_1

    .line 57
    .line 58
    iget-object v1, v0, LO0/L;->Z:LO0/v;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-interface {v1, p0}, LO0/V;->r(LO0/W;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method

.method public final d()V
    .locals 6

    .line 1
    iget-object v0, p0, LO0/L;->b0:[LO0/T;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-virtual {v3, v4}, LO0/T;->E(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v4, v3, LO0/T;->h:LG0/l;

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    iget-object v5, v3, LO0/T;->e:LG0/o;

    .line 18
    .line 19
    invoke-interface {v4, v5}, LG0/l;->c(LG0/o;)V

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    iput-object v4, v3, LO0/T;->h:LG0/l;

    .line 24
    .line 25
    iput-object v4, v3, LO0/T;->g:Lm0/t;

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, LO0/L;->U:Lm2/u;

    .line 31
    .line 32
    invoke-virtual {v0}, Lm2/u;->Q()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final e()J
    .locals 2

    .line 1
    invoke-virtual {p0}, LO0/L;->u()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-boolean v0, p0, LO0/L;->e0:Z

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LO0/L;->h0:LO0/K;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, LO0/L;->i0:LW0/F;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final g(LB0/d0;)Z
    .locals 1

    .line 1
    iget-boolean p1, p0, LO0/L;->v0:Z

    .line 2
    .line 3
    if-nez p1, :cond_3

    .line 4
    .line 5
    iget-object p1, p0, LO0/L;->T:LS0/m;

    .line 6
    .line 7
    invoke-virtual {p1}, LS0/m;->d()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    iget-boolean v0, p0, LO0/L;->t0:Z

    .line 14
    .line 15
    if-nez v0, :cond_3

    .line 16
    .line 17
    iget-boolean v0, p0, LO0/L;->e0:Z

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, LO0/L;->R:Lm0/t;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :cond_0
    iget v0, p0, LO0/L;->p0:I

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, LO0/L;->V:Lp0/i;

    .line 31
    .line 32
    invoke-virtual {v0}, Lp0/i;->f()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p1}, LS0/m;->e()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, LO0/L;->F()V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    :cond_2
    return v0

    .line 47
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 48
    return p1
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-object v0, p0, LO0/L;->J:LU4/b;

    .line 2
    .line 3
    iget v1, p0, LO0/L;->l0:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, LU4/b;->Y(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, LO0/L;->T:LS0/m;

    .line 10
    .line 11
    iget-object v2, v1, LS0/m;->I:Ljava/io/IOException;

    .line 12
    .line 13
    if-nez v2, :cond_5

    .line 14
    .line 15
    iget-object v1, v1, LS0/m;->H:LS0/i;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    const/high16 v2, -0x80000000

    .line 20
    .line 21
    if-ne v0, v2, :cond_0

    .line 22
    .line 23
    iget v0, v1, LS0/i;->G:I

    .line 24
    .line 25
    :cond_0
    iget-object v2, v1, LS0/i;->K:Ljava/io/IOException;

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget v1, v1, LS0/i;->L:I

    .line 30
    .line 31
    if-gt v1, v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    throw v2

    .line 35
    :cond_2
    :goto_0
    iget-boolean v0, p0, LO0/L;->v0:Z

    .line 36
    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    iget-boolean v0, p0, LO0/L;->e0:Z

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    const-string v0, "Loading finished before preparation is complete."

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-static {v0, v1}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    throw v0

    .line 52
    :cond_4
    :goto_1
    return-void

    .line 53
    :cond_5
    throw v2
.end method

.method public final i(J)J
    .locals 8

    .line 1
    invoke-virtual {p0}, LO0/L;->f()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LO0/L;->h0:LO0/K;

    .line 5
    .line 6
    iget-object v0, v0, LO0/K;->b:[Z

    .line 7
    .line 8
    iget-object v1, p0, LO0/L;->i0:LW0/F;

    .line 9
    .line 10
    invoke-interface {v1}, LW0/F;->f()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-wide/16 p1, 0x0

    .line 18
    .line 19
    :goto_0
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, LO0/L;->n0:Z

    .line 21
    .line 22
    iget-wide v2, p0, LO0/L;->r0:J

    .line 23
    .line 24
    cmp-long v4, v2, p1

    .line 25
    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v2, 0x0

    .line 31
    :goto_1
    iput-wide p1, p0, LO0/L;->r0:J

    .line 32
    .line 33
    invoke-virtual {p0}, LO0/L;->z()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    iput-wide p1, p0, LO0/L;->s0:J

    .line 40
    .line 41
    return-wide p1

    .line 42
    :cond_2
    iget v3, p0, LO0/L;->l0:I

    .line 43
    .line 44
    const/4 v4, 0x7

    .line 45
    iget-object v5, p0, LO0/L;->T:LS0/m;

    .line 46
    .line 47
    if-eq v3, v4, :cond_8

    .line 48
    .line 49
    iget-boolean v3, p0, LO0/L;->v0:Z

    .line 50
    .line 51
    if-nez v3, :cond_3

    .line 52
    .line 53
    invoke-virtual {v5}, LS0/m;->e()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_8

    .line 58
    .line 59
    :cond_3
    iget-object v3, p0, LO0/L;->b0:[LO0/T;

    .line 60
    .line 61
    array-length v3, v3

    .line 62
    const/4 v4, 0x0

    .line 63
    :goto_2
    if-ge v4, v3, :cond_7

    .line 64
    .line 65
    iget-object v6, p0, LO0/L;->b0:[LO0/T;

    .line 66
    .line 67
    aget-object v6, v6, v4

    .line 68
    .line 69
    invoke-virtual {v6}, LO0/T;->t()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-nez v7, :cond_4

    .line 74
    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_4
    iget-boolean v7, p0, LO0/L;->g0:Z

    .line 79
    .line 80
    if-eqz v7, :cond_5

    .line 81
    .line 82
    iget v7, v6, LO0/T;->q:I

    .line 83
    .line 84
    invoke-virtual {v6, v7}, LO0/T;->G(I)Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    goto :goto_3

    .line 89
    :cond_5
    iget-boolean v7, p0, LO0/L;->v0:Z

    .line 90
    .line 91
    invoke-virtual {v6, p1, p2, v7}, LO0/T;->H(JZ)Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    :goto_3
    if-nez v6, :cond_6

    .line 96
    .line 97
    aget-boolean v6, v0, v4

    .line 98
    .line 99
    if-nez v6, :cond_8

    .line 100
    .line 101
    iget-boolean v6, p0, LO0/L;->f0:Z

    .line 102
    .line 103
    if-nez v6, :cond_6

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_7
    return-wide p1

    .line 110
    :cond_8
    :goto_5
    iput-boolean v1, p0, LO0/L;->t0:Z

    .line 111
    .line 112
    iput-wide p1, p0, LO0/L;->s0:J

    .line 113
    .line 114
    iput-boolean v1, p0, LO0/L;->v0:Z

    .line 115
    .line 116
    iput-boolean v1, p0, LO0/L;->o0:Z

    .line 117
    .line 118
    invoke-virtual {v5}, LS0/m;->e()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_a

    .line 123
    .line 124
    iget-object v0, p0, LO0/L;->b0:[LO0/T;

    .line 125
    .line 126
    array-length v2, v0

    .line 127
    :goto_6
    if-ge v1, v2, :cond_9

    .line 128
    .line 129
    aget-object v3, v0, v1

    .line 130
    .line 131
    invoke-virtual {v3}, LO0/T;->k()V

    .line 132
    .line 133
    .line 134
    add-int/lit8 v1, v1, 0x1

    .line 135
    .line 136
    goto :goto_6

    .line 137
    :cond_9
    invoke-virtual {v5}, LS0/m;->a()V

    .line 138
    .line 139
    .line 140
    goto :goto_8

    .line 141
    :cond_a
    const/4 v0, 0x0

    .line 142
    iput-object v0, v5, LS0/m;->I:Ljava/io/IOException;

    .line 143
    .line 144
    iget-object v0, p0, LO0/L;->b0:[LO0/T;

    .line 145
    .line 146
    array-length v2, v0

    .line 147
    const/4 v3, 0x0

    .line 148
    :goto_7
    if-ge v3, v2, :cond_b

    .line 149
    .line 150
    aget-object v4, v0, v3

    .line 151
    .line 152
    invoke-virtual {v4, v1}, LO0/T;->E(Z)V

    .line 153
    .line 154
    .line 155
    add-int/lit8 v3, v3, 0x1

    .line 156
    .line 157
    goto :goto_7

    .line 158
    :cond_b
    :goto_8
    return-wide p1
.end method

.method public final j()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LO0/L;->d0:Z

    .line 3
    .line 4
    iget-object v0, p0, LO0/L;->Y:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v1, p0, LO0/L;->W:LO0/F;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final k()Z
    .locals 2

    .line 1
    iget-object v0, p0, LO0/L;->T:LS0/m;

    .line 2
    .line 3
    invoke-virtual {v0}, LS0/m;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, LO0/L;->V:Lp0/i;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-boolean v1, v0, Lp0/i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method public final l([LR0/t;[Z[LO0/U;[ZJ)J
    .locals 9

    .line 1
    invoke-virtual {p0}, LO0/L;->f()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LO0/L;->h0:LO0/K;

    .line 5
    .line 6
    iget-object v1, v0, LO0/K;->a:LO0/Z;

    .line 7
    .line 8
    iget v2, p0, LO0/L;->p0:I

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    :goto_0
    array-length v5, p1

    .line 13
    const/4 v6, 0x1

    .line 14
    iget-object v7, v0, LO0/K;->c:[Z

    .line 15
    .line 16
    if-ge v4, v5, :cond_2

    .line 17
    .line 18
    aget-object v5, p3, v4

    .line 19
    .line 20
    if-eqz v5, :cond_1

    .line 21
    .line 22
    aget-object v8, p1, v4

    .line 23
    .line 24
    if-eqz v8, :cond_0

    .line 25
    .line 26
    aget-boolean v8, p2, v4

    .line 27
    .line 28
    if-nez v8, :cond_1

    .line 29
    .line 30
    :cond_0
    check-cast v5, LO0/I;

    .line 31
    .line 32
    iget v5, v5, LO0/I;->G:I

    .line 33
    .line 34
    aget-boolean v8, v7, v5

    .line 35
    .line 36
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 37
    .line 38
    .line 39
    iget v8, p0, LO0/L;->p0:I

    .line 40
    .line 41
    sub-int/2addr v8, v6

    .line 42
    iput v8, p0, LO0/L;->p0:I

    .line 43
    .line 44
    aput-boolean v3, v7, v5

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    aput-object v5, p3, v4

    .line 48
    .line 49
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-boolean p2, p0, LO0/L;->m0:Z

    .line 53
    .line 54
    if-eqz p2, :cond_4

    .line 55
    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    :goto_1
    const/4 p2, 0x1

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    const/4 p2, 0x0

    .line 61
    goto :goto_2

    .line 62
    :cond_4
    const-wide/16 v4, 0x0

    .line 63
    .line 64
    cmp-long p2, p5, v4

    .line 65
    .line 66
    if-eqz p2, :cond_3

    .line 67
    .line 68
    iget-boolean p2, p0, LO0/L;->g0:Z

    .line 69
    .line 70
    if-nez p2, :cond_3

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :goto_2
    const/4 v0, 0x0

    .line 74
    :goto_3
    array-length v2, p1

    .line 75
    if-ge v0, v2, :cond_9

    .line 76
    .line 77
    aget-object v2, p3, v0

    .line 78
    .line 79
    if-nez v2, :cond_8

    .line 80
    .line 81
    aget-object v2, p1, v0

    .line 82
    .line 83
    if-eqz v2, :cond_8

    .line 84
    .line 85
    check-cast v2, LR0/c;

    .line 86
    .line 87
    iget-object v4, v2, LR0/c;->c:[I

    .line 88
    .line 89
    array-length v5, v4

    .line 90
    if-ne v5, v6, :cond_5

    .line 91
    .line 92
    const/4 v5, 0x1

    .line 93
    goto :goto_4

    .line 94
    :cond_5
    const/4 v5, 0x0

    .line 95
    :goto_4
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 96
    .line 97
    .line 98
    aget v4, v4, v3

    .line 99
    .line 100
    if-nez v4, :cond_6

    .line 101
    .line 102
    const/4 v4, 0x1

    .line 103
    goto :goto_5

    .line 104
    :cond_6
    const/4 v4, 0x0

    .line 105
    :goto_5
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 106
    .line 107
    .line 108
    iget-object v4, v2, LR0/c;->a:Lm0/g0;

    .line 109
    .line 110
    invoke-virtual {v1, v4}, LO0/Z;->b(Lm0/g0;)I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    aget-boolean v5, v7, v4

    .line 115
    .line 116
    xor-int/2addr v5, v6

    .line 117
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 118
    .line 119
    .line 120
    iget v5, p0, LO0/L;->p0:I

    .line 121
    .line 122
    add-int/2addr v5, v6

    .line 123
    iput v5, p0, LO0/L;->p0:I

    .line 124
    .line 125
    aput-boolean v6, v7, v4

    .line 126
    .line 127
    iget-boolean v5, p0, LO0/L;->o0:Z

    .line 128
    .line 129
    invoke-virtual {v2}, LR0/c;->l()Lm0/t;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    iget-boolean v2, v2, Lm0/t;->u:Z

    .line 134
    .line 135
    or-int/2addr v2, v5

    .line 136
    iput-boolean v2, p0, LO0/L;->o0:Z

    .line 137
    .line 138
    new-instance v2, LO0/I;

    .line 139
    .line 140
    invoke-direct {v2, p0, v4}, LO0/I;-><init>(LO0/L;I)V

    .line 141
    .line 142
    .line 143
    aput-object v2, p3, v0

    .line 144
    .line 145
    aput-boolean v6, p4, v0

    .line 146
    .line 147
    if-nez p2, :cond_8

    .line 148
    .line 149
    iget-object p2, p0, LO0/L;->b0:[LO0/T;

    .line 150
    .line 151
    aget-object p2, p2, v4

    .line 152
    .line 153
    invoke-virtual {p2}, LO0/T;->t()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_7

    .line 158
    .line 159
    invoke-virtual {p2, p5, p6, v6}, LO0/T;->H(JZ)Z

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    if-nez p2, :cond_7

    .line 164
    .line 165
    const/4 p2, 0x1

    .line 166
    goto :goto_6

    .line 167
    :cond_7
    const/4 p2, 0x0

    .line 168
    :cond_8
    :goto_6
    add-int/lit8 v0, v0, 0x1

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_9
    iget p1, p0, LO0/L;->p0:I

    .line 172
    .line 173
    if-nez p1, :cond_c

    .line 174
    .line 175
    iput-boolean v3, p0, LO0/L;->t0:Z

    .line 176
    .line 177
    iput-boolean v3, p0, LO0/L;->n0:Z

    .line 178
    .line 179
    iput-boolean v3, p0, LO0/L;->o0:Z

    .line 180
    .line 181
    iget-object p1, p0, LO0/L;->T:LS0/m;

    .line 182
    .line 183
    invoke-virtual {p1}, LS0/m;->e()Z

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    if-eqz p2, :cond_b

    .line 188
    .line 189
    iget-object p2, p0, LO0/L;->b0:[LO0/T;

    .line 190
    .line 191
    array-length p3, p2

    .line 192
    :goto_7
    if-ge v3, p3, :cond_a

    .line 193
    .line 194
    aget-object p4, p2, v3

    .line 195
    .line 196
    invoke-virtual {p4}, LO0/T;->k()V

    .line 197
    .line 198
    .line 199
    add-int/lit8 v3, v3, 0x1

    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_a
    invoke-virtual {p1}, LS0/m;->a()V

    .line 203
    .line 204
    .line 205
    goto :goto_a

    .line 206
    :cond_b
    iput-boolean v3, p0, LO0/L;->v0:Z

    .line 207
    .line 208
    iget-object p1, p0, LO0/L;->b0:[LO0/T;

    .line 209
    .line 210
    array-length p2, p1

    .line 211
    const/4 p3, 0x0

    .line 212
    :goto_8
    if-ge p3, p2, :cond_e

    .line 213
    .line 214
    aget-object p4, p1, p3

    .line 215
    .line 216
    invoke-virtual {p4, v3}, LO0/T;->E(Z)V

    .line 217
    .line 218
    .line 219
    add-int/lit8 p3, p3, 0x1

    .line 220
    .line 221
    goto :goto_8

    .line 222
    :cond_c
    if-eqz p2, :cond_e

    .line 223
    .line 224
    invoke-virtual {p0, p5, p6}, LO0/L;->i(J)J

    .line 225
    .line 226
    .line 227
    move-result-wide p5

    .line 228
    :goto_9
    array-length p1, p3

    .line 229
    if-ge v3, p1, :cond_e

    .line 230
    .line 231
    aget-object p1, p3, v3

    .line 232
    .line 233
    if-eqz p1, :cond_d

    .line 234
    .line 235
    aput-boolean v6, p4, v3

    .line 236
    .line 237
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 238
    .line 239
    goto :goto_9

    .line 240
    :cond_e
    :goto_a
    iput-boolean v6, p0, LO0/L;->m0:Z

    .line 241
    .line 242
    return-wide p5
.end method

.method public final m(LO0/v;J)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iput-object p1, p0, LO0/L;->Z:LO0/v;

    .line 4
    .line 5
    iget-object p1, p0, LO0/L;->R:Lm0/t;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget v2, p0, LO0/L;->Q:I

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    invoke-virtual {p0, v2, v3}, LO0/L;->t(II)LW0/L;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v2, p1}, LW0/L;->b(Lm0/t;)V

    .line 17
    .line 18
    .line 19
    new-instance p1, LW0/D;

    .line 20
    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    new-array v4, v1, [J

    .line 24
    .line 25
    aput-wide v2, v4, v0

    .line 26
    .line 27
    new-array v1, v1, [J

    .line 28
    .line 29
    aput-wide v2, v1, v0

    .line 30
    .line 31
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    invoke-direct {p1, v2, v3, v4, v1}, LW0/D;-><init>(J[J[J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, LO0/L;->E(LW0/F;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, LO0/L;->j()V

    .line 43
    .line 44
    .line 45
    iput-wide p2, p0, LO0/L;->s0:J

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object p1, p0, LO0/L;->V:Lp0/i;

    .line 49
    .line 50
    invoke-virtual {p1}, Lp0/i;->f()Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, LO0/L;->F()V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public final n(LS0/j;JJLjava/io/IOException;I)LS0/g;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v12, p6

    .line 4
    .line 5
    move-object/from16 v1, p1

    .line 6
    .line 7
    check-cast v1, LO0/H;

    .line 8
    .line 9
    iget-object v2, v1, LO0/H;->I:Ls0/M;

    .line 10
    .line 11
    new-instance v3, LO0/p;

    .line 12
    .line 13
    iget-object v4, v2, Ls0/M;->c:Landroid/net/Uri;

    .line 14
    .line 15
    iget-object v2, v2, Ls0/M;->d:Ljava/util/Map;

    .line 16
    .line 17
    move-wide/from16 v4, p4

    .line 18
    .line 19
    invoke-direct {v3, v2, v4, v5}, LO0/p;-><init>(Ljava/util/Map;J)V

    .line 20
    .line 21
    .line 22
    sget-object v2, Lp0/M;->a:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v2, v0, LO0/L;->J:LU4/b;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    instance-of v2, v12, Lm0/P;

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    instance-of v2, v12, Ljava/io/FileNotFoundException;

    .line 40
    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    instance-of v2, v12, Ls0/w;

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    instance-of v2, v12, LS0/l;

    .line 48
    .line 49
    if-nez v2, :cond_2

    .line 50
    .line 51
    sget v2, Ls0/j;->H:I

    .line 52
    .line 53
    move-object v2, v12

    .line 54
    :goto_0
    if-eqz v2, :cond_1

    .line 55
    .line 56
    instance-of v7, v2, Ls0/j;

    .line 57
    .line 58
    if-eqz v7, :cond_0

    .line 59
    .line 60
    move-object v7, v2

    .line 61
    check-cast v7, Ls0/j;

    .line 62
    .line 63
    iget v7, v7, Ls0/j;->G:I

    .line 64
    .line 65
    const/16 v8, 0x7d8

    .line 66
    .line 67
    if-ne v7, v8, :cond_0

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    add-int/lit8 v2, p7, -0x1

    .line 76
    .line 77
    mul-int/lit16 v2, v2, 0x3e8

    .line 78
    .line 79
    const/16 v7, 0x1388

    .line 80
    .line 81
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    int-to-long v7, v2

    .line 86
    goto :goto_2

    .line 87
    :cond_2
    :goto_1
    move-wide v7, v5

    .line 88
    :goto_2
    cmp-long v2, v7, v5

    .line 89
    .line 90
    if-nez v2, :cond_3

    .line 91
    .line 92
    sget-object v2, LS0/m;->L:LS0/g;

    .line 93
    .line 94
    :goto_3
    move-object v14, v2

    .line 95
    goto :goto_8

    .line 96
    :cond_3
    invoke-virtual/range {p0 .. p0}, LO0/L;->x()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    iget v9, v0, LO0/L;->u0:I

    .line 101
    .line 102
    const/4 v10, 0x0

    .line 103
    if-le v2, v9, :cond_4

    .line 104
    .line 105
    const/4 v9, 0x1

    .line 106
    goto :goto_4

    .line 107
    :cond_4
    const/4 v9, 0x0

    .line 108
    :goto_4
    iget-boolean v11, v0, LO0/L;->q0:Z

    .line 109
    .line 110
    if-nez v11, :cond_8

    .line 111
    .line 112
    iget-object v11, v0, LO0/L;->i0:LW0/F;

    .line 113
    .line 114
    if-eqz v11, :cond_5

    .line 115
    .line 116
    invoke-interface {v11}, LW0/F;->m()J

    .line 117
    .line 118
    .line 119
    move-result-wide v13

    .line 120
    cmp-long v11, v13, v5

    .line 121
    .line 122
    if-eqz v11, :cond_5

    .line 123
    .line 124
    goto :goto_6

    .line 125
    :cond_5
    iget-boolean v2, v0, LO0/L;->e0:Z

    .line 126
    .line 127
    if-eqz v2, :cond_6

    .line 128
    .line 129
    invoke-virtual/range {p0 .. p0}, LO0/L;->G()Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-nez v2, :cond_6

    .line 134
    .line 135
    iput-boolean v4, v0, LO0/L;->t0:Z

    .line 136
    .line 137
    sget-object v2, LS0/m;->K:LS0/g;

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_6
    iget-boolean v2, v0, LO0/L;->e0:Z

    .line 141
    .line 142
    iput-boolean v2, v0, LO0/L;->n0:Z

    .line 143
    .line 144
    const-wide/16 v5, 0x0

    .line 145
    .line 146
    iput-wide v5, v0, LO0/L;->r0:J

    .line 147
    .line 148
    iput v10, v0, LO0/L;->u0:I

    .line 149
    .line 150
    iget-object v2, v0, LO0/L;->b0:[LO0/T;

    .line 151
    .line 152
    array-length v11, v2

    .line 153
    const/4 v13, 0x0

    .line 154
    :goto_5
    if-ge v13, v11, :cond_7

    .line 155
    .line 156
    aget-object v14, v2, v13

    .line 157
    .line 158
    invoke-virtual {v14, v10}, LO0/T;->E(Z)V

    .line 159
    .line 160
    .line 161
    add-int/lit8 v13, v13, 0x1

    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_7
    iget-object v2, v1, LO0/H;->M:LW0/w;

    .line 165
    .line 166
    iput-wide v5, v2, LW0/w;->a:J

    .line 167
    .line 168
    iput-wide v5, v1, LO0/H;->P:J

    .line 169
    .line 170
    iput-boolean v4, v1, LO0/H;->O:Z

    .line 171
    .line 172
    iput-boolean v10, v1, LO0/H;->S:Z

    .line 173
    .line 174
    goto :goto_7

    .line 175
    :cond_8
    :goto_6
    iput v2, v0, LO0/L;->u0:I

    .line 176
    .line 177
    :goto_7
    invoke-static {v7, v8, v9}, LS0/m;->c(JZ)LS0/g;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    goto :goto_3

    .line 182
    :goto_8
    invoke-virtual {v14}, LS0/g;->a()Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    xor-int/lit8 v13, v2, 0x1

    .line 187
    .line 188
    iget-wide v8, v1, LO0/H;->P:J

    .line 189
    .line 190
    iget-wide v10, v0, LO0/L;->j0:J

    .line 191
    .line 192
    const/4 v4, -0x1

    .line 193
    const/4 v5, 0x0

    .line 194
    iget-object v1, v0, LO0/L;->K:LO0/D;

    .line 195
    .line 196
    const/4 v6, 0x1

    .line 197
    const/4 v7, 0x0

    .line 198
    const/4 v15, 0x0

    .line 199
    move-object v2, v3

    .line 200
    move v3, v6

    .line 201
    move v6, v7

    .line 202
    move-object v7, v15

    .line 203
    move-object/from16 v12, p6

    .line 204
    .line 205
    invoke-virtual/range {v1 .. v13}, LO0/D;->e(LO0/p;IILm0/t;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    .line 206
    .line 207
    .line 208
    return-object v14
.end method

.method public final o(LS0/j;JJ)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, LO0/H;

    .line 6
    .line 7
    iget-wide v2, v0, LO0/L;->j0:J

    .line 8
    .line 9
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const/4 v6, 0x1

    .line 15
    cmp-long v7, v2, v4

    .line 16
    .line 17
    if-nez v7, :cond_1

    .line 18
    .line 19
    iget-object v2, v0, LO0/L;->i0:LW0/F;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v6}, LO0/L;->y(Z)J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    const-wide/high16 v4, -0x8000000000000000L

    .line 28
    .line 29
    cmp-long v7, v2, v4

    .line 30
    .line 31
    if-nez v7, :cond_0

    .line 32
    .line 33
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-wide/16 v4, 0x2710

    .line 37
    .line 38
    add-long/2addr v2, v4

    .line 39
    :goto_0
    iput-wide v2, v0, LO0/L;->j0:J

    .line 40
    .line 41
    iget-object v4, v0, LO0/L;->i0:LW0/F;

    .line 42
    .line 43
    iget-boolean v5, v0, LO0/L;->k0:Z

    .line 44
    .line 45
    iget-object v7, v0, LO0/L;->M:LO0/N;

    .line 46
    .line 47
    invoke-virtual {v7, v2, v3, v4, v5}, LO0/N;->u(JLW0/F;Z)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v2, v1, LO0/H;->I:Ls0/M;

    .line 51
    .line 52
    new-instance v8, LO0/p;

    .line 53
    .line 54
    iget-object v3, v2, Ls0/M;->c:Landroid/net/Uri;

    .line 55
    .line 56
    iget-object v2, v2, Ls0/M;->d:Ljava/util/Map;

    .line 57
    .line 58
    move-wide/from16 v3, p4

    .line 59
    .line 60
    invoke-direct {v8, v2, v3, v4}, LO0/p;-><init>(Ljava/util/Map;J)V

    .line 61
    .line 62
    .line 63
    iget-object v2, v0, LO0/L;->J:LU4/b;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    iget-wide v14, v1, LO0/H;->P:J

    .line 69
    .line 70
    iget-wide v1, v0, LO0/L;->j0:J

    .line 71
    .line 72
    const/4 v10, -0x1

    .line 73
    const/4 v11, 0x0

    .line 74
    iget-object v7, v0, LO0/L;->K:LO0/D;

    .line 75
    .line 76
    const/4 v9, 0x1

    .line 77
    const/4 v12, 0x0

    .line 78
    const/4 v13, 0x0

    .line 79
    move-wide/from16 v16, v1

    .line 80
    .line 81
    invoke-virtual/range {v7 .. v17}, LO0/D;->d(LO0/p;IILm0/t;ILjava/lang/Object;JJ)V

    .line 82
    .line 83
    .line 84
    iput-boolean v6, v0, LO0/L;->v0:Z

    .line 85
    .line 86
    iget-object v1, v0, LO0/L;->Z:LO0/v;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-interface {v1, v0}, LO0/V;->r(LO0/W;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final p(LS0/j;JJI)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    check-cast v1, LO0/H;

    .line 5
    .line 6
    iget-object v2, v1, LO0/H;->I:Ls0/M;

    .line 7
    .line 8
    if-nez p6, :cond_0

    .line 9
    .line 10
    new-instance v2, LO0/p;

    .line 11
    .line 12
    iget-object v6, v1, LO0/H;->Q:Ls0/m;

    .line 13
    .line 14
    iget-wide v4, v1, LO0/H;->G:J

    .line 15
    .line 16
    move-object v3, v2

    .line 17
    move-wide/from16 v7, p2

    .line 18
    .line 19
    invoke-direct/range {v3 .. v8}, LO0/p;-><init>(JLs0/m;J)V

    .line 20
    .line 21
    .line 22
    move-object v4, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v3, LO0/p;

    .line 25
    .line 26
    iget-object v4, v2, Ls0/M;->c:Landroid/net/Uri;

    .line 27
    .line 28
    iget-object v2, v2, Ls0/M;->d:Ljava/util/Map;

    .line 29
    .line 30
    move-wide/from16 v4, p4

    .line 31
    .line 32
    invoke-direct {v3, v2, v4, v5}, LO0/p;-><init>(Ljava/util/Map;J)V

    .line 33
    .line 34
    .line 35
    move-object v4, v3

    .line 36
    :goto_0
    iget-wide v10, v1, LO0/H;->P:J

    .line 37
    .line 38
    iget-wide v12, v0, LO0/L;->j0:J

    .line 39
    .line 40
    const/4 v6, -0x1

    .line 41
    const/4 v7, 0x0

    .line 42
    iget-object v3, v0, LO0/L;->K:LO0/D;

    .line 43
    .line 44
    const/4 v5, 0x1

    .line 45
    const/4 v8, 0x0

    .line 46
    const/4 v9, 0x0

    .line 47
    move/from16 v14, p6

    .line 48
    .line 49
    invoke-virtual/range {v3 .. v14}, LO0/D;->g(LO0/p;IILm0/t;ILjava/lang/Object;JJI)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final q()J
    .locals 3

    .line 1
    iget-boolean v0, p0, LO0/L;->o0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, LO0/L;->o0:Z

    .line 7
    .line 8
    iget-wide v0, p0, LO0/L;->r0:J

    .line 9
    .line 10
    return-wide v0

    .line 11
    :cond_0
    iget-boolean v0, p0, LO0/L;->n0:Z

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-boolean v0, p0, LO0/L;->v0:Z

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, LO0/L;->x()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v2, p0, LO0/L;->u0:I

    .line 24
    .line 25
    if-le v0, v2, :cond_2

    .line 26
    .line 27
    :cond_1
    iput-boolean v1, p0, LO0/L;->n0:Z

    .line 28
    .line 29
    iget-wide v0, p0, LO0/L;->r0:J

    .line 30
    .line 31
    return-wide v0

    .line 32
    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    return-wide v0
.end method

.method public final r(LW0/F;)V
    .locals 3

    .line 1
    iget-object v0, p0, LO0/L;->Y:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lf/t;

    .line 4
    .line 5
    const/16 v2, 0x1c

    .line 6
    .line 7
    invoke-direct {v1, v2, p0, p1}, Lf/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final s()LO0/Z;
    .locals 1

    .line 1
    invoke-virtual {p0}, LO0/L;->f()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LO0/L;->h0:LO0/K;

    .line 5
    .line 6
    iget-object v0, v0, LO0/K;->a:LO0/Z;

    .line 7
    .line 8
    return-object v0
.end method

.method public final t(II)LW0/L;
    .locals 1

    .line 1
    new-instance p2, LO0/J;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p2, p1, v0}, LO0/J;-><init>(IZ)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, LO0/L;->D(LO0/J;)LW0/L;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final u()J
    .locals 11

    .line 1
    invoke-virtual {p0}, LO0/L;->f()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, LO0/L;->v0:Z

    .line 5
    .line 6
    const-wide/high16 v1, -0x8000000000000000L

    .line 7
    .line 8
    if-nez v0, :cond_7

    .line 9
    .line 10
    iget v0, p0, LO0/L;->p0:I

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    invoke-virtual {p0}, LO0/L;->z()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-wide v0, p0, LO0/L;->s0:J

    .line 22
    .line 23
    return-wide v0

    .line 24
    :cond_1
    iget-boolean v0, p0, LO0/L;->f0:Z

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    const-wide v4, 0x7fffffffffffffffL

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, LO0/L;->b0:[LO0/T;

    .line 35
    .line 36
    array-length v0, v0

    .line 37
    move-wide v7, v4

    .line 38
    const/4 v6, 0x0

    .line 39
    :goto_0
    if-ge v6, v0, :cond_4

    .line 40
    .line 41
    iget-object v9, p0, LO0/L;->h0:LO0/K;

    .line 42
    .line 43
    iget-object v10, v9, LO0/K;->b:[Z

    .line 44
    .line 45
    aget-boolean v10, v10, v6

    .line 46
    .line 47
    if-eqz v10, :cond_2

    .line 48
    .line 49
    iget-object v9, v9, LO0/K;->c:[Z

    .line 50
    .line 51
    aget-boolean v9, v9, v6

    .line 52
    .line 53
    if-eqz v9, :cond_2

    .line 54
    .line 55
    iget-object v9, p0, LO0/L;->b0:[LO0/T;

    .line 56
    .line 57
    aget-object v9, v9, v6

    .line 58
    .line 59
    monitor-enter v9

    .line 60
    :try_start_0
    iget-boolean v10, v9, LO0/T;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    monitor-exit v9

    .line 63
    if-nez v10, :cond_2

    .line 64
    .line 65
    iget-object v9, p0, LO0/L;->b0:[LO0/T;

    .line 66
    .line 67
    aget-object v9, v9, v6

    .line 68
    .line 69
    invoke-virtual {v9}, LO0/T;->q()J

    .line 70
    .line 71
    .line 72
    move-result-wide v9

    .line 73
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 74
    .line 75
    .line 76
    move-result-wide v7

    .line 77
    goto :goto_1

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    monitor-exit v9

    .line 80
    throw v0

    .line 81
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    move-wide v7, v4

    .line 85
    :cond_4
    cmp-long v0, v7, v4

    .line 86
    .line 87
    if-nez v0, :cond_5

    .line 88
    .line 89
    invoke-virtual {p0, v3}, LO0/L;->y(Z)J

    .line 90
    .line 91
    .line 92
    move-result-wide v7

    .line 93
    :cond_5
    cmp-long v0, v7, v1

    .line 94
    .line 95
    if-nez v0, :cond_6

    .line 96
    .line 97
    iget-wide v7, p0, LO0/L;->r0:J

    .line 98
    .line 99
    :cond_6
    return-wide v7

    .line 100
    :cond_7
    :goto_2
    return-wide v1
.end method

.method public final v(JZ)V
    .locals 5

    .line 1
    iget-boolean v0, p0, LO0/L;->g0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, LO0/L;->f()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, LO0/L;->z()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget-object v0, p0, LO0/L;->h0:LO0/K;

    .line 17
    .line 18
    iget-object v0, v0, LO0/K;->c:[Z

    .line 19
    .line 20
    iget-object v1, p0, LO0/L;->b0:[LO0/T;

    .line 21
    .line 22
    array-length v1, v1

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-ge v2, v1, :cond_2

    .line 25
    .line 26
    iget-object v3, p0, LO0/L;->b0:[LO0/T;

    .line 27
    .line 28
    aget-object v3, v3, v2

    .line 29
    .line 30
    aget-boolean v4, v0, v2

    .line 31
    .line 32
    invoke-virtual {v3, p1, p2, p3, v4}, LO0/T;->j(JZZ)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    return-void
.end method

.method public final w(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final x()I
    .locals 6

    .line 1
    iget-object v0, p0, LO0/L;->b0:[LO0/T;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7
    .line 8
    aget-object v4, v0, v2

    .line 9
    .line 10
    iget v5, v4, LO0/T;->q:I

    .line 11
    .line 12
    iget v4, v4, LO0/T;->p:I

    .line 13
    .line 14
    add-int/2addr v5, v4

    .line 15
    add-int/2addr v3, v5

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return v3
.end method

.method public final y(Z)J
    .locals 5

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, LO0/L;->b0:[LO0/T;

    .line 5
    .line 6
    array-length v3, v3

    .line 7
    if-ge v2, v3, :cond_2

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object v3, p0, LO0/L;->h0:LO0/K;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v3, v3, LO0/K;->c:[Z

    .line 17
    .line 18
    aget-boolean v3, v3, v2

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    :cond_0
    iget-object v3, p0, LO0/L;->b0:[LO0/T;

    .line 23
    .line 24
    aget-object v3, v3, v2

    .line 25
    .line 26
    invoke-virtual {v3}, LO0/T;->q()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-wide v0
.end method

.method public final z()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LO0/L;->s0:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method
