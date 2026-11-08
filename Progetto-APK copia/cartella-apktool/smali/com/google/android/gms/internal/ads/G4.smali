.class public final Lcom/google/android/gms/internal/ads/G4;
.super Lcom/google/android/gms/internal/ads/F4;
.source "SourceFile"


# static fields
.field public static final e0:Ljava/lang/Object;

.field public static f0:Z = false

.field public static g0:J

.field public static h0:Lcom/google/android/gms/internal/ads/K4;

.field public static i0:Lcom/google/android/gms/internal/ads/b5;

.field public static j0:LW0/g;


# instance fields
.field public final b0:LJ2/t;

.field public c0:Lcom/google/android/gms/internal/ads/Z4;

.field public final d0:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/G4;->e0:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LJ2/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/F4;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/G4;->d0:Ljava/util/HashMap;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/G4;->b0:LJ2/t;

    .line 12
    .line 13
    return-void
.end method

.method public static m(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/V4;
    .locals 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/F4;->a0:Lcom/google/android/gms/internal/ads/V4;

    .line 2
    .line 3
    if-nez v0, :cond_7

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/G4;->e0:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/F4;->a0:Lcom/google/android/gms/internal/ads/V4;

    .line 9
    .line 10
    if-nez v1, :cond_6

    .line 11
    .line 12
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/V4;->b(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/V4;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/V4;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    if-eqz p1, :cond_5

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    :try_start_1
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->a3:Lcom/google/android/gms/internal/ads/J7;

    .line 22
    .line 23
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 24
    .line 25
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    :try_start_2
    const-string v1, "uqJEUYtMC6igyTZFAAEE75NBgASQTYxYWvVnS4oyIqiXJPhpeFyV9nSFbcfeIJKd"

    .line 40
    .line 41
    const-string v2, "ohDvI7zbCm/xKMRj1Hz7rmq6fpy+yyQOEDUkZ/+cKWg="

    .line 42
    .line 43
    new-array v3, p1, [Ljava/lang/Class;

    .line 44
    .line 45
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :catch_0
    :cond_0
    :goto_0
    const-string v1, "bxhlS+byKsEaHbhXEyi6TD/EqtsG2sd2GfInhSI7yciYukoqPk/w1i7LSDrcmmYr"

    .line 53
    .line 54
    const-string v2, "gWtAtoadyS/0GQFYvFINsjkt4bRjT5fE+w3tC36yAJU="

    .line 55
    .line 56
    const/4 v3, 0x1

    .line 57
    new-array v4, v3, [Ljava/lang/Class;

    .line 58
    .line 59
    const-class v5, Landroid/content/Context;

    .line 60
    .line 61
    aput-object v5, v4, p1

    .line 62
    .line 63
    invoke-virtual {p0, v1, v2, v4}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 64
    .line 65
    .line 66
    const-string v1, "5UR6HKB81c0cBAmhqUCkwnSn0PivsbvOC36lSRnvbJazdJtsmM3DNCGH8hJ11MS9"

    .line 67
    .line 68
    const-string v2, "UrsneQ7OIRNo8EjOO9YdieQqewqlcsXgRCgjv7EyHmQ="

    .line 69
    .line 70
    new-array v4, v3, [Ljava/lang/Class;

    .line 71
    .line 72
    const-class v5, Landroid/content/Context;

    .line 73
    .line 74
    aput-object v5, v4, p1

    .line 75
    .line 76
    invoke-virtual {p0, v1, v2, v4}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 77
    .line 78
    .line 79
    const-string v1, "mh3tdFapbE/sJv8Vo+tGtSqGob+34XuR/yQkwrU1NOisAE1Jls0cSJi5Lk8Oid+3"

    .line 80
    .line 81
    const-string v2, "sgSNHgqJ9EwYu8w2dMx3zRGSIiO9D1spUgPO3F51srA="

    .line 82
    .line 83
    new-array v4, v3, [Ljava/lang/Class;

    .line 84
    .line 85
    const-class v5, Landroid/content/Context;

    .line 86
    .line 87
    aput-object v5, v4, p1

    .line 88
    .line 89
    invoke-virtual {p0, v1, v2, v4}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 90
    .line 91
    .line 92
    const-string v1, "c/axzSlC5CKyeVvYpod083FD/YK+zLXfDqtD5AYe9EXr6xyYayRD+veafiAlev8F"

    .line 93
    .line 94
    const-string v2, "JFMtS6Z9bzmnMwoeWTxjTTnvJVVZDuewSTBrvx9CdBc="

    .line 95
    .line 96
    new-array v4, v3, [Ljava/lang/Class;

    .line 97
    .line 98
    const-class v5, Landroid/content/Context;

    .line 99
    .line 100
    aput-object v5, v4, p1

    .line 101
    .line 102
    invoke-virtual {p0, v1, v2, v4}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 103
    .line 104
    .line 105
    const-string v1, "lVUtMgOC8oCk0OL1R8+dcIzJX9C75UT4Pn6J82++vFrHU4GwQD+682Yf0fGqttpS"

    .line 106
    .line 107
    const-string v2, "RRAtLSPp4UfCvUq8TqKgqVcK2MQ98P/X8fWWJOdf6yU="

    .line 108
    .line 109
    new-array v4, v3, [Ljava/lang/Class;

    .line 110
    .line 111
    const-class v5, Landroid/content/Context;

    .line 112
    .line 113
    aput-object v5, v4, p1

    .line 114
    .line 115
    invoke-virtual {p0, v1, v2, v4}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 116
    .line 117
    .line 118
    const-string v1, "pkxrOWj7zD1ScyeXlo8fp1m52MhBIE9QvURtfE4hxB81XVp6EbBK8CYQjvvhYlf1"

    .line 119
    .line 120
    const-string v2, "OfZFeGMpPN4nP2QoVlOsW4kmNx194lMXDh8YPc+yAeg="

    .line 121
    .line 122
    const/4 v4, 0x2

    .line 123
    new-array v5, v4, [Ljava/lang/Class;

    .line 124
    .line 125
    const-class v6, Landroid/content/Context;

    .line 126
    .line 127
    aput-object v6, v5, p1

    .line 128
    .line 129
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 130
    .line 131
    aput-object v6, v5, v3

    .line 132
    .line 133
    invoke-virtual {p0, v1, v2, v5}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 134
    .line 135
    .line 136
    const-string v1, "19nlSd1PMyXKl1niHXaxZmvGyLnyitkJHQnkLHtPHLj6n1sor4NdBFlTmnlba7BL"

    .line 137
    .line 138
    const-string v2, "8mLoio5zXFzLNZDTURhMAugjCGrSPBhh3GCaf2t8mPk="

    .line 139
    .line 140
    new-array v5, v3, [Ljava/lang/Class;

    .line 141
    .line 142
    const-class v7, Landroid/content/Context;

    .line 143
    .line 144
    aput-object v7, v5, p1

    .line 145
    .line 146
    invoke-virtual {p0, v1, v2, v5}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 147
    .line 148
    .line 149
    const-string v1, "yunpg/6VdKt9qYWjYKs5tjKMiKriIKdWWgRCb/dxRRCrip4tXKwty8n3U/lUpwOV"

    .line 150
    .line 151
    const-string v2, "nCcHhBJ+r5jDr0ERNbOfBIJ/pDQFZIqvHaO2vAiQNRE="

    .line 152
    .line 153
    new-array v5, v3, [Ljava/lang/Class;

    .line 154
    .line 155
    const-class v7, Landroid/content/Context;

    .line 156
    .line 157
    aput-object v7, v5, p1

    .line 158
    .line 159
    invoke-virtual {p0, v1, v2, v5}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 160
    .line 161
    .line 162
    const-string v1, "bVq06mwryvswJ9TEv8eKHMxwi9DjT7SQH2xL+admUqskqroPQT0vVkasNMzV5jv7"

    .line 163
    .line 164
    const-string v2, "EByWffqzraQVS82Db2+ro2d9ZqC8EsuKj9igHJ6rpI4="

    .line 165
    .line 166
    new-array v5, v4, [Ljava/lang/Class;

    .line 167
    .line 168
    const-class v7, Landroid/view/MotionEvent;

    .line 169
    .line 170
    aput-object v7, v5, p1

    .line 171
    .line 172
    const-class v7, Landroid/util/DisplayMetrics;

    .line 173
    .line 174
    aput-object v7, v5, v3

    .line 175
    .line 176
    invoke-virtual {p0, v1, v2, v5}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 177
    .line 178
    .line 179
    const-string v1, "pSQoWHdFqf8FxrFh/c3UdBWF16OW6yp/zWpxt2kX61Wv+QY4WkeyFhaCYkiWXfUx"

    .line 180
    .line 181
    const-string v2, "b4xBpY1Zr7toyC1sOTTNBO4ImhCct0sLu70B1nFUAHo="

    .line 182
    .line 183
    new-array v5, v4, [Ljava/lang/Class;

    .line 184
    .line 185
    const-class v7, Landroid/view/MotionEvent;

    .line 186
    .line 187
    aput-object v7, v5, p1

    .line 188
    .line 189
    const-class v7, Landroid/util/DisplayMetrics;

    .line 190
    .line 191
    aput-object v7, v5, v3

    .line 192
    .line 193
    invoke-virtual {p0, v1, v2, v5}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 194
    .line 195
    .line 196
    const-string v1, "MyezUX/G4B4IwyhTDkP3w1lDN+jx4NQ6UyU5K5beVZyubOhn8Q7qD9UAXT+3eaCC"

    .line 197
    .line 198
    const-string v2, "vDxCHtRyDtZtywG/lqG2i2wEAK0QRlsYMxcEu2Y9QxY="

    .line 199
    .line 200
    new-array v5, p1, [Ljava/lang/Class;

    .line 201
    .line 202
    invoke-virtual {p0, v1, v2, v5}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 203
    .line 204
    .line 205
    const-string v1, "FIygBXZrpziR+Pp2xmzyZ9k6GUcrj9kWbY5XuUd40ERy2hxHTKqhUwfuGSusXUTd"

    .line 206
    .line 207
    const-string v2, "t4LignzpQnyAJJAZeU8P3GGD0dgmuTMT4n9grwU+EMc="

    .line 208
    .line 209
    new-array v5, p1, [Ljava/lang/Class;

    .line 210
    .line 211
    invoke-virtual {p0, v1, v2, v5}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 212
    .line 213
    .line 214
    const-string v1, "Cjpz94Jf9g0GnoeURiYkrUgpYgxkMbj/9b/+FncAnrZMhBxpDl2Bsri9U5qLhwFe"

    .line 215
    .line 216
    const-string v2, "7Ejn4kVFfkIwTENQCsQUmu0CsZi/nLRRU7QLVgsNDkU="

    .line 217
    .line 218
    new-array v5, p1, [Ljava/lang/Class;

    .line 219
    .line 220
    invoke-virtual {p0, v1, v2, v5}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 221
    .line 222
    .line 223
    const-string v1, "CyzY1Dq9Z94V5QdB/DvLAvp7GpoAO1TL85fhRTvPR0h7u5BGepLTIyh10t/XTOrZ"

    .line 224
    .line 225
    const-string v2, "skGQhdInPY4sBMicxMlDA8FpM67X6t386GsGM5hjG6o="

    .line 226
    .line 227
    new-array v5, p1, [Ljava/lang/Class;

    .line 228
    .line 229
    invoke-virtual {p0, v1, v2, v5}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 230
    .line 231
    .line 232
    const-string v1, "yTyv47DW9aV6rpyU1wL04puCd80cKdCTVtCqLwFmVTX0TBccJdZ4Z0bBqZNN3F0R"

    .line 233
    .line 234
    const-string v2, "JYsm/UNRvgpUWKzxuCnz29cSU61JkF5E/yr5Nm+WBTM="

    .line 235
    .line 236
    new-array v5, p1, [Ljava/lang/Class;

    .line 237
    .line 238
    invoke-virtual {p0, v1, v2, v5}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 239
    .line 240
    .line 241
    const-string v1, "0kr13TIqRr0Mkim2K4wTtB+PeWlqdIn0V95/3g6ojAuM6jvjN6OT9QeeEcwm9v6h"

    .line 242
    .line 243
    const-string v2, "pwlWlXowmv5MgDBY81mya6zXLrSMULDo97qGgXQvfFI="

    .line 244
    .line 245
    new-array v5, p1, [Ljava/lang/Class;

    .line 246
    .line 247
    invoke-virtual {p0, v1, v2, v5}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 248
    .line 249
    .line 250
    const-string v1, "5gR2Yi2k1qmqwB908rtZUebo4TzAbjEGSkWYIuNbRdnGPocO4kIxU9dsn2qP+c0J"

    .line 251
    .line 252
    const-string v2, "NnIoFyYmTm9Yd/i5F1TZFAo2tPeZkpFEZBtgPBr60Ow="

    .line 253
    .line 254
    const/4 v5, 0x3

    .line 255
    new-array v7, v5, [Ljava/lang/Class;

    .line 256
    .line 257
    const-class v8, Landroid/content/Context;

    .line 258
    .line 259
    aput-object v8, v7, p1

    .line 260
    .line 261
    aput-object v6, v7, v3

    .line 262
    .line 263
    const-class v8, Ljava/lang/String;

    .line 264
    .line 265
    aput-object v8, v7, v4

    .line 266
    .line 267
    invoke-virtual {p0, v1, v2, v7}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 268
    .line 269
    .line 270
    const-string v1, "qb9dl/IB08b/6izFoDp5ONFGusaE64enfOjVCLWlhNF7+NrRoaDnYUmwC44nswXK"

    .line 271
    .line 272
    const-string v2, "+1rx5i0z5L53m4fOjp1rgOA40SLCpA1mGw0uq9igoow="

    .line 273
    .line 274
    new-array v7, v3, [Ljava/lang/Class;

    .line 275
    .line 276
    const-class v8, [Ljava/lang/StackTraceElement;

    .line 277
    .line 278
    aput-object v8, v7, p1

    .line 279
    .line 280
    invoke-virtual {p0, v1, v2, v7}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 281
    .line 282
    .line 283
    const-string v1, "1eASkBAriCqBxPWd4okyyc+CHCTvdkAuw8U5qBN0KobaC6TQVXZIuItjy1xo8n06"

    .line 284
    .line 285
    const-string v2, "/3NjDB70kyJmgPDiCMkSHOH5fxmpgd9Ky8mxWyDVFDM="

    .line 286
    .line 287
    const/4 v7, 0x4

    .line 288
    new-array v8, v7, [Ljava/lang/Class;

    .line 289
    .line 290
    const-class v9, Landroid/view/View;

    .line 291
    .line 292
    aput-object v9, v8, p1

    .line 293
    .line 294
    const-class v9, Landroid/util/DisplayMetrics;

    .line 295
    .line 296
    aput-object v9, v8, v3

    .line 297
    .line 298
    aput-object v6, v8, v4

    .line 299
    .line 300
    aput-object v6, v8, v5

    .line 301
    .line 302
    invoke-virtual {p0, v1, v2, v8}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 303
    .line 304
    .line 305
    const-string v1, "ErPP4PypQmbjNzzBcpPEb7SMjpueU0b2D5VyuZDUz95tFtao7lfnsWucNRKS/8//"

    .line 306
    .line 307
    const-string v2, "Gt05wIkB9VlCQDpYnwS+bvW/Sf4rdLdhAuNRhSCvQ2I="

    .line 308
    .line 309
    new-array v8, v4, [Ljava/lang/Class;

    .line 310
    .line 311
    const-class v9, Landroid/content/Context;

    .line 312
    .line 313
    aput-object v9, v8, p1

    .line 314
    .line 315
    aput-object v6, v8, v3

    .line 316
    .line 317
    invoke-virtual {p0, v1, v2, v8}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 318
    .line 319
    .line 320
    const-string v1, "3ikNbWzMTIqU222KtrzzFiiUcpXtNPU8upxs9wXDAJYxbW4sx23+rx4eBiJjRteZ"

    .line 321
    .line 322
    const-string v2, "TdQDsqdcAU8jyTN6NihYJULAUxAJpTfNWWUTPnMXLns="

    .line 323
    .line 324
    new-array v8, v5, [Ljava/lang/Class;

    .line 325
    .line 326
    const-class v9, Landroid/view/View;

    .line 327
    .line 328
    aput-object v9, v8, p1

    .line 329
    .line 330
    const-class v9, Landroid/app/Activity;

    .line 331
    .line 332
    aput-object v9, v8, v3

    .line 333
    .line 334
    aput-object v6, v8, v4

    .line 335
    .line 336
    invoke-virtual {p0, v1, v2, v8}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 337
    .line 338
    .line 339
    const-string v1, "fITy8eyNabiNCHuPyNX0x482LGXuzWIuGD/71SlN2nKRI9kSJNQ0LUuMwsl06lrx"

    .line 340
    .line 341
    const-string v2, "tMANUUGyytjQo/XDHg2IEhabePFT+VIo7wkY/Wjo6Gc="

    .line 342
    .line 343
    new-array v6, v3, [Ljava/lang/Class;

    .line 344
    .line 345
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 346
    .line 347
    aput-object v8, v6, p1

    .line 348
    .line 349
    invoke-virtual {p0, v1, v2, v6}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 350
    .line 351
    .line 352
    const-string v1, "HKR8yJb1bSJu8LVlqpKC/lk4sWm3Ji10GkyhxRQoJd2Yb8vz2/7ATJhGRkBQpjA8"

    .line 353
    .line 354
    const-string v2, "3Dv+WIEpWKEbBzcuP3SgLUV0aXQTnDSdpPKu/RzIzoY="

    .line 355
    .line 356
    new-array v6, p1, [Ljava/lang/Class;

    .line 357
    .line 358
    invoke-virtual {p0, v1, v2, v6}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 359
    .line 360
    .line 361
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->d3:Lcom/google/android/gms/internal/ads/J7;

    .line 362
    .line 363
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 364
    .line 365
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 366
    .line 367
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    check-cast v1, Ljava/lang/Boolean;

    .line 372
    .line 373
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 374
    .line 375
    .line 376
    move-result v1
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 377
    if-eqz v1, :cond_1

    .line 378
    .line 379
    :try_start_4
    const-string v1, "JZBFNEdYFhTFBTCRgtU3dDnkdlKXmKLHUW9VyRRgLZX35JOvzKEIQuHunyCpcG/w"

    .line 380
    .line 381
    const-string v2, "nv6PiabX0G4RLHtriKodA9C0rOBToujvB9ySFMp3wxE="

    .line 382
    .line 383
    new-array v6, v3, [Ljava/lang/Class;

    .line 384
    .line 385
    const-class v8, Landroid/content/Context;

    .line 386
    .line 387
    aput-object v8, v6, p1

    .line 388
    .line 389
    invoke-virtual {p0, v1, v2, v6}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 390
    .line 391
    .line 392
    :catch_1
    :cond_1
    const-string v1, "QkUPtkYUgz2Q7QzT++W7/LvSL/+jztV0vuOJ6F0a3TCpRf9UbWz3aw54p4TaC7dW"

    .line 393
    .line 394
    const-string v2, "AjndXp1s5xIDXysf7TNVubDac7r00lcAtHKozpGmJzQ="

    .line 395
    .line 396
    new-array v6, v3, [Ljava/lang/Class;

    .line 397
    .line 398
    const-class v8, Landroid/content/Context;

    .line 399
    .line 400
    aput-object v8, v6, p1

    .line 401
    .line 402
    invoke-virtual {p0, v1, v2, v6}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 403
    .line 404
    .line 405
    :try_start_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 406
    .line 407
    const/16 v2, 0x1a

    .line 408
    .line 409
    if-lt v1, v2, :cond_2

    .line 410
    .line 411
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->e3:Lcom/google/android/gms/internal/ads/J7;

    .line 412
    .line 413
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 414
    .line 415
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 416
    .line 417
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    check-cast v1, Ljava/lang/Boolean;

    .line 422
    .line 423
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 424
    .line 425
    .line 426
    move-result v1
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 427
    if-eqz v1, :cond_2

    .line 428
    .line 429
    :try_start_6
    const-string v1, "AFi1XUlQ2wB7zUl3EOk1zuEn8ZOxUh72pRw/0ERKEaN1JtcMwtQuK14gG9CY64a/"

    .line 430
    .line 431
    const-string v2, "Q54q2JslusSv8X8AsH7nKgnoWyF6GsnL4uj/9o5E5cc="

    .line 432
    .line 433
    new-array v6, v5, [Ljava/lang/Class;

    .line 434
    .line 435
    const-class v8, Landroid/net/NetworkCapabilities;

    .line 436
    .line 437
    aput-object v8, v6, p1

    .line 438
    .line 439
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 440
    .line 441
    aput-object v8, v6, v3

    .line 442
    .line 443
    aput-object v8, v6, v4

    .line 444
    .line 445
    invoke-virtual {p0, v1, v2, v6}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 446
    .line 447
    .line 448
    :catch_2
    :cond_2
    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->y2:Lcom/google/android/gms/internal/ads/J7;

    .line 449
    .line 450
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 451
    .line 452
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 453
    .line 454
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    check-cast v1, Ljava/lang/Boolean;

    .line 459
    .line 460
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 461
    .line 462
    .line 463
    move-result v1
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 464
    if-eqz v1, :cond_3

    .line 465
    .line 466
    :try_start_8
    const-string v1, "qmKK3b5gFczPFV6EXQK4o/dThX0H+NXEfphwaNTcj5pJFkabLh1X9vORrSfnOkeV"

    .line 467
    .line 468
    const-string v2, "GajzmnIGCWKypTldGXdzGSwHW6ZZV69Bh6cWfmyAJmA="

    .line 469
    .line 470
    new-array v6, v3, [Ljava/lang/Class;

    .line 471
    .line 472
    const-class v8, Ljava/util/List;

    .line 473
    .line 474
    aput-object v8, v6, p1

    .line 475
    .line 476
    invoke-virtual {p0, v1, v2, v6}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 477
    .line 478
    .line 479
    :catch_3
    :cond_3
    :try_start_9
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->x2:Lcom/google/android/gms/internal/ads/J7;

    .line 480
    .line 481
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 482
    .line 483
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 484
    .line 485
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    check-cast v1, Ljava/lang/Boolean;

    .line 490
    .line 491
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 492
    .line 493
    .line 494
    move-result v1
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 495
    if-eqz v1, :cond_4

    .line 496
    .line 497
    :try_start_a
    const-string v1, "s/IaC73MjD9vpfzZvssIGR7eelXzGompBCRU9Px19GF39ZofYoD29ElcUTZqSvpM"

    .line 498
    .line 499
    const-string v2, "t30h8UZEoZP8GE77k4AdlDjTvNQpvs7DHs10k6C9ZzU="

    .line 500
    .line 501
    new-array v6, v7, [Ljava/lang/Class;

    .line 502
    .line 503
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 504
    .line 505
    aput-object v7, v6, p1

    .line 506
    .line 507
    aput-object v7, v6, v3

    .line 508
    .line 509
    aput-object v7, v6, v4

    .line 510
    .line 511
    aput-object v7, v6, v5

    .line 512
    .line 513
    invoke-virtual {p0, v1, v2, v6}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 514
    .line 515
    .line 516
    goto :goto_1

    .line 517
    :catch_4
    :cond_4
    :try_start_b
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->w2:Lcom/google/android/gms/internal/ads/J7;

    .line 518
    .line 519
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 520
    .line 521
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 522
    .line 523
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    check-cast v1, Ljava/lang/Boolean;

    .line 528
    .line 529
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 530
    .line 531
    .line 532
    move-result v1
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 533
    if-eqz v1, :cond_5

    .line 534
    .line 535
    :try_start_c
    const-string v1, "8HOKLqLOucCjn3kWyyKimNsF6Dcutdd9y3ap015kDIWZNsgYbLJqzHSzKo+jDSQ4"

    .line 536
    .line 537
    const-string v2, "ikPkuPQbpnIYaQGo6Ao4zzPX0Qaf9HhmEZeT4ZfFQOg="

    .line 538
    .line 539
    new-array v5, v5, [Ljava/lang/Class;

    .line 540
    .line 541
    const-class v6, [J

    .line 542
    .line 543
    aput-object v6, v5, p1

    .line 544
    .line 545
    const-class p1, Landroid/content/Context;

    .line 546
    .line 547
    aput-object p1, v5, v3

    .line 548
    .line 549
    const-class p1, Landroid/view/View;

    .line 550
    .line 551
    aput-object p1, v5, v4

    .line 552
    .line 553
    invoke-virtual {p0, v1, v2, v5}, Lcom/google/android/gms/internal/ads/V4;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 554
    .line 555
    .line 556
    :catch_5
    :cond_5
    :goto_1
    sput-object p0, Lcom/google/android/gms/internal/ads/F4;->a0:Lcom/google/android/gms/internal/ads/V4;

    .line 557
    .line 558
    :cond_6
    monitor-exit v0

    .line 559
    goto :goto_3

    .line 560
    :goto_2
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 561
    throw p0

    .line 562
    :cond_7
    :goto_3
    sget-object p0, Lcom/google/android/gms/internal/ads/F4;->a0:Lcom/google/android/gms/internal/ads/V4;

    .line 563
    .line 564
    return-object p0
.end method

.method public static n(Lcom/google/android/gms/internal/ads/V4;Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Lcom/google/android/gms/internal/ads/W4;
    .locals 3

    .line 1
    const-string v0, "bVq06mwryvswJ9TEv8eKHMxwi9DjT7SQH2xL+admUqskqroPQT0vVkasNMzV5jv7"

    .line 2
    .line 3
    const-string v1, "EByWffqzraQVS82Db2+ro2d9ZqC8EsuKj9igHJ6rpI4="

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/V4;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/W4;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    aput-object p1, v1, v2

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    aput-object p2, v1, p1

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/W4;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception p0

    .line 38
    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/ads/Q4;

    .line 39
    .line 40
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/Q4;

    .line 45
    .line 46
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public static final q(Ljava/util/List;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/F4;->a0:Lcom/google/android/gms/internal/ads/V4;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/F4;->a0:Lcom/google/android/gms/internal/ads/V4;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/V4;->b:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->s2:Lcom/google/android/gms/internal/ads/J7;

    .line 19
    .line 20
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 21
    .line 22
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Long;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 35
    .line 36
    invoke-interface {v0, p0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catch_0
    move-exception p0

    .line 41
    new-instance v0, Ljava/io/StringWriter;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v1, Ljava/io/PrintWriter;

    .line 47
    .line 48
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string v0, "class methods got exception: "

    .line 59
    .line 60
    const-string v1, "G4"

    .line 61
    .line 62
    invoke-static {v0, p0, v1}, La/r;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_0
    return-void
.end method

.method public static r(Landroid/content/Context;LJ2/t;)Lcom/google/android/gms/internal/ads/G4;
    .locals 6

    .line 1
    iget-boolean v0, p1, LJ2/t;->H:Z

    .line 2
    .line 3
    const-class v1, Lcom/google/android/gms/internal/ads/G4;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    sget-boolean v2, Lcom/google/android/gms/internal/ads/G4;->f0:Z

    .line 7
    .line 8
    if-nez v2, :cond_4

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    const-wide/16 v4, 0x3e8

    .line 15
    .line 16
    div-long/2addr v2, v4

    .line 17
    sput-wide v2, Lcom/google/android/gms/internal/ads/G4;->g0:J

    .line 18
    .line 19
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/G4;->m(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/V4;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/google/android/gms/internal/ads/F4;->a0:Lcom/google/android/gms/internal/ads/V4;

    .line 24
    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->e3:Lcom/google/android/gms/internal/ads/J7;

    .line 26
    .line 27
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 28
    .line 29
    iget-object v3, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 30
    .line 31
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    if-eqz p0, :cond_0

    .line 44
    .line 45
    new-instance v0, Lcom/google/android/gms/internal/ads/K4;

    .line 46
    .line 47
    const-string v3, "connectivity"

    .line 48
    .line 49
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Landroid/net/ConnectivityManager;

    .line 54
    .line 55
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/K4;-><init>(Landroid/net/ConnectivityManager;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/ads/G4;->h0:Lcom/google/android/gms/internal/ads/K4;

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/F4;->a0:Lcom/google/android/gms/internal/ads/V4;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/V4;->b:Ljava/util/concurrent/ExecutorService;

    .line 68
    .line 69
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->f3:Lcom/google/android/gms/internal/ads/J7;

    .line 70
    .line 71
    iget-object v4, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 72
    .line 73
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Ljava/lang/Boolean;

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_2

    .line 84
    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/b5;->a(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/ads/b5;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sput-object v0, Lcom/google/android/gms/internal/ads/G4;->i0:Lcom/google/android/gms/internal/ads/b5;

    .line 92
    .line 93
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->x2:Lcom/google/android/gms/internal/ads/J7;

    .line 94
    .line 95
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 96
    .line 97
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Ljava/lang/Boolean;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_3

    .line 108
    .line 109
    new-instance v0, LW0/g;

    .line 110
    .line 111
    invoke-direct {v0}, LW0/g;-><init>()V

    .line 112
    .line 113
    .line 114
    sput-object v0, Lcom/google/android/gms/internal/ads/G4;->j0:LW0/g;

    .line 115
    .line 116
    :cond_3
    const/4 v0, 0x1

    .line 117
    sput-boolean v0, Lcom/google/android/gms/internal/ads/G4;->f0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .line 119
    :cond_4
    monitor-exit v1

    .line 120
    new-instance v0, Lcom/google/android/gms/internal/ads/G4;

    .line 121
    .line 122
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/G4;-><init>(Landroid/content/Context;LJ2/t;)V

    .line 123
    .line 124
    .line 125
    return-object v0

    .line 126
    :goto_2
    monitor-exit v1

    .line 127
    throw p0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->v2:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/G4;->c0:Lcom/google/android/gms/internal/ads/Z4;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/F4;->a0:Lcom/google/android/gms/internal/ads/V4;

    .line 25
    .line 26
    new-instance v1, Lcom/google/android/gms/internal/ads/Z4;

    .line 27
    .line 28
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/V4;->a:Landroid/content/Context;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/V4;->q:Lcom/google/android/gms/internal/ads/R4;

    .line 31
    .line 32
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/Z4;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/R4;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/G4;->c0:Lcom/google/android/gms/internal/ads/Z4;

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/G4;->c0:Lcom/google/android/gms/internal/ads/Z4;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Z4;->a(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public final f([Ljava/lang/StackTraceElement;)J
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/F4;->a0:Lcom/google/android/gms/internal/ads/V4;

    .line 3
    .line 4
    const-string v2, "qb9dl/IB08b/6izFoDp5ONFGusaE64enfOjVCLWlhNF7+NrRoaDnYUmwC44nswXK"

    .line 5
    .line 6
    const-string v3, "+1rx5i0z5L53m4fOjp1rgOA40SLCpA1mGw0uq9igoow="

    .line 7
    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/V4;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/J4;

    .line 17
    .line 18
    new-array v3, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object p1, v3, v4

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/String;

    .line 29
    .line 30
    invoke-direct {v2, p1, v0}, Lcom/google/android/gms/internal/ads/J4;-><init>(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, v2, Lcom/google/android/gms/internal/ads/J4;->b:Ljava/lang/Long;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-wide v0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    goto :goto_0

    .line 42
    :catch_1
    move-exception p1

    .line 43
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/Q4;

    .line 44
    .line 45
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/Q4;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p1
.end method

.method public final g(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/V3;
    .locals 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/G4;->i0:Lcom/google/android/gms/internal/ads/b5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/b5;->d:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/b5;->b:J

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->x2:Lcom/google/android/gms/internal/ads/J7;

    .line 16
    .line 17
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 18
    .line 19
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    sget-object v0, Lcom/google/android/gms/internal/ads/G4;->j0:LW0/g;

    .line 34
    .line 35
    iget-wide v1, v0, LW0/g;->g:J

    .line 36
    .line 37
    iput-wide v1, v0, LW0/g;->h:J

    .line 38
    .line 39
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    iput-wide v1, v0, LW0/g;->g:J

    .line 44
    .line 45
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/j4;->a0()Lcom/google/android/gms/internal/ads/V3;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/G4;->b0:LJ2/t;

    .line 50
    .line 51
    iget-object v2, v1, LJ2/t;->I:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v2, Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_2

    .line 60
    .line 61
    iget-object v2, v1, LJ2/t;->I:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v2, Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 66
    .line 67
    .line 68
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 69
    .line 70
    check-cast v3, Lcom/google/android/gms/internal/ads/j4;

    .line 71
    .line 72
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/j4;->A0(Lcom/google/android/gms/internal/ads/j4;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    iget-boolean v1, v1, LJ2/t;->H:Z

    .line 76
    .line 77
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/G4;->m(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/V4;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    const/4 v8, 0x1

    .line 82
    move-object v3, p0

    .line 83
    move-object v5, v0

    .line 84
    move-object v6, p2

    .line 85
    move-object v7, p3

    .line 86
    move-object v9, p1

    .line 87
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/G4;->p(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;Landroid/view/View;Landroid/app/Activity;ZLandroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    return-object v0
.end method

.method public final h(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/V3;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/G4;->i0:Lcom/google/android/gms/internal/ads/b5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/b5;->d:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/b5;->b:J

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->x2:Lcom/google/android/gms/internal/ads/J7;

    .line 16
    .line 17
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 18
    .line 19
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    sget-object v0, Lcom/google/android/gms/internal/ads/G4;->j0:LW0/g;

    .line 34
    .line 35
    iget-wide v1, v0, LW0/g;->a:J

    .line 36
    .line 37
    iput-wide v1, v0, LW0/g;->b:J

    .line 38
    .line 39
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    iput-wide v1, v0, LW0/g;->a:J

    .line 44
    .line 45
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/j4;->a0()Lcom/google/android/gms/internal/ads/V3;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/G4;->b0:LJ2/t;

    .line 50
    .line 51
    iget-object v2, v1, LJ2/t;->I:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v2, Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_2

    .line 60
    .line 61
    iget-object v2, v1, LJ2/t;->I:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v2, Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 66
    .line 67
    .line 68
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 69
    .line 70
    check-cast v3, Lcom/google/android/gms/internal/ads/j4;

    .line 71
    .line 72
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/j4;->A0(Lcom/google/android/gms/internal/ads/j4;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    iget-boolean v2, v1, LJ2/t;->H:Z

    .line 76
    .line 77
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/G4;->m(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/V4;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/V4;->b:Ljava/util/concurrent/ExecutorService;

    .line 82
    .line 83
    if-eqz v3, :cond_4

    .line 84
    .line 85
    iget-boolean v1, v1, LJ2/t;->H:Z

    .line 86
    .line 87
    if-nez v1, :cond_3

    .line 88
    .line 89
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/internal/ads/G4;->o(Lcom/google/android/gms/internal/ads/V4;Landroid/content/Context;Lcom/google/android/gms/internal/ads/V3;)Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    goto :goto_0

    .line 94
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/V4;->a()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    new-instance v3, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/internal/ads/G4;->o(Lcom/google/android/gms/internal/ads/V4;Landroid/content/Context;Lcom/google/android/gms/internal/ads/V3;)Ljava/util/ArrayList;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 108
    .line 109
    .line 110
    new-instance p1, Lcom/google/android/gms/internal/ads/d5;

    .line 111
    .line 112
    const/4 v4, 0x3

    .line 113
    invoke-direct {p1, v2, v0, v1, v4}, Lcom/google/android/gms/internal/ads/d5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;II)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-object p1, v3

    .line 120
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/G4;->q(Ljava/util/List;)V

    .line 121
    .line 122
    .line 123
    :cond_4
    return-object v0
.end method

.method public final i(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/V3;
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/G4;->i0:Lcom/google/android/gms/internal/ads/b5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/b5;->d:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/b5;->b:J

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->x2:Lcom/google/android/gms/internal/ads/J7;

    .line 16
    .line 17
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 18
    .line 19
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    sget-object v0, Lcom/google/android/gms/internal/ads/G4;->j0:LW0/g;

    .line 34
    .line 35
    invoke-virtual {v0, p1, p2}, LW0/g;->c(Landroid/content/Context;Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/j4;->a0()Lcom/google/android/gms/internal/ads/V3;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/G4;->b0:LJ2/t;

    .line 43
    .line 44
    iget-object v2, v1, LJ2/t;->I:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v2, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 49
    .line 50
    .line 51
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 52
    .line 53
    check-cast v3, Lcom/google/android/gms/internal/ads/j4;

    .line 54
    .line 55
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/j4;->A0(Lcom/google/android/gms/internal/ads/j4;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-boolean v1, v1, LJ2/t;->H:Z

    .line 59
    .line 60
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/G4;->m(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/V4;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const/4 v6, 0x0

    .line 65
    move-object v1, p0

    .line 66
    move-object v3, v0

    .line 67
    move-object v4, p2

    .line 68
    move-object v5, p3

    .line 69
    move-object v7, p1

    .line 70
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/G4;->p(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;Landroid/view/View;Landroid/app/Activity;ZLandroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    return-object v0
.end method

.method public final j(Landroid/view/MotionEvent;)Lcom/google/android/gms/internal/ads/W4;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/F4;->a0:Lcom/google/android/gms/internal/ads/V4;

    .line 2
    .line 3
    const-string v1, "pSQoWHdFqf8FxrFh/c3UdBWF16OW6yp/zWpxt2kX61Wv+QY4WkeyFhaCYkiWXfUx"

    .line 4
    .line 5
    const-string v2, "b4xBpY1Zr7toyC1sOTTNBO4ImhCct0sLu70B1nFUAHo="

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/V4;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/ads/W4;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object p1, v2, v3

    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/F4;->Y:Landroid/util/DisplayMetrics;

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    aput-object p1, v2, v3

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/W4;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :catch_0
    move-exception p1

    .line 40
    goto :goto_0

    .line 41
    :catch_1
    move-exception p1

    .line 42
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/Q4;

    .line 43
    .line 44
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/Q4;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method public final o(Lcom/google/android/gms/internal/ads/V4;Landroid/content/Context;Lcom/google/android/gms/internal/ads/V3;)Ljava/util/ArrayList;
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/V4;->a()I

    .line 2
    .line 3
    .line 4
    move-result v9

    .line 5
    new-instance v10, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/V4;->p:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p3, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 18
    .line 19
    check-cast p1, Lcom/google/android/gms/internal/ads/j4;

    .line 20
    .line 21
    const-wide/16 p2, 0x4000

    .line 22
    .line 23
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/j4;->K0(Lcom/google/android/gms/internal/ads/j4;J)V

    .line 24
    .line 25
    .line 26
    return-object v10

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/G4;->b0:LJ2/t;

    .line 28
    .line 29
    iget-object v0, v0, LJ2/t;->J:Ljava/lang/Object;

    .line 30
    .line 31
    move-object v5, v0

    .line 32
    check-cast v5, Lcom/google/android/gms/internal/ads/U3;

    .line 33
    .line 34
    new-instance v6, Lcom/google/android/gms/internal/ads/g5;

    .line 35
    .line 36
    move-object v0, v6

    .line 37
    move-object v1, p1

    .line 38
    move-object v2, p3

    .line 39
    move v3, v9

    .line 40
    move-object v4, p2

    .line 41
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/g5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;ILandroid/content/Context;Lcom/google/android/gms/internal/ads/U3;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    new-instance v6, Lcom/google/android/gms/internal/ads/i5;

    .line 48
    .line 49
    sget-wide v3, Lcom/google/android/gms/internal/ads/G4;->g0:J

    .line 50
    .line 51
    move-object v0, v6

    .line 52
    move v5, v9

    .line 53
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/i5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;JI)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    new-instance v0, Lcom/google/android/gms/internal/ads/o5;

    .line 60
    .line 61
    invoke-direct {v0, p1, p3, v9}, Lcom/google/android/gms/internal/ads/o5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    new-instance v0, Lcom/google/android/gms/internal/ads/c5;

    .line 68
    .line 69
    invoke-direct {v0, p1, p3, v9, p2}, Lcom/google/android/gms/internal/ads/c5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;ILandroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    new-instance v7, Lcom/google/android/gms/internal/ads/r5;

    .line 76
    .line 77
    const-string v2, "FIygBXZrpziR+Pp2xmzyZ9k6GUcrj9kWbY5XuUd40ERy2hxHTKqhUwfuGSusXUTd"

    .line 78
    .line 79
    const-string v3, "t4LignzpQnyAJJAZeU8P3GGD0dgmuTMT4n9grwU+EMc="

    .line 80
    .line 81
    const/16 v6, 0x21

    .line 82
    .line 83
    move-object v0, v7

    .line 84
    move-object v1, p1

    .line 85
    move-object v4, p3

    .line 86
    move v5, v9

    .line 87
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/t5;-><init>(Lcom/google/android/gms/internal/ads/V4;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/V3;II)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    new-instance v0, Lcom/google/android/gms/internal/ads/f5;

    .line 94
    .line 95
    invoke-direct {v0, p1, p3, v9, p2}, Lcom/google/android/gms/internal/ads/f5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;ILandroid/content/Context;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    new-instance p2, Lcom/google/android/gms/internal/ads/d5;

    .line 102
    .line 103
    const/4 v0, 0x2

    .line 104
    invoke-direct {p2, p1, p3, v9, v0}, Lcom/google/android/gms/internal/ads/d5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;II)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v10, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    new-instance p2, Lcom/google/android/gms/internal/ads/d5;

    .line 111
    .line 112
    const/4 v0, 0x5

    .line 113
    invoke-direct {p2, p1, p3, v9, v0}, Lcom/google/android/gms/internal/ads/d5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;II)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v10, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    new-instance p2, Lcom/google/android/gms/internal/ads/d5;

    .line 120
    .line 121
    const/4 v0, 0x6

    .line 122
    invoke-direct {p2, p1, p3, v9, v0}, Lcom/google/android/gms/internal/ads/d5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;II)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v10, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    new-instance p2, Lcom/google/android/gms/internal/ads/h5;

    .line 129
    .line 130
    invoke-direct {p2, p1, p3, v9}, Lcom/google/android/gms/internal/ads/h5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v10, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    new-instance p2, Lcom/google/android/gms/internal/ads/m5;

    .line 137
    .line 138
    invoke-direct {p2, p1, p3, v9}, Lcom/google/android/gms/internal/ads/m5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v10, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    new-instance p2, Lcom/google/android/gms/internal/ads/d5;

    .line 145
    .line 146
    const/16 v0, 0x9

    .line 147
    .line 148
    invoke-direct {p2, p1, p3, v9, v0}, Lcom/google/android/gms/internal/ads/d5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;II)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v10, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    new-instance p2, Lcom/google/android/gms/internal/ads/d5;

    .line 155
    .line 156
    const/4 v0, 0x1

    .line 157
    invoke-direct {p2, p1, p3, v9, v0}, Lcom/google/android/gms/internal/ads/d5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;II)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v10, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    new-instance p2, Lcom/google/android/gms/internal/ads/d5;

    .line 164
    .line 165
    const/16 v0, 0x8

    .line 166
    .line 167
    invoke-direct {p2, p1, p3, v9, v0}, Lcom/google/android/gms/internal/ads/d5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;II)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v10, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    new-instance p2, Lcom/google/android/gms/internal/ads/p5;

    .line 174
    .line 175
    invoke-direct {p2, p1, p3, v9}, Lcom/google/android/gms/internal/ads/p5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v10, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 182
    .line 183
    const/16 v0, 0x18

    .line 184
    .line 185
    if-lt p2, v0, :cond_3

    .line 186
    .line 187
    sget-object p2, Lcom/google/android/gms/internal/ads/Q7;->e3:Lcom/google/android/gms/internal/ads/J7;

    .line 188
    .line 189
    sget-object v0, Ll3/q;->d:Ll3/q;

    .line 190
    .line 191
    iget-object v0, v0, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 192
    .line 193
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    check-cast p2, Ljava/lang/Boolean;

    .line 198
    .line 199
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 200
    .line 201
    .line 202
    move-result p2

    .line 203
    if-eqz p2, :cond_3

    .line 204
    .line 205
    sget-object p2, Lcom/google/android/gms/internal/ads/G4;->i0:Lcom/google/android/gms/internal/ads/b5;

    .line 206
    .line 207
    const-wide/16 v0, -0x1

    .line 208
    .line 209
    if-eqz p2, :cond_2

    .line 210
    .line 211
    iget-boolean v2, p2, Lcom/google/android/gms/internal/ads/b5;->d:Z

    .line 212
    .line 213
    if-eqz v2, :cond_1

    .line 214
    .line 215
    iget-wide v2, p2, Lcom/google/android/gms/internal/ads/b5;->b:J

    .line 216
    .line 217
    iget-wide v4, p2, Lcom/google/android/gms/internal/ads/b5;->a:J

    .line 218
    .line 219
    sub-long/2addr v2, v4

    .line 220
    goto :goto_0

    .line 221
    :cond_1
    move-wide v2, v0

    .line 222
    :goto_0
    iget-wide v4, p2, Lcom/google/android/gms/internal/ads/b5;->c:J

    .line 223
    .line 224
    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/b5;->c:J

    .line 225
    .line 226
    move-wide v7, v4

    .line 227
    move-wide v5, v2

    .line 228
    goto :goto_1

    .line 229
    :cond_2
    move-wide v5, v0

    .line 230
    move-wide v7, v5

    .line 231
    :goto_1
    new-instance p2, Lcom/google/android/gms/internal/ads/n5;

    .line 232
    .line 233
    sget-object v4, Lcom/google/android/gms/internal/ads/G4;->h0:Lcom/google/android/gms/internal/ads/K4;

    .line 234
    .line 235
    move-object v0, p2

    .line 236
    move-object v1, p1

    .line 237
    move-object v2, p3

    .line 238
    move v3, v9

    .line 239
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/n5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;ILcom/google/android/gms/internal/ads/K4;JJ)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v10, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    :cond_3
    sget-object p2, Lcom/google/android/gms/internal/ads/Q7;->d3:Lcom/google/android/gms/internal/ads/J7;

    .line 246
    .line 247
    sget-object v0, Ll3/q;->d:Ll3/q;

    .line 248
    .line 249
    iget-object v1, v0, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 250
    .line 251
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    check-cast p2, Ljava/lang/Boolean;

    .line 256
    .line 257
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 258
    .line 259
    .line 260
    move-result p2

    .line 261
    if-eqz p2, :cond_4

    .line 262
    .line 263
    new-instance p2, Lcom/google/android/gms/internal/ads/d5;

    .line 264
    .line 265
    const/4 v1, 0x7

    .line 266
    invoke-direct {p2, p1, p3, v9, v1}, Lcom/google/android/gms/internal/ads/d5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;II)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v10, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    :cond_4
    new-instance p2, Lcom/google/android/gms/internal/ads/d5;

    .line 273
    .line 274
    const/4 v1, 0x4

    .line 275
    invoke-direct {p2, p1, p3, v9, v1}, Lcom/google/android/gms/internal/ads/d5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;II)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v10, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    sget-object p2, Lcom/google/android/gms/internal/ads/Q7;->h3:Lcom/google/android/gms/internal/ads/J7;

    .line 282
    .line 283
    iget-object v0, v0, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 284
    .line 285
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object p2

    .line 289
    check-cast p2, Ljava/lang/Boolean;

    .line 290
    .line 291
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 292
    .line 293
    .line 294
    move-result p2

    .line 295
    if-eqz p2, :cond_5

    .line 296
    .line 297
    new-instance p2, Lcom/google/android/gms/internal/ads/d5;

    .line 298
    .line 299
    const/4 v0, 0x0

    .line 300
    invoke-direct {p2, p1, p3, v9, v0}, Lcom/google/android/gms/internal/ads/d5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;II)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v10, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    :cond_5
    return-object v10
.end method

.method public final p(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;Landroid/view/View;Landroid/app/Activity;ZLandroid/content/Context;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v8, p1

    .line 3
    .line 4
    move-object/from16 v9, p2

    .line 5
    .line 6
    const/4 v7, 0x1

    .line 7
    const/4 v10, 0x0

    .line 8
    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/V4;->p:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 13
    .line 14
    .line 15
    iget-object v1, v9, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 16
    .line 17
    check-cast v1, Lcom/google/android/gms/internal/ads/j4;

    .line 18
    .line 19
    const-wide/16 v2, 0x4000

    .line 20
    .line 21
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/j4;->K0(Lcom/google/android/gms/internal/ads/j4;J)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/google/android/gms/internal/ads/j5;

    .line 25
    .line 26
    invoke-direct {v1, v10, v8, v9}, Lcom/google/android/gms/internal/ads/j5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    new-array v2, v7, [Ljava/util/concurrent/Callable;

    .line 30
    .line 31
    aput-object v1, v2, v10

    .line 32
    .line 33
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :cond_0
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/G4;->s(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;)V

    .line 40
    .line 41
    .line 42
    new-instance v11, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/V4;->b:Ljava/util/concurrent/ExecutorService;

    .line 48
    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/V4;->a()I

    .line 54
    .line 55
    .line 56
    move-result v12

    .line 57
    new-instance v1, Lcom/google/android/gms/internal/ads/j5;

    .line 58
    .line 59
    invoke-direct {v1, v10, v8, v9}, Lcom/google/android/gms/internal/ads/j5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    new-instance v1, Lcom/google/android/gms/internal/ads/o5;

    .line 66
    .line 67
    invoke-direct {v1, v8, v9, v12}, Lcom/google/android/gms/internal/ads/o5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    new-instance v13, Lcom/google/android/gms/internal/ads/i5;

    .line 74
    .line 75
    sget-wide v4, Lcom/google/android/gms/internal/ads/G4;->g0:J

    .line 76
    .line 77
    move-object v1, v13

    .line 78
    move-object/from16 v2, p1

    .line 79
    .line 80
    move-object/from16 v3, p2

    .line 81
    .line 82
    move v6, v12

    .line 83
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/i5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;JI)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    new-instance v1, Lcom/google/android/gms/internal/ads/h5;

    .line 90
    .line 91
    invoke-direct {v1, v8, v9, v12}, Lcom/google/android/gms/internal/ads/h5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    new-instance v1, Lcom/google/android/gms/internal/ads/d5;

    .line 98
    .line 99
    const/4 v2, 0x5

    .line 100
    invoke-direct {v1, v8, v9, v12, v2}, Lcom/google/android/gms/internal/ads/d5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;II)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    new-instance v1, Lcom/google/android/gms/internal/ads/d5;

    .line 107
    .line 108
    const/4 v2, 0x6

    .line 109
    invoke-direct {v1, v8, v9, v12, v2}, Lcom/google/android/gms/internal/ads/d5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;II)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    new-instance v1, Lcom/google/android/gms/internal/ads/m5;

    .line 116
    .line 117
    invoke-direct {v1, v8, v9, v12}, Lcom/google/android/gms/internal/ads/m5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    new-instance v1, Lcom/google/android/gms/internal/ads/d5;

    .line 124
    .line 125
    const/4 v2, 0x2

    .line 126
    invoke-direct {v1, v8, v9, v12, v2}, Lcom/google/android/gms/internal/ads/d5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;II)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    new-instance v1, Lcom/google/android/gms/internal/ads/d5;

    .line 133
    .line 134
    const/16 v2, 0x9

    .line 135
    .line 136
    invoke-direct {v1, v8, v9, v12, v2}, Lcom/google/android/gms/internal/ads/d5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;II)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    new-instance v1, Lcom/google/android/gms/internal/ads/d5;

    .line 143
    .line 144
    invoke-direct {v1, v8, v9, v12, v7}, Lcom/google/android/gms/internal/ads/d5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;II)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    new-instance v1, Lcom/google/android/gms/internal/ads/d5;

    .line 151
    .line 152
    const/16 v2, 0x8

    .line 153
    .line 154
    invoke-direct {v1, v8, v9, v12, v2}, Lcom/google/android/gms/internal/ads/d5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;II)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    new-instance v1, Lcom/google/android/gms/internal/ads/k5;

    .line 161
    .line 162
    new-instance v2, Ljava/lang/Throwable;

    .line 163
    .line 164
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-direct {v1, v8, v9, v12, v2}, Lcom/google/android/gms/internal/ads/k5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;I[Ljava/lang/StackTraceElement;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    new-instance v1, Lcom/google/android/gms/internal/ads/k5;

    .line 178
    .line 179
    move-object/from16 v7, p3

    .line 180
    .line 181
    invoke-direct {v1, v8, v9, v12, v7}, Lcom/google/android/gms/internal/ads/k5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;ILandroid/view/View;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    new-instance v1, Lcom/google/android/gms/internal/ads/p5;

    .line 188
    .line 189
    invoke-direct {v1, v8, v9, v12}, Lcom/google/android/gms/internal/ads/p5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->t2:Lcom/google/android/gms/internal/ads/J7;

    .line 196
    .line 197
    sget-object v13, Ll3/q;->d:Ll3/q;

    .line 198
    .line 199
    iget-object v2, v13, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 200
    .line 201
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    check-cast v1, Ljava/lang/Boolean;

    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-eqz v1, :cond_2

    .line 212
    .line 213
    new-instance v14, Lcom/google/android/gms/internal/ads/c5;

    .line 214
    .line 215
    move-object v1, v14

    .line 216
    move-object/from16 v2, p1

    .line 217
    .line 218
    move-object/from16 v3, p2

    .line 219
    .line 220
    move v4, v12

    .line 221
    move-object/from16 v5, p3

    .line 222
    .line 223
    move-object/from16 v6, p4

    .line 224
    .line 225
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/c5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;ILandroid/view/View;Landroid/app/Activity;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->h3:Lcom/google/android/gms/internal/ads/J7;

    .line 232
    .line 233
    iget-object v2, v13, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 234
    .line 235
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    check-cast v1, Ljava/lang/Boolean;

    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-eqz v1, :cond_3

    .line 246
    .line 247
    new-instance v1, Lcom/google/android/gms/internal/ads/d5;

    .line 248
    .line 249
    invoke-direct {v1, v8, v9, v12, v10}, Lcom/google/android/gms/internal/ads/d5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;II)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    :cond_3
    if-eqz p5, :cond_4

    .line 256
    .line 257
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->v2:Lcom/google/android/gms/internal/ads/J7;

    .line 258
    .line 259
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    check-cast v1, Ljava/lang/Boolean;

    .line 264
    .line 265
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-eqz v1, :cond_7

    .line 270
    .line 271
    new-instance v1, Lcom/google/android/gms/internal/ads/q5;

    .line 272
    .line 273
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/G4;->c0:Lcom/google/android/gms/internal/ads/Z4;

    .line 274
    .line 275
    invoke-direct {v1, v8, v9, v12, v2}, Lcom/google/android/gms/internal/ads/q5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;ILcom/google/android/gms/internal/ads/Z4;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    goto :goto_0

    .line 282
    :cond_4
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->w2:Lcom/google/android/gms/internal/ads/J7;

    .line 283
    .line 284
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    check-cast v1, Ljava/lang/Boolean;

    .line 289
    .line 290
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 291
    .line 292
    .line 293
    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    if-eqz v1, :cond_5

    .line 295
    .line 296
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/G4;->d0:Ljava/util/HashMap;

    .line 297
    .line 298
    new-instance v10, Lcom/google/android/gms/internal/ads/l5;

    .line 299
    .line 300
    move-object v1, v10

    .line 301
    move-object/from16 v2, p1

    .line 302
    .line 303
    move-object/from16 v3, p2

    .line 304
    .line 305
    move v4, v12

    .line 306
    move-object/from16 v6, p3

    .line 307
    .line 308
    move-object/from16 v7, p6

    .line 309
    .line 310
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/l5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;ILjava/util/HashMap;Landroid/view/View;Landroid/content/Context;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    :catch_0
    :cond_5
    :try_start_1
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->x2:Lcom/google/android/gms/internal/ads/J7;

    .line 317
    .line 318
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 319
    .line 320
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 321
    .line 322
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    check-cast v1, Ljava/lang/Boolean;

    .line 327
    .line 328
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 329
    .line 330
    .line 331
    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 332
    if-eqz v1, :cond_6

    .line 333
    .line 334
    new-instance v1, Lcom/google/android/gms/internal/ads/k5;

    .line 335
    .line 336
    sget-object v2, Lcom/google/android/gms/internal/ads/G4;->j0:LW0/g;

    .line 337
    .line 338
    invoke-direct {v1, v8, v9, v12, v2}, Lcom/google/android/gms/internal/ads/k5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;ILW0/g;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    :catch_1
    :cond_6
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->y2:Lcom/google/android/gms/internal/ads/J7;

    .line 345
    .line 346
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 347
    .line 348
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 349
    .line 350
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    check-cast v1, Ljava/lang/Boolean;

    .line 355
    .line 356
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    if-eqz v1, :cond_7

    .line 361
    .line 362
    new-instance v1, Lcom/google/android/gms/internal/ads/k5;

    .line 363
    .line 364
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/F4;->Z:Lcom/google/android/gms/internal/ads/K4;

    .line 365
    .line 366
    invoke-direct {v1, v8, v9, v12, v2}, Lcom/google/android/gms/internal/ads/k5;-><init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;ILcom/google/android/gms/internal/ads/K4;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    :cond_7
    :goto_0
    move-object v1, v11

    .line 373
    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/G4;->q(Ljava/util/List;)V

    .line 374
    .line 375
    .line 376
    return-void
.end method

.method public final declared-synchronized s(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;)V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/F4;->G:Landroid/view/MotionEvent;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/F4;->Y:Landroid/util/DisplayMetrics;

    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/G4;->n(Lcom/google/android/gms/internal/ads/V4;Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Lcom/google/android/gms/internal/ads/W4;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/W4;->a:Ljava/lang/Long;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 19
    .line 20
    .line 21
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 22
    .line 23
    check-cast v2, Lcom/google/android/gms/internal/ads/j4;

    .line 24
    .line 25
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/j4;->G0(Lcom/google/android/gms/internal/ads/j4;J)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto/16 :goto_5

    .line 31
    .line 32
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/W4;->b:Ljava/lang/Long;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 41
    .line 42
    .line 43
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 44
    .line 45
    check-cast v2, Lcom/google/android/gms/internal/ads/j4;

    .line 46
    .line 47
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/j4;->H0(Lcom/google/android/gms/internal/ads/j4;J)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/W4;->c:Ljava/lang/Long;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 59
    .line 60
    .line 61
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 62
    .line 63
    check-cast v2, Lcom/google/android/gms/internal/ads/j4;

    .line 64
    .line 65
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/j4;->I0(Lcom/google/android/gms/internal/ads/j4;J)V

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/F4;->X:Z

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/W4;->d:Ljava/lang/Long;

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 81
    .line 82
    .line 83
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 84
    .line 85
    check-cast v2, Lcom/google/android/gms/internal/ads/j4;

    .line 86
    .line 87
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/j4;->D(Lcom/google/android/gms/internal/ads/j4;J)V

    .line 88
    .line 89
    .line 90
    :cond_3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/W4;->e:Ljava/lang/Long;

    .line 91
    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 99
    .line 100
    .line 101
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 102
    .line 103
    check-cast p1, Lcom/google/android/gms/internal/ads/j4;

    .line 104
    .line 105
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/j4;->E(Lcom/google/android/gms/internal/ads/j4;J)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/Q4; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .line 107
    .line 108
    :catch_0
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/g4;->A()Lcom/google/android/gms/internal/ads/f4;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/F4;->I:J

    .line 113
    .line 114
    const/4 v2, 0x0

    .line 115
    const-wide/16 v3, 0x0

    .line 116
    .line 117
    cmp-long v5, v0, v3

    .line 118
    .line 119
    if-lez v5, :cond_6

    .line 120
    .line 121
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/F4;->Y:Landroid/util/DisplayMetrics;

    .line 122
    .line 123
    sget-object v1, Lcom/google/android/gms/internal/ads/X4;->a:[C

    .line 124
    .line 125
    if-eqz v0, :cond_6

    .line 126
    .line 127
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 128
    .line 129
    cmpl-float v1, v1, v2

    .line 130
    .line 131
    if-eqz v1, :cond_6

    .line 132
    .line 133
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/F4;->P:D

    .line 134
    .line 135
    invoke-static {v5, v6, v0}, Lcom/google/android/gms/internal/ads/X4;->a(DLandroid/util/DisplayMetrics;)J

    .line 136
    .line 137
    .line 138
    move-result-wide v0

    .line 139
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 140
    .line 141
    .line 142
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 143
    .line 144
    check-cast v5, Lcom/google/android/gms/internal/ads/g4;

    .line 145
    .line 146
    invoke-static {v5, v0, v1}, Lcom/google/android/gms/internal/ads/g4;->M(Lcom/google/android/gms/internal/ads/g4;J)V

    .line 147
    .line 148
    .line 149
    iget v0, p0, Lcom/google/android/gms/internal/ads/F4;->U:F

    .line 150
    .line 151
    iget v1, p0, Lcom/google/android/gms/internal/ads/F4;->S:F

    .line 152
    .line 153
    sub-float/2addr v0, v1

    .line 154
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/F4;->Y:Landroid/util/DisplayMetrics;

    .line 155
    .line 156
    float-to-double v5, v0

    .line 157
    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/ads/X4;->a(DLandroid/util/DisplayMetrics;)J

    .line 158
    .line 159
    .line 160
    move-result-wide v0

    .line 161
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 162
    .line 163
    .line 164
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 165
    .line 166
    check-cast v5, Lcom/google/android/gms/internal/ads/g4;

    .line 167
    .line 168
    invoke-static {v5, v0, v1}, Lcom/google/android/gms/internal/ads/g4;->N(Lcom/google/android/gms/internal/ads/g4;J)V

    .line 169
    .line 170
    .line 171
    iget v0, p0, Lcom/google/android/gms/internal/ads/F4;->V:F

    .line 172
    .line 173
    iget v1, p0, Lcom/google/android/gms/internal/ads/F4;->T:F

    .line 174
    .line 175
    sub-float/2addr v0, v1

    .line 176
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/F4;->Y:Landroid/util/DisplayMetrics;

    .line 177
    .line 178
    float-to-double v5, v0

    .line 179
    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/ads/X4;->a(DLandroid/util/DisplayMetrics;)J

    .line 180
    .line 181
    .line 182
    move-result-wide v0

    .line 183
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 184
    .line 185
    .line 186
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 187
    .line 188
    check-cast v5, Lcom/google/android/gms/internal/ads/g4;

    .line 189
    .line 190
    invoke-static {v5, v0, v1}, Lcom/google/android/gms/internal/ads/g4;->O(Lcom/google/android/gms/internal/ads/g4;J)V

    .line 191
    .line 192
    .line 193
    iget v0, p0, Lcom/google/android/gms/internal/ads/F4;->S:F

    .line 194
    .line 195
    float-to-double v0, v0

    .line 196
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/F4;->Y:Landroid/util/DisplayMetrics;

    .line 197
    .line 198
    invoke-static {v0, v1, v5}, Lcom/google/android/gms/internal/ads/X4;->a(DLandroid/util/DisplayMetrics;)J

    .line 199
    .line 200
    .line 201
    move-result-wide v0

    .line 202
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 203
    .line 204
    .line 205
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 206
    .line 207
    check-cast v5, Lcom/google/android/gms/internal/ads/g4;

    .line 208
    .line 209
    invoke-static {v5, v0, v1}, Lcom/google/android/gms/internal/ads/g4;->R(Lcom/google/android/gms/internal/ads/g4;J)V

    .line 210
    .line 211
    .line 212
    iget v0, p0, Lcom/google/android/gms/internal/ads/F4;->T:F

    .line 213
    .line 214
    float-to-double v0, v0

    .line 215
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/F4;->Y:Landroid/util/DisplayMetrics;

    .line 216
    .line 217
    invoke-static {v0, v1, v5}, Lcom/google/android/gms/internal/ads/X4;->a(DLandroid/util/DisplayMetrics;)J

    .line 218
    .line 219
    .line 220
    move-result-wide v0

    .line 221
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 222
    .line 223
    .line 224
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 225
    .line 226
    check-cast v5, Lcom/google/android/gms/internal/ads/g4;

    .line 227
    .line 228
    invoke-static {v5, v0, v1}, Lcom/google/android/gms/internal/ads/g4;->S(Lcom/google/android/gms/internal/ads/g4;J)V

    .line 229
    .line 230
    .line 231
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/F4;->X:Z

    .line 232
    .line 233
    if-eqz v0, :cond_6

    .line 234
    .line 235
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/F4;->G:Landroid/view/MotionEvent;

    .line 236
    .line 237
    if-eqz v0, :cond_6

    .line 238
    .line 239
    iget v1, p0, Lcom/google/android/gms/internal/ads/F4;->S:F

    .line 240
    .line 241
    iget v5, p0, Lcom/google/android/gms/internal/ads/F4;->U:F

    .line 242
    .line 243
    sub-float/2addr v1, v5

    .line 244
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    add-float/2addr v1, v0

    .line 249
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/F4;->G:Landroid/view/MotionEvent;

    .line 250
    .line 251
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    sub-float/2addr v1, v0

    .line 256
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/F4;->Y:Landroid/util/DisplayMetrics;

    .line 257
    .line 258
    float-to-double v5, v1

    .line 259
    invoke-static {v5, v6, v0}, Lcom/google/android/gms/internal/ads/X4;->a(DLandroid/util/DisplayMetrics;)J

    .line 260
    .line 261
    .line 262
    move-result-wide v0

    .line 263
    cmp-long v5, v0, v3

    .line 264
    .line 265
    if-eqz v5, :cond_5

    .line 266
    .line 267
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 268
    .line 269
    .line 270
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 271
    .line 272
    check-cast v5, Lcom/google/android/gms/internal/ads/g4;

    .line 273
    .line 274
    invoke-static {v5, v0, v1}, Lcom/google/android/gms/internal/ads/g4;->P(Lcom/google/android/gms/internal/ads/g4;J)V

    .line 275
    .line 276
    .line 277
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/F4;->T:F

    .line 278
    .line 279
    iget v1, p0, Lcom/google/android/gms/internal/ads/F4;->V:F

    .line 280
    .line 281
    sub-float/2addr v0, v1

    .line 282
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/F4;->G:Landroid/view/MotionEvent;

    .line 283
    .line 284
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    add-float/2addr v0, v1

    .line 289
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/F4;->G:Landroid/view/MotionEvent;

    .line 290
    .line 291
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    sub-float/2addr v0, v1

    .line 296
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/F4;->Y:Landroid/util/DisplayMetrics;

    .line 297
    .line 298
    float-to-double v5, v0

    .line 299
    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/ads/X4;->a(DLandroid/util/DisplayMetrics;)J

    .line 300
    .line 301
    .line 302
    move-result-wide v0

    .line 303
    cmp-long v5, v0, v3

    .line 304
    .line 305
    if-eqz v5, :cond_6

    .line 306
    .line 307
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 308
    .line 309
    .line 310
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 311
    .line 312
    check-cast v5, Lcom/google/android/gms/internal/ads/g4;

    .line 313
    .line 314
    invoke-static {v5, v0, v1}, Lcom/google/android/gms/internal/ads/g4;->Q(Lcom/google/android/gms/internal/ads/g4;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    .line 316
    .line 317
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/F4;->G:Landroid/view/MotionEvent;

    .line 318
    .line 319
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/G4;->j(Landroid/view/MotionEvent;)Lcom/google/android/gms/internal/ads/W4;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/W4;->a:Ljava/lang/Long;

    .line 324
    .line 325
    if-eqz v1, :cond_7

    .line 326
    .line 327
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 328
    .line 329
    .line 330
    move-result-wide v5

    .line 331
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 332
    .line 333
    .line 334
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 335
    .line 336
    check-cast v1, Lcom/google/android/gms/internal/ads/g4;

    .line 337
    .line 338
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/g4;->B(Lcom/google/android/gms/internal/ads/g4;J)V

    .line 339
    .line 340
    .line 341
    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/W4;->b:Ljava/lang/Long;

    .line 342
    .line 343
    if-eqz v1, :cond_8

    .line 344
    .line 345
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 346
    .line 347
    .line 348
    move-result-wide v5

    .line 349
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 350
    .line 351
    .line 352
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 353
    .line 354
    check-cast v1, Lcom/google/android/gms/internal/ads/g4;

    .line 355
    .line 356
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/g4;->C(Lcom/google/android/gms/internal/ads/g4;J)V

    .line 357
    .line 358
    .line 359
    :cond_8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/W4;->c:Ljava/lang/Long;

    .line 360
    .line 361
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 362
    .line 363
    .line 364
    move-result-wide v5

    .line 365
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 366
    .line 367
    .line 368
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 369
    .line 370
    check-cast v1, Lcom/google/android/gms/internal/ads/g4;

    .line 371
    .line 372
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/g4;->I(Lcom/google/android/gms/internal/ads/g4;J)V

    .line 373
    .line 374
    .line 375
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/F4;->X:Z

    .line 376
    .line 377
    if-eqz v1, :cond_13

    .line 378
    .line 379
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/W4;->e:Ljava/lang/Long;

    .line 380
    .line 381
    if-eqz v1, :cond_9

    .line 382
    .line 383
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 384
    .line 385
    .line 386
    move-result-wide v5

    .line 387
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 388
    .line 389
    .line 390
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 391
    .line 392
    check-cast v1, Lcom/google/android/gms/internal/ads/g4;

    .line 393
    .line 394
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/g4;->D(Lcom/google/android/gms/internal/ads/g4;J)V

    .line 395
    .line 396
    .line 397
    :cond_9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/W4;->d:Ljava/lang/Long;

    .line 398
    .line 399
    if-eqz v1, :cond_a

    .line 400
    .line 401
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 402
    .line 403
    .line 404
    move-result-wide v5

    .line 405
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 406
    .line 407
    .line 408
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 409
    .line 410
    check-cast v1, Lcom/google/android/gms/internal/ads/g4;

    .line 411
    .line 412
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/g4;->G(Lcom/google/android/gms/internal/ads/g4;J)V

    .line 413
    .line 414
    .line 415
    :cond_a
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/W4;->f:Ljava/lang/Long;

    .line 416
    .line 417
    const/4 v5, 0x1

    .line 418
    const/4 v6, 0x2

    .line 419
    if-eqz v1, :cond_c

    .line 420
    .line 421
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 422
    .line 423
    .line 424
    move-result-wide v7

    .line 425
    cmp-long v1, v7, v3

    .line 426
    .line 427
    if-eqz v1, :cond_b

    .line 428
    .line 429
    const/4 v1, 0x2

    .line 430
    goto :goto_1

    .line 431
    :cond_b
    const/4 v1, 0x1

    .line 432
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 433
    .line 434
    .line 435
    iget-object v7, p1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 436
    .line 437
    check-cast v7, Lcom/google/android/gms/internal/ads/g4;

    .line 438
    .line 439
    invoke-static {v7, v1}, Lcom/google/android/gms/internal/ads/g4;->T(Lcom/google/android/gms/internal/ads/g4;I)V

    .line 440
    .line 441
    .line 442
    :cond_c
    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/F4;->J:J

    .line 443
    .line 444
    cmp-long v1, v7, v3

    .line 445
    .line 446
    if-lez v1, :cond_f

    .line 447
    .line 448
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/F4;->Y:Landroid/util/DisplayMetrics;

    .line 449
    .line 450
    sget-object v9, Lcom/google/android/gms/internal/ads/X4;->a:[C

    .line 451
    .line 452
    if-eqz v1, :cond_d

    .line 453
    .line 454
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 455
    .line 456
    cmpl-float v1, v1, v2

    .line 457
    .line 458
    if-eqz v1, :cond_d

    .line 459
    .line 460
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/F4;->O:J

    .line 461
    .line 462
    long-to-double v1, v1

    .line 463
    long-to-double v7, v7

    .line 464
    div-double/2addr v1, v7

    .line 465
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    .line 466
    .line 467
    .line 468
    move-result-wide v1

    .line 469
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    goto :goto_2

    .line 474
    :cond_d
    const/4 v1, 0x0

    .line 475
    :goto_2
    if-eqz v1, :cond_e

    .line 476
    .line 477
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 478
    .line 479
    .line 480
    move-result-wide v1

    .line 481
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 482
    .line 483
    .line 484
    iget-object v7, p1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 485
    .line 486
    check-cast v7, Lcom/google/android/gms/internal/ads/g4;

    .line 487
    .line 488
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/ads/g4;->E(Lcom/google/android/gms/internal/ads/g4;J)V

    .line 489
    .line 490
    .line 491
    goto :goto_3

    .line 492
    :cond_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 493
    .line 494
    .line 495
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 496
    .line 497
    check-cast v1, Lcom/google/android/gms/internal/ads/g4;

    .line 498
    .line 499
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/g4;->F(Lcom/google/android/gms/internal/ads/g4;)V

    .line 500
    .line 501
    .line 502
    :goto_3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/F4;->N:J

    .line 503
    .line 504
    long-to-double v1, v1

    .line 505
    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/F4;->J:J

    .line 506
    .line 507
    long-to-double v7, v7

    .line 508
    div-double/2addr v1, v7

    .line 509
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    .line 510
    .line 511
    .line 512
    move-result-wide v1

    .line 513
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 514
    .line 515
    .line 516
    iget-object v7, p1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 517
    .line 518
    check-cast v7, Lcom/google/android/gms/internal/ads/g4;

    .line 519
    .line 520
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/ads/g4;->H(Lcom/google/android/gms/internal/ads/g4;J)V

    .line 521
    .line 522
    .line 523
    :cond_f
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/W4;->i:Ljava/lang/Long;

    .line 524
    .line 525
    if-eqz v1, :cond_10

    .line 526
    .line 527
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 528
    .line 529
    .line 530
    move-result-wide v1

    .line 531
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 532
    .line 533
    .line 534
    iget-object v7, p1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 535
    .line 536
    check-cast v7, Lcom/google/android/gms/internal/ads/g4;

    .line 537
    .line 538
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/ads/g4;->K(Lcom/google/android/gms/internal/ads/g4;J)V

    .line 539
    .line 540
    .line 541
    :cond_10
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/W4;->j:Ljava/lang/Long;

    .line 542
    .line 543
    if-eqz v1, :cond_11

    .line 544
    .line 545
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 546
    .line 547
    .line 548
    move-result-wide v1

    .line 549
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 550
    .line 551
    .line 552
    iget-object v7, p1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 553
    .line 554
    check-cast v7, Lcom/google/android/gms/internal/ads/g4;

    .line 555
    .line 556
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/ads/g4;->J(Lcom/google/android/gms/internal/ads/g4;J)V

    .line 557
    .line 558
    .line 559
    :cond_11
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/W4;->k:Ljava/lang/Long;

    .line 560
    .line 561
    if-eqz v0, :cond_13

    .line 562
    .line 563
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 564
    .line 565
    .line 566
    move-result-wide v0

    .line 567
    cmp-long v2, v0, v3

    .line 568
    .line 569
    if-eqz v2, :cond_12

    .line 570
    .line 571
    const/4 v5, 0x2

    .line 572
    :cond_12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 573
    .line 574
    .line 575
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 576
    .line 577
    check-cast v0, Lcom/google/android/gms/internal/ads/g4;

    .line 578
    .line 579
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/g4;->U(Lcom/google/android/gms/internal/ads/g4;I)V
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/Q4; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 580
    .line 581
    .line 582
    :catch_1
    :cond_13
    :try_start_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/F4;->M:J

    .line 583
    .line 584
    cmp-long v2, v0, v3

    .line 585
    .line 586
    if-lez v2, :cond_14

    .line 587
    .line 588
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 589
    .line 590
    .line 591
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 592
    .line 593
    check-cast v2, Lcom/google/android/gms/internal/ads/g4;

    .line 594
    .line 595
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/g4;->L(Lcom/google/android/gms/internal/ads/g4;J)V

    .line 596
    .line 597
    .line 598
    :cond_14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 599
    .line 600
    .line 601
    move-result-object p1

    .line 602
    check-cast p1, Lcom/google/android/gms/internal/ads/g4;

    .line 603
    .line 604
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 605
    .line 606
    .line 607
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 608
    .line 609
    check-cast v0, Lcom/google/android/gms/internal/ads/j4;

    .line 610
    .line 611
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/j4;->Q(Lcom/google/android/gms/internal/ads/j4;Lcom/google/android/gms/internal/ads/g4;)V

    .line 612
    .line 613
    .line 614
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/F4;->I:J

    .line 615
    .line 616
    cmp-long p1, v0, v3

    .line 617
    .line 618
    if-lez p1, :cond_15

    .line 619
    .line 620
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 621
    .line 622
    .line 623
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 624
    .line 625
    check-cast p1, Lcom/google/android/gms/internal/ads/j4;

    .line 626
    .line 627
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/j4;->H(Lcom/google/android/gms/internal/ads/j4;J)V

    .line 628
    .line 629
    .line 630
    :cond_15
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/F4;->J:J

    .line 631
    .line 632
    cmp-long p1, v0, v3

    .line 633
    .line 634
    if-lez p1, :cond_16

    .line 635
    .line 636
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 637
    .line 638
    .line 639
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 640
    .line 641
    check-cast p1, Lcom/google/android/gms/internal/ads/j4;

    .line 642
    .line 643
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/j4;->G(Lcom/google/android/gms/internal/ads/j4;J)V

    .line 644
    .line 645
    .line 646
    :cond_16
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/F4;->K:J

    .line 647
    .line 648
    cmp-long p1, v0, v3

    .line 649
    .line 650
    if-lez p1, :cond_17

    .line 651
    .line 652
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 653
    .line 654
    .line 655
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 656
    .line 657
    check-cast p1, Lcom/google/android/gms/internal/ads/j4;

    .line 658
    .line 659
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/j4;->F(Lcom/google/android/gms/internal/ads/j4;J)V

    .line 660
    .line 661
    .line 662
    :cond_17
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/F4;->L:J

    .line 663
    .line 664
    cmp-long p1, v0, v3

    .line 665
    .line 666
    if-lez p1, :cond_18

    .line 667
    .line 668
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 669
    .line 670
    .line 671
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 672
    .line 673
    check-cast p1, Lcom/google/android/gms/internal/ads/j4;

    .line 674
    .line 675
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/j4;->I(Lcom/google/android/gms/internal/ads/j4;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 676
    .line 677
    .line 678
    :cond_18
    :try_start_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/F4;->H:Ljava/util/LinkedList;

    .line 679
    .line 680
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 681
    .line 682
    .line 683
    move-result p1

    .line 684
    add-int/lit8 p1, p1, -0x1

    .line 685
    .line 686
    if-lez p1, :cond_19

    .line 687
    .line 688
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 689
    .line 690
    .line 691
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 692
    .line 693
    check-cast v0, Lcom/google/android/gms/internal/ads/j4;

    .line 694
    .line 695
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j4;->S(Lcom/google/android/gms/internal/ads/j4;)V

    .line 696
    .line 697
    .line 698
    const/4 v0, 0x0

    .line 699
    :goto_4
    if-ge v0, p1, :cond_19

    .line 700
    .line 701
    sget-object v1, Lcom/google/android/gms/internal/ads/F4;->a0:Lcom/google/android/gms/internal/ads/V4;

    .line 702
    .line 703
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/F4;->H:Ljava/util/LinkedList;

    .line 704
    .line 705
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v2

    .line 709
    check-cast v2, Landroid/view/MotionEvent;

    .line 710
    .line 711
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/F4;->Y:Landroid/util/DisplayMetrics;

    .line 712
    .line 713
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/G4;->n(Lcom/google/android/gms/internal/ads/V4;Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Lcom/google/android/gms/internal/ads/W4;

    .line 714
    .line 715
    .line 716
    move-result-object v1

    .line 717
    invoke-static {}, Lcom/google/android/gms/internal/ads/g4;->A()Lcom/google/android/gms/internal/ads/f4;

    .line 718
    .line 719
    .line 720
    move-result-object v2

    .line 721
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/W4;->a:Ljava/lang/Long;

    .line 722
    .line 723
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 724
    .line 725
    .line 726
    move-result-wide v3

    .line 727
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 728
    .line 729
    .line 730
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 731
    .line 732
    check-cast v5, Lcom/google/android/gms/internal/ads/g4;

    .line 733
    .line 734
    invoke-static {v5, v3, v4}, Lcom/google/android/gms/internal/ads/g4;->B(Lcom/google/android/gms/internal/ads/g4;J)V

    .line 735
    .line 736
    .line 737
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/W4;->b:Ljava/lang/Long;

    .line 738
    .line 739
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 740
    .line 741
    .line 742
    move-result-wide v3

    .line 743
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 744
    .line 745
    .line 746
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 747
    .line 748
    check-cast v1, Lcom/google/android/gms/internal/ads/g4;

    .line 749
    .line 750
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/g4;->C(Lcom/google/android/gms/internal/ads/g4;J)V

    .line 751
    .line 752
    .line 753
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 754
    .line 755
    .line 756
    move-result-object v1

    .line 757
    check-cast v1, Lcom/google/android/gms/internal/ads/g4;

    .line 758
    .line 759
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 760
    .line 761
    .line 762
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 763
    .line 764
    check-cast v2, Lcom/google/android/gms/internal/ads/j4;

    .line 765
    .line 766
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/j4;->R(Lcom/google/android/gms/internal/ads/j4;Lcom/google/android/gms/internal/ads/g4;)V
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/Q4; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 767
    .line 768
    .line 769
    add-int/lit8 v0, v0, 0x1

    .line 770
    .line 771
    goto :goto_4

    .line 772
    :cond_19
    monitor-exit p0

    .line 773
    return-void

    .line 774
    :catch_2
    :try_start_5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 775
    .line 776
    .line 777
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 778
    .line 779
    check-cast p1, Lcom/google/android/gms/internal/ads/j4;

    .line 780
    .line 781
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/j4;->S(Lcom/google/android/gms/internal/ads/j4;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 782
    .line 783
    .line 784
    monitor-exit p0

    .line 785
    return-void

    .line 786
    :goto_5
    monitor-exit p0

    .line 787
    throw p1
.end method
