.class public abstract LA0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const-string v0, "OutputTextureRendered"

    .line 2
    .line 3
    const-string v2, "RegisterNewInputStream"

    .line 4
    .line 5
    const-string v4, "OutputEnded"

    .line 6
    .line 7
    const-string v6, "InputEnded"

    .line 8
    .line 9
    const-string v7, "ProducedOutput"

    .line 10
    .line 11
    const-string v8, "AcceptedInput"

    .line 12
    .line 13
    const/4 v9, 0x2

    .line 14
    const/4 v10, 0x1

    .line 15
    const/4 v11, 0x0

    .line 16
    const/4 v12, 0x6

    .line 17
    const/4 v13, 0x3

    .line 18
    invoke-static {}, Lz4/J;->a()Lp0/C;

    .line 19
    .line 20
    .line 21
    move-result-object v14

    .line 22
    const-string v15, "Start"

    .line 23
    .line 24
    invoke-static {v15}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 25
    .line 26
    .line 27
    move-result-object v15

    .line 28
    const-string v1, "TransformerInternal"

    .line 29
    .line 30
    invoke-virtual {v14, v1, v15}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "InputFormat"

    .line 34
    .line 35
    const-string v15, "OutputFormat"

    .line 36
    .line 37
    invoke-static {v1, v15}, Lz4/H;->y(Ljava/lang/Object;Ljava/lang/Object;)Lz4/d0;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string v5, "AssetLoader"

    .line 42
    .line 43
    invoke-virtual {v14, v5, v3}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    new-array v3, v12, [Ljava/lang/Object;

    .line 47
    .line 48
    aput-object v1, v3, v11

    .line 49
    .line 50
    aput-object v15, v3, v10

    .line 51
    .line 52
    aput-object v8, v3, v9

    .line 53
    .line 54
    aput-object v7, v3, v13

    .line 55
    .line 56
    const/4 v5, 0x4

    .line 57
    aput-object v6, v3, v5

    .line 58
    .line 59
    const/4 v5, 0x5

    .line 60
    aput-object v4, v3, v5

    .line 61
    .line 62
    invoke-static {v12, v3}, Lcom/google/android/gms/internal/ads/Cw;->d(I[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v12, v3}, Lz4/H;->p(I[Ljava/lang/Object;)Lz4/d0;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const-string v5, "AudioDecoder"

    .line 70
    .line 71
    invoke-virtual {v14, v5, v3}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v2, v4}, Lz4/H;->y(Ljava/lang/Object;Ljava/lang/Object;)Lz4/d0;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const-string v5, "AudioGraph"

    .line 79
    .line 80
    invoke-virtual {v14, v5, v3}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    new-array v3, v13, [Ljava/lang/Object;

    .line 84
    .line 85
    aput-object v2, v3, v11

    .line 86
    .line 87
    aput-object v15, v3, v10

    .line 88
    .line 89
    aput-object v7, v3, v9

    .line 90
    .line 91
    invoke-static {v13, v3}, Lcom/google/android/gms/internal/ads/Cw;->d(I[Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v13, v3}, Lz4/H;->p(I[Ljava/lang/Object;)Lz4/d0;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    const-string v5, "AudioMixer"

    .line 99
    .line 100
    invoke-virtual {v14, v5, v3}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    new-array v3, v12, [Ljava/lang/Object;

    .line 104
    .line 105
    aput-object v1, v3, v11

    .line 106
    .line 107
    aput-object v15, v3, v10

    .line 108
    .line 109
    aput-object v8, v3, v9

    .line 110
    .line 111
    aput-object v7, v3, v13

    .line 112
    .line 113
    const/4 v5, 0x4

    .line 114
    aput-object v6, v3, v5

    .line 115
    .line 116
    const/4 v5, 0x5

    .line 117
    aput-object v4, v3, v5

    .line 118
    .line 119
    invoke-static {v12, v3}, Lcom/google/android/gms/internal/ads/Cw;->d(I[Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v12, v3}, Lz4/H;->p(I[Ljava/lang/Object;)Lz4/d0;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    const-string v5, "AudioEncoder"

    .line 127
    .line 128
    invoke-virtual {v14, v5, v3}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    new-array v3, v12, [Ljava/lang/Object;

    .line 132
    .line 133
    aput-object v1, v3, v11

    .line 134
    .line 135
    aput-object v15, v3, v10

    .line 136
    .line 137
    aput-object v8, v3, v9

    .line 138
    .line 139
    aput-object v7, v3, v13

    .line 140
    .line 141
    const/4 v5, 0x4

    .line 142
    aput-object v6, v3, v5

    .line 143
    .line 144
    const/4 v5, 0x5

    .line 145
    aput-object v4, v3, v5

    .line 146
    .line 147
    invoke-static {v12, v3}, Lcom/google/android/gms/internal/ads/Cw;->d(I[Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    invoke-static {v12, v3}, Lz4/H;->p(I[Ljava/lang/Object;)Lz4/d0;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    const-string v5, "VideoDecoder"

    .line 155
    .line 156
    invoke-virtual {v14, v5, v3}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    const/16 v3, 0x9

    .line 160
    .line 161
    new-array v5, v3, [Ljava/lang/Object;

    .line 162
    .line 163
    aput-object v2, v5, v11

    .line 164
    .line 165
    const-string v2, "SurfaceTextureInput"

    .line 166
    .line 167
    aput-object v2, v5, v10

    .line 168
    .line 169
    const-string v2, "QueueFrame"

    .line 170
    .line 171
    aput-object v2, v5, v9

    .line 172
    .line 173
    const-string v2, "QueueBitmap"

    .line 174
    .line 175
    aput-object v2, v5, v13

    .line 176
    .line 177
    const-string v2, "QueueTexture"

    .line 178
    .line 179
    const/4 v3, 0x4

    .line 180
    aput-object v2, v5, v3

    .line 181
    .line 182
    const-string v2, "RenderedToOutputSurface"

    .line 183
    .line 184
    const/4 v3, 0x5

    .line 185
    aput-object v2, v5, v3

    .line 186
    .line 187
    aput-object v0, v5, v12

    .line 188
    .line 189
    const-string v2, "ReceiveEndOfAllInput"

    .line 190
    .line 191
    const/4 v3, 0x7

    .line 192
    aput-object v2, v5, v3

    .line 193
    .line 194
    const-string v2, "SignalEnded"

    .line 195
    .line 196
    const/16 v3, 0x8

    .line 197
    .line 198
    aput-object v2, v5, v3

    .line 199
    .line 200
    const/16 v2, 0x9

    .line 201
    .line 202
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/Cw;->d(I[Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-static {v2, v5}, Lz4/H;->p(I[Ljava/lang/Object;)Lz4/d0;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    const-string v3, "VideoFrameProcessor"

    .line 210
    .line 211
    invoke-virtual {v14, v3, v2}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    const-string v2, "SignalEOS"

    .line 215
    .line 216
    const-string v3, "SurfaceTextureTransformFix"

    .line 217
    .line 218
    invoke-static {v2, v3}, Lz4/H;->y(Ljava/lang/Object;Ljava/lang/Object;)Lz4/d0;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    const-string v5, "ExternalTextureManager"

    .line 223
    .line 224
    invoke-virtual {v14, v5, v3}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    invoke-static {v2}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    const-string v5, "BitmapTextureManager"

    .line 232
    .line 233
    invoke-virtual {v14, v5, v3}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    invoke-static {v2}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    const-string v3, "TexIdTextureManager"

    .line 241
    .line 242
    invoke-virtual {v14, v3, v2}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    invoke-static {v0}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    const-string v2, "Compositor"

    .line 250
    .line 251
    invoke-virtual {v14, v2, v0}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    new-array v0, v12, [Ljava/lang/Object;

    .line 255
    .line 256
    aput-object v1, v0, v11

    .line 257
    .line 258
    aput-object v15, v0, v10

    .line 259
    .line 260
    aput-object v8, v0, v9

    .line 261
    .line 262
    aput-object v7, v0, v13

    .line 263
    .line 264
    const/4 v2, 0x4

    .line 265
    aput-object v6, v0, v2

    .line 266
    .line 267
    const/4 v2, 0x5

    .line 268
    aput-object v4, v0, v2

    .line 269
    .line 270
    invoke-static {v12, v0}, Lcom/google/android/gms/internal/ads/Cw;->d(I[Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    invoke-static {v12, v0}, Lz4/H;->p(I[Ljava/lang/Object;)Lz4/d0;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    const-string v2, "VideoEncoder"

    .line 278
    .line 279
    invoke-virtual {v14, v2, v0}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    const-string v0, "CanWriteSample"

    .line 283
    .line 284
    invoke-static {v1, v0, v8, v6, v4}, Lz4/H;->z(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lz4/d0;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    const-string v1, "Muxer"

    .line 289
    .line 290
    invoke-virtual {v14, v1, v0}, Lp0/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v14}, Lp0/C;->a()Lz4/i0;

    .line 294
    .line 295
    .line 296
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 297
    .line 298
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 299
    .line 300
    .line 301
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 302
    .line 303
    .line 304
    return-void
.end method

.method public static varargs declared-synchronized a()V
    .locals 1

    .line 1
    const-class v0, LA0/g;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    monitor-exit v0

    .line 5
    return-void
.end method

.method public static declared-synchronized b(J)V
    .locals 0

    .line 1
    const-class p0, LA0/g;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, LA0/g;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method
