.class public final LD1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/W;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic G:LD1/v;


# direct methods
.method public constructor <init>(LD1/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LD1/k;->G:LD1/v;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final synthetic A(Lm0/m0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic B(Lm0/L;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final D(Lm0/V;)V
    .locals 10

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x9

    .line 5
    .line 6
    const/16 v3, 0x8

    .line 7
    .line 8
    const/4 v4, 0x7

    .line 9
    const/4 v5, 0x4

    .line 10
    const/4 v6, 0x5

    .line 11
    const/16 v7, 0xd

    .line 12
    .line 13
    filled-new-array {v5, v6, v7}, [I

    .line 14
    .line 15
    .line 16
    move-result-object v8

    .line 17
    invoke-virtual {p1, v8}, Lm0/V;->a([I)Z

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    iget-object v9, p0, LD1/k;->G:LD1/v;

    .line 22
    .line 23
    if-eqz v8, :cond_0

    .line 24
    .line 25
    invoke-virtual {v9}, LD1/v;->q()V

    .line 26
    .line 27
    .line 28
    :cond_0
    filled-new-array {v5, v6, v4, v7}, [I

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {p1, v5}, Lm0/V;->a([I)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    invoke-virtual {v9}, LD1/v;->s()V

    .line 39
    .line 40
    .line 41
    :cond_1
    filled-new-array {v3, v7}, [I

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {p1, v3}, Lm0/V;->a([I)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    invoke-virtual {v9}, LD1/v;->t()V

    .line 52
    .line 53
    .line 54
    :cond_2
    filled-new-array {v2, v7}, [I

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p1, v2}, Lm0/V;->a([I)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    invoke-virtual {v9}, LD1/v;->v()V

    .line 65
    .line 66
    .line 67
    :cond_3
    new-array v2, v4, [I

    .line 68
    .line 69
    fill-array-data v2, :array_0

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v2}, Lm0/V;->a([I)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_4

    .line 77
    .line 78
    invoke-virtual {v9}, LD1/v;->p()V

    .line 79
    .line 80
    .line 81
    :cond_4
    filled-new-array {v0, v1, v7}, [I

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Lm0/V;->a([I)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    invoke-virtual {v9}, LD1/v;->w()V

    .line 92
    .line 93
    .line 94
    :cond_5
    const/16 v0, 0xc

    .line 95
    .line 96
    filled-new-array {v0, v7}, [I

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Lm0/V;->a([I)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    invoke-virtual {v9}, LD1/v;->r()V

    .line 107
    .line 108
    .line 109
    :cond_6
    const/4 v0, 0x2

    .line 110
    filled-new-array {v0, v7}, [I

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p1, v0}, Lm0/V;->a([I)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_7

    .line 119
    .line 120
    invoke-virtual {v9}, LD1/v;->x()V

    .line 121
    .line 122
    .line 123
    :cond_7
    return-void

    .line 124
    nop

    .line 125
    :array_0
    .array-data 4
        0x8
        0x9
        0xb
        0x0
        0x10
        0x11
        0xd
    .end array-data
.end method

.method public final synthetic G(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic J(Lm0/l;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic K(Lm0/d;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic L(Lm0/k0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic O(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic a(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic b(Lo0/c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic c(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic d(Lm0/U;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic e(ILm0/X;Lm0/X;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic f(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic g(Lm0/w0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic i(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic j(IZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic k(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic m(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic n(Lm0/S;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic o(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object v0, p0, LD1/k;->G:LD1/v;

    .line 2
    .line 3
    iget-object v1, v0, LD1/v;->V0:Lm0/Y;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v2, v0, LD1/v;->G:LD1/B;

    .line 9
    .line 10
    invoke-virtual {v2}, LD1/B;->h()V

    .line 11
    .line 12
    .line 13
    iget-object v3, v0, LD1/v;->c0:Landroid/widget/ImageView;

    .line 14
    .line 15
    const/16 v4, 0x9

    .line 16
    .line 17
    if-ne v3, p1, :cond_1

    .line 18
    .line 19
    check-cast v1, Lm0/f;

    .line 20
    .line 21
    invoke-virtual {v1, v4}, Lm0/f;->c(I)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_11

    .line 26
    .line 27
    invoke-virtual {v1}, Lm0/f;->k()V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_1
    iget-object v3, v0, LD1/v;->b0:Landroid/widget/ImageView;

    .line 33
    .line 34
    if-ne v3, p1, :cond_2

    .line 35
    .line 36
    check-cast v1, Lm0/f;

    .line 37
    .line 38
    const/4 p1, 0x7

    .line 39
    invoke-virtual {v1, p1}, Lm0/f;->c(I)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_11

    .line 44
    .line 45
    invoke-virtual {v1}, Lm0/f;->m()V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_3

    .line 49
    .line 50
    :cond_2
    const/16 v3, 0xc

    .line 51
    .line 52
    iget-object v5, v0, LD1/v;->e0:Landroid/view/View;

    .line 53
    .line 54
    if-ne v5, p1, :cond_3

    .line 55
    .line 56
    move-object p1, v1

    .line 57
    check-cast p1, LB0/O;

    .line 58
    .line 59
    invoke-virtual {p1}, LB0/O;->C()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    const/4 v0, 0x4

    .line 64
    if-eq p1, v0, :cond_11

    .line 65
    .line 66
    check-cast v1, Lm0/f;

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Lm0/f;->c(I)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_11

    .line 73
    .line 74
    move-object p1, v1

    .line 75
    check-cast p1, LB0/O;

    .line 76
    .line 77
    invoke-virtual {p1}, LB0/O;->c0()V

    .line 78
    .line 79
    .line 80
    iget-wide v4, p1, LB0/O;->b0:J

    .line 81
    .line 82
    invoke-virtual {v1, v3, v4, v5}, Lm0/f;->l(IJ)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_3

    .line 86
    .line 87
    :cond_3
    iget-object v5, v0, LD1/v;->f0:Landroid/view/View;

    .line 88
    .line 89
    if-ne v5, p1, :cond_4

    .line 90
    .line 91
    check-cast v1, Lm0/f;

    .line 92
    .line 93
    const/16 p1, 0xb

    .line 94
    .line 95
    invoke-virtual {v1, p1}, Lm0/f;->c(I)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_11

    .line 100
    .line 101
    move-object v0, v1

    .line 102
    check-cast v0, LB0/O;

    .line 103
    .line 104
    invoke-virtual {v0}, LB0/O;->c0()V

    .line 105
    .line 106
    .line 107
    iget-wide v2, v0, LB0/O;->a0:J

    .line 108
    .line 109
    neg-long v2, v2

    .line 110
    invoke-virtual {v1, p1, v2, v3}, Lm0/f;->l(IJ)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_3

    .line 114
    .line 115
    :cond_4
    const/4 v5, 0x0

    .line 116
    const/4 v6, 0x1

    .line 117
    iget-object v7, v0, LD1/v;->d0:Landroid/widget/ImageView;

    .line 118
    .line 119
    if-ne v7, p1, :cond_6

    .line 120
    .line 121
    iget-boolean p1, v0, LD1/v;->a1:Z

    .line 122
    .line 123
    invoke-static {v1, p1}, Lp0/M;->b0(Lm0/Y;Z)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_5

    .line 128
    .line 129
    invoke-static {v1}, Lp0/M;->H(Lm0/Y;)Z

    .line 130
    .line 131
    .line 132
    goto/16 :goto_3

    .line 133
    .line 134
    :cond_5
    check-cast v1, Lm0/f;

    .line 135
    .line 136
    invoke-virtual {v1, v6}, Lm0/f;->c(I)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_11

    .line 141
    .line 142
    check-cast v1, LB0/O;

    .line 143
    .line 144
    invoke-virtual {v1, v5}, LB0/O;->S(Z)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_3

    .line 148
    .line 149
    :cond_6
    iget-object v7, v0, LD1/v;->i0:Landroid/widget/ImageView;

    .line 150
    .line 151
    if-ne v7, p1, :cond_c

    .line 152
    .line 153
    const/16 p1, 0xf

    .line 154
    .line 155
    move-object v2, v1

    .line 156
    check-cast v2, Lm0/f;

    .line 157
    .line 158
    invoke-virtual {v2, p1}, Lm0/f;->c(I)Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-eqz p1, :cond_11

    .line 163
    .line 164
    check-cast v1, LB0/O;

    .line 165
    .line 166
    invoke-virtual {v1}, LB0/O;->c0()V

    .line 167
    .line 168
    .line 169
    iget p1, v1, LB0/O;->k0:I

    .line 170
    .line 171
    iget v0, v0, LD1/v;->g1:I

    .line 172
    .line 173
    const/4 v2, 0x1

    .line 174
    :goto_0
    const/4 v3, 0x2

    .line 175
    if-gt v2, v3, :cond_b

    .line 176
    .line 177
    add-int v4, p1, v2

    .line 178
    .line 179
    rem-int/lit8 v4, v4, 0x3

    .line 180
    .line 181
    if-eqz v4, :cond_a

    .line 182
    .line 183
    if-eq v4, v6, :cond_8

    .line 184
    .line 185
    if-eq v4, v3, :cond_7

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_7
    and-int/lit8 v3, v0, 0x2

    .line 189
    .line 190
    if-eqz v3, :cond_9

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_8
    and-int/lit8 v3, v0, 0x1

    .line 194
    .line 195
    if-eqz v3, :cond_9

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_9
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 199
    .line 200
    goto :goto_0

    .line 201
    :cond_a
    :goto_2
    move p1, v4

    .line 202
    :cond_b
    invoke-virtual {v1, p1}, LB0/O;->T(I)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_3

    .line 206
    .line 207
    :cond_c
    iget-object v7, v0, LD1/v;->j0:Landroid/widget/ImageView;

    .line 208
    .line 209
    if-ne v7, p1, :cond_d

    .line 210
    .line 211
    const/16 p1, 0xe

    .line 212
    .line 213
    move-object v0, v1

    .line 214
    check-cast v0, Lm0/f;

    .line 215
    .line 216
    invoke-virtual {v0, p1}, Lm0/f;->c(I)Z

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    if-eqz p1, :cond_11

    .line 221
    .line 222
    check-cast v1, LB0/O;

    .line 223
    .line 224
    invoke-virtual {v1}, LB0/O;->c0()V

    .line 225
    .line 226
    .line 227
    iget-boolean p1, v1, LB0/O;->l0:Z

    .line 228
    .line 229
    xor-int/2addr p1, v6

    .line 230
    invoke-virtual {v1}, LB0/O;->c0()V

    .line 231
    .line 232
    .line 233
    iget-boolean v0, v1, LB0/O;->l0:Z

    .line 234
    .line 235
    if-eq v0, p1, :cond_11

    .line 236
    .line 237
    iput-boolean p1, v1, LB0/O;->l0:Z

    .line 238
    .line 239
    iget-object v0, v1, LB0/O;->R:LB0/X;

    .line 240
    .line 241
    iget-object v0, v0, LB0/X;->N:Lp0/I;

    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    invoke-static {}, Lp0/I;->b()Lp0/H;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    iget-object v0, v0, Lp0/I;->a:Landroid/os/Handler;

    .line 251
    .line 252
    invoke-virtual {v0, v3, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    iput-object v0, v2, Lp0/H;->a:Landroid/os/Message;

    .line 257
    .line 258
    invoke-virtual {v2}, Lp0/H;->b()V

    .line 259
    .line 260
    .line 261
    new-instance v0, LB0/I;

    .line 262
    .line 263
    invoke-direct {v0, p1, v5}, LB0/I;-><init>(ZI)V

    .line 264
    .line 265
    .line 266
    iget-object p1, v1, LB0/O;->S:Lx/e;

    .line 267
    .line 268
    invoke-virtual {p1, v4, v0}, Lx/e;->j(ILp0/u;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1}, LB0/O;->Y()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1}, Lx/e;->g()V

    .line 275
    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_d
    iget-object v1, v0, LD1/v;->o0:Landroid/view/View;

    .line 279
    .line 280
    if-ne v1, p1, :cond_e

    .line 281
    .line 282
    invoke-virtual {v2}, LD1/B;->g()V

    .line 283
    .line 284
    .line 285
    iget-object p1, v0, LD1/v;->R:LD1/q;

    .line 286
    .line 287
    invoke-virtual {v0, p1, v1}, LD1/v;->e(LO1/C;Landroid/view/View;)V

    .line 288
    .line 289
    .line 290
    goto :goto_3

    .line 291
    :cond_e
    iget-object v1, v0, LD1/v;->p0:Landroid/view/View;

    .line 292
    .line 293
    if-ne v1, p1, :cond_f

    .line 294
    .line 295
    invoke-virtual {v2}, LD1/B;->g()V

    .line 296
    .line 297
    .line 298
    iget-object p1, v0, LD1/v;->S:LD1/n;

    .line 299
    .line 300
    invoke-virtual {v0, p1, v1}, LD1/v;->e(LO1/C;Landroid/view/View;)V

    .line 301
    .line 302
    .line 303
    goto :goto_3

    .line 304
    :cond_f
    iget-object v1, v0, LD1/v;->q0:Landroid/view/View;

    .line 305
    .line 306
    if-ne v1, p1, :cond_10

    .line 307
    .line 308
    invoke-virtual {v2}, LD1/B;->g()V

    .line 309
    .line 310
    .line 311
    iget-object p1, v0, LD1/v;->U:LD1/j;

    .line 312
    .line 313
    invoke-virtual {v0, p1, v1}, LD1/v;->e(LO1/C;Landroid/view/View;)V

    .line 314
    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_10
    iget-object v1, v0, LD1/v;->l0:Landroid/widget/ImageView;

    .line 318
    .line 319
    if-ne v1, p1, :cond_11

    .line 320
    .line 321
    invoke-virtual {v2}, LD1/B;->g()V

    .line 322
    .line 323
    .line 324
    iget-object p1, v0, LD1/v;->T:LD1/j;

    .line 325
    .line 326
    invoke-virtual {v0, p1, v1}, LD1/v;->e(LO1/C;Landroid/view/View;)V

    .line 327
    .line 328
    .line 329
    :cond_11
    :goto_3
    return-void
.end method

.method public final onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, LD1/k;->G:LD1/v;

    .line 2
    .line 3
    iget-boolean v1, v0, LD1/v;->m1:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, LD1/v;->G:LD1/B;

    .line 8
    .line 9
    invoke-virtual {v0}, LD1/B;->h()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final synthetic onRepeatModeChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic p(LB0/w;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic q(Lm0/N;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic t(Lm0/I;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic u(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic v(LB0/w;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic x()V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic y(Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic z(IZ)V
    .locals 0

    .line 1
    return-void
.end method
