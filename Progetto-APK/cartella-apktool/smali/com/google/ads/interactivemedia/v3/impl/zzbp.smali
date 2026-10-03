.class final Lcom/google/ads/interactivemedia/v3/impl/zzbp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/zzbq;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzbo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/ads/interactivemedia/v3/impl/data/zzby;)Lcom/google/ads/interactivemedia/v3/impl/data/zzbz;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/net/URL;

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzby;->url()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 16
    .line 17
    :try_start_1
    const-string v0, "User-Agent"

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzby;->userAgent()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v0, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzby;->connectionTimeoutMs()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {v1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzby;->readTimeoutMs()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {v1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzby;->requestType()Lcom/google/ads/interactivemedia/v3/impl/data/zzbx;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbx;->POST:Lcom/google/ads/interactivemedia/v3/impl/data/zzbx;

    .line 45
    .line 46
    if-ne v0, v2, :cond_1

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-virtual {v1, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzby;->content()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 63
    .line 64
    .line 65
    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :try_start_2
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    .line 74
    .line 75
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    goto :goto_5

    .line 81
    :catch_0
    move-exception v0

    .line 82
    goto :goto_6

    .line 83
    :catchall_1
    move-exception v0

    .line 84
    if-eqz v2, :cond_0

    .line 85
    .line 86
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_2
    move-exception v2

    .line 91
    :try_start_5
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    :cond_0
    :goto_0
    throw v0

    .line 95
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 96
    .line 97
    .line 98
    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 99
    :try_start_6
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 100
    .line 101
    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 102
    .line 103
    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    new-instance v4, Ljava/io/BufferedReader;

    .line 110
    .line 111
    new-instance v5, Ljava/io/InputStreamReader;

    .line 112
    .line 113
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 114
    .line 115
    invoke-direct {v5, v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 116
    .line 117
    .line 118
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 119
    .line 120
    .line 121
    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    if-eqz v2, :cond_2

    .line 126
    .line 127
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :catchall_3
    move-exception v2

    .line 132
    goto :goto_3

    .line 133
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 137
    if-eqz v0, :cond_3

    .line 138
    .line 139
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 140
    .line 141
    .line 142
    :cond_3
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 146
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzby;->id()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-static {p1, v2, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbz;->forResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/zzbz;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    return-object p1

    .line 158
    :goto_3
    if-eqz v0, :cond_4

    .line 159
    .line 160
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 161
    .line 162
    .line 163
    goto :goto_4

    .line 164
    :catchall_4
    move-exception v0

    .line 165
    :try_start_9
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    :cond_4
    :goto_4
    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 169
    :goto_5
    move-object v0, v1

    .line 170
    goto :goto_8

    .line 171
    :catchall_5
    move-exception p1

    .line 172
    goto :goto_8

    .line 173
    :catch_1
    move-exception v1

    .line 174
    move-object v7, v1

    .line 175
    move-object v1, v0

    .line 176
    move-object v0, v7

    .line 177
    :goto_6
    :try_start_a
    instance-of v0, v0, Ljava/net/SocketTimeoutException;

    .line 178
    .line 179
    if-eqz v0, :cond_5

    .line 180
    .line 181
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzby;->id()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    const/16 v0, 0x65

    .line 186
    .line 187
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbz;->forError(Ljava/lang/String;I)Lcom/google/ads/interactivemedia/v3/impl/data/zzbz;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    goto :goto_7

    .line 192
    :cond_5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzby;->id()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    const/16 v0, 0x64

    .line 197
    .line 198
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbz;->forError(Ljava/lang/String;I)Lcom/google/ads/interactivemedia/v3/impl/data/zzbz;

    .line 199
    .line 200
    .line 201
    move-result-object p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 202
    :goto_7
    if-eqz v1, :cond_6

    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 205
    .line 206
    .line 207
    :cond_6
    return-object p1

    .line 208
    :goto_8
    if-eqz v0, :cond_7

    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 211
    .line 212
    .line 213
    :cond_7
    throw p1
.end method
