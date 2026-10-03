.class public final Lg2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final H:Lg2/j;


# direct methods
.method public synthetic constructor <init>(Lg2/j;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lg2/h;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lg2/h;->H:Lg2/j;

    .line 7
    .line 8
    return-void
.end method

.method private a()V
    .locals 8

    .line 1
    const-string v0, "Acquiring operation wake lock ("

    .line 2
    .line 3
    iget-object v1, p0, Lg2/h;->H:Lg2/j;

    .line 4
    .line 5
    iget-object v1, v1, Lg2/j;->M:Ljava/util/ArrayList;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lg2/h;->H:Lg2/j;

    .line 9
    .line 10
    iget-object v3, v2, Lg2/j;->M:Ljava/util/ArrayList;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroid/content/Intent;

    .line 18
    .line 19
    iput-object v3, v2, Lg2/j;->N:Landroid/content/Intent;

    .line 20
    .line 21
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 22
    iget-object v1, p0, Lg2/h;->H:Lg2/j;

    .line 23
    .line 24
    iget-object v1, v1, Lg2/j;->N:Landroid/content/Intent;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lg2/h;->H:Lg2/j;

    .line 33
    .line 34
    iget-object v2, v2, Lg2/j;->N:Landroid/content/Intent;

    .line 35
    .line 36
    const-string v3, "KEY_START_ID"

    .line 37
    .line 38
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    sget-object v4, Lg2/j;->P:Ljava/lang/String;

    .line 47
    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v6, "Processing command "

    .line 51
    .line 52
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v6, p0, Lg2/h;->H:Lg2/j;

    .line 56
    .line 57
    iget-object v6, v6, Lg2/j;->N:Landroid/content/Intent;

    .line 58
    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v6, ", "

    .line 63
    .line 64
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v3, v4, v5}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v3, p0, Lg2/h;->H:Lg2/j;

    .line 78
    .line 79
    iget-object v3, v3, Lg2/j;->G:Landroid/content/Context;

    .line 80
    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v6, " ("

    .line 90
    .line 91
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v6, ")"

    .line 98
    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-static {v3, v5}, Ln2/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    const/4 v5, 0x1

    .line 111
    :try_start_1
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    new-instance v7, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v0, ") "

    .line 124
    .line 125
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v6, v4, v0}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lg2/h;->H:Lg2/j;

    .line 142
    .line 143
    iget-object v6, v0, Lg2/j;->L:Lg2/c;

    .line 144
    .line 145
    iget-object v7, v0, Lg2/j;->N:Landroid/content/Intent;

    .line 146
    .line 147
    invoke-virtual {v6, v7, v2, v0}, Lg2/c;->c(Landroid/content/Intent;ILg2/j;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    .line 149
    .line 150
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v6, "Releasing operation wake lock ("

    .line 157
    .line 158
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v1, ") "

    .line 165
    .line 166
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v4, v1}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lg2/h;->H:Lg2/j;

    .line 183
    .line 184
    iget-object v1, v0, Lg2/j;->H:Lp2/a;

    .line 185
    .line 186
    check-cast v1, Lm2/u;

    .line 187
    .line 188
    iget-object v1, v1, Lm2/u;->J:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v1, Ljava/util/concurrent/Executor;

    .line 191
    .line 192
    new-instance v2, Lg2/h;

    .line 193
    .line 194
    invoke-direct {v2, v0, v5}, Lg2/h;-><init>(Lg2/j;I)V

    .line 195
    .line 196
    .line 197
    :goto_0
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :catchall_0
    move-exception v0

    .line 202
    :try_start_2
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    sget-object v4, Lg2/j;->P:Ljava/lang/String;

    .line 207
    .line 208
    const-string v6, "Unexpected error in onHandleIntent"

    .line 209
    .line 210
    invoke-virtual {v2, v4, v6, v0}, Ld2/n;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 211
    .line 212
    .line 213
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string v6, "Releasing operation wake lock ("

    .line 220
    .line 221
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v1, ") "

    .line 228
    .line 229
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {v0, v4, v1}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 243
    .line 244
    .line 245
    iget-object v0, p0, Lg2/h;->H:Lg2/j;

    .line 246
    .line 247
    iget-object v1, v0, Lg2/j;->H:Lp2/a;

    .line 248
    .line 249
    check-cast v1, Lm2/u;

    .line 250
    .line 251
    iget-object v1, v1, Lm2/u;->J:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast v1, Ljava/util/concurrent/Executor;

    .line 254
    .line 255
    new-instance v2, Lg2/h;

    .line 256
    .line 257
    invoke-direct {v2, v0, v5}, Lg2/h;-><init>(Lg2/j;I)V

    .line 258
    .line 259
    .line 260
    goto :goto_0

    .line 261
    :catchall_1
    move-exception v0

    .line 262
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    sget-object v4, Lg2/j;->P:Ljava/lang/String;

    .line 267
    .line 268
    new-instance v6, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    const-string v7, "Releasing operation wake lock ("

    .line 271
    .line 272
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v1, ") "

    .line 279
    .line 280
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-virtual {v2, v4, v1}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 294
    .line 295
    .line 296
    iget-object v1, p0, Lg2/h;->H:Lg2/j;

    .line 297
    .line 298
    iget-object v2, v1, Lg2/j;->H:Lp2/a;

    .line 299
    .line 300
    check-cast v2, Lm2/u;

    .line 301
    .line 302
    iget-object v2, v2, Lm2/u;->J:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast v2, Ljava/util/concurrent/Executor;

    .line 305
    .line 306
    new-instance v3, Lg2/h;

    .line 307
    .line 308
    invoke-direct {v3, v1, v5}, Lg2/h;-><init>(Lg2/j;I)V

    .line 309
    .line 310
    .line 311
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 312
    .line 313
    .line 314
    throw v0

    .line 315
    :cond_0
    :goto_1
    return-void

    .line 316
    :catchall_2
    move-exception v0

    .line 317
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 318
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lg2/h;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lg2/h;->H:Lg2/j;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v1, "Removing command "

    .line 12
    .line 13
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    sget-object v3, Lg2/j;->P:Ljava/lang/String;

    .line 18
    .line 19
    const-string v4, "Checking if commands are complete."

    .line 20
    .line 21
    invoke-virtual {v2, v3, v4}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lg2/j;->c()V

    .line 25
    .line 26
    .line 27
    iget-object v2, v0, Lg2/j;->M:Ljava/util/ArrayList;

    .line 28
    .line 29
    monitor-enter v2

    .line 30
    :try_start_0
    iget-object v4, v0, Lg2/j;->N:Landroid/content/Intent;

    .line 31
    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lg2/j;->N:Landroid/content/Intent;

    .line 44
    .line 45
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v4, v3, v1}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lg2/j;->M:Ljava/util/ArrayList;

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/content/Intent;

    .line 63
    .line 64
    iget-object v4, v0, Lg2/j;->N:Landroid/content/Intent;

    .line 65
    .line 66
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_0

    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    iput-object v1, v0, Lg2/j;->N:Landroid/content/Intent;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto :goto_2

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 79
    .line 80
    const-string v1, "Dequeue-d command is not the first."

    .line 81
    .line 82
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v0

    .line 86
    :cond_1
    :goto_0
    iget-object v1, v0, Lg2/j;->H:Lp2/a;

    .line 87
    .line 88
    check-cast v1, Lm2/u;

    .line 89
    .line 90
    iget-object v1, v1, Lm2/u;->H:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v1, Ln2/o;

    .line 93
    .line 94
    iget-object v4, v0, Lg2/j;->L:Lg2/c;

    .line 95
    .line 96
    invoke-virtual {v4}, Lg2/c;->a()Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-nez v4, :cond_2

    .line 101
    .line 102
    iget-object v4, v0, Lg2/j;->M:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_2

    .line 109
    .line 110
    invoke-virtual {v1}, Ln2/o;->a()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_2

    .line 115
    .line 116
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const-string v4, "No more commands & intents."

    .line 121
    .line 122
    invoke-virtual {v1, v3, v4}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, v0, Lg2/j;->O:Lg2/i;

    .line 126
    .line 127
    if-eqz v0, :cond_3

    .line 128
    .line 129
    check-cast v0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    .line 130
    .line 131
    invoke-virtual {v0}, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->a()V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_2
    iget-object v1, v0, Lg2/j;->M:Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-nez v1, :cond_3

    .line 142
    .line 143
    invoke-virtual {v0}, Lg2/j;->e()V

    .line 144
    .line 145
    .line 146
    :cond_3
    :goto_1
    monitor-exit v2

    .line 147
    return-void

    .line 148
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    throw v0

    .line 150
    :pswitch_0
    invoke-direct {p0}, Lg2/h;->a()V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
