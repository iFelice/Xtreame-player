.class public final synthetic Ll7/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lpe/hf/black20/updatecontents/XCUpdateContents;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/updatecontents/XCUpdateContents;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ll7/h;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Ll7/h;->H:Lpe/hf/black20/updatecontents/XCUpdateContents;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Ll7/h;->G:I

    .line 2
    .line 3
    const-string v1, "XCIPTV_TAG"

    .line 4
    .line 5
    const-string v2, "!"

    .line 6
    .line 7
    const v3, 0x7f1301bb

    .line 8
    .line 9
    .line 10
    iget-object v4, p0, Ll7/h;->H:Lpe/hf/black20/updatecontents/XCUpdateContents;

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iput-boolean v5, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->S:Z

    .line 17
    .line 18
    iget-object v0, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->V:Landroid/widget/TextView;

    .line 19
    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v4, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->K:Lpe/hf/black20/updatecontents/XCUpdateContents;

    .line 26
    .line 27
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    const-string v0, "XCUpdateContents -----Completed - All Series added to Local Database"

    .line 45
    .line 46
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_0
    iput-boolean v5, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->O:Z

    .line 51
    .line 52
    iget-object v0, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->T:Landroid/widget/TextView;

    .line 53
    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object v4, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->K:Lpe/hf/black20/updatecontents/XCUpdateContents;

    .line 60
    .line 61
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    const-string v0, "XCUpdateContents -----Completed - All Live TV List added to Local Database"

    .line 79
    .line 80
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_1
    iput-boolean v5, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->Q:Z

    .line 85
    .line 86
    iget-object v0, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->U:Landroid/widget/TextView;

    .line 87
    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    iget-object v4, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->K:Lpe/hf/black20/updatecontents/XCUpdateContents;

    .line 94
    .line 95
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    const-string v0, "XCUpdateContents -----Completed - All VODs added to Local Database"

    .line 113
    .line 114
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :pswitch_2
    iput-boolean v5, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->N:Z

    .line 119
    .line 120
    return-void

    .line 121
    :pswitch_3
    iput-boolean v5, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->P:Z

    .line 122
    .line 123
    return-void

    .line 124
    :pswitch_4
    iput-boolean v5, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->R:Z

    .line 125
    .line 126
    return-void

    .line 127
    :pswitch_5
    sget v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->b0:I

    .line 128
    .line 129
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    const-string v0, "HANDLER running ---------------checkShouldFinish()"

    .line 133
    .line 134
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    iget-boolean v0, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->N:Z

    .line 138
    .line 139
    if-eqz v0, :cond_2

    .line 140
    .line 141
    iget-boolean v0, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->O:Z

    .line 142
    .line 143
    if-eqz v0, :cond_2

    .line 144
    .line 145
    iget-boolean v0, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->P:Z

    .line 146
    .line 147
    if-eqz v0, :cond_2

    .line 148
    .line 149
    iget-boolean v0, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->Q:Z

    .line 150
    .line 151
    if-eqz v0, :cond_2

    .line 152
    .line 153
    iget-boolean v0, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->R:Z

    .line 154
    .line 155
    if-eqz v0, :cond_2

    .line 156
    .line 157
    iget-boolean v0, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->S:Z

    .line 158
    .line 159
    if-eqz v0, :cond_2

    .line 160
    .line 161
    iget-object v0, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->Z:Ll7/h;

    .line 162
    .line 163
    if-eqz v0, :cond_0

    .line 164
    .line 165
    const/4 v0, 0x0

    .line 166
    iput-object v0, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->Z:Ll7/h;

    .line 167
    .line 168
    iget-object v6, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->Y:Landroid/os/Handler;

    .line 169
    .line 170
    invoke-virtual {v6, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 171
    .line 172
    .line 173
    iget-object v6, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->Y:Landroid/os/Handler;

    .line 174
    .line 175
    invoke-virtual {v6, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    :cond_0
    const-string v0, "yes"

    .line 179
    .line 180
    iput-object v0, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->X:Ljava/lang/String;

    .line 181
    .line 182
    new-instance v6, Ljava/text/SimpleDateFormat;

    .line 183
    .line 184
    const-string v7, "MM/dd/yyyy HH:mm:ss"

    .line 185
    .line 186
    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    new-instance v7, Ljava/util/Date;

    .line 190
    .line 191
    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    iget-object v7, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->G:Landroid/content/SharedPreferences;

    .line 199
    .line 200
    const-string v8, "tvvodseries_dl_time"

    .line 201
    .line 202
    invoke-static {v7, v8, v6}, La/r;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v6, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->W:Landroid/widget/TextView;

    .line 206
    .line 207
    new-instance v7, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    iget-object v8, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->K:Lpe/hf/black20/updatecontents/XCUpdateContents;

    .line 213
    .line 214
    invoke-virtual {v8, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    .line 230
    .line 231
    iget-object v2, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->L:Landroid/widget/Button;

    .line 232
    .line 233
    const-string v3, "Close"

    .line 234
    .line 235
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    .line 237
    .line 238
    iget-object v2, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->L:Landroid/widget/Button;

    .line 239
    .line 240
    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 241
    .line 242
    .line 243
    iput-object v0, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->X:Ljava/lang/String;

    .line 244
    .line 245
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    const-string v2, "ORT_PROCESS_STATUS"

    .line 250
    .line 251
    const/4 v3, 0x0

    .line 252
    invoke-virtual {v0, v3, v2}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 253
    .line 254
    .line 255
    invoke-static {v8}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-eqz v0, :cond_1

    .line 260
    .line 261
    sput-boolean v5, Lpe/hf/black20/ORPlayerMainActivity;->I0:Z

    .line 262
    .line 263
    :cond_1
    invoke-static {v8}, Ll7/g;->b(Landroid/content/Context;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 267
    .line 268
    .line 269
    const-string v0, "XCUpdateContents is completed. "

    .line 270
    .line 271
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    const-string v0, "START SERVICE-----------OTRServices--------------"

    .line 275
    .line 276
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    const-class v0, Lpe/hf/black20/services/OTRServices;

    .line 280
    .line 281
    invoke-static {v8, v0}, Lpe/hf/black20/util/Methods;->Y(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    .line 283
    .line 284
    iget-object v0, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->M:Ljava/util/concurrent/ExecutorService;

    .line 285
    .line 286
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 287
    .line 288
    .line 289
    :cond_2
    iget-object v0, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->Y:Landroid/os/Handler;

    .line 290
    .line 291
    iget-object v1, v4, Lpe/hf/black20/updatecontents/XCUpdateContents;->Z:Ll7/h;

    .line 292
    .line 293
    const-wide/16 v2, 0x1388

    .line 294
    .line 295
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
