.class public final enum Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/api/AdError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADS_PLAYER_NOT_PROVIDED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum ADS_REQUEST_NETWORK_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum COMPANION_AD_LOADING_FAILED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum FAILED_TO_REQUEST_ADS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum OVERLAY_AD_LOADING_FAILED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum OVERLAY_AD_PLAYING_FAILED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum PLAYLIST_NO_CONTENT_TRACKING:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum UNEXPECTED_ADS_LOADED_EVENT:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum UNKNOWN_AD_RESPONSE:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum UNKNOWN_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VAST_ASSET_NOT_FOUND:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VAST_EMPTY_RESPONSE:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VAST_LINEAR_ASSET_MISMATCH:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VAST_LOAD_TIMEOUT:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VAST_MALFORMED_RESPONSE:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VAST_MEDIA_LOAD_TIMEOUT:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VAST_NONLINEAR_ASSET_MISMATCH:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VAST_NO_ADS_AFTER_WRAPPER:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VAST_TOO_MANY_REDIRECTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VAST_TRAFFICKING_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VIDEO_PLAY_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field private static final synthetic zza:[Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;


# instance fields
.field private final zzb:I


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    const-string v3, "INTERNAL_ERROR"

    .line 6
    .line 7
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 11
    .line 12
    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const/16 v4, 0x64

    .line 16
    .line 17
    const-string v5, "VAST_MALFORMED_RESPONSE"

    .line 18
    .line 19
    invoke-direct {v2, v5, v3, v4}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    .line 20
    .line 21
    .line 22
    sput-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_MALFORMED_RESPONSE:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 23
    .line 24
    new-instance v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 25
    .line 26
    const/4 v5, 0x2

    .line 27
    const/16 v6, 0x3f2

    .line 28
    .line 29
    const-string v7, "UNKNOWN_AD_RESPONSE"

    .line 30
    .line 31
    invoke-direct {v4, v7, v5, v6}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    .line 32
    .line 33
    .line 34
    sput-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->UNKNOWN_AD_RESPONSE:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 35
    .line 36
    new-instance v6, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 37
    .line 38
    const/4 v7, 0x3

    .line 39
    const/16 v8, 0xc8

    .line 40
    .line 41
    const-string v9, "VAST_TRAFFICKING_ERROR"

    .line 42
    .line 43
    invoke-direct {v6, v9, v7, v8}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    .line 44
    .line 45
    .line 46
    sput-object v6, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_TRAFFICKING_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 47
    .line 48
    new-instance v8, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 49
    .line 50
    const/4 v9, 0x4

    .line 51
    const/16 v10, 0x12d

    .line 52
    .line 53
    const-string v11, "VAST_LOAD_TIMEOUT"

    .line 54
    .line 55
    invoke-direct {v8, v11, v9, v10}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    .line 56
    .line 57
    .line 58
    sput-object v8, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_LOAD_TIMEOUT:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 59
    .line 60
    new-instance v10, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 61
    .line 62
    const/4 v11, 0x5

    .line 63
    const/16 v12, 0x12e

    .line 64
    .line 65
    const-string v13, "VAST_TOO_MANY_REDIRECTS"

    .line 66
    .line 67
    invoke-direct {v10, v13, v11, v12}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    .line 68
    .line 69
    .line 70
    sput-object v10, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_TOO_MANY_REDIRECTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 71
    .line 72
    new-instance v12, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 73
    .line 74
    const/4 v13, 0x6

    .line 75
    const/16 v14, 0x12f

    .line 76
    .line 77
    const-string v15, "VAST_NO_ADS_AFTER_WRAPPER"

    .line 78
    .line 79
    invoke-direct {v12, v15, v13, v14}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    .line 80
    .line 81
    .line 82
    sput-object v12, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_NO_ADS_AFTER_WRAPPER:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 83
    .line 84
    new-instance v14, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 85
    .line 86
    const/4 v15, 0x7

    .line 87
    const/16 v13, 0x190

    .line 88
    .line 89
    const-string v11, "VIDEO_PLAY_ERROR"

    .line 90
    .line 91
    invoke-direct {v14, v11, v15, v13}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    .line 92
    .line 93
    .line 94
    sput-object v14, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VIDEO_PLAY_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 95
    .line 96
    new-instance v11, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 97
    .line 98
    const/16 v13, 0x8

    .line 99
    .line 100
    const/16 v15, 0x192

    .line 101
    .line 102
    const-string v9, "VAST_MEDIA_LOAD_TIMEOUT"

    .line 103
    .line 104
    invoke-direct {v11, v9, v13, v15}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    .line 105
    .line 106
    .line 107
    sput-object v11, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_MEDIA_LOAD_TIMEOUT:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 108
    .line 109
    new-instance v9, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 110
    .line 111
    const/16 v15, 0x9

    .line 112
    .line 113
    const/16 v13, 0x193

    .line 114
    .line 115
    const-string v7, "VAST_LINEAR_ASSET_MISMATCH"

    .line 116
    .line 117
    invoke-direct {v9, v7, v15, v13}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    .line 118
    .line 119
    .line 120
    sput-object v9, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_LINEAR_ASSET_MISMATCH:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 121
    .line 122
    new-instance v7, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 123
    .line 124
    const/16 v13, 0xa

    .line 125
    .line 126
    const/16 v15, 0x1f4

    .line 127
    .line 128
    const-string v5, "OVERLAY_AD_PLAYING_FAILED"

    .line 129
    .line 130
    invoke-direct {v7, v5, v13, v15}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    .line 131
    .line 132
    .line 133
    sput-object v7, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->OVERLAY_AD_PLAYING_FAILED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 134
    .line 135
    new-instance v5, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 136
    .line 137
    const/16 v15, 0xb

    .line 138
    .line 139
    const/16 v13, 0x1f6

    .line 140
    .line 141
    const-string v3, "OVERLAY_AD_LOADING_FAILED"

    .line 142
    .line 143
    invoke-direct {v5, v3, v15, v13}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    .line 144
    .line 145
    .line 146
    sput-object v5, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->OVERLAY_AD_LOADING_FAILED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 147
    .line 148
    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 149
    .line 150
    const/16 v13, 0xc

    .line 151
    .line 152
    const/16 v15, 0x1f7

    .line 153
    .line 154
    const-string v1, "VAST_NONLINEAR_ASSET_MISMATCH"

    .line 155
    .line 156
    invoke-direct {v3, v1, v13, v15}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    .line 157
    .line 158
    .line 159
    sput-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_NONLINEAR_ASSET_MISMATCH:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 160
    .line 161
    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 162
    .line 163
    const/16 v15, 0xd

    .line 164
    .line 165
    const/16 v13, 0x25b

    .line 166
    .line 167
    move-object/from16 v16, v3

    .line 168
    .line 169
    const-string v3, "COMPANION_AD_LOADING_FAILED"

    .line 170
    .line 171
    invoke-direct {v1, v3, v15, v13}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    .line 172
    .line 173
    .line 174
    sput-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->COMPANION_AD_LOADING_FAILED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 175
    .line 176
    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 177
    .line 178
    const/16 v13, 0xe

    .line 179
    .line 180
    const/16 v15, 0x384

    .line 181
    .line 182
    move-object/from16 v17, v1

    .line 183
    .line 184
    const-string v1, "UNKNOWN_ERROR"

    .line 185
    .line 186
    invoke-direct {v3, v1, v13, v15}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    .line 187
    .line 188
    .line 189
    sput-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->UNKNOWN_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 190
    .line 191
    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 192
    .line 193
    const/16 v15, 0xf

    .line 194
    .line 195
    const/16 v13, 0x3f1

    .line 196
    .line 197
    move-object/from16 v18, v3

    .line 198
    .line 199
    const-string v3, "VAST_EMPTY_RESPONSE"

    .line 200
    .line 201
    invoke-direct {v1, v3, v15, v13}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    .line 202
    .line 203
    .line 204
    sput-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_EMPTY_RESPONSE:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 205
    .line 206
    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 207
    .line 208
    const/16 v13, 0x10

    .line 209
    .line 210
    const/16 v15, 0x3ed

    .line 211
    .line 212
    move-object/from16 v19, v1

    .line 213
    .line 214
    const-string v1, "FAILED_TO_REQUEST_ADS"

    .line 215
    .line 216
    invoke-direct {v3, v1, v13, v15}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    .line 217
    .line 218
    .line 219
    sput-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->FAILED_TO_REQUEST_ADS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 220
    .line 221
    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 222
    .line 223
    const/16 v15, 0x11

    .line 224
    .line 225
    const/16 v13, 0x3ef

    .line 226
    .line 227
    move-object/from16 v20, v3

    .line 228
    .line 229
    const-string v3, "VAST_ASSET_NOT_FOUND"

    .line 230
    .line 231
    invoke-direct {v1, v3, v15, v13}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    .line 232
    .line 233
    .line 234
    sput-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_ASSET_NOT_FOUND:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 235
    .line 236
    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 237
    .line 238
    const/16 v13, 0x12

    .line 239
    .line 240
    const/16 v15, 0x3f4

    .line 241
    .line 242
    move-object/from16 v21, v1

    .line 243
    .line 244
    const-string v1, "ADS_REQUEST_NETWORK_ERROR"

    .line 245
    .line 246
    invoke-direct {v3, v1, v13, v15}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    .line 247
    .line 248
    .line 249
    sput-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->ADS_REQUEST_NETWORK_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 250
    .line 251
    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 252
    .line 253
    const/16 v15, 0x13

    .line 254
    .line 255
    const/16 v13, 0x44d

    .line 256
    .line 257
    move-object/from16 v22, v3

    .line 258
    .line 259
    const-string v3, "INVALID_ARGUMENTS"

    .line 260
    .line 261
    invoke-direct {v1, v3, v15, v13}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    .line 262
    .line 263
    .line 264
    sput-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 265
    .line 266
    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 267
    .line 268
    const/16 v13, 0x14

    .line 269
    .line 270
    const/16 v15, 0x4b5

    .line 271
    .line 272
    move-object/from16 v23, v1

    .line 273
    .line 274
    const-string v1, "PLAYLIST_NO_CONTENT_TRACKING"

    .line 275
    .line 276
    invoke-direct {v3, v1, v13, v15}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    .line 277
    .line 278
    .line 279
    sput-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->PLAYLIST_NO_CONTENT_TRACKING:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 280
    .line 281
    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 282
    .line 283
    const/16 v15, 0x15

    .line 284
    .line 285
    const/16 v13, 0x4b6

    .line 286
    .line 287
    move-object/from16 v24, v3

    .line 288
    .line 289
    const-string v3, "UNEXPECTED_ADS_LOADED_EVENT"

    .line 290
    .line 291
    invoke-direct {v1, v3, v15, v13}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    .line 292
    .line 293
    .line 294
    sput-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->UNEXPECTED_ADS_LOADED_EVENT:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 295
    .line 296
    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 297
    .line 298
    const/16 v13, 0x16

    .line 299
    .line 300
    const/16 v15, 0x4b7

    .line 301
    .line 302
    move-object/from16 v25, v1

    .line 303
    .line 304
    const-string v1, "ADS_PLAYER_NOT_PROVIDED"

    .line 305
    .line 306
    invoke-direct {v3, v1, v13, v15}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    .line 307
    .line 308
    .line 309
    sput-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->ADS_PLAYER_NOT_PROVIDED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 310
    .line 311
    const/16 v1, 0x17

    .line 312
    .line 313
    new-array v1, v1, [Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 314
    .line 315
    const/4 v13, 0x0

    .line 316
    aput-object v0, v1, v13

    .line 317
    .line 318
    const/4 v0, 0x1

    .line 319
    aput-object v2, v1, v0

    .line 320
    .line 321
    const/4 v0, 0x2

    .line 322
    aput-object v4, v1, v0

    .line 323
    .line 324
    const/4 v0, 0x3

    .line 325
    aput-object v6, v1, v0

    .line 326
    .line 327
    const/4 v0, 0x4

    .line 328
    aput-object v8, v1, v0

    .line 329
    .line 330
    const/4 v0, 0x5

    .line 331
    aput-object v10, v1, v0

    .line 332
    .line 333
    const/4 v0, 0x6

    .line 334
    aput-object v12, v1, v0

    .line 335
    .line 336
    const/4 v0, 0x7

    .line 337
    aput-object v14, v1, v0

    .line 338
    .line 339
    const/16 v0, 0x8

    .line 340
    .line 341
    aput-object v11, v1, v0

    .line 342
    .line 343
    const/16 v0, 0x9

    .line 344
    .line 345
    aput-object v9, v1, v0

    .line 346
    .line 347
    const/16 v0, 0xa

    .line 348
    .line 349
    aput-object v7, v1, v0

    .line 350
    .line 351
    const/16 v0, 0xb

    .line 352
    .line 353
    aput-object v5, v1, v0

    .line 354
    .line 355
    const/16 v0, 0xc

    .line 356
    .line 357
    aput-object v16, v1, v0

    .line 358
    .line 359
    const/16 v0, 0xd

    .line 360
    .line 361
    aput-object v17, v1, v0

    .line 362
    .line 363
    const/16 v0, 0xe

    .line 364
    .line 365
    aput-object v18, v1, v0

    .line 366
    .line 367
    const/16 v0, 0xf

    .line 368
    .line 369
    aput-object v19, v1, v0

    .line 370
    .line 371
    const/16 v0, 0x10

    .line 372
    .line 373
    aput-object v20, v1, v0

    .line 374
    .line 375
    const/16 v0, 0x11

    .line 376
    .line 377
    aput-object v21, v1, v0

    .line 378
    .line 379
    const/16 v0, 0x12

    .line 380
    .line 381
    aput-object v22, v1, v0

    .line 382
    .line 383
    const/16 v0, 0x13

    .line 384
    .line 385
    aput-object v23, v1, v0

    .line 386
    .line 387
    const/16 v0, 0x14

    .line 388
    .line 389
    aput-object v24, v1, v0

    .line 390
    .line 391
    const/16 v0, 0x15

    .line 392
    .line 393
    aput-object v25, v1, v0

    .line 394
    .line 395
    const/16 v0, 0x16

    .line 396
    .line 397
    aput-object v3, v1, v0

    .line 398
    .line 399
    sput-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->zza:[Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 400
    .line 401
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->zzb:I

    .line 5
    .line 6
    return-void
.end method

.method public static getErrorCodeByNumber(I)Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->values()[Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->getErrorNumber()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ne v4, p0, :cond_0

    .line 16
    .line 17
    return-object v3

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/16 v0, 0x4b4

    .line 22
    .line 23
    if-ne p0, v0, :cond_2

    .line 24
    .line 25
    sget-object p0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_2
    sget-object p0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->UNKNOWN_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 29
    .line 30
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;
    .locals 1

    .line 1
    const-class v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->zza:[Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getErrorNumber()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->zzb:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "AdErrorCode [name: "

    .line 6
    .line 7
    const-string v2, ", number: "

    .line 8
    .line 9
    invoke-static {v1, v0, v2}, Lcom/google/protobuf/U2;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->zzb:I

    .line 14
    .line 15
    const-string v2, "]"

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, La/r;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method
