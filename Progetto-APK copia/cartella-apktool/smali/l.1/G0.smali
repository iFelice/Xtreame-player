.class public final Ll/G0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    iput p2, p0, Ll/G0;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Ll/G0;->H:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    .line 1
    iget p1, p0, Ll/G0;->G:I

    .line 2
    .line 3
    iget-object p2, p0, Ll/G0;->H:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string p1, "stream_id"

    .line 9
    .line 10
    const-string p4, "XCIPTV_TAG"

    .line 11
    .line 12
    const-string p5, "ORT_WHICH_PANEL"

    .line 13
    .line 14
    const-string v0, "xtreamcodes"

    .line 15
    .line 16
    const-string v1, "PlayStreamEPGActivity - TV Guide For - "

    .line 17
    .line 18
    :try_start_0
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2, p5, v0}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    const/4 v3, 0x1

    .line 31
    const-string v4, "name"

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    :try_start_1
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2, p5, v0}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v5, "otr"

    .line 44
    .line 45
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_0
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1, p5, v0}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p5

    .line 61
    const-string v0, "ezserver"

    .line 62
    .line 63
    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p5

    .line 67
    if-eqz p5, :cond_3

    .line 68
    .line 69
    const-string p5, "--------------setOnItemSelectedListener-----------listview_ch.setOnItemSelectedListener"

    .line 70
    .line 71
    invoke-static {p4, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-object p5, p2

    .line 75
    check-cast p5, Lb7/h1;

    .line 76
    .line 77
    iget-object p5, p5, Lb7/h1;->b:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 78
    .line 79
    iget-object p5, p5, Lpe/hf/black20/PlayStreamEPGActivity;->i0:Ljava/lang/String;

    .line 80
    .line 81
    move-object v0, p2

    .line 82
    check-cast v0, Lb7/h1;

    .line 83
    .line 84
    iget-object v0, v0, Lb7/h1;->b:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 85
    .line 86
    iget-object v0, v0, Lpe/hf/black20/PlayStreamEPGActivity;->p0:Lorg/json/JSONArray;

    .line 87
    .line 88
    invoke-virtual {v0, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p5

    .line 100
    if-nez p5, :cond_3

    .line 101
    .line 102
    move-object p5, p2

    .line 103
    check-cast p5, Lb7/h1;

    .line 104
    .line 105
    iget-object p5, p5, Lb7/h1;->b:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 106
    .line 107
    move-object v0, p2

    .line 108
    check-cast v0, Lb7/h1;

    .line 109
    .line 110
    iget-object v0, v0, Lb7/h1;->b:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 111
    .line 112
    iget-object v0, v0, Lpe/hf/black20/PlayStreamEPGActivity;->p0:Lorg/json/JSONArray;

    .line 113
    .line 114
    invoke-virtual {v0, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iput-object v0, p5, Lpe/hf/black20/PlayStreamEPGActivity;->i0:Ljava/lang/String;

    .line 123
    .line 124
    move-object p5, p2

    .line 125
    check-cast p5, Lb7/h1;

    .line 126
    .line 127
    iget-object p5, p5, Lb7/h1;->b:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 128
    .line 129
    iput-boolean v3, p5, Lpe/hf/black20/PlayStreamEPGActivity;->i2:Z

    .line 130
    .line 131
    move-object p5, p2

    .line 132
    check-cast p5, Lb7/h1;

    .line 133
    .line 134
    iget-object p5, p5, Lb7/h1;->b:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 135
    .line 136
    iget-object p5, p5, Lpe/hf/black20/PlayStreamEPGActivity;->p0:Lorg/json/JSONArray;

    .line 137
    .line 138
    invoke-virtual {p5, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 139
    .line 140
    .line 141
    move-result-object p5

    .line 142
    invoke-virtual {p5, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p5

    .line 146
    invoke-static {p4, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-object p4, p2

    .line 150
    check-cast p4, Lb7/h1;

    .line 151
    .line 152
    iget-object p4, p4, Lb7/h1;->b:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 153
    .line 154
    move-object p5, p2

    .line 155
    check-cast p5, Lb7/h1;

    .line 156
    .line 157
    iget-object p5, p5, Lb7/h1;->b:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 158
    .line 159
    iget-object p5, p5, Lpe/hf/black20/PlayStreamEPGActivity;->p0:Lorg/json/JSONArray;

    .line 160
    .line 161
    invoke-virtual {p5, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 162
    .line 163
    .line 164
    move-result-object p3

    .line 165
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    iput-object p1, p4, Lpe/hf/black20/PlayStreamEPGActivity;->k0:Ljava/lang/String;

    .line 170
    .line 171
    check-cast p2, Lb7/h1;

    .line 172
    .line 173
    iget-object p1, p2, Lb7/h1;->b:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 174
    .line 175
    invoke-static {p1}, Lpe/hf/black20/PlayStreamEPGActivity;->s(Lpe/hf/black20/PlayStreamEPGActivity;)V

    .line 176
    .line 177
    .line 178
    goto/16 :goto_1

    .line 179
    .line 180
    :cond_1
    :goto_0
    move-object p1, p2

    .line 181
    check-cast p1, Lb7/h1;

    .line 182
    .line 183
    iget-object p1, p1, Lb7/h1;->b:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 184
    .line 185
    iget-object p1, p1, Lpe/hf/black20/PlayStreamEPGActivity;->i0:Ljava/lang/String;

    .line 186
    .line 187
    move-object p4, p2

    .line 188
    check-cast p4, Lb7/h1;

    .line 189
    .line 190
    iget-object p4, p4, Lb7/h1;->b:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 191
    .line 192
    iget-object p4, p4, Lpe/hf/black20/PlayStreamEPGActivity;->p0:Lorg/json/JSONArray;

    .line 193
    .line 194
    invoke-virtual {p4, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 195
    .line 196
    .line 197
    move-result-object p4

    .line 198
    invoke-virtual {p4, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p4

    .line 202
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-nez p1, :cond_3

    .line 207
    .line 208
    move-object p1, p2

    .line 209
    check-cast p1, Lb7/h1;

    .line 210
    .line 211
    iget-object p1, p1, Lb7/h1;->b:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 212
    .line 213
    move-object p4, p2

    .line 214
    check-cast p4, Lb7/h1;

    .line 215
    .line 216
    iget-object p4, p4, Lb7/h1;->b:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 217
    .line 218
    iget-object p4, p4, Lpe/hf/black20/PlayStreamEPGActivity;->p0:Lorg/json/JSONArray;

    .line 219
    .line 220
    invoke-virtual {p4, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 221
    .line 222
    .line 223
    move-result-object p4

    .line 224
    invoke-virtual {p4, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p4

    .line 228
    iput-object p4, p1, Lpe/hf/black20/PlayStreamEPGActivity;->i0:Ljava/lang/String;

    .line 229
    .line 230
    move-object p1, p2

    .line 231
    check-cast p1, Lb7/h1;

    .line 232
    .line 233
    iget-object p1, p1, Lb7/h1;->b:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 234
    .line 235
    iput-boolean v3, p1, Lpe/hf/black20/PlayStreamEPGActivity;->i2:Z

    .line 236
    .line 237
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    const-string p4, "ORT_PROCESS_STATUS"

    .line 242
    .line 243
    invoke-virtual {p1, p4}, LQ5/a;->b(Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    if-nez p1, :cond_2

    .line 248
    .line 249
    move-object p1, p2

    .line 250
    check-cast p1, Lb7/h1;

    .line 251
    .line 252
    iget-object p1, p1, Lb7/h1;->b:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 253
    .line 254
    move-object p4, p2

    .line 255
    check-cast p4, Lb7/h1;

    .line 256
    .line 257
    iget-object p4, p4, Lb7/h1;->b:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 258
    .line 259
    iget-object p4, p4, Lpe/hf/black20/PlayStreamEPGActivity;->p0:Lorg/json/JSONArray;

    .line 260
    .line 261
    invoke-virtual {p4, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 262
    .line 263
    .line 264
    move-result-object p4

    .line 265
    const-string p5, "epg_channel_id"

    .line 266
    .line 267
    invoke-virtual {p4, p5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p4

    .line 271
    const-string p5, "yes"

    .line 272
    .line 273
    invoke-virtual {p1, p4, p5}, Lpe/hf/black20/PlayStreamEPGActivity;->N(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    :cond_2
    move-object p1, p2

    .line 277
    check-cast p1, Lb7/h1;

    .line 278
    .line 279
    iget-object p1, p1, Lb7/h1;->b:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 280
    .line 281
    iget-object p1, p1, Lpe/hf/black20/PlayStreamEPGActivity;->v1:Landroid/widget/TextView;

    .line 282
    .line 283
    new-instance p4, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    check-cast p2, Lb7/h1;

    .line 289
    .line 290
    iget-object p2, p2, Lb7/h1;->b:Lpe/hf/black20/PlayStreamEPGActivity;

    .line 291
    .line 292
    iget-object p2, p2, Lpe/hf/black20/PlayStreamEPGActivity;->p0:Lorg/json/JSONArray;

    .line 293
    .line 294
    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p2

    .line 302
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p2

    .line 309
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 310
    .line 311
    .line 312
    :catch_0
    :cond_3
    :goto_1
    return-void

    .line 313
    :pswitch_0
    const/4 p1, -0x1

    .line 314
    if-eq p3, p1, :cond_4

    .line 315
    .line 316
    check-cast p2, Ll/M0;

    .line 317
    .line 318
    iget-object p1, p2, Ll/M0;->I:Ll/z0;

    .line 319
    .line 320
    if-eqz p1, :cond_4

    .line 321
    .line 322
    const/4 p2, 0x0

    .line 323
    invoke-virtual {p1, p2}, Ll/z0;->setListSelectionHidden(Z)V

    .line 324
    .line 325
    .line 326
    :cond_4
    return-void

    .line 327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    return-void
.end method
