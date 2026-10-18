.class public final Lf/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/lang/String;

.field public final I:Landroid/view/KeyEvent$Callback;

.field public J:Ljava/lang/Object;

.field public K:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/AlertDialog;Ljava/lang/String;Lc7/d;Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 7
    iput v0, p0, Lf/N;->G:I

    .line 8
    iput-object p1, p0, Lf/N;->I:Landroid/view/KeyEvent$Callback;

    iput-object p2, p0, Lf/N;->H:Ljava/lang/String;

    iput-object p3, p0, Lf/N;->J:Ljava/lang/Object;

    iput-object p4, p0, Lf/N;->K:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lf/N;->G:I

    .line 4
    iput-object p1, p0, Lf/N;->I:Landroid/view/KeyEvent$Callback;

    .line 5
    iput-object p2, p0, Lf/N;->H:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/app/AlertDialog;Lc7/d;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Lf/N;->G:I

    iput-object p1, p0, Lf/N;->K:Ljava/lang/Object;

    iput-object p2, p0, Lf/N;->I:Landroid/view/KeyEvent$Callback;

    iput-object p3, p0, Lf/N;->J:Ljava/lang/Object;

    iput-object p4, p0, Lf/N;->H:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lf/N;->G:I

    .line 4
    .line 5
    const-string v3, "-"

    .line 6
    .line 7
    const-string v4, "ORT_PROFILE_ID"

    .line 8
    .line 9
    const-string v5, ""

    .line 10
    .line 11
    iget-object v6, p0, Lf/N;->H:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v7, p0, Lf/N;->I:Landroid/view/KeyEvent$Callback;

    .line 14
    .line 15
    packed-switch v2, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast v7, Landroid/app/AlertDialog;

    .line 19
    .line 20
    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 21
    .line 22
    .line 23
    const-string p1, "VOD"

    .line 24
    .line 25
    if-ne v6, p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lf/N;->J:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lc7/d;

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {v4, v5, v0, v3}, Lcom/google/protobuf/U2;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lf/N;->K:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Lc7/d;->C0(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object p1, p0, Lf/N;->J:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Lc7/d;

    .line 57
    .line 58
    iget-object v0, p0, Lf/N;->K:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lc7/d;->D0(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void

    .line 66
    :pswitch_0
    check-cast v7, Landroid/app/AlertDialog;

    .line 67
    .line 68
    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lf/N;->J:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Lc7/d;

    .line 74
    .line 75
    invoke-virtual {p1, v6}, Lc7/d;->D0(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_1
    check-cast v7, Landroid/app/AlertDialog;

    .line 80
    .line 81
    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lf/N;->J:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p1, Lc7/d;

    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1, v4, v5}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p1, v0}, Lc7/d;->C0(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :pswitch_2
    check-cast v7, Landroid/app/AlertDialog;

    .line 119
    .line 120
    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lf/N;->J:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast p1, Lc7/d;

    .line 126
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1, v4, v5}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {p1, v0}, Lc7/d;->C0(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :pswitch_3
    iget-object v2, p0, Lf/N;->J:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v2, Ljava/lang/reflect/Method;

    .line 160
    .line 161
    if-nez v2, :cond_5

    .line 162
    .line 163
    check-cast v7, Landroid/view/View;

    .line 164
    .line 165
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    :goto_1
    if-eqz v2, :cond_3

    .line 170
    .line 171
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->isRestricted()Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-nez v3, :cond_1

    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    new-array v4, v1, [Ljava/lang/Class;

    .line 182
    .line 183
    const-class v8, Landroid/view/View;

    .line 184
    .line 185
    aput-object v8, v4, v0

    .line 186
    .line 187
    invoke-virtual {v3, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    if-eqz v3, :cond_1

    .line 192
    .line 193
    iput-object v3, p0, Lf/N;->J:Ljava/lang/Object;

    .line 194
    .line 195
    iput-object v2, p0, Lf/N;->K:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :catch_0
    nop

    .line 199
    :cond_1
    instance-of v3, v2, Landroid/content/ContextWrapper;

    .line 200
    .line 201
    if-eqz v3, :cond_2

    .line 202
    .line 203
    check-cast v2, Landroid/content/ContextWrapper;

    .line 204
    .line 205
    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    goto :goto_1

    .line 210
    :cond_2
    const/4 v2, 0x0

    .line 211
    goto :goto_1

    .line 212
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    const/4 v0, -0x1

    .line 217
    if-ne p1, v0, :cond_4

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    const-string v1, " with id \'"

    .line 223
    .line 224
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string p1, "\'"

    .line 243
    .line 244
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    :goto_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 252
    .line 253
    const-string v0, "Could not find method "

    .line 254
    .line 255
    const-string v1, "(View) in a parent or ancestor Context for android:onClick attribute defined on view "

    .line 256
    .line 257
    invoke-static {v0, v6, v1}, Lcom/google/protobuf/U2;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    throw p1

    .line 279
    :cond_5
    :goto_3
    :try_start_1
    iget-object v2, p0, Lf/N;->J:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v2, Ljava/lang/reflect/Method;

    .line 282
    .line 283
    iget-object v3, p0, Lf/N;->K:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v3, Landroid/content/Context;

    .line 286
    .line 287
    new-array v1, v1, [Ljava/lang/Object;

    .line 288
    .line 289
    aput-object p1, v1, v0

    .line 290
    .line 291
    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 292
    .line 293
    .line 294
    return-void

    .line 295
    :catch_1
    move-exception p1

    .line 296
    goto :goto_4

    .line 297
    :catch_2
    move-exception p1

    .line 298
    goto :goto_5

    .line 299
    :goto_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 300
    .line 301
    const-string v1, "Could not execute method for android:onClick"

    .line 302
    .line 303
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    .line 305
    .line 306
    throw v0

    .line 307
    :goto_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 308
    .line 309
    const-string v1, "Could not execute non-public method for android:onClick"

    .line 310
    .line 311
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 312
    .line 313
    .line 314
    throw v0

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
