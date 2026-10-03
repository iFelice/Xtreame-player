.class public final enum Lc6/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum H:Lc6/a;

.field public static final enum I:Lc6/a;

.field public static final enum J:Lc6/a;

.field public static final enum K:Lc6/a;

.field public static final enum L:Lc6/a;

.field public static final enum M:Lc6/a;

.field public static final enum N:Lc6/a;

.field public static final enum O:Lc6/a;

.field public static final enum P:Lc6/a;

.field public static final enum Q:Lc6/a;

.field public static final enum R:Lc6/a;

.field public static final enum S:Lc6/a;

.field public static final synthetic T:[Lc6/a;


# instance fields
.field public final G:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Lc6/a;

    .line 2
    .line 3
    const-string v1, "NO_ERROR"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lc6/a;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lc6/a;->H:Lc6/a;

    .line 10
    .line 11
    new-instance v1, Lc6/a;

    .line 12
    .line 13
    const-string v3, "PROTOCOL_ERROR"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lc6/a;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lc6/a;->I:Lc6/a;

    .line 20
    .line 21
    new-instance v3, Lc6/a;

    .line 22
    .line 23
    const-string v5, "INVALID_STREAM"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v4}, Lc6/a;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    new-instance v5, Lc6/a;

    .line 30
    .line 31
    const-string v7, "UNSUPPORTED_VERSION"

    .line 32
    .line 33
    const/4 v8, 0x3

    .line 34
    invoke-direct {v5, v7, v8, v4}, Lc6/a;-><init>(Ljava/lang/String;II)V

    .line 35
    .line 36
    .line 37
    new-instance v7, Lc6/a;

    .line 38
    .line 39
    const-string v9, "STREAM_IN_USE"

    .line 40
    .line 41
    const/4 v10, 0x4

    .line 42
    invoke-direct {v7, v9, v10, v4}, Lc6/a;-><init>(Ljava/lang/String;II)V

    .line 43
    .line 44
    .line 45
    new-instance v9, Lc6/a;

    .line 46
    .line 47
    const-string v11, "STREAM_ALREADY_CLOSED"

    .line 48
    .line 49
    const/4 v12, 0x5

    .line 50
    invoke-direct {v9, v11, v12, v4}, Lc6/a;-><init>(Ljava/lang/String;II)V

    .line 51
    .line 52
    .line 53
    new-instance v11, Lc6/a;

    .line 54
    .line 55
    const-string v13, "INTERNAL_ERROR"

    .line 56
    .line 57
    const/4 v14, 0x6

    .line 58
    invoke-direct {v11, v13, v14, v6}, Lc6/a;-><init>(Ljava/lang/String;II)V

    .line 59
    .line 60
    .line 61
    sput-object v11, Lc6/a;->J:Lc6/a;

    .line 62
    .line 63
    new-instance v13, Lc6/a;

    .line 64
    .line 65
    const-string v15, "FLOW_CONTROL_ERROR"

    .line 66
    .line 67
    const/4 v10, 0x7

    .line 68
    invoke-direct {v13, v15, v10, v8}, Lc6/a;-><init>(Ljava/lang/String;II)V

    .line 69
    .line 70
    .line 71
    sput-object v13, Lc6/a;->K:Lc6/a;

    .line 72
    .line 73
    new-instance v15, Lc6/a;

    .line 74
    .line 75
    const-string v8, "STREAM_CLOSED"

    .line 76
    .line 77
    const/16 v6, 0x8

    .line 78
    .line 79
    invoke-direct {v15, v8, v6, v12}, Lc6/a;-><init>(Ljava/lang/String;II)V

    .line 80
    .line 81
    .line 82
    sput-object v15, Lc6/a;->L:Lc6/a;

    .line 83
    .line 84
    new-instance v8, Lc6/a;

    .line 85
    .line 86
    const-string v12, "FRAME_TOO_LARGE"

    .line 87
    .line 88
    const/16 v4, 0x9

    .line 89
    .line 90
    invoke-direct {v8, v12, v4, v14}, Lc6/a;-><init>(Ljava/lang/String;II)V

    .line 91
    .line 92
    .line 93
    sput-object v8, Lc6/a;->M:Lc6/a;

    .line 94
    .line 95
    new-instance v12, Lc6/a;

    .line 96
    .line 97
    const-string v14, "REFUSED_STREAM"

    .line 98
    .line 99
    const/16 v2, 0xa

    .line 100
    .line 101
    invoke-direct {v12, v14, v2, v10}, Lc6/a;-><init>(Ljava/lang/String;II)V

    .line 102
    .line 103
    .line 104
    sput-object v12, Lc6/a;->N:Lc6/a;

    .line 105
    .line 106
    new-instance v14, Lc6/a;

    .line 107
    .line 108
    const-string v10, "CANCEL"

    .line 109
    .line 110
    const/16 v2, 0xb

    .line 111
    .line 112
    invoke-direct {v14, v10, v2, v6}, Lc6/a;-><init>(Ljava/lang/String;II)V

    .line 113
    .line 114
    .line 115
    sput-object v14, Lc6/a;->O:Lc6/a;

    .line 116
    .line 117
    new-instance v10, Lc6/a;

    .line 118
    .line 119
    const-string v6, "COMPRESSION_ERROR"

    .line 120
    .line 121
    const/16 v2, 0xc

    .line 122
    .line 123
    invoke-direct {v10, v6, v2, v4}, Lc6/a;-><init>(Ljava/lang/String;II)V

    .line 124
    .line 125
    .line 126
    sput-object v10, Lc6/a;->P:Lc6/a;

    .line 127
    .line 128
    new-instance v6, Lc6/a;

    .line 129
    .line 130
    const-string v4, "CONNECT_ERROR"

    .line 131
    .line 132
    const/16 v2, 0xd

    .line 133
    .line 134
    move-object/from16 v16, v10

    .line 135
    .line 136
    const/16 v10, 0xa

    .line 137
    .line 138
    invoke-direct {v6, v4, v2, v10}, Lc6/a;-><init>(Ljava/lang/String;II)V

    .line 139
    .line 140
    .line 141
    sput-object v6, Lc6/a;->Q:Lc6/a;

    .line 142
    .line 143
    new-instance v4, Lc6/a;

    .line 144
    .line 145
    const-string v10, "ENHANCE_YOUR_CALM"

    .line 146
    .line 147
    const/16 v2, 0xe

    .line 148
    .line 149
    move-object/from16 v17, v6

    .line 150
    .line 151
    const/16 v6, 0xb

    .line 152
    .line 153
    invoke-direct {v4, v10, v2, v6}, Lc6/a;-><init>(Ljava/lang/String;II)V

    .line 154
    .line 155
    .line 156
    sput-object v4, Lc6/a;->R:Lc6/a;

    .line 157
    .line 158
    new-instance v6, Lc6/a;

    .line 159
    .line 160
    const-string v10, "INADEQUATE_SECURITY"

    .line 161
    .line 162
    const/16 v2, 0xf

    .line 163
    .line 164
    move-object/from16 v18, v4

    .line 165
    .line 166
    const/16 v4, 0xc

    .line 167
    .line 168
    invoke-direct {v6, v10, v2, v4}, Lc6/a;-><init>(Ljava/lang/String;II)V

    .line 169
    .line 170
    .line 171
    sput-object v6, Lc6/a;->S:Lc6/a;

    .line 172
    .line 173
    new-instance v4, Lc6/a;

    .line 174
    .line 175
    const-string v10, "HTTP_1_1_REQUIRED"

    .line 176
    .line 177
    const/16 v2, 0x10

    .line 178
    .line 179
    move-object/from16 v19, v6

    .line 180
    .line 181
    const/16 v6, 0xd

    .line 182
    .line 183
    invoke-direct {v4, v10, v2, v6}, Lc6/a;-><init>(Ljava/lang/String;II)V

    .line 184
    .line 185
    .line 186
    new-instance v6, Lc6/a;

    .line 187
    .line 188
    const/16 v10, 0x11

    .line 189
    .line 190
    const/4 v2, -0x1

    .line 191
    move-object/from16 v20, v4

    .line 192
    .line 193
    const-string v4, "INVALID_CREDENTIALS"

    .line 194
    .line 195
    invoke-direct {v6, v4, v10, v2}, Lc6/a;-><init>(Ljava/lang/String;II)V

    .line 196
    .line 197
    .line 198
    const/16 v2, 0x12

    .line 199
    .line 200
    new-array v2, v2, [Lc6/a;

    .line 201
    .line 202
    const/4 v4, 0x0

    .line 203
    aput-object v0, v2, v4

    .line 204
    .line 205
    const/4 v0, 0x1

    .line 206
    aput-object v1, v2, v0

    .line 207
    .line 208
    const/4 v0, 0x2

    .line 209
    aput-object v3, v2, v0

    .line 210
    .line 211
    const/4 v0, 0x3

    .line 212
    aput-object v5, v2, v0

    .line 213
    .line 214
    const/4 v0, 0x4

    .line 215
    aput-object v7, v2, v0

    .line 216
    .line 217
    const/4 v0, 0x5

    .line 218
    aput-object v9, v2, v0

    .line 219
    .line 220
    const/4 v0, 0x6

    .line 221
    aput-object v11, v2, v0

    .line 222
    .line 223
    const/4 v0, 0x7

    .line 224
    aput-object v13, v2, v0

    .line 225
    .line 226
    const/16 v0, 0x8

    .line 227
    .line 228
    aput-object v15, v2, v0

    .line 229
    .line 230
    const/16 v0, 0x9

    .line 231
    .line 232
    aput-object v8, v2, v0

    .line 233
    .line 234
    const/16 v0, 0xa

    .line 235
    .line 236
    aput-object v12, v2, v0

    .line 237
    .line 238
    const/16 v0, 0xb

    .line 239
    .line 240
    aput-object v14, v2, v0

    .line 241
    .line 242
    const/16 v0, 0xc

    .line 243
    .line 244
    aput-object v16, v2, v0

    .line 245
    .line 246
    const/16 v0, 0xd

    .line 247
    .line 248
    aput-object v17, v2, v0

    .line 249
    .line 250
    const/16 v0, 0xe

    .line 251
    .line 252
    aput-object v18, v2, v0

    .line 253
    .line 254
    const/16 v0, 0xf

    .line 255
    .line 256
    aput-object v19, v2, v0

    .line 257
    .line 258
    const/16 v0, 0x10

    .line 259
    .line 260
    aput-object v20, v2, v0

    .line 261
    .line 262
    aput-object v6, v2, v10

    .line 263
    .line 264
    sput-object v2, Lc6/a;->T:[Lc6/a;

    .line 265
    .line 266
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lc6/a;->G:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc6/a;
    .locals 1

    .line 1
    const-class v0, Lc6/a;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lc6/a;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lc6/a;
    .locals 1

    .line 1
    sget-object v0, Lc6/a;->T:[Lc6/a;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lc6/a;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lc6/a;

    .line 8
    .line 9
    return-object v0
.end method
