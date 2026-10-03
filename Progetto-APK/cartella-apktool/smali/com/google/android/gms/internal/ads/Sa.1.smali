.class public final Lcom/google/android/gms/internal/ads/Sa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/RB;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ja;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Oa;Lcom/google/android/gms/internal/ads/Na;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/Sa;->a:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Sa;->e:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Sa;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Sa;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Sa;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/oh;Landroid/net/Uri$Builder;Ljava/lang/String;Landroid/view/InputEvent;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/Sa;->a:I

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Sa;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Sa;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Sa;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Sa;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Lcom/google/android/gms/internal/ads/Sa;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Sa;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Sa;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Sa;->e:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Sa;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)LD4/b;
    .locals 10

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/te;

    .line 2
    .line 3
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/te;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sa;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/gms/internal/ads/Ja;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ja;->a()Lcom/google/android/gms/internal/ads/Fa;

    .line 11
    .line 12
    .line 13
    move-result-object v8

    .line 14
    const-string v0, "callJs > getEngine: Promise created"

    .line 15
    .line 16
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v9, Lcom/google/android/gms/internal/ads/xc;

    .line 20
    .line 21
    const/16 v5, 0x8

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    move-object v0, v9

    .line 25
    move-object v1, p0

    .line 26
    move-object v2, v8

    .line 27
    move-object v3, p1

    .line 28
    move-object v4, v7

    .line 29
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/xc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Lcom/google/android/gms/internal/ads/x;

    .line 33
    .line 34
    const/16 v0, 0xd

    .line 35
    .line 36
    invoke-direct {p1, v7, v8, v0}, Lcom/google/android/gms/internal/ads/x;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v8, v9, p1}, Lf/H;->r(Lcom/google/android/gms/internal/ads/ve;Lcom/google/android/gms/internal/ads/ue;)V

    .line 40
    .line 41
    .line 42
    return-object v7
.end method

.method public final zza(Ljava/lang/Object;)LD4/b;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lcom/google/android/gms/internal/ads/Sa;->a:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Sa;->c:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v2, v0

    .line 15
    check-cast v2, Lcom/google/android/gms/internal/ads/Aw;

    .line 16
    .line 17
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Sa;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lcom/google/android/gms/internal/ads/Xu;

    .line 20
    .line 21
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Sa;->e:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v3, La3/b;

    .line 24
    .line 25
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/Sa;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v6, Lcom/google/android/gms/internal/ads/iv;

    .line 28
    .line 29
    move-object/from16 v7, p1

    .line 30
    .line 31
    check-cast v7, Lcom/google/android/gms/internal/ads/pw;

    .line 32
    .line 33
    monitor-enter v2

    .line 34
    :try_start_0
    iput-boolean v5, v2, Lcom/google/android/gms/internal/ads/Aw;->d:Z

    .line 35
    .line 36
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lcom/google/android/gms/internal/ads/vv;

    .line 39
    .line 40
    check-cast v0, Lcom/google/android/gms/internal/ads/gv;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/gv;->a:Lcom/google/android/gms/internal/ads/cj;

    .line 43
    .line 44
    iput-object v0, v7, Lcom/google/android/gms/internal/ads/pw;->a:Lcom/google/android/gms/internal/ads/cj;

    .line 45
    .line 46
    iget-boolean v0, v2, Lcom/google/android/gms/internal/ads/Aw;->c:Z

    .line 47
    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/iv;->g:Lcom/google/android/gms/internal/ads/rw;

    .line 51
    .line 52
    invoke-virtual {v3, v0, v7}, La3/b;->t(Lcom/google/android/gms/internal/ads/rw;Lcom/google/android/gms/internal/ads/pw;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    monitor-exit v2

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/ww;

    .line 64
    .line 65
    invoke-direct {v0, v7, v6}, Lcom/google/android/gms/internal/ads/ww;-><init>(Lcom/google/android/gms/internal/ads/pw;Lcom/google/android/gms/internal/ads/iv;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    monitor-exit v2

    .line 73
    :goto_0
    return-object v0

    .line 74
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw v0

    .line 76
    :pswitch_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Sa;->c:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Lcom/google/android/gms/internal/ads/yq;

    .line 79
    .line 80
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Sa;->d:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v2, Lcom/google/android/gms/internal/ads/Ov;

    .line 83
    .line 84
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Sa;->e:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v3, Lcom/google/android/gms/internal/ads/Tv;

    .line 87
    .line 88
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/Sa;->b:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v4, Lcom/google/android/gms/internal/ads/Om;

    .line 91
    .line 92
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/yq;->c(Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Om;)Lcom/google/android/gms/internal/ads/KB;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    return-object v0

    .line 97
    :pswitch_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Sa;->c:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v0, Lcom/google/android/gms/internal/ads/rr;

    .line 100
    .line 101
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Sa;->d:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v2, Lcom/google/android/gms/internal/ads/Ov;

    .line 104
    .line 105
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/Sa;->e:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v4, Lcom/google/android/gms/internal/ads/Tv;

    .line 108
    .line 109
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/Sa;->b:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v5, Lcom/google/android/gms/internal/ads/pq;

    .line 112
    .line 113
    move-object/from16 v6, p1

    .line 114
    .line 115
    check-cast v6, Ljava/lang/Throwable;

    .line 116
    .line 117
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/rr;->j:Landroid/content/Context;

    .line 118
    .line 119
    const/16 v7, 0xc

    .line 120
    .line 121
    invoke-static {v6, v7}, LU4/a;->h(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/Ow;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/Ov;->E:Ljava/lang/String;

    .line 126
    .line 127
    invoke-interface {v6, v7}, Lcom/google/android/gms/internal/ads/Ow;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ow;

    .line 128
    .line 129
    .line 130
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Ow;->zzi()Lcom/google/android/gms/internal/ads/Ow;

    .line 131
    .line 132
    .line 133
    invoke-interface {v5, v4, v2}, Lcom/google/android/gms/internal/ads/pq;->a(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;)LD4/b;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    iget v7, v2, Lcom/google/android/gms/internal/ads/Ov;->R:I

    .line 138
    .line 139
    int-to-long v7, v7

    .line 140
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 141
    .line 142
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/rr;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 143
    .line 144
    invoke-static {v5, v7, v8, v9, v10}, Lcom/google/android/gms/internal/ads/Cw;->e2(LD4/b;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LD4/b;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/rr;->c:Lcom/google/android/gms/internal/ads/hx;

    .line 149
    .line 150
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/rr;->h:Lcom/google/android/gms/internal/ads/mr;

    .line 151
    .line 152
    invoke-virtual {v8, v4, v2, v5, v7}, Lcom/google/android/gms/internal/ads/mr;->b(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;LD4/b;Lcom/google/android/gms/internal/ads/hx;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/rr;->k:Lcom/google/android/gms/internal/ads/Tw;

    .line 156
    .line 157
    invoke-static {v5, v0, v6, v3}, Lcom/google/android/gms/internal/measurement/H1;->N(LD4/b;Lcom/google/android/gms/internal/ads/Tw;Lcom/google/android/gms/internal/ads/Ow;Z)V

    .line 158
    .line 159
    .line 160
    return-object v5

    .line 161
    :pswitch_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Sa;->c:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v0, Lcom/google/android/gms/internal/ads/yq;

    .line 164
    .line 165
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Sa;->d:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v2, Lcom/google/android/gms/internal/ads/Ov;

    .line 168
    .line 169
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Sa;->e:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v3, Lcom/google/android/gms/internal/ads/Tv;

    .line 172
    .line 173
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/Sa;->b:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v4, Lcom/google/android/gms/internal/ads/Om;

    .line 176
    .line 177
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/yq;->c(Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Om;)Lcom/google/android/gms/internal/ads/KB;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    return-object v0

    .line 182
    :pswitch_3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Sa;->c:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v0, Lcom/google/android/gms/internal/ads/Jq;

    .line 185
    .line 186
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/Sa;->d:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v5, Landroid/net/Uri;

    .line 189
    .line 190
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/Sa;->e:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v6, Lcom/google/android/gms/internal/ads/Tv;

    .line 193
    .line 194
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/Sa;->b:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v7, Lcom/google/android/gms/internal/ads/Ov;

    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    :try_start_1
    new-instance v8, Lo/g;

    .line 202
    .line 203
    invoke-direct {v8}, Lo/g;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v8}, Lo/g;->a()Lm2/l;

    .line 207
    .line 208
    .line 209
    move-result-object v8

    .line 210
    iget-object v9, v8, Lm2/l;->H:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v9, Landroid/content/Intent;

    .line 213
    .line 214
    invoke-virtual {v9, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 215
    .line 216
    .line 217
    new-instance v11, Ln3/f;

    .line 218
    .line 219
    iget-object v5, v8, Lm2/l;->H:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v5, Landroid/content/Intent;

    .line 222
    .line 223
    invoke-direct {v11, v5, v4}, Ln3/f;-><init>(Landroid/content/Intent;Ln3/a;)V

    .line 224
    .line 225
    .line 226
    new-instance v5, Lcom/google/android/gms/internal/ads/te;

    .line 227
    .line 228
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/te;-><init>()V

    .line 229
    .line 230
    .line 231
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/Jq;->c:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast v8, Lcom/google/android/gms/internal/ads/Ng;

    .line 234
    .line 235
    new-instance v9, La3/b;

    .line 236
    .line 237
    invoke-direct {v9, v6, v7, v4}, La3/b;-><init>(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    new-instance v6, Lcom/google/android/gms/internal/ads/x;

    .line 241
    .line 242
    new-instance v7, LO1/J;

    .line 243
    .line 244
    invoke-direct {v7, v5, v2}, LO1/J;-><init>(Ljava/lang/Object;I)V

    .line 245
    .line 246
    .line 247
    const/16 v10, 0x16

    .line 248
    .line 249
    invoke-direct {v6, v10, v7, v4}, Lcom/google/android/gms/internal/ads/x;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v8, v9, v6}, Lcom/google/android/gms/internal/ads/Ng;->c(La3/b;Lcom/google/android/gms/internal/ads/x;)Lcom/google/android/gms/internal/ads/Mg;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    new-instance v6, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 257
    .line 258
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/Mg;->q0:Lcom/google/android/gms/internal/ads/MJ;

    .line 259
    .line 260
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    move-object v13, v7

    .line 265
    check-cast v13, Lcom/google/android/gms/internal/ads/Qj;

    .line 266
    .line 267
    new-instance v15, Lp3/a;

    .line 268
    .line 269
    invoke-direct {v15, v3, v3, v3, v3}, Lp3/a;-><init>(IIZZ)V

    .line 270
    .line 271
    .line 272
    const/4 v12, 0x0

    .line 273
    const/4 v14, 0x0

    .line 274
    const/16 v16, 0x0

    .line 275
    .line 276
    const/16 v17, 0x0

    .line 277
    .line 278
    move-object v10, v6

    .line 279
    invoke-direct/range {v10 .. v17}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Ln3/f;Ll3/a;Ln3/m;Ln3/c;Lp3/a;Lcom/google/android/gms/internal/ads/Ef;Lcom/google/android/gms/internal/ads/Ok;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/te;->b(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Jq;->e:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast v0, Lcom/google/android/gms/internal/ads/Nv;

    .line 288
    .line 289
    const/4 v3, 0x2

    .line 290
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/Nv;->c(II)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Mg;->G0()Lcom/google/android/gms/internal/ads/Vk;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 298
    .line 299
    .line 300
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 301
    return-object v0

    .line 302
    :catchall_1
    move-exception v0

    .line 303
    const-string v2, "Error in CustomTabsAdRenderer"

    .line 304
    .line 305
    invoke-static {v2, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    .line 307
    .line 308
    throw v0

    .line 309
    :pswitch_4
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Sa;->c:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast v0, Lcom/google/android/gms/internal/ads/yq;

    .line 312
    .line 313
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Sa;->d:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast v2, Lcom/google/android/gms/internal/ads/Ov;

    .line 316
    .line 317
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Sa;->e:Ljava/lang/Object;

    .line 318
    .line 319
    check-cast v3, Lcom/google/android/gms/internal/ads/Tv;

    .line 320
    .line 321
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/Sa;->b:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast v4, Lcom/google/android/gms/internal/ads/Om;

    .line 324
    .line 325
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/yq;->c(Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Om;)Lcom/google/android/gms/internal/ads/KB;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    return-object v0

    .line 330
    :pswitch_5
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Sa;->c:Ljava/lang/Object;

    .line 331
    .line 332
    check-cast v0, Lcom/google/android/gms/internal/ads/ip;

    .line 333
    .line 334
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Sa;->d:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast v2, Lcom/google/android/gms/internal/ads/hp;

    .line 337
    .line 338
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Sa;->e:Ljava/lang/Object;

    .line 339
    .line 340
    check-cast v3, Lcom/google/android/gms/internal/ads/Wc;

    .line 341
    .line 342
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/Sa;->b:Ljava/lang/Object;

    .line 343
    .line 344
    check-cast v4, Lcom/google/android/gms/internal/ads/RB;

    .line 345
    .line 346
    move-object/from16 v5, p1

    .line 347
    .line 348
    check-cast v5, Lcom/google/android/gms/internal/ads/ep;

    .line 349
    .line 350
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ip;->a:Lcom/google/android/gms/internal/ads/jC;

    .line 351
    .line 352
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/hp;->b(Lcom/google/android/gms/internal/ads/Wc;)LD4/b;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-static {v2, v4, v0}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    return-object v0

    .line 361
    :pswitch_6
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Sa;->c:Ljava/lang/Object;

    .line 362
    .line 363
    move-object v3, v0

    .line 364
    check-cast v3, Lcom/google/android/gms/internal/ads/oh;

    .line 365
    .line 366
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Sa;->d:Ljava/lang/Object;

    .line 367
    .line 368
    move-object v4, v0

    .line 369
    check-cast v4, Landroid/net/Uri$Builder;

    .line 370
    .line 371
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Sa;->b:Ljava/lang/Object;

    .line 372
    .line 373
    check-cast v0, Ljava/lang/String;

    .line 374
    .line 375
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/Sa;->e:Ljava/lang/Object;

    .line 376
    .line 377
    check-cast v6, Landroid/view/InputEvent;

    .line 378
    .line 379
    move-object/from16 v7, p1

    .line 380
    .line 381
    check-cast v7, Ljava/lang/Integer;

    .line 382
    .line 383
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 387
    .line 388
    .line 389
    move-result v7

    .line 390
    if-ne v7, v5, :cond_2

    .line 391
    .line 392
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 393
    .line 394
    .line 395
    move-result-object v5

    .line 396
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 397
    .line 398
    .line 399
    move-result-object v5

    .line 400
    sget-object v7, Lcom/google/android/gms/internal/ads/Q7;->z9:Lcom/google/android/gms/internal/ads/J7;

    .line 401
    .line 402
    sget-object v8, Ll3/q;->d:Ll3/q;

    .line 403
    .line 404
    iget-object v9, v8, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 405
    .line 406
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v7

    .line 410
    check-cast v7, Ljava/lang/String;

    .line 411
    .line 412
    const-string v9, "1"

    .line 413
    .line 414
    invoke-virtual {v5, v7, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 415
    .line 416
    .line 417
    sget-object v7, Lcom/google/android/gms/internal/ads/Q7;->y9:Lcom/google/android/gms/internal/ads/J7;

    .line 418
    .line 419
    iget-object v8, v8, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 420
    .line 421
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v7

    .line 425
    check-cast v7, Ljava/lang/String;

    .line 426
    .line 427
    const-string v9, "12"

    .line 428
    .line 429
    invoke-virtual {v5, v7, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 430
    .line 431
    .line 432
    sget-object v7, Lcom/google/android/gms/internal/ads/Q7;->A9:Lcom/google/android/gms/internal/ads/J7;

    .line 433
    .line 434
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v7

    .line 438
    check-cast v7, Ljava/lang/CharSequence;

    .line 439
    .line 440
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    if-eqz v0, :cond_1

    .line 445
    .line 446
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->B9:Lcom/google/android/gms/internal/ads/J7;

    .line 447
    .line 448
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    check-cast v0, Ljava/lang/String;

    .line 453
    .line 454
    invoke-virtual {v5, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 455
    .line 456
    .line 457
    :cond_1
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/oh;->c:Lcom/google/android/gms/internal/ads/nq;

    .line 462
    .line 463
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 464
    .line 465
    .line 466
    :try_start_2
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/nq;->a:LI1/d;

    .line 467
    .line 468
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v5, v0, v6}, LI1/d;->e(Landroid/net/Uri;Landroid/view/InputEvent;)LD4/b;

    .line 472
    .line 473
    .line 474
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 475
    goto :goto_2

    .line 476
    :catch_0
    move-exception v0

    .line 477
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aC;->r(LD4/b;)Lcom/google/android/gms/internal/ads/aC;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    new-instance v5, Lcom/google/android/gms/internal/ads/No;

    .line 486
    .line 487
    invoke-direct {v5, v4, v2}, Lcom/google/android/gms/internal/ads/No;-><init>(Ljava/lang/Object;I)V

    .line 488
    .line 489
    .line 490
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/oh;->f:Lcom/google/android/gms/internal/ads/jC;

    .line 491
    .line 492
    invoke-static {v0, v5, v2}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    goto :goto_3

    .line 497
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->y9:Lcom/google/android/gms/internal/ads/J7;

    .line 498
    .line 499
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 500
    .line 501
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 502
    .line 503
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    check-cast v0, Ljava/lang/String;

    .line 508
    .line 509
    const-string v2, "10"

    .line 510
    .line 511
    invoke-virtual {v4, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    :goto_3
    return-object v0

    .line 523
    :pswitch_7
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/Sa;->a(Ljava/lang/Object;)LD4/b;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    return-object v0

    .line 528
    nop

    .line 529
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
