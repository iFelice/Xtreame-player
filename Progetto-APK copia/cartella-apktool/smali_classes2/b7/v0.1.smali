.class public final synthetic Lb7/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/v0;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/v0;->H:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method private final a(I)V
    .locals 14

    .line 1
    iget-object v0, p0, Lb7/v0;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lb7/h1;

    .line 4
    .line 5
    const-string v1, "ORT_WHICH_PLAYER"

    .line 6
    .line 7
    const-string v2, "name"

    .line 8
    .line 9
    const-string v3, "/"

    .line 10
    .line 11
    const-string v4, "direct_source"

    .line 12
    .line 13
    const-string v5, "ORT_WHICH_PANEL"

    .line 14
    .line 15
    const-string v6, "EXO"

    .line 16
    .line 17
    const-string v7, "xtreamcodes"

    .line 18
    .line 19
    iget-object v0, v0, Lb7/h1;->b:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 20
    .line 21
    const-string v8, "ORT_PROFILE_USERNAME"

    .line 22
    .line 23
    const-string v9, ""

    .line 24
    .line 25
    invoke-static {v8, v9}, Lcom/google/protobuf/U2;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    const-string v10, "ORT_PROFILE_PASSWORD"

    .line 30
    .line 31
    invoke-static {v10, v9}, Lcom/google/protobuf/U2;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v10

    .line 35
    :try_start_0
    iget v11, v0, Lpe/hf/black20/PlayStreamEPGActivity;->P0:I

    .line 36
    .line 37
    if-ne v11, p1, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0}, Lpe/hf/black20/PlayStreamEPGActivity;->Z()V

    .line 40
    .line 41
    .line 42
    :cond_0
    sget-object v11, Lpe/hf/black20/PlayStreamEPGActivity;->Q2:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v12, v0, Lpe/hf/black20/PlayStreamEPGActivity;->p0:Lorg/json/JSONArray;

    .line 45
    .line 46
    invoke-virtual {v12, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    move-result-object v12

    .line 50
    const-string v13, "stream_id"

    .line 51
    .line 52
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v12

    .line 56
    iput-object v12, v0, Lpe/hf/black20/PlayStreamEPGActivity;->k0:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v12, v0, Lpe/hf/black20/PlayStreamEPGActivity;->p0:Lorg/json/JSONArray;

    .line 59
    .line 60
    invoke-virtual {v12, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    move-result-object v12

    .line 64
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v12

    .line 68
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    if-eqz v12, :cond_1

    .line 73
    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    const-string v13, "ORT_PROFILE_SERVER"

    .line 84
    .line 85
    invoke-virtual {v12, v13, v9}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    invoke-static {v9}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v9, "/live/"

    .line 97
    .line 98
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v3, v0, Lpe/hf/black20/PlayStreamEPGActivity;->k0:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v3, "."

    .line 119
    .line 120
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v3, v0, Lpe/hf/black20/PlayStreamEPGActivity;->f0:Landroid/content/SharedPreferences;

    .line 124
    .line 125
    const-string v8, "streamFormat"

    .line 126
    .line 127
    const/4 v9, 0x0

    .line 128
    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    sput-object v3, Lpe/hf/black20/PlayStreamEPGActivity;->Q2:Ljava/lang/String;

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_1
    iget-object v3, v0, Lpe/hf/black20/PlayStreamEPGActivity;->p0:Lorg/json/JSONArray;

    .line 143
    .line 144
    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    sput-object v3, Lpe/hf/black20/PlayStreamEPGActivity;->Q2:Ljava/lang/String;

    .line 153
    .line 154
    :goto_0
    iget-object v3, v0, Lpe/hf/black20/PlayStreamEPGActivity;->p0:Lorg/json/JSONArray;

    .line 155
    .line 156
    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    iput-object v3, v0, Lpe/hf/black20/PlayStreamEPGActivity;->h0:Ljava/lang/String;

    .line 165
    .line 166
    iput p1, v0, Lpe/hf/black20/PlayStreamEPGActivity;->P0:I

    .line 167
    .line 168
    iget-object v3, v0, Lpe/hf/black20/PlayStreamEPGActivity;->p0:Lorg/json/JSONArray;

    .line 169
    .line 170
    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    const-string v4, "stream_icon"

    .line 175
    .line 176
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    iput-object v3, v0, Lpe/hf/black20/PlayStreamEPGActivity;->D2:Ljava/lang/String;

    .line 181
    .line 182
    sget-object v3, Lpe/hf/black20/PlayStreamEPGActivity;->Q2:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-nez v3, :cond_3

    .line 189
    .line 190
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v3, v1, v6}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-eqz v3, :cond_2

    .line 203
    .line 204
    sget-object v1, Lpe/hf/black20/PlayStreamEPGActivity;->Q2:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Lpe/hf/black20/PlayStreamEPGActivity;->v(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_2
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-virtual {v3, v1, v6}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    const-string v3, "VLC"

    .line 219
    .line 220
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_3

    .line 225
    .line 226
    sget-object v1, Lpe/hf/black20/PlayStreamEPGActivity;->Q2:Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Lpe/hf/black20/PlayStreamEPGActivity;->D(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    :cond_3
    :goto_1
    iget-object v1, v0, Lpe/hf/black20/PlayStreamEPGActivity;->X1:Landroid/widget/TextView;

    .line 232
    .line 233
    iget-object v3, v0, Lpe/hf/black20/PlayStreamEPGActivity;->h0:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    .line 237
    .line 238
    iget-object v1, v0, Lpe/hf/black20/PlayStreamEPGActivity;->s1:Landroid/widget/TextView;

    .line 239
    .line 240
    iget-object v3, v0, Lpe/hf/black20/PlayStreamEPGActivity;->h0:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    .line 244
    .line 245
    iget-object v1, v0, Lpe/hf/black20/PlayStreamEPGActivity;->u0:[Ljava/lang/String;

    .line 246
    .line 247
    iget v3, v0, Lpe/hf/black20/PlayStreamEPGActivity;->I1:I

    .line 248
    .line 249
    aget-object v1, v1, v3

    .line 250
    .line 251
    iput-object v1, v0, Lpe/hf/black20/PlayStreamEPGActivity;->y2:Ljava/lang/String;

    .line 252
    .line 253
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {v1, v5, v7}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-nez v1, :cond_5

    .line 266
    .line 267
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {v1, v5, v7}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    const-string v3, "otr"

    .line 276
    .line 277
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    if-eqz v1, :cond_4

    .line 282
    .line 283
    goto :goto_2

    .line 284
    :cond_4
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-virtual {v1, v5, v7}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    const-string v3, "ezserver"

    .line 293
    .line 294
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    if-eqz v1, :cond_6

    .line 299
    .line 300
    iget-object v1, v0, Lpe/hf/black20/PlayStreamEPGActivity;->p0:Lorg/json/JSONArray;

    .line 301
    .line 302
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    iput-object p1, v0, Lpe/hf/black20/PlayStreamEPGActivity;->i0:Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {v0}, Lpe/hf/black20/PlayStreamEPGActivity;->M()V

    .line 313
    .line 314
    .line 315
    goto :goto_3

    .line 316
    :cond_5
    :goto_2
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    const-string v1, "ORT_PROCESS_STATUS"

    .line 321
    .line 322
    invoke-virtual {p1, v1}, LQ5/a;->b(Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    move-result p1

    .line 326
    if-nez p1, :cond_6

    .line 327
    .line 328
    iget-object p1, v0, Lpe/hf/black20/PlayStreamEPGActivity;->L0:Lc7/d;

    .line 329
    .line 330
    iget-object v1, v0, Lpe/hf/black20/PlayStreamEPGActivity;->k0:Ljava/lang/String;

    .line 331
    .line 332
    invoke-virtual {p1, v1}, Lc7/d;->H0(Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    const-string v1, "no"

    .line 337
    .line 338
    invoke-virtual {v0, p1, v1}, Lpe/hf/black20/PlayStreamEPGActivity;->N(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .line 340
    .line 341
    :catch_0
    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    move/from16 v0, p3

    iget v2, v1, Lb7/v0;->G:I

    const-string v4, ""

    const/4 v5, 0x0

    iget-object v6, v1, Lb7/v0;->H:Ljava/lang/Object;

    packed-switch v2, :pswitch_data_0

    check-cast v6, Lpe/hf/black20/SettingsMenuActivity;

    .line 2
    iget-object v2, v6, Lpe/hf/black20/SettingsMenuActivity;->P:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v7, "APP"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v7, v6, Lpe/hf/black20/SettingsMenuActivity;->J:Lpe/hf/black20/SettingsMenuActivity;

    const/4 v8, 0x0

    const/16 v10, 0xc

    const v11, 0x7f0b0577

    const v12, 0x7f0b053c

    const-string v14, "#4f000000"

    if-eqz v2, :cond_0

    .line 3
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e011c

    .line 4
    invoke-virtual {v0, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 5
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-direct {v4, v14}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const v14, 0x7f0b0509

    .line 7
    invoke-static {v3, v4, v2, v0, v14}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 8
    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0b0591

    .line 9
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v14, 0x7f0b0544

    .line 10
    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v15, 0x7f0b051e

    .line 11
    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 12
    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 13
    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v9, 0x7f0b050a

    .line 14
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v9, 0x7f0b0592

    .line 15
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v9, 0x7f0b0545

    .line 16
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v9, 0x7f0b051f

    .line 17
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v9, 0x7f0b053d

    .line 18
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v9, 0x7f0b0578

    .line 19
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 20
    iget-object v9, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const-string v13, "appname"

    invoke-interface {v9, v13, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    sget-object v3, Lpe/hf/black20/util/Config;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 23
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "****"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v3, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const-string v9, "customerid"

    invoke-interface {v3, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v3, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const-string v9, "expire"

    invoke-interface {v3, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v3, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const-string v9, "status_app"

    invoke-interface {v3, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 28
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/16 v5, 0x7d1

    .line 29
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 30
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const v3, 0x7f0b014f

    .line 31
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f1301b9

    .line 32
    invoke-virtual {v7, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    new-instance v4, Lb7/D1;

    const/4 v5, 0x6

    invoke-direct {v4, v6, v2, v5}, Lb7/D1;-><init>(Lpe/hf/black20/SettingsMenuActivity;Landroid/app/AlertDialog;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0b0133

    .line 34
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 35
    new-instance v3, Lb7/D1;

    const/4 v4, 0x7

    invoke-direct {v3, v6, v2, v4}, Lb7/D1;-><init>(Lpe/hf/black20/SettingsMenuActivity;Landroid/app/AlertDialog;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_e

    .line 37
    :cond_0
    iget-object v2, v6, Lpe/hf/black20/SettingsMenuActivity;->P:[Ljava/lang/String;

    aget-object v2, v2, v0

    const v9, 0x7f1301a2

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v13, "0"

    if-eqz v2, :cond_7

    .line 38
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e011b

    .line 39
    invoke-virtual {v0, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 40
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-direct {v5, v14}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const v14, 0x7f0b058e

    .line 42
    invoke-static {v3, v5, v2, v0, v14}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 43
    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0b054f

    .line 44
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v14, 0x7f0b0587

    .line 45
    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v15, 0x7f0b054c

    .line 46
    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 47
    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 48
    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v10, 0x7f0b058f

    .line 49
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 50
    iget-object v9, v6, Lpe/hf/black20/SettingsMenuActivity;->I:Lh7/i;

    .line 51
    iget-object v9, v9, Lh7/i;->c:Ljava/lang/String;

    .line 52
    invoke-static {v9}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v9, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const-string v1, "message"

    invoke-interface {v9, v1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v1, 0x7f130151

    .line 54
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object v4, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    invoke-interface {v4, v1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :goto_0
    iget-object v1, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const-string v4, "is_trial"

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f13018f

    .line 57
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 58
    :cond_2
    iget-object v1, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :goto_1
    iget-object v1, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const-string v4, "max_connections"

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f13019b

    .line 60
    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 61
    :cond_3
    iget-object v1, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :goto_2
    iget-object v1, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const-string v4, "exp_date"

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v5, "NULL"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f130150

    .line 63
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 64
    :cond_4
    iget-object v1, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const-string v5, "show_expire"

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "yes"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 65
    iget-object v1, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lpe/hf/black20/util/Methods;->a:Landroid/content/SharedPreferences;

    .line 66
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v13, 0x3e8

    mul-long v4, v4, v13

    .line 67
    const-string v1, "yyyy/MM/dd hh:mm:ss aa"

    invoke-static {v1, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 69
    :cond_5
    const-string v1, "Unavailable"

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_3
    iget-object v1, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const-string v4, "status_acc"

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const-string v4, "login_type"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 72
    iget-object v1, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "activationXOR"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 73
    const-string v1, "Activation Code"

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const-string v4, "xco_activation_cod"

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    const v1, 0x7f0b014f

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v3, 0x7f0b014e

    .line 76
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v3, 0x8

    .line 77
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f1301b9

    .line 78
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    new-instance v3, Lb7/D1;

    const/16 v4, 0xc

    invoke-direct {v3, v6, v2, v4}, Lb7/D1;-><init>(Lpe/hf/black20/SettingsMenuActivity;Landroid/app/AlertDialog;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    new-instance v1, Lf/c;

    const/16 v3, 0x17

    invoke-direct {v1, v6, v3}, Lf/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_e

    .line 82
    :cond_7
    iget-object v1, v6, Lpe/hf/black20/SettingsMenuActivity;->P:[Ljava/lang/String;

    aget-object v1, v1, v0

    const v2, 0x7f130169

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 83
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e012e

    .line 84
    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 85
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v7, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const v11, 0x7f0b041c

    .line 87
    invoke-static {v4, v7, v1, v0, v11}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 88
    check-cast v4, Landroid/widget/RadioGroup;

    const v7, 0x7f0b041d

    .line 89
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioGroup;

    const v11, 0x7f0b041b

    .line 90
    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RadioGroup;

    const v12, 0x7f0b0419

    .line 91
    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RadioGroup;

    const v13, 0x7f0b041a

    .line 92
    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RadioGroup;

    const v14, 0x7f0b0401

    .line 93
    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RadioButton;

    const v15, 0x7f0b0402

    .line 94
    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RadioButton;

    const v2, 0x7f0b0403

    .line 95
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    const v9, 0x7f0b0404

    .line 96
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    const v10, 0x7f0b03fb

    .line 97
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    const v5, 0x7f0b03fc

    .line 98
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    const v3, 0x7f0b03ec

    .line 99
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    const v8, 0x7f0b03ed

    .line 100
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    move-object/from16 p2, v1

    const v1, 0x7f0b03f9

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    move-object/from16 p3, v13

    const v13, 0x7f0b03fa

    .line 102
    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RadioButton;

    move-object/from16 p5, v12

    .line 103
    iget-object v12, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    move-object/from16 v16, v11

    const-string v11, "whichplayer_tv"

    invoke-interface {v12, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    move-object/from16 v17, v7

    const-string v7, "EXO"

    if-eqz v12, :cond_9

    .line 104
    iget-object v12, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    move-object/from16 v18, v4

    const/4 v4, 0x0

    invoke-interface {v12, v11, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    .line 105
    invoke-virtual {v14, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_4

    :cond_8
    const/4 v4, 0x1

    .line 106
    invoke-virtual {v15, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_4

    :cond_9
    move-object/from16 v18, v4

    const/4 v4, 0x1

    .line 107
    invoke-virtual {v14, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 108
    :goto_4
    iget-object v11, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const-string v12, "whichplayer_vod"

    invoke-interface {v11, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 109
    iget-object v11, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const/4 v14, 0x0

    invoke-interface {v11, v12, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 110
    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_5

    .line 111
    :cond_a
    invoke-virtual {v9, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_5

    .line 112
    :cond_b
    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 113
    :goto_5
    iget-object v2, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const-string v9, "whichplayer_series"

    invoke-interface {v2, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 114
    iget-object v2, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const/4 v11, 0x0

    invoke-interface {v2, v9, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 115
    invoke-virtual {v10, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_6

    .line 116
    :cond_c
    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_6

    .line 117
    :cond_d
    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 118
    :goto_6
    iget-object v2, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const-string v5, "whichplayer_catchup"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 119
    iget-object v2, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const/4 v9, 0x0

    invoke-interface {v2, v5, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 120
    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_7

    .line 121
    :cond_e
    invoke-virtual {v8, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_7

    .line 122
    :cond_f
    invoke-virtual {v8, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 123
    :goto_7
    iget-object v2, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const-string v3, "whichplayer_ms"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 124
    iget-object v2, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 125
    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_8

    .line 126
    :cond_10
    invoke-virtual {v13, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_8

    .line 127
    :cond_11
    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 128
    :goto_8
    new-instance v1, Lb7/C1;

    const/4 v2, 0x0

    invoke-direct {v1, v6, v0, v2}, Lb7/C1;-><init>(Lpe/hf/black20/SettingsMenuActivity;Landroid/view/View;I)V

    move-object/from16 v2, v18

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 129
    new-instance v1, Lb7/C1;

    invoke-direct {v1, v6, v0, v4}, Lb7/C1;-><init>(Lpe/hf/black20/SettingsMenuActivity;Landroid/view/View;I)V

    move-object/from16 v7, v17

    invoke-virtual {v7, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 130
    new-instance v1, Lb7/C1;

    const/4 v2, 0x2

    invoke-direct {v1, v6, v0, v2}, Lb7/C1;-><init>(Lpe/hf/black20/SettingsMenuActivity;Landroid/view/View;I)V

    move-object/from16 v11, v16

    invoke-virtual {v11, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 131
    new-instance v1, Lb7/C1;

    const/4 v2, 0x3

    invoke-direct {v1, v6, v0, v2}, Lb7/C1;-><init>(Lpe/hf/black20/SettingsMenuActivity;Landroid/view/View;I)V

    move-object/from16 v12, p5

    invoke-virtual {v12, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 132
    new-instance v1, Lb7/C1;

    const/4 v2, 0x4

    invoke-direct {v1, v6, v0, v2}, Lb7/C1;-><init>(Lpe/hf/black20/SettingsMenuActivity;Landroid/view/View;I)V

    move-object/from16 v13, p3

    invoke-virtual {v13, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const v1, 0x7f0b0122

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f1301ee

    .line 134
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 135
    new-instance v1, Lb7/D1;

    move-object/from16 v3, p2

    const/4 v2, 0x0

    invoke-direct {v1, v6, v3, v2}, Lb7/D1;-><init>(Lpe/hf/black20/SettingsMenuActivity;Landroid/app/AlertDialog;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto/16 :goto_e

    .line 137
    :cond_12
    iget-object v1, v6, Lpe/hf/black20/SettingsMenuActivity;->P:[Ljava/lang/String;

    aget-object v1, v1, v0

    const v2, 0x7f13018a

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f0b0584

    const v3, 0x7f1301b3

    if-eqz v1, :cond_14

    .line 138
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e012f

    const/4 v4, 0x0

    .line 139
    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 140
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v5, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const v8, 0x7f0b0563

    .line 142
    invoke-static {v4, v5, v1, v0, v8}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 143
    check-cast v4, Landroid/widget/TextView;

    .line 144
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 145
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f130214

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " Stream Type"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v2, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const-string v5, "streamFormat"

    const/4 v9, 0x0

    invoke-interface {v2, v5, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "ts"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const v2, 0x7f130217

    .line 147
    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_13
    const v2, 0x7f130216

    .line 148
    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    const v2, 0x7f0b0130

    .line 149
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 150
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " MPEGTS"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    new-instance v5, Lb7/E1;

    const/4 v9, 0x0

    invoke-direct {v5, v6, v1, v4, v9}, Lb7/E1;-><init>(Lpe/hf/black20/SettingsMenuActivity;Landroid/app/AlertDialog;Landroid/widget/TextView;I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0b012f

    .line 152
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " HLS"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    new-instance v5, Lb7/E1;

    const/4 v8, 0x1

    invoke-direct {v5, v6, v1, v4, v8}, Lb7/E1;-><init>(Lpe/hf/black20/SettingsMenuActivity;Landroid/app/AlertDialog;Landroid/widget/TextView;I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0b012e

    .line 155
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 156
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    new-instance v2, Lb7/D1;

    invoke-direct {v2, v6, v1, v8}, Lb7/D1;-><init>(Lpe/hf/black20/SettingsMenuActivity;Landroid/app/AlertDialog;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_e

    .line 159
    :cond_14
    iget-object v1, v6, Lpe/hf/black20/SettingsMenuActivity;->P:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v5, "Player Settings"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "#99000000"

    if-eqz v1, :cond_15

    .line 160
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e011e

    const/4 v2, 0x0

    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 162
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const v5, 0x7f0b0586

    .line 164
    invoke-static {v2, v4, v1, v0, v5}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 165
    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f130182

    .line 166
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0b014f

    .line 167
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v4, 0x7f13023c

    .line 168
    invoke-virtual {v7, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0b014b

    .line 169
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 170
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f130001

    .line 171
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f13019f

    .line 172
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 173
    new-instance v3, Lb7/D1;

    const/16 v4, 0xa

    invoke-direct {v3, v6, v1, v4}, Lb7/D1;-><init>(Lpe/hf/black20/SettingsMenuActivity;Landroid/app/AlertDialog;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    new-instance v2, Lb7/D1;

    const/16 v3, 0xb

    invoke-direct {v2, v6, v1, v3}, Lb7/D1;-><init>(Lpe/hf/black20/SettingsMenuActivity;Landroid/app/AlertDialog;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_e

    .line 176
    :cond_15
    iget-object v1, v6, Lpe/hf/black20/SettingsMenuActivity;->P:[Ljava/lang/String;

    aget-object v1, v1, v0

    const v8, 0x7f1301f3

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v8, "XCIPTV_TAG"

    const/4 v9, 0x5

    if-eqz v1, :cond_17

    .line 177
    iget-object v0, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const-string v1, "parental_recovery"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 178
    invoke-static {v9}, Lpe/hf/black20/util/Methods;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    iget-object v2, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 180
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 182
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "----Parental Recovery Key---- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_16
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e0125

    const/4 v3, 0x0

    .line 185
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 186
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 187
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const v5, 0x7f0b01ca

    .line 188
    invoke-static {v3, v4, v2, v0, v5}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 189
    check-cast v3, Landroid/widget/EditText;

    sput-object v3, Lpe/hf/black20/SettingsMenuActivity;->X:Landroid/widget/EditText;

    const v3, 0x7f0b0520

    .line 190
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f130163

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const/4 v7, 0x0

    invoke-interface {v5, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0106

    .line 192
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v6, Lpe/hf/black20/SettingsMenuActivity;->R:Landroid/widget/Button;

    .line 193
    new-instance v1, Lb7/D1;

    const/4 v3, 0x4

    invoke-direct {v1, v6, v2, v3}, Lb7/D1;-><init>(Lpe/hf/black20/SettingsMenuActivity;Landroid/app/AlertDialog;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_e

    .line 195
    :cond_17
    iget-object v1, v6, Lpe/hf/black20/SettingsMenuActivity;->P:[Ljava/lang/String;

    aget-object v1, v1, v0

    const v10, 0x7f130229

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 196
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0122

    const/4 v2, 0x0

    .line 197
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 198
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 199
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const v5, 0x7f0b00c8

    .line 200
    invoke-static {v2, v4, v1, v0, v5}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 201
    check-cast v2, Landroid/widget/Button;

    const v4, 0x7f130225

    .line 202
    invoke-virtual {v7, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x8

    .line 203
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0b00c6

    .line 204
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v4, 0x7f130228

    .line 205
    invoke-virtual {v7, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    new-instance v4, Lb7/D1;

    const/4 v5, 0x2

    invoke-direct {v4, v6, v1, v5}, Lb7/D1;-><init>(Lpe/hf/black20/SettingsMenuActivity;Landroid/app/AlertDialog;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0b00c7

    .line 207
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 208
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    new-instance v2, Lb7/D1;

    const/4 v3, 0x3

    invoke-direct {v2, v6, v1, v3}, Lb7/D1;-><init>(Lpe/hf/black20/SettingsMenuActivity;Landroid/app/AlertDialog;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_e

    .line 211
    :cond_18
    iget-object v1, v6, Lpe/hf/black20/SettingsMenuActivity;->P:[Ljava/lang/String;

    aget-object v1, v1, v0

    const v3, 0x7f1301c6

    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 212
    iget-object v0, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const-string v1, "timeShiftHR"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 213
    iget-object v0, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, v6, Lpe/hf/black20/SettingsMenuActivity;->M:D

    .line 215
    iget-object v0, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const-string v1, "timeShiftMin"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 216
    iget-object v0, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, v6, Lpe/hf/black20/SettingsMenuActivity;->N:D

    goto :goto_a

    .line 218
    :cond_19
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, v6, Lpe/hf/black20/SettingsMenuActivity;->N:D

    goto :goto_a

    .line 219
    :cond_1a
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, v6, Lpe/hf/black20/SettingsMenuActivity;->M:D

    .line 220
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, v6, Lpe/hf/black20/SettingsMenuActivity;->N:D

    .line 221
    :goto_a
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0123

    const/4 v3, 0x0

    .line 222
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 223
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 224
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 225
    invoke-static {v3, v4, v1, v0, v2}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 226
    check-cast v2, Landroid/widget/TextView;

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v6, Lpe/hf/black20/SettingsMenuActivity;->M:D

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Hr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v6, Lpe/hf/black20/SettingsMenuActivity;->N:D

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Min"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0b00ad

    .line 228
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 229
    new-instance v4, Lb7/G1;

    const/4 v5, 0x0

    invoke-direct {v4, v6, v2, v5}, Lb7/G1;-><init>(Lpe/hf/black20/SettingsMenuActivity;Landroid/widget/TextView;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0b00eb

    .line 230
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 231
    new-instance v4, Lb7/G1;

    const/4 v5, 0x1

    invoke-direct {v4, v6, v2, v5}, Lb7/G1;-><init>(Lpe/hf/black20/SettingsMenuActivity;Landroid/widget/TextView;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0b00a3

    .line 232
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 233
    new-instance v4, Lb7/G1;

    const/4 v5, 0x2

    invoke-direct {v4, v6, v2, v5}, Lb7/G1;-><init>(Lpe/hf/black20/SettingsMenuActivity;Landroid/widget/TextView;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0b00ba

    .line 234
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 235
    new-instance v2, Lb7/D1;

    invoke-direct {v2, v6, v1, v9}, Lb7/D1;-><init>(Lpe/hf/black20/SettingsMenuActivity;Landroid/app/AlertDialog;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_e

    .line 237
    :cond_1b
    iget-object v1, v6, Lpe/hf/black20/SettingsMenuActivity;->P:[Ljava/lang/String;

    aget-object v1, v1, v0

    const v2, 0x7f13021d

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 238
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lpe/hf/black20/speedtest/SpeedTestActivity;

    invoke-direct {v0, v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_e

    .line 240
    :cond_1c
    iget-object v1, v6, Lpe/hf/black20/SettingsMenuActivity;->P:[Ljava/lang/String;

    aget-object v1, v1, v0

    const v2, 0x7f13002d

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lpe/hf/black20/BackupActivity;

    invoke-direct {v0, v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_e

    .line 243
    :cond_1d
    iget-object v1, v6, Lpe/hf/black20/SettingsMenuActivity;->P:[Ljava/lang/String;

    aget-object v1, v1, v0

    const v2, 0x7f130172

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "msg"

    if-eqz v1, :cond_27

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f130249

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lpe/hf/black20/util/Methods;->a:Landroid/content/SharedPreferences;

    .line 245
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 246
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 247
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    .line 248
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 249
    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_1f

    .line 250
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x3a

    .line 251
    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v10, 0x1

    if-ge v9, v10, :cond_1f

    goto :goto_b

    :catch_1
    nop

    :cond_20
    move-object v5, v4

    .line 252
    :goto_b
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "192.168.49.1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 253
    :cond_21
    :try_start_2
    const-string v1, "wifi"

    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 254
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 255
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    const/4 v3, 0x4

    .line 256
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 257
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    .line 258
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_c

    :catch_2
    nop

    const/4 v1, 0x0

    :goto_c
    move-object v5, v1

    .line 259
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Methods ipaddress - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v1, "\\."

    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 261
    array-length v3, v1

    const/4 v5, 0x3

    if-le v3, v5, :cond_26

    .line 262
    aget-object v1, v1, v5

    .line 263
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_23

    .line 264
    const-string v3, "XCP"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 265
    :cond_23
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_24

    .line 266
    const-string v3, "XC"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 267
    :cond_24
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_25

    .line 268
    const-string v3, "X"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    :cond_25
    :goto_d
    const-string v3, "[XCP]"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 271
    const-string v5, "Methods lastOtect - "

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Methods actual_lastOtect - "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_26
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v2}, Lpe/hf/black20/SettingsMenuActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 274
    :cond_27
    iget-object v1, v6, Lpe/hf/black20/SettingsMenuActivity;->P:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v3, "Language"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 275
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lpe/hf/black20/LanguagePickerActivity;

    invoke-direct {v0, v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 276
    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_e

    .line 277
    :cond_28
    iget-object v1, v6, Lpe/hf/black20/SettingsMenuActivity;->P:[Ljava/lang/String;

    aget-object v1, v1, v0

    const v3, 0x7f130220

    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const-string v3, "support_email"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    const-string v3, "support_phone"

    .line 279
    invoke-static {v1, v3, v4, v0}, Lcom/google/protobuf/U2;->h(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-virtual {v6, v0, v2}, Lpe/hf/black20/SettingsMenuActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 281
    :cond_29
    iget-object v1, v6, Lpe/hf/black20/SettingsMenuActivity;->P:[Ljava/lang/String;

    aget-object v1, v1, v0

    const v2, 0x7f1301f2

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 282
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lpe/hf/black20/OtherSettingsActivity;

    invoke-direct {v0, v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_e

    .line 284
    :cond_2a
    iget-object v1, v6, Lpe/hf/black20/SettingsMenuActivity;->P:[Ljava/lang/String;

    aget-object v1, v1, v0

    const v2, 0x7f130068

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const v0, 0x7f13001f

    .line 285
    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "clearcache"

    invoke-virtual {v6, v0, v1}, Lpe/hf/black20/SettingsMenuActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 286
    :cond_2b
    iget-object v1, v6, Lpe/hf/black20/SettingsMenuActivity;->P:[Ljava/lang/String;

    aget-object v0, v1, v0

    const v1, 0x7f13021c

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 287
    const-class v0, Lpe/hf/black20/services/OTRServices;

    invoke-static {v7, v0}, Lpe/hf/black20/util/Methods;->Y(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 289
    const-string v1, "Confirmation!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 290
    const-string v1, "Are you sure?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 291
    new-instance v1, Lb7/F1;

    const/4 v2, 0x0

    invoke-direct {v1, v6, v2}, Lb7/F1;-><init>(Lpe/hf/black20/SettingsMenuActivity;I)V

    const-string v2, "YES"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 292
    new-instance v1, Lb7/F1;

    const/4 v2, 0x1

    invoke-direct {v1, v6, v2}, Lb7/F1;-><init>(Lpe/hf/black20/SettingsMenuActivity;I)V

    const-string v2, "NO"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 293
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_2c
    :goto_e
    return-void

    .line 295
    :pswitch_0
    check-cast v6, Lpe/hf/black20/RecordsActivity;

    sget-object v1, Lpe/hf/black20/RecordsActivity;->W:Landroid/widget/ListView;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    const-string v1, "Recording Now"

    const-string v2, "Scheduled"

    const-string v3, "status"

    const-string v5, "id"

    :try_start_3
    iget-object v7, v6, Lpe/hf/black20/RecordsActivity;->K:Lorg/json/JSONArray;

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 297
    iget-object v8, v6, Lpe/hf/black20/RecordsActivity;->K:Lorg/json/JSONArray;

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "path"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 298
    iget-object v9, v6, Lpe/hf/black20/RecordsActivity;->K:Lorg/json/JSONArray;

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lpe/hf/black20/RecordsActivity;->P:Ljava/lang/String;

    .line 299
    iget-object v5, v6, Lpe/hf/black20/RecordsActivity;->K:Lorg/json/JSONArray;

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v9, "title"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lpe/hf/black20/RecordsActivity;->N:Ljava/lang/String;

    .line 300
    const-string v9, "[^a-zA-Z0-9]"

    invoke-virtual {v5, v9, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lpe/hf/black20/RecordsActivity;->N:Ljava/lang/String;

    .line 301
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lpe/hf/black20/RecordsActivity;->O:Ljava/lang/String;

    .line 302
    iget-object v4, v6, Lpe/hf/black20/RecordsActivity;->K:Lorg/json/JSONArray;

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "date"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lpe/hf/black20/RecordsActivity;->Q:Ljava/lang/String;

    .line 303
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lpe/hf/black20/RecordsActivity;->R:Ljava/lang/String;

    .line 304
    iget-object v4, v6, Lpe/hf/black20/RecordsActivity;->K:Lorg/json/JSONArray;

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 305
    invoke-virtual {v6, v7, v8, v2}, Lpe/hf/black20/RecordsActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :catch_3
    move-exception v0

    goto :goto_f

    .line 306
    :cond_2d
    iget-object v2, v6, Lpe/hf/black20/RecordsActivity;->K:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 307
    invoke-virtual {v6, v7, v8, v1}, Lpe/hf/black20/RecordsActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 308
    :cond_2e
    const-string v0, "Recorded"

    invoke-virtual {v6, v7, v8, v0}, Lpe/hf/black20/RecordsActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_10

    .line 309
    :goto_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_10
    return-void

    .line 310
    :pswitch_1
    invoke-direct {v1, v0}, Lb7/v0;->a(I)V

    return-void

    :pswitch_2
    check-cast v6, Lpe/hf/black20/ORPlayerMainActivity;

    .line 311
    iget-object v2, v6, Lpe/hf/black20/ORPlayerMainActivity;->k0:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, "Home"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, v6, LY/v;->X:Lf/S;

    const v4, 0x7f0b02d8

    if-eqz v2, :cond_2f

    const/4 v2, 0x1

    .line 312
    sput-boolean v2, Lpe/hf/black20/ORPlayerMainActivity;->I0:Z

    .line 313
    invoke-virtual {v6}, Lpe/hf/black20/ORPlayerMainActivity;->x()V

    .line 314
    invoke-virtual {v3}, Lf/S;->R()LY/K;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    new-instance v2, LY/a;

    invoke-direct {v2, v0}, LY/a;-><init>(LY/K;)V

    .line 317
    iput-object v2, v6, Lpe/hf/black20/ORPlayerMainActivity;->o0:LY/a;

    .line 318
    new-instance v0, Lb7/t0;

    invoke-direct {v0}, Lb7/t0;-><init>()V

    .line 319
    invoke-virtual {v2, v4, v0}, LY/a;->g(ILY/s;)V

    .line 320
    iget-object v0, v6, Lpe/hf/black20/ORPlayerMainActivity;->o0:LY/a;

    const/4 v2, 0x0

    .line 321
    invoke-virtual {v0, v2}, LY/a;->d(Z)I

    goto/16 :goto_11

    .line 322
    :cond_2f
    iget-object v2, v6, Lpe/hf/black20/ORPlayerMainActivity;->k0:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v5, "Live TV"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "ORT_WHICH_CAT"

    if-eqz v2, :cond_30

    .line 323
    invoke-virtual {v6}, Lpe/hf/black20/ORPlayerMainActivity;->x()V

    .line 324
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    move-result-object v0

    const-string v2, "TV"

    invoke-virtual {v0, v5, v2}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 325
    invoke-virtual {v3}, Lf/S;->R()LY/K;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    new-instance v2, LY/a;

    invoke-direct {v2, v0}, LY/a;-><init>(LY/K;)V

    .line 328
    iput-object v2, v6, Lpe/hf/black20/ORPlayerMainActivity;->o0:LY/a;

    .line 329
    new-instance v0, Lb7/M0;

    invoke-direct {v0}, Lb7/M0;-><init>()V

    .line 330
    invoke-virtual {v2, v4, v0}, LY/a;->g(ILY/s;)V

    .line 331
    iget-object v0, v6, Lpe/hf/black20/ORPlayerMainActivity;->o0:LY/a;

    const/4 v2, 0x0

    .line 332
    invoke-virtual {v0, v2}, LY/a;->d(Z)I

    goto/16 :goto_11

    .line 333
    :cond_30
    iget-object v2, v6, Lpe/hf/black20/ORPlayerMainActivity;->k0:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v7, "TV Guide"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v7, 0x4000000

    if-eqz v2, :cond_31

    .line 334
    invoke-virtual {v6}, Lpe/hf/black20/ORPlayerMainActivity;->x()V

    .line 335
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lpe/hf/black20/epg/EPGActivityXMLTV;

    invoke-direct {v0, v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 337
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 338
    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_11

    .line 339
    :cond_31
    iget-object v2, v6, Lpe/hf/black20/ORPlayerMainActivity;->k0:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v8, "Movies"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 340
    invoke-virtual {v6}, Lpe/hf/black20/ORPlayerMainActivity;->x()V

    .line 341
    invoke-virtual {v3}, Lf/S;->R()LY/K;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    new-instance v2, LY/a;

    invoke-direct {v2, v0}, LY/a;-><init>(LY/K;)V

    .line 344
    iput-object v2, v6, Lpe/hf/black20/ORPlayerMainActivity;->o0:LY/a;

    .line 345
    new-instance v0, Lb7/S0;

    invoke-direct {v0}, Lb7/S0;-><init>()V

    .line 346
    invoke-virtual {v2, v4, v0}, LY/a;->g(ILY/s;)V

    .line 347
    iget-object v0, v6, Lpe/hf/black20/ORPlayerMainActivity;->o0:LY/a;

    const/4 v2, 0x0

    .line 348
    invoke-virtual {v0, v2}, LY/a;->d(Z)I

    goto/16 :goto_11

    .line 349
    :cond_32
    iget-object v2, v6, Lpe/hf/black20/ORPlayerMainActivity;->k0:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v8, "TV Shows"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 350
    invoke-virtual {v6}, Lpe/hf/black20/ORPlayerMainActivity;->x()V

    .line 351
    invoke-virtual {v3}, Lf/S;->R()LY/K;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    new-instance v2, LY/a;

    invoke-direct {v2, v0}, LY/a;-><init>(LY/K;)V

    .line 354
    iput-object v2, v6, Lpe/hf/black20/ORPlayerMainActivity;->o0:LY/a;

    .line 355
    new-instance v0, Lb7/I0;

    invoke-direct {v0}, Lb7/I0;-><init>()V

    .line 356
    invoke-virtual {v2, v4, v0}, LY/a;->g(ILY/s;)V

    .line 357
    iget-object v0, v6, Lpe/hf/black20/ORPlayerMainActivity;->o0:LY/a;

    const/4 v2, 0x0

    .line 358
    invoke-virtual {v0, v2}, LY/a;->d(Z)I

    goto/16 :goto_11

    .line 359
    :cond_33
    iget-object v2, v6, Lpe/hf/black20/ORPlayerMainActivity;->k0:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v8, "Catchup"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 360
    invoke-virtual {v6}, Lpe/hf/black20/ORPlayerMainActivity;->x()V

    .line 361
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    move-result-object v0

    const-string v2, "CATCHUP"

    invoke-virtual {v0, v5, v2}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 362
    invoke-virtual {v3}, Lf/S;->R()LY/K;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 364
    new-instance v2, LY/a;

    invoke-direct {v2, v0}, LY/a;-><init>(LY/K;)V

    .line 365
    iput-object v2, v6, Lpe/hf/black20/ORPlayerMainActivity;->o0:LY/a;

    .line 366
    new-instance v0, Lb7/M0;

    invoke-direct {v0}, Lb7/M0;-><init>()V

    .line 367
    invoke-virtual {v2, v4, v0}, LY/a;->g(ILY/s;)V

    .line 368
    iget-object v0, v6, Lpe/hf/black20/ORPlayerMainActivity;->o0:LY/a;

    const/4 v2, 0x0

    .line 369
    invoke-virtual {v0, v2}, LY/a;->d(Z)I

    goto/16 :goto_11

    .line 370
    :cond_34
    iget-object v2, v6, Lpe/hf/black20/ORPlayerMainActivity;->k0:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v8, "Radio"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 371
    invoke-virtual {v6}, Lpe/hf/black20/ORPlayerMainActivity;->x()V

    .line 372
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    move-result-object v0

    const-string v2, "RADIO"

    invoke-virtual {v0, v5, v2}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 373
    invoke-virtual {v3}, Lf/S;->R()LY/K;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 375
    new-instance v2, LY/a;

    invoke-direct {v2, v0}, LY/a;-><init>(LY/K;)V

    .line 376
    iput-object v2, v6, Lpe/hf/black20/ORPlayerMainActivity;->o0:LY/a;

    .line 377
    new-instance v0, Lb7/M0;

    invoke-direct {v0}, Lb7/M0;-><init>()V

    .line 378
    invoke-virtual {v2, v4, v0}, LY/a;->g(ILY/s;)V

    .line 379
    iget-object v0, v6, Lpe/hf/black20/ORPlayerMainActivity;->o0:LY/a;

    const/4 v2, 0x0

    .line 380
    invoke-virtual {v0, v2}, LY/a;->d(Z)I

    goto :goto_11

    .line 381
    :cond_35
    iget-object v2, v6, Lpe/hf/black20/ORPlayerMainActivity;->k0:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, "Accounts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 382
    invoke-virtual {v6}, Lpe/hf/black20/ORPlayerMainActivity;->x()V

    .line 383
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lpe/hf/black20/UsersHistoryActivity;

    invoke-direct {v0, v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 384
    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 385
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 386
    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_11

    .line 387
    :cond_36
    iget-object v2, v6, Lpe/hf/black20/ORPlayerMainActivity;->k0:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, "Settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 388
    invoke-virtual {v6}, Lpe/hf/black20/ORPlayerMainActivity;->x()V

    .line 389
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lpe/hf/black20/SettingsMenuActivity;

    invoke-direct {v0, v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 390
    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 391
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 392
    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_11

    .line 393
    :cond_37
    iget-object v2, v6, Lpe/hf/black20/ORPlayerMainActivity;->k0:[Ljava/lang/String;

    aget-object v0, v2, v0

    const-string v2, "Exit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 394
    invoke-virtual {v6}, Lpe/hf/black20/ORPlayerMainActivity;->s()V

    :cond_38
    :goto_11
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
