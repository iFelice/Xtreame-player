.class public final Lb7/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/W;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lb7/m;->G:I

    iput-object p1, p0, Lb7/m;->H:Landroid/app/Activity;

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/CatchupPlayerActivity;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lb7/m;->G:I

    invoke-direct {p0, p1, v0}, Lb7/m;-><init>(Landroid/app/Activity;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lpe/hf/black20/PlayStreamEPGActivity;)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    iput v0, p0, Lb7/m;->G:I

    invoke-direct {p0, p1, v0}, Lb7/m;-><init>(Landroid/app/Activity;I)V

    return-void
.end method


# virtual methods
.method public final A(Lm0/m0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic B(Lm0/L;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic D(Lm0/V;)V
    .locals 0

    .line 1
    return-void
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

.method public final m(I)V
    .locals 5

    .line 1
    iget v0, p0, Lb7/m;->G:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lb7/m;->H:Landroid/app/Activity;

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    if-ne p1, v4, :cond_1

    .line 12
    .line 13
    check-cast v3, Lpe/hf/black20/PlayStreamEPGActivity;

    .line 14
    .line 15
    iget-boolean p1, v3, Lpe/hf/black20/PlayStreamEPGActivity;->E2:Z

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, v3, Lpe/hf/black20/PlayStreamEPGActivity;->B0:Landroid/widget/ProgressBar;

    .line 20
    .line 21
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const-string p1, "buffering"

    .line 25
    .line 26
    iput-object p1, v3, Lpe/hf/black20/PlayStreamEPGActivity;->f1:Ljava/lang/String;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    check-cast v3, Lpe/hf/black20/PlayStreamEPGActivity;

    .line 30
    .line 31
    iget-object p1, v3, Lpe/hf/black20/PlayStreamEPGActivity;->B0:Landroid/widget/ProgressBar;

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    const-string p1, "playing"

    .line 37
    .line 38
    iput-object p1, v3, Lpe/hf/black20/PlayStreamEPGActivity;->f1:Ljava/lang/String;

    .line 39
    .line 40
    :goto_0
    return-void

    .line 41
    :pswitch_0
    if-ne p1, v4, :cond_2

    .line 42
    .line 43
    check-cast v3, Lpe/hf/black20/CatchupPlayerActivity;

    .line 44
    .line 45
    iget-boolean p1, v3, Lpe/hf/black20/CatchupPlayerActivity;->C0:Z

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    iget-object p1, v3, Lpe/hf/black20/CatchupPlayerActivity;->O:Landroid/widget/ProgressBar;

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    check-cast v3, Lpe/hf/black20/CatchupPlayerActivity;

    .line 56
    .line 57
    iget-object p1, v3, Lpe/hf/black20/CatchupPlayerActivity;->O:Landroid/widget/ProgressBar;

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_1
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic n(Lm0/S;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final o(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .locals 2

    .line 1
    iget p1, p0, Lb7/m;->G:I

    .line 2
    .line 3
    const-string v0, "-------------onRepeatModeChanged-------------"

    .line 4
    .line 5
    const-string v1, "XCIPTV_TAG"

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final p(LB0/w;)V
    .locals 11

    .line 1
    iget p1, p0, Lb7/m;->G:I

    .line 2
    .line 3
    iget-object v0, p0, Lb7/m;->H:Landroid/app/Activity;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "FAV"

    .line 7
    .line 8
    const-string v3, "TV"

    .line 9
    .line 10
    const-string v4, "ORT_WHICH_CAT"

    .line 11
    .line 12
    const-string v5, "-------------onPlayerError-------------"

    .line 13
    .line 14
    const-string v6, "XCIPTV_TAG"

    .line 15
    .line 16
    const-string v7, "hls"

    .line 17
    .line 18
    const/4 v8, 0x1

    .line 19
    const-string v9, "other"

    .line 20
    .line 21
    const/4 v10, 0x2

    .line 22
    packed-switch p1, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    check-cast v0, Lpe/hf/black20/PlayStreamEPGActivity;

    .line 29
    .line 30
    iget-object p1, v0, Lpe/hf/black20/PlayStreamEPGActivity;->l2:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 36
    .line 37
    .line 38
    const/4 v5, -0x1

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    sparse-switch v6, :sswitch_data_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :sswitch_0
    const-string v6, "other"

    .line 48
    .line 49
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v5, 0x2

    .line 57
    goto :goto_0

    .line 58
    :sswitch_1
    const-string v6, "hls"

    .line 59
    .line 60
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 v5, 0x1

    .line 68
    goto :goto_0

    .line 69
    :sswitch_2
    const-string v6, ""

    .line 70
    .line 71
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_2

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    const/4 v5, 0x0

    .line 79
    :goto_0
    packed-switch v5, :pswitch_data_1

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :pswitch_0
    iput-object v7, v0, Lpe/hf/black20/PlayStreamEPGActivity;->l2:Ljava/lang/String;

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :pswitch_1
    iput-object v9, v0, Lpe/hf/black20/PlayStreamEPGActivity;->l2:Ljava/lang/String;

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :pswitch_2
    iput-object v7, v0, Lpe/hf/black20/PlayStreamEPGActivity;->l2:Ljava/lang/String;

    .line 90
    .line 91
    :goto_1
    iget-object p1, v0, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 92
    .line 93
    invoke-virtual {p1}, LB0/O;->c0()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v1}, LB0/O;->X(LB0/w;)V

    .line 97
    .line 98
    .line 99
    new-instance v1, Lo0/c;

    .line 100
    .line 101
    sget-object v5, Lz4/d0;->K:Lz4/d0;

    .line 102
    .line 103
    iget-object v6, p1, LB0/O;->N0:LB0/v0;

    .line 104
    .line 105
    iget-wide v6, v6, LB0/v0;->s:J

    .line 106
    .line 107
    invoke-direct {v1, v5}, Lo0/c;-><init>(Ljava/util/List;)V

    .line 108
    .line 109
    .line 110
    iput-object v1, p1, LB0/O;->G0:Lo0/c;

    .line 111
    .line 112
    iget-object p1, v0, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 113
    .line 114
    sget-object v1, Lpe/hf/black20/PlayStreamEPGActivity;->Q2:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lpe/hf/black20/PlayStreamEPGActivity;->H(Landroid/net/Uri;)LO0/a;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {p1, v1}, LB0/O;->Q(LO0/a;)V

    .line 125
    .line 126
    .line 127
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1, v4, v3}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-nez p1, :cond_3

    .line 140
    .line 141
    invoke-static {v4, v3, v2}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_4

    .line 146
    .line 147
    :cond_3
    iget-object p1, v0, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 148
    .line 149
    invoke-virtual {p1, v10}, LB0/O;->T(I)V

    .line 150
    .line 151
    .line 152
    :cond_4
    iget-object p1, v0, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 153
    .line 154
    invoke-virtual {p1}, LB0/O;->K()V

    .line 155
    .line 156
    .line 157
    iget-object p1, v0, Lpe/hf/black20/PlayStreamEPGActivity;->J2:LB0/O;

    .line 158
    .line 159
    invoke-virtual {p1, v8}, LB0/O;->S(Z)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :pswitch_3
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    check-cast v0, Lpe/hf/black20/CatchupPlayerActivity;

    .line 167
    .line 168
    iget-object p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->B0:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 174
    .line 175
    .line 176
    const/4 v5, -0x1

    .line 177
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    sparse-switch v6, :sswitch_data_1

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :sswitch_3
    const-string v6, "other"

    .line 186
    .line 187
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-nez p1, :cond_5

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_5
    const/4 v5, 0x2

    .line 195
    goto :goto_2

    .line 196
    :sswitch_4
    const-string v6, "hls"

    .line 197
    .line 198
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-nez p1, :cond_6

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_6
    const/4 v5, 0x1

    .line 206
    goto :goto_2

    .line 207
    :sswitch_5
    const-string v6, ""

    .line 208
    .line 209
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-nez p1, :cond_7

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_7
    const/4 v5, 0x0

    .line 217
    :goto_2
    packed-switch v5, :pswitch_data_2

    .line 218
    .line 219
    .line 220
    goto :goto_3

    .line 221
    :pswitch_4
    iput-object v7, v0, Lpe/hf/black20/CatchupPlayerActivity;->B0:Ljava/lang/String;

    .line 222
    .line 223
    goto :goto_3

    .line 224
    :pswitch_5
    iput-object v9, v0, Lpe/hf/black20/CatchupPlayerActivity;->B0:Ljava/lang/String;

    .line 225
    .line 226
    goto :goto_3

    .line 227
    :pswitch_6
    iput-object v7, v0, Lpe/hf/black20/CatchupPlayerActivity;->B0:Ljava/lang/String;

    .line 228
    .line 229
    :goto_3
    iget-object p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->z0:LB0/O;

    .line 230
    .line 231
    invoke-virtual {p1}, LB0/O;->c0()V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, v1}, LB0/O;->X(LB0/w;)V

    .line 235
    .line 236
    .line 237
    new-instance v1, Lo0/c;

    .line 238
    .line 239
    sget-object v5, Lz4/d0;->K:Lz4/d0;

    .line 240
    .line 241
    iget-object v6, p1, LB0/O;->N0:LB0/v0;

    .line 242
    .line 243
    iget-wide v6, v6, LB0/v0;->s:J

    .line 244
    .line 245
    invoke-direct {v1, v5}, Lo0/c;-><init>(Ljava/util/List;)V

    .line 246
    .line 247
    .line 248
    iput-object v1, p1, LB0/O;->G0:Lo0/c;

    .line 249
    .line 250
    iget-object p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->z0:LB0/O;

    .line 251
    .line 252
    iget-object v1, v0, Lpe/hf/black20/CatchupPlayerActivity;->K:Ljava/lang/String;

    .line 253
    .line 254
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v0, v1}, Lpe/hf/black20/CatchupPlayerActivity;->c(Landroid/net/Uri;)LO0/a;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {p1, v1}, LB0/O;->Q(LO0/a;)V

    .line 263
    .line 264
    .line 265
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {p1, v4, v3}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    if-nez p1, :cond_8

    .line 278
    .line 279
    invoke-static {v4, v3, v2}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 280
    .line 281
    .line 282
    move-result p1

    .line 283
    if-eqz p1, :cond_9

    .line 284
    .line 285
    :cond_8
    iget-object p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->z0:LB0/O;

    .line 286
    .line 287
    invoke-virtual {p1, v10}, LB0/O;->T(I)V

    .line 288
    .line 289
    .line 290
    :cond_9
    iget-object p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->z0:LB0/O;

    .line 291
    .line 292
    invoke-virtual {p1}, LB0/O;->K()V

    .line 293
    .line 294
    .line 295
    iget-object p1, v0, Lpe/hf/black20/CatchupPlayerActivity;->z0:LB0/O;

    .line 296
    .line 297
    invoke-virtual {p1, v8}, LB0/O;->S(Z)V

    .line 298
    .line 299
    .line 300
    return-void

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x193ef -> :sswitch_1
        0x6527f10 -> :sswitch_0
    .end sparse-switch

    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_5
        0x193ef -> :sswitch_4
        0x6527f10 -> :sswitch_3
    .end sparse-switch

    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
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

.method public final v(LB0/w;)V
    .locals 2

    .line 1
    iget p1, p0, Lb7/m;->G:I

    .line 2
    .line 3
    const-string v0, "-------------onPlayerErrorChanged-------------"

    .line 4
    .line 5
    const-string v1, "XCIPTV_TAG"

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
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
