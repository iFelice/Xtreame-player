.class public final Landroidx/leanback/widget/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/leanback/widget/H;->a:I

    iput-object p1, p0, Landroidx/leanback/widget/H;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 7

    .line 1
    iget p3, p0, Landroidx/leanback/widget/H;->a:I

    .line 2
    .line 3
    const-string v0, "search"

    .line 4
    .line 5
    const-string v1, "input_method"

    .line 6
    .line 7
    const v2, 0x7f130212

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    iget-object v4, p0, Landroidx/leanback/widget/H;->b:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x3

    .line 15
    packed-switch p3, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    if-ne p2, v6, :cond_1

    .line 19
    .line 20
    check-cast v4, Lb7/S0;

    .line 21
    .line 22
    iget-object p2, v4, Lb7/S0;->Q0:Landroid/widget/EditText;

    .line 23
    .line 24
    invoke-static {p2}, La/r;->s(Landroid/widget/EditText;)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    iget-object p1, v4, Lb7/S0;->Q0:Landroid/widget/EditText;

    .line 31
    .line 32
    invoke-virtual {v4}, LY/s;->l()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iput-boolean v5, v4, Lb7/S0;->j1:Z

    .line 45
    .line 46
    iput-object v0, v4, Lb7/S0;->e1:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v4}, LY/s;->l()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 57
    .line 58
    iget-object p3, v4, Lb7/S0;->Q0:Landroid/widget/EditText;

    .line 59
    .line 60
    invoke-virtual {p3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-virtual {p2, p3, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 65
    .line 66
    .line 67
    iget-object p2, v4, Lb7/S0;->Q0:Landroid/widget/EditText;

    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {v4, p2}, Lb7/S0;->W(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, p1, v3}, Lb7/S0;->Z(Landroid/view/View;Z)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const/4 v3, 0x0

    .line 85
    :goto_0
    return v3

    .line 86
    :pswitch_0
    if-ne p2, v6, :cond_3

    .line 87
    .line 88
    check-cast v4, Lb7/M0;

    .line 89
    .line 90
    iget-object p2, v4, Lb7/M0;->Q0:Landroid/widget/EditText;

    .line 91
    .line 92
    invoke-static {p2}, La/r;->s(Landroid/widget/EditText;)Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-eqz p2, :cond_2

    .line 97
    .line 98
    iget-object p1, v4, Lb7/M0;->Q0:Landroid/widget/EditText;

    .line 99
    .line 100
    invoke-virtual {v4}, LY/s;->l()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    invoke-virtual {v4}, LY/s;->l()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 121
    .line 122
    iget-object p3, v4, Lb7/M0;->Q0:Landroid/widget/EditText;

    .line 123
    .line 124
    invoke-virtual {p3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    invoke-virtual {p2, p3, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 129
    .line 130
    .line 131
    iget-object p2, v4, Lb7/M0;->Q0:Landroid/widget/EditText;

    .line 132
    .line 133
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-virtual {v4, v0, p2}, Lb7/M0;->U(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4, p1, v3}, Lb7/M0;->V(Landroid/view/View;Z)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_3
    const/4 v3, 0x0

    .line 149
    :goto_1
    return v3

    .line 150
    :pswitch_1
    if-ne p2, v6, :cond_5

    .line 151
    .line 152
    check-cast v4, Lb7/I0;

    .line 153
    .line 154
    iget-object p2, v4, Lb7/I0;->k1:Landroid/widget/EditText;

    .line 155
    .line 156
    invoke-static {p2}, La/r;->s(Landroid/widget/EditText;)Z

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    if-eqz p2, :cond_4

    .line 161
    .line 162
    iget-object p1, v4, Lb7/I0;->k1:Landroid/widget/EditText;

    .line 163
    .line 164
    invoke-virtual {v4}, LY/s;->l()Landroid/content/Context;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_4
    iput-boolean v5, v4, Lb7/I0;->o1:Z

    .line 177
    .line 178
    iput-object v0, v4, Lb7/I0;->p1:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v4}, LY/s;->l()Landroid/content/Context;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 189
    .line 190
    iget-object p3, v4, Lb7/I0;->k1:Landroid/widget/EditText;

    .line 191
    .line 192
    invoke-virtual {p3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 193
    .line 194
    .line 195
    move-result-object p3

    .line 196
    invoke-virtual {p2, p3, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 197
    .line 198
    .line 199
    iget-object p2, v4, Lb7/I0;->k1:Landroid/widget/EditText;

    .line 200
    .line 201
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    invoke-virtual {v4, p2}, Lb7/I0;->U(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4, p1, v3}, Lb7/I0;->W(Landroid/view/View;Z)V

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_5
    const/4 v3, 0x0

    .line 217
    :goto_2
    return v3

    .line 218
    :pswitch_2
    if-ne p2, v6, :cond_b

    .line 219
    .line 220
    check-cast v4, Lpe/hf/black20/ChannelListActivity;

    .line 221
    .line 222
    iget-object p1, v4, Lpe/hf/black20/ChannelListActivity;->a0:Landroid/widget/EditText;

    .line 223
    .line 224
    invoke-static {p1}, La/r;->s(Landroid/widget/EditText;)Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-eqz p1, :cond_6

    .line 229
    .line 230
    iget-object p1, v4, Lpe/hf/black20/ChannelListActivity;->a0:Landroid/widget/EditText;

    .line 231
    .line 232
    iget-object p2, v4, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

    .line 233
    .line 234
    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 239
    .line 240
    .line 241
    goto :goto_5

    .line 242
    :cond_6
    invoke-virtual {v4, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 247
    .line 248
    iget-object p2, v4, Lpe/hf/black20/ChannelListActivity;->a0:Landroid/widget/EditText;

    .line 249
    .line 250
    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    invoke-virtual {p1, p2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 255
    .line 256
    .line 257
    const-string p1, "yes"

    .line 258
    .line 259
    iput-object p1, v4, Lpe/hf/black20/ChannelListActivity;->f0:Ljava/lang/String;

    .line 260
    .line 261
    const-string p1, "ORT_WHICH_CAT"

    .line 262
    .line 263
    const-string p2, "TV"

    .line 264
    .line 265
    invoke-static {p1, p2, p2}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 266
    .line 267
    .line 268
    move-result p3

    .line 269
    if-nez p3, :cond_9

    .line 270
    .line 271
    const-string p3, "FAV"

    .line 272
    .line 273
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 274
    .line 275
    .line 276
    move-result p3

    .line 277
    if-eqz p3, :cond_7

    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_7
    const-string p3, "VOD"

    .line 281
    .line 282
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 283
    .line 284
    .line 285
    move-result p3

    .line 286
    const/4 v0, 0x0

    .line 287
    if-eqz p3, :cond_8

    .line 288
    .line 289
    new-instance p1, Lb7/D;

    .line 290
    .line 291
    invoke-direct {p1, v4, v0}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;Lb7/A;)V

    .line 292
    .line 293
    .line 294
    new-array p2, v5, [Ljava/lang/Void;

    .line 295
    .line 296
    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 297
    .line 298
    .line 299
    goto :goto_4

    .line 300
    :cond_8
    const-string p3, "SERIES"

    .line 301
    .line 302
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 303
    .line 304
    .line 305
    move-result p1

    .line 306
    if-eqz p1, :cond_a

    .line 307
    .line 308
    new-instance p1, Lb7/D;

    .line 309
    .line 310
    invoke-direct {p1, v4, v0}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;Lb7/y;)V

    .line 311
    .line 312
    .line 313
    new-array p2, v5, [Ljava/lang/Void;

    .line 314
    .line 315
    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 316
    .line 317
    .line 318
    goto :goto_4

    .line 319
    :cond_9
    :goto_3
    new-instance p1, Lb7/D;

    .line 320
    .line 321
    const/4 p2, 0x6

    .line 322
    invoke-direct {p1, v4, p2}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;I)V

    .line 323
    .line 324
    .line 325
    new-array p2, v5, [Ljava/lang/Void;

    .line 326
    .line 327
    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 328
    .line 329
    .line 330
    :cond_a
    :goto_4
    iget-object p1, v4, Lpe/hf/black20/ChannelListActivity;->d0:Landroid/widget/FrameLayout;

    .line 331
    .line 332
    const/16 p2, 0x8

    .line 333
    .line 334
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 335
    .line 336
    .line 337
    goto :goto_5

    .line 338
    :cond_b
    const/4 v3, 0x0

    .line 339
    :goto_5
    return v3

    .line 340
    :pswitch_3
    if-eq v6, p2, :cond_c

    .line 341
    .line 342
    if-nez p2, :cond_d

    .line 343
    .line 344
    :cond_c
    move-object p1, v4

    .line 345
    check-cast p1, Landroidx/leanback/widget/SearchBar;

    .line 346
    .line 347
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 348
    .line 349
    .line 350
    :cond_d
    if-ne v3, p2, :cond_e

    .line 351
    .line 352
    move-object p1, v4

    .line 353
    check-cast p1, Landroidx/leanback/widget/SearchBar;

    .line 354
    .line 355
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    .line 357
    .line 358
    :cond_e
    const/4 p1, 0x2

    .line 359
    if-ne p1, p2, :cond_f

    .line 360
    .line 361
    check-cast v4, Landroidx/leanback/widget/SearchBar;

    .line 362
    .line 363
    iget-object p1, v4, Landroidx/leanback/widget/SearchBar;->G:Landroidx/leanback/widget/SearchEditText;

    .line 364
    .line 365
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    iget-object p2, v4, Landroidx/leanback/widget/SearchBar;->O:Landroid/view/inputmethod/InputMethodManager;

    .line 370
    .line 371
    invoke-virtual {p2, p1, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 372
    .line 373
    .line 374
    iget-object p1, v4, Landroidx/leanback/widget/SearchBar;->N:Landroid/os/Handler;

    .line 375
    .line 376
    new-instance p2, Landroidx/leanback/widget/G;

    .line 377
    .line 378
    invoke-direct {p2, p0}, Landroidx/leanback/widget/G;-><init>(Landroidx/leanback/widget/H;)V

    .line 379
    .line 380
    .line 381
    const-wide/16 v0, 0x1f4

    .line 382
    .line 383
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 384
    .line 385
    .line 386
    goto :goto_6

    .line 387
    :cond_f
    const/4 v3, 0x0

    .line 388
    :goto_6
    return v3

    .line 389
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
