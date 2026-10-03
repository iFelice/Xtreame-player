.class public final Lcom/google/android/gms/internal/ads/cw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a([B[BLjava/lang/String;Lcom/google/android/gms/internal/ads/Cn;)Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 5
    .line 6
    .line 7
    move-result-object p2
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/Xu;

    .line 9
    .line 10
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 11
    .line 12
    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 13
    .line 14
    .line 15
    const/16 p2, 0x13

    .line 16
    .line 17
    invoke-direct {v0, v2, p2}, Lcom/google/android/gms/internal/ads/Xu;-><init>(Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->A(Lcom/google/android/gms/internal/ads/Xu;)La3/b;

    .line 21
    .line 22
    .line 23
    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 24
    goto :goto_1

    .line 25
    :catch_0
    move-exception p2

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    :try_start_2
    new-instance p2, Ljava/security/GeneralSecurityException;

    .line 28
    .line 29
    const-string v0, "Parse keyset failed"

    .line 30
    .line 31
    invoke-direct {p2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p2
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 35
    :goto_0
    const-string v0, "Failed to get keysethandle"

    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 49
    .line 50
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 51
    .line 52
    const-string v2, "CryptoUtils.getHandle"

    .line 53
    .line 54
    invoke-virtual {v0, v2, p2}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    move-object p2, v1

    .line 58
    :goto_1
    if-nez p2, :cond_0

    .line 59
    .line 60
    return-object v1

    .line 61
    :cond_0
    :try_start_3
    invoke-virtual {p2}, La3/b;->u()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Lcom/google/android/gms/internal/ads/vC;

    .line 66
    .line 67
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/vC;->zza([B[B)[B

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    iget-object p1, p3, Lcom/google/android/gms/internal/ads/Cn;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    .line 73
    const-string p2, "ds"

    .line 74
    .line 75
    const-string v0, "1"

    .line 76
    .line 77
    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    new-instance p1, Ljava/lang/String;

    .line 81
    .line 82
    const-string p2, "UTF-8"

    .line 83
    .line 84
    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_2

    .line 85
    .line 86
    .line 87
    return-object p1

    .line 88
    :catch_2
    move-exception p0

    .line 89
    goto :goto_2

    .line 90
    :catch_3
    move-exception p0

    .line 91
    goto :goto_2

    .line 92
    :catch_4
    move-exception p0

    .line 93
    :goto_2
    const-string p1, "Failed to decrypt "

    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    sget-object p1, Lk3/l;->A:Lk3/l;

    .line 107
    .line 108
    iget-object p1, p1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 109
    .line 110
    const-string p2, "CryptoUtils.decrypt"

    .line 111
    .line 112
    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p3, Lcom/google/android/gms/internal/ads/Cn;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 116
    .line 117
    const-string p2, "dsf"

    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {p1, p2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    return-object v1
.end method
