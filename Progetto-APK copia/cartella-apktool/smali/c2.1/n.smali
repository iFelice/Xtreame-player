.class public abstract Lc2/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lc2/b;

.field public static final b:Lc2/b;

.field public static final c:Lc2/b;

.field public static final d:Lc2/b;

.field public static final e:Lc2/b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lc2/b;

    .line 2
    .line 3
    const-string v1, "VISUAL_STATE_CALLBACK"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lc2/b;

    .line 10
    .line 11
    const-string v1, "OFF_SCREEN_PRERASTER"

    .line 12
    .line 13
    invoke-direct {v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lc2/b;

    .line 17
    .line 18
    const-string v1, "SAFE_BROWSING_ENABLE"

    .line 19
    .line 20
    const/4 v3, 0x3

    .line 21
    invoke-direct {v0, v1, v1, v3}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lc2/b;

    .line 25
    .line 26
    const-string v1, "DISABLED_ACTION_MODE_MENU_ITEMS"

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    invoke-direct {v0, v1, v1, v4}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lc2/b;

    .line 33
    .line 34
    const-string v1, "START_SAFE_BROWSING"

    .line 35
    .line 36
    const/4 v5, 0x4

    .line 37
    invoke-direct {v0, v1, v1, v5}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lc2/b;

    .line 41
    .line 42
    const-string v1, "SAFE_BROWSING_WHITELIST"

    .line 43
    .line 44
    invoke-direct {v0, v1, v1, v5}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Lc2/b;

    .line 48
    .line 49
    const-string v6, "SAFE_BROWSING_ALLOWLIST"

    .line 50
    .line 51
    invoke-direct {v0, v1, v6, v5}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Lc2/b;

    .line 55
    .line 56
    invoke-direct {v0, v6, v1, v5}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lc2/b;

    .line 60
    .line 61
    invoke-direct {v0, v6, v6, v5}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Lc2/b;

    .line 65
    .line 66
    const-string v1, "SAFE_BROWSING_PRIVACY_POLICY_URL"

    .line 67
    .line 68
    invoke-direct {v0, v1, v1, v5}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Lc2/b;

    .line 72
    .line 73
    const-string v1, "SERVICE_WORKER_BASIC_USAGE"

    .line 74
    .line 75
    invoke-direct {v0, v1, v1, v4}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    new-instance v0, Lc2/b;

    .line 79
    .line 80
    const-string v1, "SERVICE_WORKER_CACHE_MODE"

    .line 81
    .line 82
    invoke-direct {v0, v1, v1, v4}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    new-instance v0, Lc2/b;

    .line 86
    .line 87
    const-string v1, "SERVICE_WORKER_CONTENT_ACCESS"

    .line 88
    .line 89
    invoke-direct {v0, v1, v1, v4}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    new-instance v0, Lc2/b;

    .line 93
    .line 94
    const-string v1, "SERVICE_WORKER_FILE_ACCESS"

    .line 95
    .line 96
    invoke-direct {v0, v1, v1, v4}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    new-instance v0, Lc2/b;

    .line 100
    .line 101
    const-string v1, "SERVICE_WORKER_BLOCK_NETWORK_LOADS"

    .line 102
    .line 103
    invoke-direct {v0, v1, v1, v4}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    .line 105
    .line 106
    new-instance v0, Lc2/b;

    .line 107
    .line 108
    const-string v1, "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST"

    .line 109
    .line 110
    invoke-direct {v0, v1, v1, v4}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    .line 112
    .line 113
    new-instance v0, Lc2/b;

    .line 114
    .line 115
    const-string v1, "RECEIVE_WEB_RESOURCE_ERROR"

    .line 116
    .line 117
    invoke-direct {v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    new-instance v0, Lc2/b;

    .line 121
    .line 122
    const-string v1, "RECEIVE_HTTP_ERROR"

    .line 123
    .line 124
    invoke-direct {v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    new-instance v0, Lc2/b;

    .line 128
    .line 129
    const-string v1, "SHOULD_OVERRIDE_WITH_REDIRECTS"

    .line 130
    .line 131
    invoke-direct {v0, v1, v1, v4}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    new-instance v0, Lc2/b;

    .line 135
    .line 136
    const-string v1, "SAFE_BROWSING_HIT"

    .line 137
    .line 138
    invoke-direct {v0, v1, v1, v5}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    .line 140
    .line 141
    new-instance v0, Lc2/b;

    .line 142
    .line 143
    const-string v1, "WEB_RESOURCE_REQUEST_IS_REDIRECT"

    .line 144
    .line 145
    invoke-direct {v0, v1, v1, v4}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    .line 147
    .line 148
    new-instance v0, Lc2/b;

    .line 149
    .line 150
    const-string v1, "WEB_RESOURCE_ERROR_GET_DESCRIPTION"

    .line 151
    .line 152
    invoke-direct {v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 153
    .line 154
    .line 155
    new-instance v0, Lc2/b;

    .line 156
    .line 157
    const-string v1, "WEB_RESOURCE_ERROR_GET_CODE"

    .line 158
    .line 159
    invoke-direct {v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 160
    .line 161
    .line 162
    new-instance v0, Lc2/b;

    .line 163
    .line 164
    const-string v1, "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY"

    .line 165
    .line 166
    invoke-direct {v0, v1, v1, v5}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 167
    .line 168
    .line 169
    new-instance v0, Lc2/b;

    .line 170
    .line 171
    const-string v1, "SAFE_BROWSING_RESPONSE_PROCEED"

    .line 172
    .line 173
    invoke-direct {v0, v1, v1, v5}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 174
    .line 175
    .line 176
    new-instance v0, Lc2/b;

    .line 177
    .line 178
    const-string v1, "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL"

    .line 179
    .line 180
    invoke-direct {v0, v1, v1, v5}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    .line 182
    .line 183
    new-instance v0, Lc2/b;

    .line 184
    .line 185
    const-string v1, "WEB_MESSAGE_PORT_POST_MESSAGE"

    .line 186
    .line 187
    invoke-direct {v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 188
    .line 189
    .line 190
    new-instance v0, Lc2/b;

    .line 191
    .line 192
    const-string v1, "WEB_MESSAGE_PORT_CLOSE"

    .line 193
    .line 194
    invoke-direct {v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 195
    .line 196
    .line 197
    new-instance v0, Lc2/b;

    .line 198
    .line 199
    const-string v1, "WEB_MESSAGE_ARRAY_BUFFER"

    .line 200
    .line 201
    const/4 v4, 0x2

    .line 202
    invoke-direct {v0, v1, v1, v4}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 203
    .line 204
    .line 205
    sput-object v0, Lc2/n;->a:Lc2/b;

    .line 206
    .line 207
    new-instance v0, Lc2/b;

    .line 208
    .line 209
    const-string v1, "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK"

    .line 210
    .line 211
    invoke-direct {v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 212
    .line 213
    .line 214
    new-instance v0, Lc2/b;

    .line 215
    .line 216
    const-string v1, "CREATE_WEB_MESSAGE_CHANNEL"

    .line 217
    .line 218
    invoke-direct {v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 219
    .line 220
    .line 221
    new-instance v0, Lc2/b;

    .line 222
    .line 223
    const-string v1, "POST_WEB_MESSAGE"

    .line 224
    .line 225
    invoke-direct {v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 226
    .line 227
    .line 228
    new-instance v0, Lc2/b;

    .line 229
    .line 230
    const-string v1, "WEB_MESSAGE_CALLBACK_ON_MESSAGE"

    .line 231
    .line 232
    invoke-direct {v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 233
    .line 234
    .line 235
    new-instance v0, Lc2/b;

    .line 236
    .line 237
    const-string v1, "GET_WEB_VIEW_CLIENT"

    .line 238
    .line 239
    invoke-direct {v0, v1, v1, v3}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 240
    .line 241
    .line 242
    sput-object v0, Lc2/n;->b:Lc2/b;

    .line 243
    .line 244
    new-instance v0, Lc2/b;

    .line 245
    .line 246
    const-string v1, "GET_WEB_CHROME_CLIENT"

    .line 247
    .line 248
    invoke-direct {v0, v1, v1, v3}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 249
    .line 250
    .line 251
    new-instance v0, Lc2/b;

    .line 252
    .line 253
    const-string v1, "GET_WEB_VIEW_RENDERER"

    .line 254
    .line 255
    const/4 v2, 0x6

    .line 256
    invoke-direct {v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 257
    .line 258
    .line 259
    new-instance v0, Lc2/b;

    .line 260
    .line 261
    const-string v1, "WEB_VIEW_RENDERER_TERMINATE"

    .line 262
    .line 263
    invoke-direct {v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 264
    .line 265
    .line 266
    new-instance v0, Lc2/b;

    .line 267
    .line 268
    const-string v1, "TRACING_CONTROLLER_BASIC_USAGE"

    .line 269
    .line 270
    const/4 v3, 0x5

    .line 271
    invoke-direct {v0, v1, v1, v3}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 272
    .line 273
    .line 274
    new-instance v0, Lc2/j;

    .line 275
    .line 276
    invoke-direct {v0}, Lc2/j;-><init>()V

    .line 277
    .line 278
    .line 279
    new-instance v0, Lc2/j;

    .line 280
    .line 281
    invoke-direct {v0}, Lc2/j;-><init>()V

    .line 282
    .line 283
    .line 284
    new-instance v0, Lc2/b;

    .line 285
    .line 286
    const-string v1, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    .line 287
    .line 288
    invoke-direct {v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 289
    .line 290
    .line 291
    new-instance v0, Lc2/l;

    .line 292
    .line 293
    invoke-direct {v0}, Lc2/l;-><init>()V

    .line 294
    .line 295
    .line 296
    new-instance v0, Lc2/b;

    .line 297
    .line 298
    const-string v1, "PROXY_OVERRIDE"

    .line 299
    .line 300
    const-string v3, "PROXY_OVERRIDE:3"

    .line 301
    .line 302
    invoke-direct {v0, v1, v3, v4}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 303
    .line 304
    .line 305
    new-instance v0, Lc2/b;

    .line 306
    .line 307
    const-string v1, "MULTI_PROCESS"

    .line 308
    .line 309
    const-string v3, "MULTI_PROCESS_QUERY"

    .line 310
    .line 311
    invoke-direct {v0, v1, v3, v4}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 312
    .line 313
    .line 314
    sput-object v0, Lc2/n;->c:Lc2/b;

    .line 315
    .line 316
    new-instance v0, Lc2/b;

    .line 317
    .line 318
    const-string v1, "FORCE_DARK"

    .line 319
    .line 320
    invoke-direct {v0, v1, v1, v2}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 321
    .line 322
    .line 323
    new-instance v0, Lc2/b;

    .line 324
    .line 325
    const-string v1, "FORCE_DARK_STRATEGY"

    .line 326
    .line 327
    const-string v2, "FORCE_DARK_BEHAVIOR"

    .line 328
    .line 329
    invoke-direct {v0, v1, v2, v4}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 330
    .line 331
    .line 332
    new-instance v0, Lc2/b;

    .line 333
    .line 334
    const-string v1, "WEB_MESSAGE_LISTENER"

    .line 335
    .line 336
    const-string v2, "WEB_MESSAGE_LISTENER"

    .line 337
    .line 338
    invoke-direct {v0, v1, v2, v4}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 339
    .line 340
    .line 341
    sput-object v0, Lc2/n;->d:Lc2/b;

    .line 342
    .line 343
    new-instance v0, Lc2/b;

    .line 344
    .line 345
    const-string v1, "DOCUMENT_START_SCRIPT"

    .line 346
    .line 347
    const-string v2, "DOCUMENT_START_SCRIPT:1"

    .line 348
    .line 349
    invoke-direct {v0, v1, v2, v4}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 350
    .line 351
    .line 352
    new-instance v0, Lc2/b;

    .line 353
    .line 354
    const-string v1, "PROXY_OVERRIDE_REVERSE_BYPASS"

    .line 355
    .line 356
    const-string v2, "PROXY_OVERRIDE_REVERSE_BYPASS"

    .line 357
    .line 358
    invoke-direct {v0, v1, v2, v4}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 359
    .line 360
    .line 361
    new-instance v0, Lc2/b;

    .line 362
    .line 363
    const-string v1, "GET_VARIATIONS_HEADER"

    .line 364
    .line 365
    const-string v2, "GET_VARIATIONS_HEADER"

    .line 366
    .line 367
    invoke-direct {v0, v1, v2, v4}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 368
    .line 369
    .line 370
    new-instance v0, Lc2/b;

    .line 371
    .line 372
    const-string v1, "ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY"

    .line 373
    .line 374
    const-string v2, "ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY"

    .line 375
    .line 376
    invoke-direct {v0, v1, v2, v4}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 377
    .line 378
    .line 379
    new-instance v0, Lc2/b;

    .line 380
    .line 381
    const-string v1, "GET_COOKIE_INFO"

    .line 382
    .line 383
    const-string v2, "GET_COOKIE_INFO"

    .line 384
    .line 385
    invoke-direct {v0, v1, v2, v4}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 386
    .line 387
    .line 388
    new-instance v0, Lc2/b;

    .line 389
    .line 390
    const-string v1, "REQUESTED_WITH_HEADER_ALLOW_LIST"

    .line 391
    .line 392
    const-string v2, "REQUESTED_WITH_HEADER_ALLOW_LIST"

    .line 393
    .line 394
    invoke-direct {v0, v1, v2, v4}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 395
    .line 396
    .line 397
    new-instance v0, Lc2/b;

    .line 398
    .line 399
    const-string v1, "USER_AGENT_METADATA"

    .line 400
    .line 401
    const-string v2, "USER_AGENT_METADATA"

    .line 402
    .line 403
    invoke-direct {v0, v1, v2, v4}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 404
    .line 405
    .line 406
    new-instance v0, Lc2/m;

    .line 407
    .line 408
    const-string v1, "MULTI_PROFILE"

    .line 409
    .line 410
    const-string v2, "MULTI_PROFILE"

    .line 411
    .line 412
    invoke-direct {v0, v1, v2, v4}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 413
    .line 414
    .line 415
    new-instance v0, Lc2/b;

    .line 416
    .line 417
    const-string v1, "ATTRIBUTION_REGISTRATION_BEHAVIOR"

    .line 418
    .line 419
    const-string v2, "ATTRIBUTION_BEHAVIOR"

    .line 420
    .line 421
    invoke-direct {v0, v1, v2, v4}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 422
    .line 423
    .line 424
    new-instance v0, Lc2/b;

    .line 425
    .line 426
    const-string v1, "WEBVIEW_MEDIA_INTEGRITY_API_STATUS"

    .line 427
    .line 428
    const-string v2, "WEBVIEW_INTEGRITY_API_STATUS"

    .line 429
    .line 430
    invoke-direct {v0, v1, v2, v4}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 431
    .line 432
    .line 433
    new-instance v0, Lc2/b;

    .line 434
    .line 435
    const-string v1, "MUTE_AUDIO"

    .line 436
    .line 437
    const-string v2, "MUTE_AUDIO"

    .line 438
    .line 439
    invoke-direct {v0, v1, v2, v4}, Lc2/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 440
    .line 441
    .line 442
    sput-object v0, Lc2/n;->e:Lc2/b;

    .line 443
    .line 444
    return-void
.end method
