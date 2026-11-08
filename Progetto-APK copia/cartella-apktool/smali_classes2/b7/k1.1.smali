.class public final Lb7/k1;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/ArrayList;

.field public d:Ljava/util/HashMap;

.field public final e:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(ILandroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    iput p1, p0, Lb7/k1;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance p1, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lb7/k1;->d:Ljava/util/HashMap;

    .line 16
    .line 17
    iput-object p2, p0, Lb7/k1;->b:Landroid/content/Context;

    .line 18
    .line 19
    iput-object p3, p0, Lb7/k1;->c:Ljava/util/ArrayList;

    .line 20
    .line 21
    const-string p1, "pe.hf.black20"

    .line 22
    .line 23
    const/4 p3, 0x0

    .line 24
    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lb7/k1;->e:Landroid/content/SharedPreferences;

    .line 29
    .line 30
    const-string p2, "timeShiftHR"

    .line 31
    .line 32
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    iget-object p1, p0, Lb7/k1;->e:Landroid/content/SharedPreferences;

    .line 39
    .line 40
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lb7/k1;->e:Landroid/content/SharedPreferences;

    .line 48
    .line 49
    const-string p2, "timeShiftMin"

    .line 50
    .line 51
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void

    .line 59
    :cond_1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance p1, Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lb7/k1;->d:Ljava/util/HashMap;

    .line 68
    .line 69
    iput-object v1, p0, Lb7/k1;->e:Landroid/content/SharedPreferences;

    .line 70
    .line 71
    iput-object p2, p0, Lb7/k1;->b:Landroid/content/Context;

    .line 72
    .line 73
    iput-object p3, p0, Lb7/k1;->c:Ljava/util/ArrayList;

    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lb7/k1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb7/k1;->c:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0

    .line 13
    :pswitch_0
    iget-object v0, p0, Lb7/k1;->c:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1
    iget p2, p0, Lb7/k1;->a:I

    .line 2
    .line 3
    const-string v0, "layout_inflater"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    packed-switch p2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    const-string p2, "ORT_isDemo"

    .line 10
    .line 11
    iget-object v2, p0, Lb7/k1;->b:Landroid/content/Context;

    .line 12
    .line 13
    const-string v3, "pe.hf.black20"

    .line 14
    .line 15
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "timeShiftHR"

    .line 20
    .line 21
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    const-string v3, "timeShiftMin"

    .line 36
    .line 37
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v2, p0, Lb7/k1;->b:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/view/LayoutInflater;

    .line 51
    .line 52
    const v2, 0x7f0e002f

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    iget-object v0, p0, Lb7/k1;->c:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Ljava/util/HashMap;

    .line 66
    .line 67
    iput-object v0, p0, Lb7/k1;->d:Ljava/util/HashMap;

    .line 68
    .line 69
    const v0, 0x7f0b00b6

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Landroid/widget/TextView;

    .line 77
    .line 78
    const v2, 0x7f0b028c

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Landroid/widget/ImageView;

    .line 86
    .line 87
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 88
    .line 89
    sget v4, Lpe/hf/black20/epg/EPGActivityXMLTV;->n0:I

    .line 90
    .line 91
    sget v5, Lpe/hf/black20/epg/EPGActivityXMLTV;->m0:I

    .line 92
    .line 93
    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 94
    .line 95
    .line 96
    sget v4, Lpe/hf/black20/epg/EPGActivityXMLTV;->p0:I

    .line 97
    .line 98
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 99
    .line 100
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 101
    .line 102
    const/16 v4, 0x11

    .line 103
    .line 104
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .line 108
    .line 109
    iget-object v3, p0, Lb7/k1;->d:Ljava/util/HashMap;

    .line 110
    .line 111
    const-string v4, "stream_icon"

    .line 112
    .line 113
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Ljava/lang/String;

    .line 118
    .line 119
    const-string v5, ""

    .line 120
    .line 121
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-nez v3, :cond_2

    .line 126
    .line 127
    iget-object v3, p0, Lb7/k1;->d:Ljava/util/HashMap;

    .line 128
    .line 129
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    check-cast v3, Ljava/lang/String;

    .line 134
    .line 135
    const-string v5, "null"

    .line 136
    .line 137
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-nez v3, :cond_2

    .line 142
    .line 143
    iget-object v3, p0, Lb7/k1;->d:Ljava/util/HashMap;

    .line 144
    .line 145
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    if-nez v3, :cond_1

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_1
    iget-object v3, p0, Lb7/k1;->d:Ljava/util/HashMap;

    .line 153
    .line 154
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    check-cast v3, Ljava/lang/String;

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_2
    :goto_0
    const-string v3, "0"

    .line 162
    .line 163
    :goto_1
    :try_start_0
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {v4, p2, v1}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    const v5, 0x7f08086d

    .line 172
    .line 173
    .line 174
    if-eqz v4, :cond_3

    .line 175
    .line 176
    iget-object v4, p0, Lb7/k1;->b:Landroid/content/Context;

    .line 177
    .line 178
    invoke-static {v4}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-virtual {v4, v3}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v3}, LL2/a;->b()LL2/a;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    check-cast v3, Lcom/bumptech/glide/l;

    .line 191
    .line 192
    invoke-virtual {v3, v5}, LL2/a;->m(I)LL2/a;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    check-cast v3, Lcom/bumptech/glide/l;

    .line 197
    .line 198
    invoke-virtual {v3, v5}, LL2/a;->f(I)LL2/a;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    check-cast v3, Lcom/bumptech/glide/l;

    .line 203
    .line 204
    invoke-virtual {v3, v2}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_3
    iget-object v4, p0, Lb7/k1;->b:Landroid/content/Context;

    .line 209
    .line 210
    invoke-static {v4}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-virtual {v4, v3}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-virtual {v3}, LL2/a;->g()LL2/a;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    check-cast v3, Lcom/bumptech/glide/l;

    .line 223
    .line 224
    invoke-virtual {v3, v5}, LL2/a;->m(I)LL2/a;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    check-cast v3, Lcom/bumptech/glide/l;

    .line 229
    .line 230
    invoke-virtual {v3, v5}, LL2/a;->f(I)LL2/a;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    check-cast v3, Lcom/bumptech/glide/l;

    .line 235
    .line 236
    invoke-virtual {v3, v2}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .line 238
    .line 239
    goto :goto_2

    .line 240
    :catch_0
    const-string v3, "XCIPTV_TAG"

    .line 241
    .line 242
    const-string v4, "Picasso Crashed"

    .line 243
    .line 244
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    :goto_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 248
    .line 249
    sget v4, Lpe/hf/black20/epg/EPGActivityXMLTV;->n0:I

    .line 250
    .line 251
    sget v5, Lpe/hf/black20/epg/EPGActivityXMLTV;->m0:I

    .line 252
    .line 253
    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 254
    .line 255
    .line 256
    sget v4, Lpe/hf/black20/epg/EPGActivityXMLTV;->r0:I

    .line 257
    .line 258
    sget v5, Lpe/hf/black20/epg/EPGActivityXMLTV;->p0:I

    .line 259
    .line 260
    sub-int/2addr v4, v5

    .line 261
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 262
    .line 263
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 264
    .line 265
    sget v4, Lpe/hf/black20/epg/EPGActivityXMLTV;->o0:I

    .line 266
    .line 267
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    .line 272
    .line 273
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-virtual {v3, p2, v1}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 278
    .line 279
    .line 280
    move-result p2

    .line 281
    if-eqz p2, :cond_4

    .line 282
    .line 283
    new-instance p2, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    const-string v3, "CHANNEL "

    .line 286
    .line 287
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    .line 303
    .line 304
    goto :goto_3

    .line 305
    :cond_4
    iget-object p1, p0, Lb7/k1;->d:Ljava/util/HashMap;

    .line 306
    .line 307
    const-string p2, "name"

    .line 308
    .line 309
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    check-cast p1, Ljava/lang/CharSequence;

    .line 314
    .line 315
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    .line 317
    .line 318
    :goto_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 325
    .line 326
    .line 327
    return-object p3

    .line 328
    :pswitch_0
    iget-object p2, p0, Lb7/k1;->b:Landroid/content/Context;

    .line 329
    .line 330
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object p2

    .line 334
    check-cast p2, Landroid/view/LayoutInflater;

    .line 335
    .line 336
    const v0, 0x7f0e0048

    .line 337
    .line 338
    .line 339
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 340
    .line 341
    .line 342
    move-result-object p2

    .line 343
    iget-object p3, p0, Lb7/k1;->c:Ljava/util/ArrayList;

    .line 344
    .line 345
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    check-cast p1, Ljava/util/HashMap;

    .line 350
    .line 351
    iput-object p1, p0, Lb7/k1;->d:Ljava/util/HashMap;

    .line 352
    .line 353
    const p1, 0x7f0b0531

    .line 354
    .line 355
    .line 356
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    check-cast p1, Landroid/widget/TextView;

    .line 361
    .line 362
    const p3, 0x7f0b052f

    .line 363
    .line 364
    .line 365
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 366
    .line 367
    .line 368
    move-result-object p3

    .line 369
    check-cast p3, Landroid/widget/TextView;

    .line 370
    .line 371
    const v0, 0x7f0b0530

    .line 372
    .line 373
    .line 374
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    check-cast v0, Landroid/widget/TextView;

    .line 379
    .line 380
    const v1, 0x7f0b0595

    .line 381
    .line 382
    .line 383
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    check-cast v1, Landroid/widget/TextView;

    .line 388
    .line 389
    const/16 v2, 0x8

    .line 390
    .line 391
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 392
    .line 393
    .line 394
    iget-object v1, p0, Lb7/k1;->d:Ljava/util/HashMap;

    .line 395
    .line 396
    const-string v2, "pr_status"

    .line 397
    .line 398
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    check-cast v1, Ljava/lang/String;

    .line 403
    .line 404
    const-string v3, "new"

    .line 405
    .line 406
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v3

    .line 410
    if-eqz v3, :cond_5

    .line 411
    .line 412
    const-string v1, "#FFC300"

    .line 413
    .line 414
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 419
    .line 420
    .line 421
    const-string v1, "UPCOMING"

    .line 422
    .line 423
    goto :goto_4

    .line 424
    :cond_5
    iget-object v3, p0, Lb7/k1;->d:Ljava/util/HashMap;

    .line 425
    .line 426
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    check-cast v3, Ljava/lang/String;

    .line 431
    .line 432
    const-string v4, "active"

    .line 433
    .line 434
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v3

    .line 438
    if-nez v3, :cond_6

    .line 439
    .line 440
    iget-object v3, p0, Lb7/k1;->d:Ljava/util/HashMap;

    .line 441
    .line 442
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    check-cast v2, Ljava/lang/String;

    .line 447
    .line 448
    const-string v3, "notified"

    .line 449
    .line 450
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    if-eqz v2, :cond_7

    .line 455
    .line 456
    :cond_6
    const-string v1, "#53E74C"

    .line 457
    .line 458
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 459
    .line 460
    .line 461
    move-result v1

    .line 462
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 463
    .line 464
    .line 465
    const-string v1, "NOW"

    .line 466
    .line 467
    :cond_7
    :goto_4
    iget-object v2, p0, Lb7/k1;->d:Ljava/util/HashMap;

    .line 468
    .line 469
    const-string v3, "end_time"

    .line 470
    .line 471
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    check-cast v2, Ljava/lang/String;

    .line 476
    .line 477
    iget-object v4, p0, Lb7/k1;->b:Landroid/content/Context;

    .line 478
    .line 479
    const v5, 0x7f1300e5

    .line 480
    .line 481
    .line 482
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    move-result v2

    .line 490
    if-nez v2, :cond_8

    .line 491
    .line 492
    invoke-static {}, Lpe/hf/black20/util/Methods;->H()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    iget-object v4, p0, Lb7/k1;->d:Ljava/util/HashMap;

    .line 497
    .line 498
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v4

    .line 502
    check-cast v4, Ljava/lang/String;

    .line 503
    .line 504
    invoke-static {v2, v4}, Lpe/hf/black20/util/Methods;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v2

    .line 508
    const-string v4, "larger"

    .line 509
    .line 510
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v2

    .line 514
    if-eqz v2, :cond_8

    .line 515
    .line 516
    new-instance v1, Lc7/c;

    .line 517
    .line 518
    iget-object v2, p0, Lb7/k1;->b:Landroid/content/Context;

    .line 519
    .line 520
    const/4 v4, 0x1

    .line 521
    invoke-direct {v1, v2, v4}, Lc7/c;-><init>(Landroid/content/Context;I)V

    .line 522
    .line 523
    .line 524
    iget-object v2, p0, Lb7/k1;->d:Ljava/util/HashMap;

    .line 525
    .line 526
    const-string v4, "id"

    .line 527
    .line 528
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    check-cast v2, Ljava/lang/String;

    .line 533
    .line 534
    const-string v4, "passed"

    .line 535
    .line 536
    invoke-virtual {v1, v2, v4}, Lc7/c;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    const-string v1, "#C70039"

    .line 540
    .line 541
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 542
    .line 543
    .line 544
    move-result v1

    .line 545
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 546
    .line 547
    .line 548
    const-string v1, "PASSED"

    .line 549
    .line 550
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 551
    .line 552
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 553
    .line 554
    .line 555
    iget-object v4, p0, Lb7/k1;->d:Ljava/util/HashMap;

    .line 556
    .line 557
    const-string v5, "channel_name"

    .line 558
    .line 559
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object v4

    .line 563
    check-cast v4, Ljava/lang/String;

    .line 564
    .line 565
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    const-string v4, " - "

    .line 569
    .line 570
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    iget-object v5, p0, Lb7/k1;->d:Ljava/util/HashMap;

    .line 574
    .line 575
    const-string v6, "show_name"

    .line 576
    .line 577
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v5

    .line 581
    check-cast v5, Ljava/lang/String;

    .line 582
    .line 583
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v2

    .line 590
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    .line 592
    .line 593
    new-instance p1, Ljava/lang/StringBuilder;

    .line 594
    .line 595
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    .line 597
    .line 598
    iget-object v2, p0, Lb7/k1;->d:Ljava/util/HashMap;

    .line 599
    .line 600
    const-string v5, "start_time"

    .line 601
    .line 602
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v2

    .line 606
    check-cast v2, Ljava/lang/String;

    .line 607
    .line 608
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    iget-object v2, p0, Lb7/k1;->d:Ljava/util/HashMap;

    .line 615
    .line 616
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v2

    .line 620
    check-cast v2, Ljava/lang/String;

    .line 621
    .line 622
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    const-string v2, " ("

    .line 626
    .line 627
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    const-string v1, ")"

    .line 634
    .line 635
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object p1

    .line 642
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    .line 644
    .line 645
    iget-object p1, p0, Lb7/k1;->d:Ljava/util/HashMap;

    .line 646
    .line 647
    const-string p3, "category_name"

    .line 648
    .line 649
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object p1

    .line 653
    check-cast p1, Ljava/lang/CharSequence;

    .line 654
    .line 655
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    .line 657
    .line 658
    return-object p2

    .line 659
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
