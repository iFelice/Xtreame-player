.class public final synthetic Lb7/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lpe/hf/black20/LoginActivity;

.field public final synthetic I:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/LoginActivity;Landroid/app/AlertDialog;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lb7/Q;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/Q;->H:Lpe/hf/black20/LoginActivity;

    .line 7
    .line 8
    iput-object p2, p0, Lb7/Q;->I:Landroid/app/AlertDialog;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget p1, p0, Lb7/Q;->G:I

    .line 2
    .line 3
    const-string v0, "4"

    .line 4
    .line 5
    const-string v1, "XCIPTV_WHICH_PORTAL_SELECTED"

    .line 6
    .line 7
    iget-object v2, p0, Lb7/Q;->I:Landroid/app/AlertDialog;

    .line 8
    .line 9
    iget-object v3, p0, Lb7/Q;->H:Lpe/hf/black20/LoginActivity;

    .line 10
    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object p1, v3, Lpe/hf/black20/LoginActivity;->I0:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v3, p1}, Lpe/hf/black20/LoginActivity;->p(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    sget-object p1, Lpe/hf/black20/LoginActivity;->N0:Landroid/widget/Button;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance p1, Landroid/content/Intent;

    .line 29
    .line 30
    const-class v0, Lpe/hf/black20/UsersHistoryActivity;

    .line 31
    .line 32
    invoke-direct {p1, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_1
    sget-object p1, Lpe/hf/black20/LoginActivity;->N0:Landroid/widget/Button;

    .line 43
    .line 44
    const-string p1, "otr"

    .line 45
    .line 46
    invoke-virtual {v3, p1}, Lpe/hf/black20/LoginActivity;->l(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Lpe/hf/black20/LoginActivity;->q()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_2
    sget-object p1, Lpe/hf/black20/LoginActivity;->N0:Landroid/widget/Button;

    .line 57
    .line 58
    const-string p1, "m3u"

    .line 59
    .line 60
    invoke-virtual {v3, p1}, Lpe/hf/black20/LoginActivity;->l(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Lpe/hf/black20/LoginActivity;->q()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_3
    sget-object p1, Lpe/hf/black20/LoginActivity;->N0:Landroid/widget/Button;

    .line 71
    .line 72
    const-string p1, "ezserver"

    .line 73
    .line 74
    invoke-virtual {v3, p1}, Lpe/hf/black20/LoginActivity;->l(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Lpe/hf/black20/LoginActivity;->q()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_4
    sget-object p1, Lpe/hf/black20/LoginActivity;->N0:Landroid/widget/Button;

    .line 85
    .line 86
    const-string p1, "xtreamcodes"

    .line 87
    .line 88
    invoke-virtual {v3, p1}, Lpe/hf/black20/LoginActivity;->l(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Lpe/hf/black20/LoginActivity;->q()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :pswitch_5
    sget-object p1, Lpe/hf/black20/LoginActivity;->N0:Landroid/widget/Button;

    .line 99
    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v4, "PANEL 5 "

    .line 103
    .line 104
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v4, v3, Lpe/hf/black20/LoginActivity;->v0:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {v3, p1}, Lpe/hf/black20/LoginActivity;->m(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Lpe/hf/black20/LoginActivity;->h()V

    .line 120
    .line 121
    .line 122
    iget-object p1, v3, Lpe/hf/black20/LoginActivity;->J:Landroid/content/SharedPreferences;

    .line 123
    .line 124
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iput-object p1, v3, Lpe/hf/black20/LoginActivity;->K:Landroid/content/SharedPreferences$Editor;

    .line 129
    .line 130
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    .line 132
    .line 133
    iget-object p1, v3, Lpe/hf/black20/LoginActivity;->K:Landroid/content/SharedPreferences$Editor;

    .line 134
    .line 135
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 136
    .line 137
    .line 138
    iget-object p1, v3, Lpe/hf/black20/LoginActivity;->K:Landroid/content/SharedPreferences$Editor;

    .line 139
    .line 140
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :pswitch_6
    sget-object p1, Lpe/hf/black20/LoginActivity;->N0:Landroid/widget/Button;

    .line 148
    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v4, "PANEL 4 "

    .line 152
    .line 153
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-object v4, v3, Lpe/hf/black20/LoginActivity;->v0:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {v3, p1}, Lpe/hf/black20/LoginActivity;->m(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3}, Lpe/hf/black20/LoginActivity;->h()V

    .line 169
    .line 170
    .line 171
    iget-object p1, v3, Lpe/hf/black20/LoginActivity;->J:Landroid/content/SharedPreferences;

    .line 172
    .line 173
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    iput-object p1, v3, Lpe/hf/black20/LoginActivity;->K:Landroid/content/SharedPreferences$Editor;

    .line 178
    .line 179
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    .line 181
    .line 182
    iget-object p1, v3, Lpe/hf/black20/LoginActivity;->K:Landroid/content/SharedPreferences$Editor;

    .line 183
    .line 184
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 185
    .line 186
    .line 187
    iget-object p1, v3, Lpe/hf/black20/LoginActivity;->K:Landroid/content/SharedPreferences$Editor;

    .line 188
    .line 189
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :pswitch_7
    sget-object p1, Lpe/hf/black20/LoginActivity;->N0:Landroid/widget/Button;

    .line 197
    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    const-string v0, "PANEL 3 "

    .line 201
    .line 202
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v0, v3, Lpe/hf/black20/LoginActivity;->v0:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-virtual {v3, p1}, Lpe/hf/black20/LoginActivity;->m(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3}, Lpe/hf/black20/LoginActivity;->h()V

    .line 218
    .line 219
    .line 220
    iget-object p1, v3, Lpe/hf/black20/LoginActivity;->J:Landroid/content/SharedPreferences;

    .line 221
    .line 222
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    iput-object p1, v3, Lpe/hf/black20/LoginActivity;->K:Landroid/content/SharedPreferences$Editor;

    .line 227
    .line 228
    const-string v0, "3"

    .line 229
    .line 230
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 231
    .line 232
    .line 233
    iget-object p1, v3, Lpe/hf/black20/LoginActivity;->K:Landroid/content/SharedPreferences$Editor;

    .line 234
    .line 235
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 236
    .line 237
    .line 238
    iget-object p1, v3, Lpe/hf/black20/LoginActivity;->K:Landroid/content/SharedPreferences$Editor;

    .line 239
    .line 240
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 244
    .line 245
    .line 246
    return-void

    .line 247
    :pswitch_8
    sget-object p1, Lpe/hf/black20/LoginActivity;->N0:Landroid/widget/Button;

    .line 248
    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    const-string v0, "PANEL 2 "

    .line 252
    .line 253
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    iget-object v0, v3, Lpe/hf/black20/LoginActivity;->v0:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {v3, p1}, Lpe/hf/black20/LoginActivity;->m(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3}, Lpe/hf/black20/LoginActivity;->h()V

    .line 269
    .line 270
    .line 271
    iget-object p1, v3, Lpe/hf/black20/LoginActivity;->J:Landroid/content/SharedPreferences;

    .line 272
    .line 273
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    iput-object p1, v3, Lpe/hf/black20/LoginActivity;->K:Landroid/content/SharedPreferences$Editor;

    .line 278
    .line 279
    const-string v0, "2"

    .line 280
    .line 281
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 282
    .line 283
    .line 284
    iget-object p1, v3, Lpe/hf/black20/LoginActivity;->K:Landroid/content/SharedPreferences$Editor;

    .line 285
    .line 286
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 287
    .line 288
    .line 289
    iget-object p1, v3, Lpe/hf/black20/LoginActivity;->K:Landroid/content/SharedPreferences$Editor;

    .line 290
    .line 291
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 292
    .line 293
    .line 294
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    :pswitch_9
    sget-object p1, Lpe/hf/black20/LoginActivity;->N0:Landroid/widget/Button;

    .line 299
    .line 300
    new-instance p1, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    const-string v0, "PANEL 1 "

    .line 303
    .line 304
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    iget-object v0, v3, Lpe/hf/black20/LoginActivity;->v0:Ljava/lang/String;

    .line 308
    .line 309
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-virtual {v3, p1}, Lpe/hf/black20/LoginActivity;->m(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v3}, Lpe/hf/black20/LoginActivity;->h()V

    .line 320
    .line 321
    .line 322
    iget-object p1, v3, Lpe/hf/black20/LoginActivity;->J:Landroid/content/SharedPreferences;

    .line 323
    .line 324
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    iput-object p1, v3, Lpe/hf/black20/LoginActivity;->K:Landroid/content/SharedPreferences$Editor;

    .line 329
    .line 330
    const-string v0, "1"

    .line 331
    .line 332
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 333
    .line 334
    .line 335
    iget-object p1, v3, Lpe/hf/black20/LoginActivity;->K:Landroid/content/SharedPreferences$Editor;

    .line 336
    .line 337
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 338
    .line 339
    .line 340
    iget-object p1, v3, Lpe/hf/black20/LoginActivity;->K:Landroid/content/SharedPreferences$Editor;

    .line 341
    .line 342
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 343
    .line 344
    .line 345
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 346
    .line 347
    .line 348
    return-void

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
