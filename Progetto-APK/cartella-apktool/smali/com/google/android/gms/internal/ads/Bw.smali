.class public final Lcom/google/android/gms/internal/ads/Bw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/IJ;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/Bw;->a:I

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/Bw;->a:I

    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Bw;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/kk;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->Z0:Lcom/google/android/gms/internal/ads/J7;

    .line 20
    .line 21
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 22
    .line 23
    iget-object v3, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iput v1, v0, Lcom/google/android/gms/internal/ads/kk;->G:I

    .line 36
    .line 37
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->dc:Lcom/google/android/gms/internal/ads/J7;

    .line 38
    .line 39
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iput v1, v0, Lcom/google/android/gms/internal/ads/kk;->H:I

    .line 52
    .line 53
    return-object v0

    .line 54
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/ek;

    .line 55
    .line 56
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ek;-><init>()V

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :pswitch_2
    new-instance v0, Lcom/google/android/gms/internal/ads/Qi;

    .line 61
    .line 62
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Qi;-><init>()V

    .line 63
    .line 64
    .line 65
    return-object v0

    .line 66
    :pswitch_3
    const-string v0, "banner"

    .line 67
    .line 68
    return-object v0

    .line 69
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/z6;->I:Lcom/google/android/gms/internal/ads/z6;

    .line 70
    .line 71
    return-object v0

    .line 72
    :pswitch_5
    const-string v0, "app_open_ad"

    .line 73
    .line 74
    return-object v0

    .line 75
    :pswitch_6
    sget-object v0, Lcom/google/android/gms/internal/ads/z6;->R:Lcom/google/android/gms/internal/ads/z6;

    .line 76
    .line 77
    return-object v0

    .line 78
    :pswitch_7
    new-instance v0, Lcom/google/android/gms/internal/ads/kh;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 81
    .line 82
    .line 83
    return-object v0

    .line 84
    :pswitch_8
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 85
    .line 86
    iget-object v0, v0, Lk3/l;->w:Lcom/google/android/gms/internal/ads/Qd;

    .line 87
    .line 88
    return-object v0

    .line 89
    :pswitch_9
    new-instance v0, Lcom/google/android/gms/internal/ads/y1;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 92
    .line 93
    .line 94
    return-object v0

    .line 95
    :pswitch_a
    new-instance v0, Lcom/google/android/gms/internal/ads/y1;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 98
    .line 99
    .line 100
    return-object v0

    .line 101
    :pswitch_b
    new-instance v0, Lcom/google/android/gms/internal/ads/y1;

    .line 102
    .line 103
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 104
    .line 105
    .line 106
    return-object v0

    .line 107
    :pswitch_c
    new-instance v0, Lcom/google/android/gms/internal/ads/y1;

    .line 108
    .line 109
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 110
    .line 111
    .line 112
    return-object v0

    .line 113
    :pswitch_d
    new-instance v0, Lcom/google/android/gms/internal/ads/y1;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 116
    .line 117
    .line 118
    return-object v0

    .line 119
    :pswitch_e
    new-instance v0, Lcom/google/android/gms/internal/ads/y1;

    .line 120
    .line 121
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 122
    .line 123
    .line 124
    return-object v0

    .line 125
    :pswitch_f
    new-instance v0, Lcom/google/android/gms/internal/ads/y1;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 128
    .line 129
    .line 130
    return-object v0

    .line 131
    :pswitch_10
    new-instance v0, Lcom/google/android/gms/internal/ads/y1;

    .line 132
    .line 133
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 134
    .line 135
    .line 136
    return-object v0

    .line 137
    :pswitch_11
    new-instance v0, Lcom/google/android/gms/internal/ads/y1;

    .line 138
    .line 139
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 140
    .line 141
    .line 142
    return-object v0

    .line 143
    :pswitch_12
    new-instance v0, Lcom/google/android/gms/internal/ads/y1;

    .line 144
    .line 145
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 146
    .line 147
    .line 148
    return-object v0

    .line 149
    :pswitch_13
    new-instance v0, Lcom/google/android/gms/internal/ads/y1;

    .line 150
    .line 151
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 152
    .line 153
    .line 154
    return-object v0

    .line 155
    :pswitch_14
    new-instance v0, Lcom/google/android/gms/internal/ads/y1;

    .line 156
    .line 157
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 158
    .line 159
    .line 160
    return-object v0

    .line 161
    :pswitch_15
    new-instance v0, Lcom/google/android/gms/internal/ads/y1;

    .line 162
    .line 163
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 164
    .line 165
    .line 166
    return-object v0

    .line 167
    :pswitch_16
    new-instance v0, Ljava/util/ArrayDeque;

    .line 168
    .line 169
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 170
    .line 171
    .line 172
    return-object v0

    .line 173
    :pswitch_17
    sget-object v0, Ll3/p;->f:Ll3/p;

    .line 174
    .line 175
    iget-object v0, v0, Ll3/p;->c:Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    return-object v0

    .line 181
    :pswitch_18
    new-instance v0, Landroid/content/Intent;

    .line 182
    .line 183
    const-string v1, "android.intent.action.VIEW"

    .line 184
    .line 185
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    const-string v1, "com.android.vending"

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    .line 192
    .line 193
    const-string v1, "https://play.google.com/d"

    .line 194
    .line 195
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 200
    .line 201
    .line 202
    return-object v0

    .line 203
    :pswitch_19
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 204
    .line 205
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 206
    .line 207
    return-object v0

    .line 208
    :pswitch_1a
    new-instance v0, Lcom/google/android/gms/internal/ads/P9;

    .line 209
    .line 210
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/P9;-><init>()V

    .line 211
    .line 212
    .line 213
    return-object v0

    .line 214
    :pswitch_1b
    new-instance v0, Lcom/google/android/gms/internal/ads/I5;

    .line 215
    .line 216
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 217
    .line 218
    .line 219
    return-object v0

    .line 220
    :pswitch_1c
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 225
    .line 226
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 227
    .line 228
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 229
    .line 230
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 231
    .line 232
    .line 233
    const-wide/16 v4, 0x3c

    .line 234
    .line 235
    const/4 v3, 0x1

    .line 236
    move-object v1, v0

    .line 237
    move v2, v3

    .line 238
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 239
    .line 240
    .line 241
    const/4 v1, 0x1

    .line 242
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 243
    .line 244
    .line 245
    invoke-static {v0}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/jC;

    .line 250
    .line 251
    if-eqz v1, :cond_0

    .line 252
    .line 253
    check-cast v0, Lcom/google/android/gms/internal/ads/jC;

    .line 254
    .line 255
    goto :goto_1

    .line 256
    :cond_0
    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 257
    .line 258
    if-eqz v1, :cond_1

    .line 259
    .line 260
    new-instance v1, Lcom/google/android/gms/internal/ads/oC;

    .line 261
    .line 262
    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 263
    .line 264
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/oC;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 265
    .line 266
    .line 267
    :goto_0
    move-object v0, v1

    .line 268
    goto :goto_1

    .line 269
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/re;

    .line 270
    .line 271
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/re;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 272
    .line 273
    .line 274
    goto :goto_0

    .line 275
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    return-object v0

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
