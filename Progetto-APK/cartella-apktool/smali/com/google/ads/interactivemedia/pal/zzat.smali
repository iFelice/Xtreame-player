.class public final Lcom/google/ads/interactivemedia/pal/zzat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final zza:Ljava/lang/String;

.field public static final zzb:I

.field public static final zzc:I

.field public static final zzd:Lcom/google/android/gms/internal/pal/A0;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-string v0, "Failed to get app version for libraryName: play-services-pal"

    .line 2
    .line 3
    const-string v1, "play-services-pal version is "

    .line 4
    .line 5
    sget-object v2, Lcom/google/android/gms/common/internal/p;->c:Lcom/google/android/gms/common/internal/p;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v3, "LibraryVersion"

    .line 11
    .line 12
    sget-object v4, Lcom/google/android/gms/common/internal/p;->b:Lm2/c;

    .line 13
    .line 14
    const-string v5, "Please provide a valid libraryName"

    .line 15
    .line 16
    const-string v6, "play-services-pal"

    .line 17
    .line 18
    invoke-static {v5, v6}, Lcom/bumptech/glide/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, v2, Lcom/google/android/gms/common/internal/p;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    invoke-virtual {v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/String;

    .line 34
    .line 35
    goto/16 :goto_9

    .line 36
    .line 37
    :cond_0
    new-instance v5, Ljava/util/Properties;

    .line 38
    .line 39
    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 40
    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    :try_start_0
    const-string v8, "/play-services-pal.properties"

    .line 44
    .line 45
    const-class v9, Lcom/google/android/gms/common/internal/p;

    .line 46
    .line 47
    invoke-virtual {v9, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 48
    .line 49
    .line 50
    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    if-eqz v8, :cond_2

    .line 52
    .line 53
    :try_start_1
    invoke-virtual {v5, v8}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 54
    .line 55
    .line 56
    const-string v9, "version"

    .line 57
    .line 58
    invoke-virtual {v5, v9, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget-object v5, v4, Lm2/c;->H:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v5, Ljava/lang/String;

    .line 77
    .line 78
    const/4 v9, 0x2

    .line 79
    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_6

    .line 84
    .line 85
    iget-object v5, v4, Lm2/c;->I:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v5, Ljava/lang/String;

    .line 88
    .line 89
    if-nez v5, :cond_1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    :goto_0
    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    goto :goto_6

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    goto :goto_2

    .line 102
    :catch_0
    move-exception v1

    .line 103
    move-object v5, v7

    .line 104
    move-object v7, v8

    .line 105
    goto :goto_4

    .line 106
    :cond_2
    iget-object v1, v4, Lm2/c;->H:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v1, Ljava/lang/String;

    .line 109
    .line 110
    const/4 v5, 0x5

    .line 111
    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_6

    .line 116
    .line 117
    iget-object v1, v4, Lm2/c;->I:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v1, Ljava/lang/String;

    .line 120
    .line 121
    if-nez v1, :cond_3

    .line 122
    .line 123
    move-object v1, v0

    .line 124
    goto :goto_1

    .line 125
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    :goto_1
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    .line 131
    .line 132
    goto :goto_6

    .line 133
    :goto_2
    move-object v7, v8

    .line 134
    goto/16 :goto_a

    .line 135
    .line 136
    :catch_1
    move-exception v1

    .line 137
    goto :goto_3

    .line 138
    :catchall_1
    move-exception v0

    .line 139
    goto :goto_a

    .line 140
    :goto_3
    move-object v5, v7

    .line 141
    :goto_4
    :try_start_2
    iget-object v8, v4, Lm2/c;->H:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v8, Ljava/lang/String;

    .line 144
    .line 145
    const/4 v9, 0x6

    .line 146
    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    if-eqz v8, :cond_5

    .line 151
    .line 152
    iget-object v8, v4, Lm2/c;->I:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v8, Ljava/lang/String;

    .line 155
    .line 156
    if-nez v8, :cond_4

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_4
    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    :goto_5
    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 164
    .line 165
    .line 166
    :cond_5
    move-object v8, v7

    .line 167
    move-object v7, v5

    .line 168
    :cond_6
    :goto_6
    if-eqz v8, :cond_7

    .line 169
    .line 170
    invoke-static {v8}, Lf/b;->e(Ljava/io/Closeable;)V

    .line 171
    .line 172
    .line 173
    :cond_7
    if-nez v7, :cond_a

    .line 174
    .line 175
    iget-object v0, v4, Lm2/c;->H:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v0, Ljava/lang/String;

    .line 178
    .line 179
    const/4 v1, 0x3

    .line 180
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_9

    .line 185
    .line 186
    iget-object v0, v4, Lm2/c;->I:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v0, Ljava/lang/String;

    .line 189
    .line 190
    const-string v1, ".properties file is dropped during release process. Failure to read app version is expected during Google internal testing where locally-built libraries are used"

    .line 191
    .line 192
    if-nez v0, :cond_8

    .line 193
    .line 194
    goto :goto_7

    .line 195
    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    :goto_7
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    :cond_9
    const-string v0, "UNKNOWN"

    .line 203
    .line 204
    goto :goto_8

    .line 205
    :cond_a
    move-object v0, v7

    .line 206
    :goto_8
    invoke-virtual {v2, v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    :goto_9
    sput-object v0, Lcom/google/ads/interactivemedia/pal/zzat;->zza:Ljava/lang/String;

    .line 210
    .line 211
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 212
    .line 213
    const-wide/16 v1, 0x14

    .line 214
    .line 215
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 216
    .line 217
    .line 218
    move-result-wide v3

    .line 219
    long-to-int v4, v3

    .line 220
    sput v4, Lcom/google/ads/interactivemedia/pal/zzat;->zzb:I

    .line 221
    .line 222
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 223
    .line 224
    .line 225
    move-result-wide v0

    .line 226
    long-to-int v1, v0

    .line 227
    sput v1, Lcom/google/ads/interactivemedia/pal/zzat;->zzc:I

    .line 228
    .line 229
    const-wide/16 v0, 0x96

    .line 230
    .line 231
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/pal/A0;->a(J)Lcom/google/android/gms/internal/pal/A0;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    sput-object v0, Lcom/google/ads/interactivemedia/pal/zzat;->zzd:Lcom/google/android/gms/internal/pal/A0;

    .line 236
    .line 237
    return-void

    .line 238
    :goto_a
    if-eqz v7, :cond_b

    .line 239
    .line 240
    invoke-static {v7}, Lf/b;->e(Ljava/io/Closeable;)V

    .line 241
    .line 242
    .line 243
    :cond_b
    throw v0
.end method
