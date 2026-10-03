.class public final synthetic LD1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput p2, p0, LD1/i;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LD1/i;->H:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget p1, p0, LD1/i;->G:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/16 v1, 0x1d

    .line 5
    .line 6
    iget-object v2, p0, LD1/i;->H:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast v2, Lpe/hf/black20/updatecontents/XCUpdateContents;

    .line 12
    .line 13
    sget p1, Lpe/hf/black20/updatecontents/XCUpdateContents;->b0:I

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    check-cast v2, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;

    .line 20
    .line 21
    sget p1, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;->R:I

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_1
    check-cast v2, Lpe/hf/black20/MovieInfoActivity;

    .line 28
    .line 29
    sget p1, Lpe/hf/black20/MovieInfoActivity;->l0:I

    .line 30
    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v0, "http://www.youtube.com/watch?v="

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v2, Lpe/hf/black20/MovieInfoActivity;->i0:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v0, "android.intent.action.VIEW"

    .line 48
    .line 49
    const/high16 v1, 0x14000000

    .line 50
    .line 51
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    new-instance v4, Landroid/content/Intent;

    .line 56
    .line 57
    invoke-direct {v4, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lpe/hf/black20/util/Methods;->P()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_0

    .line 65
    .line 66
    const/high16 v3, 0x10000000

    .line 67
    .line 68
    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    const/high16 v3, 0x8000000

    .line 72
    .line 73
    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    const-string v3, "com.google.android.youtube"

    .line 78
    .line 79
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    :goto_0
    invoke-virtual {v2, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :catch_0
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    .line 90
    .line 91
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-direct {v3, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 96
    .line 97
    .line 98
    invoke-static {}, Lpe/hf/black20/util/Methods;->P()Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_1

    .line 103
    .line 104
    const/high16 p1, 0x18000000

    .line 105
    .line 106
    invoke-virtual {v3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catch_1
    move-exception p1

    .line 111
    goto :goto_2

    .line 112
    :cond_1
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    .line 114
    .line 115
    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v1, "Failed to open YouTube video: "

    .line 122
    .line 123
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    const-string v0, "XCIPTV_TAG"

    .line 138
    .line 139
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    :goto_3
    return-void

    .line 143
    :pswitch_2
    check-cast v2, LD1/j;

    .line 144
    .line 145
    iget-object p1, v2, LD1/j;->L:LD1/v;

    .line 146
    .line 147
    iget-object v0, p1, LD1/v;->V0:Lm0/Y;

    .line 148
    .line 149
    if-eqz v0, :cond_2

    .line 150
    .line 151
    check-cast v0, Lm0/f;

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Lm0/f;->c(I)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_2

    .line 158
    .line 159
    iget-object v0, p1, LD1/v;->V0:Lm0/Y;

    .line 160
    .line 161
    check-cast v0, LB0/O;

    .line 162
    .line 163
    invoke-virtual {v0}, LB0/O;->E()Lm0/k0;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iget-object v1, p1, LD1/v;->V0:Lm0/Y;

    .line 168
    .line 169
    check-cast v0, LR0/k;

    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    new-instance v2, LR0/j;

    .line 175
    .line 176
    invoke-direct {v2, v0}, LR0/j;-><init>(LR0/k;)V

    .line 177
    .line 178
    .line 179
    const/4 v0, 0x3

    .line 180
    invoke-virtual {v2, v0}, LR0/j;->c(I)Lm0/j0;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Lm0/j0;->e()Lm0/j0;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2}, Lm0/j0;->g()Lm0/j0;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2}, Lm0/j0;->i()Lm0/j0;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2}, Lm0/j0;->b()Lm0/k0;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    check-cast v1, LB0/O;

    .line 197
    .line 198
    invoke-virtual {v1, v0}, LB0/O;->U(Lm0/k0;)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p1, LD1/v;->W:Landroid/widget/PopupWindow;

    .line 202
    .line 203
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 204
    .line 205
    .line 206
    :cond_2
    return-void

    .line 207
    :pswitch_3
    check-cast v2, LD1/p;

    .line 208
    .line 209
    sget p1, LD1/p;->e0:I

    .line 210
    .line 211
    invoke-virtual {v2}, LO1/c0;->c()I

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    iget-object v1, v2, LD1/p;->d0:LD1/v;

    .line 216
    .line 217
    iget-object v2, v1, LD1/v;->o0:Landroid/view/View;

    .line 218
    .line 219
    if-nez p1, :cond_3

    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    iget-object p1, v1, LD1/v;->S:LD1/n;

    .line 225
    .line 226
    invoke-virtual {v1, p1, v2}, LD1/v;->e(LO1/C;Landroid/view/View;)V

    .line 227
    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_3
    if-ne p1, v0, :cond_4

    .line 231
    .line 232
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    iget-object p1, v1, LD1/v;->U:LD1/j;

    .line 236
    .line 237
    invoke-virtual {v1, p1, v2}, LD1/v;->e(LO1/C;Landroid/view/View;)V

    .line 238
    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_4
    iget-object p1, v1, LD1/v;->W:Landroid/widget/PopupWindow;

    .line 242
    .line 243
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 244
    .line 245
    .line 246
    :goto_4
    return-void

    .line 247
    :pswitch_4
    check-cast v2, LD1/j;

    .line 248
    .line 249
    iget-object p1, v2, LD1/j;->L:LD1/v;

    .line 250
    .line 251
    iget-object v2, p1, LD1/v;->V0:Lm0/Y;

    .line 252
    .line 253
    if-eqz v2, :cond_6

    .line 254
    .line 255
    check-cast v2, Lm0/f;

    .line 256
    .line 257
    invoke-virtual {v2, v1}, Lm0/f;->c(I)Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-nez v1, :cond_5

    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_5
    iget-object v1, p1, LD1/v;->V0:Lm0/Y;

    .line 265
    .line 266
    check-cast v1, LB0/O;

    .line 267
    .line 268
    invoke-virtual {v1}, LB0/O;->E()Lm0/k0;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    iget-object v2, p1, LD1/v;->V0:Lm0/Y;

    .line 273
    .line 274
    check-cast v1, LR0/k;

    .line 275
    .line 276
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    new-instance v3, LR0/j;

    .line 280
    .line 281
    invoke-direct {v3, v1}, LR0/j;-><init>(LR0/k;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v3, v0}, LR0/j;->c(I)Lm0/j0;

    .line 285
    .line 286
    .line 287
    const/4 v1, 0x0

    .line 288
    invoke-virtual {v3, v0, v1}, Lm0/j0;->j(IZ)Lm0/j0;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3}, Lm0/j0;->b()Lm0/k0;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    check-cast v2, LB0/O;

    .line 296
    .line 297
    invoke-virtual {v2, v1}, LB0/O;->U(Lm0/k0;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    const v2, 0x7f1300d3

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    iget-object v2, p1, LD1/v;->R:LD1/q;

    .line 312
    .line 313
    invoke-virtual {v2, v0, v1}, LD1/q;->f(ILjava/lang/String;)V

    .line 314
    .line 315
    .line 316
    iget-object p1, p1, LD1/v;->W:Landroid/widget/PopupWindow;

    .line 317
    .line 318
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 319
    .line 320
    .line 321
    :cond_6
    :goto_5
    return-void

    .line 322
    nop

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
