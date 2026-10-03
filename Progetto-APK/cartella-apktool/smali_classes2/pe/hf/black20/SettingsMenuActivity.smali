.class public Lpe/hf/black20/SettingsMenuActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lpe/hf/black20/util/d;


# static fields
.field public static W:I

.field public static X:Landroid/widget/EditText;


# instance fields
.field public G:Landroid/content/SharedPreferences;

.field public H:Lc7/a;

.field public I:Lh7/i;

.field public final J:Lpe/hf/black20/SettingsMenuActivity;

.field public K:Landroid/widget/GridView;

.field public L:Landroid/app/ProgressDialog;

.field public M:D

.field public N:D

.field public O:Z

.field public P:[Ljava/lang/String;

.field public Q:[I

.field public R:Landroid/widget/Button;

.field public S:Lb7/H1;

.field public T:Z

.field public U:Ljava/lang/String;

.field public final V:Lb7/H1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "native-lib"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lpe/hf/black20/SettingsMenuActivity;->J:Lpe/hf/black20/SettingsMenuActivity;

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Lpe/hf/black20/SettingsMenuActivity;->M:D

    .line 9
    .line 10
    iput-wide v0, p0, Lpe/hf/black20/SettingsMenuActivity;->N:D

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lpe/hf/black20/SettingsMenuActivity;->O:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lpe/hf/black20/SettingsMenuActivity;->T:Z

    .line 16
    .line 17
    const-string v1, ""

    .line 18
    .line 19
    iput-object v1, p0, Lpe/hf/black20/SettingsMenuActivity;->U:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v1, Lb7/H1;

    .line 22
    .line 23
    invoke-direct {v1, p0, v0}, Lb7/H1;-><init>(Lpe/hf/black20/SettingsMenuActivity;I)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lpe/hf/black20/SettingsMenuActivity;->V:Lb7/H1;

    .line 27
    .line 28
    return-void
.end method

.method public static native papi()Ljava/lang/String;
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lpe/hf/black20/SettingsMenuActivity;->J:Lpe/hf/black20/SettingsMenuActivity;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f0e011d

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .line 29
    .line 30
    const-string v5, "#99000000"

    .line 31
    .line 32
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 37
    .line 38
    .line 39
    const v5, 0x7f0b0586

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v4, v2, v1, v5}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    const p1, 0x7f0b014f

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Landroid/widget/Button;

    .line 59
    .line 60
    const v1, 0x7f1301ee

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    new-instance v0, LW4/a;

    .line 71
    .line 72
    const/4 v1, 0x5

    .line 73
    invoke-direct {v0, p0, p2, v2, v1}, LW4/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "XCIPTV_TAG"

    .line 2
    .line 3
    const-string p2, "SettingsMenuActivity -- getVersionCode"

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final c()V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v3, v0, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    const-string v4, "settings_app"

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const-string v6, "no"

    .line 13
    .line 14
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    iget-object v7, v0, Lpe/hf/black20/SettingsMenuActivity;->J:Lpe/hf/black20/SettingsMenuActivity;

    .line 19
    .line 20
    const-string v8, "settings_account"

    .line 21
    .line 22
    const v9, 0x7f13018a

    .line 23
    .line 24
    .line 25
    const v12, 0x7f1301f2

    .line 26
    .line 27
    .line 28
    const v13, 0x7f130220

    .line 29
    .line 30
    .line 31
    const v14, 0x7f130172

    .line 32
    .line 33
    .line 34
    const v15, 0x7f13002d

    .line 35
    .line 36
    .line 37
    const v1, 0x7f13021d

    .line 38
    .line 39
    .line 40
    const v2, 0x7f1301f3

    .line 41
    .line 42
    .line 43
    const v10, 0x7f130229

    .line 44
    .line 45
    .line 46
    const v11, 0x7f130169

    .line 47
    .line 48
    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    iget-object v3, v0, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 52
    .line 53
    invoke-interface {v3, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_0

    .line 62
    .line 63
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v17

    .line 67
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v18

    .line 71
    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v19

    .line 75
    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v20

    .line 79
    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v21

    .line 83
    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v22

    .line 87
    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v23

    .line 91
    invoke-virtual {v7, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v25

    .line 95
    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v26

    .line 99
    const v3, 0x7f130068

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v27

    .line 106
    const v3, 0x7f13021c

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v28

    .line 113
    const-string v16, "Player Settings"

    .line 114
    .line 115
    const-string v24, "Language"

    .line 116
    .line 117
    filled-new-array/range {v16 .. v28}, [Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    iput-object v3, v0, Lpe/hf/black20/SettingsMenuActivity;->P:[Ljava/lang/String;

    .line 122
    .line 123
    const/16 v3, 0xd

    .line 124
    .line 125
    new-array v4, v3, [I

    .line 126
    .line 127
    fill-array-data v4, :array_0

    .line 128
    .line 129
    .line 130
    iput-object v4, v0, Lpe/hf/black20/SettingsMenuActivity;->Q:[I

    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :cond_0
    iget-object v3, v0, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 135
    .line 136
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    const v12, 0x7f1301a2

    .line 145
    .line 146
    .line 147
    const-string v13, "yes"

    .line 148
    .line 149
    if-eqz v3, :cond_1

    .line 150
    .line 151
    iget-object v3, v0, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 152
    .line 153
    invoke-interface {v3, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-eqz v3, :cond_1

    .line 162
    .line 163
    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v18

    .line 167
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v20

    .line 171
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v21

    .line 175
    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v22

    .line 179
    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v23

    .line 183
    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v24

    .line 187
    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v25

    .line 191
    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v26

    .line 195
    const v3, 0x7f130220

    .line 196
    .line 197
    .line 198
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v28

    .line 202
    const v3, 0x7f1301f2

    .line 203
    .line 204
    .line 205
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v29

    .line 209
    const v3, 0x7f130068

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v30

    .line 216
    const v3, 0x7f13021c

    .line 217
    .line 218
    .line 219
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v31

    .line 223
    const-string v19, "Player Settings"

    .line 224
    .line 225
    const-string v27, "Language"

    .line 226
    .line 227
    filled-new-array/range {v18 .. v31}, [Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    iput-object v3, v0, Lpe/hf/black20/SettingsMenuActivity;->P:[Ljava/lang/String;

    .line 232
    .line 233
    const/16 v3, 0xe

    .line 234
    .line 235
    new-array v3, v3, [I

    .line 236
    .line 237
    fill-array-data v3, :array_1

    .line 238
    .line 239
    .line 240
    iput-object v3, v0, Lpe/hf/black20/SettingsMenuActivity;->Q:[I

    .line 241
    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :cond_1
    iget-object v3, v0, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 245
    .line 246
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-eqz v3, :cond_2

    .line 255
    .line 256
    iget-object v3, v0, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 257
    .line 258
    invoke-interface {v3, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    if-eqz v3, :cond_2

    .line 267
    .line 268
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v20

    .line 272
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v21

    .line 276
    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v22

    .line 280
    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v23

    .line 284
    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v24

    .line 288
    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v25

    .line 292
    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v26

    .line 296
    const v3, 0x7f130220

    .line 297
    .line 298
    .line 299
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v28

    .line 303
    const v3, 0x7f1301f2

    .line 304
    .line 305
    .line 306
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v29

    .line 310
    const v3, 0x7f130068

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v30

    .line 317
    const v3, 0x7f13021c

    .line 318
    .line 319
    .line 320
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v31

    .line 324
    const-string v19, "Player Settings"

    .line 325
    .line 326
    const-string v27, "Language"

    .line 327
    .line 328
    const-string v18, "APP"

    .line 329
    .line 330
    filled-new-array/range {v18 .. v31}, [Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    iput-object v3, v0, Lpe/hf/black20/SettingsMenuActivity;->P:[Ljava/lang/String;

    .line 335
    .line 336
    const/16 v3, 0xe

    .line 337
    .line 338
    new-array v3, v3, [I

    .line 339
    .line 340
    fill-array-data v3, :array_2

    .line 341
    .line 342
    .line 343
    iput-object v3, v0, Lpe/hf/black20/SettingsMenuActivity;->Q:[I

    .line 344
    .line 345
    goto :goto_0

    .line 346
    :cond_2
    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v19

    .line 350
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v21

    .line 354
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v22

    .line 358
    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v23

    .line 362
    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v24

    .line 366
    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v25

    .line 370
    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v26

    .line 374
    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v27

    .line 378
    const v3, 0x7f130220

    .line 379
    .line 380
    .line 381
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v29

    .line 385
    const v3, 0x7f1301f2

    .line 386
    .line 387
    .line 388
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v30

    .line 392
    const v3, 0x7f130068

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v31

    .line 399
    const v3, 0x7f13021c

    .line 400
    .line 401
    .line 402
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v32

    .line 406
    const-string v20, "Player Settings"

    .line 407
    .line 408
    const-string v28, "Language"

    .line 409
    .line 410
    const-string v18, "APP"

    .line 411
    .line 412
    filled-new-array/range {v18 .. v32}, [Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    iput-object v3, v0, Lpe/hf/black20/SettingsMenuActivity;->P:[Ljava/lang/String;

    .line 417
    .line 418
    const/16 v3, 0xf

    .line 419
    .line 420
    new-array v3, v3, [I

    .line 421
    .line 422
    fill-array-data v3, :array_3

    .line 423
    .line 424
    .line 425
    iput-object v3, v0, Lpe/hf/black20/SettingsMenuActivity;->Q:[I

    .line 426
    .line 427
    :goto_0
    const-string v3, "ORT_WHICH_PANEL"

    .line 428
    .line 429
    const-string v4, "xtreamcodes"

    .line 430
    .line 431
    const-string v5, "m3u"

    .line 432
    .line 433
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 434
    .line 435
    .line 436
    move-result v5

    .line 437
    if-nez v5, :cond_3

    .line 438
    .line 439
    const-string v5, "ezserver"

    .line 440
    .line 441
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 442
    .line 443
    .line 444
    move-result v3

    .line 445
    if-eqz v3, :cond_4

    .line 446
    .line 447
    :cond_3
    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v20

    .line 451
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v21

    .line 455
    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v22

    .line 459
    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v23

    .line 463
    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v24

    .line 467
    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v25

    .line 471
    const v1, 0x7f130220

    .line 472
    .line 473
    .line 474
    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v27

    .line 478
    const v1, 0x7f1301f2

    .line 479
    .line 480
    .line 481
    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v28

    .line 485
    const v1, 0x7f130068

    .line 486
    .line 487
    .line 488
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v29

    .line 492
    const v1, 0x7f13021c

    .line 493
    .line 494
    .line 495
    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v30

    .line 499
    const-string v19, "Player Settings"

    .line 500
    .line 501
    const-string v26, "Language"

    .line 502
    .line 503
    const-string v18, "APP"

    .line 504
    .line 505
    filled-new-array/range {v18 .. v30}, [Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    iput-object v1, v0, Lpe/hf/black20/SettingsMenuActivity;->P:[Ljava/lang/String;

    .line 510
    .line 511
    const/16 v1, 0xd

    .line 512
    .line 513
    new-array v1, v1, [I

    .line 514
    .line 515
    fill-array-data v1, :array_4

    .line 516
    .line 517
    .line 518
    iput-object v1, v0, Lpe/hf/black20/SettingsMenuActivity;->Q:[I

    .line 519
    .line 520
    :cond_4
    new-instance v1, Lb7/I1;

    .line 521
    .line 522
    iget-object v2, v0, Lpe/hf/black20/SettingsMenuActivity;->P:[Ljava/lang/String;

    .line 523
    .line 524
    iget-object v3, v0, Lpe/hf/black20/SettingsMenuActivity;->Q:[I

    .line 525
    .line 526
    invoke-direct {v1, v0, v2, v3}, Lb7/I1;-><init>(Landroid/content/Context;[Ljava/lang/String;[I)V

    .line 527
    .line 528
    .line 529
    iget-object v2, v0, Lpe/hf/black20/SettingsMenuActivity;->K:Landroid/widget/GridView;

    .line 530
    .line 531
    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 532
    .line 533
    .line 534
    iget-object v1, v0, Lpe/hf/black20/SettingsMenuActivity;->K:Landroid/widget/GridView;

    .line 535
    .line 536
    new-instance v2, Lb7/v0;

    .line 537
    .line 538
    const/4 v3, 0x3

    .line 539
    invoke-direct {v2, v0, v3}, Lb7/v0;-><init>(Ljava/lang/Object;I)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 543
    .line 544
    .line 545
    return-void

    .line 546
    nop

    .line 547
    :array_0
    .array-data 4
        0x7f08097b
        0x7f080974
        0x7f080978
        0x7f08097a
        0x7f080973
        0x7f080977
        0x7f08096c
        0x7f080976
        0x7f080970
        0x7f080979
        0x7f080972
        0x7f08096d
        0x7f08096f
    .end array-data

    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    :array_1
    .array-data 4
        0x7f08096b
        0x7f08097b
        0x7f080974
        0x7f080978
        0x7f08097a
        0x7f080973
        0x7f080977
        0x7f08096c
        0x7f080976
        0x7f080970
        0x7f080979
        0x7f080972
        0x7f08096d
        0x7f08096f
    .end array-data

    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    :array_2
    .array-data 4
        0x7f08086d
        0x7f08097b
        0x7f080974
        0x7f080978
        0x7f08097a
        0x7f080973
        0x7f080977
        0x7f08096c
        0x7f080976
        0x7f080970
        0x7f080979
        0x7f080972
        0x7f08096d
        0x7f08096f
    .end array-data

    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    :array_3
    .array-data 4
        0x7f08086d
        0x7f08096b
        0x7f08097b
        0x7f080974
        0x7f080978
        0x7f08097a
        0x7f080973
        0x7f080977
        0x7f08096c
        0x7f080976
        0x7f080970
        0x7f080979
        0x7f080972
        0x7f08096d
        0x7f08096f
    .end array-data

    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    :array_4
    .array-data 4
        0x7f08086d
        0x7f08097b
        0x7f08097a
        0x7f080974
        0x7f080973
        0x7f080977
        0x7f08096c
        0x7f080976
        0x7f080970
        0x7f080979
        0x7f080972
        0x7f08096d
        0x7f08096f
    .end array-data
.end method

.method public final d(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lpe/hf/black20/SettingsMenuActivity;->L:Landroid/app/ProgressDialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lpe/hf/black20/SettingsMenuActivity;->L:Landroid/app/ProgressDialog;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .line 16
    .line 17
    const-string v2, "ISO-8859-1"

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v2, "UTF-8"

    .line 24
    .line 25
    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Lorg/json/JSONObject;

    .line 29
    .line 30
    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    :try_start_1
    const-string v1, "success"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-object p1, v0

    .line 41
    :catch_1
    const-string v1, "0"

    .line 42
    .line 43
    :goto_0
    const-string v2, "1"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const v2, 0x7f130247

    .line 50
    .line 51
    .line 52
    const-string v3, "msg"

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    const-string v1, "version_code"

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v4, "apkurl"

    .line 63
    .line 64
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lpe/hf/black20/SettingsMenuActivity;->U:Ljava/lang/String;

    .line 69
    .line 70
    const/16 p1, 0x7d1

    .line 71
    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-ge p1, v4, :cond_2

    .line 77
    .line 78
    new-instance p1, Landroid/os/StatFs;

    .line 79
    .line 80
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-direct {p1, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 92
    .line 93
    .line 94
    move-result-wide v1

    .line 95
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 96
    .line 97
    .line 98
    move-result-wide v4

    .line 99
    mul-long v4, v4, v1

    .line 100
    .line 101
    const-wide/32 v1, 0x100000

    .line 102
    .line 103
    .line 104
    div-long/2addr v4, v1

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v1, "Free "

    .line 108
    .line 109
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v1, "MB"

    .line 116
    .line 117
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    const-string v1, "XCIPTV_TAG"

    .line 125
    .line 126
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    const-wide/16 v1, 0x96

    .line 130
    .line 131
    cmp-long p1, v4, v1

    .line 132
    .line 133
    if-gez p1, :cond_1

    .line 134
    .line 135
    const p1, 0x7f130243

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const v0, 0x7f130244

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p0, p1, v3}, Lpe/hf/black20/SettingsMenuActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_1

    .line 171
    .line 172
    :cond_1
    iget-object p1, p0, Lpe/hf/black20/SettingsMenuActivity;->J:Lpe/hf/black20/SettingsMenuActivity;

    .line 173
    .line 174
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    const v2, 0x7f0e011e

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 186
    .line 187
    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 199
    .line 200
    const-string v4, "#99000000"

    .line 201
    .line 202
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 207
    .line 208
    .line 209
    const v4, 0x7f0b0586

    .line 210
    .line 211
    .line 212
    invoke-static {v2, v3, v1, v0, v4}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    check-cast v2, Landroid/widget/TextView;

    .line 217
    .line 218
    const v3, 0x7f13014f

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 222
    .line 223
    .line 224
    const v2, 0x7f0b014f

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    check-cast v2, Landroid/widget/Button;

    .line 232
    .line 233
    const v3, 0x7f13023c

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    .line 242
    .line 243
    new-instance v3, Lb7/D1;

    .line 244
    .line 245
    const/16 v4, 0x8

    .line 246
    .line 247
    invoke-direct {v3, p0, v1, v4}, Lb7/D1;-><init>(Lpe/hf/black20/SettingsMenuActivity;Landroid/app/AlertDialog;I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    .line 252
    .line 253
    const v2, 0x7f0b014b

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    check-cast v0, Landroid/widget/Button;

    .line 261
    .line 262
    const v2, 0x7f1301b3

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    .line 271
    .line 272
    new-instance p1, Lb7/D1;

    .line 273
    .line 274
    const/16 v2, 0x9

    .line 275
    .line 276
    invoke-direct {p1, p0, v1, v2}, Lb7/D1;-><init>(Lpe/hf/black20/SettingsMenuActivity;Landroid/app/AlertDialog;I)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 283
    .line 284
    .line 285
    goto :goto_1

    .line 286
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string v0, " ("

    .line 299
    .line 300
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v0, ")"

    .line 307
    .line 308
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-virtual {p0, p1, v3}, Lpe/hf/black20/SettingsMenuActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    goto :goto_1

    .line 319
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    const-string v0, " (0)"

    .line 332
    .line 333
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    invoke-virtual {p0, p1, v3}, Lpe/hf/black20/SettingsMenuActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    :goto_1
    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "getVersionCode"

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0, p1}, Lpe/hf/black20/SettingsMenuActivity;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    const-string p1, "XCIPTV_TAG"

    .line 14
    .line 15
    const-string p2, "SettingsMenuActivity -- getVersionCode"

    .line 16
    .line 17
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0e004c

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v0, 0x1c

    .line 13
    .line 14
    if-lt p1, v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, LN/d0;->s(Landroid/view/WindowManager$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    const v0, 0x7f0b028a

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/ImageView;

    .line 42
    .line 43
    iget-object v1, p0, Lpe/hf/black20/SettingsMenuActivity;->J:Lpe/hf/black20/SettingsMenuActivity;

    .line 44
    .line 45
    invoke-static {v1}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    const v2, 0x7f0805f0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const v2, 0x7f08053b

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 62
    .line 63
    .line 64
    :goto_0
    const-string v0, "pe.hf.black20"

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iput-object v3, p0, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 72
    .line 73
    new-instance v3, Lc7/a;

    .line 74
    .line 75
    invoke-direct {v3, v1, v2}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 76
    .line 77
    .line 78
    iput-object v3, p0, Lpe/hf/black20/SettingsMenuActivity;->H:Lc7/a;

    .line 79
    .line 80
    new-instance v3, Lc7/d;

    .line 81
    .line 82
    invoke-direct {v3, v1}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    new-instance v3, Lc7/b;

    .line 86
    .line 87
    const/4 v4, 0x1

    .line 88
    invoke-direct {v3, v1, v4}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 89
    .line 90
    .line 91
    new-instance v3, Lc7/b;

    .line 92
    .line 93
    invoke-direct {v3, v1, v2}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 94
    .line 95
    .line 96
    iget-object v2, p0, Lpe/hf/black20/SettingsMenuActivity;->H:Lc7/a;

    .line 97
    .line 98
    const-string v3, "Default (XC)"

    .line 99
    .line 100
    const-string v5, "ORT_PROFILE"

    .line 101
    .line 102
    invoke-static {v5, v3, v2}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    iput-object v2, p0, Lpe/hf/black20/SettingsMenuActivity;->I:Lh7/i;

    .line 107
    .line 108
    const v2, 0x7f0b022c

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Landroid/widget/GridView;

    .line 116
    .line 117
    iput-object v2, p0, Lpe/hf/black20/SettingsMenuActivity;->K:Landroid/widget/GridView;

    .line 118
    .line 119
    new-instance v2, Landroid/app/ProgressDialog;

    .line 120
    .line 121
    invoke-direct {v2, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 122
    .line 123
    .line 124
    iput-object v2, p0, Lpe/hf/black20/SettingsMenuActivity;->L:Landroid/app/ProgressDialog;

    .line 125
    .line 126
    new-instance v2, Landroid/util/DisplayMetrics;

    .line 127
    .line 128
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 129
    .line 130
    .line 131
    const/16 v3, 0x1e

    .line 132
    .line 133
    if-lt p1, v3, :cond_2

    .line 134
    .line 135
    invoke-static {p0}, Lb7/Z;->k(Lpe/hf/black20/SettingsMenuActivity;)Landroid/view/Display;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 163
    .line 164
    .line 165
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 174
    .line 175
    .line 176
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 177
    .line 178
    sput v2, Lpe/hf/black20/SettingsMenuActivity;->W:I

    .line 179
    .line 180
    iget-object v2, p0, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 181
    .line 182
    const-string v3, "bi"

    .line 183
    .line 184
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_3

    .line 189
    .line 190
    iget-object v2, p0, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 191
    .line 192
    const/4 v5, 0x0

    .line 193
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-static {v2}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-nez v0, :cond_3

    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 208
    .line 209
    .line 210
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    .line 211
    .line 212
    const-string v2, "finish_alert"

    .line 213
    .line 214
    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    new-instance v2, Lb7/H1;

    .line 218
    .line 219
    invoke-direct {v2, p0, v4}, Lb7/H1;-><init>(Lpe/hf/black20/SettingsMenuActivity;I)V

    .line 220
    .line 221
    .line 222
    iput-object v2, p0, Lpe/hf/black20/SettingsMenuActivity;->S:Lb7/H1;

    .line 223
    .line 224
    const/16 v3, 0x21

    .line 225
    .line 226
    if-lt p1, v3, :cond_4

    .line 227
    .line 228
    const/4 p1, 0x4

    .line 229
    invoke-static {v1, v2, v0, p1}, LU4/a;->f(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)V

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_4
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    .line 235
    .line 236
    :goto_2
    invoke-virtual {p0}, Lpe/hf/black20/SettingsMenuActivity;->c()V

    .line 237
    .line 238
    .line 239
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "ORT_isSettingsMenuActivityVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lpe/hf/black20/SettingsMenuActivity;->V:Lb7/H1;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-static {p0}, Li0/c;->a(Landroid/content/Context;)Li0/c;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, v0}, Li0/c;->d(Landroid/content/BroadcastReceiver;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lpe/hf/black20/SettingsMenuActivity;->S:Lb7/H1;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-boolean v1, p0, Lpe/hf/black20/SettingsMenuActivity;->T:Z

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    const-string v2, "ORT_isSettingsMenuActivityVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lpe/hf/black20/SettingsMenuActivity;->V:Lb7/H1;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-static {p0}, Li0/c;->a(Landroid/content/Context;)Li0/c;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Landroid/content/IntentFilter;

    .line 27
    .line 28
    const-string v3, "SettingsMenuActivity"

    .line 29
    .line 30
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0, v2}, Li0/c;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Ljava/util/Locale;

    .line 49
    .line 50
    iget-object v2, p0, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 51
    .line 52
    const-string v3, "language"

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 63
    .line 64
    .line 65
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lpe/hf/black20/SettingsMenuActivity;->c()V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "ORT_isSettingsMenuActivityVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    invoke-static {}, Lpe/hf/black20/util/Methods;->P()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lpe/hf/black20/SettingsMenuActivity;->J:Lpe/hf/black20/SettingsMenuActivity;

    .line 13
    .line 14
    invoke-static {p1}, Lpe/hf/black20/util/Methods;->T(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v0, 0x1e

    .line 23
    .line 24
    if-lt p1, v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, LE1/a;->z(Landroid/view/Window;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, LE1/a;->k(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, LE1/a;->k(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {}, LE1/a;->A()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {}, LE1/a;->C()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    or-int/2addr v0, v1

    .line 60
    invoke-static {p1, v0}, LE1/a;->t(Landroid/view/WindowInsetsController;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, LE1/a;->k(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, LE1/a;->s(Landroid/view/WindowInsetsController;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const/16 v0, 0x1002

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const/16 v0, 0xf06

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 99
    .line 100
    .line 101
    :cond_2
    :goto_0
    return-void
.end method
