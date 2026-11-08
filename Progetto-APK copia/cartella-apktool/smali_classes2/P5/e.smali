.class public final LP5/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:LP5/f;


# direct methods
.method public synthetic constructor <init>(LP5/f;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LP5/e;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LP5/e;->H:LP5/f;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, LP5/e;->G:I

    .line 2
    .line 3
    const v1, 0x7f0b05c1

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    :try_start_0
    const-string v0, "f"

    .line 11
    .line 12
    const-string v1, "Closing camera"

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, LP5/e;->H:LP5/f;

    .line 18
    .line 19
    iget-object v0, v0, LP5/f;->c:LP5/h;

    .line 20
    .line 21
    iget-object v1, v0, LP5/h;->c:LP5/b;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, LP5/b;->c()V

    .line 26
    .line 27
    .line 28
    iput-object v2, v0, LP5/h;->c:LP5/b;

    .line 29
    .line 30
    :cond_0
    iget-object v1, v0, LP5/h;->d:Lu5/a;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iput-object v2, v0, LP5/h;->d:Lu5/a;

    .line 35
    .line 36
    :cond_1
    iget-object v1, v0, LP5/h;->a:Landroid/hardware/Camera;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    iget-boolean v3, v0, LP5/h;->e:Z

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, LP5/h;->l:LP5/g;

    .line 48
    .line 49
    iput-object v2, v1, LP5/g;->a:LZ3/o;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    iput-boolean v1, v0, LP5/h;->e:Z

    .line 53
    .line 54
    :cond_2
    iget-object v0, p0, LP5/e;->H:LP5/f;

    .line 55
    .line 56
    iget-object v0, v0, LP5/f;->c:LP5/h;

    .line 57
    .line 58
    iget-object v1, v0, LP5/h;->a:Landroid/hardware/Camera;

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 63
    .line 64
    .line 65
    iput-object v2, v0, LP5/h;->a:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    const-string v1, "f"

    .line 70
    .line 71
    const-string v2, "Failed to close camera"

    .line 72
    .line 73
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_0
    iget-object v0, p0, LP5/e;->H:LP5/f;

    .line 77
    .line 78
    const/4 v1, 0x1

    .line 79
    iput-boolean v1, v0, LP5/f;->g:Z

    .line 80
    .line 81
    iget-object v0, v0, LP5/f;->d:Landroid/os/Handler;

    .line 82
    .line 83
    const v2, 0x7f0b05c0

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, LP5/e;->H:LP5/f;

    .line 90
    .line 91
    iget-object v0, v0, LP5/f;->a:LP5/j;

    .line 92
    .line 93
    iget-object v2, v0, LP5/j;->d:Ljava/lang/Object;

    .line 94
    .line 95
    monitor-enter v2

    .line 96
    :try_start_1
    iget v3, v0, LP5/j;->c:I

    .line 97
    .line 98
    sub-int/2addr v3, v1

    .line 99
    iput v3, v0, LP5/j;->c:I

    .line 100
    .line 101
    if-nez v3, :cond_4

    .line 102
    .line 103
    invoke-virtual {v0}, LP5/j;->c()V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    goto :goto_2

    .line 109
    :cond_4
    :goto_1
    monitor-exit v2

    .line 110
    return-void

    .line 111
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    throw v0

    .line 113
    :pswitch_0
    const-string v0, "f"

    .line 114
    .line 115
    iget-object v2, p0, LP5/e;->H:LP5/f;

    .line 116
    .line 117
    :try_start_2
    const-string v3, "Starting preview"

    .line 118
    .line 119
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    iget-object v3, v2, LP5/f;->c:LP5/h;

    .line 123
    .line 124
    iget-object v4, v2, LP5/f;->b:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 125
    .line 126
    iget-object v3, v3, LP5/h;->a:Landroid/hardware/Camera;

    .line 127
    .line 128
    iget-object v5, v4, Lcom/google/android/gms/internal/atv_ads_framework/x0;->H:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v5, Landroid/view/SurfaceHolder;

    .line 131
    .line 132
    if-eqz v5, :cond_5

    .line 133
    .line 134
    invoke-virtual {v3, v5}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_5
    iget-object v4, v4, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v4, Landroid/graphics/SurfaceTexture;

    .line 141
    .line 142
    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 143
    .line 144
    .line 145
    :goto_3
    iget-object v3, v2, LP5/f;->c:LP5/h;

    .line 146
    .line 147
    invoke-virtual {v3}, LP5/h;->f()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :catch_1
    move-exception v3

    .line 152
    iget-object v2, v2, LP5/f;->d:Landroid/os/Handler;

    .line 153
    .line 154
    if-eqz v2, :cond_6

    .line 155
    .line 156
    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 161
    .line 162
    .line 163
    :cond_6
    const-string v1, "Failed to start preview"

    .line 164
    .line 165
    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    .line 167
    .line 168
    :goto_4
    return-void

    .line 169
    :pswitch_1
    const-string v0, "f"

    .line 170
    .line 171
    iget-object v3, p0, LP5/e;->H:LP5/f;

    .line 172
    .line 173
    :try_start_3
    const-string v4, "Configuring camera"

    .line 174
    .line 175
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    iget-object v4, v3, LP5/f;->c:LP5/h;

    .line 179
    .line 180
    invoke-virtual {v4}, LP5/h;->b()V

    .line 181
    .line 182
    .line 183
    iget-object v4, v3, LP5/f;->d:Landroid/os/Handler;

    .line 184
    .line 185
    if-eqz v4, :cond_b

    .line 186
    .line 187
    iget-object v5, v3, LP5/f;->c:LP5/h;

    .line 188
    .line 189
    iget-object v6, v5, LP5/h;->j:LO5/t;

    .line 190
    .line 191
    if-nez v6, :cond_7

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_7
    iget v2, v5, LP5/h;->k:I

    .line 195
    .line 196
    const/4 v5, -0x1

    .line 197
    if-eq v2, v5, :cond_9

    .line 198
    .line 199
    rem-int/lit16 v2, v2, 0xb4

    .line 200
    .line 201
    if-eqz v2, :cond_8

    .line 202
    .line 203
    new-instance v2, LO5/t;

    .line 204
    .line 205
    iget v5, v6, LO5/t;->H:I

    .line 206
    .line 207
    iget v6, v6, LO5/t;->G:I

    .line 208
    .line 209
    invoke-direct {v2, v5, v6}, LO5/t;-><init>(II)V

    .line 210
    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_8
    move-object v2, v6

    .line 214
    :goto_5
    const v5, 0x7f0b05c7

    .line 215
    .line 216
    .line 217
    invoke-virtual {v4, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 222
    .line 223
    .line 224
    goto :goto_7

    .line 225
    :catch_2
    move-exception v2

    .line 226
    goto :goto_6

    .line 227
    :cond_9
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 228
    .line 229
    const-string v4, "Rotation not calculated yet. Call configure() first."

    .line 230
    .line 231
    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 235
    :goto_6
    iget-object v3, v3, LP5/f;->d:Landroid/os/Handler;

    .line 236
    .line 237
    if-eqz v3, :cond_a

    .line 238
    .line 239
    invoke-virtual {v3, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 244
    .line 245
    .line 246
    :cond_a
    const-string v1, "Failed to configure camera"

    .line 247
    .line 248
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    .line 250
    .line 251
    :cond_b
    :goto_7
    return-void

    .line 252
    :pswitch_2
    iget-object v0, p0, LP5/e;->H:LP5/f;

    .line 253
    .line 254
    const-string v2, "f"

    .line 255
    .line 256
    :try_start_4
    const-string v3, "Opening camera"

    .line 257
    .line 258
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    iget-object v3, v0, LP5/f;->c:LP5/h;

    .line 262
    .line 263
    invoke-virtual {v3}, LP5/h;->c()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 264
    .line 265
    .line 266
    goto :goto_8

    .line 267
    :catch_3
    move-exception v3

    .line 268
    iget-object v0, v0, LP5/f;->d:Landroid/os/Handler;

    .line 269
    .line 270
    if-eqz v0, :cond_c

    .line 271
    .line 272
    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 277
    .line 278
    .line 279
    :cond_c
    const-string v0, "Failed to open camera"

    .line 280
    .line 281
    invoke-static {v2, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    .line 283
    .line 284
    :goto_8
    return-void

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
