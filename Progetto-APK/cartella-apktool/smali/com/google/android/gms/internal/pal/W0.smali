.class public final Lcom/google/android/gms/internal/pal/W0;
.super Lcom/google/android/gms/internal/pal/a1;
.source "SourceFile"


# direct methods
.method public static d()Lcom/google/android/gms/internal/pal/m2;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-class v2, Ljava/lang/Throwable;

    .line 4
    .line 5
    const-string v3, "NonceGenerator"

    .line 6
    .line 7
    const-string v4, "Failed to read keyset handle: "

    .line 8
    .line 9
    const-string v5, "Failed keystore response: "

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    :try_start_0
    new-instance v7, Ljava/net/URL;

    .line 13
    .line 14
    const-string v8, "https://imasdk.googleapis.com/pal/key/public.json"

    .line 15
    .line 16
    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    check-cast v7, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 24
    .line 25
    :try_start_1
    sget v6, Lcom/google/ads/interactivemedia/pal/zzat;->zzb:I

    .line 26
    .line 27
    invoke-virtual {v7, v6}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 28
    .line 29
    .line 30
    sget v6, Lcom/google/ads/interactivemedia/pal/zzat;->zzc:I

    .line 31
    .line 32
    invoke-virtual {v7, v6}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v7, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v7, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    const/16 v8, 0xc8

    .line 49
    .line 50
    if-ne v6, v8, :cond_2

    .line 51
    .line 52
    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 53
    .line 54
    .line 55
    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :try_start_2
    new-instance v6, Lcom/google/android/gms/internal/pal/q3;

    .line 57
    .line 58
    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/pal/q3;-><init>(Ljava/io/InputStream;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v6}, Lcom/google/android/gms/internal/pal/m2;->b(Lcom/google/android/gms/internal/pal/q3;)Lcom/google/android/gms/internal/pal/m2;

    .line 62
    .line 63
    .line 64
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    if-eqz v5, :cond_0

    .line 66
    .line 67
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto :goto_2

    .line 73
    :catch_0
    move-exception v0

    .line 74
    goto :goto_3

    .line 75
    :catch_1
    move-exception v0

    .line 76
    goto :goto_3

    .line 77
    :cond_0
    :goto_0
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 78
    .line 79
    .line 80
    return-object v0

    .line 81
    :catchall_1
    move-exception v6

    .line 82
    if-eqz v5, :cond_1

    .line 83
    .line 84
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :catchall_2
    move-exception v5

    .line 89
    :try_start_5
    new-array v8, v1, [Ljava/lang/Class;

    .line 90
    .line 91
    aput-object v2, v8, v0

    .line 92
    .line 93
    const-string v9, "addSuppressed"

    .line 94
    .line 95
    invoke-virtual {v2, v9, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    new-array v1, v1, [Ljava/lang/Object;

    .line 100
    .line 101
    aput-object v5, v1, v0

    .line 102
    .line 103
    invoke-virtual {v2, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 104
    .line 105
    .line 106
    :catch_2
    :cond_1
    :goto_1
    :try_start_6
    throw v6

    .line 107
    :cond_2
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    const/16 v0, 0xca

    .line 127
    .line 128
    invoke-static {v0}, Lcom/google/ads/interactivemedia/pal/NonceLoaderException;->zzb(I)Lcom/google/ads/interactivemedia/pal/NonceLoaderException;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 133
    :goto_2
    move-object v6, v7

    .line 134
    goto :goto_5

    .line 135
    :goto_3
    move-object v6, v7

    .line 136
    goto :goto_4

    .line 137
    :catchall_3
    move-exception v0

    .line 138
    goto :goto_5

    .line 139
    :catch_3
    move-exception v0

    .line 140
    goto :goto_4

    .line 141
    :catch_4
    move-exception v0

    .line 142
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    new-instance v1, Lcom/google/ads/interactivemedia/pal/NonceLoaderException;

    .line 162
    .line 163
    const/16 v2, 0xcb

    .line 164
    .line 165
    invoke-direct {v1, v2, v0}, Lcom/google/ads/interactivemedia/pal/NonceLoaderException;-><init>(ILjava/lang/Exception;)V

    .line 166
    .line 167
    .line 168
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 169
    :goto_5
    if-eqz v6, :cond_3

    .line 170
    .line 171
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 172
    .line 173
    .line 174
    :cond_3
    throw v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/pal/I2;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/pal/Z3;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/pal/W0;->d()Lcom/google/android/gms/internal/pal/m2;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/pal/V0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/m2;->d()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/pal/p3;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/pal/V0;-><init>(Lcom/google/android/gms/internal/pal/p3;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/google/android/gms/internal/pal/K2;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/pal/K2;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    const-string v1, "NonceGenerator"

    .line 27
    .line 28
    const-string v2, "Can\'t access the cryptography library."

    .line 29
    .line 30
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    new-instance v1, Lcom/google/ads/interactivemedia/pal/NonceLoaderException;

    .line 34
    .line 35
    const/16 v2, 0xc9

    .line 36
    .line 37
    invoke-direct {v1, v2, v0}, Lcom/google/ads/interactivemedia/pal/NonceLoaderException;-><init>(ILjava/lang/Exception;)V

    .line 38
    .line 39
    .line 40
    throw v1
.end method
