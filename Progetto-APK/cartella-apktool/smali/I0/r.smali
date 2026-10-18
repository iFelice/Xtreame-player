.class public final LI0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS0/o;


# static fields
.field public static final A0:Ljava/util/regex/Pattern;

.field public static final B0:Ljava/util/regex/Pattern;

.field public static final C0:Ljava/util/regex/Pattern;

.field public static final D0:Ljava/util/regex/Pattern;

.field public static final E0:Ljava/util/regex/Pattern;

.field public static final F0:Ljava/util/regex/Pattern;

.field public static final G0:Ljava/util/regex/Pattern;

.field public static final H0:Ljava/util/regex/Pattern;

.field public static final I:Ljava/util/regex/Pattern;

.field public static final I0:Ljava/util/regex/Pattern;

.field public static final J:Ljava/util/regex/Pattern;

.field public static final J0:Ljava/util/regex/Pattern;

.field public static final K:Ljava/util/regex/Pattern;

.field public static final K0:Ljava/util/regex/Pattern;

.field public static final L:Ljava/util/regex/Pattern;

.field public static final L0:Ljava/util/regex/Pattern;

.field public static final M:Ljava/util/regex/Pattern;

.field public static final M0:Ljava/util/regex/Pattern;

.field public static final N:Ljava/util/regex/Pattern;

.field public static final N0:Ljava/util/regex/Pattern;

.field public static final O:Ljava/util/regex/Pattern;

.field public static final O0:Ljava/util/regex/Pattern;

.field public static final P:Ljava/util/regex/Pattern;

.field public static final P0:Ljava/util/regex/Pattern;

.field public static final Q:Ljava/util/regex/Pattern;

.field public static final Q0:Ljava/util/regex/Pattern;

.field public static final R:Ljava/util/regex/Pattern;

.field public static final R0:Ljava/util/regex/Pattern;

.field public static final S:Ljava/util/regex/Pattern;

.field public static final S0:Ljava/util/regex/Pattern;

.field public static final T:Ljava/util/regex/Pattern;

.field public static final T0:Ljava/util/regex/Pattern;

.field public static final U:Ljava/util/regex/Pattern;

.field public static final U0:Ljava/util/regex/Pattern;

.field public static final V:Ljava/util/regex/Pattern;

.field public static final V0:Ljava/util/regex/Pattern;

.field public static final W:Ljava/util/regex/Pattern;

.field public static final W0:Ljava/util/regex/Pattern;

.field public static final X:Ljava/util/regex/Pattern;

.field public static final X0:Ljava/util/regex/Pattern;

.field public static final Y:Ljava/util/regex/Pattern;

.field public static final Y0:Ljava/util/regex/Pattern;

.field public static final Z:Ljava/util/regex/Pattern;

.field public static final Z0:Ljava/util/regex/Pattern;

.field public static final a0:Ljava/util/regex/Pattern;

.field public static final a1:Ljava/util/regex/Pattern;

.field public static final b0:Ljava/util/regex/Pattern;

.field public static final b1:Ljava/util/regex/Pattern;

.field public static final c0:Ljava/util/regex/Pattern;

.field public static final d0:Ljava/util/regex/Pattern;

.field public static final e0:Ljava/util/regex/Pattern;

.field public static final f0:Ljava/util/regex/Pattern;

.field public static final g0:Ljava/util/regex/Pattern;

.field public static final h0:Ljava/util/regex/Pattern;

.field public static final i0:Ljava/util/regex/Pattern;

.field public static final j0:Ljava/util/regex/Pattern;

.field public static final k0:Ljava/util/regex/Pattern;

.field public static final l0:Ljava/util/regex/Pattern;

.field public static final m0:Ljava/util/regex/Pattern;

.field public static final n0:Ljava/util/regex/Pattern;

.field public static final o0:Ljava/util/regex/Pattern;

.field public static final p0:Ljava/util/regex/Pattern;

.field public static final q0:Ljava/util/regex/Pattern;

.field public static final r0:Ljava/util/regex/Pattern;

.field public static final s0:Ljava/util/regex/Pattern;

.field public static final t0:Ljava/util/regex/Pattern;

.field public static final u0:Ljava/util/regex/Pattern;

.field public static final v0:Ljava/util/regex/Pattern;

.field public static final w0:Ljava/util/regex/Pattern;

.field public static final x0:Ljava/util/regex/Pattern;

.field public static final y0:Ljava/util/regex/Pattern;

.field public static final z0:Ljava/util/regex/Pattern;


# instance fields
.field public final G:LI0/o;

.field public final H:LI0/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "AVERAGE-BANDWIDTH=(\\d+)\\b"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LI0/r;->I:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "VIDEO=\"((?:.|\u000c)+?)\""

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, LI0/r;->J:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    const-string v0, "AUDIO=\"((?:.|\u000c)+?)\""

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, LI0/r;->K:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    const-string v0, "SUBTITLES=\"((?:.|\u000c)+?)\""

    .line 26
    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, LI0/r;->L:Ljava/util/regex/Pattern;

    .line 32
    .line 33
    const-string v0, "CLOSED-CAPTIONS=\"((?:.|\u000c)+?)\""

    .line 34
    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, LI0/r;->M:Ljava/util/regex/Pattern;

    .line 40
    .line 41
    const-string v0, "[^-]BANDWIDTH=(\\d+)\\b"

    .line 42
    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, LI0/r;->N:Ljava/util/regex/Pattern;

    .line 48
    .line 49
    const-string v0, "CHANNELS=\"((?:.|\u000c)+?)\""

    .line 50
    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, LI0/r;->O:Ljava/util/regex/Pattern;

    .line 56
    .line 57
    const-string v0, "VIDEO-RANGE=(SDR|PQ|HLG)"

    .line 58
    .line 59
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, LI0/r;->P:Ljava/util/regex/Pattern;

    .line 64
    .line 65
    const-string v0, "CODECS=\"((?:.|\u000c)+?)\""

    .line 66
    .line 67
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, LI0/r;->Q:Ljava/util/regex/Pattern;

    .line 72
    .line 73
    const-string v0, "SUPPLEMENTAL-CODECS=\"((?:.|\u000c)+?)\""

    .line 74
    .line 75
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, LI0/r;->R:Ljava/util/regex/Pattern;

    .line 80
    .line 81
    const-string v0, "RESOLUTION=(\\d+x\\d+)"

    .line 82
    .line 83
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sput-object v0, LI0/r;->S:Ljava/util/regex/Pattern;

    .line 88
    .line 89
    const-string v0, "FRAME-RATE=([\\d\\.]+)\\b"

    .line 90
    .line 91
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sput-object v0, LI0/r;->T:Ljava/util/regex/Pattern;

    .line 96
    .line 97
    const-string v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    .line 98
    .line 99
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sput-object v0, LI0/r;->U:Ljava/util/regex/Pattern;

    .line 104
    .line 105
    const-string v0, "DURATION=([\\d\\.]+)\\b"

    .line 106
    .line 107
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    sput-object v0, LI0/r;->V:Ljava/util/regex/Pattern;

    .line 112
    .line 113
    const-string v0, "[:,]DURATION=([\\d\\.]+)\\b"

    .line 114
    .line 115
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    sput-object v0, LI0/r;->W:Ljava/util/regex/Pattern;

    .line 120
    .line 121
    const-string v0, "PART-TARGET=([\\d\\.]+)\\b"

    .line 122
    .line 123
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    sput-object v0, LI0/r;->X:Ljava/util/regex/Pattern;

    .line 128
    .line 129
    const-string v0, "#EXT-X-VERSION:(\\d+)\\b"

    .line 130
    .line 131
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    sput-object v0, LI0/r;->Y:Ljava/util/regex/Pattern;

    .line 136
    .line 137
    const-string v0, "#EXT-X-PLAYLIST-TYPE:(.+)\\b"

    .line 138
    .line 139
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    sput-object v0, LI0/r;->Z:Ljava/util/regex/Pattern;

    .line 144
    .line 145
    const-string v0, "CAN-SKIP-UNTIL=([\\d\\.]+)\\b"

    .line 146
    .line 147
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    sput-object v0, LI0/r;->a0:Ljava/util/regex/Pattern;

    .line 152
    .line 153
    const-string v0, "CAN-SKIP-DATERANGES"

    .line 154
    .line 155
    invoke-static {v0}, LI0/r;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    sput-object v0, LI0/r;->b0:Ljava/util/regex/Pattern;

    .line 160
    .line 161
    const-string v0, "SKIPPED-SEGMENTS=(\\d+)\\b"

    .line 162
    .line 163
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    sput-object v0, LI0/r;->c0:Ljava/util/regex/Pattern;

    .line 168
    .line 169
    const-string v0, "[:|,]HOLD-BACK=([\\d\\.]+)\\b"

    .line 170
    .line 171
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    sput-object v0, LI0/r;->d0:Ljava/util/regex/Pattern;

    .line 176
    .line 177
    const-string v0, "PART-HOLD-BACK=([\\d\\.]+)\\b"

    .line 178
    .line 179
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    sput-object v0, LI0/r;->e0:Ljava/util/regex/Pattern;

    .line 184
    .line 185
    const-string v0, "CAN-BLOCK-RELOAD"

    .line 186
    .line 187
    invoke-static {v0}, LI0/r;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    sput-object v0, LI0/r;->f0:Ljava/util/regex/Pattern;

    .line 192
    .line 193
    const-string v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    .line 194
    .line 195
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    sput-object v0, LI0/r;->g0:Ljava/util/regex/Pattern;

    .line 200
    .line 201
    const-string v0, "#EXTINF:([\\d\\.]+)\\b"

    .line 202
    .line 203
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    sput-object v0, LI0/r;->h0:Ljava/util/regex/Pattern;

    .line 208
    .line 209
    const-string v0, "#EXTINF:[\\d\\.]+\\b,(.+)"

    .line 210
    .line 211
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    sput-object v0, LI0/r;->i0:Ljava/util/regex/Pattern;

    .line 216
    .line 217
    const-string v0, "LAST-MSN=(\\d+)\\b"

    .line 218
    .line 219
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    sput-object v0, LI0/r;->j0:Ljava/util/regex/Pattern;

    .line 224
    .line 225
    const-string v0, "LAST-PART=(\\d+)\\b"

    .line 226
    .line 227
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    sput-object v0, LI0/r;->k0:Ljava/util/regex/Pattern;

    .line 232
    .line 233
    const-string v0, "TIME-OFFSET=(-?[\\d\\.]+)\\b"

    .line 234
    .line 235
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    sput-object v0, LI0/r;->l0:Ljava/util/regex/Pattern;

    .line 240
    .line 241
    const-string v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    .line 242
    .line 243
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    sput-object v0, LI0/r;->m0:Ljava/util/regex/Pattern;

    .line 248
    .line 249
    const-string v0, "BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\""

    .line 250
    .line 251
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    sput-object v0, LI0/r;->n0:Ljava/util/regex/Pattern;

    .line 256
    .line 257
    const-string v0, "BYTERANGE-START=(\\d+)\\b"

    .line 258
    .line 259
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    sput-object v0, LI0/r;->o0:Ljava/util/regex/Pattern;

    .line 264
    .line 265
    const-string v0, "BYTERANGE-LENGTH=(\\d+)\\b"

    .line 266
    .line 267
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    sput-object v0, LI0/r;->p0:Ljava/util/regex/Pattern;

    .line 272
    .line 273
    const-string v0, "METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)"

    .line 274
    .line 275
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    sput-object v0, LI0/r;->q0:Ljava/util/regex/Pattern;

    .line 280
    .line 281
    const-string v0, "KEYFORMAT=\"((?:.|\u000c)+?)\""

    .line 282
    .line 283
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    sput-object v0, LI0/r;->r0:Ljava/util/regex/Pattern;

    .line 288
    .line 289
    const-string v0, "KEYFORMATVERSIONS=\"((?:.|\u000c)+?)\""

    .line 290
    .line 291
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    sput-object v0, LI0/r;->s0:Ljava/util/regex/Pattern;

    .line 296
    .line 297
    const-string v0, "URI=\"((?:.|\u000c)+?)\""

    .line 298
    .line 299
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    sput-object v0, LI0/r;->t0:Ljava/util/regex/Pattern;

    .line 304
    .line 305
    const-string v0, "IV=([^,.*]+)"

    .line 306
    .line 307
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    sput-object v0, LI0/r;->u0:Ljava/util/regex/Pattern;

    .line 312
    .line 313
    const-string v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    .line 314
    .line 315
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    sput-object v0, LI0/r;->v0:Ljava/util/regex/Pattern;

    .line 320
    .line 321
    const-string v0, "TYPE=(PART|MAP)"

    .line 322
    .line 323
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    sput-object v0, LI0/r;->w0:Ljava/util/regex/Pattern;

    .line 328
    .line 329
    const-string v0, "LANGUAGE=\"((?:.|\u000c)+?)\""

    .line 330
    .line 331
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    sput-object v0, LI0/r;->x0:Ljava/util/regex/Pattern;

    .line 336
    .line 337
    const-string v0, "NAME=\"((?:.|\u000c)+?)\""

    .line 338
    .line 339
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    sput-object v0, LI0/r;->y0:Ljava/util/regex/Pattern;

    .line 344
    .line 345
    const-string v0, "GROUP-ID=\"((?:.|\u000c)+?)\""

    .line 346
    .line 347
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    sput-object v0, LI0/r;->z0:Ljava/util/regex/Pattern;

    .line 352
    .line 353
    const-string v0, "CHARACTERISTICS=\"((?:.|\u000c)+?)\""

    .line 354
    .line 355
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    sput-object v0, LI0/r;->A0:Ljava/util/regex/Pattern;

    .line 360
    .line 361
    const-string v0, "INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\""

    .line 362
    .line 363
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    sput-object v0, LI0/r;->B0:Ljava/util/regex/Pattern;

    .line 368
    .line 369
    const-string v0, "AUTOSELECT"

    .line 370
    .line 371
    invoke-static {v0}, LI0/r;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    sput-object v0, LI0/r;->C0:Ljava/util/regex/Pattern;

    .line 376
    .line 377
    const-string v0, "DEFAULT"

    .line 378
    .line 379
    invoke-static {v0}, LI0/r;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    sput-object v0, LI0/r;->D0:Ljava/util/regex/Pattern;

    .line 384
    .line 385
    const-string v0, "FORCED"

    .line 386
    .line 387
    invoke-static {v0}, LI0/r;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    sput-object v0, LI0/r;->E0:Ljava/util/regex/Pattern;

    .line 392
    .line 393
    const-string v0, "INDEPENDENT"

    .line 394
    .line 395
    invoke-static {v0}, LI0/r;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    sput-object v0, LI0/r;->F0:Ljava/util/regex/Pattern;

    .line 400
    .line 401
    const-string v0, "GAP"

    .line 402
    .line 403
    invoke-static {v0}, LI0/r;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    sput-object v0, LI0/r;->G0:Ljava/util/regex/Pattern;

    .line 408
    .line 409
    const-string v0, "PRECISE"

    .line 410
    .line 411
    invoke-static {v0}, LI0/r;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    sput-object v0, LI0/r;->H0:Ljava/util/regex/Pattern;

    .line 416
    .line 417
    const-string v0, "VALUE=\"((?:.|\u000c)+?)\""

    .line 418
    .line 419
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    sput-object v0, LI0/r;->I0:Ljava/util/regex/Pattern;

    .line 424
    .line 425
    const-string v0, "IMPORT=\"((?:.|\u000c)+?)\""

    .line 426
    .line 427
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    sput-object v0, LI0/r;->J0:Ljava/util/regex/Pattern;

    .line 432
    .line 433
    const-string v0, "[:,]ID=\"((?:.|\u000c)+?)\""

    .line 434
    .line 435
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    sput-object v0, LI0/r;->K0:Ljava/util/regex/Pattern;

    .line 440
    .line 441
    const-string v0, "CLASS=\"((?:.|\u000c)+?)\""

    .line 442
    .line 443
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    sput-object v0, LI0/r;->L0:Ljava/util/regex/Pattern;

    .line 448
    .line 449
    const-string v0, "START-DATE=\"((?:.|\u000c)+?)\""

    .line 450
    .line 451
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    sput-object v0, LI0/r;->M0:Ljava/util/regex/Pattern;

    .line 456
    .line 457
    const-string v0, "CUE=\"((?:.|\u000c)+?)\""

    .line 458
    .line 459
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    sput-object v0, LI0/r;->N0:Ljava/util/regex/Pattern;

    .line 464
    .line 465
    const-string v0, "END-DATE=\"((?:.|\u000c)+?)\""

    .line 466
    .line 467
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    sput-object v0, LI0/r;->O0:Ljava/util/regex/Pattern;

    .line 472
    .line 473
    const-string v0, "PLANNED-DURATION=([\\d\\.]+)\\b"

    .line 474
    .line 475
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    sput-object v0, LI0/r;->P0:Ljava/util/regex/Pattern;

    .line 480
    .line 481
    const-string v0, "END-ON-NEXT"

    .line 482
    .line 483
    invoke-static {v0}, LI0/r;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    sput-object v0, LI0/r;->Q0:Ljava/util/regex/Pattern;

    .line 488
    .line 489
    const-string v0, "X-ASSET-URI=\"((?:.|\u000c)+?)\""

    .line 490
    .line 491
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    sput-object v0, LI0/r;->R0:Ljava/util/regex/Pattern;

    .line 496
    .line 497
    const-string v0, "X-ASSET-LIST=\"((?:.|\u000c)+?)\""

    .line 498
    .line 499
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    sput-object v0, LI0/r;->S0:Ljava/util/regex/Pattern;

    .line 504
    .line 505
    const-string v0, "X-RESUME-OFFSET=(-?[\\d\\.]+)\\b"

    .line 506
    .line 507
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    sput-object v0, LI0/r;->T0:Ljava/util/regex/Pattern;

    .line 512
    .line 513
    const-string v0, "X-PLAYOUT-LIMIT=([\\d\\.]+)\\b"

    .line 514
    .line 515
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    sput-object v0, LI0/r;->U0:Ljava/util/regex/Pattern;

    .line 520
    .line 521
    const-string v0, "X-SNAP=\"((?:.|\u000c)+?)\""

    .line 522
    .line 523
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    sput-object v0, LI0/r;->V0:Ljava/util/regex/Pattern;

    .line 528
    .line 529
    const-string v0, "X-RESTRICT=\"((?:.|\u000c)+?)\""

    .line 530
    .line 531
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    sput-object v0, LI0/r;->W0:Ljava/util/regex/Pattern;

    .line 536
    .line 537
    const-string v0, "X-CONTENT-MAY-VARY=\"((?:.|\u000c)+?)\""

    .line 538
    .line 539
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    sput-object v0, LI0/r;->X0:Ljava/util/regex/Pattern;

    .line 544
    .line 545
    const-string v0, "X-TIMELINE-OCCUPIES=\"((?:.|\u000c)+?)\""

    .line 546
    .line 547
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    sput-object v0, LI0/r;->Y0:Ljava/util/regex/Pattern;

    .line 552
    .line 553
    const-string v0, "X-TIMELINE-STYLE=\"((?:.|\u000c)+?)\""

    .line 554
    .line 555
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    sput-object v0, LI0/r;->Z0:Ljava/util/regex/Pattern;

    .line 560
    .line 561
    const-string v0, "\\{\\$([a-zA-Z0-9\\-_]+)\\}"

    .line 562
    .line 563
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    sput-object v0, LI0/r;->a1:Ljava/util/regex/Pattern;

    .line 568
    .line 569
    const-string v0, "\\b(X-[A-Z0-9-]+)="

    .line 570
    .line 571
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    sput-object v0, LI0/r;->b1:Ljava/util/regex/Pattern;

    .line 576
    .line 577
    return-void
.end method

.method public constructor <init>(LI0/o;LI0/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LI0/r;->G:LI0/o;

    .line 5
    .line 6
    iput-object p2, p0, LI0/r;->H:LI0/l;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    const-string v0, "=(NO|YES)"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static b(Ljava/lang/String;[Lm0/m;)Lm0/n;
    .locals 7

    .line 1
    array-length v0, p1

    .line 2
    new-array v0, v0, [Lm0/m;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p1

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    aget-object v2, p1, v1

    .line 9
    .line 10
    new-instance v3, Lm0/m;

    .line 11
    .line 12
    iget-object v4, v2, Lm0/m;->I:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v5, v2, Lm0/m;->J:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v2, v2, Lm0/m;->H:Ljava/util/UUID;

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    invoke-direct {v3, v2, v4, v5, v6}, Lm0/m;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 20
    .line 21
    .line 22
    aput-object v3, v0, v1

    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Lm0/n;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-direct {p1, p0, v1, v0}, Lm0/n;-><init>(Ljava/lang/String;Z[Lm0/m;)V

    .line 31
    .line 32
    .line 33
    return-object p1
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lm0/m;
    .locals 8

    .line 1
    sget-object v0, LI0/r;->s0:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    const-string v1, "1"

    .line 4
    .line 5
    invoke-static {p0, v0, v1, p2}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v2, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    .line 10
    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    const/16 v4, 0x2c

    .line 17
    .line 18
    const-string v5, "video/mp4"

    .line 19
    .line 20
    sget-object v6, LI0/r;->t0:Ljava/util/regex/Pattern;

    .line 21
    .line 22
    const/4 v7, 0x0

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-static {p0, v6, p2}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-instance p1, Lm0/m;

    .line 30
    .line 31
    sget-object p2, Lm0/g;->d:Ljava/util/UUID;

    .line 32
    .line 33
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-direct {p1, p2, v7, v5, p0}, Lm0/m;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 46
    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_0
    const-string v2, "com.widevine"

    .line 50
    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    new-instance p1, Lm0/m;

    .line 58
    .line 59
    sget-object p2, Lm0/g;->d:Ljava/util/UUID;

    .line 60
    .line 61
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 62
    .line 63
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const-string v0, "hls"

    .line 70
    .line 71
    invoke-direct {p1, p2, v7, v0, p0}, Lm0/m;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 72
    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_1
    const-string v2, "com.microsoft.playready"

    .line 76
    .line 77
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    invoke-static {p0, v6, p2}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    sget-object p1, Lm0/g;->e:Ljava/util/UUID;

    .line 106
    .line 107
    invoke-static {p1, v7, p0}, LE3/f;->b(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    new-instance p2, Lm0/m;

    .line 112
    .line 113
    invoke-direct {p2, p1, v7, v5, p0}, Lm0/m;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 114
    .line 115
    .line 116
    return-object p2

    .line 117
    :cond_2
    return-object v7
.end method

.method public static d(LI0/o;LI0/l;Lm2/u;Ljava/lang/String;)LI0/l;
    .locals 98

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    iget-boolean v2, v0, LI0/p;->c:Z

    .line 3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 5
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 10
    new-instance v9, LI0/k;

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v23, 0x0

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v24, 0x0

    move-object/from16 v16, v9

    invoke-direct/range {v16 .. v24}, LI0/k;-><init>(JJJZZ)V

    .line 11
    new-instance v10, Ljava/util/TreeMap;

    invoke-direct {v10}, Ljava/util/TreeMap;-><init>()V

    const-wide/16 v16, 0x0

    .line 12
    const-string v13, ""

    const-wide/16 v20, -0x1

    move/from16 v36, v2

    move-object/from16 v57, v9

    move-object/from16 v42, v13

    move-wide/from16 v25, v16

    move-wide/from16 v29, v25

    move-wide/from16 v39, v29

    move-wide/from16 v51, v39

    move-wide/from16 v53, v51

    move-wide/from16 v82, v53

    move-wide/from16 v86, v82

    move-wide/from16 v88, v86

    move-wide/from16 v77, v20

    const/4 v2, 0x0

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v31, 0x1

    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v34, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v41, 0x0

    const/16 v55, 0x0

    const/16 v76, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    move-object v9, v5

    const/4 v5, 0x0

    .line 13
    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lm2/u;->E()Z

    move-result v43

    if-eqz v43, :cond_99

    .line 14
    invoke-virtual/range {p2 .. p2}, Lm2/u;->I()Ljava/lang/String;

    move-result-object v11

    .line 15
    const-string v14, "#EXT"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 16
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_1
    const-string v14, "#EXT-X-PLAYLIST-TYPE"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    const/16 v44, 0x2

    if-eqz v14, :cond_3

    .line 18
    sget-object v14, LI0/r;->Z:Ljava/util/regex/Pattern;

    invoke-static {v11, v14, v3}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    .line 19
    const-string v14, "VOD"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 20
    :cond_2
    const-string v14, "EVENT"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    .line 21
    :cond_3
    const-string v14, "#EXT-X-I-FRAMES-ONLY"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/16 v84, 0x1

    goto :goto_0

    .line 22
    :cond_4
    const-string v14, "#EXT-X-START"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    const-wide v45, 0x412e848000000000L    # 1000000.0

    if-eqz v14, :cond_5

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v14

    sget-object v12, LI0/r;->l0:Ljava/util/regex/Pattern;

    invoke-static {v11, v12, v14}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v22

    move-object v14, v7

    move-object v12, v8

    mul-double v7, v22, v45

    double-to-long v7, v7

    move-wide/from16 v22, v7

    .line 24
    sget-object v7, LI0/r;->H0:Ljava/util/regex/Pattern;

    .line 25
    invoke-static {v11, v7}, LI0/r;->f(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v24

    move-object v8, v12

    move-object v7, v14

    goto :goto_0

    :cond_5
    move-object v14, v7

    move-object v12, v8

    .line 26
    const-string v7, "#EXT-X-SERVER-CONTROL"

    invoke-virtual {v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 27
    sget-object v7, LI0/r;->a0:Ljava/util/regex/Pattern;

    move-object/from16 v56, v9

    const-wide/high16 v8, -0x3c20000000000000L    # -9.223372036854776E18

    invoke-static {v11, v7, v8, v9}, LI0/r;->g(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v43

    cmpl-double v7, v43, v8

    if-nez v7, :cond_6

    const-wide v58, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    :cond_6
    mul-double v8, v43, v45

    double-to-long v7, v8

    move-wide/from16 v58, v7

    .line 28
    :goto_1
    sget-object v7, LI0/r;->b0:Ljava/util/regex/Pattern;

    .line 29
    invoke-static {v11, v7}, LI0/r;->f(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v64

    .line 30
    sget-object v7, LI0/r;->d0:Ljava/util/regex/Pattern;

    const-wide/high16 v8, -0x3c20000000000000L    # -9.223372036854776E18

    .line 31
    invoke-static {v11, v7, v8, v9}, LI0/r;->g(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v43

    cmpl-double v7, v43, v8

    if-nez v7, :cond_7

    const-wide v60, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :cond_7
    mul-double v8, v43, v45

    double-to-long v7, v8

    move-wide/from16 v60, v7

    .line 32
    :goto_2
    sget-object v7, LI0/r;->e0:Ljava/util/regex/Pattern;

    const-wide/high16 v8, -0x3c20000000000000L    # -9.223372036854776E18

    invoke-static {v11, v7, v8, v9}, LI0/r;->g(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v43

    cmpl-double v7, v43, v8

    if-nez v7, :cond_8

    const-wide v62, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3

    :cond_8
    mul-double v7, v43, v45

    double-to-long v7, v7

    move-wide/from16 v62, v7

    .line 33
    :goto_3
    sget-object v7, LI0/r;->f0:Ljava/util/regex/Pattern;

    .line 34
    invoke-static {v11, v7}, LI0/r;->f(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v65

    .line 35
    new-instance v7, LI0/k;

    move-object/from16 v57, v7

    invoke-direct/range {v57 .. v65}, LI0/k;-><init>(JJJZZ)V

    move-object/from16 v57, v7

    :goto_4
    move-object v8, v12

    move-object v7, v14

    move-object/from16 v9, v56

    goto/16 :goto_0

    :cond_9
    move-object/from16 v56, v9

    .line 36
    const-string v7, "#EXT-X-PART-INF"

    invoke-virtual {v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    sget-object v8, LI0/r;->X:Ljava/util/regex/Pattern;

    invoke-static {v11, v8, v7}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    mul-double v7, v7, v45

    double-to-long v7, v7

    move-wide/from16 v34, v7

    goto :goto_4

    .line 38
    :cond_a
    const-string v7, "#EXT-X-MAP"

    invoke-virtual {v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    sget-object v8, LI0/r;->n0:Ljava/util/regex/Pattern;

    const-string v9, "@"

    move-object/from16 v91, v14

    sget-object v14, LI0/r;->t0:Ljava/util/regex/Pattern;

    if-eqz v7, :cond_10

    .line 39
    invoke-static {v11, v14, v3}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v48

    const/4 v7, 0x0

    .line 40
    invoke-static {v11, v8, v7, v3}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 41
    sget-object v7, Lp0/M;->a:Ljava/lang/String;

    const/4 v7, -0x1

    .line 42
    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 43
    aget-object v9, v7, v8

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v77

    .line 44
    array-length v8, v7

    const/4 v9, 0x1

    if-le v8, v9, :cond_b

    .line 45
    aget-object v7, v7, v9

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v39

    :cond_b
    cmp-long v7, v77, v20

    if-nez v7, :cond_c

    move-wide/from16 v39, v16

    :cond_c
    if-eqz v76, :cond_e

    if-eqz v79, :cond_d

    goto :goto_5

    .line 46
    :cond_d
    const-string v0, "The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lm0/P;->b(Ljava/lang/String;Ljava/lang/Exception;)Lm0/P;

    move-result-object v0

    throw v0

    .line 47
    :cond_e
    :goto_5
    new-instance v85, LI0/i;

    move-object/from16 v43, v85

    move-wide/from16 v44, v39

    move-wide/from16 v46, v77

    move-object/from16 v49, v76

    move-object/from16 v50, v79

    invoke-direct/range {v43 .. v50}, LI0/i;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_f

    add-long v39, v39, v77

    :cond_f
    move-object v8, v12

    move-wide/from16 v77, v20

    move-object/from16 v9, v56

    move-object/from16 v7, v91

    goto/16 :goto_0

    .line 48
    :cond_10
    const-string v7, "#EXT-X-TARGETDURATION"

    invoke-virtual {v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    move-object/from16 v92, v4

    move-object/from16 v93, v5

    const-wide/32 v4, 0xf4240

    if-eqz v7, :cond_11

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    sget-object v8, LI0/r;->U:Ljava/util/regex/Pattern;

    invoke-static {v11, v8, v7}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    mul-long v32, v7, v4

    :goto_6
    move-object v8, v12

    :goto_7
    move-object/from16 v9, v56

    move-object/from16 v7, v91

    move-object/from16 v4, v92

    move-object/from16 v5, v93

    goto/16 :goto_0

    .line 50
    :cond_11
    const-string v7, "#EXT-X-MEDIA-SEQUENCE"

    invoke-virtual {v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    sget-object v5, LI0/r;->g0:Ljava/util/regex/Pattern;

    invoke-static {v11, v5, v4}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v51

    move-object v8, v12

    move-wide/from16 v29, v51

    goto :goto_7

    .line 52
    :cond_12
    const-string v7, "#EXT-X-VERSION"

    invoke-virtual {v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    sget-object v5, LI0/r;->Y:Ljava/util/regex/Pattern;

    invoke-static {v11, v5, v4}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    goto :goto_6

    .line 54
    :cond_13
    const-string v7, "#EXT-X-DEFINE"

    invoke-virtual {v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 55
    sget-object v4, LI0/r;->J0:Ljava/util/regex/Pattern;

    const/4 v5, 0x0

    invoke-static {v11, v4, v5, v3}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 56
    iget-object v5, v0, LI0/o;->l:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_15

    .line 57
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 58
    :cond_14
    sget-object v4, LI0/r;->y0:Ljava/util/regex/Pattern;

    .line 59
    invoke-static {v11, v4, v3}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, LI0/r;->I0:Ljava/util/regex/Pattern;

    .line 60
    invoke-static {v11, v5, v3}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    :goto_8
    move/from16 v95, v2

    move-object v1, v3

    move-object/from16 v59, v6

    move-object/from16 v62, v10

    move-object/from16 v94, v12

    move-object/from16 v58, v13

    move-object v0, v15

    move-object/from16 v15, v80

    move-object/from16 v2, v91

    :goto_9
    move-object/from16 v6, v92

    :goto_a
    const/4 v12, 0x0

    goto/16 :goto_5e

    .line 62
    :cond_16
    const-string v7, "#EXTINF"

    invoke-virtual {v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    sget-object v8, LI0/r;->h0:Ljava/util/regex/Pattern;

    invoke-static {v11, v8, v7}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 64
    new-instance v8, Ljava/math/BigDecimal;

    invoke-direct {v8, v7}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 65
    new-instance v7, Ljava/math/BigDecimal;

    invoke-direct {v7, v4, v5}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-virtual {v8, v7}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v86

    .line 66
    sget-object v4, LI0/r;->i0:Ljava/util/regex/Pattern;

    invoke-static {v11, v4, v13, v3}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_6

    .line 67
    :cond_17
    const-string v4, "#EXT-X-SKIP"

    invoke-virtual {v11, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-wide/16 v47, 0x1

    if-eqz v4, :cond_20

    .line 68
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    sget-object v5, LI0/r;->c0:Ljava/util/regex/Pattern;

    invoke-static {v11, v5, v4}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v1, :cond_18

    .line 69
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v5, 0x1

    goto :goto_b

    :cond_18
    const/4 v5, 0x0

    :goto_b
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 70
    sget-object v5, Lp0/M;->a:Ljava/lang/String;

    iget-wide v7, v1, LI0/l;->k:J

    sub-long v7, v29, v7

    long-to-int v5, v7

    add-int/2addr v4, v5

    if-ltz v5, :cond_1f

    .line 71
    iget-object v7, v1, LI0/l;->r:Lz4/H;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-gt v4, v8, :cond_1f

    :goto_c
    if-ge v5, v4, :cond_1e

    .line 72
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LI0/i;

    move-object/from16 v94, v12

    .line 73
    iget-wide v11, v1, LI0/l;->k:J

    cmp-long v9, v29, v11

    if-eqz v9, :cond_1a

    .line 74
    iget v9, v1, LI0/l;->j:I

    sub-int v9, v9, v28

    iget v11, v8, LI0/j;->J:I

    add-int/2addr v9, v11

    .line 75
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-wide/from16 v43, v82

    const/4 v12, 0x0

    .line 76
    :goto_d
    iget-object v14, v8, LI0/i;->S:Lz4/H;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_19

    .line 77
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LI0/g;

    .line 78
    new-instance v14, LI0/g;

    move-object/from16 v58, v14

    iget-boolean v1, v0, LI0/g;->R:Z

    move/from16 v74, v1

    move/from16 v95, v2

    iget-wide v1, v0, LI0/j;->P:J

    move-wide/from16 v71, v1

    iget-boolean v1, v0, LI0/j;->Q:Z

    move/from16 v73, v1

    iget-object v1, v0, LI0/j;->G:Ljava/lang/String;

    move-object/from16 v59, v1

    iget-object v1, v0, LI0/j;->H:LI0/i;

    move-object/from16 v60, v1

    iget-wide v1, v0, LI0/j;->I:J

    move-wide/from16 v61, v1

    iget-object v1, v0, LI0/j;->L:Lm0/n;

    move-object/from16 v66, v1

    iget-object v1, v0, LI0/j;->M:Ljava/lang/String;

    move-object/from16 v67, v1

    iget-object v1, v0, LI0/j;->N:Ljava/lang/String;

    move-object/from16 v68, v1

    iget-wide v1, v0, LI0/j;->O:J

    move-wide/from16 v69, v1

    iget-boolean v1, v0, LI0/g;->S:Z

    move/from16 v75, v1

    move/from16 v63, v9

    move-wide/from16 v64, v43

    invoke-direct/range {v58 .. v75}, LI0/g;-><init>(Ljava/lang/String;LI0/i;JIJLm0/n;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    .line 79
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-wide v0, v0, LI0/j;->I:J

    add-long v43, v43, v0

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v95

    goto :goto_d

    :cond_19
    move/from16 v95, v2

    .line 81
    new-instance v0, LI0/i;

    move-object/from16 v58, v0

    iget-wide v1, v8, LI0/j;->P:J

    move-wide/from16 v72, v1

    iget-boolean v1, v8, LI0/j;->Q:Z

    move/from16 v74, v1

    iget-object v1, v8, LI0/j;->G:Ljava/lang/String;

    move-object/from16 v59, v1

    iget-object v1, v8, LI0/j;->H:LI0/i;

    move-object/from16 v60, v1

    iget-object v1, v8, LI0/i;->R:Ljava/lang/String;

    move-object/from16 v61, v1

    iget-wide v1, v8, LI0/j;->I:J

    move-wide/from16 v62, v1

    iget-object v1, v8, LI0/j;->L:Lm0/n;

    move-object/from16 v67, v1

    iget-object v1, v8, LI0/j;->M:Ljava/lang/String;

    move-object/from16 v68, v1

    iget-object v1, v8, LI0/j;->N:Ljava/lang/String;

    move-object/from16 v69, v1

    iget-wide v1, v8, LI0/j;->O:J

    move-wide/from16 v70, v1

    move/from16 v64, v9

    move-wide/from16 v65, v82

    move-object/from16 v75, v11

    invoke-direct/range {v58 .. v75}, LI0/i;-><init>(Ljava/lang/String;LI0/i;Ljava/lang/String;JIJLm0/n;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V

    move-object v8, v0

    goto :goto_e

    :cond_1a
    move/from16 v95, v2

    .line 82
    :goto_e
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-wide v0, v8, LI0/j;->I:J

    add-long v82, v82, v0

    .line 84
    iget-wide v0, v8, LI0/j;->P:J

    cmp-long v2, v0, v20

    if-eqz v2, :cond_1b

    .line 85
    iget-wide v11, v8, LI0/j;->O:J

    add-long v39, v11, v0

    .line 86
    :cond_1b
    iget-object v0, v8, LI0/j;->N:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 87
    invoke-static/range {v51 .. v52}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    :cond_1c
    move-object/from16 v79, v0

    :cond_1d
    add-long v51, v51, v47

    add-int/lit8 v5, v5, 0x1

    .line 88
    iget v0, v8, LI0/j;->J:I

    iget-object v1, v8, LI0/j;->H:LI0/i;

    iget-object v2, v8, LI0/j;->L:Lm0/n;

    iget-object v8, v8, LI0/j;->M:Ljava/lang/String;

    move/from16 v81, v0

    move-object/from16 v85, v1

    move-object/from16 v41, v2

    move-object/from16 v76, v8

    move-wide/from16 v53, v82

    move-object/from16 v12, v94

    move/from16 v2, v95

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_c

    :cond_1e
    move/from16 v95, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_6

    .line 89
    :cond_1f
    new-instance v0, LI0/q;

    .line 90
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 91
    throw v0

    :cond_20
    move/from16 v95, v2

    move-object/from16 v94, v12

    .line 92
    const-string v0, "#EXT-X-KEY"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 93
    sget-object v0, LI0/r;->q0:Ljava/util/regex/Pattern;

    invoke-static {v11, v0, v3}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 94
    sget-object v1, LI0/r;->r0:Ljava/util/regex/Pattern;

    const-string v2, "identity"

    invoke-static {v11, v1, v2, v3}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 95
    const-string v4, "NONE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 96
    invoke-virtual {v10}, Ljava/util/TreeMap;->clear()V

    const/16 v41, 0x0

    const/16 v76, 0x0

    const/16 v79, 0x0

    goto :goto_13

    .line 97
    :cond_21
    sget-object v4, LI0/r;->u0:Ljava/util/regex/Pattern;

    const/4 v5, 0x0

    invoke-static {v11, v4, v5, v3}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 99
    const-string v1, "AES-128"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 100
    invoke-static {v11, v14, v3}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v76, v0

    move-object/from16 v79, v4

    goto :goto_13

    :cond_22
    move-object/from16 v79, v4

    :goto_f
    const/16 v76, 0x0

    goto :goto_13

    :cond_23
    move-object/from16 v12, v80

    if-nez v12, :cond_26

    .line 101
    const-string v2, "SAMPLE-AES-CENC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "SAMPLE-AES-CTR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_11

    .line 102
    :cond_24
    const-string v0, "cbcs"

    :goto_10
    move-object/from16 v80, v0

    goto :goto_12

    .line 103
    :cond_25
    :goto_11
    const-string v0, "cenc"

    goto :goto_10

    :cond_26
    move-object/from16 v80, v12

    .line 104
    :goto_12
    invoke-static {v11, v1, v3}, LI0/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lm0/m;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 105
    invoke-virtual {v10, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v79, v4

    const/16 v41, 0x0

    goto :goto_f

    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_14
    move-object/from16 v9, v56

    :goto_15
    move-object/from16 v7, v91

    move-object/from16 v4, v92

    move-object/from16 v5, v93

    :goto_16
    move-object/from16 v8, v94

    move/from16 v2, v95

    goto/16 :goto_0

    :cond_27
    move-object/from16 v12, v80

    .line 106
    const-string v0, "#EXT-X-BYTERANGE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 107
    sget-object v0, LI0/r;->m0:Ljava/util/regex/Pattern;

    invoke-static {v11, v0, v3}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 108
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    const/4 v1, -0x1

    .line 109
    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 110
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v77

    .line 111
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_28

    .line 112
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide/from16 v39, v0

    :cond_28
    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v80, v12

    goto :goto_14

    :cond_29
    const/4 v2, 0x1

    .line 113
    const-string v0, "#EXT-X-DISCONTINUITY-SEQUENCE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x3a

    if-eqz v0, :cond_2a

    .line 114
    invoke-virtual {v11, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v80, v12

    move-object/from16 v9, v56

    move-object/from16 v7, v91

    move-object/from16 v4, v92

    move-object/from16 v5, v93

    move-object/from16 v8, v94

    move/from16 v2, v95

    const/16 v27, 0x1

    goto/16 :goto_0

    .line 115
    :cond_2a
    const-string v0, "#EXT-X-DISCONTINUITY"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    add-int/lit8 v81, v81, 0x1

    goto :goto_17

    .line 116
    :cond_2b
    const-string v0, "#EXT-X-PROGRAM-DATE-TIME"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    cmp-long v0, v25, v16

    if-nez v0, :cond_2c

    .line 117
    invoke-virtual {v11, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp0/M;->U(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lp0/M;->R(J)J

    move-result-wide v0

    sub-long v25, v0, v82

    goto :goto_17

    :cond_2c
    :goto_18
    move-object v1, v3

    move-object/from16 v59, v6

    move-object/from16 v62, v10

    move-object/from16 v58, v13

    move-object v0, v15

    move-object/from16 v2, v91

    move-object/from16 v6, v92

    move-object v15, v12

    goto/16 :goto_a

    .line 118
    :cond_2d
    const-string v0, "#EXT-X-GAP"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v80, v12

    move-object/from16 v9, v56

    move-object/from16 v7, v91

    move-object/from16 v4, v92

    move-object/from16 v5, v93

    move-object/from16 v8, v94

    move/from16 v2, v95

    const/16 v55, 0x1

    goto/16 :goto_0

    .line 119
    :cond_2e
    const-string v0, "#EXT-X-INDEPENDENT-SEGMENTS"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v80, v12

    move-object/from16 v9, v56

    move-object/from16 v7, v91

    move-object/from16 v4, v92

    move-object/from16 v5, v93

    move-object/from16 v8, v94

    move/from16 v2, v95

    const/16 v36, 0x1

    goto/16 :goto_0

    .line 120
    :cond_2f
    const-string v0, "#EXT-X-ENDLIST"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v80, v12

    move-object/from16 v9, v56

    move-object/from16 v7, v91

    move-object/from16 v4, v92

    move-object/from16 v5, v93

    move-object/from16 v8, v94

    move/from16 v2, v95

    const/16 v37, 0x1

    goto/16 :goto_0

    .line 121
    :cond_30
    const-string v0, "#EXT-X-RENDITION-REPORT"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 122
    sget-object v0, LI0/r;->j0:Ljava/util/regex/Pattern;

    invoke-static {v11, v0}, LI0/r;->h(Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v0

    .line 123
    sget-object v2, LI0/r;->k0:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_31

    const/4 v4, 0x1

    .line 125
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_19

    :cond_31
    const/4 v2, -0x1

    .line 128
    :goto_19
    invoke-static {v11, v14, v3}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v7, p3

    .line 129
    invoke-static {v7, v4}, LQ3/b;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 130
    new-instance v5, LI0/h;

    invoke-direct {v5, v4, v0, v1, v2}, LI0/h;-><init>(Landroid/net/Uri;JI)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    :cond_32
    move-object/from16 v7, p3

    .line 131
    const-string v0, "#EXT-X-PRELOAD-HINT"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    if-eqz v93, :cond_33

    goto/16 :goto_18

    .line 132
    :cond_33
    sget-object v0, LI0/r;->w0:Ljava/util/regex/Pattern;

    invoke-static {v11, v0, v3}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 133
    const-string v1, "PART"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_18

    .line 134
    :cond_34
    invoke-static {v11, v14, v3}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v59

    .line 135
    sget-object v0, LI0/r;->o0:Ljava/util/regex/Pattern;

    .line 136
    invoke-static {v11, v0}, LI0/r;->h(Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v0

    .line 137
    sget-object v2, LI0/r;->p0:Ljava/util/regex/Pattern;

    .line 138
    invoke-static {v11, v2}, LI0/r;->h(Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v71

    if-nez v76, :cond_35

    const/16 v68, 0x0

    goto :goto_1a

    :cond_35
    if-eqz v79, :cond_36

    move-object/from16 v68, v79

    goto :goto_1a

    .line 139
    :cond_36
    invoke-static/range {v51 .. v52}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v68, v2

    :goto_1a
    if-nez v41, :cond_38

    .line 140
    invoke-virtual {v10}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_38

    .line 141
    invoke-virtual {v10}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v4, [Lm0/m;

    invoke-interface {v2, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lm0/m;

    .line 142
    new-instance v4, Lm0/n;

    const/4 v5, 0x1

    .line 143
    invoke-direct {v4, v12, v5, v2}, Lm0/n;-><init>(Ljava/lang/String;Z[Lm0/m;)V

    if-nez v38, :cond_37

    .line 144
    invoke-static {v12, v2}, LI0/r;->b(Ljava/lang/String;[Lm0/m;)Lm0/n;

    move-result-object v38

    :cond_37
    move-object/from16 v41, v4

    :cond_38
    cmp-long v2, v0, v20

    if-eqz v2, :cond_3a

    cmp-long v4, v71, v20

    if-eqz v4, :cond_39

    goto :goto_1b

    :cond_39
    move-object/from16 v5, v93

    goto :goto_1d

    .line 145
    :cond_3a
    :goto_1b
    new-instance v4, LI0/g;

    if-eqz v2, :cond_3b

    move-wide/from16 v69, v0

    goto :goto_1c

    :cond_3b
    move-wide/from16 v69, v16

    :goto_1c
    const-wide/16 v61, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x1

    move-object/from16 v58, v4

    move-object/from16 v60, v85

    move/from16 v63, v81

    move-wide/from16 v64, v53

    move-object/from16 v66, v41

    move-object/from16 v67, v76

    .line 146
    invoke-direct/range {v58 .. v75}, LI0/g;-><init>(Ljava/lang/String;LI0/i;JIJLm0/n;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    move-object v5, v4

    :goto_1d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v80, v12

    move-object/from16 v9, v56

    move-object/from16 v7, v91

    move-object/from16 v4, v92

    goto/16 :goto_16

    .line 147
    :cond_3c
    const-string v0, "#EXT-X-PART"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    if-nez v76, :cond_3d

    const/16 v68, 0x0

    goto :goto_1e

    :cond_3d
    if-eqz v79, :cond_3e

    move-object/from16 v68, v79

    goto :goto_1e

    .line 148
    :cond_3e
    invoke-static/range {v51 .. v52}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v68, v0

    .line 149
    :goto_1e
    invoke-static {v11, v14, v3}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v59

    .line 150
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sget-object v1, LI0/r;->V:Ljava/util/regex/Pattern;

    invoke-static {v11, v1, v0}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    mul-double v0, v0, v45

    double-to-long v0, v0

    .line 151
    sget-object v2, LI0/r;->F0:Ljava/util/regex/Pattern;

    .line 152
    invoke-static {v11, v2}, LI0/r;->f(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v2

    if-eqz v36, :cond_3f

    .line 153
    invoke-interface/range {v56 .. v56}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3f

    const/4 v4, 0x1

    goto :goto_1f

    :cond_3f
    const/4 v4, 0x0

    :goto_1f
    or-int v74, v2, v4

    .line 154
    sget-object v2, LI0/r;->G0:Ljava/util/regex/Pattern;

    invoke-static {v11, v2}, LI0/r;->f(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v73

    const/4 v2, 0x0

    .line 155
    invoke-static {v11, v8, v2, v3}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_40

    .line 156
    sget-object v2, Lp0/M;->a:Ljava/lang/String;

    const/4 v2, -0x1

    .line 157
    invoke-virtual {v4, v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 158
    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 159
    array-length v8, v2

    const/4 v9, 0x1

    if-le v8, v9, :cond_41

    .line 160
    aget-object v2, v2, v9

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v88

    goto :goto_20

    :cond_40
    move-wide/from16 v4, v20

    :cond_41
    :goto_20
    cmp-long v2, v4, v20

    if-nez v2, :cond_42

    move-wide/from16 v88, v16

    :cond_42
    if-nez v41, :cond_44

    .line 161
    invoke-virtual {v10}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_44

    .line 162
    invoke-virtual {v10}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v8

    const/4 v9, 0x0

    new-array v11, v9, [Lm0/m;

    invoke-interface {v8, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lm0/m;

    .line 163
    new-instance v9, Lm0/n;

    const/4 v11, 0x1

    .line 164
    invoke-direct {v9, v12, v11, v8}, Lm0/n;-><init>(Ljava/lang/String;Z[Lm0/m;)V

    if-nez v38, :cond_43

    .line 165
    invoke-static {v12, v8}, LI0/r;->b(Ljava/lang/String;[Lm0/m;)Lm0/n;

    move-result-object v38

    :cond_43
    move-object/from16 v41, v9

    .line 166
    :cond_44
    new-instance v8, LI0/g;

    move-object/from16 v58, v8

    const/16 v75, 0x0

    move-object/from16 v60, v85

    move-wide/from16 v61, v0

    move/from16 v63, v81

    move-wide/from16 v64, v53

    move-object/from16 v66, v41

    move-object/from16 v67, v76

    move-wide/from16 v69, v88

    move-wide/from16 v71, v4

    invoke-direct/range {v58 .. v75}, LI0/g;-><init>(Ljava/lang/String;LI0/i;JIJLm0/n;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    move-object/from16 v9, v56

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long v53, v53, v0

    if-eqz v2, :cond_45

    add-long v88, v88, v4

    :cond_45
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v80, v12

    goto/16 :goto_15

    :cond_46
    move-object/from16 v9, v56

    .line 167
    const-string v0, "#EXT-X-DATERANGE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    sget-object v0, LI0/r;->L0:Ljava/util/regex/Pattern;

    .line 168
    invoke-static {v11, v0, v13, v3}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.apple.hls.interstitial"

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 170
    sget-object v0, LI0/r;->K0:Ljava/util/regex/Pattern;

    invoke-static {v11, v0, v3}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 171
    sget-object v1, LI0/r;->R0:Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    invoke-static {v11, v1, v2, v3}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 172
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v90

    move-object/from16 v1, v90

    goto :goto_21

    :cond_47
    move-object v1, v2

    .line 173
    :goto_21
    sget-object v4, LI0/r;->S0:Ljava/util/regex/Pattern;

    invoke-static {v11, v4, v2, v3}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_48

    .line 174
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v90

    move-object/from16 v4, v90

    goto :goto_22

    :cond_48
    move-object v4, v2

    .line 175
    :goto_22
    sget-object v5, LI0/r;->M0:Ljava/util/regex/Pattern;

    invoke-static {v11, v5, v2, v3}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_49

    .line 176
    invoke-static {v5}, Lp0/M;->U(Ljava/lang/String;)J

    move-result-wide v47

    invoke-static/range {v47 .. v48}, Lp0/M;->R(J)J

    move-result-wide v47

    move-wide/from16 v7, v47

    goto :goto_23

    :cond_49
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 177
    :goto_23
    sget-object v5, LI0/r;->O0:Ljava/util/regex/Pattern;

    invoke-static {v11, v5, v2, v3}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4a

    .line 178
    invoke-static {v5}, Lp0/M;->U(Ljava/lang/String;)J

    move-result-wide v47

    invoke-static/range {v47 .. v48}, Lp0/M;->R(J)J

    move-result-wide v47

    move-wide/from16 v96, v47

    goto :goto_24

    :cond_4a
    const-wide v96, -0x7fffffffffffffffL    # -4.9E-324

    .line 179
    :goto_24
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 180
    sget-object v14, LI0/r;->N0:Ljava/util/regex/Pattern;

    invoke-static {v11, v14, v2, v3}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    .line 181
    const-string v2, ","

    if-eqz v14, :cond_4e

    .line 182
    sget-object v47, Lp0/M;->a:Ljava/lang/String;

    move-object/from16 v58, v13

    const/4 v13, -0x1

    .line 183
    invoke-virtual {v14, v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    .line 184
    array-length v13, v14

    move-object/from16 v59, v6

    const/4 v6, 0x0

    :goto_25
    if-ge v6, v13, :cond_4f

    aget-object v47, v14, v6

    move/from16 v48, v13

    .line 185
    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 186
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    const/16 v47, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v49

    sparse-switch v49, :sswitch_data_0

    move-object/from16 v49, v14

    goto :goto_26

    :sswitch_0
    move-object/from16 v49, v14

    const-string v14, "POST"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4b

    goto :goto_26

    :cond_4b
    const/16 v47, 0x2

    goto :goto_26

    :sswitch_1
    move-object/from16 v49, v14

    const-string v14, "ONCE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4c

    goto :goto_26

    :cond_4c
    const/16 v47, 0x1

    goto :goto_26

    :sswitch_2
    move-object/from16 v49, v14

    const-string v14, "PRE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4d

    goto :goto_26

    :cond_4d
    const/16 v47, 0x0

    :goto_26
    packed-switch v47, :pswitch_data_0

    goto :goto_27

    .line 187
    :pswitch_0
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_27
    add-int/lit8 v6, v6, 0x1

    move/from16 v13, v48

    move-object/from16 v14, v49

    goto :goto_25

    :cond_4e
    move-object/from16 v59, v6

    move-object/from16 v58, v13

    .line 188
    :cond_4f
    sget-object v6, LI0/r;->W:Ljava/util/regex/Pattern;

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-static {v11, v6, v13, v14}, LI0/r;->g(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v47

    const-wide/16 v49, 0x0

    cmpl-double v6, v47, v49

    if-ltz v6, :cond_50

    mul-double v13, v47, v45

    double-to-long v13, v13

    goto :goto_28

    :cond_50
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 189
    :goto_28
    sget-object v6, LI0/r;->P0:Ljava/util/regex/Pattern;

    move-object/from16 v56, v9

    move-object/from16 v62, v10

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-static {v11, v6, v9, v10}, LI0/r;->g(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v47

    cmpl-double v6, v47, v49

    if-ltz v6, :cond_51

    mul-double v9, v47, v45

    double-to-long v9, v9

    goto :goto_29

    :cond_51
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 190
    :goto_29
    sget-object v6, LI0/r;->Q0:Ljava/util/regex/Pattern;

    invoke-static {v11, v6}, LI0/r;->f(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v6

    move-object/from16 v63, v15

    .line 191
    sget-object v15, LI0/r;->T0:Ljava/util/regex/Pattern;

    move-object/from16 v47, v5

    move/from16 v48, v6

    const-wide/16 v5, 0x1

    .line 192
    invoke-static {v11, v15, v5, v6}, LI0/r;->g(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v64

    cmpl-double v15, v64, v5

    if-eqz v15, :cond_52

    mul-double v5, v64, v45

    double-to-long v5, v5

    goto :goto_2a

    :cond_52
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 193
    :goto_2a
    sget-object v15, LI0/r;->U0:Ljava/util/regex/Pattern;

    move-wide/from16 v64, v5

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    invoke-static {v11, v15, v5, v6}, LI0/r;->g(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v5

    cmpl-double v15, v5, v49

    if-ltz v15, :cond_53

    mul-double v5, v5, v45

    double-to-long v5, v5

    goto :goto_2b

    :cond_53
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 194
    :goto_2b
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v60, v12

    .line 195
    sget-object v12, LI0/r;->V0:Ljava/util/regex/Pattern;

    move-wide/from16 v45, v5

    const/4 v5, 0x0

    invoke-static {v11, v12, v5, v3}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_55

    .line 196
    sget-object v5, Lp0/M;->a:Ljava/lang/String;

    const/4 v5, -0x1

    .line 197
    invoke-virtual {v6, v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 198
    array-length v5, v6

    const/4 v12, 0x0

    :goto_2c
    if-ge v12, v5, :cond_55

    aget-object v49, v6, v12

    move/from16 v50, v5

    .line 199
    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 200
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v49, v6

    const-string v6, "IN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_54

    const-string v6, "OUT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_54

    goto :goto_2d

    .line 201
    :cond_54
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2d
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, v49

    move/from16 v5, v50

    goto :goto_2c

    .line 202
    :cond_55
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 203
    sget-object v6, LI0/r;->W0:Ljava/util/regex/Pattern;

    const/4 v12, 0x0

    invoke-static {v11, v6, v12, v3}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_57

    .line 204
    sget-object v12, Lp0/M;->a:Ljava/lang/String;

    const/4 v12, -0x1

    .line 205
    invoke-virtual {v6, v2, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 206
    array-length v6, v2

    const/4 v12, 0x0

    :goto_2e
    if-ge v12, v6, :cond_57

    aget-object v43, v2, v12

    move-object/from16 v49, v2

    .line 207
    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v43, v6

    const-string v6, "JUMP"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_56

    const-string v6, "SKIP"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_56

    goto :goto_2f

    .line 209
    :cond_56
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2f
    add-int/lit8 v12, v12, 0x1

    move/from16 v6, v43

    move-object/from16 v2, v49

    goto :goto_2e

    .line 210
    :cond_57
    sget-object v2, LI0/r;->X0:Ljava/util/regex/Pattern;

    const/4 v6, 0x0

    invoke-static {v11, v2, v6, v3}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_58

    .line 211
    const-string v12, "NO"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v12, 0x1

    xor-int/2addr v2, v12

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v90

    move-object/from16 v2, v90

    goto :goto_30

    :cond_58
    move-object v2, v6

    .line 212
    :goto_30
    sget-object v12, LI0/r;->Y0:Ljava/util/regex/Pattern;

    invoke-static {v11, v12, v6, v3}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5a

    .line 213
    const-string v6, "RANGE"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_59

    goto :goto_31

    .line 214
    :cond_59
    const-string v6, "POINT"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5a

    goto :goto_31

    :cond_5a
    const/4 v6, 0x0

    .line 215
    :goto_31
    sget-object v12, LI0/r;->Z0:Ljava/util/regex/Pattern;

    move-object/from16 v43, v6

    const/4 v6, 0x0

    invoke-static {v11, v12, v6, v3}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5c

    .line 216
    const-string v6, "PRIMARY"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_5b

    goto :goto_32

    .line 217
    :cond_5b
    const-string v6, "HIGHLIGHT"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5c

    goto :goto_32

    :cond_5c
    const/4 v6, 0x0

    .line 218
    :goto_32
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v49, v6

    const/16 v6, 0x11

    .line 219
    invoke-virtual {v11, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 220
    sget-object v11, LI0/r;->b1:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 221
    :goto_33
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v50

    if-eqz v50, :cond_6a

    move-object/from16 v50, v2

    .line 222
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/16 v61, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v66

    sparse-switch v66, :sswitch_data_1

    move-object/from16 v66, v11

    goto/16 :goto_34

    :sswitch_3
    move-object/from16 v66, v11

    const-string v11, "X-ASSET-URI="

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5d

    goto/16 :goto_34

    :cond_5d
    const/16 v61, 0x8

    goto/16 :goto_34

    :sswitch_4
    move-object/from16 v66, v11

    const-string v11, "X-RESUME-OFFSET="

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5e

    goto/16 :goto_34

    :cond_5e
    const/16 v61, 0x7

    goto/16 :goto_34

    :sswitch_5
    move-object/from16 v66, v11

    const-string v11, "X-RESTRICT="

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5f

    goto :goto_34

    :cond_5f
    const/16 v61, 0x6

    goto :goto_34

    :sswitch_6
    move-object/from16 v66, v11

    const-string v11, "X-TIMELINE-OCCUPIES="

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_60

    goto :goto_34

    :cond_60
    const/16 v61, 0x5

    goto :goto_34

    :sswitch_7
    move-object/from16 v66, v11

    const-string v11, "X-ASSET-LIST="

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_61

    goto :goto_34

    :cond_61
    const/16 v61, 0x4

    goto :goto_34

    :sswitch_8
    move-object/from16 v66, v11

    const-string v11, "X-TIMELINE-STYLE="

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_62

    goto :goto_34

    :cond_62
    const/16 v61, 0x3

    goto :goto_34

    :sswitch_9
    move-object/from16 v66, v11

    const-string v11, "X-PLAYOUT-LIMIT="

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_63

    goto :goto_34

    :cond_63
    const/16 v61, 0x2

    goto :goto_34

    :sswitch_a
    move-object/from16 v66, v11

    const-string v11, "X-CONTENT-MAY-VARY="

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_64

    goto :goto_34

    :cond_64
    const/16 v61, 0x1

    goto :goto_34

    :sswitch_b
    move-object/from16 v66, v11

    const-string v11, "X-SNAP="

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_65

    goto :goto_34

    :cond_65
    const/16 v61, 0x0

    :goto_34
    packed-switch v61, :pswitch_data_1

    .line 224
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v61, 0x1

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v67, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 225
    const-string v5, "="

    .line 226
    invoke-static {v2, v5}, Lcom/google/protobuf/U2;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 227
    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 228
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v11

    .line 229
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v61, v15

    add-int/lit8 v15, v5, 0x1

    if-ne v11, v15, :cond_66

    const/4 v11, 0x1

    goto :goto_35

    :cond_66
    const/4 v11, 0x2

    :goto_35
    add-int/2addr v11, v5

    .line 230
    invoke-virtual {v6, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 231
    const-string v11, "\""

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_67

    .line 232
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "=\"((?:.|\u000c)+?)\""

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 233
    invoke-static {v6, v5, v3}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 234
    new-instance v11, LI0/d;

    const/4 v15, 0x0

    invoke-direct {v11, v2, v5, v15}, LI0/d;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-wide/from16 v68, v9

    goto :goto_37

    .line 235
    :cond_67
    const-string v11, "0x"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_68

    const-string v11, "0X"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    :cond_68
    move-wide/from16 v68, v9

    goto :goto_36

    .line 236
    :cond_69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "=([\\d\\.]+)\\b"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 237
    new-instance v11, LI0/d;

    .line 238
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v15

    invoke-static {v6, v5, v15}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    move-wide/from16 v68, v9

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 239
    invoke-direct {v11, v2, v9, v10}, LI0/d;-><init>(Ljava/lang/String;D)V

    goto :goto_37

    .line 240
    :goto_36
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "=(0[xX][A-F0-9]+)"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 241
    invoke-static {v6, v5, v3}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 242
    new-instance v11, LI0/d;

    const/4 v9, 0x1

    invoke-direct {v11, v2, v5, v9}, LI0/d;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 243
    :goto_37
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :pswitch_1
    move-object/from16 v67, v5

    move-wide/from16 v68, v9

    move-object/from16 v61, v15

    :goto_38
    move-object/from16 v2, v50

    move-object/from16 v15, v61

    move-object/from16 v11, v66

    move-object/from16 v5, v67

    move-wide/from16 v9, v68

    goto/16 :goto_33

    :cond_6a
    move-object/from16 v50, v2

    move-object/from16 v67, v5

    move-wide/from16 v68, v9

    move-object/from16 v61, v15

    move-object/from16 v2, v91

    .line 244
    invoke-virtual {v2, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 245
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LI0/e;

    goto :goto_39

    .line 246
    :cond_6b
    new-instance v5, LI0/e;

    invoke-direct {v5, v0}, LI0/e;-><init>(Ljava/lang/String;)V

    .line 247
    :goto_39
    const-string v6, " to "

    if-nez v1, :cond_6c

    .line 248
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3a

    .line 249
    :cond_6c
    iget-object v9, v5, LI0/e;->c:Landroid/net/Uri;

    if-eqz v9, :cond_6d

    .line 250
    invoke-virtual {v9, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Can\'t change assetUri from "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v5, LI0/e;->c:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 251
    invoke-static {v10, v9}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 252
    :cond_6d
    iput-object v1, v5, LI0/e;->c:Landroid/net/Uri;

    :goto_3a
    if-nez v4, :cond_6e

    :goto_3b
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3c

    .line 253
    :cond_6e
    iget-object v1, v5, LI0/e;->d:Landroid/net/Uri;

    if-eqz v1, :cond_6f

    .line 254
    invoke-virtual {v1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Can\'t change assetListUri from "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v5, LI0/e;->d:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 255
    invoke-static {v9, v1}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 256
    :cond_6f
    iput-object v4, v5, LI0/e;->d:Landroid/net/Uri;

    goto :goto_3b

    :goto_3c
    cmp-long v1, v7, v9

    if-nez v1, :cond_70

    move-object v1, v3

    move-wide v3, v9

    move-wide/from16 v7, v96

    goto :goto_3e

    :cond_70
    move-object v1, v3

    .line 257
    iget-wide v3, v5, LI0/e;->e:J

    cmp-long v11, v3, v9

    if-eqz v11, :cond_72

    cmp-long v9, v3, v7

    if-nez v9, :cond_71

    const/4 v3, 0x1

    goto :goto_3d

    :cond_71
    const/4 v3, 0x0

    .line 258
    :goto_3d
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "Can\'t change startDateUnixUs from "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v9, v5, LI0/e;->e:J

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 259
    :cond_72
    iput-wide v7, v5, LI0/e;->e:J

    move-wide/from16 v7, v96

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    :goto_3e
    cmp-long v9, v7, v3

    if-nez v9, :cond_73

    goto :goto_40

    .line 260
    :cond_73
    iget-wide v9, v5, LI0/e;->f:J

    cmp-long v11, v9, v3

    if-eqz v11, :cond_75

    cmp-long v3, v9, v7

    if-nez v3, :cond_74

    const/4 v3, 0x1

    goto :goto_3f

    :cond_74
    const/4 v3, 0x0

    .line 261
    :goto_3f
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "Can\'t change endDateUnixUs from "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v9, v5, LI0/e;->f:J

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 262
    :cond_75
    iput-wide v7, v5, LI0/e;->f:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    :goto_40
    cmp-long v7, v13, v3

    if-nez v7, :cond_76

    goto :goto_42

    .line 263
    :cond_76
    iget-wide v7, v5, LI0/e;->g:J

    cmp-long v9, v7, v3

    if-eqz v9, :cond_78

    cmp-long v3, v7, v13

    if-nez v3, :cond_77

    const/4 v3, 0x1

    goto :goto_41

    :cond_77
    const/4 v3, 0x0

    .line 264
    :goto_41
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Can\'t change durationUs from "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, v5, LI0/e;->g:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 265
    :cond_78
    iput-wide v13, v5, LI0/e;->g:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    :goto_42
    cmp-long v7, v68, v3

    if-nez v7, :cond_79

    goto :goto_45

    .line 266
    :cond_79
    iget-wide v7, v5, LI0/e;->h:J

    cmp-long v9, v7, v3

    if-eqz v9, :cond_7b

    cmp-long v3, v7, v68

    if-nez v3, :cond_7a

    const/4 v3, 0x1

    goto :goto_43

    :cond_7a
    const/4 v3, 0x0

    .line 267
    :goto_43
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Can\'t change plannedDurationUs from "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, v5, LI0/e;->h:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v68

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    goto :goto_44

    :cond_7b
    move-wide/from16 v9, v68

    .line 268
    :goto_44
    iput-wide v9, v5, LI0/e;->h:J

    .line 269
    :goto_45
    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const-string v4, ", "

    if-eqz v3, :cond_7c

    goto/16 :goto_49

    .line 270
    :cond_7c
    iget-object v3, v5, LI0/e;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7f

    .line 271
    iget-object v3, v5, LI0/e;->i:Ljava/util/List;

    move-object/from16 v7, v47

    .line 272
    invoke-interface {v3, v7}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Can\'t change cue from "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v5, LI0/e;->i:Ljava/util/List;

    .line 273
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7d

    :goto_46
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7d

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_46

    :cond_7d
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7e

    :goto_47
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7e

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_47

    :cond_7e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 275
    invoke-static {v8, v3}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    goto :goto_48

    :cond_7f
    move-object/from16 v7, v47

    .line 276
    :goto_48
    iput-object v7, v5, LI0/e;->i:Ljava/util/List;

    :goto_49
    if-nez v48, :cond_80

    :goto_4a
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_4b

    :cond_80
    const/4 v3, 0x1

    .line 277
    iput-boolean v3, v5, LI0/e;->j:Z

    goto :goto_4a

    :goto_4b
    cmp-long v3, v64, v7

    if-nez v3, :cond_81

    goto :goto_4e

    .line 278
    :cond_81
    iget-wide v9, v5, LI0/e;->k:J

    cmp-long v3, v9, v7

    if-eqz v3, :cond_83

    cmp-long v3, v9, v64

    if-nez v3, :cond_82

    const/4 v3, 0x1

    goto :goto_4c

    :cond_82
    const/4 v3, 0x0

    .line 279
    :goto_4c
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Can\'t change resumeOffsetUs from "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v5, LI0/e;->k:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, v64

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    goto :goto_4d

    :cond_83
    move-wide/from16 v8, v64

    .line 280
    :goto_4d
    iput-wide v8, v5, LI0/e;->k:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    :goto_4e
    cmp-long v3, v45, v7

    if-nez v3, :cond_84

    goto :goto_51

    .line 281
    :cond_84
    iget-wide v9, v5, LI0/e;->l:J

    cmp-long v3, v9, v7

    if-eqz v3, :cond_86

    cmp-long v3, v9, v45

    if-nez v3, :cond_85

    const/4 v3, 0x1

    goto :goto_4f

    :cond_85
    const/4 v3, 0x0

    .line 282
    :goto_4f
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Can\'t change playoutLimitUs from "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v5, LI0/e;->l:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, v45

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    goto :goto_50

    :cond_86
    move-wide/from16 v8, v45

    .line 283
    :goto_50
    iput-wide v8, v5, LI0/e;->l:J

    .line 284
    :goto_51
    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_87

    :goto_52
    move-object/from16 v3, v67

    goto/16 :goto_56

    .line 285
    :cond_87
    iget-object v3, v5, LI0/e;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8a

    .line 286
    iget-object v3, v5, LI0/e;->m:Ljava/util/List;

    move-object/from16 v7, v61

    .line 287
    invoke-interface {v3, v7}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Can\'t change snapTypes from "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v5, LI0/e;->m:Ljava/util/List;

    .line 288
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_88

    :goto_53
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_88

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_53

    :cond_88
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_89

    :goto_54
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_89

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_54

    :cond_89
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 290
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    goto :goto_55

    :cond_8a
    move-object/from16 v7, v61

    .line 291
    :goto_55
    iput-object v7, v5, LI0/e;->m:Ljava/util/List;

    goto :goto_52

    .line 292
    :goto_56
    invoke-virtual {v5, v3}, LI0/e;->c(Ljava/util/ArrayList;)V

    .line 293
    invoke-virtual {v5, v12}, LI0/e;->b(Ljava/util/ArrayList;)V

    if-nez v50, :cond_8b

    goto :goto_57

    .line 294
    :cond_8b
    iget-object v3, v5, LI0/e;->o:Ljava/lang/Boolean;

    move-object/from16 v4, v50

    if-eqz v3, :cond_8c

    .line 295
    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Can\'t change contentMayVary from "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, LI0/e;->o:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 296
    invoke-static {v7, v3}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 297
    :cond_8c
    iput-object v4, v5, LI0/e;->o:Ljava/lang/Boolean;

    :goto_57
    if-nez v43, :cond_8d

    :goto_58
    move-object/from16 v6, v49

    goto :goto_59

    .line 298
    :cond_8d
    iget-object v3, v5, LI0/e;->p:Ljava/lang/String;

    move-object/from16 v4, v43

    if-eqz v3, :cond_8e

    .line 299
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Can\'t change timelineOccupies from "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, LI0/e;->p:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 300
    invoke-static {v6, v3}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 301
    :cond_8e
    iput-object v4, v5, LI0/e;->p:Ljava/lang/String;

    goto :goto_58

    .line 302
    :goto_59
    invoke-virtual {v5, v6}, LI0/e;->d(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v2, v0, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8f
    move-object/from16 v15, v60

    move-object/from16 v0, v63

    goto/16 :goto_9

    :cond_90
    move-object v1, v3

    move-object/from16 v59, v6

    move-object/from16 v56, v9

    move-object/from16 v62, v10

    move-object/from16 v60, v12

    move-object/from16 v58, v13

    move-object/from16 v63, v15

    move-object/from16 v2, v91

    .line 304
    const-string v0, "#"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8f

    if-nez v76, :cond_91

    const/4 v0, 0x0

    goto :goto_5a

    :cond_91
    if-eqz v79, :cond_92

    move-object/from16 v0, v79

    goto :goto_5a

    .line 305
    :cond_92
    invoke-static/range {v51 .. v52}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    :goto_5a
    add-long v3, v51, v47

    .line 306
    invoke-static {v11, v1}, LI0/r;->k(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v92

    .line 307
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LI0/i;

    cmp-long v8, v77, v20

    if-nez v8, :cond_93

    move-wide/from16 v9, v16

    goto :goto_5b

    :cond_93
    if-eqz v84, :cond_94

    if-nez v85, :cond_94

    if-nez v7, :cond_94

    .line 308
    new-instance v7, LI0/i;

    const/16 v50, 0x0

    const-wide/16 v44, 0x0

    const/16 v49, 0x0

    move-object/from16 v43, v7

    move-wide/from16 v46, v39

    move-object/from16 v48, v5

    invoke-direct/range {v43 .. v50}, LI0/i;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_94
    move-wide/from16 v9, v39

    :goto_5b
    if-nez v41, :cond_95

    .line 310
    invoke-virtual/range {v62 .. v62}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_95

    .line 311
    invoke-virtual/range {v62 .. v62}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v11

    const/4 v12, 0x0

    new-array v13, v12, [Lm0/m;

    invoke-interface {v11, v13}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lm0/m;

    .line 312
    new-instance v13, Lm0/n;

    move-object/from16 v15, v60

    const/4 v14, 0x1

    .line 313
    invoke-direct {v13, v15, v14, v11}, Lm0/n;-><init>(Ljava/lang/String;Z[Lm0/m;)V

    if-nez v38, :cond_96

    .line 314
    invoke-static {v15, v11}, LI0/r;->b(Ljava/lang/String;[Lm0/m;)Lm0/n;

    move-result-object v38

    goto :goto_5c

    :cond_95
    move-object/from16 v15, v60

    const/4 v12, 0x0

    move-object/from16 v13, v41

    .line 315
    :cond_96
    :goto_5c
    new-instance v11, LI0/i;

    if-eqz v85, :cond_97

    move-object/from16 v41, v85

    goto :goto_5d

    :cond_97
    move-object/from16 v41, v7

    :goto_5d
    move-object/from16 v39, v11

    move-object/from16 v40, v5

    move-wide/from16 v43, v86

    move/from16 v45, v81

    move-wide/from16 v46, v82

    move-object/from16 v48, v13

    move-object/from16 v49, v76

    move-object/from16 v50, v0

    move-wide/from16 v51, v9

    move-wide/from16 v53, v77

    .line 316
    invoke-direct/range {v39 .. v56}, LI0/i;-><init>(Ljava/lang/String;LI0/i;Ljava/lang/String;JIJLm0/n;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V

    move-object/from16 v0, v63

    .line 317
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-long v53, v82, v86

    .line 318
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_98

    add-long v9, v9, v77

    :cond_98
    move-wide/from16 v39, v9

    move-object v7, v2

    move-wide/from16 v51, v3

    move-object v9, v5

    move-object v4, v6

    move-object/from16 v41, v13

    move-object/from16 v80, v15

    move-wide/from16 v86, v16

    move-wide/from16 v77, v20

    move-wide/from16 v82, v53

    move-object/from16 v13, v58

    move-object/from16 v42, v13

    move-object/from16 v6, v59

    move-object/from16 v10, v62

    move-object/from16 v5, v93

    move-object/from16 v8, v94

    move/from16 v2, v95

    const/16 v55, 0x0

    move-object v15, v0

    move-object v3, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_0

    :goto_5e
    move-object v3, v1

    move-object v7, v2

    move-object v4, v6

    move-object/from16 v80, v15

    move-object/from16 v9, v56

    move-object/from16 v13, v58

    move-object/from16 v6, v59

    move-object/from16 v10, v62

    move-object/from16 v5, v93

    move-object/from16 v8, v94

    move/from16 v2, v95

    move-object/from16 v1, p1

    move-object v15, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_99
    move/from16 v95, v2

    move-object/from16 v93, v5

    move-object/from16 v59, v6

    move-object v2, v7

    move-object/from16 v94, v8

    move-object/from16 v56, v9

    move-object v0, v15

    const/4 v12, 0x0

    .line 319
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    .line 320
    :goto_5f
    invoke-virtual/range {v59 .. v59}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v8, v3, :cond_9d

    move-object/from16 v3, v59

    .line 321
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LI0/h;

    .line 322
    iget-wide v5, v4, LI0/h;->b:J

    cmp-long v7, v5, v20

    if-nez v7, :cond_9a

    .line 323
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-long v5, v5

    add-long v5, v29, v5

    invoke-interface/range {v56 .. v56}, Ljava/util/List;->isEmpty()Z

    move-result v7

    int-to-long v9, v7

    sub-long/2addr v5, v9

    .line 324
    :cond_9a
    iget v7, v4, LI0/h;->c:I

    const/4 v9, -0x1

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-ne v7, v9, :cond_9c

    cmp-long v13, v34, v10

    if-eqz v13, :cond_9c

    .line 325
    invoke-interface/range {v56 .. v56}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9b

    invoke-static {v0}, Ly4/k;->G(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LI0/i;

    iget-object v7, v7, LI0/i;->S:Lz4/H;

    goto :goto_60

    :cond_9b
    move-object/from16 v7, v56

    .line 326
    :goto_60
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v13, 0x1

    sub-int/2addr v7, v13

    goto :goto_61

    :cond_9c
    const/4 v13, 0x1

    .line 327
    :goto_61
    new-instance v14, LI0/h;

    iget-object v4, v4, LI0/h;->a:Landroid/net/Uri;

    invoke-direct {v14, v4, v5, v6, v7}, LI0/h;-><init>(Landroid/net/Uri;JI)V

    invoke-virtual {v1, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v59, v3

    goto :goto_5f

    :cond_9d
    const/4 v13, 0x1

    move-object/from16 v9, v56

    if-eqz v93, :cond_9e

    move-object/from16 v5, v93

    .line 328
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_9e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 330
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9f
    :goto_62
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LI0/e;

    .line 331
    invoke-virtual {v4}, LI0/e;->a()LI0/f;

    move-result-object v4

    if-eqz v4, :cond_9f

    .line 332
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 333
    :cond_a0
    new-instance v2, LI0/l;

    cmp-long v4, v25, v16

    if-eqz v4, :cond_a1

    const/4 v4, 0x1

    goto :goto_63

    :cond_a1
    const/4 v4, 0x0

    :goto_63
    move-object v5, v2

    move/from16 v6, v95

    move-object/from16 v7, p3

    move-object/from16 v8, v94

    move-object/from16 v56, v9

    move-wide/from16 v9, v22

    move/from16 v11, v24

    move-wide/from16 v12, v25

    move/from16 v14, v27

    move/from16 v15, v28

    move-wide/from16 v16, v29

    move/from16 v18, v31

    move-wide/from16 v19, v32

    move-wide/from16 v21, v34

    move/from16 v23, v36

    move/from16 v24, v37

    move/from16 v25, v4

    move-object/from16 v26, v38

    move-object/from16 v27, v0

    move-object/from16 v28, v56

    move-object/from16 v29, v57

    move-object/from16 v30, v1

    move-object/from16 v31, v3

    invoke-direct/range {v5 .. v31}, LI0/l;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLm0/n;Ljava/util/List;Ljava/util/List;LI0/k;Ljava/util/Map;Ljava/util/List;)V

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x13683 -> :sswitch_2
        0x251681 -> :sswitch_1
        0x2590a0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7f5b7c02 -> :sswitch_b
        -0x6ddab8e6 -> :sswitch_a
        -0x8e0f436 -> :sswitch_9
        -0x22a979d -> :sswitch_8
        0x17ad642d -> :sswitch_7
        0x32acec39 -> :sswitch_6
        0x57c501cc -> :sswitch_5
        0x6837ce7f -> :sswitch_4
        0x6c2295e3 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static e(Lm2/u;Ljava/lang/String;)LI0/o;
    .locals 38

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    new-instance v5, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v11, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v6, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v7, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v8, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v9, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v10, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v12, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v13, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v14, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    const/16 v16, 0x0

    .line 54
    .line 55
    const/16 v17, 0x0

    .line 56
    .line 57
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lm2/u;->E()Z

    .line 58
    .line 59
    .line 60
    move-result v18

    .line 61
    const-string v19, "application/x-mpegURL"

    .line 62
    .line 63
    sget-object v0, LI0/r;->t0:Ljava/util/regex/Pattern;

    .line 64
    .line 65
    const-string v2, "/"

    .line 66
    .line 67
    sget-object v3, LI0/r;->y0:Ljava/util/regex/Pattern;

    .line 68
    .line 69
    const-string v15, ","

    .line 70
    .line 71
    if-eqz v18, :cond_21

    .line 72
    .line 73
    invoke-virtual/range {p0 .. p0}, Lm2/u;->I()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    move-object/from16 v21, v10

    .line 78
    .line 79
    const-string v10, "#EXT"

    .line 80
    .line 81
    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    if-eqz v10, :cond_0

    .line 86
    .line 87
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    :cond_0
    const-string v10, "#EXT-X-I-FRAME-STREAM-INF"

    .line 91
    .line 92
    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v10

    .line 96
    move-object/from16 v22, v14

    .line 97
    .line 98
    const-string v14, "#EXT-X-DEFINE"

    .line 99
    .line 100
    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v14

    .line 104
    if-eqz v14, :cond_1

    .line 105
    .line 106
    invoke-static {v4, v3, v11}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    sget-object v2, LI0/r;->I0:Ljava/util/regex/Pattern;

    .line 111
    .line 112
    invoke-static {v4, v2, v11}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v11, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    goto/16 :goto_3

    .line 120
    .line 121
    :cond_1
    const-string v3, "#EXT-X-INDEPENDENT-SEGMENTS"

    .line 122
    .line 123
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_2

    .line 128
    .line 129
    move-object v4, v5

    .line 130
    move-object/from16 v33, v7

    .line 131
    .line 132
    move-object/from16 v32, v8

    .line 133
    .line 134
    move-object/from16 v31, v9

    .line 135
    .line 136
    move-object/from16 v34, v12

    .line 137
    .line 138
    move-object/from16 v23, v13

    .line 139
    .line 140
    const/16 v16, 0x1

    .line 141
    .line 142
    goto/16 :goto_11

    .line 143
    .line 144
    :cond_2
    const-string v3, "#EXT-X-MEDIA"

    .line 145
    .line 146
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-eqz v3, :cond_3

    .line 151
    .line 152
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_3
    const-string v3, "#EXT-X-SESSION-KEY"

    .line 157
    .line 158
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_6

    .line 163
    .line 164
    sget-object v0, LI0/r;->r0:Ljava/util/regex/Pattern;

    .line 165
    .line 166
    const-string v2, "identity"

    .line 167
    .line 168
    invoke-static {v4, v0, v2, v11}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-static {v4, v0, v11}, LI0/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lm0/m;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    if-eqz v0, :cond_7

    .line 177
    .line 178
    sget-object v2, LI0/r;->q0:Ljava/util/regex/Pattern;

    .line 179
    .line 180
    invoke-static {v4, v2, v11}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    const-string v3, "SAMPLE-AES-CENC"

    .line 185
    .line 186
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-nez v3, :cond_5

    .line 191
    .line 192
    const-string v3, "SAMPLE-AES-CTR"

    .line 193
    .line 194
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_4

    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_4
    const-string v2, "cbcs"

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_5
    :goto_1
    const-string v2, "cenc"

    .line 205
    .line 206
    :goto_2
    new-instance v3, Lm0/n;

    .line 207
    .line 208
    const/4 v4, 0x1

    .line 209
    new-array v10, v4, [Lm0/m;

    .line 210
    .line 211
    const/4 v14, 0x0

    .line 212
    aput-object v0, v10, v14

    .line 213
    .line 214
    invoke-direct {v3, v2, v4, v10}, Lm0/n;-><init>(Ljava/lang/String;Z[Lm0/m;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_6
    const-string v3, "#EXT-X-STREAM-INF"

    .line 222
    .line 223
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    if-nez v3, :cond_8

    .line 228
    .line 229
    if-eqz v10, :cond_7

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_7
    :goto_3
    move-object v4, v5

    .line 233
    move-object/from16 v33, v7

    .line 234
    .line 235
    move-object/from16 v32, v8

    .line 236
    .line 237
    move-object/from16 v31, v9

    .line 238
    .line 239
    move-object/from16 v34, v12

    .line 240
    .line 241
    move-object/from16 v23, v13

    .line 242
    .line 243
    goto/16 :goto_11

    .line 244
    .line 245
    :cond_8
    :goto_4
    const-string v3, "CLOSED-CAPTIONS=NONE"

    .line 246
    .line 247
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    or-int v17, v17, v3

    .line 252
    .line 253
    if-eqz v10, :cond_9

    .line 254
    .line 255
    const/16 v3, 0x4000

    .line 256
    .line 257
    goto :goto_5

    .line 258
    :cond_9
    const/4 v3, 0x0

    .line 259
    :goto_5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 260
    .line 261
    .line 262
    move-result-object v14

    .line 263
    move-object/from16 v23, v13

    .line 264
    .line 265
    sget-object v13, LI0/r;->N:Ljava/util/regex/Pattern;

    .line 266
    .line 267
    invoke-static {v4, v13, v14}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v13

    .line 271
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    move-result v13

    .line 275
    sget-object v14, LI0/r;->I:Ljava/util/regex/Pattern;

    .line 276
    .line 277
    invoke-virtual {v14, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 278
    .line 279
    .line 280
    move-result-object v14

    .line 281
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    .line 282
    .line 283
    .line 284
    move-result v24

    .line 285
    if-eqz v24, :cond_a

    .line 286
    .line 287
    move-object/from16 v31, v9

    .line 288
    .line 289
    const/4 v9, 0x1

    .line 290
    invoke-virtual {v14, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v14

    .line 294
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    move-result v9

    .line 301
    goto :goto_6

    .line 302
    :cond_a
    move-object/from16 v31, v9

    .line 303
    .line 304
    const/4 v9, -0x1

    .line 305
    :goto_6
    sget-object v14, LI0/r;->P:Ljava/util/regex/Pattern;

    .line 306
    .line 307
    move-object/from16 v32, v8

    .line 308
    .line 309
    const/4 v8, 0x0

    .line 310
    invoke-static {v4, v14, v8, v11}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v14

    .line 314
    move-object/from16 v33, v7

    .line 315
    .line 316
    sget-object v7, LI0/r;->Q:Ljava/util/regex/Pattern;

    .line 317
    .line 318
    invoke-static {v4, v7, v8, v11}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v7

    .line 322
    move-object/from16 v34, v12

    .line 323
    .line 324
    sget-object v12, LI0/r;->R:Ljava/util/regex/Pattern;

    .line 325
    .line 326
    invoke-static {v4, v12, v8, v11}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v12

    .line 330
    if-eqz v12, :cond_c

    .line 331
    .line 332
    sget-object v8, Lp0/M;->a:Ljava/lang/String;

    .line 333
    .line 334
    const/4 v8, 0x2

    .line 335
    invoke-virtual {v12, v15, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v12

    .line 339
    const/4 v8, 0x0

    .line 340
    aget-object v12, v12, v8

    .line 341
    .line 342
    const/4 v8, -0x1

    .line 343
    invoke-virtual {v12, v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    const/4 v8, 0x0

    .line 348
    aget-object v12, v2, v8

    .line 349
    .line 350
    array-length v8, v2

    .line 351
    move-object/from16 v24, v12

    .line 352
    .line 353
    const/4 v12, 0x1

    .line 354
    if-le v8, v12, :cond_b

    .line 355
    .line 356
    aget-object v2, v2, v12

    .line 357
    .line 358
    move-object v8, v2

    .line 359
    move-object/from16 v35, v5

    .line 360
    .line 361
    move-object/from16 v2, v24

    .line 362
    .line 363
    :goto_7
    const/4 v12, 0x2

    .line 364
    goto :goto_9

    .line 365
    :cond_b
    move-object/from16 v35, v5

    .line 366
    .line 367
    move-object/from16 v2, v24

    .line 368
    .line 369
    :goto_8
    const/4 v8, 0x0

    .line 370
    goto :goto_7

    .line 371
    :cond_c
    move-object/from16 v35, v5

    .line 372
    .line 373
    const/4 v2, 0x0

    .line 374
    goto :goto_8

    .line 375
    :goto_9
    invoke-static {v12, v7}, Lp0/M;->u(ILjava/lang/String;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    invoke-static {v5, v2}, Lm0/O;->l(Ljava/lang/String;Ljava/lang/String;)Z

    .line 380
    .line 381
    .line 382
    move-result v12

    .line 383
    if-nez v12, :cond_d

    .line 384
    .line 385
    goto/16 :goto_e

    .line 386
    .line 387
    :cond_d
    if-nez v2, :cond_e

    .line 388
    .line 389
    goto :goto_a

    .line 390
    :cond_e
    if-eqz v14, :cond_1a

    .line 391
    .line 392
    if-nez v8, :cond_f

    .line 393
    .line 394
    goto/16 :goto_e

    .line 395
    .line 396
    :cond_f
    const-string v12, "PQ"

    .line 397
    .line 398
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result v12

    .line 402
    if-eqz v12, :cond_10

    .line 403
    .line 404
    const-string v12, "db1p"

    .line 405
    .line 406
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v12

    .line 410
    if-eqz v12, :cond_1a

    .line 411
    .line 412
    :cond_10
    const-string v12, "SDR"

    .line 413
    .line 414
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v12

    .line 418
    if-eqz v12, :cond_11

    .line 419
    .line 420
    const-string v12, "db2g"

    .line 421
    .line 422
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result v12

    .line 426
    if-eqz v12, :cond_1a

    .line 427
    .line 428
    :cond_11
    const-string v12, "HLG"

    .line 429
    .line 430
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    move-result v12

    .line 434
    if-eqz v12, :cond_12

    .line 435
    .line 436
    const-string v12, "db4"

    .line 437
    .line 438
    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 439
    .line 440
    .line 441
    move-result v8

    .line 442
    if-nez v8, :cond_12

    .line 443
    .line 444
    goto :goto_e

    .line 445
    :cond_12
    :goto_a
    if-eqz v2, :cond_13

    .line 446
    .line 447
    goto :goto_b

    .line 448
    :cond_13
    move-object v2, v5

    .line 449
    :goto_b
    invoke-static {v7}, Lp0/M;->d0(Ljava/lang/String;)[Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v5

    .line 453
    array-length v7, v5

    .line 454
    if-nez v7, :cond_15

    .line 455
    .line 456
    :cond_14
    const/4 v5, 0x0

    .line 457
    goto :goto_d

    .line 458
    :cond_15
    new-instance v7, Ljava/lang/StringBuilder;

    .line 459
    .line 460
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    .line 462
    .line 463
    array-length v8, v5

    .line 464
    const/4 v12, 0x0

    .line 465
    :goto_c
    if-ge v12, v8, :cond_18

    .line 466
    .line 467
    aget-object v14, v5, v12

    .line 468
    .line 469
    invoke-static {v14}, Lm0/O;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v24

    .line 473
    move-object/from16 v25, v5

    .line 474
    .line 475
    invoke-static/range {v24 .. v24}, Lm0/O;->i(Ljava/lang/String;)I

    .line 476
    .line 477
    .line 478
    move-result v5

    .line 479
    move/from16 v24, v8

    .line 480
    .line 481
    const/4 v8, 0x2

    .line 482
    if-eq v8, v5, :cond_17

    .line 483
    .line 484
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    .line 485
    .line 486
    .line 487
    move-result v5

    .line 488
    if-lez v5, :cond_16

    .line 489
    .line 490
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    :cond_16
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    :cond_17
    const/4 v5, 0x1

    .line 497
    add-int/2addr v12, v5

    .line 498
    move/from16 v8, v24

    .line 499
    .line 500
    move-object/from16 v5, v25

    .line 501
    .line 502
    goto :goto_c

    .line 503
    :cond_18
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    .line 504
    .line 505
    .line 506
    move-result v5

    .line 507
    if-lez v5, :cond_14

    .line 508
    .line 509
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v5

    .line 513
    :goto_d
    if-eqz v5, :cond_19

    .line 514
    .line 515
    invoke-static {v2, v15, v5}, Lcom/google/protobuf/U2;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    :cond_19
    move-object v7, v2

    .line 520
    :cond_1a
    :goto_e
    sget-object v2, LI0/r;->S:Ljava/util/regex/Pattern;

    .line 521
    .line 522
    const/4 v5, 0x0

    .line 523
    invoke-static {v4, v2, v5, v11}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    if-eqz v2, :cond_1b

    .line 528
    .line 529
    const-string v5, "x"

    .line 530
    .line 531
    const/4 v8, -0x1

    .line 532
    invoke-virtual {v2, v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v2

    .line 536
    const/4 v5, 0x0

    .line 537
    aget-object v8, v2, v5

    .line 538
    .line 539
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 540
    .line 541
    .line 542
    move-result v8

    .line 543
    const/4 v5, 0x1

    .line 544
    aget-object v2, v2, v5

    .line 545
    .line 546
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 547
    .line 548
    .line 549
    move-result v2

    .line 550
    if-lez v8, :cond_1b

    .line 551
    .line 552
    if-gtz v2, :cond_1c

    .line 553
    .line 554
    :cond_1b
    const/4 v2, -0x1

    .line 555
    const/4 v8, -0x1

    .line 556
    :cond_1c
    sget-object v5, LI0/r;->T:Ljava/util/regex/Pattern;

    .line 557
    .line 558
    const/4 v12, 0x0

    .line 559
    invoke-static {v4, v5, v12, v11}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v5

    .line 563
    if-eqz v5, :cond_1d

    .line 564
    .line 565
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 566
    .line 567
    .line 568
    move-result v5

    .line 569
    goto :goto_f

    .line 570
    :cond_1d
    const/high16 v5, -0x40800000    # -1.0f

    .line 571
    .line 572
    :goto_f
    sget-object v14, LI0/r;->J:Ljava/util/regex/Pattern;

    .line 573
    .line 574
    invoke-static {v4, v14, v12, v11}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v14

    .line 578
    sget-object v15, LI0/r;->K:Ljava/util/regex/Pattern;

    .line 579
    .line 580
    invoke-static {v4, v15, v12, v11}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v15

    .line 584
    move-object/from16 v36, v15

    .line 585
    .line 586
    sget-object v15, LI0/r;->L:Ljava/util/regex/Pattern;

    .line 587
    .line 588
    invoke-static {v4, v15, v12, v11}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v15

    .line 592
    move-object/from16 v37, v15

    .line 593
    .line 594
    sget-object v15, LI0/r;->M:Ljava/util/regex/Pattern;

    .line 595
    .line 596
    invoke-static {v4, v15, v12, v11}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v15

    .line 600
    if-eqz v10, :cond_1e

    .line 601
    .line 602
    invoke-static {v4, v0, v11}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    invoke-static {v1, v0}, LQ3/b;->w(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    goto :goto_10

    .line 611
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lm2/u;->E()Z

    .line 612
    .line 613
    .line 614
    move-result v0

    .line 615
    if-eqz v0, :cond_20

    .line 616
    .line 617
    invoke-virtual/range {p0 .. p0}, Lm2/u;->I()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    invoke-static {v0, v11}, LI0/r;->k(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    invoke-static {v1, v0}, LQ3/b;->w(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    :goto_10
    new-instance v4, Lm0/s;

    .line 630
    .line 631
    invoke-direct {v4}, Lm0/s;-><init>()V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 635
    .line 636
    .line 637
    move-result v10

    .line 638
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v10

    .line 642
    iput-object v10, v4, Lm0/s;->a:Ljava/lang/String;

    .line 643
    .line 644
    invoke-static/range {v19 .. v19}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v10

    .line 648
    iput-object v10, v4, Lm0/s;->m:Ljava/lang/String;

    .line 649
    .line 650
    iput-object v7, v4, Lm0/s;->j:Ljava/lang/String;

    .line 651
    .line 652
    iput v9, v4, Lm0/s;->h:I

    .line 653
    .line 654
    iput v13, v4, Lm0/s;->i:I

    .line 655
    .line 656
    iput v8, v4, Lm0/s;->u:I

    .line 657
    .line 658
    iput v2, v4, Lm0/s;->v:I

    .line 659
    .line 660
    iput v5, v4, Lm0/s;->y:F

    .line 661
    .line 662
    iput v3, v4, Lm0/s;->f:I

    .line 663
    .line 664
    new-instance v2, Lm0/t;

    .line 665
    .line 666
    invoke-direct {v2, v4}, Lm0/t;-><init>(Lm0/s;)V

    .line 667
    .line 668
    .line 669
    new-instance v3, LI0/n;

    .line 670
    .line 671
    move-object/from16 v24, v3

    .line 672
    .line 673
    move-object/from16 v25, v0

    .line 674
    .line 675
    move-object/from16 v26, v2

    .line 676
    .line 677
    move-object/from16 v27, v14

    .line 678
    .line 679
    move-object/from16 v28, v36

    .line 680
    .line 681
    move-object/from16 v29, v37

    .line 682
    .line 683
    move-object/from16 v30, v15

    .line 684
    .line 685
    invoke-direct/range {v24 .. v30}, LI0/n;-><init>(Landroid/net/Uri;Lm0/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    .line 690
    .line 691
    move-object/from16 v4, v35

    .line 692
    .line 693
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object v2

    .line 697
    check-cast v2, Ljava/util/ArrayList;

    .line 698
    .line 699
    if-nez v2, :cond_1f

    .line 700
    .line 701
    new-instance v2, Ljava/util/ArrayList;

    .line 702
    .line 703
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    :cond_1f
    new-instance v0, LH0/u;

    .line 710
    .line 711
    move-object/from16 v24, v0

    .line 712
    .line 713
    move/from16 v25, v9

    .line 714
    .line 715
    move/from16 v26, v13

    .line 716
    .line 717
    move-object/from16 v27, v14

    .line 718
    .line 719
    move-object/from16 v28, v36

    .line 720
    .line 721
    move-object/from16 v29, v37

    .line 722
    .line 723
    move-object/from16 v30, v15

    .line 724
    .line 725
    invoke-direct/range {v24 .. v30}, LH0/u;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    .line 730
    .line 731
    :goto_11
    move-object v5, v4

    .line 732
    move-object/from16 v10, v21

    .line 733
    .line 734
    move-object/from16 v14, v22

    .line 735
    .line 736
    move-object/from16 v13, v23

    .line 737
    .line 738
    move-object/from16 v9, v31

    .line 739
    .line 740
    move-object/from16 v8, v32

    .line 741
    .line 742
    move-object/from16 v7, v33

    .line 743
    .line 744
    move-object/from16 v12, v34

    .line 745
    .line 746
    goto/16 :goto_0

    .line 747
    .line 748
    :cond_20
    const-string v0, "#EXT-X-STREAM-INF must be followed by another line"

    .line 749
    .line 750
    const/4 v1, 0x0

    .line 751
    invoke-static {v0, v1}, Lm0/P;->b(Ljava/lang/String;Ljava/lang/Exception;)Lm0/P;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    throw v0

    .line 756
    :cond_21
    move-object v4, v5

    .line 757
    move-object/from16 v33, v7

    .line 758
    .line 759
    move-object/from16 v32, v8

    .line 760
    .line 761
    move-object/from16 v31, v9

    .line 762
    .line 763
    move-object/from16 v21, v10

    .line 764
    .line 765
    move-object/from16 v34, v12

    .line 766
    .line 767
    move-object/from16 v23, v13

    .line 768
    .line 769
    move-object/from16 v22, v14

    .line 770
    .line 771
    new-instance v5, Ljava/util/ArrayList;

    .line 772
    .line 773
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 774
    .line 775
    .line 776
    new-instance v7, Ljava/util/HashSet;

    .line 777
    .line 778
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 779
    .line 780
    .line 781
    const/4 v8, 0x0

    .line 782
    :goto_12
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 783
    .line 784
    .line 785
    move-result v9

    .line 786
    if-ge v8, v9, :cond_24

    .line 787
    .line 788
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 789
    .line 790
    .line 791
    move-result-object v9

    .line 792
    check-cast v9, LI0/n;

    .line 793
    .line 794
    iget-object v10, v9, LI0/n;->a:Landroid/net/Uri;

    .line 795
    .line 796
    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 797
    .line 798
    .line 799
    move-result v10

    .line 800
    if-eqz v10, :cond_23

    .line 801
    .line 802
    iget-object v10, v9, LI0/n;->b:Lm0/t;

    .line 803
    .line 804
    iget-object v12, v10, Lm0/t;->l:Lm0/N;

    .line 805
    .line 806
    if-nez v12, :cond_22

    .line 807
    .line 808
    const/4 v12, 0x1

    .line 809
    goto :goto_13

    .line 810
    :cond_22
    const/4 v12, 0x0

    .line 811
    :goto_13
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 812
    .line 813
    .line 814
    new-instance v12, LH0/v;

    .line 815
    .line 816
    iget-object v13, v9, LI0/n;->a:Landroid/net/Uri;

    .line 817
    .line 818
    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    move-result-object v13

    .line 822
    check-cast v13, Ljava/util/ArrayList;

    .line 823
    .line 824
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 825
    .line 826
    .line 827
    const/4 v14, 0x0

    .line 828
    invoke-direct {v12, v14, v14, v13}, LH0/v;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 829
    .line 830
    .line 831
    new-instance v13, Lm0/N;

    .line 832
    .line 833
    move-object/from16 v35, v4

    .line 834
    .line 835
    const/4 v14, 0x1

    .line 836
    new-array v4, v14, [Lm0/M;

    .line 837
    .line 838
    const/4 v14, 0x0

    .line 839
    aput-object v12, v4, v14

    .line 840
    .line 841
    invoke-direct {v13, v4}, Lm0/N;-><init>([Lm0/M;)V

    .line 842
    .line 843
    .line 844
    invoke-virtual {v10}, Lm0/t;->a()Lm0/s;

    .line 845
    .line 846
    .line 847
    move-result-object v4

    .line 848
    iput-object v13, v4, Lm0/s;->k:Lm0/N;

    .line 849
    .line 850
    new-instance v10, Lm0/t;

    .line 851
    .line 852
    invoke-direct {v10, v4}, Lm0/t;-><init>(Lm0/s;)V

    .line 853
    .line 854
    .line 855
    new-instance v4, LI0/n;

    .line 856
    .line 857
    iget-object v12, v9, LI0/n;->e:Ljava/lang/String;

    .line 858
    .line 859
    iget-object v13, v9, LI0/n;->f:Ljava/lang/String;

    .line 860
    .line 861
    iget-object v14, v9, LI0/n;->a:Landroid/net/Uri;

    .line 862
    .line 863
    move-object/from16 p0, v7

    .line 864
    .line 865
    iget-object v7, v9, LI0/n;->c:Ljava/lang/String;

    .line 866
    .line 867
    iget-object v9, v9, LI0/n;->d:Ljava/lang/String;

    .line 868
    .line 869
    move-object/from16 v24, v4

    .line 870
    .line 871
    move-object/from16 v25, v14

    .line 872
    .line 873
    move-object/from16 v26, v10

    .line 874
    .line 875
    move-object/from16 v27, v7

    .line 876
    .line 877
    move-object/from16 v28, v9

    .line 878
    .line 879
    move-object/from16 v29, v12

    .line 880
    .line 881
    move-object/from16 v30, v13

    .line 882
    .line 883
    invoke-direct/range {v24 .. v30}, LI0/n;-><init>(Landroid/net/Uri;Lm0/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    .line 885
    .line 886
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    .line 888
    .line 889
    :goto_14
    const/4 v4, 0x1

    .line 890
    goto :goto_15

    .line 891
    :cond_23
    move-object/from16 v35, v4

    .line 892
    .line 893
    move-object/from16 p0, v7

    .line 894
    .line 895
    goto :goto_14

    .line 896
    :goto_15
    add-int/2addr v8, v4

    .line 897
    move-object/from16 v7, p0

    .line 898
    .line 899
    move-object/from16 v4, v35

    .line 900
    .line 901
    goto :goto_12

    .line 902
    :cond_24
    const/4 v4, 0x0

    .line 903
    const/4 v8, 0x0

    .line 904
    const/4 v14, 0x0

    .line 905
    :goto_16
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    .line 906
    .line 907
    .line 908
    move-result v7

    .line 909
    if-ge v14, v7, :cond_43

    .line 910
    .line 911
    move-object/from16 v7, v34

    .line 912
    .line 913
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 914
    .line 915
    .line 916
    move-result-object v9

    .line 917
    check-cast v9, Ljava/lang/String;

    .line 918
    .line 919
    sget-object v10, LI0/r;->z0:Ljava/util/regex/Pattern;

    .line 920
    .line 921
    invoke-static {v9, v10, v11}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 922
    .line 923
    .line 924
    move-result-object v10

    .line 925
    invoke-static {v9, v3, v11}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 926
    .line 927
    .line 928
    move-result-object v12

    .line 929
    new-instance v13, Lm0/s;

    .line 930
    .line 931
    invoke-direct {v13}, Lm0/s;-><init>()V

    .line 932
    .line 933
    .line 934
    move-object/from16 v24, v3

    .line 935
    .line 936
    const-string v3, ":"

    .line 937
    .line 938
    invoke-static {v10, v3, v12}, Lcom/google/protobuf/U2;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 939
    .line 940
    .line 941
    move-result-object v3

    .line 942
    iput-object v3, v13, Lm0/s;->a:Ljava/lang/String;

    .line 943
    .line 944
    iput-object v12, v13, Lm0/s;->b:Ljava/lang/String;

    .line 945
    .line 946
    invoke-static/range {v19 .. v19}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 947
    .line 948
    .line 949
    move-result-object v3

    .line 950
    iput-object v3, v13, Lm0/s;->m:Ljava/lang/String;

    .line 951
    .line 952
    sget-object v3, LI0/r;->D0:Ljava/util/regex/Pattern;

    .line 953
    .line 954
    invoke-static {v9, v3}, LI0/r;->f(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    .line 955
    .line 956
    .line 957
    move-result v3

    .line 958
    move-object/from16 v34, v7

    .line 959
    .line 960
    sget-object v7, LI0/r;->E0:Ljava/util/regex/Pattern;

    .line 961
    .line 962
    invoke-static {v9, v7}, LI0/r;->f(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    .line 963
    .line 964
    .line 965
    move-result v7

    .line 966
    if-eqz v7, :cond_25

    .line 967
    .line 968
    const/4 v7, 0x2

    .line 969
    or-int/2addr v3, v7

    .line 970
    :cond_25
    sget-object v7, LI0/r;->C0:Ljava/util/regex/Pattern;

    .line 971
    .line 972
    invoke-static {v9, v7}, LI0/r;->f(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    .line 973
    .line 974
    .line 975
    move-result v7

    .line 976
    if-eqz v7, :cond_26

    .line 977
    .line 978
    or-int/lit8 v3, v3, 0x4

    .line 979
    .line 980
    :cond_26
    iput v3, v13, Lm0/s;->e:I

    .line 981
    .line 982
    sget-object v3, LI0/r;->A0:Ljava/util/regex/Pattern;

    .line 983
    .line 984
    const/4 v7, 0x0

    .line 985
    invoke-static {v9, v3, v7, v11}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 986
    .line 987
    .line 988
    move-result-object v3

    .line 989
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 990
    .line 991
    .line 992
    move-result v7

    .line 993
    if-eqz v7, :cond_27

    .line 994
    .line 995
    move-object/from16 v25, v15

    .line 996
    .line 997
    const/4 v3, 0x0

    .line 998
    goto :goto_18

    .line 999
    :cond_27
    sget-object v7, Lp0/M;->a:Ljava/lang/String;

    .line 1000
    .line 1001
    const/4 v7, -0x1

    .line 1002
    invoke-virtual {v3, v15, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v3

    .line 1006
    const-string v7, "public.accessibility.describes-video"

    .line 1007
    .line 1008
    invoke-static {v3, v7}, Lp0/M;->l([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1009
    .line 1010
    .line 1011
    move-result v7

    .line 1012
    if-eqz v7, :cond_28

    .line 1013
    .line 1014
    const/16 v7, 0x200

    .line 1015
    .line 1016
    move-object/from16 v25, v15

    .line 1017
    .line 1018
    goto :goto_17

    .line 1019
    :cond_28
    move-object/from16 v25, v15

    .line 1020
    .line 1021
    const/4 v7, 0x0

    .line 1022
    :goto_17
    const-string v15, "public.accessibility.transcribes-spoken-dialog"

    .line 1023
    .line 1024
    invoke-static {v3, v15}, Lp0/M;->l([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1025
    .line 1026
    .line 1027
    move-result v15

    .line 1028
    if-eqz v15, :cond_29

    .line 1029
    .line 1030
    or-int/lit16 v7, v7, 0x1000

    .line 1031
    .line 1032
    :cond_29
    const-string v15, "public.accessibility.describes-music-and-sound"

    .line 1033
    .line 1034
    invoke-static {v3, v15}, Lp0/M;->l([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1035
    .line 1036
    .line 1037
    move-result v15

    .line 1038
    if-eqz v15, :cond_2a

    .line 1039
    .line 1040
    or-int/lit16 v7, v7, 0x400

    .line 1041
    .line 1042
    :cond_2a
    const-string v15, "public.easy-to-read"

    .line 1043
    .line 1044
    invoke-static {v3, v15}, Lp0/M;->l([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1045
    .line 1046
    .line 1047
    move-result v3

    .line 1048
    if-eqz v3, :cond_2b

    .line 1049
    .line 1050
    or-int/lit16 v3, v7, 0x2000

    .line 1051
    .line 1052
    goto :goto_18

    .line 1053
    :cond_2b
    move v3, v7

    .line 1054
    :goto_18
    iput v3, v13, Lm0/s;->f:I

    .line 1055
    .line 1056
    sget-object v3, LI0/r;->x0:Ljava/util/regex/Pattern;

    .line 1057
    .line 1058
    const/4 v7, 0x0

    .line 1059
    invoke-static {v9, v3, v7, v11}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v3

    .line 1063
    iput-object v3, v13, Lm0/s;->d:Ljava/lang/String;

    .line 1064
    .line 1065
    invoke-static {v9, v0, v7, v11}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v3

    .line 1069
    if-nez v3, :cond_2c

    .line 1070
    .line 1071
    const/4 v3, 0x0

    .line 1072
    goto :goto_19

    .line 1073
    :cond_2c
    invoke-static {v1, v3}, LQ3/b;->w(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v3

    .line 1077
    :goto_19
    new-instance v7, Lm0/N;

    .line 1078
    .line 1079
    new-instance v15, LH0/v;

    .line 1080
    .line 1081
    move-object/from16 v26, v0

    .line 1082
    .line 1083
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v0

    .line 1087
    invoke-direct {v15, v10, v12, v0}, LH0/v;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1088
    .line 1089
    .line 1090
    const/4 v0, 0x1

    .line 1091
    new-array v1, v0, [Lm0/M;

    .line 1092
    .line 1093
    const/4 v0, 0x0

    .line 1094
    aput-object v15, v1, v0

    .line 1095
    .line 1096
    invoke-direct {v7, v1}, Lm0/N;-><init>([Lm0/M;)V

    .line 1097
    .line 1098
    .line 1099
    sget-object v0, LI0/r;->v0:Ljava/util/regex/Pattern;

    .line 1100
    .line 1101
    invoke-static {v9, v0, v11}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v0

    .line 1105
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 1109
    .line 1110
    .line 1111
    move-result v1

    .line 1112
    sparse-switch v1, :sswitch_data_0

    .line 1113
    .line 1114
    .line 1115
    :goto_1a
    const/4 v0, -0x1

    .line 1116
    goto :goto_1b

    .line 1117
    :sswitch_0
    const-string v1, "VIDEO"

    .line 1118
    .line 1119
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1120
    .line 1121
    .line 1122
    move-result v0

    .line 1123
    if-nez v0, :cond_2d

    .line 1124
    .line 1125
    goto :goto_1a

    .line 1126
    :cond_2d
    const/4 v0, 0x3

    .line 1127
    goto :goto_1b

    .line 1128
    :sswitch_1
    const-string v1, "AUDIO"

    .line 1129
    .line 1130
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1131
    .line 1132
    .line 1133
    move-result v0

    .line 1134
    if-nez v0, :cond_2e

    .line 1135
    .line 1136
    goto :goto_1a

    .line 1137
    :cond_2e
    const/4 v0, 0x2

    .line 1138
    goto :goto_1b

    .line 1139
    :sswitch_2
    const-string v1, "CLOSED-CAPTIONS"

    .line 1140
    .line 1141
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1142
    .line 1143
    .line 1144
    move-result v0

    .line 1145
    if-nez v0, :cond_2f

    .line 1146
    .line 1147
    goto :goto_1a

    .line 1148
    :cond_2f
    const/4 v0, 0x1

    .line 1149
    goto :goto_1b

    .line 1150
    :sswitch_3
    const-string v1, "SUBTITLES"

    .line 1151
    .line 1152
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1153
    .line 1154
    .line 1155
    move-result v0

    .line 1156
    if-nez v0, :cond_30

    .line 1157
    .line 1158
    goto :goto_1a

    .line 1159
    :cond_30
    const/4 v0, 0x0

    .line 1160
    :goto_1b
    packed-switch v0, :pswitch_data_0

    .line 1161
    .line 1162
    .line 1163
    :goto_1c
    move-object/from16 p0, v8

    .line 1164
    .line 1165
    move-object/from16 v7, v31

    .line 1166
    .line 1167
    move-object/from16 v1, v32

    .line 1168
    .line 1169
    move-object/from16 v15, v33

    .line 1170
    .line 1171
    :goto_1d
    const/4 v8, 0x3

    .line 1172
    const/16 v20, 0x0

    .line 1173
    .line 1174
    goto/16 :goto_29

    .line 1175
    .line 1176
    :pswitch_0
    const/4 v0, 0x0

    .line 1177
    :goto_1e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 1178
    .line 1179
    .line 1180
    move-result v1

    .line 1181
    if-ge v0, v1, :cond_32

    .line 1182
    .line 1183
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v1

    .line 1187
    check-cast v1, LI0/n;

    .line 1188
    .line 1189
    iget-object v9, v1, LI0/n;->c:Ljava/lang/String;

    .line 1190
    .line 1191
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1192
    .line 1193
    .line 1194
    move-result v9

    .line 1195
    if-eqz v9, :cond_31

    .line 1196
    .line 1197
    goto :goto_1f

    .line 1198
    :cond_31
    const/4 v1, 0x1

    .line 1199
    add-int/2addr v0, v1

    .line 1200
    goto :goto_1e

    .line 1201
    :cond_32
    const/4 v1, 0x0

    .line 1202
    :goto_1f
    if-eqz v1, :cond_33

    .line 1203
    .line 1204
    iget-object v0, v1, LI0/n;->b:Lm0/t;

    .line 1205
    .line 1206
    iget-object v1, v0, Lm0/t;->k:Ljava/lang/String;

    .line 1207
    .line 1208
    const/4 v9, 0x2

    .line 1209
    invoke-static {v9, v1}, Lp0/M;->u(ILjava/lang/String;)Ljava/lang/String;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v1

    .line 1213
    iput-object v1, v13, Lm0/s;->j:Ljava/lang/String;

    .line 1214
    .line 1215
    invoke-static {v1}, Lm0/O;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v1

    .line 1219
    invoke-static {v1}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v1

    .line 1223
    iput-object v1, v13, Lm0/s;->n:Ljava/lang/String;

    .line 1224
    .line 1225
    iget v1, v0, Lm0/t;->v:I

    .line 1226
    .line 1227
    iput v1, v13, Lm0/s;->u:I

    .line 1228
    .line 1229
    iget v1, v0, Lm0/t;->w:I

    .line 1230
    .line 1231
    iput v1, v13, Lm0/s;->v:I

    .line 1232
    .line 1233
    iget v0, v0, Lm0/t;->z:F

    .line 1234
    .line 1235
    iput v0, v13, Lm0/s;->y:F

    .line 1236
    .line 1237
    :cond_33
    if-nez v3, :cond_34

    .line 1238
    .line 1239
    goto :goto_1c

    .line 1240
    :cond_34
    iput-object v7, v13, Lm0/s;->k:Lm0/N;

    .line 1241
    .line 1242
    new-instance v0, LI0/m;

    .line 1243
    .line 1244
    new-instance v1, Lm0/t;

    .line 1245
    .line 1246
    invoke-direct {v1, v13}, Lm0/t;-><init>(Lm0/s;)V

    .line 1247
    .line 1248
    .line 1249
    invoke-direct {v0, v3, v1, v12}, LI0/m;-><init>(Landroid/net/Uri;Lm0/t;Ljava/lang/String;)V

    .line 1250
    .line 1251
    .line 1252
    move-object/from16 v15, v33

    .line 1253
    .line 1254
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    .line 1256
    .line 1257
    move-object/from16 p0, v8

    .line 1258
    .line 1259
    move-object/from16 v7, v31

    .line 1260
    .line 1261
    move-object/from16 v1, v32

    .line 1262
    .line 1263
    goto :goto_1d

    .line 1264
    :pswitch_1
    move-object/from16 v15, v33

    .line 1265
    .line 1266
    const/4 v0, 0x0

    .line 1267
    :goto_20
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 1268
    .line 1269
    .line 1270
    move-result v1

    .line 1271
    if-ge v0, v1, :cond_36

    .line 1272
    .line 1273
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v1

    .line 1277
    check-cast v1, LI0/n;

    .line 1278
    .line 1279
    move-object/from16 p0, v8

    .line 1280
    .line 1281
    iget-object v8, v1, LI0/n;->d:Ljava/lang/String;

    .line 1282
    .line 1283
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1284
    .line 1285
    .line 1286
    move-result v8

    .line 1287
    if-eqz v8, :cond_35

    .line 1288
    .line 1289
    move-object v8, v1

    .line 1290
    const/4 v1, 0x1

    .line 1291
    goto :goto_21

    .line 1292
    :cond_35
    const/4 v1, 0x1

    .line 1293
    add-int/2addr v0, v1

    .line 1294
    move-object/from16 v8, p0

    .line 1295
    .line 1296
    goto :goto_20

    .line 1297
    :cond_36
    move-object/from16 p0, v8

    .line 1298
    .line 1299
    const/4 v1, 0x1

    .line 1300
    const/4 v8, 0x0

    .line 1301
    :goto_21
    if-eqz v8, :cond_37

    .line 1302
    .line 1303
    iget-object v0, v8, LI0/n;->b:Lm0/t;

    .line 1304
    .line 1305
    iget-object v0, v0, Lm0/t;->k:Ljava/lang/String;

    .line 1306
    .line 1307
    invoke-static {v1, v0}, Lp0/M;->u(ILjava/lang/String;)Ljava/lang/String;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v0

    .line 1311
    iput-object v0, v13, Lm0/s;->j:Ljava/lang/String;

    .line 1312
    .line 1313
    invoke-static {v0}, Lm0/O;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v0

    .line 1317
    goto :goto_22

    .line 1318
    :cond_37
    const/4 v0, 0x0

    .line 1319
    :goto_22
    sget-object v1, LI0/r;->O:Ljava/util/regex/Pattern;

    .line 1320
    .line 1321
    const/4 v10, 0x0

    .line 1322
    invoke-static {v9, v1, v10, v11}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v1

    .line 1326
    if-eqz v1, :cond_38

    .line 1327
    .line 1328
    sget-object v9, Lp0/M;->a:Ljava/lang/String;

    .line 1329
    .line 1330
    const/4 v9, 0x2

    .line 1331
    invoke-virtual {v1, v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v18

    .line 1335
    const/16 v20, 0x0

    .line 1336
    .line 1337
    aget-object v9, v18, v20

    .line 1338
    .line 1339
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1340
    .line 1341
    .line 1342
    move-result v9

    .line 1343
    iput v9, v13, Lm0/s;->F:I

    .line 1344
    .line 1345
    const-string v9, "audio/eac3"

    .line 1346
    .line 1347
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1348
    .line 1349
    .line 1350
    move-result v9

    .line 1351
    if-eqz v9, :cond_39

    .line 1352
    .line 1353
    const-string v9, "/JOC"

    .line 1354
    .line 1355
    invoke-virtual {v1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1356
    .line 1357
    .line 1358
    move-result v1

    .line 1359
    if-eqz v1, :cond_39

    .line 1360
    .line 1361
    const-string v0, "ec+3"

    .line 1362
    .line 1363
    iput-object v0, v13, Lm0/s;->j:Ljava/lang/String;

    .line 1364
    .line 1365
    const-string v0, "audio/eac3-joc"

    .line 1366
    .line 1367
    goto :goto_23

    .line 1368
    :cond_38
    const/16 v20, 0x0

    .line 1369
    .line 1370
    :cond_39
    :goto_23
    invoke-static {v0}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v0

    .line 1374
    iput-object v0, v13, Lm0/s;->n:Ljava/lang/String;

    .line 1375
    .line 1376
    if-eqz v3, :cond_3b

    .line 1377
    .line 1378
    iput-object v7, v13, Lm0/s;->k:Lm0/N;

    .line 1379
    .line 1380
    new-instance v0, LI0/m;

    .line 1381
    .line 1382
    new-instance v1, Lm0/t;

    .line 1383
    .line 1384
    invoke-direct {v1, v13}, Lm0/t;-><init>(Lm0/s;)V

    .line 1385
    .line 1386
    .line 1387
    invoke-direct {v0, v3, v1, v12}, LI0/m;-><init>(Landroid/net/Uri;Lm0/t;Ljava/lang/String;)V

    .line 1388
    .line 1389
    .line 1390
    move-object/from16 v1, v32

    .line 1391
    .line 1392
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1393
    .line 1394
    .line 1395
    :cond_3a
    move-object/from16 v7, v31

    .line 1396
    .line 1397
    const/4 v8, 0x3

    .line 1398
    goto/16 :goto_29

    .line 1399
    .line 1400
    :cond_3b
    move-object/from16 v1, v32

    .line 1401
    .line 1402
    if-eqz v8, :cond_3a

    .line 1403
    .line 1404
    new-instance v8, Lm0/t;

    .line 1405
    .line 1406
    invoke-direct {v8, v13}, Lm0/t;-><init>(Lm0/s;)V

    .line 1407
    .line 1408
    .line 1409
    move-object v0, v8

    .line 1410
    :goto_24
    move-object/from16 v7, v31

    .line 1411
    .line 1412
    const/4 v3, 0x1

    .line 1413
    const/4 v8, 0x3

    .line 1414
    goto/16 :goto_2a

    .line 1415
    .line 1416
    :pswitch_2
    move-object/from16 p0, v8

    .line 1417
    .line 1418
    move-object/from16 v1, v32

    .line 1419
    .line 1420
    move-object/from16 v15, v33

    .line 1421
    .line 1422
    const/4 v10, 0x0

    .line 1423
    const/16 v20, 0x0

    .line 1424
    .line 1425
    sget-object v0, LI0/r;->B0:Ljava/util/regex/Pattern;

    .line 1426
    .line 1427
    invoke-static {v9, v0, v11}, LI0/r;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v0

    .line 1431
    const-string v3, "CC"

    .line 1432
    .line 1433
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1434
    .line 1435
    .line 1436
    move-result v3

    .line 1437
    if-eqz v3, :cond_3c

    .line 1438
    .line 1439
    const/4 v8, 0x2

    .line 1440
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v0

    .line 1444
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1445
    .line 1446
    .line 1447
    move-result v0

    .line 1448
    const-string v3, "application/cea-608"

    .line 1449
    .line 1450
    goto :goto_25

    .line 1451
    :cond_3c
    const/4 v8, 0x2

    .line 1452
    const/4 v3, 0x7

    .line 1453
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v0

    .line 1457
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1458
    .line 1459
    .line 1460
    move-result v0

    .line 1461
    const-string v3, "application/cea-708"

    .line 1462
    .line 1463
    :goto_25
    if-nez v4, :cond_3d

    .line 1464
    .line 1465
    new-instance v4, Ljava/util/ArrayList;

    .line 1466
    .line 1467
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1468
    .line 1469
    .line 1470
    :cond_3d
    invoke-static {v3}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v3

    .line 1474
    iput-object v3, v13, Lm0/s;->n:Ljava/lang/String;

    .line 1475
    .line 1476
    iput v0, v13, Lm0/s;->K:I

    .line 1477
    .line 1478
    new-instance v0, Lm0/t;

    .line 1479
    .line 1480
    invoke-direct {v0, v13}, Lm0/t;-><init>(Lm0/s;)V

    .line 1481
    .line 1482
    .line 1483
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1484
    .line 1485
    .line 1486
    move-object/from16 v0, p0

    .line 1487
    .line 1488
    goto :goto_24

    .line 1489
    :pswitch_3
    move-object/from16 p0, v8

    .line 1490
    .line 1491
    move-object/from16 v1, v32

    .line 1492
    .line 1493
    move-object/from16 v15, v33

    .line 1494
    .line 1495
    const/4 v8, 0x2

    .line 1496
    const/16 v20, 0x0

    .line 1497
    .line 1498
    const/4 v9, 0x0

    .line 1499
    :goto_26
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 1500
    .line 1501
    .line 1502
    move-result v0

    .line 1503
    if-ge v9, v0, :cond_3f

    .line 1504
    .line 1505
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v0

    .line 1509
    check-cast v0, LI0/n;

    .line 1510
    .line 1511
    iget-object v8, v0, LI0/n;->e:Ljava/lang/String;

    .line 1512
    .line 1513
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1514
    .line 1515
    .line 1516
    move-result v8

    .line 1517
    if-eqz v8, :cond_3e

    .line 1518
    .line 1519
    move-object v8, v0

    .line 1520
    goto :goto_27

    .line 1521
    :cond_3e
    const/4 v0, 0x1

    .line 1522
    add-int/2addr v9, v0

    .line 1523
    const/4 v8, 0x2

    .line 1524
    goto :goto_26

    .line 1525
    :cond_3f
    const/4 v8, 0x0

    .line 1526
    :goto_27
    if-eqz v8, :cond_40

    .line 1527
    .line 1528
    iget-object v0, v8, LI0/n;->b:Lm0/t;

    .line 1529
    .line 1530
    iget-object v0, v0, Lm0/t;->k:Ljava/lang/String;

    .line 1531
    .line 1532
    const/4 v8, 0x3

    .line 1533
    invoke-static {v8, v0}, Lp0/M;->u(ILjava/lang/String;)Ljava/lang/String;

    .line 1534
    .line 1535
    .line 1536
    move-result-object v0

    .line 1537
    iput-object v0, v13, Lm0/s;->j:Ljava/lang/String;

    .line 1538
    .line 1539
    invoke-static {v0}, Lm0/O;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v0

    .line 1543
    goto :goto_28

    .line 1544
    :cond_40
    const/4 v8, 0x3

    .line 1545
    const/4 v0, 0x0

    .line 1546
    :goto_28
    if-nez v0, :cond_41

    .line 1547
    .line 1548
    const-string v0, "text/vtt"

    .line 1549
    .line 1550
    :cond_41
    invoke-static {v0}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 1551
    .line 1552
    .line 1553
    move-result-object v0

    .line 1554
    iput-object v0, v13, Lm0/s;->n:Ljava/lang/String;

    .line 1555
    .line 1556
    iput-object v7, v13, Lm0/s;->k:Lm0/N;

    .line 1557
    .line 1558
    if-eqz v3, :cond_42

    .line 1559
    .line 1560
    new-instance v0, LI0/m;

    .line 1561
    .line 1562
    new-instance v7, Lm0/t;

    .line 1563
    .line 1564
    invoke-direct {v7, v13}, Lm0/t;-><init>(Lm0/s;)V

    .line 1565
    .line 1566
    .line 1567
    invoke-direct {v0, v3, v7, v12}, LI0/m;-><init>(Landroid/net/Uri;Lm0/t;Ljava/lang/String;)V

    .line 1568
    .line 1569
    .line 1570
    move-object/from16 v7, v31

    .line 1571
    .line 1572
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1573
    .line 1574
    .line 1575
    goto :goto_29

    .line 1576
    :cond_42
    move-object/from16 v7, v31

    .line 1577
    .line 1578
    const-string v0, "HlsPlaylistParser"

    .line 1579
    .line 1580
    const-string v3, "EXT-X-MEDIA tag with missing mandatory URI attribute: skipping"

    .line 1581
    .line 1582
    invoke-static {v0, v3}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    .line 1584
    .line 1585
    :goto_29
    move-object/from16 v0, p0

    .line 1586
    .line 1587
    const/4 v3, 0x1

    .line 1588
    :goto_2a
    add-int/2addr v14, v3

    .line 1589
    move-object v8, v0

    .line 1590
    move-object/from16 v32, v1

    .line 1591
    .line 1592
    move-object/from16 v31, v7

    .line 1593
    .line 1594
    move-object/from16 v33, v15

    .line 1595
    .line 1596
    move-object/from16 v3, v24

    .line 1597
    .line 1598
    move-object/from16 v15, v25

    .line 1599
    .line 1600
    move-object/from16 v0, v26

    .line 1601
    .line 1602
    move-object/from16 v1, p1

    .line 1603
    .line 1604
    goto/16 :goto_16

    .line 1605
    .line 1606
    :cond_43
    move-object/from16 p0, v8

    .line 1607
    .line 1608
    move-object/from16 v7, v31

    .line 1609
    .line 1610
    move-object/from16 v1, v32

    .line 1611
    .line 1612
    move-object/from16 v15, v33

    .line 1613
    .line 1614
    if-eqz v17, :cond_44

    .line 1615
    .line 1616
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 1617
    .line 1618
    .line 1619
    move-result-object v0

    .line 1620
    move-object v9, v0

    .line 1621
    goto :goto_2b

    .line 1622
    :cond_44
    move-object v9, v4

    .line 1623
    :goto_2b
    new-instance v13, LI0/o;

    .line 1624
    .line 1625
    move-object v0, v13

    .line 1626
    move-object v6, v1

    .line 1627
    move-object/from16 v1, p1

    .line 1628
    .line 1629
    move-object/from16 v2, v22

    .line 1630
    .line 1631
    move-object v3, v5

    .line 1632
    move-object v4, v15

    .line 1633
    move-object v5, v6

    .line 1634
    move-object v6, v7

    .line 1635
    move-object/from16 v7, v21

    .line 1636
    .line 1637
    move-object/from16 v8, p0

    .line 1638
    .line 1639
    move/from16 v10, v16

    .line 1640
    .line 1641
    move-object/from16 v12, v23

    .line 1642
    .line 1643
    invoke-direct/range {v0 .. v12}, LI0/o;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lm0/t;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    .line 1644
    .line 1645
    .line 1646
    return-object v13

    .line 1647
    :sswitch_data_0
    .sparse-switch
        -0x392db8c5 -> :sswitch_3
        -0x13dc6572 -> :sswitch_2
        0x3bba3b6 -> :sswitch_1
        0x4de1c5b -> :sswitch_0
    .end sparse-switch

    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static f(Ljava/lang/String;Ljava/util/regex/Pattern;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string p1, "YES"

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public static g(Ljava/lang/String;Ljava/util/regex/Pattern;D)D
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 20
    .line 21
    .line 22
    move-result-wide p0

    .line 23
    return-wide p0

    .line 24
    :cond_0
    return-wide p2
.end method

.method public static h(Ljava/lang/String;Ljava/util/regex/Pattern;)J
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 20
    .line 21
    .line 22
    move-result-wide p0

    .line 23
    return-wide p0

    .line 24
    :cond_0
    const-wide/16 p0, -0x1

    .line 25
    .line 26
    return-wide p0
.end method

.method public static i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_2

    .line 24
    .line 25
    if-nez p2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-static {p2, p3}, LI0/r;->k(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    :cond_2
    :goto_0
    return-object p2
.end method

.method public static j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0, p2}, LI0/r;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    return-object p2

    .line 9
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "Couldn\'t match "

    .line 12
    .line 13
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, " in "

    .line 24
    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0, v0}, Lm0/P;->b(Ljava/lang/String;Ljava/lang/Exception;)Lm0/P;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    throw p0
.end method

.method public static k(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, LI0/r;->a1:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Ljava/lang/StringBuffer;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p0, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method


# virtual methods
.method public final B(Landroid/net/Uri;Ls0/k;)Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v0, Ljava/io/BufferedReader;

    .line 2
    .line 3
    new-instance v1, Ljava/io/InputStreamReader;

    .line 4
    .line 5
    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 9
    .line 10
    .line 11
    new-instance p2, Ljava/util/ArrayDeque;

    .line 12
    .line 13
    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/16 v2, 0xef

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/16 v2, 0xbb

    .line 30
    .line 31
    if-ne v1, v2, :cond_9

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/16 v2, 0xbf

    .line 38
    .line 39
    if-ne v1, v2, :cond_9

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    :cond_0
    :goto_0
    const/4 v2, -0x1

    .line 46
    if-eq v1, v2, :cond_1

    .line 47
    .line 48
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 v4, 0x0

    .line 60
    :goto_1
    const/4 v5, 0x7

    .line 61
    if-ge v4, v5, :cond_2

    .line 62
    .line 63
    const-string v5, "#EXTM3U"

    .line 64
    .line 65
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-ne v1, v5, :cond_9

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    add-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    :goto_2
    if-eq v1, v2, :cond_3

    .line 79
    .line 80
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_3

    .line 85
    .line 86
    invoke-static {v1}, Lp0/M;->O(I)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-nez v4, :cond_3

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    goto :goto_2

    .line 97
    :cond_3
    invoke-static {v1}, Lp0/M;->O(I)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_9

    .line 102
    .line 103
    :goto_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    if-eqz v1, :cond_8

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_4

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_4
    const-string v2, "#EXT-X-STREAM-INF"

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_5

    .line 127
    .line 128
    invoke-virtual {p2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    new-instance v1, Lm2/u;

    .line 132
    .line 133
    invoke-direct {v1, p2, v0}, Lm2/u;-><init>(Ljava/util/ArrayDeque;Ljava/io/BufferedReader;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {v1, p1}, LI0/r;->e(Lm2/u;Ljava/lang/String;)LI0/o;

    .line 141
    .line 142
    .line 143
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :goto_4
    invoke-static {v0}, Lp0/M;->g(Ljava/io/Closeable;)V

    .line 145
    .line 146
    .line 147
    goto :goto_6

    .line 148
    :catchall_0
    move-exception p1

    .line 149
    goto :goto_7

    .line 150
    :cond_5
    :try_start_1
    const-string v2, "#EXT-X-TARGETDURATION"

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-nez v2, :cond_7

    .line 157
    .line 158
    const-string v2, "#EXT-X-MEDIA-SEQUENCE"

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-nez v2, :cond_7

    .line 165
    .line 166
    const-string v2, "#EXTINF"

    .line 167
    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-nez v2, :cond_7

    .line 173
    .line 174
    const-string v2, "#EXT-X-KEY"

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-nez v2, :cond_7

    .line 181
    .line 182
    const-string v2, "#EXT-X-BYTERANGE"

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-nez v2, :cond_7

    .line 189
    .line 190
    const-string v2, "#EXT-X-DISCONTINUITY"

    .line 191
    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-nez v2, :cond_7

    .line 197
    .line 198
    const-string v2, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 199
    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-nez v2, :cond_7

    .line 205
    .line 206
    const-string v2, "#EXT-X-ENDLIST"

    .line 207
    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_6

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_6
    invoke-virtual {p2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_7
    :goto_5
    invoke-virtual {p2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    iget-object v1, p0, LI0/r;->G:LI0/o;

    .line 223
    .line 224
    iget-object v2, p0, LI0/r;->H:LI0/l;

    .line 225
    .line 226
    new-instance v3, Lm2/u;

    .line 227
    .line 228
    invoke-direct {v3, p2, v0}, Lm2/u;-><init>(Ljava/util/ArrayDeque;Ljava/io/BufferedReader;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-static {v1, v2, v3, p1}, LI0/r;->d(LI0/o;LI0/l;Lm2/u;Ljava/lang/String;)LI0/l;

    .line 236
    .line 237
    .line 238
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    goto :goto_4

    .line 240
    :goto_6
    return-object p1

    .line 241
    :cond_8
    invoke-static {v0}, Lp0/M;->g(Ljava/io/Closeable;)V

    .line 242
    .line 243
    .line 244
    const-string p1, "Failed to parse the playlist, could not identify any tags."

    .line 245
    .line 246
    invoke-static {p1, v3}, Lm0/P;->b(Ljava/lang/String;Ljava/lang/Exception;)Lm0/P;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    throw p1

    .line 251
    :cond_9
    :try_start_2
    const-string p1, "Input does not start with the #EXTM3U header."

    .line 252
    .line 253
    invoke-static {p1, v3}, Lm0/P;->b(Ljava/lang/String;Ljava/lang/Exception;)Lm0/P;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    :goto_7
    invoke-static {v0}, Lp0/M;->g(Ljava/io/Closeable;)V

    .line 259
    .line 260
    .line 261
    throw p1
.end method
