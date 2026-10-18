.class public final Lb7/M;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/ArrayList;

.field public d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    iput p1, p0, Lb7/M;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lb7/M;->d:Ljava/util/HashMap;

    .line 24
    .line 25
    iput-object p2, p0, Lb7/M;->b:Landroid/content/Context;

    .line 26
    .line 27
    iput-object p3, p0, Lb7/M;->c:Ljava/util/ArrayList;

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance p1, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lb7/M;->d:Ljava/util/HashMap;

    .line 39
    .line 40
    iput-object p2, p0, Lb7/M;->b:Landroid/content/Context;

    .line 41
    .line 42
    iput-object p3, p0, Lb7/M;->c:Ljava/util/ArrayList;

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance p1, Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lb7/M;->d:Ljava/util/HashMap;

    .line 54
    .line 55
    iput-object p2, p0, Lb7/M;->b:Landroid/content/Context;

    .line 56
    .line 57
    iput-object p3, p0, Lb7/M;->c:Ljava/util/ArrayList;

    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 61
    .line 62
    .line 63
    new-instance p1, Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lb7/M;->d:Ljava/util/HashMap;

    .line 69
    .line 70
    iput-object p2, p0, Lb7/M;->b:Landroid/content/Context;

    .line 71
    .line 72
    iput-object p3, p0, Lb7/M;->c:Ljava/util/ArrayList;

    .line 73
    .line 74
    return-void

    .line 75
    :cond_3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 76
    .line 77
    .line 78
    new-instance p1, Ljava/util/HashMap;

    .line 79
    .line 80
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object p1, p0, Lb7/M;->d:Ljava/util/HashMap;

    .line 84
    .line 85
    iput-object p2, p0, Lb7/M;->b:Landroid/content/Context;

    .line 86
    .line 87
    iput-object p3, p0, Lb7/M;->c:Ljava/util/ArrayList;

    .line 88
    .line 89
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lb7/M;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb7/M;->c:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lb7/M;->c:Ljava/util/ArrayList;

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
    :pswitch_1
    iget-object v0, p0, Lb7/M;->c:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :pswitch_2
    iget-object v0, p0, Lb7/M;->c:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    return v0

    .line 34
    :pswitch_3
    iget-object v0, p0, Lb7/M;->c:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    return v0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
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
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget v3, v0, Lb7/M;->a:I

    .line 8
    .line 9
    const/16 v4, 0x8

    .line 10
    .line 11
    const-string v6, "category_id"

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    const-string v8, "category_name"

    .line 15
    .line 16
    const v9, 0x7f0b0295

    .line 17
    .line 18
    .line 19
    const v10, 0x7f0e001e

    .line 20
    .line 21
    .line 22
    const-string v11, "ORT_PROFILE"

    .line 23
    .line 24
    const-string v12, "Default (XC)"

    .line 25
    .line 26
    const-string v13, "yes"

    .line 27
    .line 28
    const v14, 0x7f0b0510

    .line 29
    .line 30
    .line 31
    const/4 v15, 0x0

    .line 32
    const-string v5, "layout_inflater"

    .line 33
    .line 34
    packed-switch v3, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    iget-object v3, v0, Lb7/M;->b:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Landroid/view/LayoutInflater;

    .line 44
    .line 45
    const v5, 0x7f0e0048

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v5, v2, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget-object v3, v0, Lb7/M;->c:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Ljava/util/HashMap;

    .line 59
    .line 60
    iput-object v1, v0, Lb7/M;->d:Ljava/util/HashMap;

    .line 61
    .line 62
    const v1, 0x7f0b0531

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Landroid/widget/TextView;

    .line 70
    .line 71
    const v3, 0x7f0b052f

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Landroid/widget/TextView;

    .line 79
    .line 80
    const v5, 0x7f0b0530

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    check-cast v5, Landroid/widget/TextView;

    .line 88
    .line 89
    const v6, 0x7f0b0595

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    check-cast v6, Landroid/widget/TextView;

    .line 97
    .line 98
    iget-object v7, v0, Lb7/M;->d:Ljava/util/HashMap;

    .line 99
    .line 100
    const-string v8, "title"

    .line 101
    .line 102
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    check-cast v7, Ljava/lang/CharSequence;

    .line 107
    .line 108
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    iget-object v1, v0, Lb7/M;->d:Ljava/util/HashMap;

    .line 112
    .line 113
    const-string v7, "length"

    .line 114
    .line 115
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Ljava/lang/String;

    .line 120
    .line 121
    const-string v8, "0"

    .line 122
    .line 123
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    const-string v8, "date"

    .line 128
    .line 129
    if-eqz v1, :cond_0

    .line 130
    .line 131
    iget-object v1, v0, Lb7/M;->d:Ljava/util/HashMap;

    .line 132
    .line 133
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Ljava/lang/CharSequence;

    .line 138
    .line 139
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    iget-object v9, v0, Lb7/M;->d:Ljava/util/HashMap;

    .line 149
    .line 150
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    check-cast v9, Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v9, " ( "

    .line 160
    .line 161
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget-object v9, v0, Lb7/M;->d:Ljava/util/HashMap;

    .line 165
    .line 166
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    check-cast v7, Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v7, " Minutes)"

    .line 176
    .line 177
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    :goto_0
    iget-object v1, v0, Lb7/M;->d:Ljava/util/HashMap;

    .line 188
    .line 189
    const-string v3, "path"

    .line 190
    .line 191
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    check-cast v1, Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    .line 199
    .line 200
    iget-object v1, v0, Lb7/M;->d:Ljava/util/HashMap;

    .line 201
    .line 202
    const-string v3, "status"

    .line 203
    .line 204
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    check-cast v1, Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    const-string v5, "scheduled"

    .line 215
    .line 216
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-eqz v1, :cond_2

    .line 221
    .line 222
    invoke-static {}, Lpe/hf/black20/util/Methods;->H()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    iget-object v3, v0, Lb7/M;->d:Ljava/util/HashMap;

    .line 227
    .line 228
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    check-cast v3, Ljava/lang/String;

    .line 233
    .line 234
    invoke-static {v1, v3}, Lpe/hf/black20/util/Methods;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    const-string v3, "larger"

    .line 239
    .line 240
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_1

    .line 245
    .line 246
    const-string v1, "Passed/Failed"

    .line 247
    .line 248
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    .line 250
    .line 251
    const-string v1, "#FF5733"

    .line 252
    .line 253
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    invoke-virtual {v6, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 258
    .line 259
    .line 260
    goto :goto_1

    .line 261
    :cond_1
    const-string v1, "Scheduled"

    .line 262
    .line 263
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    .line 265
    .line 266
    const-string v1, "#DEB600"

    .line 267
    .line 268
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    invoke-virtual {v6, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 273
    .line 274
    .line 275
    goto :goto_1

    .line 276
    :cond_2
    iget-object v1, v0, Lb7/M;->d:Ljava/util/HashMap;

    .line 277
    .line 278
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    check-cast v1, Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    const-string v5, "recorded"

    .line 289
    .line 290
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    if-eqz v1, :cond_3

    .line 295
    .line 296
    const-string v1, "Recorded"

    .line 297
    .line 298
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    .line 300
    .line 301
    const-string v1, "#08B52D"

    .line 302
    .line 303
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    invoke-virtual {v6, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 308
    .line 309
    .line 310
    goto :goto_1

    .line 311
    :cond_3
    iget-object v1, v0, Lb7/M;->d:Ljava/util/HashMap;

    .line 312
    .line 313
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    check-cast v1, Ljava/lang/String;

    .line 318
    .line 319
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    const-string v3, "recording now"

    .line 324
    .line 325
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    if-eqz v1, :cond_4

    .line 330
    .line 331
    const-string v1, "Recording Now"

    .line 332
    .line 333
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    .line 335
    .line 336
    const-string v1, "#C70039"

    .line 337
    .line 338
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    invoke-virtual {v6, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 343
    .line 344
    .line 345
    goto :goto_1

    .line 346
    :cond_4
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 347
    .line 348
    .line 349
    :goto_1
    return-object v2

    .line 350
    :pswitch_0
    new-instance v3, Lpe/hf/black20/util/b;

    .line 351
    .line 352
    iget-object v4, v0, Lb7/M;->b:Landroid/content/Context;

    .line 353
    .line 354
    check-cast v4, Landroid/app/Activity;

    .line 355
    .line 356
    invoke-direct {v3, v4}, Lpe/hf/black20/util/b;-><init>(Landroid/app/Activity;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v3}, Lpe/hf/black20/util/b;->a()F

    .line 360
    .line 361
    .line 362
    new-instance v3, Lc7/a;

    .line 363
    .line 364
    iget-object v4, v0, Lb7/M;->b:Landroid/content/Context;

    .line 365
    .line 366
    invoke-direct {v3, v4, v15}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 367
    .line 368
    .line 369
    invoke-static {v11, v12, v3}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    iget-object v4, v0, Lb7/M;->b:Landroid/content/Context;

    .line 374
    .line 375
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    check-cast v4, Landroid/view/LayoutInflater;

    .line 380
    .line 381
    invoke-virtual {v4, v10, v2, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    iget-object v4, v0, Lb7/M;->c:Ljava/util/ArrayList;

    .line 386
    .line 387
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    check-cast v1, Ljava/util/HashMap;

    .line 392
    .line 393
    iput-object v1, v0, Lb7/M;->d:Ljava/util/HashMap;

    .line 394
    .line 395
    invoke-virtual {v2, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    check-cast v1, Landroid/widget/TextView;

    .line 400
    .line 401
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    check-cast v4, Landroid/widget/ImageView;

    .line 406
    .line 407
    iget-object v5, v0, Lb7/M;->d:Ljava/util/HashMap;

    .line 408
    .line 409
    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    check-cast v5, Ljava/lang/String;

    .line 414
    .line 415
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    .line 421
    .line 422
    new-instance v1, Lc7/b;

    .line 423
    .line 424
    iget-object v5, v0, Lb7/M;->b:Landroid/content/Context;

    .line 425
    .line 426
    invoke-direct {v1, v5, v7}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 427
    .line 428
    .line 429
    iget-object v5, v0, Lb7/M;->d:Ljava/util/HashMap;

    .line 430
    .line 431
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v5

    .line 435
    check-cast v5, Ljava/lang/String;

    .line 436
    .line 437
    iget-object v3, v3, Lh7/i;->a:Ljava/lang/String;

    .line 438
    .line 439
    const-string v6, "VOD"

    .line 440
    .line 441
    invoke-virtual {v1, v5, v6, v3}, Lc7/b;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    if-eqz v1, :cond_5

    .line 450
    .line 451
    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 452
    .line 453
    .line 454
    goto :goto_2

    .line 455
    :cond_5
    const/4 v1, 0x4

    .line 456
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 457
    .line 458
    .line 459
    :goto_2
    return-object v2

    .line 460
    :pswitch_1
    new-instance v3, Lc7/a;

    .line 461
    .line 462
    iget-object v4, v0, Lb7/M;->b:Landroid/content/Context;

    .line 463
    .line 464
    invoke-direct {v3, v4, v15}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 465
    .line 466
    .line 467
    invoke-static {v11, v12, v3}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    new-instance v4, Lpe/hf/black20/util/b;

    .line 472
    .line 473
    iget-object v11, v0, Lb7/M;->b:Landroid/content/Context;

    .line 474
    .line 475
    check-cast v11, Landroid/app/Activity;

    .line 476
    .line 477
    invoke-direct {v4, v11}, Lpe/hf/black20/util/b;-><init>(Landroid/app/Activity;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v4}, Lpe/hf/black20/util/b;->a()F

    .line 481
    .line 482
    .line 483
    iget-object v4, v0, Lb7/M;->b:Landroid/content/Context;

    .line 484
    .line 485
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v4

    .line 489
    check-cast v4, Landroid/view/LayoutInflater;

    .line 490
    .line 491
    invoke-virtual {v4, v10, v2, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    iget-object v4, v0, Lb7/M;->c:Ljava/util/ArrayList;

    .line 496
    .line 497
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    check-cast v1, Ljava/util/HashMap;

    .line 502
    .line 503
    iput-object v1, v0, Lb7/M;->d:Ljava/util/HashMap;

    .line 504
    .line 505
    invoke-virtual {v2, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    check-cast v1, Landroid/widget/TextView;

    .line 510
    .line 511
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 512
    .line 513
    .line 514
    move-result-object v4

    .line 515
    check-cast v4, Landroid/widget/ImageView;

    .line 516
    .line 517
    iget-object v5, v0, Lb7/M;->d:Ljava/util/HashMap;

    .line 518
    .line 519
    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v5

    .line 523
    check-cast v5, Ljava/lang/String;

    .line 524
    .line 525
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v5

    .line 529
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    .line 531
    .line 532
    new-instance v1, Lc7/b;

    .line 533
    .line 534
    iget-object v5, v0, Lb7/M;->b:Landroid/content/Context;

    .line 535
    .line 536
    invoke-direct {v1, v5, v7}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 537
    .line 538
    .line 539
    iget-object v5, v0, Lb7/M;->d:Ljava/util/HashMap;

    .line 540
    .line 541
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v5

    .line 545
    check-cast v5, Ljava/lang/String;

    .line 546
    .line 547
    iget-object v3, v3, Lh7/i;->a:Ljava/lang/String;

    .line 548
    .line 549
    const-string v6, "TV"

    .line 550
    .line 551
    invoke-virtual {v1, v5, v6, v3}, Lc7/b;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    move-result v1

    .line 559
    if-eqz v1, :cond_6

    .line 560
    .line 561
    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 562
    .line 563
    .line 564
    goto :goto_3

    .line 565
    :cond_6
    const/4 v1, 0x4

    .line 566
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 567
    .line 568
    .line 569
    :goto_3
    return-object v2

    .line 570
    :pswitch_2
    new-instance v3, Lpe/hf/black20/util/b;

    .line 571
    .line 572
    iget-object v4, v0, Lb7/M;->b:Landroid/content/Context;

    .line 573
    .line 574
    check-cast v4, Landroid/app/Activity;

    .line 575
    .line 576
    invoke-direct {v3, v4}, Lpe/hf/black20/util/b;-><init>(Landroid/app/Activity;)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v3}, Lpe/hf/black20/util/b;->a()F

    .line 580
    .line 581
    .line 582
    new-instance v3, Lc7/a;

    .line 583
    .line 584
    iget-object v4, v0, Lb7/M;->b:Landroid/content/Context;

    .line 585
    .line 586
    invoke-direct {v3, v4, v15}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 587
    .line 588
    .line 589
    invoke-static {v11, v12, v3}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 590
    .line 591
    .line 592
    move-result-object v3

    .line 593
    iget-object v4, v0, Lb7/M;->b:Landroid/content/Context;

    .line 594
    .line 595
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v4

    .line 599
    check-cast v4, Landroid/view/LayoutInflater;

    .line 600
    .line 601
    invoke-virtual {v4, v10, v2, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    iget-object v4, v0, Lb7/M;->c:Ljava/util/ArrayList;

    .line 606
    .line 607
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v1

    .line 611
    check-cast v1, Ljava/util/HashMap;

    .line 612
    .line 613
    iput-object v1, v0, Lb7/M;->d:Ljava/util/HashMap;

    .line 614
    .line 615
    invoke-virtual {v2, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 616
    .line 617
    .line 618
    move-result-object v1

    .line 619
    check-cast v1, Landroid/widget/TextView;

    .line 620
    .line 621
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 622
    .line 623
    .line 624
    move-result-object v4

    .line 625
    check-cast v4, Landroid/widget/ImageView;

    .line 626
    .line 627
    iget-object v5, v0, Lb7/M;->d:Ljava/util/HashMap;

    .line 628
    .line 629
    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v5

    .line 633
    check-cast v5, Ljava/lang/String;

    .line 634
    .line 635
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v5

    .line 639
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    .line 641
    .line 642
    new-instance v1, Lc7/b;

    .line 643
    .line 644
    iget-object v5, v0, Lb7/M;->b:Landroid/content/Context;

    .line 645
    .line 646
    invoke-direct {v1, v5, v7}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 647
    .line 648
    .line 649
    iget-object v5, v0, Lb7/M;->d:Ljava/util/HashMap;

    .line 650
    .line 651
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    move-result-object v5

    .line 655
    check-cast v5, Ljava/lang/String;

    .line 656
    .line 657
    iget-object v3, v3, Lh7/i;->a:Ljava/lang/String;

    .line 658
    .line 659
    const-string v6, "SERIES"

    .line 660
    .line 661
    invoke-virtual {v1, v5, v6, v3}, Lc7/b;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v1

    .line 665
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 666
    .line 667
    .line 668
    move-result v1

    .line 669
    if-eqz v1, :cond_7

    .line 670
    .line 671
    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 672
    .line 673
    .line 674
    goto :goto_4

    .line 675
    :cond_7
    const/4 v1, 0x4

    .line 676
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 677
    .line 678
    .line 679
    :goto_4
    return-object v2

    .line 680
    :pswitch_3
    iget-object v3, v0, Lb7/M;->b:Landroid/content/Context;

    .line 681
    .line 682
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    move-result-object v3

    .line 686
    check-cast v3, Landroid/view/LayoutInflater;

    .line 687
    .line 688
    const v5, 0x7f0e0033

    .line 689
    .line 690
    .line 691
    invoke-virtual {v3, v5, v2, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 692
    .line 693
    .line 694
    move-result-object v2

    .line 695
    iget-object v3, v0, Lb7/M;->c:Ljava/util/ArrayList;

    .line 696
    .line 697
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    check-cast v1, Ljava/util/HashMap;

    .line 702
    .line 703
    iput-object v1, v0, Lb7/M;->d:Ljava/util/HashMap;

    .line 704
    .line 705
    invoke-virtual {v2, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 706
    .line 707
    .line 708
    move-result-object v1

    .line 709
    check-cast v1, Landroid/widget/TextView;

    .line 710
    .line 711
    const v3, 0x7f0b028e

    .line 712
    .line 713
    .line 714
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 715
    .line 716
    .line 717
    move-result-object v3

    .line 718
    check-cast v3, Landroid/widget/ImageView;

    .line 719
    .line 720
    iget-object v5, v0, Lb7/M;->d:Ljava/util/HashMap;

    .line 721
    .line 722
    const-string v6, "isactive"

    .line 723
    .line 724
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v5

    .line 728
    check-cast v5, Ljava/lang/String;

    .line 729
    .line 730
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 731
    .line 732
    .line 733
    move-result v5

    .line 734
    if-eqz v5, :cond_8

    .line 735
    .line 736
    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 737
    .line 738
    .line 739
    goto :goto_5

    .line 740
    :cond_8
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 741
    .line 742
    .line 743
    :goto_5
    iget-object v3, v0, Lb7/M;->d:Ljava/util/HashMap;

    .line 744
    .line 745
    const-string v4, "name"

    .line 746
    .line 747
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v3

    .line 751
    check-cast v3, Ljava/lang/String;

    .line 752
    .line 753
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v3

    .line 757
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    .line 759
    .line 760
    return-object v2

    .line 761
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
