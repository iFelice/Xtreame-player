.class public final synthetic LB0/M0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Z

.field public final synthetic I:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LB0/M0;->G:I

    iput-object p2, p0, LB0/M0;->I:Ljava/lang/Object;

    iput-boolean p3, p0, LB0/M0;->H:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, LB0/M0;->G:I

    iput-boolean p2, p0, LB0/M0;->H:Z

    iput-object p1, p0, LB0/M0;->I:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, LB0/M0;->G:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-boolean v2, p0, LB0/M0;->H:Z

    .line 5
    .line 6
    iget-object v3, p0, LB0/M0;->I:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast v3, Landroid/content/Context;

    .line 12
    .line 13
    sget-object v0, Li7/b;->a:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "androidapp"

    .line 16
    .line 17
    :try_start_0
    new-instance v4, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    .line 18
    .line 19
    invoke-direct {v4}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;-><init>()V

    .line 20
    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    sget-object v6, Li7/b;->g:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v6, ":"

    .line 35
    .line 36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    sget-object v6, Li7/b;->h:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v6, "---disconnected"

    .line 45
    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const-string v6, "client/status/android"

    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    const/4 v7, 0x0

    .line 60
    invoke-virtual {v4, v6, v5, v1, v7}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setWill(Ljava/lang/String;[BIZ)V

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-virtual {v4, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setAutomaticReconnect(Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setCleanSession(Z)V

    .line 67
    .line 68
    .line 69
    const/16 v1, 0xa

    .line 70
    .line 71
    invoke-virtual {v4, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setConnectionTimeout(I)V

    .line 72
    .line 73
    .line 74
    const/16 v1, 0x14

    .line 75
    .line 76
    invoke-virtual {v4, v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setKeepAliveInterval(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setUserName(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v4, v0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setPassword([C)V

    .line 87
    .line 88
    .line 89
    sget-object v0, Li7/b;->b:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    .line 90
    .line 91
    invoke-virtual {v0, v4}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v2}, Li7/b;->g(Z)V

    .line 95
    .line 96
    .line 97
    if-eqz v2, :cond_1

    .line 98
    .line 99
    const-string v0, "Hello"

    .line 100
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    sget-object v2, Li7/b;->g:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v2, "/"

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    sget-object v2, Li7/b;->h:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {v0, v1}, Li7/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_1
    invoke-static {v3}, Li7/b;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const-string v1, "OTTRUN/connectionslogs"

    .line 134
    .line 135
    invoke-static {v0, v1}, Li7/b;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :catch_0
    invoke-static {v3}, Li7/b;->f(Landroid/content/Context;)V

    .line 140
    .line 141
    .line 142
    :goto_0
    return-void

    .line 143
    :pswitch_0
    check-cast v3, LP5/f;

    .line 144
    .line 145
    iget-object v0, v3, LP5/f;->c:LP5/h;

    .line 146
    .line 147
    invoke-virtual {v0, v2}, LP5/h;->e(Z)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :pswitch_1
    check-cast v3, Lf/G;

    .line 152
    .line 153
    iget-object v0, v3, Lf/G;->b:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v0, Lu5/g;

    .line 156
    .line 157
    iput-boolean v2, v0, Lu5/g;->f:Z

    .line 158
    .line 159
    iget-boolean v1, v0, Lu5/g;->c:Z

    .line 160
    .line 161
    if-eqz v1, :cond_2

    .line 162
    .line 163
    iget-object v1, v0, Lu5/g;->d:Landroid/os/Handler;

    .line 164
    .line 165
    const/4 v2, 0x0

    .line 166
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    iget-boolean v1, v0, Lu5/g;->f:Z

    .line 170
    .line 171
    if-eqz v1, :cond_2

    .line 172
    .line 173
    iget-object v1, v0, Lu5/g;->d:Landroid/os/Handler;

    .line 174
    .line 175
    iget-object v0, v0, Lu5/g;->e:Ljava/lang/Runnable;

    .line 176
    .line 177
    const-wide/32 v2, 0x493e0

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    .line 182
    .line 183
    :cond_2
    return-void

    .line 184
    :pswitch_2
    check-cast v3, Lu5/a;

    .line 185
    .line 186
    iget-object v0, v3, Lu5/a;->a:LP5/h;

    .line 187
    .line 188
    invoke-virtual {v0, v2}, LP5/h;->e(Z)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :pswitch_3
    check-cast v3, LD0/n;

    .line 193
    .line 194
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 198
    .line 199
    iget-object v0, v3, LD0/n;->b:LD0/o;

    .line 200
    .line 201
    check-cast v0, LB0/L;

    .line 202
    .line 203
    iget-object v0, v0, LB0/L;->G:LB0/O;

    .line 204
    .line 205
    iget-boolean v3, v0, LB0/O;->F0:Z

    .line 206
    .line 207
    if-ne v3, v2, :cond_3

    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_3
    iput-boolean v2, v0, LB0/O;->F0:Z

    .line 211
    .line 212
    new-instance v3, LB0/I;

    .line 213
    .line 214
    invoke-direct {v3, v2, v1}, LB0/I;-><init>(ZI)V

    .line 215
    .line 216
    .line 217
    const/16 v1, 0x17

    .line 218
    .line 219
    iget-object v0, v0, LB0/O;->S:Lx/e;

    .line 220
    .line 221
    invoke-virtual {v0, v1, v3}, Lx/e;->l(ILp0/u;)V

    .line 222
    .line 223
    .line 224
    :goto_1
    return-void

    .line 225
    :pswitch_4
    check-cast v3, Ll/e1;

    .line 226
    .line 227
    iget v0, v3, Ll/e1;->a:I

    .line 228
    .line 229
    packed-switch v0, :pswitch_data_1

    .line 230
    .line 231
    .line 232
    iget-object v0, v3, Ll/e1;->d:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast v0, Lm2/e;

    .line 235
    .line 236
    invoke-virtual {v0, v1, v2}, Lm2/e;->F(ZZ)V

    .line 237
    .line 238
    .line 239
    goto :goto_2

    .line 240
    :pswitch_5
    iget-object v0, v3, Ll/e1;->d:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v0, Lm2/c;

    .line 243
    .line 244
    invoke-virtual {v0, v1, v2}, Lm2/c;->B(ZZ)V

    .line 245
    .line 246
    .line 247
    :goto_2
    return-void

    .line 248
    :pswitch_6
    check-cast v3, Ll/e1;

    .line 249
    .line 250
    iget v0, v3, Ll/e1;->a:I

    .line 251
    .line 252
    packed-switch v0, :pswitch_data_2

    .line 253
    .line 254
    .line 255
    iget-object v0, v3, Ll/e1;->d:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast v0, Lm2/e;

    .line 258
    .line 259
    invoke-virtual {v0, v1, v2}, Lm2/e;->F(ZZ)V

    .line 260
    .line 261
    .line 262
    goto :goto_3

    .line 263
    :pswitch_7
    iget-object v0, v3, Ll/e1;->d:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast v0, Lm2/c;

    .line 266
    .line 267
    invoke-virtual {v0, v1, v2}, Lm2/c;->B(ZZ)V

    .line 268
    .line 269
    .line 270
    :goto_3
    return-void

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method
