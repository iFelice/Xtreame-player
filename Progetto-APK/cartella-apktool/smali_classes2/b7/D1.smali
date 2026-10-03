.class public final Lb7/D1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Landroid/app/AlertDialog;

.field public final synthetic I:Lpe/hf/black20/SettingsMenuActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/SettingsMenuActivity;Landroid/app/AlertDialog;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lb7/D1;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/D1;->I:Lpe/hf/black20/SettingsMenuActivity;

    .line 7
    .line 8
    iput-object p2, p0, Lb7/D1;->H:Landroid/app/AlertDialog;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget p1, p0, Lb7/D1;->G:I

    .line 2
    .line 3
    const-string v0, "XCIPTV_TAG"

    .line 4
    .line 5
    const-string v1, "whichPlayer"

    .line 6
    .line 7
    const-class v2, Lpe/hf/black20/PlayerSettingsActivity;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iget-object v4, p0, Lb7/D1;->I:Lpe/hf/black20/SettingsMenuActivity;

    .line 11
    .line 12
    iget-object v5, p0, Lb7/D1;->H:Landroid/app/AlertDialog;

    .line 13
    .line 14
    packed-switch p1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    .line 22
    .line 23
    invoke-direct {p1, v4, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "VLC"

    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    .line 39
    .line 40
    invoke-direct {p1, v4, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .line 42
    .line 43
    const-string v0, "EXO"

    .line 44
    .line 45
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_2
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_3
    iget-object p1, v4, Lpe/hf/black20/SettingsMenuActivity;->J:Lpe/hf/black20/SettingsMenuActivity;

    .line 60
    .line 61
    const-class v1, Lpe/hf/black20/services/OTRServices;

    .line 62
    .line 63
    invoke-static {p1, v1}, Lpe/hf/black20/util/Methods;->Y(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .line 65
    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v1, "APK URL - "

    .line 69
    .line 70
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, v4, Lpe/hf/black20/SettingsMenuActivity;->U:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    new-instance p1, Lpe/hf/black20/util/a;

    .line 86
    .line 87
    iget-object v0, v4, Lpe/hf/black20/SettingsMenuActivity;->J:Lpe/hf/black20/SettingsMenuActivity;

    .line 88
    .line 89
    invoke-direct {p1}, Landroid/app/Activity;-><init>()V

    .line 90
    .line 91
    .line 92
    sput-object v0, Lpe/hf/black20/util/a;->H:Landroid/content/Context;

    .line 93
    .line 94
    sput-object v0, Lpe/hf/black20/util/a;->I:Landroid/app/Activity;

    .line 95
    .line 96
    iget-object v0, v4, Lpe/hf/black20/SettingsMenuActivity;->U:Ljava/lang/String;

    .line 97
    .line 98
    sput-object v0, Lpe/hf/black20/util/a;->J:Ljava/lang/String;

    .line 99
    .line 100
    if-eqz v0, :cond_0

    .line 101
    .line 102
    new-instance v0, Lk3/j;

    .line 103
    .line 104
    invoke-direct {v0, p1}, Lk3/j;-><init>(Lpe/hf/black20/util/a;)V

    .line 105
    .line 106
    .line 107
    const/4 p1, 0x0

    .line 108
    new-array p1, p1, [Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    .line 112
    .line 113
    :cond_0
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :pswitch_4
    iget-object p1, v4, Lpe/hf/black20/SettingsMenuActivity;->L:Landroid/app/ProgressDialog;

    .line 118
    .line 119
    const-string v1, "Please wait while we are checking update.."

    .line 120
    .line 121
    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, v4, Lpe/hf/black20/SettingsMenuActivity;->L:Landroid/app/ProgressDialog;

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 127
    .line 128
    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-static {}, Lpe/hf/black20/SettingsMenuActivity;->papi()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v1, "ApiIPTV.php?tag=checkupdate&aid=&aid="

    .line 142
    .line 143
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget-object v1, v4, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 147
    .line 148
    const-string v2, "appid"

    .line 149
    .line 150
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v1, "&l="

    .line 158
    .line 159
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    sget-object v1, Lpe/hf/black20/util/Config;->a:Ljava/lang/String;

    .line 163
    .line 164
    invoke-static {v1}, Lpe/hf/black20/util/Methods;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    :try_start_0
    new-instance v1, Ll/x;

    .line 176
    .line 177
    const-string v2, "getVersionCode"

    .line 178
    .line 179
    invoke-direct {v1, v4, v4, v2, p1}, Ll/x;-><init>(Landroid/app/Activity;Lpe/hf/black20/util/d;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :catch_0
    nop

    .line 184
    const-string p1, "SettingsMenuActivity -- VolleyGETStringRequest Error"

    .line 185
    .line 186
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    iget-object p1, v4, Lpe/hf/black20/SettingsMenuActivity;->L:Landroid/app/ProgressDialog;

    .line 190
    .line 191
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    if-eqz p1, :cond_1

    .line 196
    .line 197
    iget-object p1, v4, Lpe/hf/black20/SettingsMenuActivity;->L:Landroid/app/ProgressDialog;

    .line 198
    .line 199
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 200
    .line 201
    .line 202
    :cond_1
    :goto_0
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :pswitch_5
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :pswitch_6
    iget-boolean p1, v4, Lpe/hf/black20/SettingsMenuActivity;->O:Z

    .line 211
    .line 212
    if-eqz p1, :cond_2

    .line 213
    .line 214
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 215
    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_2
    iget-object p1, v4, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 219
    .line 220
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    iget-wide v0, v4, Lpe/hf/black20/SettingsMenuActivity;->M:D

    .line 225
    .line 226
    double-to-int v0, v0

    .line 227
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    const-string v1, "timeShiftHR"

    .line 232
    .line 233
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 234
    .line 235
    .line 236
    iget-wide v0, v4, Lpe/hf/black20/SettingsMenuActivity;->N:D

    .line 237
    .line 238
    double-to-int v0, v0

    .line 239
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    const-string v1, "timeShiftMin"

    .line 244
    .line 245
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 246
    .line 247
    .line 248
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 249
    .line 250
    .line 251
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 252
    .line 253
    .line 254
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 255
    .line 256
    .line 257
    :goto_1
    return-void

    .line 258
    :pswitch_7
    sget-object p1, Lpe/hf/black20/SettingsMenuActivity;->X:Landroid/widget/EditText;

    .line 259
    .line 260
    invoke-static {p1}, La/r;->s(Landroid/widget/EditText;)Z

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    if-eqz p1, :cond_3

    .line 265
    .line 266
    sget-object p1, Lpe/hf/black20/SettingsMenuActivity;->X:Landroid/widget/EditText;

    .line 267
    .line 268
    iget-object v0, v4, Lpe/hf/black20/SettingsMenuActivity;->J:Lpe/hf/black20/SettingsMenuActivity;

    .line 269
    .line 270
    const v1, 0x7f1301f8

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 278
    .line 279
    .line 280
    goto :goto_3

    .line 281
    :cond_3
    iget-object p1, v4, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 282
    .line 283
    const-string v0, "parental_contorl"

    .line 284
    .line 285
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    const-string v1, "ORT_PARENTAL_CONTROL"

    .line 290
    .line 291
    if-eqz p1, :cond_4

    .line 292
    .line 293
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    iget-object v2, v4, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 298
    .line 299
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {p1, v1, v0}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 304
    .line 305
    .line 306
    :cond_4
    iget-object p1, v4, Lpe/hf/black20/SettingsMenuActivity;->J:Lpe/hf/black20/SettingsMenuActivity;

    .line 307
    .line 308
    invoke-static {p1}, Lpe/hf/black20/util/Methods;->f(Landroid/app/Activity;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    sget-object v2, Lpe/hf/black20/SettingsMenuActivity;->X:Landroid/widget/EditText;

    .line 313
    .line 314
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    const-string v6, "0000"

    .line 327
    .line 328
    invoke-virtual {v3, v1, v6}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    if-nez v1, :cond_6

    .line 337
    .line 338
    sget-object v1, Lpe/hf/black20/SettingsMenuActivity;->X:Landroid/widget/EditText;

    .line 339
    .line 340
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    if-eqz v0, :cond_5

    .line 353
    .line 354
    goto :goto_2

    .line 355
    :cond_5
    const v0, 0x7f1301f9

    .line 356
    .line 357
    .line 358
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    const-string v0, "msg"

    .line 363
    .line 364
    invoke-virtual {v4, p1, v0}, Lpe/hf/black20/SettingsMenuActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    goto :goto_3

    .line 368
    :cond_6
    :goto_2
    new-instance p1, Landroid/content/Intent;

    .line 369
    .line 370
    const-class v0, Lpe/hf/black20/ParentalControlActivity;

    .line 371
    .line 372
    invoke-direct {p1, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v4, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 379
    .line 380
    .line 381
    :goto_3
    return-void

    .line 382
    :pswitch_8
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 383
    .line 384
    .line 385
    return-void

    .line 386
    :pswitch_9
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 387
    .line 388
    .line 389
    sget p1, Lpe/hf/black20/SettingsMenuActivity;->W:I

    .line 390
    .line 391
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    .line 393
    .line 394
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    const-string v0, "ORT_PROCESS_STATUS"

    .line 399
    .line 400
    invoke-virtual {p1, v0}, LQ5/a;->b(Ljava/lang/String;)I

    .line 401
    .line 402
    .line 403
    move-result p1

    .line 404
    if-nez p1, :cond_9

    .line 405
    .line 406
    const-string p1, "ORT_WHICH_PANEL"

    .line 407
    .line 408
    const-string v0, "xtreamcodes"

    .line 409
    .line 410
    invoke-static {p1, v0, v0}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    if-eqz v1, :cond_7

    .line 415
    .line 416
    new-instance p1, Landroid/content/Intent;

    .line 417
    .line 418
    const-class v0, Lpe/hf/black20/updatecontents/XCUpdateContents;

    .line 419
    .line 420
    invoke-direct {p1, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v4, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 424
    .line 425
    .line 426
    goto :goto_4

    .line 427
    :cond_7
    const-string v1, "ezserver"

    .line 428
    .line 429
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    if-eqz v1, :cond_8

    .line 434
    .line 435
    new-instance p1, Landroid/content/Intent;

    .line 436
    .line 437
    const-class v0, Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    .line 438
    .line 439
    invoke-direct {p1, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v4, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 443
    .line 444
    .line 445
    goto :goto_4

    .line 446
    :cond_8
    const-string v1, "m3u"

    .line 447
    .line 448
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 449
    .line 450
    .line 451
    move-result p1

    .line 452
    if-eqz p1, :cond_a

    .line 453
    .line 454
    new-instance p1, Landroid/content/Intent;

    .line 455
    .line 456
    const-class v0, Lpe/hf/black20/updatecontents/M3UUpdateContents;

    .line 457
    .line 458
    invoke-direct {p1, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v4, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 462
    .line 463
    .line 464
    goto :goto_4

    .line 465
    :cond_9
    iget-object p1, v4, Lpe/hf/black20/SettingsMenuActivity;->J:Lpe/hf/black20/SettingsMenuActivity;

    .line 466
    .line 467
    const v0, 0x7f130029

    .line 468
    .line 469
    .line 470
    const/4 v1, 0x1

    .line 471
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 472
    .line 473
    .line 474
    move-result-object p1

    .line 475
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 476
    .line 477
    .line 478
    :cond_a
    :goto_4
    return-void

    .line 479
    :pswitch_a
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 480
    .line 481
    .line 482
    return-void

    .line 483
    :pswitch_b
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 484
    .line 485
    .line 486
    return-void

    .line 487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
