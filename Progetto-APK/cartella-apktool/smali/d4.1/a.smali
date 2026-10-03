.class public abstract Ld4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LJ3/f;

.field public static final b:Ljava/lang/Object;

.field public static c:LS3/c;

.field public static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, LJ3/f;->b:LJ3/f;

    .line 2
    .line 3
    sput-object v0, Ld4/a;->a:LJ3/f;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Ld4/a;->b:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    sput-object v0, Ld4/a;->c:LS3/c;

    .line 14
    .line 15
    const-string v0, "0"

    .line 16
    .line 17
    sput-object v0, Ld4/a;->d:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public static a()Z
    .locals 2

    .line 1
    sget-object v0, Ld4/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Ld4/a;->c:LS3/c;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v1
.end method

.method public static b(Landroid/content/Context;)V
    .locals 9

    .line 1
    sget-object v0, Ld4/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Ld4/a;->a()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    const-string v1, "Context must not be null"

    .line 16
    .line 17
    invoke-static {p0, v1}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-class v1, Ld4/a;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    :try_start_1
    const-string v2, "org.chromium.net.CronetEngine"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lorg/chromium/net/ApiVersion;->getApiLevel()I

    .line 35
    .line 36
    .line 37
    move-result v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :try_start_2
    sget-object v2, Ld4/a;->a:LJ3/f;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {p0}, LJ3/f;->d(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    .line 45
    .line 46
    :try_start_3
    sget-object v3, LS3/c;->b:LS3/g;

    .line 47
    .line 48
    const-string v4, "com.google.android.gms.cronet_dynamite"

    .line 49
    .line 50
    invoke-static {p0, v3, v4}, LS3/c;->c(Landroid/content/Context;LS3/g;Ljava/lang/String;)LS3/c;

    .line 51
    .line 52
    .line 53
    move-result-object v3
    :try_end_3
    .catch LS3/a; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    :try_start_4
    iget-object v4, v3, LS3/c;->a:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const-string v5, "org.chromium.net.impl.ImplVersion"

    .line 61
    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    const-class v6, Ld4/a;

    .line 71
    .line 72
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    if-eq v5, v6, :cond_3

    .line 77
    .line 78
    const-string v5, "getApiLevel"

    .line 79
    .line 80
    const/4 v6, 0x0

    .line 81
    new-array v7, v6, [Ljava/lang/Class;

    .line 82
    .line 83
    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    const-string v7, "getCronetVersion"

    .line 88
    .line 89
    new-array v8, v6, [Ljava/lang/Class;

    .line 90
    .line 91
    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    new-array v7, v6, [Ljava/lang/Object;

    .line 96
    .line 97
    const/4 v8, 0x0

    .line 98
    invoke-virtual {v5, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    check-cast v5, Ljava/lang/Integer;

    .line 103
    .line 104
    invoke-static {v5}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    new-array v6, v6, [Ljava/lang/Object;

    .line 112
    .line 113
    invoke-virtual {v4, v8, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    check-cast v4, Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v4}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    sput-object v4, Ld4/a;->d:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 123
    .line 124
    if-le v1, v5, :cond_2

    .line 125
    .line 126
    :try_start_5
    const-string v3, "cr"

    .line 127
    .line 128
    const/4 v4, 0x2

    .line 129
    invoke-virtual {v2, v4, p0, v3}, LJ3/f;->b(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    if-nez p0, :cond_1

    .line 134
    .line 135
    const-string p0, "a"

    .line 136
    .line 137
    const-string v1, "Unable to fetch error resolution intent"

    .line 138
    .line 139
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    new-instance p0, LJ3/g;

    .line 143
    .line 144
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 145
    .line 146
    .line 147
    throw p0

    .line 148
    :cond_1
    new-instance p0, LJ3/h;

    .line 149
    .line 150
    sget-object v2, Ld4/a;->d:Ljava/lang/String;

    .line 151
    .line 152
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    add-int/lit16 v3, v3, 0xae

    .line 161
    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 165
    .line 166
    .line 167
    const-string v3, "Google Play Services update is required. The API Level of the client is "

    .line 168
    .line 169
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v1, ". The API Level of the implementation is "

    .line 176
    .line 177
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v1, ". The Cronet implementation version is "

    .line 184
    .line 185
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-direct {p0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p0

    .line 199
    :cond_2
    sput-object v3, Ld4/a;->c:LS3/c;

    .line 200
    .line 201
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 202
    return-void

    .line 203
    :catch_0
    move-exception p0

    .line 204
    goto :goto_0

    .line 205
    :cond_3
    :try_start_6
    const-string p0, "a"

    .line 206
    .line 207
    const-string v1, "ImplVersion class is missing from Cronet module."

    .line 208
    .line 209
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    new-instance p0, LJ3/g;

    .line 213
    .line 214
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 215
    .line 216
    .line 217
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 218
    :goto_0
    :try_start_7
    const-string v1, "a"

    .line 219
    .line 220
    const-string v2, "Unable to read Cronet version from the Cronet module "

    .line 221
    .line 222
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    .line 224
    .line 225
    new-instance v1, LJ3/g;

    .line 226
    .line 227
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    check-cast p0, LJ3/g;

    .line 235
    .line 236
    throw p0

    .line 237
    :catch_1
    move-exception p0

    .line 238
    const-string v1, "a"

    .line 239
    .line 240
    const-string v2, "Unable to load Cronet module"

    .line 241
    .line 242
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    .line 244
    .line 245
    new-instance v1, LJ3/g;

    .line 246
    .line 247
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    check-cast p0, LJ3/g;

    .line 255
    .line 256
    throw p0

    .line 257
    :catch_2
    move-exception p0

    .line 258
    const-string v1, "a"

    .line 259
    .line 260
    const-string v2, "Cronet API is not available. Have you included all required dependencies?"

    .line 261
    .line 262
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    new-instance v1, LJ3/g;

    .line 266
    .line 267
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    check-cast p0, LJ3/g;

    .line 275
    .line 276
    throw p0

    .line 277
    :goto_1
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 278
    throw p0
.end method
