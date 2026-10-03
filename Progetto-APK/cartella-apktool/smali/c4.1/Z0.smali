.class public final Lc4/Z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lc4/J1;

.field public final synthetic I:Lc4/d1;


# direct methods
.method public constructor <init>(Lc4/d1;Lc4/J1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lc4/Z0;->G:I

    .line 3
    iput-object p2, p0, Lc4/Z0;->H:Lc4/J1;

    iput-object p1, p0, Lc4/Z0;->I:Lc4/d1;

    return-void
.end method

.method public synthetic constructor <init>(Lc4/d1;Lc4/J1;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lc4/Z0;->G:I

    iput-object p2, p0, Lc4/Z0;->H:Lc4/J1;

    iput-object p1, p0, Lc4/Z0;->I:Lc4/d1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lc4/Z0;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lc4/Z0;->H:Lc4/J1;

    .line 4
    .line 5
    iget-object v2, p0, Lc4/Z0;->I:Lc4/d1;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v2, Lc4/d1;->J:Lc4/G;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lc4/l0;

    .line 17
    .line 18
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 19
    .line 20
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "Failed to send consent settings to service"

    .line 24
    .line 25
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1}, Lc4/G;->W0(Lc4/J1;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lc4/d1;->D()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    iget-object v1, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Lc4/l0;

    .line 45
    .line 46
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 47
    .line 48
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 49
    .line 50
    .line 51
    const-string v2, "Failed to send consent settings to the service"

    .line 52
    .line 53
    iget-object v1, v1, Lc4/T;->L:Lc4/Q;

    .line 54
    .line 55
    invoke-virtual {v1, v0, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v0, v2, Lc4/d1;->J:Lc4/G;

    .line 60
    .line 61
    if-nez v0, :cond_1

    .line 62
    .line 63
    iget-object v0, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Lc4/l0;

    .line 66
    .line 67
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 68
    .line 69
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 70
    .line 71
    .line 72
    const-string v1, "Failed to send measurementEnabled to service"

    .line 73
    .line 74
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v0, v1}, Lc4/G;->R2(Lc4/J1;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Lc4/d1;->D()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catch_1
    move-exception v0

    .line 91
    iget-object v1, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v1, Lc4/l0;

    .line 94
    .line 95
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 96
    .line 97
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 98
    .line 99
    .line 100
    const-string v2, "Failed to send measurementEnabled to the service"

    .line 101
    .line 102
    iget-object v1, v1, Lc4/T;->L:Lc4/Q;

    .line 103
    .line 104
    invoke-virtual {v1, v0, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :goto_1
    return-void

    .line 108
    :pswitch_1
    iget-object v0, v2, Lc4/d1;->J:Lc4/G;

    .line 109
    .line 110
    if-nez v0, :cond_2

    .line 111
    .line 112
    iget-object v0, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v0, Lc4/l0;

    .line 115
    .line 116
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 117
    .line 118
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 119
    .line 120
    .line 121
    const-string v1, "Failed to send app backgrounded"

    .line 122
    .line 123
    iget-object v0, v0, Lc4/T;->O:Lc4/Q;

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_2
    :try_start_2
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-interface {v0, v1}, Lc4/G;->t0(Lc4/J1;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Lc4/d1;->D()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :catch_2
    move-exception v0

    .line 140
    iget-object v1, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v1, Lc4/l0;

    .line 143
    .line 144
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 145
    .line 146
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 147
    .line 148
    .line 149
    const-string v2, "Failed to send app backgrounded to the service"

    .line 150
    .line 151
    iget-object v1, v1, Lc4/T;->L:Lc4/Q;

    .line 152
    .line 153
    invoke-virtual {v1, v0, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :goto_2
    return-void

    .line 157
    :pswitch_2
    iget-object v0, v2, Lc4/d1;->J:Lc4/G;

    .line 158
    .line 159
    if-nez v0, :cond_3

    .line 160
    .line 161
    iget-object v0, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v0, Lc4/l0;

    .line 164
    .line 165
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 166
    .line 167
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 168
    .line 169
    .line 170
    const-string v1, "Discarding data. Failed to send app launch"

    .line 171
    .line 172
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_3
    :try_start_3
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    iget-object v3, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v3, Lc4/l0;

    .line 184
    .line 185
    iget-object v4, v3, Lc4/l0;->M:Lc4/h;

    .line 186
    .line 187
    sget-object v5, Lc4/E;->m1:Lc4/D;

    .line 188
    .line 189
    const/4 v6, 0x0

    .line 190
    invoke-virtual {v4, v6, v5}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-eqz v4, :cond_4

    .line 195
    .line 196
    invoke-virtual {v2, v0, v6, v1}, Lc4/d1;->t(Lc4/G;LM3/a;Lc4/J1;)V

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :catch_3
    move-exception v0

    .line 201
    goto :goto_4

    .line 202
    :cond_4
    :goto_3
    invoke-interface {v0, v1}, Lc4/G;->M0(Lc4/J1;)V

    .line 203
    .line 204
    .line 205
    iget-object v4, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v4, Lc4/l0;

    .line 208
    .line 209
    invoke-virtual {v4}, Lc4/l0;->o()Lc4/N;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {v4}, Lc4/N;->t()Z

    .line 214
    .line 215
    .line 216
    iget-object v3, v3, Lc4/l0;->M:Lc4/h;

    .line 217
    .line 218
    invoke-virtual {v3, v6, v5}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v0, v6, v1}, Lc4/d1;->t(Lc4/G;LM3/a;Lc4/J1;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2}, Lc4/d1;->D()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 225
    .line 226
    .line 227
    goto :goto_5

    .line 228
    :goto_4
    iget-object v1, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v1, Lc4/l0;

    .line 231
    .line 232
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 233
    .line 234
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 235
    .line 236
    .line 237
    const-string v2, "Failed to send app launch to the service"

    .line 238
    .line 239
    iget-object v1, v1, Lc4/T;->L:Lc4/Q;

    .line 240
    .line 241
    invoke-virtual {v1, v0, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    :goto_5
    return-void

    .line 245
    :pswitch_3
    iget-object v0, v2, Lc4/d1;->J:Lc4/G;

    .line 246
    .line 247
    if-nez v0, :cond_5

    .line 248
    .line 249
    iget-object v0, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v0, Lc4/l0;

    .line 252
    .line 253
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 254
    .line 255
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 256
    .line 257
    .line 258
    const-string v1, "Failed to reset data on the service: not connected to service"

    .line 259
    .line 260
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 261
    .line 262
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    goto :goto_7

    .line 266
    :cond_5
    :try_start_4
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    invoke-interface {v0, v1}, Lc4/G;->r3(Lc4/J1;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 270
    .line 271
    .line 272
    goto :goto_6

    .line 273
    :catch_4
    move-exception v0

    .line 274
    iget-object v1, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v1, Lc4/l0;

    .line 277
    .line 278
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 279
    .line 280
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 281
    .line 282
    .line 283
    const-string v3, "Failed to reset data on the service: remote exception"

    .line 284
    .line 285
    iget-object v1, v1, Lc4/T;->L:Lc4/Q;

    .line 286
    .line 287
    invoke-virtual {v1, v0, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    :goto_6
    invoke-virtual {v2}, Lc4/d1;->D()V

    .line 291
    .line 292
    .line 293
    :goto_7
    return-void

    .line 294
    nop

    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
