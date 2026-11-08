.class public final synthetic LU0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;

.field public final synthetic I:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LU0/r;->G:I

    .line 5
    .line 6
    iput-object p2, p0, LU0/r;->I:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, LU0/r;->H:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method

.method private final a()V
    .locals 4

    .line 1
    iget-object v0, p0, LU0/r;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LP1/q;

    .line 4
    .line 5
    iget-object v1, p0, LU0/r;->H:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [Ljava/lang/String;

    .line 8
    .line 9
    sget v2, LP1/o;->H:I

    .line 10
    .line 11
    const-string v2, "this$0"

    .line 12
    .line 13
    invoke-static {v0, v2}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "$tables"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, v0, LP1/q;->b:LP1/l;

    .line 22
    .line 23
    array-length v2, v1

    .line 24
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, [Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const-string v2, "tables"

    .line 34
    .line 35
    invoke-static {v1, v2}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, LP1/l;->j:Ln/g;

    .line 39
    .line 40
    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v0, v0, LP1/l;->j:Ln/g;

    .line 42
    .line 43
    invoke-virtual {v0}, Ln/g;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :goto_0
    move-object v2, v0

    .line 48
    check-cast v2, Ln/e;

    .line 49
    .line 50
    invoke-virtual {v2}, Ln/e;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_0

    .line 55
    .line 56
    invoke-virtual {v2}, Ln/e;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Ljava/util/Map$Entry;

    .line 61
    .line 62
    const-string v3, "(observer, wrapper)"

    .line 63
    .line 64
    invoke-static {v2, v3}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, LP1/n;

    .line 72
    .line 73
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, LP1/k;

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    goto :goto_1

    .line 85
    :cond_0
    monitor-exit v1

    .line 86
    return-void

    .line 87
    :goto_1
    monitor-exit v1

    .line 88
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, LU0/r;->G:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    :pswitch_0
    iget-object v0, v1, LU0/r;->I:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    iget-object v2, v1, LU0/r;->H:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Ljava/lang/String;

    .line 19
    .line 20
    sget-object v3, Li7/b;->a:Ljava/lang/String;

    .line 21
    .line 22
    :try_start_0
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {v3, v0}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;-><init>([B)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Li7/b;->b:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    .line 32
    .line 33
    invoke-virtual {v0, v2, v3}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->publish(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    :catch_0
    return-void

    .line 37
    :pswitch_1
    iget-object v0, v1, LU0/r;->I:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Lf/G;

    .line 40
    .line 41
    iget-object v3, v1, LU0/r;->H:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v3, Landroid/content/Intent;

    .line 44
    .line 45
    sget v6, Lf/G;->c:I

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    const-string v6, "what"

    .line 51
    .line 52
    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-eqz v7, :cond_3

    .line 57
    .line 58
    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    const-string v7, "msg"

    .line 63
    .line 64
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    iget-object v0, v0, Lf/G;->b:Ljava/lang/Object;

    .line 69
    .line 70
    if-eqz v7, :cond_1

    .line 71
    .line 72
    const-string v4, "success"

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    const-string v5, "1"

    .line 79
    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_3

    .line 85
    .line 86
    move-object v4, v0

    .line 87
    check-cast v4, Lpe/hf/black20/PlayStreamEPGActivity;

    .line 88
    .line 89
    const-string v5, "msg_txt"

    .line 90
    .line 91
    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    iput-object v3, v4, Lpe/hf/black20/PlayStreamEPGActivity;->n0:Ljava/lang/String;

    .line 96
    .line 97
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 98
    .line 99
    const-string v5, "MM/dd/yyyy HH:mm:ss"

    .line 100
    .line 101
    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    new-instance v5, Ljava/util/Date;

    .line 105
    .line 106
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    iget-object v6, v4, Lpe/hf/black20/PlayStreamEPGActivity;->f0:Landroid/content/SharedPreferences;

    .line 114
    .line 115
    const-string v7, "last_msg_display"

    .line 116
    .line 117
    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    if-eqz v6, :cond_0

    .line 122
    .line 123
    :try_start_1
    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    move-object v6, v0

    .line 128
    check-cast v6, Lpe/hf/black20/PlayStreamEPGActivity;

    .line 129
    .line 130
    iget-object v6, v6, Lpe/hf/black20/PlayStreamEPGActivity;->f0:Landroid/content/SharedPreferences;

    .line 131
    .line 132
    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-virtual {v3, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-static {v3, v4}, Lpe/hf/black20/util/Methods;->j(Ljava/util/Date;Ljava/util/Date;)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-le v3, v2, :cond_3

    .line 145
    .line 146
    move-object v2, v0

    .line 147
    check-cast v2, Lpe/hf/black20/PlayStreamEPGActivity;

    .line 148
    .line 149
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-nez v2, :cond_3

    .line 154
    .line 155
    check-cast v0, Lpe/hf/black20/PlayStreamEPGActivity;

    .line 156
    .line 157
    invoke-static {v0, v5}, Lpe/hf/black20/PlayStreamEPGActivity;->t(Lpe/hf/black20/PlayStreamEPGActivity;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :catch_1
    const-string v0, "XCIPTV_TAG"

    .line 163
    .line 164
    const-string v2, "Time parse error"

    .line 165
    .line 166
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_0
    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-nez v0, :cond_3

    .line 176
    .line 177
    invoke-static {v4, v5}, Lpe/hf/black20/PlayStreamEPGActivity;->t(Lpe/hf/black20/PlayStreamEPGActivity;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :cond_1
    const-string v7, "pr"

    .line 183
    .line 184
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    if-eqz v7, :cond_2

    .line 189
    .line 190
    check-cast v0, Lpe/hf/black20/PlayStreamEPGActivity;

    .line 191
    .line 192
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    if-nez v6, :cond_3

    .line 197
    .line 198
    const-string v6, "title"

    .line 199
    .line 200
    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    const-string v7, "desc"

    .line 205
    .line 206
    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    const-string v8, "time"

    .line 211
    .line 212
    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    iget-object v8, v0, Lpe/hf/black20/PlayStreamEPGActivity;->e0:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 217
    .line 218
    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    const v10, 0x7f0e0126

    .line 223
    .line 224
    .line 225
    invoke-virtual {v9, v10, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    new-instance v9, Landroid/app/AlertDialog$Builder;

    .line 230
    .line 231
    invoke-direct {v9, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    .line 243
    .line 244
    const-string v11, "#99000000"

    .line 245
    .line 246
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    move-result v11

    .line 250
    invoke-direct {v10, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 251
    .line 252
    .line 253
    const v11, 0x7f0b0584

    .line 254
    .line 255
    .line 256
    invoke-static {v9, v10, v8, v4, v11}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 257
    .line 258
    .line 259
    move-result-object v9

    .line 260
    check-cast v9, Landroid/widget/TextView;

    .line 261
    .line 262
    const v10, 0x7f0b0527

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 266
    .line 267
    .line 268
    move-result-object v10

    .line 269
    check-cast v10, Landroid/widget/TextView;

    .line 270
    .line 271
    const v11, 0x7f0b057e

    .line 272
    .line 273
    .line 274
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 275
    .line 276
    .line 277
    move-result-object v11

    .line 278
    check-cast v11, Landroid/widget/TextView;

    .line 279
    .line 280
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    .line 288
    .line 289
    const v3, 0x7f0b014f

    .line 290
    .line 291
    .line 292
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    check-cast v3, Landroid/widget/Button;

    .line 297
    .line 298
    new-instance v6, Lb7/c1;

    .line 299
    .line 300
    invoke-direct {v6, v0, v8, v2}, Lb7/c1;-><init>(Lpe/hf/black20/PlayStreamEPGActivity;Landroid/app/AlertDialog;I)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    .line 305
    .line 306
    const v0, 0x7f0b014b

    .line 307
    .line 308
    .line 309
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    check-cast v0, Landroid/widget/Button;

    .line 314
    .line 315
    new-instance v2, Lb7/b;

    .line 316
    .line 317
    const/4 v4, 0x4

    .line 318
    invoke-direct {v2, v8, v4}, Lb7/b;-><init>(Landroid/app/AlertDialog;I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v3, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 328
    .line 329
    .line 330
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 331
    .line 332
    .line 333
    goto :goto_0

    .line 334
    :cond_2
    const-string v2, "ann"

    .line 335
    .line 336
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    if-eqz v2, :cond_3

    .line 341
    .line 342
    check-cast v0, Lpe/hf/black20/PlayStreamEPGActivity;

    .line 343
    .line 344
    sget-object v2, Lpe/hf/black20/PlayStreamEPGActivity;->THEME:Ljava/lang/String;

    .line 345
    .line 346
    invoke-virtual {v0}, Lpe/hf/black20/PlayStreamEPGActivity;->L()V

    .line 347
    .line 348
    .line 349
    :cond_3
    :goto_0
    return-void

    .line 350
    :pswitch_2
    iget-object v0, v1, LU0/r;->I:Ljava/lang/Object;

    .line 351
    .line 352
    check-cast v0, LZ3/o;

    .line 353
    .line 354
    iget-object v6, v1, LU0/r;->H:Ljava/lang/Object;

    .line 355
    .line 356
    check-cast v6, LO5/b;

    .line 357
    .line 358
    iget-object v0, v0, LZ3/o;->H:Ljava/lang/Object;

    .line 359
    .line 360
    move-object v7, v0

    .line 361
    check-cast v7, LO5/k;

    .line 362
    .line 363
    iget-boolean v0, v7, LO5/k;->d:Z

    .line 364
    .line 365
    iget-object v8, v7, LO5/k;->a:Landroid/app/Activity;

    .line 366
    .line 367
    if-eqz v0, :cond_5

    .line 368
    .line 369
    iget-object v0, v6, LO5/b;->b:LO5/u;

    .line 370
    .line 371
    iget-object v9, v0, LO5/u;->a:LP2/b;

    .line 372
    .line 373
    new-instance v10, Landroid/graphics/Rect;

    .line 374
    .line 375
    iget v11, v9, LP2/b;->c:I

    .line 376
    .line 377
    iget v12, v9, LP2/b;->d:I

    .line 378
    .line 379
    invoke-direct {v10, v3, v3, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 380
    .line 381
    .line 382
    new-instance v11, Landroid/graphics/YuvImage;

    .line 383
    .line 384
    iget-object v14, v9, LP2/b;->b:[B

    .line 385
    .line 386
    iget v12, v9, LP2/b;->c:I

    .line 387
    .line 388
    iget v9, v9, LP2/b;->d:I

    .line 389
    .line 390
    const/16 v18, 0x0

    .line 391
    .line 392
    iget v15, v0, LO5/u;->b:I

    .line 393
    .line 394
    move-object v13, v11

    .line 395
    move/from16 v16, v12

    .line 396
    .line 397
    move/from16 v17, v9

    .line 398
    .line 399
    invoke-direct/range {v13 .. v18}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 400
    .line 401
    .line 402
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    .line 403
    .line 404
    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 405
    .line 406
    .line 407
    const/16 v12, 0x5a

    .line 408
    .line 409
    invoke-virtual {v11, v10, v12, v9}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 410
    .line 411
    .line 412
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 413
    .line 414
    .line 415
    move-result-object v9

    .line 416
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    .line 417
    .line 418
    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 419
    .line 420
    .line 421
    iput v2, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 422
    .line 423
    array-length v2, v9

    .line 424
    invoke-static {v9, v3, v2, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 425
    .line 426
    .line 427
    move-result-object v11

    .line 428
    iget v0, v0, LO5/u;->c:I

    .line 429
    .line 430
    if-eqz v0, :cond_4

    .line 431
    .line 432
    new-instance v2, Landroid/graphics/Matrix;

    .line 433
    .line 434
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 435
    .line 436
    .line 437
    int-to-float v0, v0

    .line 438
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 439
    .line 440
    .line 441
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    .line 442
    .line 443
    .line 444
    move-result v14

    .line 445
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    .line 446
    .line 447
    .line 448
    move-result v15

    .line 449
    const/4 v13, 0x0

    .line 450
    const/16 v17, 0x0

    .line 451
    .line 452
    const/4 v12, 0x0

    .line 453
    move-object/from16 v16, v2

    .line 454
    .line 455
    invoke-static/range {v11 .. v17}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 456
    .line 457
    .line 458
    move-result-object v11

    .line 459
    :cond_4
    :try_start_2
    const-string v0, "barcodeimage"

    .line 460
    .line 461
    const-string v2, ".jpg"

    .line 462
    .line 463
    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 464
    .line 465
    .line 466
    move-result-object v9

    .line 467
    invoke-static {v0, v2, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    new-instance v2, Ljava/io/FileOutputStream;

    .line 472
    .line 473
    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 474
    .line 475
    .line 476
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 477
    .line 478
    const/16 v10, 0x64

    .line 479
    .line 480
    invoke-virtual {v11, v9, v10, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 481
    .line 482
    .line 483
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 490
    goto :goto_1

    .line 491
    :catch_2
    move-exception v0

    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    const-string v9, "Unable to create temporary file and store bitmap! "

    .line 495
    .line 496
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    const-string v2, "k"

    .line 507
    .line 508
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    .line 510
    .line 511
    :cond_5
    :goto_1
    new-instance v0, Landroid/content/Intent;

    .line 512
    .line 513
    const-string v2, "com.google.zxing.client.android.SCAN"

    .line 514
    .line 515
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    const/high16 v2, 0x80000

    .line 519
    .line 520
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 521
    .line 522
    .line 523
    iget-object v2, v6, LO5/b;->a:Lq5/m;

    .line 524
    .line 525
    iget-object v2, v2, Lq5/m;->a:Ljava/lang/String;

    .line 526
    .line 527
    const-string v9, "SCAN_RESULT"

    .line 528
    .line 529
    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    .line 531
    .line 532
    iget-object v2, v6, LO5/b;->a:Lq5/m;

    .line 533
    .line 534
    iget-object v6, v2, Lq5/m;->d:Lq5/a;

    .line 535
    .line 536
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v6

    .line 540
    const-string v9, "SCAN_RESULT_FORMAT"

    .line 541
    .line 542
    invoke-virtual {v0, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    .line 544
    .line 545
    iget-object v6, v2, Lq5/m;->b:[B

    .line 546
    .line 547
    if-eqz v6, :cond_6

    .line 548
    .line 549
    array-length v9, v6

    .line 550
    if-lez v9, :cond_6

    .line 551
    .line 552
    const-string v9, "SCAN_RESULT_BYTES"

    .line 553
    .line 554
    invoke-virtual {v0, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 555
    .line 556
    .line 557
    :cond_6
    iget-object v2, v2, Lq5/m;->e:Ljava/util/Map;

    .line 558
    .line 559
    if-eqz v2, :cond_a

    .line 560
    .line 561
    sget-object v6, Lq5/n;->M:Lq5/n;

    .line 562
    .line 563
    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    move-result v9

    .line 567
    if-eqz v9, :cond_7

    .line 568
    .line 569
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v6

    .line 573
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v6

    .line 577
    const-string v9, "SCAN_RESULT_UPC_EAN_EXTENSION"

    .line 578
    .line 579
    invoke-virtual {v0, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    .line 581
    .line 582
    :cond_7
    sget-object v6, Lq5/n;->G:Lq5/n;

    .line 583
    .line 584
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v6

    .line 588
    check-cast v6, Ljava/lang/Number;

    .line 589
    .line 590
    if-eqz v6, :cond_8

    .line 591
    .line 592
    const-string v9, "SCAN_RESULT_ORIENTATION"

    .line 593
    .line 594
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 595
    .line 596
    .line 597
    move-result v6

    .line 598
    invoke-virtual {v0, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 599
    .line 600
    .line 601
    :cond_8
    sget-object v6, Lq5/n;->I:Lq5/n;

    .line 602
    .line 603
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v6

    .line 607
    check-cast v6, Ljava/lang/String;

    .line 608
    .line 609
    if-eqz v6, :cond_9

    .line 610
    .line 611
    const-string v9, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    .line 612
    .line 613
    invoke-virtual {v0, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    .line 615
    .line 616
    :cond_9
    sget-object v6, Lq5/n;->H:Lq5/n;

    .line 617
    .line 618
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    check-cast v2, Ljava/lang/Iterable;

    .line 623
    .line 624
    if-eqz v2, :cond_a

    .line 625
    .line 626
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 627
    .line 628
    .line 629
    move-result-object v2

    .line 630
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 631
    .line 632
    .line 633
    move-result v6

    .line 634
    if-eqz v6, :cond_a

    .line 635
    .line 636
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v6

    .line 640
    check-cast v6, [B

    .line 641
    .line 642
    new-instance v9, Ljava/lang/StringBuilder;

    .line 643
    .line 644
    const-string v10, "SCAN_RESULT_BYTE_SEGMENTS_"

    .line 645
    .line 646
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v9

    .line 656
    invoke-virtual {v0, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 657
    .line 658
    .line 659
    add-int/2addr v3, v5

    .line 660
    goto :goto_2

    .line 661
    :cond_a
    if-eqz v4, :cond_b

    .line 662
    .line 663
    const-string v2, "SCAN_RESULT_IMAGE_PATH"

    .line 664
    .line 665
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    .line 667
    .line 668
    :cond_b
    const/4 v2, -0x1

    .line 669
    invoke-virtual {v8, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 670
    .line 671
    .line 672
    invoke-virtual {v7}, LO5/k;->a()V

    .line 673
    .line 674
    .line 675
    return-void

    .line 676
    :pswitch_3
    iget-object v0, v1, LU0/r;->I:Ljava/lang/Object;

    .line 677
    .line 678
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 679
    .line 680
    .line 681
    throw v4

    .line 682
    :pswitch_4
    iget-object v0, v1, LU0/r;->I:Ljava/lang/Object;

    .line 683
    .line 684
    check-cast v0, Ljava/util/concurrent/Callable;

    .line 685
    .line 686
    iget-object v2, v1, LU0/r;->H:Ljava/lang/Object;

    .line 687
    .line 688
    check-cast v2, LZ3/o;

    .line 689
    .line 690
    :try_start_3
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    iget-object v3, v2, LZ3/o;->H:Ljava/lang/Object;

    .line 695
    .line 696
    check-cast v3, LN4/c;

    .line 697
    .line 698
    sget v4, LN4/c;->N:I

    .line 699
    .line 700
    invoke-virtual {v3, v0}, Lt/h;->i(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 701
    .line 702
    .line 703
    goto :goto_3

    .line 704
    :catch_3
    move-exception v0

    .line 705
    iget-object v2, v2, LZ3/o;->H:Ljava/lang/Object;

    .line 706
    .line 707
    check-cast v2, LN4/c;

    .line 708
    .line 709
    sget v3, LN4/c;->N:I

    .line 710
    .line 711
    invoke-virtual {v2, v0}, Lt/h;->j(Ljava/lang/Throwable;)Z

    .line 712
    .line 713
    .line 714
    :goto_3
    return-void

    .line 715
    :pswitch_5
    iget-object v0, v1, LU0/r;->I:Ljava/lang/Object;

    .line 716
    .line 717
    check-cast v0, LN4/a;

    .line 718
    .line 719
    iget-object v2, v1, LU0/r;->H:Ljava/lang/Object;

    .line 720
    .line 721
    check-cast v2, Ljava/lang/Runnable;

    .line 722
    .line 723
    const/4 v3, 0x0

    .line 724
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 725
    .line 726
    .line 727
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 731
    .line 732
    .line 733
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 734
    .line 735
    .line 736
    return-void

    .line 737
    :pswitch_6
    iget-object v0, v1, LU0/r;->I:Ljava/lang/Object;

    .line 738
    .line 739
    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    .line 740
    .line 741
    iget-object v2, v1, LU0/r;->H:Ljava/lang/Object;

    .line 742
    .line 743
    check-cast v2, Landroid/app/job/JobParameters;

    .line 744
    .line 745
    sget v4, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;->G:I

    .line 746
    .line 747
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 748
    .line 749
    .line 750
    return-void

    .line 751
    :pswitch_7
    iget-object v0, v1, LU0/r;->I:Ljava/lang/Object;

    .line 752
    .line 753
    check-cast v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 754
    .line 755
    iget-object v2, v1, LU0/r;->H:Ljava/lang/Object;

    .line 756
    .line 757
    check-cast v2, LD4/b;

    .line 758
    .line 759
    const-string v3, "this$0"

    .line 760
    .line 761
    invoke-static {v0, v3}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    const-string v3, "$innerFuture"

    .line 765
    .line 766
    invoke-static {v2, v3}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    iget-object v3, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->L:Ljava/lang/Object;

    .line 770
    .line 771
    monitor-enter v3

    .line 772
    :try_start_4
    iget-boolean v4, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->M:Z

    .line 773
    .line 774
    if-eqz v4, :cond_c

    .line 775
    .line 776
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->N:Lo2/j;

    .line 777
    .line 778
    const-string v2, "future"

    .line 779
    .line 780
    invoke-static {v0, v2}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    sget-object v2, Lq2/a;->a:Ljava/lang/String;

    .line 784
    .line 785
    new-instance v2, Ld2/j;

    .line 786
    .line 787
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v0, v2}, Lo2/j;->j(Ljava/lang/Object;)Z

    .line 791
    .line 792
    .line 793
    goto :goto_4

    .line 794
    :catchall_0
    move-exception v0

    .line 795
    goto :goto_5

    .line 796
    :cond_c
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->N:Lo2/j;

    .line 797
    .line 798
    invoke-virtual {v0, v2}, Lo2/j;->l(LD4/b;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 799
    .line 800
    .line 801
    :goto_4
    monitor-exit v3

    .line 802
    return-void

    .line 803
    :goto_5
    monitor-exit v3

    .line 804
    throw v0

    .line 805
    :pswitch_8
    iget-object v0, v1, LU0/r;->I:Ljava/lang/Object;

    .line 806
    .line 807
    check-cast v0, Ln2/s;

    .line 808
    .line 809
    iget-object v2, v1, LU0/r;->H:Ljava/lang/Object;

    .line 810
    .line 811
    check-cast v2, Lo2/j;

    .line 812
    .line 813
    iget-object v3, v0, Ln2/s;->G:Lo2/j;

    .line 814
    .line 815
    iget-object v3, v3, Lo2/h;->G:Ljava/lang/Object;

    .line 816
    .line 817
    instance-of v3, v3, Lo2/a;

    .line 818
    .line 819
    if-nez v3, :cond_d

    .line 820
    .line 821
    iget-object v0, v0, Ln2/s;->J:Ld2/m;

    .line 822
    .line 823
    invoke-virtual {v0}, Ld2/m;->getForegroundInfoAsync()LD4/b;

    .line 824
    .line 825
    .line 826
    move-result-object v0

    .line 827
    invoke-virtual {v2, v0}, Lo2/j;->l(LD4/b;)Z

    .line 828
    .line 829
    .line 830
    goto :goto_6

    .line 831
    :cond_d
    invoke-virtual {v2, v5}, Lo2/h;->cancel(Z)Z

    .line 832
    .line 833
    .line 834
    :goto_6
    return-void

    .line 835
    :pswitch_9
    iget-object v0, v1, LU0/r;->I:Ljava/lang/Object;

    .line 836
    .line 837
    check-cast v0, Ljava/util/List;

    .line 838
    .line 839
    iget-object v2, v1, LU0/r;->H:Ljava/lang/Object;

    .line 840
    .line 841
    check-cast v2, Lk2/f;

    .line 842
    .line 843
    const-string v3, "$listenersList"

    .line 844
    .line 845
    invoke-static {v0, v3}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    const-string v3, "this$0"

    .line 849
    .line 850
    invoke-static {v2, v3}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 851
    .line 852
    .line 853
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 854
    .line 855
    .line 856
    move-result-object v0

    .line 857
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 858
    .line 859
    .line 860
    move-result v3

    .line 861
    if-eqz v3, :cond_e

    .line 862
    .line 863
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    move-result-object v3

    .line 867
    check-cast v3, Lj2/b;

    .line 868
    .line 869
    iget-object v4, v2, Lk2/f;->e:Ljava/lang/Object;

    .line 870
    .line 871
    iput-object v4, v3, Lj2/b;->d:Ljava/lang/Object;

    .line 872
    .line 873
    iget-object v5, v3, Lj2/b;->e:Li2/c;

    .line 874
    .line 875
    invoke-virtual {v3, v5, v4}, Lj2/b;->d(Li2/c;Ljava/lang/Object;)V

    .line 876
    .line 877
    .line 878
    goto :goto_7

    .line 879
    :cond_e
    return-void

    .line 880
    :pswitch_a
    iget-object v0, v1, LU0/r;->I:Ljava/lang/Object;

    .line 881
    .line 882
    check-cast v0, Le2/A;

    .line 883
    .line 884
    iget-object v2, v1, LU0/r;->H:Ljava/lang/Object;

    .line 885
    .line 886
    check-cast v2, LD4/b;

    .line 887
    .line 888
    iget-object v0, v0, Le2/A;->W:Lo2/j;

    .line 889
    .line 890
    iget-object v0, v0, Lo2/h;->G:Ljava/lang/Object;

    .line 891
    .line 892
    instance-of v0, v0, Lo2/a;

    .line 893
    .line 894
    if-eqz v0, :cond_f

    .line 895
    .line 896
    invoke-interface {v2, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 897
    .line 898
    .line 899
    :cond_f
    return-void

    .line 900
    :pswitch_b
    iget-object v0, v1, LU0/r;->I:Ljava/lang/Object;

    .line 901
    .line 902
    check-cast v0, Ljava/lang/Runnable;

    .line 903
    .line 904
    iget-object v2, v1, LU0/r;->H:Ljava/lang/Object;

    .line 905
    .line 906
    check-cast v2, Lf/u;

    .line 907
    .line 908
    const-string v3, "$command"

    .line 909
    .line 910
    invoke-static {v0, v3}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 911
    .line 912
    .line 913
    const-string v3, "this$0"

    .line 914
    .line 915
    invoke-static {v2, v3}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 916
    .line 917
    .line 918
    :try_start_5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 919
    .line 920
    .line 921
    invoke-virtual {v2}, Lf/u;->b()V

    .line 922
    .line 923
    .line 924
    return-void

    .line 925
    :catchall_1
    move-exception v0

    .line 926
    move-object v3, v0

    .line 927
    invoke-virtual {v2}, Lf/u;->b()V

    .line 928
    .line 929
    .line 930
    throw v3

    .line 931
    :pswitch_c
    invoke-direct/range {p0 .. p0}, LU0/r;->a()V

    .line 932
    .line 933
    .line 934
    return-void

    .line 935
    :pswitch_d
    iget-object v0, v1, LU0/r;->I:Ljava/lang/Object;

    .line 936
    .line 937
    check-cast v0, Landroidx/media3/ui/PlayerView;

    .line 938
    .line 939
    iget-object v2, v1, LU0/r;->H:Ljava/lang/Object;

    .line 940
    .line 941
    check-cast v2, Landroid/graphics/Bitmap;

    .line 942
    .line 943
    invoke-static {v0, v2}, Landroidx/media3/ui/PlayerView;->a(Landroidx/media3/ui/PlayerView;Landroid/graphics/Bitmap;)V

    .line 944
    .line 945
    .line 946
    return-void

    .line 947
    :pswitch_e
    iget-object v0, v1, LU0/r;->I:Ljava/lang/Object;

    .line 948
    .line 949
    check-cast v0, LV0/k;

    .line 950
    .line 951
    iget-object v2, v1, LU0/r;->H:Ljava/lang/Object;

    .line 952
    .line 953
    check-cast v2, Landroid/graphics/SurfaceTexture;

    .line 954
    .line 955
    iget-object v3, v0, LV0/k;->M:Landroid/graphics/SurfaceTexture;

    .line 956
    .line 957
    iget-object v4, v0, LV0/k;->N:Landroid/view/Surface;

    .line 958
    .line 959
    new-instance v5, Landroid/view/Surface;

    .line 960
    .line 961
    invoke-direct {v5, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 962
    .line 963
    .line 964
    iput-object v2, v0, LV0/k;->M:Landroid/graphics/SurfaceTexture;

    .line 965
    .line 966
    iput-object v5, v0, LV0/k;->N:Landroid/view/Surface;

    .line 967
    .line 968
    iget-object v0, v0, LV0/k;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 969
    .line 970
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 971
    .line 972
    .line 973
    move-result-object v0

    .line 974
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 975
    .line 976
    .line 977
    move-result v2

    .line 978
    if-eqz v2, :cond_10

    .line 979
    .line 980
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 981
    .line 982
    .line 983
    move-result-object v2

    .line 984
    check-cast v2, LB0/L;

    .line 985
    .line 986
    iget-object v2, v2, LB0/L;->G:LB0/O;

    .line 987
    .line 988
    invoke-virtual {v2, v5}, LB0/O;->V(Ljava/lang/Object;)V

    .line 989
    .line 990
    .line 991
    goto :goto_8

    .line 992
    :cond_10
    if-eqz v3, :cond_11

    .line 993
    .line 994
    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->release()V

    .line 995
    .line 996
    .line 997
    :cond_11
    if-eqz v4, :cond_12

    .line 998
    .line 999
    invoke-virtual {v4}, Landroid/view/Surface;->release()V

    .line 1000
    .line 1001
    .line 1002
    :cond_12
    return-void

    .line 1003
    :pswitch_f
    iget-object v0, v1, LU0/r;->I:Ljava/lang/Object;

    .line 1004
    .line 1005
    check-cast v0, Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 1006
    .line 1007
    iget-object v2, v1, LU0/r;->H:Ljava/lang/Object;

    .line 1008
    .line 1009
    check-cast v2, Ljava/lang/String;

    .line 1010
    .line 1011
    iget-object v0, v0, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 1012
    .line 1013
    check-cast v0, LU0/N;

    .line 1014
    .line 1015
    sget-object v3, Lp0/M;->a:Ljava/lang/String;

    .line 1016
    .line 1017
    check-cast v0, LB0/L;

    .line 1018
    .line 1019
    iget-object v0, v0, LB0/L;->G:LB0/O;

    .line 1020
    .line 1021
    iget-object v0, v0, LB0/O;->X:LC0/a;

    .line 1022
    .line 1023
    check-cast v0, LC0/A;

    .line 1024
    .line 1025
    invoke-virtual {v0}, LC0/A;->T()LC0/b;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v3

    .line 1029
    new-instance v4, LC0/s;

    .line 1030
    .line 1031
    invoke-direct {v4, v3, v2, v5}, LC0/s;-><init>(LC0/b;Ljava/lang/String;I)V

    .line 1032
    .line 1033
    .line 1034
    const/16 v2, 0x3fb

    .line 1035
    .line 1036
    invoke-virtual {v0, v3, v2, v4}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 1037
    .line 1038
    .line 1039
    return-void

    .line 1040
    :pswitch_10
    iget-object v0, v1, LU0/r;->I:Ljava/lang/Object;

    .line 1041
    .line 1042
    check-cast v0, Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 1043
    .line 1044
    iget-object v2, v1, LU0/r;->H:Ljava/lang/Object;

    .line 1045
    .line 1046
    check-cast v2, Ljava/lang/Exception;

    .line 1047
    .line 1048
    iget-object v0, v0, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 1049
    .line 1050
    check-cast v0, LU0/N;

    .line 1051
    .line 1052
    sget-object v4, Lp0/M;->a:Ljava/lang/String;

    .line 1053
    .line 1054
    check-cast v0, LB0/L;

    .line 1055
    .line 1056
    iget-object v0, v0, LB0/L;->G:LB0/O;

    .line 1057
    .line 1058
    iget-object v0, v0, LB0/O;->X:LC0/a;

    .line 1059
    .line 1060
    check-cast v0, LC0/A;

    .line 1061
    .line 1062
    invoke-virtual {v0}, LC0/A;->T()LC0/b;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v4

    .line 1066
    new-instance v5, LC0/v;

    .line 1067
    .line 1068
    invoke-direct {v5, v4, v2, v3}, LC0/v;-><init>(LC0/b;Ljava/lang/Exception;I)V

    .line 1069
    .line 1070
    .line 1071
    const/16 v2, 0x406

    .line 1072
    .line 1073
    invoke-virtual {v0, v4, v2, v5}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 1074
    .line 1075
    .line 1076
    return-void

    .line 1077
    :pswitch_11
    iget-object v0, v1, LU0/r;->I:Ljava/lang/Object;

    .line 1078
    .line 1079
    check-cast v0, Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 1080
    .line 1081
    iget-object v2, v1, LU0/r;->H:Ljava/lang/Object;

    .line 1082
    .line 1083
    check-cast v2, Lm0/w0;

    .line 1084
    .line 1085
    iget-object v0, v0, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 1086
    .line 1087
    check-cast v0, LU0/N;

    .line 1088
    .line 1089
    sget-object v3, Lp0/M;->a:Ljava/lang/String;

    .line 1090
    .line 1091
    check-cast v0, LB0/L;

    .line 1092
    .line 1093
    iget-object v0, v0, LB0/L;->G:LB0/O;

    .line 1094
    .line 1095
    iput-object v2, v0, LB0/O;->L0:Lm0/w0;

    .line 1096
    .line 1097
    new-instance v3, LB0/x;

    .line 1098
    .line 1099
    const/16 v4, 0xd

    .line 1100
    .line 1101
    invoke-direct {v3, v2, v4}, LB0/x;-><init>(Ljava/lang/Object;I)V

    .line 1102
    .line 1103
    .line 1104
    const/16 v2, 0x19

    .line 1105
    .line 1106
    iget-object v0, v0, LB0/O;->S:Lx/e;

    .line 1107
    .line 1108
    invoke-virtual {v0, v2, v3}, Lx/e;->l(ILp0/u;)V

    .line 1109
    .line 1110
    .line 1111
    return-void

    .line 1112
    :pswitch_12
    iget-object v0, v1, LU0/r;->I:Ljava/lang/Object;

    .line 1113
    .line 1114
    check-cast v0, LU0/O;

    .line 1115
    .line 1116
    iget-object v2, v1, LU0/r;->H:Ljava/lang/Object;

    .line 1117
    .line 1118
    check-cast v2, Lm0/w0;

    .line 1119
    .line 1120
    invoke-interface {v0, v2}, LU0/O;->g(Lm0/w0;)V

    .line 1121
    .line 1122
    .line 1123
    return-void

    .line 1124
    nop

    .line 1125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
