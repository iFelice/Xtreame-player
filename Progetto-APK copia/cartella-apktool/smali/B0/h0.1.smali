.class public final synthetic LB0/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;

.field public final synthetic I:Ljava/lang/Object;

.field public final synthetic J:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, LB0/h0;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LB0/h0;->H:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, LB0/h0;->I:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p3, p0, LB0/h0;->J:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, LB0/h0;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, LB0/h0;->J:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v3, p0, LB0/h0;->I:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v4, p0, LB0/h0;->H:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast v4, LP1/t;

    .line 14
    .line 15
    check-cast v3, Ljava/lang/String;

    .line 16
    .line 17
    check-cast v2, Ljava/util/List;

    .line 18
    .line 19
    const-string v0, "this$0"

    .line 20
    .line 21
    invoke-static {v4, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "$sql"

    .line 25
    .line 26
    invoke-static {v3, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "$inputArguments"

    .line 30
    .line 31
    invoke-static {v2, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    throw v0

    .line 36
    :pswitch_0
    check-cast v4, LD1/H;

    .line 37
    .line 38
    check-cast v3, Landroid/view/SurfaceView;

    .line 39
    .line 40
    check-cast v2, Ljava/lang/Runnable;

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {v3}, LC0/E;->k(Landroid/view/SurfaceView;)Landroid/view/AttachedSurfaceControl;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-static {}, LA0/F;->n()Landroid/window/SurfaceSyncGroup;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iput-object v3, v4, LD1/H;->a:Landroid/window/SurfaceSyncGroup;

    .line 57
    .line 58
    new-instance v4, LD1/G;

    .line 59
    .line 60
    invoke-direct {v4, v1}, LD1/G;-><init>(I)V

    .line 61
    .line 62
    .line 63
    invoke-static {v3, v0, v4}, LA0/F;->w(Landroid/window/SurfaceSyncGroup;Landroid/view/AttachedSurfaceControl;LD1/G;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 71
    .line 72
    .line 73
    invoke-static {}, LD0/a;->d()Landroid/view/SurfaceControl$Transaction;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v0, v1}, LC0/E;->u(Landroid/view/AttachedSurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void

    .line 81
    :pswitch_1
    check-cast v4, Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 82
    .line 83
    check-cast v3, Lm0/t;

    .line 84
    .line 85
    check-cast v2, LB0/j;

    .line 86
    .line 87
    iget-object v0, v4, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, LU0/N;

    .line 90
    .line 91
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 92
    .line 93
    check-cast v0, LB0/L;

    .line 94
    .line 95
    iget-object v0, v0, LB0/L;->G:LB0/O;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    iget-object v0, v0, LB0/O;->X:LC0/a;

    .line 101
    .line 102
    check-cast v0, LC0/A;

    .line 103
    .line 104
    invoke-virtual {v0}, LC0/A;->T()LC0/b;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    new-instance v4, LC0/j;

    .line 109
    .line 110
    const/4 v5, 0x1

    .line 111
    invoke-direct {v4, v1, v3, v2, v5}, LC0/j;-><init>(LC0/b;Lm0/t;LB0/j;I)V

    .line 112
    .line 113
    .line 114
    const/16 v2, 0x3f9

    .line 115
    .line 116
    invoke-virtual {v0, v1, v2, v4}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :pswitch_2
    check-cast v4, LU0/s;

    .line 121
    .line 122
    check-cast v3, LU0/O;

    .line 123
    .line 124
    check-cast v2, Lm0/o0;

    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    new-instance v0, LU0/Q;

    .line 130
    .line 131
    iget-object v1, v4, LU0/s;->J:Lm0/t;

    .line 132
    .line 133
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-direct {v0, v2, v1}, LU0/Q;-><init>(Ljava/lang/Exception;Lm0/t;)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v3, v0}, LU0/O;->i(LU0/Q;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :pswitch_3
    check-cast v4, LG0/o;

    .line 144
    .line 145
    check-cast v3, LG0/p;

    .line 146
    .line 147
    check-cast v2, Ljava/lang/Exception;

    .line 148
    .line 149
    iget v0, v4, LG0/o;->a:I

    .line 150
    .line 151
    iget-object v1, v4, LG0/o;->b:LO0/y;

    .line 152
    .line 153
    invoke-interface {v3, v0, v1, v2}, LG0/p;->N(ILO0/y;Ljava/lang/Exception;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :pswitch_4
    check-cast v4, LD0/n;

    .line 158
    .line 159
    check-cast v3, Lm0/t;

    .line 160
    .line 161
    check-cast v2, LB0/j;

    .line 162
    .line 163
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 167
    .line 168
    iget-object v0, v4, LD0/n;->b:LD0/o;

    .line 169
    .line 170
    check-cast v0, LB0/L;

    .line 171
    .line 172
    iget-object v0, v0, LB0/L;->G:LB0/O;

    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    iget-object v0, v0, LB0/O;->X:LC0/a;

    .line 178
    .line 179
    check-cast v0, LC0/A;

    .line 180
    .line 181
    invoke-virtual {v0}, LC0/A;->T()LC0/b;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    new-instance v5, LC0/j;

    .line 186
    .line 187
    invoke-direct {v5, v4, v3, v2, v1}, LC0/j;-><init>(LC0/b;Lm0/t;LB0/j;I)V

    .line 188
    .line 189
    .line 190
    const/16 v1, 0x3f1

    .line 191
    .line 192
    invoke-virtual {v0, v4, v1, v5}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :pswitch_5
    check-cast v4, LB0/q0;

    .line 197
    .line 198
    check-cast v3, Landroid/util/Pair;

    .line 199
    .line 200
    check-cast v2, Ljava/lang/Exception;

    .line 201
    .line 202
    iget-object v0, v4, LB0/q0;->H:LB0/u0;

    .line 203
    .line 204
    iget-object v0, v0, LB0/u0;->h:LC0/a;

    .line 205
    .line 206
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v1, Ljava/lang/Integer;

    .line 209
    .line 210
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v3, LO0/y;

    .line 217
    .line 218
    check-cast v0, LC0/A;

    .line 219
    .line 220
    invoke-virtual {v0, v1, v3, v2}, LC0/A;->N(ILO0/y;Ljava/lang/Exception;)V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :pswitch_6
    check-cast v4, LB0/i0;

    .line 225
    .line 226
    check-cast v3, Lz4/E;

    .line 227
    .line 228
    check-cast v2, LO0/y;

    .line 229
    .line 230
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3}, Lz4/E;->m0()Lz4/d0;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    iget-object v3, v4, LB0/i0;->c:LC0/a;

    .line 238
    .line 239
    check-cast v3, LC0/A;

    .line 240
    .line 241
    iget-object v4, v3, LC0/A;->M:Lm0/Y;

    .line 242
    .line 243
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    iget-object v3, v3, LC0/A;->J:LC0/z;

    .line 247
    .line 248
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    invoke-static {v0}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    iput-object v5, v3, LC0/z;->b:Lz4/H;

    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    if-nez v5, :cond_1

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Lz4/d0;->get(I)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    check-cast v0, LO0/y;

    .line 268
    .line 269
    iput-object v0, v3, LC0/z;->e:LO0/y;

    .line 270
    .line 271
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    iput-object v2, v3, LC0/z;->f:LO0/y;

    .line 275
    .line 276
    :cond_1
    iget-object v0, v3, LC0/z;->d:LO0/y;

    .line 277
    .line 278
    if-nez v0, :cond_2

    .line 279
    .line 280
    iget-object v0, v3, LC0/z;->b:Lz4/H;

    .line 281
    .line 282
    iget-object v1, v3, LC0/z;->e:LO0/y;

    .line 283
    .line 284
    iget-object v2, v3, LC0/z;->a:Lm0/d0;

    .line 285
    .line 286
    invoke-static {v4, v0, v1, v2}, LC0/z;->b(Lm0/Y;Lz4/H;LO0/y;Lm0/d0;)LO0/y;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    iput-object v0, v3, LC0/z;->d:LO0/y;

    .line 291
    .line 292
    :cond_2
    check-cast v4, LB0/O;

    .line 293
    .line 294
    invoke-virtual {v4}, LB0/O;->x()Lm0/f0;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v3, v0}, LC0/z;->d(Lm0/f0;)V

    .line 299
    .line 300
    .line 301
    return-void

    .line 302
    nop

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
