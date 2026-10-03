.class public final enum Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/api/AdEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD_BREAK_ENDED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum AD_BREAK_FETCH_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum AD_BREAK_READY:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum AD_BREAK_STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum AD_BUFFERING:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum AD_PERIOD_ENDED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum AD_PERIOD_STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum AD_PROGRESS:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum CLICKED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum CONTENT_PAUSE_REQUESTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum CONTENT_RESUME_REQUESTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum CUEPOINTS_CHANGED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum FIRST_QUARTILE:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum ICON_FALLBACK_IMAGE_CLOSED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum ICON_TAPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum LOADED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum LOG:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum MIDPOINT:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum PAUSED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum RESUMED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum SKIPPABLE_STATE_CHANGED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum SKIPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum TAPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field public static final enum THIRD_QUARTILE:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field private static final synthetic zza:[Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 2
    .line 3
    const-string v1, "ALL_ADS_COMPLETED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 10
    .line 11
    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 12
    .line 13
    const-string v3, "AD_BREAK_FETCH_ERROR"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_FETCH_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 20
    .line 21
    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 22
    .line 23
    const-string v5, "CLICKED"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CLICKED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 30
    .line 31
    new-instance v5, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 32
    .line 33
    const-string v7, "COMPLETED"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 40
    .line 41
    new-instance v7, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 42
    .line 43
    const-string v9, "CUEPOINTS_CHANGED"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CUEPOINTS_CHANGED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 50
    .line 51
    new-instance v9, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 52
    .line 53
    const-string v11, "CONTENT_PAUSE_REQUESTED"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CONTENT_PAUSE_REQUESTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 60
    .line 61
    new-instance v11, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 62
    .line 63
    const-string v13, "CONTENT_RESUME_REQUESTED"

    .line 64
    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v11, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CONTENT_RESUME_REQUESTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 70
    .line 71
    new-instance v13, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 72
    .line 73
    const-string v15, "FIRST_QUARTILE"

    .line 74
    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v13, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->FIRST_QUARTILE:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 80
    .line 81
    new-instance v15, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 82
    .line 83
    const-string v14, "LOG"

    .line 84
    .line 85
    const/16 v12, 0x8

    .line 86
    .line 87
    invoke-direct {v15, v14, v12}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v15, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->LOG:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 91
    .line 92
    new-instance v14, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 93
    .line 94
    const-string v12, "AD_BREAK_READY"

    .line 95
    .line 96
    const/16 v10, 0x9

    .line 97
    .line 98
    invoke-direct {v14, v12, v10}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v14, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_READY:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 102
    .line 103
    new-instance v12, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 104
    .line 105
    const-string v10, "MIDPOINT"

    .line 106
    .line 107
    const/16 v8, 0xa

    .line 108
    .line 109
    invoke-direct {v12, v10, v8}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    sput-object v12, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->MIDPOINT:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 113
    .line 114
    new-instance v10, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 115
    .line 116
    const-string v8, "PAUSED"

    .line 117
    .line 118
    const/16 v6, 0xb

    .line 119
    .line 120
    invoke-direct {v10, v8, v6}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    sput-object v10, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->PAUSED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 124
    .line 125
    new-instance v8, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 126
    .line 127
    const-string v6, "RESUMED"

    .line 128
    .line 129
    const/16 v4, 0xc

    .line 130
    .line 131
    invoke-direct {v8, v6, v4}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    sput-object v8, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->RESUMED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 135
    .line 136
    new-instance v6, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 137
    .line 138
    const-string v4, "SKIPPABLE_STATE_CHANGED"

    .line 139
    .line 140
    const/16 v2, 0xd

    .line 141
    .line 142
    invoke-direct {v6, v4, v2}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    sput-object v6, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->SKIPPABLE_STATE_CHANGED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 146
    .line 147
    new-instance v4, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 148
    .line 149
    const-string v2, "SKIPPED"

    .line 150
    .line 151
    move-object/from16 v16, v6

    .line 152
    .line 153
    const/16 v6, 0xe

    .line 154
    .line 155
    invoke-direct {v4, v2, v6}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    sput-object v4, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->SKIPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 159
    .line 160
    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 161
    .line 162
    const-string v6, "STARTED"

    .line 163
    .line 164
    move-object/from16 v17, v4

    .line 165
    .line 166
    const/16 v4, 0xf

    .line 167
    .line 168
    invoke-direct {v2, v6, v4}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    .line 169
    .line 170
    .line 171
    sput-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 172
    .line 173
    new-instance v6, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 174
    .line 175
    const-string v4, "TAPPED"

    .line 176
    .line 177
    move-object/from16 v18, v2

    .line 178
    .line 179
    const/16 v2, 0x10

    .line 180
    .line 181
    invoke-direct {v6, v4, v2}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    .line 182
    .line 183
    .line 184
    sput-object v6, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->TAPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 185
    .line 186
    new-instance v4, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 187
    .line 188
    const-string v2, "ICON_TAPPED"

    .line 189
    .line 190
    move-object/from16 v19, v6

    .line 191
    .line 192
    const/16 v6, 0x11

    .line 193
    .line 194
    invoke-direct {v4, v2, v6}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    .line 195
    .line 196
    .line 197
    sput-object v4, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ICON_TAPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 198
    .line 199
    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 200
    .line 201
    const-string v6, "ICON_FALLBACK_IMAGE_CLOSED"

    .line 202
    .line 203
    move-object/from16 v20, v4

    .line 204
    .line 205
    const/16 v4, 0x12

    .line 206
    .line 207
    invoke-direct {v2, v6, v4}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    .line 208
    .line 209
    .line 210
    sput-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ICON_FALLBACK_IMAGE_CLOSED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 211
    .line 212
    new-instance v6, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 213
    .line 214
    const-string v4, "THIRD_QUARTILE"

    .line 215
    .line 216
    move-object/from16 v21, v2

    .line 217
    .line 218
    const/16 v2, 0x13

    .line 219
    .line 220
    invoke-direct {v6, v4, v2}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    .line 221
    .line 222
    .line 223
    sput-object v6, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->THIRD_QUARTILE:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 224
    .line 225
    new-instance v4, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 226
    .line 227
    const-string v2, "LOADED"

    .line 228
    .line 229
    move-object/from16 v22, v6

    .line 230
    .line 231
    const/16 v6, 0x14

    .line 232
    .line 233
    invoke-direct {v4, v2, v6}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    .line 234
    .line 235
    .line 236
    sput-object v4, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->LOADED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 237
    .line 238
    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 239
    .line 240
    const-string v6, "AD_PROGRESS"

    .line 241
    .line 242
    move-object/from16 v23, v4

    .line 243
    .line 244
    const/16 v4, 0x15

    .line 245
    .line 246
    invoke-direct {v2, v6, v4}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    .line 247
    .line 248
    .line 249
    sput-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_PROGRESS:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 250
    .line 251
    new-instance v6, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 252
    .line 253
    const-string v4, "AD_BUFFERING"

    .line 254
    .line 255
    move-object/from16 v24, v2

    .line 256
    .line 257
    const/16 v2, 0x16

    .line 258
    .line 259
    invoke-direct {v6, v4, v2}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    .line 260
    .line 261
    .line 262
    sput-object v6, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BUFFERING:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 263
    .line 264
    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 265
    .line 266
    const-string v4, "AD_BREAK_STARTED"

    .line 267
    .line 268
    move-object/from16 v25, v6

    .line 269
    .line 270
    const/16 v6, 0x17

    .line 271
    .line 272
    invoke-direct {v2, v4, v6}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    .line 273
    .line 274
    .line 275
    sput-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 276
    .line 277
    new-instance v4, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 278
    .line 279
    const-string v6, "AD_BREAK_ENDED"

    .line 280
    .line 281
    move-object/from16 v26, v2

    .line 282
    .line 283
    const/16 v2, 0x18

    .line 284
    .line 285
    invoke-direct {v4, v6, v2}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    .line 286
    .line 287
    .line 288
    sput-object v4, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_ENDED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 289
    .line 290
    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 291
    .line 292
    const-string v6, "AD_PERIOD_STARTED"

    .line 293
    .line 294
    move-object/from16 v27, v4

    .line 295
    .line 296
    const/16 v4, 0x19

    .line 297
    .line 298
    invoke-direct {v2, v6, v4}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    .line 299
    .line 300
    .line 301
    sput-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_PERIOD_STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 302
    .line 303
    new-instance v4, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 304
    .line 305
    const-string v6, "AD_PERIOD_ENDED"

    .line 306
    .line 307
    move-object/from16 v28, v2

    .line 308
    .line 309
    const/16 v2, 0x1a

    .line 310
    .line 311
    invoke-direct {v4, v6, v2}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;-><init>(Ljava/lang/String;I)V

    .line 312
    .line 313
    .line 314
    sput-object v4, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_PERIOD_ENDED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 315
    .line 316
    const/16 v2, 0x1b

    .line 317
    .line 318
    new-array v2, v2, [Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 319
    .line 320
    const/4 v6, 0x0

    .line 321
    aput-object v0, v2, v6

    .line 322
    .line 323
    const/4 v0, 0x1

    .line 324
    aput-object v1, v2, v0

    .line 325
    .line 326
    const/4 v0, 0x2

    .line 327
    aput-object v3, v2, v0

    .line 328
    .line 329
    const/4 v0, 0x3

    .line 330
    aput-object v5, v2, v0

    .line 331
    .line 332
    const/4 v0, 0x4

    .line 333
    aput-object v7, v2, v0

    .line 334
    .line 335
    const/4 v0, 0x5

    .line 336
    aput-object v9, v2, v0

    .line 337
    .line 338
    const/4 v0, 0x6

    .line 339
    aput-object v11, v2, v0

    .line 340
    .line 341
    const/4 v0, 0x7

    .line 342
    aput-object v13, v2, v0

    .line 343
    .line 344
    const/16 v0, 0x8

    .line 345
    .line 346
    aput-object v15, v2, v0

    .line 347
    .line 348
    const/16 v0, 0x9

    .line 349
    .line 350
    aput-object v14, v2, v0

    .line 351
    .line 352
    const/16 v0, 0xa

    .line 353
    .line 354
    aput-object v12, v2, v0

    .line 355
    .line 356
    const/16 v0, 0xb

    .line 357
    .line 358
    aput-object v10, v2, v0

    .line 359
    .line 360
    const/16 v0, 0xc

    .line 361
    .line 362
    aput-object v8, v2, v0

    .line 363
    .line 364
    const/16 v0, 0xd

    .line 365
    .line 366
    aput-object v16, v2, v0

    .line 367
    .line 368
    const/16 v0, 0xe

    .line 369
    .line 370
    aput-object v17, v2, v0

    .line 371
    .line 372
    const/16 v0, 0xf

    .line 373
    .line 374
    aput-object v18, v2, v0

    .line 375
    .line 376
    const/16 v0, 0x10

    .line 377
    .line 378
    aput-object v19, v2, v0

    .line 379
    .line 380
    const/16 v0, 0x11

    .line 381
    .line 382
    aput-object v20, v2, v0

    .line 383
    .line 384
    const/16 v0, 0x12

    .line 385
    .line 386
    aput-object v21, v2, v0

    .line 387
    .line 388
    const/16 v0, 0x13

    .line 389
    .line 390
    aput-object v22, v2, v0

    .line 391
    .line 392
    const/16 v0, 0x14

    .line 393
    .line 394
    aput-object v23, v2, v0

    .line 395
    .line 396
    const/16 v0, 0x15

    .line 397
    .line 398
    aput-object v24, v2, v0

    .line 399
    .line 400
    const/16 v0, 0x16

    .line 401
    .line 402
    aput-object v25, v2, v0

    .line 403
    .line 404
    const/16 v0, 0x17

    .line 405
    .line 406
    aput-object v26, v2, v0

    .line 407
    .line 408
    const/16 v0, 0x18

    .line 409
    .line 410
    aput-object v27, v2, v0

    .line 411
    .line 412
    const/16 v0, 0x19

    .line 413
    .line 414
    aput-object v28, v2, v0

    .line 415
    .line 416
    const/16 v0, 0x1a

    .line 417
    .line 418
    aput-object v4, v2, v0

    .line 419
    .line 420
    sput-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->zza:[Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 421
    .line 422
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;
    .locals 1

    .line 1
    const-class v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->zza:[Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 8
    .line 9
    return-object v0
.end method
