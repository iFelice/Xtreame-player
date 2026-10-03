.class public final synthetic Lcom/google/android/gms/internal/ads/Bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/El;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/El;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/Bl;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Bl;->H:Lcom/google/android/gms/internal/ads/El;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Bl;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bl;->H:Lcom/google/android/gms/internal/ads/El;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/El;->l:Lcom/google/android/gms/internal/ads/Ll;

    .line 9
    .line 10
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ll;->zzi()V

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/El;->k:Lcom/google/android/gms/internal/ads/Il;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Il;->i:Lcom/google/android/gms/internal/ads/Ef;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ef;->destroy()V

    .line 22
    .line 23
    .line 24
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Il;->i:Lcom/google/android/gms/internal/ads/Ef;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Il;->j:Lcom/google/android/gms/internal/ads/Ef;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ef;->destroy()V

    .line 34
    .line 35
    .line 36
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Il;->j:Lcom/google/android/gms/internal/ads/Ef;

    .line 37
    .line 38
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Il;->k:Lcom/google/android/gms/internal/ads/Ef;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ef;->destroy()V

    .line 43
    .line 44
    .line 45
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Il;->k:Lcom/google/android/gms/internal/ads/Ef;

    .line 46
    .line 47
    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Il;->m:LD4/b;

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 53
    .line 54
    .line 55
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Il;->m:LD4/b;

    .line 56
    .line 57
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Il;->n:Lcom/google/android/gms/internal/ads/te;

    .line 58
    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/te;->cancel(Z)Z

    .line 62
    .line 63
    .line 64
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Il;->n:Lcom/google/android/gms/internal/ads/te;

    .line 65
    .line 66
    :cond_4
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Il;->l:Lcom/google/android/gms/internal/ads/mq;

    .line 67
    .line 68
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Il;->v:Lr/m;

    .line 69
    .line 70
    invoke-virtual {v1}, Lr/m;->clear()V

    .line 71
    .line 72
    .line 73
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Il;->w:Lr/m;

    .line 74
    .line 75
    invoke-virtual {v1}, Lr/m;->clear()V

    .line 76
    .line 77
    .line 78
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Il;->b:Ll3/B0;

    .line 79
    .line 80
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Il;->c:Lcom/google/android/gms/internal/ads/P8;

    .line 81
    .line 82
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Il;->d:Landroid/view/View;

    .line 83
    .line 84
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Il;->e:Ljava/util/List;

    .line 85
    .line 86
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Il;->h:Landroid/os/Bundle;

    .line 87
    .line 88
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Il;->o:Landroid/view/View;

    .line 89
    .line 90
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Il;->p:Landroid/view/View;

    .line 91
    .line 92
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Il;->q:LR3/a;

    .line 93
    .line 94
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Il;->s:Lcom/google/android/gms/internal/ads/T8;

    .line 95
    .line 96
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Il;->t:Lcom/google/android/gms/internal/ads/T8;

    .line 97
    .line 98
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Il;->u:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .line 100
    monitor-exit v0

    .line 101
    return-void

    .line 102
    :goto_1
    monitor-exit v0

    .line 103
    throw v1

    .line 104
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bl;->H:Lcom/google/android/gms/internal/ads/El;

    .line 105
    .line 106
    :try_start_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/El;->k:Lcom/google/android/gms/internal/ads/Il;

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Il;->D()I

    .line 109
    .line 110
    .line 111
    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    const-string v3, "Google"

    .line 113
    .line 114
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/El;->o:Lcom/google/android/gms/internal/ads/Nl;

    .line 115
    .line 116
    const/4 v5, 0x1

    .line 117
    if-eq v2, v5, :cond_a

    .line 118
    .line 119
    const/4 v6, 0x2

    .line 120
    if-eq v2, v6, :cond_9

    .line 121
    .line 122
    const/4 v6, 0x3

    .line 123
    if-eq v2, v6, :cond_7

    .line 124
    .line 125
    const/4 v1, 0x6

    .line 126
    if-eq v2, v1, :cond_6

    .line 127
    .line 128
    const/4 v1, 0x7

    .line 129
    if-eq v2, v1, :cond_5

    .line 130
    .line 131
    :try_start_2
    const-string v0, "Wrong native template id!"

    .line 132
    .line 133
    invoke-static {v0}, Lp3/h;->d(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_3

    .line 137
    .line 138
    :catch_0
    move-exception v0

    .line 139
    goto/16 :goto_2

    .line 140
    .line 141
    :cond_5
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/Nl;->e:Lcom/google/android/gms/internal/ads/qa;

    .line 142
    .line 143
    if-eqz v1, :cond_b

    .line 144
    .line 145
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/El;->s:Lcom/google/android/gms/internal/ads/EJ;

    .line 146
    .line 147
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/EJ;->zzb()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Lcom/google/android/gms/internal/ads/ma;

    .line 152
    .line 153
    check-cast v1, Lcom/google/android/gms/internal/ads/pa;

    .line 154
    .line 155
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_3

    .line 166
    .line 167
    :cond_6
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/Nl;->c:Lcom/google/android/gms/internal/ads/v9;

    .line 168
    .line 169
    if-eqz v1, :cond_b

    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/El;->r()V

    .line 172
    .line 173
    .line 174
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/Nl;->c:Lcom/google/android/gms/internal/ads/v9;

    .line 175
    .line 176
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/El;->r:Lcom/google/android/gms/internal/ads/EJ;

    .line 177
    .line 178
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/EJ;->zzb()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Lcom/google/android/gms/internal/ads/B9;

    .line 183
    .line 184
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/v9;->o3(Lcom/google/android/gms/internal/ads/B9;)V

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Il;->a()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/Nl;->f:Lr/m;

    .line 193
    .line 194
    invoke-virtual {v6, v2}, Lr/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    check-cast v2, Lcom/google/android/gms/internal/ads/p9;

    .line 199
    .line 200
    if-eqz v2, :cond_b

    .line 201
    .line 202
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Il;->R()Lcom/google/android/gms/internal/ads/Ef;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    if-eqz v2, :cond_8

    .line 207
    .line 208
    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/internal/ads/El;->x(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/mq;

    .line 209
    .line 210
    .line 211
    :cond_8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Il;->a()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/Nl;->f:Lr/m;

    .line 216
    .line 217
    invoke-virtual {v2, v1}, Lr/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    check-cast v1, Lcom/google/android/gms/internal/ads/p9;

    .line 222
    .line 223
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/El;->t:Lcom/google/android/gms/internal/ads/EJ;

    .line 224
    .line 225
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/EJ;->zzb()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    check-cast v0, Lcom/google/android/gms/internal/ads/f9;

    .line 230
    .line 231
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/p9;->x3(Lcom/google/android/gms/internal/ads/f9;)V

    .line 232
    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_9
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/Nl;->b:Lcom/google/android/gms/internal/ads/j9;

    .line 236
    .line 237
    if-eqz v1, :cond_b

    .line 238
    .line 239
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/El;->r()V

    .line 240
    .line 241
    .line 242
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/Nl;->b:Lcom/google/android/gms/internal/ads/j9;

    .line 243
    .line 244
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/El;->q:Lcom/google/android/gms/internal/ads/EJ;

    .line 245
    .line 246
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/EJ;->zzb()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Lcom/google/android/gms/internal/ads/c9;

    .line 251
    .line 252
    check-cast v1, Lcom/google/android/gms/internal/ads/h9;

    .line 253
    .line 254
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V

    .line 262
    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_a
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/Nl;->a:Lcom/google/android/gms/internal/ads/l9;

    .line 266
    .line 267
    if-eqz v1, :cond_b

    .line 268
    .line 269
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/El;->r()V

    .line 270
    .line 271
    .line 272
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/Nl;->a:Lcom/google/android/gms/internal/ads/l9;

    .line 273
    .line 274
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/El;->p:Lcom/google/android/gms/internal/ads/EJ;

    .line 275
    .line 276
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/EJ;->zzb()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    check-cast v0, Lcom/google/android/gms/internal/ads/d9;

    .line 281
    .line 282
    check-cast v1, Lcom/google/android/gms/internal/ads/k9;

    .line 283
    .line 284
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 292
    .line 293
    .line 294
    goto :goto_3

    .line 295
    :goto_2
    const-string v1, "RemoteException when notifyAdLoad is called"

    .line 296
    .line 297
    invoke-static {v1, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    .line 299
    .line 300
    :cond_b
    :goto_3
    return-void

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
