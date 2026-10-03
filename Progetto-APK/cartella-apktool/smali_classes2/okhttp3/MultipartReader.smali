.class public final Lokhttp3/MultipartReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/MultipartReader$Companion;,
        Lokhttp3/MultipartReader$Part;,
        Lokhttp3/MultipartReader$PartSource;
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/MultipartReader$Companion;

.field private static final afterBoundaryOptions:LQ6/u;


# instance fields
.field private final boundary:Ljava/lang/String;

.field private closed:Z

.field private final crlfDashDashBoundary:LQ6/m;

.field private currentPart:Lokhttp3/MultipartReader$PartSource;

.field private final dashDashBoundary:LQ6/m;

.field private noMoreParts:Z

.field private partCount:I

.field private final source:LQ6/l;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lokhttp3/MultipartReader$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lokhttp3/MultipartReader$Companion;-><init>(LD6/e;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lokhttp3/MultipartReader;->Companion:Lokhttp3/MultipartReader$Companion;

    .line 8
    .line 9
    sget-object v0, LQ6/m;->J:LQ6/m;

    .line 10
    .line 11
    const-string v0, "\r\n"

    .line 12
    .line 13
    invoke-static {v0}, LF2/G;->C(Ljava/lang/String;)LQ6/m;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "--"

    .line 18
    .line 19
    invoke-static {v1}, LF2/G;->C(Ljava/lang/String;)LQ6/m;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, " "

    .line 24
    .line 25
    invoke-static {v2}, LF2/G;->C(Ljava/lang/String;)LQ6/m;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "\t"

    .line 30
    .line 31
    invoke-static {v3}, LF2/G;->C(Ljava/lang/String;)LQ6/m;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const/4 v4, 0x4

    .line 36
    new-array v4, v4, [LQ6/m;

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    aput-object v0, v4, v5

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    aput-object v1, v4, v0

    .line 43
    .line 44
    const/4 v0, 0x2

    .line 45
    aput-object v2, v4, v0

    .line 46
    .line 47
    const/4 v0, 0x3

    .line 48
    aput-object v3, v4, v0

    .line 49
    .line 50
    invoke-static {v4}, LF2/G;->H([LQ6/m;)LQ6/u;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lokhttp3/MultipartReader;->afterBoundaryOptions:LQ6/u;

    .line 55
    .line 56
    return-void
.end method

.method public constructor <init>(LQ6/l;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "source"

    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boundary"

    invoke-static {p2, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lokhttp3/MultipartReader;->source:LQ6/l;

    .line 4
    iput-object p2, p0, Lokhttp3/MultipartReader;->boundary:Ljava/lang/String;

    .line 5
    new-instance p1, LQ6/j;

    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, "--"

    invoke-virtual {p1, v0}, LQ6/j;->w0(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, p2}, LQ6/j;->w0(Ljava/lang/String;)V

    .line 9
    iget-wide v0, p1, LQ6/j;->H:J

    .line 10
    invoke-virtual {p1, v0, v1}, LQ6/j;->d(J)LQ6/m;

    move-result-object p1

    .line 11
    iput-object p1, p0, Lokhttp3/MultipartReader;->dashDashBoundary:LQ6/m;

    .line 12
    new-instance p1, LQ6/j;

    .line 13
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "\r\n--"

    invoke-virtual {p1, v0}, LQ6/j;->w0(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, p2}, LQ6/j;->w0(Ljava/lang/String;)V

    .line 16
    iget-wide v0, p1, LQ6/j;->H:J

    .line 17
    invoke-virtual {p1, v0, v1}, LQ6/j;->d(J)LQ6/m;

    move-result-object p1

    .line 18
    iput-object p1, p0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:LQ6/m;

    return-void
.end method

.method public constructor <init>(Lokhttp3/ResponseBody;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()LQ6/l;

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "boundary"

    invoke-virtual {p1, v1}, Lokhttp3/MediaType;->parameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 21
    invoke-direct {p0, v0, p1}, Lokhttp3/MultipartReader;-><init>(LQ6/l;Ljava/lang/String;)V

    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "expected the Content-Type to have a boundary parameter"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$currentPartBytesRemaining(Lokhttp3/MultipartReader;J)J
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lokhttp3/MultipartReader;->currentPartBytesRemaining(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic access$getAfterBoundaryOptions$cp()LQ6/u;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/MultipartReader;->afterBoundaryOptions:LQ6/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getCurrentPart$p(Lokhttp3/MultipartReader;)Lokhttp3/MultipartReader$PartSource;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/MultipartReader;->currentPart:Lokhttp3/MultipartReader$PartSource;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSource$p(Lokhttp3/MultipartReader;)LQ6/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/MultipartReader;->source:LQ6/l;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setCurrentPart$p(Lokhttp3/MultipartReader;Lokhttp3/MultipartReader$PartSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/MultipartReader;->currentPart:Lokhttp3/MultipartReader$PartSource;

    .line 2
    .line 3
    return-void
.end method

.method private final currentPartBytesRemaining(J)J
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    iget-object v3, v0, Lokhttp3/MultipartReader;->source:LQ6/l;

    .line 6
    .line 7
    iget-object v4, v0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:LQ6/m;

    .line 8
    .line 9
    invoke-virtual {v4}, LQ6/m;->c()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    int-to-long v4, v4

    .line 14
    invoke-interface {v3, v4, v5}, LQ6/l;->U(J)V

    .line 15
    .line 16
    .line 17
    iget-object v3, v0, Lokhttp3/MultipartReader;->source:LQ6/l;

    .line 18
    .line 19
    invoke-interface {v3}, LQ6/l;->a()LQ6/j;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v4, v0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:LQ6/m;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const-string v5, "bytes"

    .line 29
    .line 30
    invoke-static {v4, v5}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, LQ6/m;->c()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-lez v5, :cond_a

    .line 38
    .line 39
    iget-object v5, v3, LQ6/j;->G:LQ6/y;

    .line 40
    .line 41
    const-wide/16 v6, 0x1

    .line 42
    .line 43
    if-nez v5, :cond_1

    .line 44
    .line 45
    :cond_0
    const-wide/16 v3, -0x1

    .line 46
    .line 47
    :goto_0
    const-wide/16 v5, -0x1

    .line 48
    .line 49
    goto/16 :goto_7

    .line 50
    .line 51
    :cond_1
    iget-wide v10, v3, LQ6/j;->H:J

    .line 52
    .line 53
    const-wide/16 v12, 0x0

    .line 54
    .line 55
    const/4 v14, 0x0

    .line 56
    cmp-long v15, v10, v12

    .line 57
    .line 58
    if-gez v15, :cond_5

    .line 59
    .line 60
    :goto_1
    cmp-long v15, v10, v12

    .line 61
    .line 62
    if-lez v15, :cond_2

    .line 63
    .line 64
    iget-object v5, v5, LQ6/y;->g:LQ6/y;

    .line 65
    .line 66
    invoke-static {v5}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget v15, v5, LQ6/y;->c:I

    .line 70
    .line 71
    iget v8, v5, LQ6/y;->b:I

    .line 72
    .line 73
    sub-int/2addr v15, v8

    .line 74
    int-to-long v8, v15

    .line 75
    sub-long/2addr v10, v8

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {v4}, LQ6/m;->e()[B

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    aget-byte v9, v8, v14

    .line 82
    .line 83
    invoke-virtual {v4}, LQ6/m;->c()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    iget-wide v14, v3, LQ6/j;->H:J

    .line 88
    .line 89
    int-to-long v12, v4

    .line 90
    sub-long/2addr v14, v12

    .line 91
    add-long/2addr v14, v6

    .line 92
    const-wide/16 v12, 0x0

    .line 93
    .line 94
    :goto_2
    cmp-long v3, v10, v14

    .line 95
    .line 96
    if-gez v3, :cond_0

    .line 97
    .line 98
    iget v3, v5, LQ6/y;->c:I

    .line 99
    .line 100
    iget v6, v5, LQ6/y;->b:I

    .line 101
    .line 102
    int-to-long v6, v6

    .line 103
    add-long/2addr v6, v14

    .line 104
    sub-long/2addr v6, v10

    .line 105
    move-wide/from16 v18, v14

    .line 106
    .line 107
    int-to-long v14, v3

    .line 108
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 109
    .line 110
    .line 111
    move-result-wide v6

    .line 112
    long-to-int v3, v6

    .line 113
    iget v6, v5, LQ6/y;->b:I

    .line 114
    .line 115
    int-to-long v6, v6

    .line 116
    add-long/2addr v6, v12

    .line 117
    sub-long/2addr v6, v10

    .line 118
    long-to-int v7, v6

    .line 119
    :goto_3
    if-ge v7, v3, :cond_4

    .line 120
    .line 121
    iget-object v6, v5, LQ6/y;->a:[B

    .line 122
    .line 123
    aget-byte v6, v6, v7

    .line 124
    .line 125
    if-ne v6, v9, :cond_3

    .line 126
    .line 127
    add-int/lit8 v6, v7, 0x1

    .line 128
    .line 129
    invoke-static {v5, v6, v8, v4}, LR6/a;->a(LQ6/y;I[BI)Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-eqz v6, :cond_3

    .line 134
    .line 135
    iget v3, v5, LQ6/y;->b:I

    .line 136
    .line 137
    sub-int/2addr v7, v3

    .line 138
    int-to-long v3, v7

    .line 139
    add-long/2addr v3, v10

    .line 140
    goto :goto_0

    .line 141
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_4
    iget v3, v5, LQ6/y;->c:I

    .line 145
    .line 146
    iget v6, v5, LQ6/y;->b:I

    .line 147
    .line 148
    sub-int/2addr v3, v6

    .line 149
    int-to-long v6, v3

    .line 150
    add-long v12, v10, v6

    .line 151
    .line 152
    iget-object v5, v5, LQ6/y;->f:LQ6/y;

    .line 153
    .line 154
    invoke-static {v5}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    move-wide v10, v12

    .line 158
    move-wide/from16 v14, v18

    .line 159
    .line 160
    const-wide/16 v6, 0x1

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_5
    const-wide/16 v6, 0x0

    .line 164
    .line 165
    :goto_4
    iget v8, v5, LQ6/y;->c:I

    .line 166
    .line 167
    iget v9, v5, LQ6/y;->b:I

    .line 168
    .line 169
    sub-int/2addr v8, v9

    .line 170
    int-to-long v8, v8

    .line 171
    add-long/2addr v8, v6

    .line 172
    const-wide/16 v10, 0x0

    .line 173
    .line 174
    cmp-long v12, v8, v10

    .line 175
    .line 176
    if-gtz v12, :cond_6

    .line 177
    .line 178
    iget-object v5, v5, LQ6/y;->f:LQ6/y;

    .line 179
    .line 180
    invoke-static {v5}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    move-wide v6, v8

    .line 184
    goto :goto_4

    .line 185
    :cond_6
    invoke-virtual {v4}, LQ6/m;->e()[B

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    aget-byte v9, v8, v14

    .line 190
    .line 191
    invoke-virtual {v4}, LQ6/m;->c()I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    iget-wide v12, v3, LQ6/j;->H:J

    .line 196
    .line 197
    int-to-long v14, v4

    .line 198
    sub-long/2addr v12, v14

    .line 199
    const-wide/16 v14, 0x1

    .line 200
    .line 201
    add-long/2addr v12, v14

    .line 202
    :goto_5
    cmp-long v3, v6, v12

    .line 203
    .line 204
    if-gez v3, :cond_0

    .line 205
    .line 206
    iget v3, v5, LQ6/y;->c:I

    .line 207
    .line 208
    iget v14, v5, LQ6/y;->b:I

    .line 209
    .line 210
    int-to-long v14, v14

    .line 211
    add-long/2addr v14, v12

    .line 212
    sub-long/2addr v14, v6

    .line 213
    move-wide/from16 v16, v12

    .line 214
    .line 215
    int-to-long v12, v3

    .line 216
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    .line 217
    .line 218
    .line 219
    move-result-wide v12

    .line 220
    long-to-int v3, v12

    .line 221
    iget v12, v5, LQ6/y;->b:I

    .line 222
    .line 223
    int-to-long v12, v12

    .line 224
    add-long/2addr v12, v10

    .line 225
    sub-long/2addr v12, v6

    .line 226
    long-to-int v10, v12

    .line 227
    :goto_6
    if-ge v10, v3, :cond_8

    .line 228
    .line 229
    iget-object v11, v5, LQ6/y;->a:[B

    .line 230
    .line 231
    aget-byte v11, v11, v10

    .line 232
    .line 233
    if-ne v11, v9, :cond_7

    .line 234
    .line 235
    add-int/lit8 v11, v10, 0x1

    .line 236
    .line 237
    invoke-static {v5, v11, v8, v4}, LR6/a;->a(LQ6/y;I[BI)Z

    .line 238
    .line 239
    .line 240
    move-result v11

    .line 241
    if-eqz v11, :cond_7

    .line 242
    .line 243
    iget v3, v5, LQ6/y;->b:I

    .line 244
    .line 245
    sub-int/2addr v10, v3

    .line 246
    int-to-long v3, v10

    .line 247
    add-long/2addr v3, v6

    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_8
    iget v3, v5, LQ6/y;->c:I

    .line 254
    .line 255
    iget v10, v5, LQ6/y;->b:I

    .line 256
    .line 257
    sub-int/2addr v3, v10

    .line 258
    int-to-long v10, v3

    .line 259
    add-long/2addr v10, v6

    .line 260
    iget-object v5, v5, LQ6/y;->f:LQ6/y;

    .line 261
    .line 262
    invoke-static {v5}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    move-wide v6, v10

    .line 266
    move-wide/from16 v12, v16

    .line 267
    .line 268
    goto :goto_5

    .line 269
    :goto_7
    cmp-long v7, v3, v5

    .line 270
    .line 271
    if-nez v7, :cond_9

    .line 272
    .line 273
    iget-object v3, v0, Lokhttp3/MultipartReader;->source:LQ6/l;

    .line 274
    .line 275
    invoke-interface {v3}, LQ6/l;->a()LQ6/j;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    iget-wide v3, v3, LQ6/j;->H:J

    .line 280
    .line 281
    iget-object v5, v0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:LQ6/m;

    .line 282
    .line 283
    invoke-virtual {v5}, LQ6/m;->c()I

    .line 284
    .line 285
    .line 286
    move-result v5

    .line 287
    int-to-long v5, v5

    .line 288
    sub-long/2addr v3, v5

    .line 289
    const-wide/16 v5, 0x1

    .line 290
    .line 291
    add-long/2addr v3, v5

    .line 292
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 293
    .line 294
    .line 295
    move-result-wide v1

    .line 296
    goto :goto_8

    .line 297
    :cond_9
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 298
    .line 299
    .line 300
    move-result-wide v1

    .line 301
    :goto_8
    return-wide v1

    .line 302
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 303
    .line 304
    const-string v2, "bytes is empty"

    .line 305
    .line 306
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    throw v1
.end method


# virtual methods
.method public final boundary()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/MultipartReader;->boundary:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/MultipartReader;->closed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lokhttp3/MultipartReader;->closed:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lokhttp3/MultipartReader;->currentPart:Lokhttp3/MultipartReader$PartSource;

    .line 11
    .line 12
    iget-object v0, p0, Lokhttp3/MultipartReader;->source:LQ6/l;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final nextPart()Lokhttp3/MultipartReader$Part;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lokhttp3/MultipartReader;->closed:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    iget-boolean v0, p0, Lokhttp3/MultipartReader;->noMoreParts:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v2

    .line 13
    :cond_0
    iget v0, p0, Lokhttp3/MultipartReader;->partCount:I

    .line 14
    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lokhttp3/MultipartReader;->source:LQ6/l;

    .line 20
    .line 21
    iget-object v5, p0, Lokhttp3/MultipartReader;->dashDashBoundary:LQ6/m;

    .line 22
    .line 23
    invoke-interface {v0, v3, v4, v5}, LQ6/l;->s(JLQ6/m;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lokhttp3/MultipartReader;->source:LQ6/l;

    .line 30
    .line 31
    iget-object v3, p0, Lokhttp3/MultipartReader;->dashDashBoundary:LQ6/m;

    .line 32
    .line 33
    invoke-virtual {v3}, LQ6/m;->c()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    int-to-long v3, v3

    .line 38
    invoke-interface {v0, v3, v4}, LQ6/l;->b(J)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    const-wide/16 v5, 0x2000

    .line 43
    .line 44
    invoke-direct {p0, v5, v6}, Lokhttp3/MultipartReader;->currentPartBytesRemaining(J)J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    cmp-long v0, v5, v3

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lokhttp3/MultipartReader;->source:LQ6/l;

    .line 53
    .line 54
    invoke-interface {v0, v5, v6}, LQ6/l;->b(J)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object v0, p0, Lokhttp3/MultipartReader;->source:LQ6/l;

    .line 59
    .line 60
    iget-object v3, p0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:LQ6/m;

    .line 61
    .line 62
    invoke-virtual {v3}, LQ6/m;->c()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    int-to-long v3, v3

    .line 67
    invoke-interface {v0, v3, v4}, LQ6/l;->b(J)V

    .line 68
    .line 69
    .line 70
    :goto_1
    const/4 v0, 0x0

    .line 71
    :goto_2
    iget-object v3, p0, Lokhttp3/MultipartReader;->source:LQ6/l;

    .line 72
    .line 73
    sget-object v4, Lokhttp3/MultipartReader;->afterBoundaryOptions:LQ6/u;

    .line 74
    .line 75
    invoke-interface {v3, v4}, LQ6/l;->Y(LQ6/u;)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    const/4 v4, -0x1

    .line 80
    const-string v5, "unexpected characters after boundary"

    .line 81
    .line 82
    if-eq v3, v4, :cond_8

    .line 83
    .line 84
    if-eqz v3, :cond_7

    .line 85
    .line 86
    if-eq v3, v1, :cond_4

    .line 87
    .line 88
    const/4 v4, 0x2

    .line 89
    if-eq v3, v4, :cond_3

    .line 90
    .line 91
    const/4 v4, 0x3

    .line 92
    if-eq v3, v4, :cond_3

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    const/4 v0, 0x1

    .line 96
    goto :goto_2

    .line 97
    :cond_4
    if-nez v0, :cond_6

    .line 98
    .line 99
    iget v0, p0, Lokhttp3/MultipartReader;->partCount:I

    .line 100
    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    iput-boolean v1, p0, Lokhttp3/MultipartReader;->noMoreParts:Z

    .line 104
    .line 105
    return-object v2

    .line 106
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    .line 107
    .line 108
    const-string v1, "expected at least 1 part"

    .line 109
    .line 110
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :cond_6
    new-instance v0, Ljava/net/ProtocolException;

    .line 115
    .line 116
    invoke-direct {v0, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v0

    .line 120
    :cond_7
    iget v0, p0, Lokhttp3/MultipartReader;->partCount:I

    .line 121
    .line 122
    add-int/2addr v0, v1

    .line 123
    iput v0, p0, Lokhttp3/MultipartReader;->partCount:I

    .line 124
    .line 125
    new-instance v0, Lokhttp3/internal/http1/HeadersReader;

    .line 126
    .line 127
    iget-object v1, p0, Lokhttp3/MultipartReader;->source:LQ6/l;

    .line 128
    .line 129
    invoke-direct {v0, v1}, Lokhttp3/internal/http1/HeadersReader;-><init>(LQ6/l;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Lokhttp3/internal/http1/HeadersReader;->readHeaders()Lokhttp3/Headers;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    new-instance v1, Lokhttp3/MultipartReader$PartSource;

    .line 137
    .line 138
    invoke-direct {v1, p0}, Lokhttp3/MultipartReader$PartSource;-><init>(Lokhttp3/MultipartReader;)V

    .line 139
    .line 140
    .line 141
    iput-object v1, p0, Lokhttp3/MultipartReader;->currentPart:Lokhttp3/MultipartReader$PartSource;

    .line 142
    .line 143
    new-instance v2, Lokhttp3/MultipartReader$Part;

    .line 144
    .line 145
    invoke-static {v1}, Lo3/r;->c(LQ6/D;)LQ6/x;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-direct {v2, v0, v1}, Lokhttp3/MultipartReader$Part;-><init>(Lokhttp3/Headers;LQ6/l;)V

    .line 150
    .line 151
    .line 152
    return-object v2

    .line 153
    :cond_8
    new-instance v0, Ljava/net/ProtocolException;

    .line 154
    .line 155
    invoke-direct {v0, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v0

    .line 159
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 160
    .line 161
    const-string v1, "closed"

    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v0
.end method
