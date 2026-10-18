.class public final synthetic Lcom/google/android/gms/internal/ads/MK;
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

    iput p5, p0, Lcom/google/android/gms/internal/ads/MK;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/MK;->H:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/MK;->I:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/MK;->J:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/MK;->K:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/MK;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/MK;->H:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/media/AudioTrack;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/MK;->I:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lcom/google/android/gms/internal/ads/nM;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/MK;->J:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Landroid/os/Handler;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/MK;->K:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v3, Lcom/google/android/gms/internal/ads/GH;

    .line 21
    .line 22
    sget-object v4, Lcom/google/android/gms/internal/ads/lM;->Z:Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    const/16 v5, 0x15

    .line 26
    .line 27
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    new-instance v0, Lcom/google/android/gms/internal/ads/co;

    .line 50
    .line 51
    invoke-direct {v0, v5, v1, v3}, Lcom/google/android/gms/internal/ads/co;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/lM;->Z:Ljava/lang/Object;

    .line 58
    .line 59
    monitor-enter v0

    .line 60
    :try_start_1
    sget v1, Lcom/google/android/gms/internal/ads/lM;->b0:I

    .line 61
    .line 62
    add-int/lit8 v1, v1, -0x1

    .line 63
    .line 64
    sput v1, Lcom/google/android/gms/internal/ads/lM;->b0:I

    .line 65
    .line 66
    if-nez v1, :cond_1

    .line 67
    .line 68
    sget-object v1, Lcom/google/android/gms/internal/ads/lM;->a0:Ljava/util/concurrent/ScheduledExecutorService;

    .line 69
    .line 70
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 71
    .line 72
    .line 73
    sput-object v4, Lcom/google/android/gms/internal/ads/lM;->a0:Ljava/util/concurrent/ScheduledExecutorService;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception v1

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    :goto_0
    monitor-exit v0

    .line 79
    return-void

    .line 80
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    throw v1

    .line 82
    :catchall_1
    move-exception v0

    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-virtual {v6}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v6}, Ljava/lang/Thread;->isAlive()Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_2

    .line 98
    .line 99
    new-instance v6, Lcom/google/android/gms/internal/ads/co;

    .line 100
    .line 101
    invoke-direct {v6, v5, v1, v3}, Lcom/google/android/gms/internal/ads/co;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    .line 106
    .line 107
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/lM;->Z:Ljava/lang/Object;

    .line 108
    .line 109
    monitor-enter v1

    .line 110
    :try_start_2
    sget v2, Lcom/google/android/gms/internal/ads/lM;->b0:I

    .line 111
    .line 112
    add-int/lit8 v2, v2, -0x1

    .line 113
    .line 114
    sput v2, Lcom/google/android/gms/internal/ads/lM;->b0:I

    .line 115
    .line 116
    if-nez v2, :cond_3

    .line 117
    .line 118
    sget-object v2, Lcom/google/android/gms/internal/ads/lM;->a0:Ljava/util/concurrent/ScheduledExecutorService;

    .line 119
    .line 120
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 121
    .line 122
    .line 123
    sput-object v4, Lcom/google/android/gms/internal/ads/lM;->a0:Ljava/util/concurrent/ScheduledExecutorService;

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :catchall_2
    move-exception v0

    .line 127
    goto :goto_3

    .line 128
    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 129
    throw v0

    .line 130
    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 131
    throw v0

    .line 132
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/MK;->I:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v0, Landroid/util/Pair;

    .line 135
    .line 136
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/MK;->H:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v1, Lcom/google/android/gms/internal/ads/Om;

    .line 139
    .line 140
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Om;->I:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v1, Lcom/google/android/gms/internal/ads/QK;

    .line 143
    .line 144
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/QK;->h:Lcom/google/android/gms/internal/ads/cL;

    .line 145
    .line 146
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v2, Ljava/lang/Integer;

    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v0, Lcom/google/android/gms/internal/ads/wN;

    .line 157
    .line 158
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/MK;->J:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v3, Lcom/google/android/gms/internal/ads/pN;

    .line 161
    .line 162
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/MK;->K:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v4, Lcom/google/android/gms/internal/ads/nL;

    .line 165
    .line 166
    check-cast v1, Lcom/google/android/gms/internal/ads/tL;

    .line 167
    .line 168
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/tL;->h(ILcom/google/android/gms/internal/ads/wN;Lcom/google/android/gms/internal/ads/pN;Lcom/google/android/gms/internal/ads/nL;)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/MK;->I:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v0, Landroid/util/Pair;

    .line 175
    .line 176
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/MK;->H:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v1, Lcom/google/android/gms/internal/ads/Om;

    .line 179
    .line 180
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Om;->I:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v1, Lcom/google/android/gms/internal/ads/QK;

    .line 183
    .line 184
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/QK;->h:Lcom/google/android/gms/internal/ads/cL;

    .line 185
    .line 186
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v2, Ljava/lang/Integer;

    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v0, Lcom/google/android/gms/internal/ads/wN;

    .line 197
    .line 198
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/MK;->J:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v3, Lcom/google/android/gms/internal/ads/pN;

    .line 201
    .line 202
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/MK;->K:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v4, Lcom/google/android/gms/internal/ads/nL;

    .line 205
    .line 206
    check-cast v1, Lcom/google/android/gms/internal/ads/tL;

    .line 207
    .line 208
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/tL;->e(ILcom/google/android/gms/internal/ads/wN;Lcom/google/android/gms/internal/ads/pN;Lcom/google/android/gms/internal/ads/nL;)V

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/MK;->I:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v0, Landroid/util/Pair;

    .line 215
    .line 216
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/MK;->H:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v1, Lcom/google/android/gms/internal/ads/Om;

    .line 219
    .line 220
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Om;->I:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v1, Lcom/google/android/gms/internal/ads/QK;

    .line 223
    .line 224
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/QK;->h:Lcom/google/android/gms/internal/ads/cL;

    .line 225
    .line 226
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v2, Ljava/lang/Integer;

    .line 229
    .line 230
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast v0, Lcom/google/android/gms/internal/ads/wN;

    .line 237
    .line 238
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/MK;->J:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v3, Lcom/google/android/gms/internal/ads/pN;

    .line 241
    .line 242
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/MK;->K:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v4, Lcom/google/android/gms/internal/ads/nL;

    .line 245
    .line 246
    check-cast v1, Lcom/google/android/gms/internal/ads/tL;

    .line 247
    .line 248
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/tL;->f(ILcom/google/android/gms/internal/ads/wN;Lcom/google/android/gms/internal/ads/pN;Lcom/google/android/gms/internal/ads/nL;)V

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    nop

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
