.class public final synthetic Lb7/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lpe/hf/black20/RecordsActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/RecordsActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/n1;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/n1;->H:Lpe/hf/black20/RecordsActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lb7/n1;->G:I

    .line 4
    .line 5
    iget-object v8, v0, Lb7/n1;->H:Lpe/hf/black20/RecordsActivity;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-object v1, Lpe/hf/black20/RecordsActivity;->W:Landroid/widget/ListView;

    .line 11
    .line 12
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v1, Landroid/content/Intent;

    .line 16
    .line 17
    const-class v2, Lpe/hf/black20/ChannelPickerActivity;

    .line 18
    .line 19
    invoke-direct {v1, v8, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v8, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 23
    .line 24
    .line 25
    const/high16 v2, 0x4000000

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v8, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_0
    const-string v1, "Scheduled"

    .line 35
    .line 36
    iput-object v1, v8, Lpe/hf/black20/RecordsActivity;->S:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v8, v1}, Lpe/hf/black20/RecordsActivity;->a(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_1
    const-string v1, "Recorded"

    .line 43
    .line 44
    iput-object v1, v8, Lpe/hf/black20/RecordsActivity;->S:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v8, v1}, Lpe/hf/black20/RecordsActivity;->a(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_2
    iget-object v1, v8, Lpe/hf/black20/RecordsActivity;->G:Lpe/hf/black20/RecordsActivity;

    .line 51
    .line 52
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const v3, 0x7f0e0130

    .line 57
    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    new-instance v3, Landroid/app/AlertDialog$Builder;

    .line 65
    .line 66
    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    .line 78
    .line 79
    const-string v6, "#99000000"

    .line 80
    .line 81
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 86
    .line 87
    .line 88
    const v6, 0x7f0b0584

    .line 89
    .line 90
    .line 91
    invoke-static {v3, v5, v9, v2, v6}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Landroid/widget/TextView;

    .line 96
    .line 97
    const v5, 0x7f0b0579

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    move-object v10, v5

    .line 105
    check-cast v10, Landroid/widget/TextView;

    .line 106
    .line 107
    const-string v5, "Change recording location"

    .line 108
    .line 109
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    const-string v3, "Total: 0 MB  Free: 0"

    .line 113
    .line 114
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    const v3, 0x7f0b00b0

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    move-object v11, v3

    .line 125
    check-cast v11, Landroid/widget/Button;

    .line 126
    .line 127
    const v3, 0x7f0b00de

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Landroid/widget/Button;

    .line 135
    .line 136
    const v5, 0x7f0b00ce

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    move-object v12, v5

    .line 144
    check-cast v12, Landroid/widget/Button;

    .line 145
    .line 146
    const v5, 0x7f0b00cf

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    move-object v13, v2

    .line 154
    check-cast v13, Landroid/widget/Button;

    .line 155
    .line 156
    const/16 v2, 0x8

    .line 157
    .line 158
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v4}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    const-string v2, ""

    .line 172
    .line 173
    const/4 v5, 0x0

    .line 174
    move-object v6, v2

    .line 175
    move-object v14, v6

    .line 176
    const/4 v2, 0x0

    .line 177
    :goto_0
    array-length v7, v1

    .line 178
    if-ge v2, v7, :cond_6

    .line 179
    .line 180
    if-nez v2, :cond_1

    .line 181
    .line 182
    sget-object v7, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 183
    .line 184
    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    new-instance v15, Ljava/io/File;

    .line 193
    .line 194
    invoke-direct {v15, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    if-nez v7, :cond_0

    .line 202
    .line 203
    invoke-virtual {v15}, Ljava/io/File;->mkdir()Z

    .line 204
    .line 205
    .line 206
    :cond_0
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 207
    .line 208
    .line 209
    :cond_1
    const/4 v7, 0x1

    .line 210
    const-string v15, "/Movies"

    .line 211
    .line 212
    if-ne v2, v7, :cond_3

    .line 213
    .line 214
    aget-object v6, v1, v7

    .line 215
    .line 216
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    invoke-virtual {v6, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    new-instance v7, Ljava/io/File;

    .line 225
    .line 226
    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 230
    .line 231
    .line 232
    move-result v16

    .line 233
    if-nez v16, :cond_2

    .line 234
    .line 235
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 236
    .line 237
    .line 238
    :cond_2
    invoke-virtual {v12, v5}, Landroid/view/View;->setVisibility(I)V

    .line 239
    .line 240
    .line 241
    :cond_3
    const/4 v7, 0x2

    .line 242
    if-ne v2, v7, :cond_5

    .line 243
    .line 244
    aget-object v7, v1, v7

    .line 245
    .line 246
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v7

    .line 250
    invoke-virtual {v7, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v14

    .line 254
    new-instance v7, Ljava/io/File;

    .line 255
    .line 256
    invoke-direct {v7, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 260
    .line 261
    .line 262
    move-result v15

    .line 263
    if-nez v15, :cond_4

    .line 264
    .line 265
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 266
    .line 267
    .line 268
    :cond_4
    invoke-virtual {v13, v5}, Landroid/view/View;->setVisibility(I)V

    .line 269
    .line 270
    .line 271
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 272
    .line 273
    goto :goto_0

    .line 274
    :cond_6
    iget-object v2, v8, Lpe/hf/black20/RecordsActivity;->H:Landroid/content/SharedPreferences;

    .line 275
    .line 276
    const-string v5, "rec_path"

    .line 277
    .line 278
    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-eqz v2, :cond_7

    .line 283
    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .line 288
    .line 289
    iget-object v7, v8, Lpe/hf/black20/RecordsActivity;->H:Landroid/content/SharedPreferences;

    .line 290
    .line 291
    const-string v15, "rec_path_storage"

    .line 292
    .line 293
    invoke-interface {v7, v15, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    const-string v7, " - "

    .line 301
    .line 302
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    iget-object v7, v8, Lpe/hf/black20/RecordsActivity;->H:Landroid/content/SharedPreferences;

    .line 306
    .line 307
    invoke-interface {v7, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    invoke-static {v4}, Lpe/hf/black20/util/Methods;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    .line 324
    .line 325
    :cond_7
    new-instance v2, Lb7/c;

    .line 326
    .line 327
    const/4 v4, 0x4

    .line 328
    invoke-direct {v2, v8, v10, v9, v4}, Lb7/c;-><init>(Landroid/app/Activity;Ljava/lang/Object;Landroid/app/AlertDialog;I)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    .line 333
    .line 334
    new-instance v15, Lb7/p1;

    .line 335
    .line 336
    move-object v2, v15

    .line 337
    move-object v3, v8

    .line 338
    move-object v4, v10

    .line 339
    move-object v5, v1

    .line 340
    move-object v7, v9

    .line 341
    invoke-direct/range {v2 .. v7}, Lb7/p1;-><init>(Lpe/hf/black20/RecordsActivity;Landroid/widget/TextView;[Ljava/io/File;Ljava/lang/String;Landroid/app/AlertDialog;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v12, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    .line 346
    .line 347
    new-instance v12, Lb7/q1;

    .line 348
    .line 349
    const/4 v15, 0x0

    .line 350
    move-object v2, v12

    .line 351
    move-object v6, v14

    .line 352
    move v8, v15

    .line 353
    invoke-direct/range {v2 .. v8}, Lb7/q1;-><init>(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/Object;Ljava/lang/String;Landroid/app/AlertDialog;I)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v13, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    .line 358
    .line 359
    new-instance v1, Lb7/b;

    .line 360
    .line 361
    const/4 v2, 0x7

    .line 362
    invoke-direct {v1, v9, v2}, Lb7/b;-><init>(Landroid/app/AlertDialog;I)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v11, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 369
    .line 370
    .line 371
    return-void

    .line 372
    nop

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
