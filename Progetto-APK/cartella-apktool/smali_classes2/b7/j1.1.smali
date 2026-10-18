.class public final Lb7/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lpe/hf/black20/PlayerSettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/PlayerSettingsActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/j1;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/j1;->H:Lpe/hf/black20/PlayerSettingsActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "100"

    .line 4
    .line 5
    iget v2, v0, Lb7/j1;->G:I

    .line 6
    .line 7
    const-string v3, "80"

    .line 8
    .line 9
    const-string v4, "70"

    .line 10
    .line 11
    const-string v5, "60"

    .line 12
    .line 13
    const-string v6, "no"

    .line 14
    .line 15
    const-string v7, "2"

    .line 16
    .line 17
    const-string v8, "1"

    .line 18
    .line 19
    const-string v9, "0"

    .line 20
    .line 21
    const-string v10, "10000"

    .line 22
    .line 23
    const-string v11, "plyer_exo_buffer"

    .line 24
    .line 25
    const-string v12, "video_subtiltes_exo"

    .line 26
    .line 27
    const-string v13, "video_resize_exo"

    .line 28
    .line 29
    const-string v15, "vlc_hw"

    .line 30
    .line 31
    const-string v14, "plyer_vlc_buffer"

    .line 32
    .line 33
    move-object/from16 v16, v1

    .line 34
    .line 35
    const-string v1, "video_subtiltes_vlc"

    .line 36
    .line 37
    move-object/from16 v17, v3

    .line 38
    .line 39
    const-string v3, "video_resize_vlc"

    .line 40
    .line 41
    move-object/from16 v18, v4

    .line 42
    .line 43
    const-string v4, "3"

    .line 44
    .line 45
    move-object/from16 v19, v5

    .line 46
    .line 47
    const-string v5, "4"

    .line 48
    .line 49
    move-object/from16 v20, v6

    .line 50
    .line 51
    const-string v6, "90"

    .line 52
    .line 53
    move-object/from16 v21, v7

    .line 54
    .line 55
    const-string v7, "last_volume"

    .line 56
    .line 57
    move-object/from16 v22, v8

    .line 58
    .line 59
    const-string v8, "yes"

    .line 60
    .line 61
    move-object/from16 v23, v9

    .line 62
    .line 63
    iget-object v9, v0, Lb7/j1;->H:Lpe/hf/black20/PlayerSettingsActivity;

    .line 64
    .line 65
    packed-switch v2, :pswitch_data_0

    .line 66
    .line 67
    .line 68
    iget-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->H:Landroid/content/SharedPreferences;

    .line 69
    .line 70
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    .line 76
    .line 77
    invoke-interface {v2, v1, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    .line 79
    .line 80
    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    .line 82
    .line 83
    const-string v1, "300"

    .line 84
    .line 85
    invoke-interface {v2, v14, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    .line 87
    .line 88
    invoke-interface {v2, v15, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    .line 90
    .line 91
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 92
    .line 93
    .line 94
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    .line 96
    .line 97
    iget-object v1, v9, Lpe/hf/black20/PlayerSettingsActivity;->k0:Landroid/widget/RadioButton;

    .line 98
    .line 99
    const/4 v2, 0x1

    .line 100
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 101
    .line 102
    .line 103
    iget-object v1, v9, Lpe/hf/black20/PlayerSettingsActivity;->p0:Landroid/widget/RadioButton;

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 106
    .line 107
    .line 108
    iget-object v1, v9, Lpe/hf/black20/PlayerSettingsActivity;->b0:Landroid/widget/RadioButton;

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 111
    .line 112
    .line 113
    iget-object v1, v9, Lpe/hf/black20/PlayerSettingsActivity;->j0:Landroid/widget/RadioButton;

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 116
    .line 117
    .line 118
    iget-object v1, v9, Lpe/hf/black20/PlayerSettingsActivity;->r0:Landroid/widget/RadioButton;

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :pswitch_0
    iget-object v1, v9, Lpe/hf/black20/PlayerSettingsActivity;->H:Landroid/content/SharedPreferences;

    .line 125
    .line 126
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-interface {v1, v13, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    .line 132
    .line 133
    invoke-interface {v1, v12, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    .line 135
    .line 136
    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 137
    .line 138
    .line 139
    invoke-interface {v1, v11, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    .line 141
    .line 142
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    .line 144
    .line 145
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    .line 147
    .line 148
    iget-object v1, v9, Lpe/hf/black20/PlayerSettingsActivity;->T:Landroid/widget/RadioButton;

    .line 149
    .line 150
    const/4 v2, 0x1

    .line 151
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 152
    .line 153
    .line 154
    iget-object v1, v9, Lpe/hf/black20/PlayerSettingsActivity;->Y:Landroid/widget/RadioButton;

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 157
    .line 158
    .line 159
    iget-object v1, v9, Lpe/hf/black20/PlayerSettingsActivity;->M:Landroid/widget/RadioButton;

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 162
    .line 163
    .line 164
    iget-object v1, v9, Lpe/hf/black20/PlayerSettingsActivity;->R:Landroid/widget/RadioButton;

    .line 165
    .line 166
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :pswitch_1
    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :pswitch_2
    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :pswitch_3
    iget-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->a0:Landroid/widget/RadioButton;

    .line 179
    .line 180
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_0

    .line 185
    .line 186
    const-string v2, "1000"

    .line 187
    .line 188
    iput-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->G0:Ljava/lang/String;

    .line 189
    .line 190
    :cond_0
    iget-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->b0:Landroid/widget/RadioButton;

    .line 191
    .line 192
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-eqz v2, :cond_1

    .line 197
    .line 198
    const-string v2, "1500"

    .line 199
    .line 200
    iput-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->G0:Ljava/lang/String;

    .line 201
    .line 202
    :cond_1
    iget-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->c0:Landroid/widget/RadioButton;

    .line 203
    .line 204
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_2

    .line 209
    .line 210
    const-string v2, "2000"

    .line 211
    .line 212
    iput-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->G0:Ljava/lang/String;

    .line 213
    .line 214
    :cond_2
    iget-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->d0:Landroid/widget/RadioButton;

    .line 215
    .line 216
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-eqz v2, :cond_3

    .line 221
    .line 222
    const-string v2, "3000"

    .line 223
    .line 224
    iput-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->G0:Ljava/lang/String;

    .line 225
    .line 226
    :cond_3
    iget-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->e0:Landroid/widget/RadioButton;

    .line 227
    .line 228
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    if-eqz v2, :cond_4

    .line 233
    .line 234
    const-string v2, "5000"

    .line 235
    .line 236
    iput-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->G0:Ljava/lang/String;

    .line 237
    .line 238
    :cond_4
    iget-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->f0:Landroid/widget/RadioButton;

    .line 239
    .line 240
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    if-eqz v2, :cond_5

    .line 245
    .line 246
    move-object/from16 v2, v23

    .line 247
    .line 248
    iput-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->F0:Ljava/lang/String;

    .line 249
    .line 250
    :cond_5
    iget-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->g0:Landroid/widget/RadioButton;

    .line 251
    .line 252
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    if-eqz v2, :cond_6

    .line 257
    .line 258
    move-object/from16 v2, v22

    .line 259
    .line 260
    iput-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->F0:Ljava/lang/String;

    .line 261
    .line 262
    :cond_6
    iget-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->h0:Landroid/widget/RadioButton;

    .line 263
    .line 264
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-eqz v2, :cond_7

    .line 269
    .line 270
    move-object/from16 v2, v21

    .line 271
    .line 272
    iput-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->F0:Ljava/lang/String;

    .line 273
    .line 274
    :cond_7
    iget-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->i0:Landroid/widget/RadioButton;

    .line 275
    .line 276
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    if-eqz v2, :cond_8

    .line 281
    .line 282
    iput-object v4, v9, Lpe/hf/black20/PlayerSettingsActivity;->F0:Ljava/lang/String;

    .line 283
    .line 284
    :cond_8
    iget-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->j0:Landroid/widget/RadioButton;

    .line 285
    .line 286
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-eqz v2, :cond_9

    .line 291
    .line 292
    iput-object v5, v9, Lpe/hf/black20/PlayerSettingsActivity;->F0:Ljava/lang/String;

    .line 293
    .line 294
    :cond_9
    iget-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->k0:Landroid/widget/RadioButton;

    .line 295
    .line 296
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    if-eqz v2, :cond_a

    .line 301
    .line 302
    iput-object v8, v9, Lpe/hf/black20/PlayerSettingsActivity;->D0:Ljava/lang/String;

    .line 303
    .line 304
    :cond_a
    iget-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->l0:Landroid/widget/RadioButton;

    .line 305
    .line 306
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-eqz v2, :cond_b

    .line 311
    .line 312
    move-object/from16 v2, v20

    .line 313
    .line 314
    iput-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->D0:Ljava/lang/String;

    .line 315
    .line 316
    goto :goto_0

    .line 317
    :cond_b
    move-object/from16 v2, v20

    .line 318
    .line 319
    :goto_0
    iget-object v4, v9, Lpe/hf/black20/PlayerSettingsActivity;->m0:Landroid/widget/RadioButton;

    .line 320
    .line 321
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    if-eqz v4, :cond_c

    .line 326
    .line 327
    move-object/from16 v4, v19

    .line 328
    .line 329
    iput-object v4, v9, Lpe/hf/black20/PlayerSettingsActivity;->A0:Ljava/lang/String;

    .line 330
    .line 331
    :cond_c
    iget-object v4, v9, Lpe/hf/black20/PlayerSettingsActivity;->n0:Landroid/widget/RadioButton;

    .line 332
    .line 333
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 334
    .line 335
    .line 336
    move-result v4

    .line 337
    if-eqz v4, :cond_d

    .line 338
    .line 339
    move-object/from16 v4, v18

    .line 340
    .line 341
    iput-object v4, v9, Lpe/hf/black20/PlayerSettingsActivity;->A0:Ljava/lang/String;

    .line 342
    .line 343
    :cond_d
    iget-object v4, v9, Lpe/hf/black20/PlayerSettingsActivity;->o0:Landroid/widget/RadioButton;

    .line 344
    .line 345
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    if-eqz v4, :cond_e

    .line 350
    .line 351
    move-object/from16 v4, v17

    .line 352
    .line 353
    iput-object v4, v9, Lpe/hf/black20/PlayerSettingsActivity;->A0:Ljava/lang/String;

    .line 354
    .line 355
    :cond_e
    iget-object v4, v9, Lpe/hf/black20/PlayerSettingsActivity;->p0:Landroid/widget/RadioButton;

    .line 356
    .line 357
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 358
    .line 359
    .line 360
    move-result v4

    .line 361
    if-eqz v4, :cond_f

    .line 362
    .line 363
    iput-object v6, v9, Lpe/hf/black20/PlayerSettingsActivity;->A0:Ljava/lang/String;

    .line 364
    .line 365
    :cond_f
    iget-object v4, v9, Lpe/hf/black20/PlayerSettingsActivity;->q0:Landroid/widget/RadioButton;

    .line 366
    .line 367
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 368
    .line 369
    .line 370
    move-result v4

    .line 371
    if-eqz v4, :cond_10

    .line 372
    .line 373
    move-object/from16 v4, v16

    .line 374
    .line 375
    iput-object v4, v9, Lpe/hf/black20/PlayerSettingsActivity;->A0:Ljava/lang/String;

    .line 376
    .line 377
    :cond_10
    iget-object v4, v9, Lpe/hf/black20/PlayerSettingsActivity;->s0:Landroid/widget/RadioButton;

    .line 378
    .line 379
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 380
    .line 381
    .line 382
    move-result v4

    .line 383
    if-eqz v4, :cond_11

    .line 384
    .line 385
    iput-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->H0:Ljava/lang/String;

    .line 386
    .line 387
    :cond_11
    iget-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->r0:Landroid/widget/RadioButton;

    .line 388
    .line 389
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 390
    .line 391
    .line 392
    move-result v2

    .line 393
    if-eqz v2, :cond_12

    .line 394
    .line 395
    iput-object v8, v9, Lpe/hf/black20/PlayerSettingsActivity;->H0:Ljava/lang/String;

    .line 396
    .line 397
    :cond_12
    iget-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->H:Landroid/content/SharedPreferences;

    .line 398
    .line 399
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    iget-object v4, v9, Lpe/hf/black20/PlayerSettingsActivity;->F0:Ljava/lang/String;

    .line 404
    .line 405
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 406
    .line 407
    .line 408
    iget-object v3, v9, Lpe/hf/black20/PlayerSettingsActivity;->D0:Ljava/lang/String;

    .line 409
    .line 410
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 411
    .line 412
    .line 413
    iget-object v1, v9, Lpe/hf/black20/PlayerSettingsActivity;->A0:Ljava/lang/String;

    .line 414
    .line 415
    invoke-interface {v2, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 416
    .line 417
    .line 418
    iget-object v1, v9, Lpe/hf/black20/PlayerSettingsActivity;->G0:Ljava/lang/String;

    .line 419
    .line 420
    invoke-interface {v2, v14, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 421
    .line 422
    .line 423
    iget-object v1, v9, Lpe/hf/black20/PlayerSettingsActivity;->H0:Ljava/lang/String;

    .line 424
    .line 425
    invoke-interface {v2, v15, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 426
    .line 427
    .line 428
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 429
    .line 430
    .line 431
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 432
    .line 433
    .line 434
    return-void

    .line 435
    :pswitch_4
    move-object/from16 p1, v11

    .line 436
    .line 437
    move-object/from16 v1, v16

    .line 438
    .line 439
    move-object/from16 v3, v17

    .line 440
    .line 441
    move-object/from16 v14, v18

    .line 442
    .line 443
    move-object/from16 v15, v19

    .line 444
    .line 445
    move-object/from16 v0, v20

    .line 446
    .line 447
    move-object/from16 v11, v21

    .line 448
    .line 449
    move-object/from16 v2, v23

    .line 450
    .line 451
    move-object/from16 v16, v7

    .line 452
    .line 453
    move-object/from16 v17, v12

    .line 454
    .line 455
    move-object/from16 v7, v22

    .line 456
    .line 457
    iget-object v12, v9, Lpe/hf/black20/PlayerSettingsActivity;->I:Landroid/widget/RadioButton;

    .line 458
    .line 459
    invoke-virtual {v12}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 460
    .line 461
    .line 462
    move-result v12

    .line 463
    if-eqz v12, :cond_13

    .line 464
    .line 465
    iput-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->B0:Ljava/lang/String;

    .line 466
    .line 467
    :cond_13
    iget-object v12, v9, Lpe/hf/black20/PlayerSettingsActivity;->J:Landroid/widget/RadioButton;

    .line 468
    .line 469
    invoke-virtual {v12}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 470
    .line 471
    .line 472
    move-result v12

    .line 473
    if-eqz v12, :cond_14

    .line 474
    .line 475
    iput-object v10, v9, Lpe/hf/black20/PlayerSettingsActivity;->B0:Ljava/lang/String;

    .line 476
    .line 477
    :cond_14
    iget-object v10, v9, Lpe/hf/black20/PlayerSettingsActivity;->K:Landroid/widget/RadioButton;

    .line 478
    .line 479
    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 480
    .line 481
    .line 482
    move-result v10

    .line 483
    if-eqz v10, :cond_15

    .line 484
    .line 485
    const-string v10, "20000"

    .line 486
    .line 487
    iput-object v10, v9, Lpe/hf/black20/PlayerSettingsActivity;->B0:Ljava/lang/String;

    .line 488
    .line 489
    :cond_15
    iget-object v10, v9, Lpe/hf/black20/PlayerSettingsActivity;->L:Landroid/widget/RadioButton;

    .line 490
    .line 491
    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 492
    .line 493
    .line 494
    move-result v10

    .line 495
    if-eqz v10, :cond_16

    .line 496
    .line 497
    const-string v10, "30000"

    .line 498
    .line 499
    iput-object v10, v9, Lpe/hf/black20/PlayerSettingsActivity;->B0:Ljava/lang/String;

    .line 500
    .line 501
    :cond_16
    iget-object v10, v9, Lpe/hf/black20/PlayerSettingsActivity;->M:Landroid/widget/RadioButton;

    .line 502
    .line 503
    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 504
    .line 505
    .line 506
    move-result v10

    .line 507
    if-eqz v10, :cond_17

    .line 508
    .line 509
    const-string v10, "40000"

    .line 510
    .line 511
    iput-object v10, v9, Lpe/hf/black20/PlayerSettingsActivity;->B0:Ljava/lang/String;

    .line 512
    .line 513
    :cond_17
    iget-object v10, v9, Lpe/hf/black20/PlayerSettingsActivity;->N:Landroid/widget/RadioButton;

    .line 514
    .line 515
    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 516
    .line 517
    .line 518
    move-result v10

    .line 519
    if-eqz v10, :cond_18

    .line 520
    .line 521
    const-string v10, "50000"

    .line 522
    .line 523
    iput-object v10, v9, Lpe/hf/black20/PlayerSettingsActivity;->B0:Ljava/lang/String;

    .line 524
    .line 525
    :cond_18
    iget-object v10, v9, Lpe/hf/black20/PlayerSettingsActivity;->O:Landroid/widget/RadioButton;

    .line 526
    .line 527
    invoke-virtual {v10}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 528
    .line 529
    .line 530
    move-result v10

    .line 531
    if-eqz v10, :cond_19

    .line 532
    .line 533
    iput-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->E0:Ljava/lang/String;

    .line 534
    .line 535
    :cond_19
    iget-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->P:Landroid/widget/RadioButton;

    .line 536
    .line 537
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 538
    .line 539
    .line 540
    move-result v2

    .line 541
    if-eqz v2, :cond_1a

    .line 542
    .line 543
    iput-object v11, v9, Lpe/hf/black20/PlayerSettingsActivity;->E0:Ljava/lang/String;

    .line 544
    .line 545
    :cond_1a
    iget-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->Q:Landroid/widget/RadioButton;

    .line 546
    .line 547
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 548
    .line 549
    .line 550
    move-result v2

    .line 551
    if-eqz v2, :cond_1b

    .line 552
    .line 553
    iput-object v7, v9, Lpe/hf/black20/PlayerSettingsActivity;->E0:Ljava/lang/String;

    .line 554
    .line 555
    :cond_1b
    iget-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->R:Landroid/widget/RadioButton;

    .line 556
    .line 557
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 558
    .line 559
    .line 560
    move-result v2

    .line 561
    if-eqz v2, :cond_1c

    .line 562
    .line 563
    iput-object v4, v9, Lpe/hf/black20/PlayerSettingsActivity;->E0:Ljava/lang/String;

    .line 564
    .line 565
    :cond_1c
    iget-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->S:Landroid/widget/RadioButton;

    .line 566
    .line 567
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 568
    .line 569
    .line 570
    move-result v2

    .line 571
    if-eqz v2, :cond_1d

    .line 572
    .line 573
    iput-object v5, v9, Lpe/hf/black20/PlayerSettingsActivity;->E0:Ljava/lang/String;

    .line 574
    .line 575
    :cond_1d
    iget-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->T:Landroid/widget/RadioButton;

    .line 576
    .line 577
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 578
    .line 579
    .line 580
    move-result v2

    .line 581
    if-eqz v2, :cond_1e

    .line 582
    .line 583
    iput-object v8, v9, Lpe/hf/black20/PlayerSettingsActivity;->C0:Ljava/lang/String;

    .line 584
    .line 585
    :cond_1e
    iget-object v2, v9, Lpe/hf/black20/PlayerSettingsActivity;->U:Landroid/widget/RadioButton;

    .line 586
    .line 587
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 588
    .line 589
    .line 590
    move-result v2

    .line 591
    if-eqz v2, :cond_1f

    .line 592
    .line 593
    iput-object v0, v9, Lpe/hf/black20/PlayerSettingsActivity;->C0:Ljava/lang/String;

    .line 594
    .line 595
    :cond_1f
    iget-object v0, v9, Lpe/hf/black20/PlayerSettingsActivity;->V:Landroid/widget/RadioButton;

    .line 596
    .line 597
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 598
    .line 599
    .line 600
    move-result v0

    .line 601
    if-eqz v0, :cond_20

    .line 602
    .line 603
    iput-object v15, v9, Lpe/hf/black20/PlayerSettingsActivity;->z0:Ljava/lang/String;

    .line 604
    .line 605
    :cond_20
    iget-object v0, v9, Lpe/hf/black20/PlayerSettingsActivity;->W:Landroid/widget/RadioButton;

    .line 606
    .line 607
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 608
    .line 609
    .line 610
    move-result v0

    .line 611
    if-eqz v0, :cond_21

    .line 612
    .line 613
    iput-object v14, v9, Lpe/hf/black20/PlayerSettingsActivity;->z0:Ljava/lang/String;

    .line 614
    .line 615
    :cond_21
    iget-object v0, v9, Lpe/hf/black20/PlayerSettingsActivity;->X:Landroid/widget/RadioButton;

    .line 616
    .line 617
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 618
    .line 619
    .line 620
    move-result v0

    .line 621
    if-eqz v0, :cond_22

    .line 622
    .line 623
    iput-object v3, v9, Lpe/hf/black20/PlayerSettingsActivity;->z0:Ljava/lang/String;

    .line 624
    .line 625
    :cond_22
    iget-object v0, v9, Lpe/hf/black20/PlayerSettingsActivity;->Y:Landroid/widget/RadioButton;

    .line 626
    .line 627
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 628
    .line 629
    .line 630
    move-result v0

    .line 631
    if-eqz v0, :cond_23

    .line 632
    .line 633
    iput-object v6, v9, Lpe/hf/black20/PlayerSettingsActivity;->z0:Ljava/lang/String;

    .line 634
    .line 635
    :cond_23
    iget-object v0, v9, Lpe/hf/black20/PlayerSettingsActivity;->Z:Landroid/widget/RadioButton;

    .line 636
    .line 637
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 638
    .line 639
    .line 640
    move-result v0

    .line 641
    if-eqz v0, :cond_24

    .line 642
    .line 643
    iput-object v1, v9, Lpe/hf/black20/PlayerSettingsActivity;->z0:Ljava/lang/String;

    .line 644
    .line 645
    :cond_24
    iget-object v0, v9, Lpe/hf/black20/PlayerSettingsActivity;->H:Landroid/content/SharedPreferences;

    .line 646
    .line 647
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    iget-object v1, v9, Lpe/hf/black20/PlayerSettingsActivity;->E0:Ljava/lang/String;

    .line 652
    .line 653
    invoke-interface {v0, v13, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 654
    .line 655
    .line 656
    iget-object v1, v9, Lpe/hf/black20/PlayerSettingsActivity;->C0:Ljava/lang/String;

    .line 657
    .line 658
    move-object/from16 v2, v17

    .line 659
    .line 660
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 661
    .line 662
    .line 663
    iget-object v1, v9, Lpe/hf/black20/PlayerSettingsActivity;->z0:Ljava/lang/String;

    .line 664
    .line 665
    move-object/from16 v2, v16

    .line 666
    .line 667
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 668
    .line 669
    .line 670
    iget-object v1, v9, Lpe/hf/black20/PlayerSettingsActivity;->B0:Ljava/lang/String;

    .line 671
    .line 672
    move-object/from16 v2, p1

    .line 673
    .line 674
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 675
    .line 676
    .line 677
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 678
    .line 679
    .line 680
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 681
    .line 682
    .line 683
    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    .line 684
    .line 685
    .line 686
    return-void

    .line 687
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
