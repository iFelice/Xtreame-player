.class public abstract Lcom/google/android/gms/internal/ads/x4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field public static b:Ljava/security/MessageDigest;

.field public static final c:Ljava/lang/Object;

.field public static final d:Ljava/lang/Object;

.field public static final e:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/x4;->c:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/internal/ads/x4;->d:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/google/android/gms/internal/ads/x4;->e:Ljava/util/concurrent/CountDownLatch;

    .line 22
    .line 23
    return-void
.end method

.method public static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    if-gtz v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    add-int/lit16 v0, v0, 0xfe

    .line 8
    .line 9
    new-instance v3, Ljava/util/Vector;

    .line 10
    .line 11
    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    :goto_0
    const/16 v5, 0xff

    .line 16
    .line 17
    div-int/lit16 v6, v0, 0xff

    .line 18
    .line 19
    if-ge v4, v6, :cond_2

    .line 20
    .line 21
    mul-int/lit16 v6, v4, 0xff

    .line 22
    .line 23
    :try_start_0
    array-length v7, p0

    .line 24
    sub-int v8, v7, v6

    .line 25
    .line 26
    if-le v8, v5, :cond_1

    .line 27
    .line 28
    add-int/lit16 v7, v6, 0xff

    .line 29
    .line 30
    :cond_1
    invoke-static {p0, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    nop

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move-object v2, v3

    .line 43
    :goto_1
    if-eqz v2, :cond_5

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/t4;->A()Lcom/google/android/gms/internal/ads/s4;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    const/4 v4, 0x0

    .line 61
    :goto_2
    if-ge v4, v3, :cond_4

    .line 62
    .line 63
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    check-cast v5, [B

    .line 68
    .line 69
    invoke-static {v5, p1, v1}, Lcom/google/android/gms/internal/ads/x4;->d([BLjava/lang/String;Z)[B

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    const/16 v6, 0x100

    .line 74
    .line 75
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/XG;->y(I[BI)Lcom/google/android/gms/internal/ads/VG;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 80
    .line 81
    .line 82
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 83
    .line 84
    check-cast v6, Lcom/google/android/gms/internal/ads/t4;

    .line 85
    .line 86
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/t4;->B(Lcom/google/android/gms/internal/ads/t4;Lcom/google/android/gms/internal/ads/VG;)V

    .line 87
    .line 88
    .line 89
    add-int/lit8 v4, v4, 0x1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/x4;->c([B)[B

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    sget-object p1, Lcom/google/android/gms/internal/ads/XG;->H:Lcom/google/android/gms/internal/ads/VG;

    .line 97
    .line 98
    array-length p1, p0

    .line 99
    invoke-static {v1, p0, p1}, Lcom/google/android/gms/internal/ads/XG;->y(I[BI)Lcom/google/android/gms/internal/ads/VG;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 104
    .line 105
    .line 106
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 107
    .line 108
    check-cast p1, Lcom/google/android/gms/internal/ads/t4;

    .line 109
    .line 110
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/t4;->C(Lcom/google/android/gms/internal/ads/t4;Lcom/google/android/gms/internal/ads/VG;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    check-cast p0, Lcom/google/android/gms/internal/ads/t4;

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/PG;->d()[B

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    goto :goto_4

    .line 124
    :cond_5
    :goto_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/j4;->a0()Lcom/google/android/gms/internal/ads/V3;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 132
    .line 133
    check-cast v0, Lcom/google/android/gms/internal/ads/j4;

    .line 134
    .line 135
    const-wide/16 v1, 0x1000

    .line 136
    .line 137
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/j4;->K0(Lcom/google/android/gms/internal/ads/j4;J)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    check-cast p0, Lcom/google/android/gms/internal/ads/j4;

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/PG;->d()[B

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    const/4 v0, 0x1

    .line 151
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/x4;->d([BLjava/lang/String;Z)[B

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    :goto_4
    const/16 p1, 0xb

    .line 156
    .line 157
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    return-object p0
.end method

.method public static b()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/x4;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/google/android/gms/internal/ads/x4;->a:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    sput-boolean v1, Lcom/google/android/gms/internal/ads/x4;->a:Z

    .line 10
    .line 11
    new-instance v1, Ljava/lang/Thread;

    .line 12
    .line 13
    new-instance v2, Lcom/google/android/gms/internal/ads/w4;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v2, v3, v3}, Lcom/google/android/gms/internal/ads/w4;-><init>(II)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v1
.end method

.method public static c([B)[B
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/x4;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/x4;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_1
    sget-object v2, Lcom/google/android/gms/internal/ads/x4;->e:Ljava/util/concurrent/CountDownLatch;

    .line 9
    .line 10
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    const-wide/16 v4, 0x2

    .line 13
    .line 14
    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 15
    .line 16
    .line 17
    move-result v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :try_start_2
    sget-object v2, Lcom/google/android/gms/internal/ads/x4;->b:Ljava/security/MessageDigest;

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v1, v2

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :catch_0
    nop

    .line 31
    :goto_0
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Lcom/google/android/gms/internal/ads/x4;->b:Ljava/security/MessageDigest;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    monitor-exit v0

    .line 46
    return-object p0

    .line 47
    :cond_2
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    .line 48
    .line 49
    const-string v1, "Cannot compute hash"

    .line 50
    .line 51
    invoke-direct {p0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    throw p0
.end method

.method public static d([BLjava/lang/String;Z)[B
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq v1, p2, :cond_0

    .line 4
    .line 5
    const/16 v2, 0xff

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v2, 0xef

    .line 9
    .line 10
    :goto_0
    if-le v0, v2, :cond_1

    .line 11
    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/j4;->a0()Lcom/google/android/gms/internal/ads/V3;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 20
    .line 21
    check-cast v0, Lcom/google/android/gms/internal/ads/j4;

    .line 22
    .line 23
    const-wide/16 v3, 0x1000

    .line 24
    .line 25
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ads/j4;->K0(Lcom/google/android/gms/internal/ads/j4;J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lcom/google/android/gms/internal/ads/j4;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/PG;->d()[B

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :cond_1
    add-int/lit8 v0, v2, 0x1

    .line 39
    .line 40
    array-length v3, p0

    .line 41
    int-to-byte v4, v3

    .line 42
    if-ge v3, v2, :cond_2

    .line 43
    .line 44
    sub-int/2addr v2, v3

    .line 45
    new-array v2, v2, [B

    .line 46
    .line 47
    new-instance v3, Ljava/security/SecureRandom;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    :goto_1
    const/16 v0, 0x100

    .line 93
    .line 94
    if-eqz p2, :cond_3

    .line 95
    .line 96
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/x4;->c([B)[B

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    :cond_3
    new-array p2, v0, [B

    .line 117
    .line 118
    new-instance v0, Lcom/google/android/gms/internal/ads/B4;

    .line 119
    .line 120
    const/4 v2, 0x0

    .line 121
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/B4;-><init>(I)V

    .line 122
    .line 123
    .line 124
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/B4;->G2:[Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v0, [Lcom/google/android/gms/internal/ads/y4;

    .line 127
    .line 128
    array-length v3, v0

    .line 129
    const/4 v3, 0x0

    .line 130
    :goto_2
    const/16 v4, 0xc

    .line 131
    .line 132
    if-ge v3, v4, :cond_4

    .line 133
    .line 134
    aget-object v4, v0, v3

    .line 135
    .line 136
    check-cast v4, Lcom/google/android/gms/internal/ads/z4;

    .line 137
    .line 138
    invoke-virtual {v4, p0, p2}, Lcom/google/android/gms/internal/ads/z4;->a([B[B)V

    .line 139
    .line 140
    .line 141
    add-int/lit8 v3, v3, 0x1

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_4
    if-eqz p1, :cond_6

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    if-lez p0, :cond_6

    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    const/16 v0, 0x20

    .line 157
    .line 158
    if-le p0, v0, :cond_5

    .line 159
    .line 160
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    :cond_5
    const-string p0, "UTF-8"

    .line 165
    .line 166
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    new-instance p1, LP2/b;

    .line 171
    .line 172
    invoke-direct {p1, p0, v1}, LP2/b;-><init>([BI)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, p2}, LP2/b;->c([B)V

    .line 176
    .line 177
    .line 178
    :cond_6
    return-object p2
.end method
