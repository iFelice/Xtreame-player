.class public final LH3/n;
.super LH3/q;
.source "SourceFile"


# static fields
.field public static final u:Ljava/lang/String;


# instance fields
.field public e:J

.field public f:LC3/r;

.field public g:Ljava/lang/Long;

.field public h:LC2/g;

.field public i:I

.field public final j:LH3/p;

.field public final k:LH3/p;

.field public final l:LH3/p;

.field public final m:LH3/p;

.field public final n:LH3/p;

.field public final o:LH3/p;

.field public final p:LH3/p;

.field public final q:LH3/p;

.field public final r:LH3/p;

.field public final s:LH3/p;

.field public final t:LH3/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, LH3/a;->a:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    const-string v0, "urn:x-cast:com.google.cast.media"

    .line 4
    .line 5
    sput-object v0, LH3/n;->u:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, LH3/n;->u:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, LH3/q;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    iput v1, v0, LH3/n;->i:I

    .line 10
    .line 11
    new-instance v1, LH3/p;

    .line 12
    .line 13
    const-string v2, "load"

    .line 14
    .line 15
    const-wide/32 v3, 0x5265c00

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4, v2}, LH3/p;-><init>(JLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, v0, LH3/n;->j:LH3/p;

    .line 22
    .line 23
    new-instance v2, LH3/p;

    .line 24
    .line 25
    const-string v5, "pause"

    .line 26
    .line 27
    invoke-direct {v2, v3, v4, v5}, LH3/p;-><init>(JLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object v2, v0, LH3/n;->k:LH3/p;

    .line 31
    .line 32
    new-instance v5, LH3/p;

    .line 33
    .line 34
    const-string v6, "play"

    .line 35
    .line 36
    invoke-direct {v5, v3, v4, v6}, LH3/p;-><init>(JLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iput-object v5, v0, LH3/n;->l:LH3/p;

    .line 40
    .line 41
    new-instance v6, LH3/p;

    .line 42
    .line 43
    const-string v7, "stop"

    .line 44
    .line 45
    invoke-direct {v6, v3, v4, v7}, LH3/p;-><init>(JLjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v7, LH3/p;

    .line 49
    .line 50
    const-wide/16 v8, 0x2710

    .line 51
    .line 52
    const-string v10, "seek"

    .line 53
    .line 54
    invoke-direct {v7, v8, v9, v10}, LH3/p;-><init>(JLjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iput-object v7, v0, LH3/n;->m:LH3/p;

    .line 58
    .line 59
    new-instance v8, LH3/p;

    .line 60
    .line 61
    const-string v9, "volume"

    .line 62
    .line 63
    invoke-direct {v8, v3, v4, v9}, LH3/p;-><init>(JLjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iput-object v8, v0, LH3/n;->n:LH3/p;

    .line 67
    .line 68
    new-instance v9, LH3/p;

    .line 69
    .line 70
    const-string v10, "mute"

    .line 71
    .line 72
    invoke-direct {v9, v3, v4, v10}, LH3/p;-><init>(JLjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iput-object v9, v0, LH3/n;->o:LH3/p;

    .line 76
    .line 77
    new-instance v10, LH3/p;

    .line 78
    .line 79
    const-string v11, "status"

    .line 80
    .line 81
    invoke-direct {v10, v3, v4, v11}, LH3/p;-><init>(JLjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iput-object v10, v0, LH3/n;->p:LH3/p;

    .line 85
    .line 86
    new-instance v11, LH3/p;

    .line 87
    .line 88
    const-string v12, "activeTracks"

    .line 89
    .line 90
    invoke-direct {v11, v3, v4, v12}, LH3/p;-><init>(JLjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance v12, LH3/p;

    .line 94
    .line 95
    const-string v13, "trackStyle"

    .line 96
    .line 97
    invoke-direct {v12, v3, v4, v13}, LH3/p;-><init>(JLjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    new-instance v13, LH3/p;

    .line 101
    .line 102
    const-string v14, "queueInsert"

    .line 103
    .line 104
    invoke-direct {v13, v3, v4, v14}, LH3/p;-><init>(JLjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    new-instance v14, LH3/p;

    .line 108
    .line 109
    const-string v15, "queueUpdate"

    .line 110
    .line 111
    invoke-direct {v14, v3, v4, v15}, LH3/p;-><init>(JLjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iput-object v14, v0, LH3/n;->q:LH3/p;

    .line 115
    .line 116
    new-instance v15, LH3/p;

    .line 117
    .line 118
    move-object/from16 v16, v14

    .line 119
    .line 120
    const-string v14, "queueRemove"

    .line 121
    .line 122
    invoke-direct {v15, v3, v4, v14}, LH3/p;-><init>(JLjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    new-instance v14, LH3/p;

    .line 126
    .line 127
    move-object/from16 v17, v15

    .line 128
    .line 129
    const-string v15, "queueReorder"

    .line 130
    .line 131
    invoke-direct {v14, v3, v4, v15}, LH3/p;-><init>(JLjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    new-instance v15, LH3/p;

    .line 135
    .line 136
    move-object/from16 v18, v14

    .line 137
    .line 138
    const-string v14, "queueFetchItemIds"

    .line 139
    .line 140
    invoke-direct {v15, v3, v4, v14}, LH3/p;-><init>(JLjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iput-object v15, v0, LH3/n;->r:LH3/p;

    .line 144
    .line 145
    new-instance v14, LH3/p;

    .line 146
    .line 147
    move-object/from16 v19, v15

    .line 148
    .line 149
    const-string v15, "queueFetchItemRange"

    .line 150
    .line 151
    invoke-direct {v14, v3, v4, v15}, LH3/p;-><init>(JLjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iput-object v14, v0, LH3/n;->t:LH3/p;

    .line 155
    .line 156
    new-instance v15, LH3/p;

    .line 157
    .line 158
    move-object/from16 v20, v14

    .line 159
    .line 160
    const-string v14, "queueFetchItems"

    .line 161
    .line 162
    invoke-direct {v15, v3, v4, v14}, LH3/p;-><init>(JLjava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iput-object v15, v0, LH3/n;->s:LH3/p;

    .line 166
    .line 167
    new-instance v14, LH3/p;

    .line 168
    .line 169
    const-string v15, "setPlaybackRate"

    .line 170
    .line 171
    invoke-direct {v14, v3, v4, v15}, LH3/p;-><init>(JLjava/lang/String;)V

    .line 172
    .line 173
    .line 174
    new-instance v15, LH3/p;

    .line 175
    .line 176
    move-object/from16 v21, v14

    .line 177
    .line 178
    const-string v14, "skipAd"

    .line 179
    .line 180
    invoke-direct {v15, v3, v4, v14}, LH3/p;-><init>(JLjava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v1}, LH3/q;->a(LH3/p;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v2}, LH3/q;->a(LH3/p;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v5}, LH3/q;->a(LH3/p;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v6}, LH3/q;->a(LH3/p;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v7}, LH3/q;->a(LH3/p;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v8}, LH3/q;->a(LH3/p;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v9}, LH3/q;->a(LH3/p;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v10}, LH3/q;->a(LH3/p;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v11}, LH3/q;->a(LH3/p;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v12}, LH3/q;->a(LH3/p;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v13}, LH3/q;->a(LH3/p;)V

    .line 214
    .line 215
    .line 216
    move-object/from16 v1, v16

    .line 217
    .line 218
    invoke-virtual {v0, v1}, LH3/q;->a(LH3/p;)V

    .line 219
    .line 220
    .line 221
    move-object/from16 v1, v17

    .line 222
    .line 223
    invoke-virtual {v0, v1}, LH3/q;->a(LH3/p;)V

    .line 224
    .line 225
    .line 226
    move-object/from16 v1, v18

    .line 227
    .line 228
    invoke-virtual {v0, v1}, LH3/q;->a(LH3/p;)V

    .line 229
    .line 230
    .line 231
    move-object/from16 v1, v19

    .line 232
    .line 233
    invoke-virtual {v0, v1}, LH3/q;->a(LH3/p;)V

    .line 234
    .line 235
    .line 236
    move-object/from16 v1, v20

    .line 237
    .line 238
    invoke-virtual {v0, v1}, LH3/q;->a(LH3/p;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v1}, LH3/q;->a(LH3/p;)V

    .line 242
    .line 243
    .line 244
    move-object/from16 v1, v21

    .line 245
    .line 246
    invoke-virtual {v0, v1}, LH3/q;->a(LH3/p;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v15}, LH3/q;->a(LH3/p;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual/range {p0 .. p0}, LH3/n;->g()V

    .line 253
    .line 254
    .line 255
    return-void
.end method

.method public static f(Lorg/json/JSONObject;)LH3/m;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/cast/MediaError;->i(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaError;

    .line 2
    .line 3
    .line 4
    new-instance v0, LH3/m;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, LH3/a;->a:Ljava/util/regex/Pattern;

    .line 10
    .line 11
    const-string v1, "customData"

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    :cond_0
    return-object v0
.end method

.method public static m(Lorg/json/JSONArray;)[I
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-array v0, v0, [I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ge v1, v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    aput v2, v0, v1

    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final d(LH3/o;ILorg/json/JSONObject;)V
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, LH3/q;->b()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    :try_start_0
    const-string v3, "requestId"

    .line 11
    .line 12
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    const-string v3, "type"

    .line 16
    .line 17
    const-string v4, "QUEUE_UPDATE"

    .line 18
    .line 19
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    const-string v3, "mediaSessionId"

    .line 23
    .line 24
    invoke-virtual {p0}, LH3/n;->p()J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    const-string v3, "jump"

    .line 34
    .line 35
    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    :cond_0
    const/4 p2, 0x0

    .line 39
    invoke-static {p2}, LU4/a;->j(Ljava/lang/Integer;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    const-string v3, "repeatMode"

    .line 46
    .line 47
    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    :cond_1
    if-eqz p3, :cond_2

    .line 51
    .line 52
    const-string p2, "customData"

    .line 53
    .line 54
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    :cond_2
    iget p2, p0, LH3/n;->i:I

    .line 58
    .line 59
    const/4 p3, -0x1

    .line 60
    if-eq p2, p3, :cond_3

    .line 61
    .line 62
    const-string p3, "sequenceNumber"

    .line 63
    .line 64
    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    :catch_0
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p0, v1, v2, p2}, LH3/q;->c(JLjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance p2, LH3/k;

    .line 75
    .line 76
    const/4 p3, 0x1

    .line 77
    invoke-direct {p2, p0, p1, p3}, LH3/k;-><init>(LH3/n;LH3/o;I)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, LH3/n;->q:LH3/p;

    .line 81
    .line 82
    invoke-virtual {p1, v1, v2, p2}, LH3/p;->a(JLH3/o;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final e(DJJ)J
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, LH3/n;->e:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-gez v4, :cond_0

    .line 13
    .line 14
    move-wide v0, v2

    .line 15
    :cond_0
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-nez v4, :cond_1

    .line 18
    .line 19
    return-wide p3

    .line 20
    :cond_1
    long-to-double v0, v0

    .line 21
    mul-double v0, v0, p1

    .line 22
    .line 23
    double-to-long p1, v0

    .line 24
    add-long/2addr p3, p1

    .line 25
    cmp-long p1, p5, v2

    .line 26
    .line 27
    if-lez p1, :cond_2

    .line 28
    .line 29
    cmp-long p1, p3, p5

    .line 30
    .line 31
    if-lez p1, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    cmp-long p1, p3, v2

    .line 35
    .line 36
    if-ltz p1, :cond_3

    .line 37
    .line 38
    move-wide p5, p3

    .line 39
    :goto_0
    return-wide p5

    .line 40
    :cond_3
    return-wide v2
.end method

.method public final g()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, LH3/n;->e:J

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, LH3/n;->f:LC3/r;

    .line 7
    .line 8
    iget-object v0, p0, LH3/q;->d:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, LH3/p;

    .line 25
    .line 26
    const/16 v2, 0x7d2

    .line 27
    .line 28
    invoke-virtual {v1, v2}, LH3/p;->f(I)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public final h(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "sequenceNumber"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 p2, -0x1

    .line 10
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, LH3/n;->i:I

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string p1, " message is missing a sequence number."

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x0

    .line 24
    new-array p2, p2, [Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v0, p0, LH3/q;->a:LH3/b;

    .line 27
    .line 28
    iget-object v1, v0, LH3/b;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, p1, p2}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, LH3/n;->h:LC2/g;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, v0, LC2/g;->H:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, LE3/j;

    .line 8
    .line 9
    sget-object v2, LE3/j;->k:LH3/b;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, LC2/g;->H:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, LE3/j;

    .line 17
    .line 18
    iget-object v1, v1, LE3/j;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    iget-object v0, v0, LC2/g;->H:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, LE3/j;

    .line 33
    .line 34
    iget-object v0, v0, LE3/j;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, LE3/h;

    .line 51
    .line 52
    check-cast v1, LF3/k;

    .line 53
    .line 54
    iget v2, v1, LF3/k;->a:I

    .line 55
    .line 56
    packed-switch v2, :pswitch_data_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_0
    iget-object v1, v1, LF3/k;->b:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, LF3/l;

    .line 63
    .line 64
    invoke-virtual {v1}, LF3/l;->b()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    return-void

    .line 69
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    throw v0

    .line 78
    :cond_2
    return-void

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, LH3/n;->h:LC2/g;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, v0, LC2/g;->H:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, LE3/j;

    .line 8
    .line 9
    iget-object v1, v1, LE3/j;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    iget-object v0, v0, LC2/g;->H:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, LE3/j;

    .line 24
    .line 25
    iget-object v0, v0, LE3/j;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, LE3/h;

    .line 42
    .line 43
    check-cast v1, LF3/k;

    .line 44
    .line 45
    iget v2, v1, LF3/k;->a:I

    .line 46
    .line 47
    packed-switch v2, :pswitch_data_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_0
    iget-object v1, v1, LF3/k;->b:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, LF3/l;

    .line 54
    .line 55
    invoke-virtual {v1}, LF3/l;->b()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    return-void

    .line 60
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    throw v0

    .line 69
    :cond_2
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-object v0, p0, LH3/n;->h:LC2/g;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, v0, LC2/g;->H:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, LE3/j;

    .line 8
    .line 9
    iget-object v1, v1, LE3/j;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    iget-object v0, v0, LC2/g;->H:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, LE3/j;

    .line 24
    .line 25
    iget-object v0, v0, LE3/j;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, LE3/h;

    .line 42
    .line 43
    check-cast v1, LF3/k;

    .line 44
    .line 45
    iget v2, v1, LF3/k;->a:I

    .line 46
    .line 47
    packed-switch v2, :pswitch_data_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_0
    iget-object v1, v1, LF3/k;->b:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, LF3/l;

    .line 54
    .line 55
    invoke-virtual {v1}, LF3/l;->b()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    return-void

    .line 60
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    throw v0

    .line 69
    :cond_2
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final l()V
    .locals 7

    .line 1
    iget-object v0, p0, LH3/n;->h:LC2/g;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v1, v0, LC2/g;->H:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, LE3/j;

    .line 8
    .line 9
    sget-object v2, LE3/j;->k:LH3/b;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, LC2/g;->H:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, LE3/j;

    .line 17
    .line 18
    iget-object v2, v1, LE3/j;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, LE3/j;->g()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {v1}, LE3/j;->g()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    throw v4

    .line 55
    :cond_0
    throw v4

    .line 56
    :cond_1
    throw v4

    .line 57
    :cond_2
    iget-object v1, v0, LC2/g;->H:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, LE3/j;

    .line 60
    .line 61
    iget-object v1, v1, LE3/j;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_5

    .line 72
    .line 73
    iget-object v0, v0, LC2/g;->H:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v0, LE3/j;

    .line 76
    .line 77
    iget-object v0, v0, LE3/j;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, LE3/h;

    .line 94
    .line 95
    check-cast v1, LF3/k;

    .line 96
    .line 97
    iget v2, v1, LF3/k;->a:I

    .line 98
    .line 99
    iget-object v1, v1, LF3/k;->b:Ljava/lang/Object;

    .line 100
    .line 101
    packed-switch v2, :pswitch_data_0

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :pswitch_0
    check-cast v1, LE3/d;

    .line 106
    .line 107
    invoke-virtual {v1}, LE3/d;->e()J

    .line 108
    .line 109
    .line 110
    move-result-wide v2

    .line 111
    iget-wide v4, v1, LE3/d;->b:J

    .line 112
    .line 113
    cmp-long v6, v2, v4

    .line 114
    .line 115
    if-eqz v6, :cond_3

    .line 116
    .line 117
    iput-wide v2, v1, LE3/d;->b:J

    .line 118
    .line 119
    invoke-virtual {v1}, LE3/d;->c()V

    .line 120
    .line 121
    .line 122
    iget-wide v2, v1, LE3/d;->b:J

    .line 123
    .line 124
    const-wide/16 v4, 0x0

    .line 125
    .line 126
    cmp-long v6, v2, v4

    .line 127
    .line 128
    if-eqz v6, :cond_3

    .line 129
    .line 130
    invoke-virtual {v1}, LE3/d;->d()V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :pswitch_1
    check-cast v1, LF3/l;

    .line 135
    .line 136
    invoke-virtual {v1}, LF3/l;->b()V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_4
    return-void

    .line 141
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    throw v4

    .line 149
    :cond_6
    return-void

    .line 150
    nop

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n()V
    .locals 4

    .line 1
    iget-object v0, p0, LH3/q;->d:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LH3/q;->d:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, LH3/p;

    .line 21
    .line 22
    const/16 v3, 0x7d2

    .line 23
    .line 24
    invoke-virtual {v2, v3}, LH3/p;->f(I)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {p0}, LH3/n;->g()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw v1
.end method

.method public final o()J
    .locals 12

    .line 1
    iget-object v0, p0, LH3/n;->f:LC3/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, v0, LC3/r;->G:Lcom/google/android/gms/cast/MediaInfo;

    .line 9
    .line 10
    :goto_0
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    if-eqz v2, :cond_f

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto/16 :goto_6

    .line 17
    .line 18
    :cond_1
    iget-object v5, p0, LH3/n;->g:Ljava/lang/Long;

    .line 19
    .line 20
    if-eqz v5, :cond_b

    .line 21
    .line 22
    const-wide v6, 0x3e800000000L

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v5, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_a

    .line 36
    .line 37
    iget-object v0, p0, LH3/n;->f:LC3/r;

    .line 38
    .line 39
    iget-object v2, v0, LC3/r;->a0:LC3/j;

    .line 40
    .line 41
    if-eqz v2, :cond_5

    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    iget-object v2, p0, LH3/n;->f:LC3/r;

    .line 48
    .line 49
    if-nez v2, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object v2, v2, LC3/r;->a0:LC3/j;

    .line 53
    .line 54
    if-nez v2, :cond_3

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    iget-boolean v3, v2, LC3/j;->J:Z

    .line 58
    .line 59
    iget-wide v7, v2, LC3/j;->H:J

    .line 60
    .line 61
    if-nez v3, :cond_4

    .line 62
    .line 63
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 64
    .line 65
    const-wide/16 v9, -0x1

    .line 66
    .line 67
    move-object v4, p0

    .line 68
    invoke-virtual/range {v4 .. v10}, LH3/n;->e(DJJ)J

    .line 69
    .line 70
    .line 71
    move-result-wide v3

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    move-wide v3, v7

    .line 74
    :goto_1
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    return-wide v0

    .line 79
    :cond_5
    if-nez v0, :cond_6

    .line 80
    .line 81
    move-object v0, v1

    .line 82
    goto :goto_2

    .line 83
    :cond_6
    iget-object v0, v0, LC3/r;->G:Lcom/google/android/gms/cast/MediaInfo;

    .line 84
    .line 85
    :goto_2
    if-eqz v0, :cond_7

    .line 86
    .line 87
    iget-wide v6, v0, Lcom/google/android/gms/cast/MediaInfo;->K:J

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_7
    move-wide v6, v3

    .line 91
    :goto_3
    cmp-long v0, v6, v3

    .line 92
    .line 93
    if-ltz v0, :cond_a

    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 96
    .line 97
    .line 98
    move-result-wide v5

    .line 99
    iget-object v0, p0, LH3/n;->f:LC3/r;

    .line 100
    .line 101
    if-nez v0, :cond_8

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_8
    iget-object v1, v0, LC3/r;->G:Lcom/google/android/gms/cast/MediaInfo;

    .line 105
    .line 106
    :goto_4
    if-eqz v1, :cond_9

    .line 107
    .line 108
    iget-wide v3, v1, Lcom/google/android/gms/cast/MediaInfo;->K:J

    .line 109
    .line 110
    :cond_9
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 111
    .line 112
    .line 113
    move-result-wide v0

    .line 114
    return-wide v0

    .line 115
    :cond_a
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 116
    .line 117
    .line 118
    move-result-wide v0

    .line 119
    return-wide v0

    .line 120
    :cond_b
    iget-wide v5, p0, LH3/n;->e:J

    .line 121
    .line 122
    cmp-long v1, v5, v3

    .line 123
    .line 124
    if-nez v1, :cond_c

    .line 125
    .line 126
    return-wide v3

    .line 127
    :cond_c
    iget-wide v6, v0, LC3/r;->J:D

    .line 128
    .line 129
    iget-wide v8, v0, LC3/r;->M:J

    .line 130
    .line 131
    iget v0, v0, LC3/r;->K:I

    .line 132
    .line 133
    const-wide/16 v3, 0x0

    .line 134
    .line 135
    cmpl-double v1, v6, v3

    .line 136
    .line 137
    if-eqz v1, :cond_e

    .line 138
    .line 139
    const/4 v1, 0x2

    .line 140
    if-eq v0, v1, :cond_d

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_d
    iget-wide v10, v2, Lcom/google/android/gms/cast/MediaInfo;->K:J

    .line 144
    .line 145
    move-object v5, p0

    .line 146
    invoke-virtual/range {v5 .. v11}, LH3/n;->e(DJJ)J

    .line 147
    .line 148
    .line 149
    move-result-wide v0

    .line 150
    return-wide v0

    .line 151
    :cond_e
    :goto_5
    return-wide v8

    .line 152
    :cond_f
    :goto_6
    return-wide v3
.end method

.method public final p()J
    .locals 2

    .line 1
    iget-object v0, p0, LH3/n;->f:LC3/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, v0, LC3/r;->H:J

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    new-instance v0, LH3/l;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 11
    .line 12
    .line 13
    throw v0
.end method
