.class public final synthetic LD0/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;

.field public final synthetic I:Ljava/lang/Object;

.field public final synthetic J:Ljava/lang/Object;

.field public final synthetic K:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p5, p0, LD0/D;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LD0/D;->H:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, LD0/D;->I:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p3, p0, LD0/D;->J:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p4, p0, LD0/D;->K:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, LD0/D;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LD0/D;->H:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, LZ2/a;

    .line 9
    .line 10
    iget-object v1, p0, LD0/D;->I:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, LU2/i;

    .line 13
    .line 14
    iget-object v2, p0, LD0/D;->J:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, LC0/i;

    .line 17
    .line 18
    iget-object v3, p0, LD0/D;->K:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v3, LU2/h;

    .line 21
    .line 22
    sget-object v4, LZ2/a;->f:Ljava/util/logging/Logger;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    sget-object v4, LZ2/a;->f:Ljava/util/logging/Logger;

    .line 28
    .line 29
    const-string v5, "Transport backend \'"

    .line 30
    .line 31
    :try_start_0
    iget-object v6, v0, LZ2/a;->c:LV2/f;

    .line 32
    .line 33
    iget-object v7, v1, LU2/i;->a:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v6, v7}, LV2/f;->a(Ljava/lang/String;)LV2/h;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    if-nez v6, :cond_0

    .line 40
    .line 41
    iget-object v0, v1, LU2/i;->a:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, "\' is not registered"

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    check-cast v6, LS2/d;

    .line 75
    .line 76
    invoke-virtual {v6, v3}, LS2/d;->a(LU2/h;)LU2/h;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    iget-object v5, v0, LZ2/a;->e:Lc3/c;

    .line 81
    .line 82
    new-instance v6, LO0/A;

    .line 83
    .line 84
    const/4 v7, 0x2

    .line 85
    invoke-direct {v6, v0, v1, v3, v7}, LO0/A;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 86
    .line 87
    .line 88
    check-cast v5, Lb3/j;

    .line 89
    .line 90
    invoke-virtual {v5, v6}, Lb3/j;->a0(Lc3/b;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v3, "Error scheduling event "

    .line 100
    .line 101
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    :goto_1
    return-void

    .line 122
    :pswitch_0
    iget-object v0, p0, LD0/D;->H:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v0, Landroid/media/AudioTrack;

    .line 125
    .line 126
    iget-object v1, p0, LD0/D;->I:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v1, LD0/s;

    .line 129
    .line 130
    iget-object v2, p0, LD0/D;->J:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v2, Landroid/os/Handler;

    .line 133
    .line 134
    iget-object v3, p0, LD0/D;->K:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v3, LD0/p;

    .line 137
    .line 138
    const/4 v4, 0x0

    .line 139
    const/4 v5, 0x1

    .line 140
    :try_start_1
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    .line 145
    .line 146
    if-eqz v1, :cond_1

    .line 147
    .line 148
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_1

    .line 161
    .line 162
    new-instance v0, LD0/F;

    .line 163
    .line 164
    const/4 v6, 0x0

    .line 165
    invoke-direct {v0, v1, v3, v6}, LD0/F;-><init>(LD0/s;LD0/p;I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    .line 170
    .line 171
    :cond_1
    sget-object v0, LD0/S;->p0:Ljava/lang/Object;

    .line 172
    .line 173
    monitor-enter v0

    .line 174
    :try_start_2
    sget v1, LD0/S;->r0:I

    .line 175
    .line 176
    sub-int/2addr v1, v5

    .line 177
    sput v1, LD0/S;->r0:I

    .line 178
    .line 179
    if-nez v1, :cond_2

    .line 180
    .line 181
    sget-object v1, LD0/S;->q0:Ljava/util/concurrent/ScheduledExecutorService;

    .line 182
    .line 183
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 184
    .line 185
    .line 186
    sput-object v4, LD0/S;->q0:Ljava/util/concurrent/ScheduledExecutorService;

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :catchall_0
    move-exception v1

    .line 190
    goto :goto_3

    .line 191
    :cond_2
    :goto_2
    monitor-exit v0

    .line 192
    return-void

    .line 193
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    throw v1

    .line 195
    :catchall_1
    move-exception v0

    .line 196
    if-eqz v1, :cond_3

    .line 197
    .line 198
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    invoke-virtual {v6}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-virtual {v6}, Ljava/lang/Thread;->isAlive()Z

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    if-eqz v6, :cond_3

    .line 211
    .line 212
    new-instance v6, LD0/F;

    .line 213
    .line 214
    invoke-direct {v6, v1, v3, v5}, LD0/F;-><init>(LD0/s;LD0/p;I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    .line 219
    .line 220
    :cond_3
    sget-object v1, LD0/S;->p0:Ljava/lang/Object;

    .line 221
    .line 222
    monitor-enter v1

    .line 223
    :try_start_3
    sget v2, LD0/S;->r0:I

    .line 224
    .line 225
    sub-int/2addr v2, v5

    .line 226
    sput v2, LD0/S;->r0:I

    .line 227
    .line 228
    if-nez v2, :cond_4

    .line 229
    .line 230
    sget-object v2, LD0/S;->q0:Ljava/util/concurrent/ScheduledExecutorService;

    .line 231
    .line 232
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 233
    .line 234
    .line 235
    sput-object v4, LD0/S;->q0:Ljava/util/concurrent/ScheduledExecutorService;

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :catchall_2
    move-exception v0

    .line 239
    goto :goto_5

    .line 240
    :cond_4
    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 241
    throw v0

    .line 242
    :goto_5
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 243
    throw v0

    .line 244
    nop

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
