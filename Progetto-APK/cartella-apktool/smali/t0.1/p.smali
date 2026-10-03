.class public final Lt0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt0/q;


# instance fields
.field public final a:Z

.field public final b:Ljavax/crypto/Cipher;

.field public final c:Ljavax/crypto/spec/SecretKeySpec;

.field public final d:Ljava/security/SecureRandom;

.field public final e:Lcom/google/android/gms/internal/atv_ads_framework/x0;

.field public f:Z

.field public g:Lt0/t;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lt0/p;->a:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lt0/p;->b:Ljavax/crypto/Cipher;

    .line 9
    .line 10
    iput-object v0, p0, Lt0/p;->c:Ljavax/crypto/spec/SecretKeySpec;

    .line 11
    .line 12
    iput-object v0, p0, Lt0/p;->d:Ljava/security/SecureRandom;

    .line 13
    .line 14
    new-instance v0, Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/x0;-><init>(Ljava/io/File;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lt0/p;->e:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 20
    .line 21
    return-void
.end method

.method public static i(Lt0/n;I)I
    .locals 4

    .line 1
    iget v0, p0, Lt0/n;->a:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Lt0/n;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, v0

    .line 12
    const/4 v0, 0x2

    .line 13
    if-ge p1, v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lt0/n;->e:Lt0/r;

    .line 16
    .line 17
    invoke-static {p0}, Lt/a;->a(Lt0/r;)J

    .line 18
    .line 19
    .line 20
    move-result-wide p0

    .line 21
    mul-int/lit8 v1, v1, 0x1f

    .line 22
    .line 23
    const/16 v0, 0x20

    .line 24
    .line 25
    ushr-long v2, p0, v0

    .line 26
    .line 27
    xor-long/2addr p0, v2

    .line 28
    long-to-int p1, p0

    .line 29
    add-int/2addr v1, p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    .line 32
    .line 33
    iget-object p0, p0, Lt0/n;->e:Lt0/r;

    .line 34
    .line 35
    invoke-virtual {p0}, Lt0/r;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    add-int/2addr v1, p0

    .line 40
    :goto_0
    return v1
.end method

.method public static j(ILjava/io/DataInputStream;)Lt0/n;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x2

    .line 10
    if-ge p0, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    .line 13
    .line 14
    .line 15
    move-result-wide p0

    .line 16
    new-instance v2, Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 17
    .line 18
    const/4 v3, 0x3

    .line 19
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/atv_ads_framework/x0;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "exo_len"

    .line 27
    .line 28
    invoke-virtual {v2, p0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object p0, Lt0/r;->c:Lt0/r;

    .line 32
    .line 33
    invoke-virtual {p0, v2}, Lt0/r;->a(Lcom/google/android/gms/internal/atv_ads_framework/x0;)Lt0/r;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p1}, Ll/x;->a(Ljava/io/DataInputStream;)Lt0/r;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    :goto_0
    new-instance p1, Lt0/n;

    .line 43
    .line 44
    invoke-direct {p1, v0, v1, p0}, Lt0/n;-><init>(ILjava/lang/String;Lt0/r;)V

    .line 45
    .line 46
    .line 47
    return-object p1
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lt0/p;->b:Ljavax/crypto/Cipher;

    .line 2
    .line 3
    iget-object v1, p0, Lt0/p;->e:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->x()Lp0/a;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object v4, p0, Lt0/p;->g:Lt0/t;

    .line 11
    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    new-instance v4, Lt0/t;

    .line 15
    .line 16
    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 17
    .line 18
    .line 19
    iput-object v4, p0, Lt0/p;->g:Lt0/t;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto/16 :goto_4

    .line 24
    .line 25
    :cond_0
    invoke-virtual {v4, v3}, Lt0/t;->k(Ljava/io/OutputStream;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object v3, p0, Lt0/p;->g:Lt0/t;

    .line 29
    .line 30
    new-instance v4, Ljava/io/DataOutputStream;

    .line 31
    .line 32
    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    :try_start_1
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    .line 38
    .line 39
    iget-boolean v5, p0, Lt0/p;->a:Z

    .line 40
    .line 41
    :try_start_2
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    if-eqz v5, :cond_1

    .line 45
    .line 46
    const/16 v5, 0x10

    .line 47
    .line 48
    new-array v5, v5, [B

    .line 49
    .line 50
    iget-object v6, p0, Lt0/p;->d:Ljava/security/SecureRandom;

    .line 51
    .line 52
    sget-object v7, Lp0/M;->a:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v6, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 58
    .line 59
    .line 60
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    .line 61
    .line 62
    invoke-direct {v6, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    .line 64
    .line 65
    :try_start_3
    iget-object v5, p0, Lt0/p;->c:Ljavax/crypto/spec/SecretKeySpec;

    .line 66
    .line 67
    const/4 v7, 0x1

    .line 68
    invoke-virtual {v0, v7, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    .line 70
    .line 71
    :try_start_4
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 72
    .line 73
    .line 74
    new-instance v5, Ljava/io/DataOutputStream;

    .line 75
    .line 76
    new-instance v6, Ljavax/crypto/CipherOutputStream;

    .line 77
    .line 78
    invoke-direct {v6, v3, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 82
    .line 83
    .line 84
    move-object v4, v5

    .line 85
    goto :goto_2

    .line 86
    :catchall_1
    move-exception p1

    .line 87
    move-object v2, v4

    .line 88
    goto :goto_4

    .line 89
    :catch_0
    move-exception p1

    .line 90
    goto :goto_1

    .line 91
    :catch_1
    move-exception p1

    .line 92
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 93
    .line 94
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    throw v0

    .line 98
    :cond_1
    :goto_2
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    const/4 v0, 0x0

    .line 114
    const/4 v3, 0x0

    .line 115
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_2

    .line 120
    .line 121
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    check-cast v5, Lt0/n;

    .line 126
    .line 127
    iget v6, v5, Lt0/n;->a:I

    .line 128
    .line 129
    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 130
    .line 131
    .line 132
    iget-object v6, v5, Lt0/n;->b:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v6, v5, Lt0/n;->e:Lt0/r;

    .line 138
    .line 139
    invoke-static {v6, v4}, Ll/x;->b(Lt0/r;Ljava/io/DataOutputStream;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v5, v2}, Lt0/p;->i(Lt0/n;I)I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    add-int/2addr v3, v5

    .line 147
    goto :goto_3

    .line 148
    :cond_2
    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 152
    .line 153
    .line 154
    iget-object p1, v1, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p1, Ljava/io/File;

    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 159
    .line 160
    .line 161
    sget-object p1, Lp0/M;->a:Ljava/lang/String;

    .line 162
    .line 163
    iput-boolean v0, p0, Lt0/p;->f:Z

    .line 164
    .line 165
    return-void

    .line 166
    :goto_4
    invoke-static {v2}, Lp0/M;->g(Ljava/io/Closeable;)V

    .line 167
    .line 168
    .line 169
    throw p1
.end method

.method public final b(Lt0/n;Z)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lt0/p;->f:Z

    .line 3
    .line 4
    return-void
.end method

.method public final c(Lt0/n;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lt0/p;->f:Z

    .line 3
    .line 4
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lt0/p;->e:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->l()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final e(Ljava/util/HashMap;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lt0/p;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lt0/p;->a(Ljava/util/HashMap;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final f(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final g(Ljava/util/HashMap;Landroid/util/SparseArray;)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lt0/p;->f:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lt0/p;->e:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->l()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto/16 :goto_8

    .line 17
    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->r()Ljava/io/FileInputStream;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 26
    .line 27
    .line 28
    new-instance v4, Ljava/io/DataInputStream;

    .line 29
    .line 30
    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    .line 32
    .line 33
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-ltz v2, :cond_2

    .line 38
    .line 39
    const/4 v5, 0x2

    .line 40
    if-le v2, v5, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    .line 44
    .line 45
    .line 46
    move-result v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    and-int/2addr v6, v1

    .line 48
    if-eqz v6, :cond_4

    .line 49
    .line 50
    iget-object v6, p0, Lt0/p;->b:Ljavax/crypto/Cipher;

    .line 51
    .line 52
    if-nez v6, :cond_3

    .line 53
    .line 54
    :cond_2
    :goto_0
    invoke-static {v4}, Lp0/M;->g(Ljava/io/Closeable;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_7

    .line 58
    .line 59
    :cond_3
    const/16 v7, 0x10

    .line 60
    .line 61
    :try_start_2
    new-array v7, v7, [B

    .line 62
    .line 63
    invoke-virtual {v4, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 64
    .line 65
    .line 66
    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    .line 67
    .line 68
    invoke-direct {v8, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    .line 70
    .line 71
    :try_start_3
    iget-object v7, p0, Lt0/p;->c:Ljavax/crypto/spec/SecretKeySpec;

    .line 72
    .line 73
    sget-object v9, Lp0/M;->a:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v6, v5, v7, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    .line 77
    .line 78
    :try_start_4
    new-instance v5, Ljava/io/DataInputStream;

    .line 79
    .line 80
    new-instance v7, Ljavax/crypto/CipherInputStream;

    .line 81
    .line 82
    invoke-direct {v7, v3, v6}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 83
    .line 84
    .line 85
    invoke-direct {v5, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 86
    .line 87
    .line 88
    move-object v4, v5

    .line 89
    goto :goto_2

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    move-object v2, v4

    .line 92
    goto :goto_5

    .line 93
    :catch_0
    nop

    .line 94
    move-object v2, v4

    .line 95
    goto :goto_6

    .line 96
    :catch_1
    move-exception v1

    .line 97
    goto :goto_1

    .line 98
    :catch_2
    move-exception v1

    .line 99
    :goto_1
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 100
    .line 101
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    throw v2

    .line 105
    :cond_4
    iget-boolean v3, p0, Lt0/p;->a:Z

    .line 106
    .line 107
    if-eqz v3, :cond_5

    .line 108
    .line 109
    iput-boolean v1, p0, Lt0/p;->f:Z

    .line 110
    .line 111
    :cond_5
    :goto_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    const/4 v5, 0x0

    .line 116
    const/4 v6, 0x0

    .line 117
    const/4 v7, 0x0

    .line 118
    :goto_3
    if-ge v6, v3, :cond_6

    .line 119
    .line 120
    invoke-static {v2, v4}, Lt0/p;->j(ILjava/io/DataInputStream;)Lt0/n;

    .line 121
    .line 122
    .line 123
    move-result-object v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 124
    iget-object v9, v8, Lt0/n;->b:Ljava/lang/String;

    .line 125
    .line 126
    :try_start_5
    invoke-virtual {p1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    iget v10, v8, Lt0/n;->a:I

    .line 130
    .line 131
    invoke-virtual {p2, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-static {v8, v2}, Lt0/p;->i(Lt0/n;I)I

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    add-int/2addr v7, v8

    .line 139
    add-int/lit8 v6, v6, 0x1

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_6
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    .line 147
    .line 148
    .line 149
    move-result v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 150
    const/4 v6, -0x1

    .line 151
    if-ne v3, v6, :cond_7

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_7
    const/4 v1, 0x0

    .line 155
    :goto_4
    if-ne v2, v7, :cond_2

    .line 156
    .line 157
    if-nez v1, :cond_8

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_8
    invoke-static {v4}, Lp0/M;->g(Ljava/io/Closeable;)V

    .line 161
    .line 162
    .line 163
    goto :goto_8

    .line 164
    :catchall_1
    move-exception p1

    .line 165
    goto :goto_5

    .line 166
    :catch_3
    nop

    .line 167
    goto :goto_6

    .line 168
    :goto_5
    if-eqz v2, :cond_9

    .line 169
    .line 170
    invoke-static {v2}, Lp0/M;->g(Ljava/io/Closeable;)V

    .line 171
    .line 172
    .line 173
    :cond_9
    throw p1

    .line 174
    :goto_6
    if-eqz v2, :cond_a

    .line 175
    .line 176
    invoke-static {v2}, Lp0/M;->g(Ljava/io/Closeable;)V

    .line 177
    .line 178
    .line 179
    :cond_a
    :goto_7
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 183
    .line 184
    .line 185
    iget-object p1, v0, Lcom/google/android/gms/internal/atv_ads_framework/x0;->H:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast p1, Ljava/io/File;

    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 190
    .line 191
    .line 192
    iget-object p1, v0, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast p1, Ljava/io/File;

    .line 195
    .line 196
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 197
    .line 198
    .line 199
    :goto_8
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt0/p;->e:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/atv_ads_framework/x0;->H:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/io/File;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ljava/io/File;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
