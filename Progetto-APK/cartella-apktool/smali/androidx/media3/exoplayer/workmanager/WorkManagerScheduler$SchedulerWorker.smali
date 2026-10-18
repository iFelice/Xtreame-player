.class public final Landroidx/media3/exoplayer/workmanager/WorkManagerScheduler$SchedulerWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# instance fields
.field public final L:Landroidx/work/WorkerParameters;

.field public final M:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/media3/exoplayer/workmanager/WorkManagerScheduler$SchedulerWorker;->L:Landroidx/work/WorkerParameters;

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/media3/exoplayer/workmanager/WorkManagerScheduler$SchedulerWorker;->M:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final doWork()Ld2/l;
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/workmanager/WorkManagerScheduler$SchedulerWorker;->L:Landroidx/work/WorkerParameters;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/work/WorkerParameters;->b:Ld2/e;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Ld2/e;->a:Ljava/util/HashMap;

    .line 9
    .line 10
    const-string v2, "requirements"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    instance-of v2, v1, Ljava/lang/Integer;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    check-cast v1, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_0
    and-int/lit8 v2, v1, 0x2

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    or-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    :cond_1
    and-int/lit8 v2, v1, 0x1

    .line 36
    .line 37
    const/16 v4, 0x10

    .line 38
    .line 39
    const/4 v5, 0x2

    .line 40
    iget-object v6, p0, Landroidx/media3/exoplayer/workmanager/WorkManagerScheduler$SchedulerWorker;->M:Landroid/content/Context;

    .line 41
    .line 42
    if-eqz v2, :cond_5

    .line 43
    .line 44
    const-string v2, "connectivity"

    .line 45
    .line 46
    invoke-virtual {v6, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    if-eqz v7, :cond_4

    .line 60
    .line 61
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-eqz v7, :cond_4

    .line 66
    .line 67
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    .line 69
    const/16 v8, 0x18

    .line 70
    .line 71
    if-ge v7, v8, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    invoke-static {v2}, LF2/D;->e(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    if-nez v7, :cond_3

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    :try_start_0
    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    if-eqz v7, :cond_4

    .line 86
    .line 87
    invoke-virtual {v7, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 88
    .line 89
    .line 90
    move-result v7
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    if-eqz v7, :cond_4

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catch_0
    nop

    .line 95
    :goto_1
    and-int/lit8 v7, v1, 0x2

    .line 96
    .line 97
    if-eqz v7, :cond_5

    .line 98
    .line 99
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_5

    .line 104
    .line 105
    const/4 v3, 0x2

    .line 106
    goto :goto_3

    .line 107
    :cond_4
    :goto_2
    and-int/lit8 v3, v1, 0x3

    .line 108
    .line 109
    :cond_5
    :goto_3
    and-int/lit8 v2, v1, 0x8

    .line 110
    .line 111
    const/4 v7, 0x0

    .line 112
    if-eqz v2, :cond_8

    .line 113
    .line 114
    new-instance v2, Landroid/content/IntentFilter;

    .line 115
    .line 116
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    .line 117
    .line 118
    invoke-direct {v2, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    if-nez v2, :cond_6

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_6
    const-string v8, "status"

    .line 129
    .line 130
    const/4 v9, -0x1

    .line 131
    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eq v2, v5, :cond_8

    .line 136
    .line 137
    const/4 v5, 0x5

    .line 138
    if-ne v2, v5, :cond_7

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_7
    :goto_4
    or-int/lit8 v3, v3, 0x8

    .line 142
    .line 143
    :cond_8
    :goto_5
    and-int/lit8 v2, v1, 0x4

    .line 144
    .line 145
    if-eqz v2, :cond_b

    .line 146
    .line 147
    const-string v2, "power"

    .line 148
    .line 149
    invoke-virtual {v6, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    check-cast v2, Landroid/os/PowerManager;

    .line 157
    .line 158
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 159
    .line 160
    const/16 v8, 0x17

    .line 161
    .line 162
    if-lt v5, v8, :cond_9

    .line 163
    .line 164
    invoke-static {v2}, LF2/D;->v(Landroid/os/PowerManager;)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-nez v2, :cond_b

    .line 169
    .line 170
    goto :goto_6

    .line 171
    :cond_9
    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-nez v2, :cond_a

    .line 176
    .line 177
    goto :goto_7

    .line 178
    :cond_a
    :goto_6
    or-int/lit8 v3, v3, 0x4

    .line 179
    .line 180
    :cond_b
    :goto_7
    and-int/2addr v1, v4

    .line 181
    if-eqz v1, :cond_d

    .line 182
    .line 183
    new-instance v1, Landroid/content/IntentFilter;

    .line 184
    .line 185
    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    .line 186
    .line 187
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6, v7, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    if-nez v1, :cond_c

    .line 195
    .line 196
    goto :goto_8

    .line 197
    :cond_c
    or-int/lit8 v3, v3, 0x10

    .line 198
    .line 199
    :cond_d
    :goto_8
    if-nez v3, :cond_f

    .line 200
    .line 201
    const-string v1, "service_action"

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ld2/e;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    const-string v2, "service_package"

    .line 211
    .line 212
    invoke-virtual {v0, v2}, Ld2/e;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    new-instance v2, Landroid/content/Intent;

    .line 220
    .line 221
    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 229
    .line 230
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 231
    .line 232
    const/16 v2, 0x1a

    .line 233
    .line 234
    if-lt v1, v2, :cond_e

    .line 235
    .line 236
    invoke-static {v6, v0}, Lokhttp3/a;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 237
    .line 238
    .line 239
    goto :goto_9

    .line 240
    :cond_e
    invoke-virtual {v6, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 241
    .line 242
    .line 243
    :goto_9
    new-instance v0, Ld2/k;

    .line 244
    .line 245
    sget-object v1, Ld2/e;->c:Ld2/e;

    .line 246
    .line 247
    invoke-direct {v0, v1}, Ld2/k;-><init>(Ld2/e;)V

    .line 248
    .line 249
    .line 250
    return-object v0

    .line 251
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    const-string v1, "Requirements not met: "

    .line 254
    .line 255
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    const-string v1, "WorkManagerScheduler"

    .line 266
    .line 267
    invoke-static {v1, v0}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    new-instance v0, Ld2/j;

    .line 271
    .line 272
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 273
    .line 274
    .line 275
    return-object v0
.end method
