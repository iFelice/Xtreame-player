.class public abstract Lcom/google/ads/interactivemedia/v3/internal/zzads;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzb(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzadk;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-class v2, Lcom/google/ads/interactivemedia/v3/internal/zzads;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const-class v4, Lcom/google/ads/interactivemedia/v3/internal/zzadk;

    .line 10
    .line 11
    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    const-string v4, "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_4

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const-string v6, ".BlazeGenerated"

    .line 47
    .line 48
    const-string v7, "Loader"

    .line 49
    .line 50
    invoke-static {v4, v6, v5, v7}, LA0/O;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    :goto_0
    :try_start_0
    invoke-static {v4, v1, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 58
    :try_start_1
    new-array v5, v0, [Ljava/lang/Class;

    .line 59
    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    new-array v5, v0, [Ljava/lang/Object;

    .line 65
    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/zzads;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    .line 71
    .line 72
    :try_start_2
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzads;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzadk;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {p0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/zzadk;

    .line 81
    .line 82
    return-object v4

    .line 83
    :catch_0
    move-exception v4

    .line 84
    goto :goto_1

    .line 85
    :catch_1
    move-exception v4

    .line 86
    goto :goto_2

    .line 87
    :catch_2
    move-exception v4

    .line 88
    goto :goto_3

    .line 89
    :catch_3
    move-exception v4

    .line 90
    goto :goto_4

    .line 91
    :goto_1
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 92
    .line 93
    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    throw v5

    .line 97
    :goto_2
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    throw v5

    .line 103
    :goto_3
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 104
    .line 105
    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    throw v5

    .line 109
    :goto_4
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 110
    .line 111
    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    throw v5
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    .line 115
    :catch_4
    invoke-static {v2, v3}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v2}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    new-instance v3, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .line 127
    .line 128
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-eqz v4, :cond_1

    .line 133
    .line 134
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/zzads;

    .line 139
    .line 140
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzads;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzadk;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {p0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/zzadk;

    .line 149
    .line 150
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/util/ServiceConfigurationError; {:try_start_3 .. :try_end_3} :catch_5

    .line 151
    .line 152
    .line 153
    goto :goto_5

    .line 154
    :catch_5
    move-exception v4

    .line 155
    move-object v10, v4

    .line 156
    const-class v4, Lcom/google/ads/interactivemedia/v3/internal/zzadf;

    .line 157
    .line 158
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 167
    .line 168
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    const-string v8, "load"

    .line 173
    .line 174
    const-string v7, "Unable to load "

    .line 175
    .line 176
    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    const-string v7, "com.google.protobuf.GeneratedExtensionRegistryLoader"

    .line 181
    .line 182
    invoke-virtual/range {v5 .. v10}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-ne v2, v1, :cond_2

    .line 191
    .line 192
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzadk;

    .line 197
    .line 198
    return-object p0

    .line 199
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    const/4 v4, 0x0

    .line 204
    if-nez v2, :cond_3

    .line 205
    .line 206
    return-object v4

    .line 207
    :cond_3
    :try_start_4
    const-string v2, "combine"

    .line 208
    .line 209
    new-array v5, v1, [Ljava/lang/Class;

    .line 210
    .line 211
    const-class v6, Ljava/util/Collection;

    .line 212
    .line 213
    aput-object v6, v5, v0

    .line 214
    .line 215
    invoke-virtual {p0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    new-array v1, v1, [Ljava/lang/Object;

    .line 220
    .line 221
    aput-object v3, v1, v0

    .line 222
    .line 223
    invoke-virtual {p0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzadk;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_6

    .line 228
    .line 229
    return-object p0

    .line 230
    :catch_6
    move-exception p0

    .line 231
    goto :goto_6

    .line 232
    :catch_7
    move-exception p0

    .line 233
    goto :goto_7

    .line 234
    :catch_8
    move-exception p0

    .line 235
    goto :goto_8

    .line 236
    :goto_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 237
    .line 238
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 239
    .line 240
    .line 241
    throw v0

    .line 242
    :goto_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 243
    .line 244
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 245
    .line 246
    .line 247
    throw v0

    .line 248
    :goto_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 249
    .line 250
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 251
    .line 252
    .line 253
    throw v0

    .line 254
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 255
    .line 256
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw v0
.end method


# virtual methods
.method public abstract zza()Lcom/google/ads/interactivemedia/v3/internal/zzadk;
.end method
