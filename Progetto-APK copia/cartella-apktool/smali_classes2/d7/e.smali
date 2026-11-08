.class public final Ld7/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lb7/G;


# direct methods
.method public synthetic constructor <init>(Lb7/G;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ld7/e;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ld7/e;->b:Lb7/G;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 10

    .line 1
    iget v0, p0, Ld7/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_2

    .line 7
    .line 8
    move-object p2, p1

    .line 9
    check-cast p2, Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "::"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v0, 0x0

    .line 34
    aget-object p1, p1, v0

    .line 35
    .line 36
    sget-object v1, Lb7/G;->l:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v1, p0, Ld7/e;->b:Lb7/G;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance v2, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    sget-object v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->C0:Lr0/b;

    .line 49
    .line 50
    const-string v3, "no-channel"

    .line 51
    .line 52
    invoke-virtual {v2, p1, v3, p2}, Lr0/b;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    const-string v2, "ORT_isDemo"

    .line 61
    .line 62
    invoke-virtual {p2, v2, v0}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-eqz p2, :cond_0

    .line 67
    .line 68
    sget-object p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->h0:Landroid/widget/TextView;

    .line 69
    .line 70
    const-string p2, "Program Name"

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    sget-object p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->g0:Landroid/widget/TextView;

    .line 76
    .line 77
    const p2, 0x7f13008f

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 81
    .line 82
    .line 83
    sget-object p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->i0:Landroid/widget/TextView;

    .line 84
    .line 85
    const p2, 0x7f13008a

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_2

    .line 92
    .line 93
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    if-lez p2, :cond_2

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    check-cast p2, Ld7/g;

    .line 104
    .line 105
    iget-object p2, p2, Ld7/g;->a:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {p2}, Lpe/hf/black20/util/Methods;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Ld7/g;

    .line 116
    .line 117
    iget-object v2, v2, Ld7/g;->b:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v2}, Lpe/hf/black20/util/Methods;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    sget-object v3, Lpe/hf/black20/epg/EPGActivityXMLTV;->h0:Landroid/widget/TextView;

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    check-cast v4, Ld7/g;

    .line 130
    .line 131
    iget-object v4, v4, Ld7/g;->d:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    const-string v4, "ORT_TIME_FORMAT"

    .line 141
    .line 142
    const-string v5, "12"

    .line 143
    .line 144
    invoke-virtual {v3, v4, v5}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    const-string v4, "24"

    .line 149
    .line 150
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    const-string v4, "yyyyMMddHHmmss"

    .line 155
    .line 156
    const-string v5, " - "

    .line 157
    .line 158
    if-eqz v3, :cond_1

    .line 159
    .line 160
    sget-object v3, Lpe/hf/black20/epg/EPGActivityXMLTV;->g0:Landroid/widget/TextView;

    .line 161
    .line 162
    new-instance v6, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    iget-object v7, v1, Lb7/G;->b:Landroid/content/Context;

    .line 168
    .line 169
    invoke-static {v7, p2, v4}, Lpe/hf/black20/util/Methods;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    iget-object p2, v1, Lb7/G;->b:Landroid/content/Context;

    .line 180
    .line 181
    invoke-static {p2, v2, v4}, Lpe/hf/black20/util/Methods;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_1
    sget-object v1, Lpe/hf/black20/epg/EPGActivityXMLTV;->g0:Landroid/widget/TextView;

    .line 197
    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    new-instance v6, Ljava/text/SimpleDateFormat;

    .line 204
    .line 205
    invoke-direct {v6, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    new-instance v7, Ljava/text/SimpleDateFormat;

    .line 209
    .line 210
    const-string v8, "hh:mm aa"

    .line 211
    .line 212
    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    const/4 v9, 0x0

    .line 216
    :try_start_0
    invoke-virtual {v6, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 217
    .line 218
    .line 219
    move-result-object p2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    goto :goto_0

    .line 221
    :catch_0
    move-object p2, v9

    .line 222
    :goto_0
    invoke-virtual {v7, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    new-instance p2, Ljava/text/SimpleDateFormat;

    .line 233
    .line 234
    invoke-direct {p2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 238
    .line 239
    invoke-direct {v4, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    :try_start_1
    invoke-virtual {p2, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 243
    .line 244
    .line 245
    move-result-object v9
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 246
    :catch_1
    invoke-virtual {v4, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    .line 259
    .line 260
    :goto_1
    sget-object p2, Lpe/hf/black20/epg/EPGActivityXMLTV;->i0:Landroid/widget/TextView;

    .line 261
    .line 262
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    check-cast p1, Ld7/g;

    .line 267
    .line 268
    iget-object p1, p1, Ld7/g;->e:Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    .line 272
    .line 273
    :cond_2
    :goto_2
    return-void

    .line 274
    :pswitch_0
    if-eqz p2, :cond_3

    .line 275
    .line 276
    sget-object p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->h0:Landroid/widget/TextView;

    .line 277
    .line 278
    const p2, 0x7f130153

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 282
    .line 283
    .line 284
    sget-object p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->g0:Landroid/widget/TextView;

    .line 285
    .line 286
    const-string v0, ""

    .line 287
    .line 288
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    .line 290
    .line 291
    sget-object p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->i0:Landroid/widget/TextView;

    .line 292
    .line 293
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 294
    .line 295
    .line 296
    :cond_3
    return-void

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
