.class public final Lb7/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lb7/t0;


# direct methods
.method public synthetic constructor <init>(Lb7/t0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/b0;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/b0;->H:Lb7/t0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget p1, p0, Lb7/b0;->G:I

    .line 2
    .line 3
    const/high16 v0, 0x4000000

    .line 4
    .line 5
    iget-object v1, p0, Lb7/b0;->H:Lb7/t0;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p1, Landroid/content/Intent;

    .line 11
    .line 12
    invoke-virtual {v1}, LY/s;->j()LY/v;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-class v3, Lpe/hf/black20/ProgramRemindersActivity;

    .line 17
    .line 18
    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, LY/s;->j()LY/v;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, LY/s;->R(Landroid/content/Intent;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_0
    iget-object p1, v1, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 36
    .line 37
    const-string v0, "whichPanel"

    .line 38
    .line 39
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const-string v2, "ORT_WHICH_PANEL"

    .line 44
    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v3, v1, Lb7/t0;->C0:Landroid/content/SharedPreferences;

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, v2, v0}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string v0, "ORT_PROCESS_STATUS"

    .line 66
    .line 67
    invoke-virtual {p1, v0}, LQ5/a;->b(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_4

    .line 72
    .line 73
    const-string p1, "xtreamcodes"

    .line 74
    .line 75
    invoke-static {v2, p1, p1}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string v0, "no"

    .line 86
    .line 87
    invoke-static {p1, v0}, Lpe/hf/black20/util/Methods;->m(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance p1, Landroid/content/Intent;

    .line 91
    .line 92
    invoke-virtual {v1}, LY/s;->j()LY/v;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const-class v2, Lpe/hf/black20/updatecontents/XCUpdateContents;

    .line 97
    .line 98
    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, LY/s;->j()LY/v;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    const-string v0, "ezserver"

    .line 110
    .line 111
    invoke-static {v2, p1, v0}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_2

    .line 116
    .line 117
    new-instance p1, Landroid/content/Intent;

    .line 118
    .line 119
    invoke-virtual {v1}, LY/s;->j()LY/v;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const-class v2, Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    .line 124
    .line 125
    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, LY/s;->j()LY/v;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_2
    const-string v0, "m3u"

    .line 137
    .line 138
    invoke-static {v2, p1, v0}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_3

    .line 143
    .line 144
    new-instance p1, Landroid/content/Intent;

    .line 145
    .line 146
    invoke-virtual {v1}, LY/s;->j()LY/v;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const-class v2, Lpe/hf/black20/updatecontents/M3UUpdateContents;

    .line 151
    .line 152
    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, LY/s;->j()LY/v;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_3
    const-string v0, "otr"

    .line 164
    .line 165
    invoke-static {v2, p1, v0}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_5

    .line 170
    .line 171
    new-instance p1, Landroid/content/Intent;

    .line 172
    .line 173
    invoke-virtual {v1}, LY/s;->j()LY/v;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    const-class v2, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;

    .line 178
    .line 179
    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, LY/s;->j()LY/v;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_4
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    const-string v0, "Background Update Process is running!"

    .line 195
    .line 196
    const/4 v1, 0x1

    .line 197
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 202
    .line 203
    .line 204
    :cond_5
    :goto_0
    return-void

    .line 205
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    .line 206
    .line 207
    invoke-virtual {v1}, LY/s;->j()LY/v;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    const-class v3, Lpe/hf/black20/RecordsActivity;

    .line 212
    .line 213
    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, LY/s;->j()LY/v;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, p1}, LY/s;->R(Landroid/content/Intent;)V

    .line 227
    .line 228
    .line 229
    :pswitch_2
    return-void

    .line 230
    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    .line 231
    .line 232
    invoke-virtual {v1}, LY/s;->j()LY/v;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    const-class v3, Lpe/hf/black20/MultiScreenActivityEXO;

    .line 237
    .line 238
    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1}, LY/s;->j()LY/v;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, p1}, LY/s;->R(Landroid/content/Intent;)V

    .line 252
    .line 253
    .line 254
    return-void

    .line 255
    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    .line 256
    .line 257
    invoke-virtual {v1}, LY/s;->j()LY/v;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    const-class v3, Lpe/hf/black20/SearchActivity;

    .line 262
    .line 263
    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1}, LY/s;->j()LY/v;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1, p1}, LY/s;->R(Landroid/content/Intent;)V

    .line 277
    .line 278
    .line 279
    return-void

    .line 280
    :pswitch_5
    new-instance p1, Landroid/content/Intent;

    .line 281
    .line 282
    invoke-virtual {v1}, LY/s;->j()LY/v;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    const-class v3, Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 287
    .line 288
    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1}, LY/s;->j()LY/v;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1, p1}, LY/s;->R(Landroid/content/Intent;)V

    .line 302
    .line 303
    .line 304
    return-void

    .line 305
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
