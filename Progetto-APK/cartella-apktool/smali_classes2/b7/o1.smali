.class public final synthetic Lb7/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;

.field public final synthetic I:Ljava/lang/Object;

.field public final synthetic J:Ljava/lang/Object;

.field public final synthetic K:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p5, p0, Lb7/o1;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/o1;->H:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Lb7/o1;->I:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p3, p0, Lb7/o1;->J:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p4, p0, Lb7/o1;->K:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    const-class p1, Lpe/hf/black20/services/RecordingServices;

    .line 2
    .line 3
    iget v0, p0, Lb7/o1;->G:I

    .line 4
    .line 5
    iget-object v1, p0, Lb7/o1;->K:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v2, p0, Lb7/o1;->J:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v3, p0, Lb7/o1;->I:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v4, p0, Lb7/o1;->H:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v4, LD1/t;

    .line 17
    .line 18
    check-cast v3, Lm0/Y;

    .line 19
    .line 20
    check-cast v2, Lm0/g0;

    .line 21
    .line 22
    check-cast v1, LD1/s;

    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    check-cast v3, Lm0/f;

    .line 28
    .line 29
    const/16 p1, 0x1d

    .line 30
    .line 31
    invoke-virtual {v3, p1}, Lm0/f;->c(I)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    check-cast v3, LB0/O;

    .line 39
    .line 40
    invoke-virtual {v3}, LB0/O;->E()Lm0/k0;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, LR0/k;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    new-instance v0, LR0/j;

    .line 50
    .line 51
    invoke-direct {v0, p1}, LR0/j;-><init>(LR0/k;)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Lm0/h0;

    .line 55
    .line 56
    iget v5, v1, LD1/s;->b:I

    .line 57
    .line 58
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-static {v5}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-direct {p1, v2, v5}, Lm0/h0;-><init>(Lm0/g0;Ljava/util/List;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, LR0/j;->f(Lm0/h0;)Lm0/j0;

    .line 70
    .line 71
    .line 72
    iget-object p1, v1, LD1/s;->a:Lm0/l0;

    .line 73
    .line 74
    iget-object p1, p1, Lm0/l0;->b:Lm0/g0;

    .line 75
    .line 76
    iget p1, p1, Lm0/g0;->c:I

    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    invoke-virtual {v0, p1, v2}, Lm0/j0;->j(IZ)Lm0/j0;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lm0/j0;->b()Lm0/k0;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v3, p1}, LB0/O;->U(Lm0/k0;)V

    .line 87
    .line 88
    .line 89
    move-object p1, v4

    .line 90
    check-cast p1, LD1/j;

    .line 91
    .line 92
    iget v0, p1, LD1/j;->K:I

    .line 93
    .line 94
    packed-switch v0, :pswitch_data_1

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :pswitch_0
    iget-object p1, p1, LD1/j;->L:LD1/v;

    .line 99
    .line 100
    iget-object p1, p1, LD1/v;->R:LD1/q;

    .line 101
    .line 102
    const/4 v0, 0x1

    .line 103
    iget-object v1, v1, LD1/s;->c:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {p1, v0, v1}, LD1/q;->f(ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :goto_0
    iget-object p1, v4, LD1/t;->J:LD1/v;

    .line 109
    .line 110
    iget-object p1, p1, LD1/v;->W:Landroid/widget/PopupWindow;

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 113
    .line 114
    .line 115
    :goto_1
    return-void

    .line 116
    :pswitch_1
    check-cast v4, Lpe/hf/black20/RecordsActivity;

    .line 117
    .line 118
    check-cast v3, Ljava/lang/String;

    .line 119
    .line 120
    check-cast v2, Ljava/lang/String;

    .line 121
    .line 122
    check-cast v1, Landroid/app/AlertDialog;

    .line 123
    .line 124
    sget-object v0, Lpe/hf/black20/RecordsActivity;->W:Landroid/widget/ListView;

    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    const-string v0, "Recording Now"

    .line 130
    .line 131
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    iget-object v3, v4, Lpe/hf/black20/RecordsActivity;->G:Lpe/hf/black20/RecordsActivity;

    .line 136
    .line 137
    if-eqz v0, :cond_2

    .line 138
    .line 139
    invoke-static {v3, p1}, Lpe/hf/black20/util/Methods;->S(Landroid/content/Context;Ljava/lang/Class;)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_1

    .line 144
    .line 145
    invoke-static {v3, p1}, Lpe/hf/black20/util/Methods;->Y(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .line 147
    .line 148
    :cond_1
    invoke-static {v3}, Lpe/hf/black20/util/Methods;->X(Landroid/content/Context;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, v4, Lpe/hf/black20/RecordsActivity;->J:Lc7/c;

    .line 152
    .line 153
    const-string v0, "Recorded"

    .line 154
    .line 155
    invoke-virtual {p1, v0, v2}, Lc7/c;->d0(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object p1, v4, Lpe/hf/black20/RecordsActivity;->S:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v4, p1}, Lpe/hf/black20/RecordsActivity;->a(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_2
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 168
    .line 169
    .line 170
    new-instance p1, Landroid/content/Intent;

    .line 171
    .line 172
    const-class v0, Lpe/hf/black20/PlayStreamEPGActivity;

    .line 173
    .line 174
    invoke-direct {p1, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .line 176
    .line 177
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    const-string v1, "ORT_WHICH_CAT"

    .line 182
    .line 183
    const-string v2, "VOD"

    .line 184
    .line 185
    invoke-virtual {v0, v1, v2}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 186
    .line 187
    .line 188
    const-string v0, "name"

    .line 189
    .line 190
    iget-object v1, v4, Lpe/hf/black20/RecordsActivity;->N:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    .line 194
    .line 195
    const-string v0, "streamurl"

    .line 196
    .line 197
    iget-object v1, v4, Lpe/hf/black20/RecordsActivity;->O:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    .line 201
    .line 202
    const-string v0, "stream_id"

    .line 203
    .line 204
    iget-object v1, v4, Lpe/hf/black20/RecordsActivity;->P:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    .line 208
    .line 209
    const-string v0, "category_list"

    .line 210
    .line 211
    const/4 v1, 0x0

    .line 212
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    .line 214
    .line 215
    const-string v0, "program_desc"

    .line 216
    .line 217
    iget-object v1, v4, Lpe/hf/black20/RecordsActivity;->Q:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    .line 221
    .line 222
    const-string v0, "position"

    .line 223
    .line 224
    iget-object v1, v4, Lpe/hf/black20/RecordsActivity;->R:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    .line 228
    .line 229
    const-string v0, "isTrailer"

    .line 230
    .line 231
    const-string v1, "no"

    .line 232
    .line 233
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 237
    .line 238
    .line 239
    :goto_2
    return-void

    .line 240
    :pswitch_2
    check-cast v4, Lpe/hf/black20/RecordsActivity;

    .line 241
    .line 242
    check-cast v3, Ljava/lang/String;

    .line 243
    .line 244
    check-cast v2, Ljava/lang/String;

    .line 245
    .line 246
    check-cast v1, Landroid/app/AlertDialog;

    .line 247
    .line 248
    iget-object v0, v4, Lpe/hf/black20/RecordsActivity;->J:Lc7/c;

    .line 249
    .line 250
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    :try_start_0
    const-string v5, "recordings"

    .line 255
    .line 256
    const-string v6, "id = ?"

    .line 257
    .line 258
    filled-new-array {v3}, [Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-virtual {v0, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 266
    .line 267
    .line 268
    iget-object v0, v4, Lpe/hf/black20/RecordsActivity;->G:Lpe/hf/black20/RecordsActivity;

    .line 269
    .line 270
    invoke-static {v0, p1}, Lpe/hf/black20/util/Methods;->S(Landroid/content/Context;Ljava/lang/Class;)Z

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    if-eqz v3, :cond_3

    .line 275
    .line 276
    invoke-static {v0, p1}, Lpe/hf/black20/util/Methods;->Y(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    .line 278
    .line 279
    :cond_3
    const-string p1, "XCIPTV_TAG"

    .line 280
    .line 281
    const-string v3, "Methods - "

    .line 282
    .line 283
    :try_start_1
    new-instance v5, Ljava/io/File;

    .line 284
    .line 285
    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 289
    .line 290
    .line 291
    move-result v6

    .line 292
    if-eqz v6, :cond_4

    .line 293
    .line 294
    new-instance v6, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string v2, " file Exist and deleted."

    .line 303
    .line 304
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 315
    .line 316
    .line 317
    goto :goto_3

    .line 318
    :catch_0
    move-exception v2

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    const-string v5, "Methods - Exception while deleting file "

    .line 322
    .line 323
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    :cond_4
    :goto_3
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->X(Landroid/content/Context;)V

    .line 341
    .line 342
    .line 343
    iget-object p1, v4, Lpe/hf/black20/RecordsActivity;->S:Ljava/lang/String;

    .line 344
    .line 345
    invoke-virtual {v4, p1}, Lpe/hf/black20/RecordsActivity;->a(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 349
    .line 350
    .line 351
    return-void

    .line 352
    :catchall_0
    move-exception p1

    .line 353
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 354
    .line 355
    .line 356
    throw p1

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
