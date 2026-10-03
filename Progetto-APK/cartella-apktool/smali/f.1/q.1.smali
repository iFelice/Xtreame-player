.class public final synthetic Lf/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lf/q;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lf/q;->H:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lf/q;->G:I

    .line 2
    .line 3
    const/high16 v1, 0x10000000

    .line 4
    .line 5
    const/high16 v2, 0x4000000

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object v4, p0, Lf/q;->H:Landroid/content/Context;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-static {v4}, Ll7/g;->a(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    sget-object v0, Li7/b;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_1
    sget-object v0, Li7/b;->a:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_2
    sget-object v0, Li7/b;->a:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :pswitch_3
    sget-object v0, Li7/b;->b:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    .line 99
    .line 100
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->isConnected()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    const-string v1, "XCIPTV_TAG"

    .line 105
    .line 106
    if-nez v0, :cond_0

    .line 107
    .line 108
    const-string v0, "Client is disconnected--------------------------"

    .line 109
    .line 110
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    const-string v0, "Connection Trying.....connect called"

    .line 114
    .line 115
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    new-instance v0, Ljava/lang/Thread;

    .line 119
    .line 120
    new-instance v1, LB0/M0;

    .line 121
    .line 122
    invoke-direct {v1, v4, v3}, LB0/M0;-><init>(Landroid/content/Context;Z)V

    .line 123
    .line 124
    .line 125
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_0
    const-string v0, "Client is connected-----------------------------"

    .line 133
    .line 134
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    sget-object v1, Li7/b;->g:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v1, ":"

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    sget-object v1, Li7/b;->h:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v1, "---"

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-static {v4}, Li7/b;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    const-string v1, "client/status/android"

    .line 174
    .line 175
    invoke-static {v0, v1}, Li7/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :goto_0
    return-void

    .line 179
    :pswitch_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 180
    .line 181
    const/4 v1, 0x1

    .line 182
    const/16 v2, 0x21

    .line 183
    .line 184
    if-lt v0, v2, :cond_6

    .line 185
    .line 186
    new-instance v3, Landroid/content/ComponentName;

    .line 187
    .line 188
    const-string v5, "androidx.appcompat.app.AppLocalesMetadataHolderService"

    .line 189
    .line 190
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-eq v5, v1, :cond_6

    .line 202
    .line 203
    const-string v5, "locale"

    .line 204
    .line 205
    if-lt v0, v2, :cond_3

    .line 206
    .line 207
    sget-object v0, Lf/w;->M:Lr/g;

    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    new-instance v2, Lr/b;

    .line 213
    .line 214
    invoke-direct {v2, v0}, Lr/b;-><init>(Lr/g;)V

    .line 215
    .line 216
    .line 217
    :cond_1
    invoke-virtual {v2}, Lr/i;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-eqz v0, :cond_2

    .line 222
    .line 223
    invoke-virtual {v2}, Lr/i;->next()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    check-cast v0, Lf/w;

    .line 234
    .line 235
    if-eqz v0, :cond_1

    .line 236
    .line 237
    check-cast v0, Lf/K;

    .line 238
    .line 239
    iget-object v0, v0, Lf/K;->Q:Landroid/content/Context;

    .line 240
    .line 241
    if-eqz v0, :cond_1

    .line 242
    .line 243
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    goto :goto_1

    .line 248
    :cond_2
    const/4 v0, 0x0

    .line 249
    :goto_1
    if-eqz v0, :cond_4

    .line 250
    .line 251
    invoke-static {v0}, Lf/s;->a(Ljava/lang/Object;)Landroid/os/LocaleList;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    new-instance v2, LJ/g;

    .line 256
    .line 257
    new-instance v6, LJ/j;

    .line 258
    .line 259
    invoke-direct {v6, v0}, LJ/j;-><init>(Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    invoke-direct {v2, v6}, LJ/g;-><init>(LJ/i;)V

    .line 263
    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_3
    sget-object v2, Lf/w;->I:LJ/g;

    .line 267
    .line 268
    if-eqz v2, :cond_4

    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_4
    sget-object v2, LJ/g;->b:LJ/g;

    .line 272
    .line 273
    :goto_2
    iget-object v0, v2, LJ/g;->a:LJ/i;

    .line 274
    .line 275
    invoke-interface {v0}, LJ/i;->isEmpty()Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-eqz v0, :cond_5

    .line 280
    .line 281
    invoke-static {v4}, LD/f;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    if-eqz v2, :cond_5

    .line 290
    .line 291
    invoke-static {v0}, Lf/r;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-static {v2, v0}, Lf/s;->b(Ljava/lang/Object;Landroid/os/LocaleList;)V

    .line 296
    .line 297
    .line 298
    :cond_5
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {v0, v3, v1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 303
    .line 304
    .line 305
    :cond_6
    sput-boolean v1, Lf/w;->L:Z

    .line 306
    .line 307
    return-void

    .line 308
    nop

    .line 309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
