.class public final Lokhttp3/internal/ws/WebSocketExtensions$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/WebSocketExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LD6/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketExtensions$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lokhttp3/Headers;)Lokhttp3/internal/ws/WebSocketExtensions;
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "responseHeaders"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Headers;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v10, 0x0

    .line 18
    const/4 v11, 0x0

    .line 19
    :goto_0
    if-ge v4, v1, :cond_14

    .line 20
    .line 21
    invoke-virtual {v0, v4}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    const-string v12, "Sec-WebSocket-Extensions"

    .line 26
    .line 27
    invoke-static {v5, v12}, LI6/k;->F0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-nez v5, :cond_0

    .line 32
    .line 33
    goto/16 :goto_8

    .line 34
    .line 35
    :cond_0
    invoke-virtual {v0, v4}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const/4 v15, 0x0

    .line 40
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v12

    .line 44
    if-ge v15, v12, :cond_13

    .line 45
    .line 46
    const/16 v13, 0x2c

    .line 47
    .line 48
    const/16 v16, 0x0

    .line 49
    .line 50
    const/16 v17, 0x4

    .line 51
    .line 52
    const/16 v18, 0x0

    .line 53
    .line 54
    move-object v12, v5

    .line 55
    move v14, v15

    .line 56
    move v2, v15

    .line 57
    move/from16 v15, v16

    .line 58
    .line 59
    move/from16 v16, v17

    .line 60
    .line 61
    move-object/from16 v17, v18

    .line 62
    .line 63
    invoke-static/range {v12 .. v17}, Lokhttp3/internal/Util;->delimiterOffset$default(Ljava/lang/String;CIIILjava/lang/Object;)I

    .line 64
    .line 65
    .line 66
    move-result v12

    .line 67
    const/16 v13, 0x3b

    .line 68
    .line 69
    invoke-static {v5, v13, v2, v12}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    .line 70
    .line 71
    .line 72
    move-result v14

    .line 73
    invoke-static {v5, v2, v14}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const/4 v15, 0x1

    .line 78
    add-int/2addr v14, v15

    .line 79
    const-string v3, "permessage-deflate"

    .line 80
    .line 81
    invoke-static {v2, v3}, LI6/k;->F0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_12

    .line 86
    .line 87
    if-eqz v6, :cond_1

    .line 88
    .line 89
    const/4 v11, 0x1

    .line 90
    :cond_1
    :goto_2
    if-ge v14, v12, :cond_11

    .line 91
    .line 92
    invoke-static {v5, v13, v14, v12}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    const/16 v3, 0x3d

    .line 97
    .line 98
    invoke-static {v5, v3, v14, v2}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    invoke-static {v5, v14, v3}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    if-ge v3, v2, :cond_2

    .line 107
    .line 108
    add-int/lit8 v3, v3, 0x1

    .line 109
    .line 110
    invoke-static {v5, v3, v2}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    const-string v14, "<this>"

    .line 115
    .line 116
    invoke-static {v3, v14}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 120
    .line 121
    .line 122
    move-result v14

    .line 123
    const-string v13, "\""

    .line 124
    .line 125
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 126
    .line 127
    .line 128
    move-result v18

    .line 129
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v19

    .line 133
    add-int v15, v19, v18

    .line 134
    .line 135
    if-lt v14, v15, :cond_3

    .line 136
    .line 137
    invoke-static {v3, v13}, LI6/k;->V0(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v14

    .line 141
    if-eqz v14, :cond_3

    .line 142
    .line 143
    invoke-static {v3, v13}, LI6/k;->E0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v14

    .line 147
    if-eqz v14, :cond_3

    .line 148
    .line 149
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 150
    .line 151
    .line 152
    move-result v14

    .line 153
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 154
    .line 155
    .line 156
    move-result v15

    .line 157
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 158
    .line 159
    .line 160
    move-result v13

    .line 161
    sub-int/2addr v15, v13

    .line 162
    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    const-string v13, "substring(...)"

    .line 167
    .line 168
    invoke-static {v3, v13}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_2
    const/4 v3, 0x0

    .line 173
    :cond_3
    :goto_3
    add-int/lit8 v14, v2, 0x1

    .line 174
    .line 175
    const-string v2, "client_max_window_bits"

    .line 176
    .line 177
    invoke-static {v6, v2}, LI6/k;->F0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eqz v2, :cond_8

    .line 182
    .line 183
    if-eqz v7, :cond_4

    .line 184
    .line 185
    const/4 v11, 0x1

    .line 186
    :cond_4
    if-eqz v3, :cond_5

    .line 187
    .line 188
    invoke-static {v3}, LI6/i;->B0(Ljava/lang/String;)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    move-object v7, v2

    .line 193
    goto :goto_4

    .line 194
    :cond_5
    const/4 v7, 0x0

    .line 195
    :goto_4
    if-nez v7, :cond_7

    .line 196
    .line 197
    :cond_6
    :goto_5
    const/4 v11, 0x1

    .line 198
    :cond_7
    :goto_6
    const/16 v13, 0x3b

    .line 199
    .line 200
    const/4 v15, 0x1

    .line 201
    goto :goto_2

    .line 202
    :cond_8
    const-string v2, "client_no_context_takeover"

    .line 203
    .line 204
    invoke-static {v6, v2}, LI6/k;->F0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_b

    .line 209
    .line 210
    if-eqz v8, :cond_9

    .line 211
    .line 212
    const/4 v11, 0x1

    .line 213
    :cond_9
    if-eqz v3, :cond_a

    .line 214
    .line 215
    const/4 v11, 0x1

    .line 216
    :cond_a
    const/4 v8, 0x1

    .line 217
    goto :goto_6

    .line 218
    :cond_b
    const-string v2, "server_max_window_bits"

    .line 219
    .line 220
    invoke-static {v6, v2}, LI6/k;->F0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-eqz v2, :cond_e

    .line 225
    .line 226
    if-eqz v9, :cond_c

    .line 227
    .line 228
    const/4 v11, 0x1

    .line 229
    :cond_c
    if-eqz v3, :cond_d

    .line 230
    .line 231
    invoke-static {v3}, LI6/i;->B0(Ljava/lang/String;)Ljava/lang/Integer;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    move-object v9, v2

    .line 236
    goto :goto_7

    .line 237
    :cond_d
    const/4 v9, 0x0

    .line 238
    :goto_7
    if-nez v9, :cond_7

    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_e
    const-string v2, "server_no_context_takeover"

    .line 242
    .line 243
    invoke-static {v6, v2}, LI6/k;->F0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-eqz v2, :cond_6

    .line 248
    .line 249
    if-eqz v10, :cond_f

    .line 250
    .line 251
    const/4 v11, 0x1

    .line 252
    :cond_f
    if-eqz v3, :cond_10

    .line 253
    .line 254
    const/4 v11, 0x1

    .line 255
    :cond_10
    const/4 v10, 0x1

    .line 256
    goto :goto_6

    .line 257
    :cond_11
    move v15, v14

    .line 258
    const/4 v6, 0x1

    .line 259
    goto/16 :goto_1

    .line 260
    .line 261
    :cond_12
    move v15, v14

    .line 262
    const/4 v11, 0x1

    .line 263
    goto/16 :goto_1

    .line 264
    .line 265
    :cond_13
    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :cond_14
    new-instance v0, Lokhttp3/internal/ws/WebSocketExtensions;

    .line 270
    .line 271
    move-object v5, v0

    .line 272
    invoke-direct/range {v5 .. v11}, Lokhttp3/internal/ws/WebSocketExtensions;-><init>(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)V

    .line 273
    .line 274
    .line 275
    return-object v0
.end method
