.class public abstract Lcom/google/android/gms/internal/pal/f1;
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
    sput-object v0, Lcom/google/android/gms/internal/pal/f1;->c:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/internal/pal/f1;->d:Ljava/lang/Object;

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
    sput-object v0, Lcom/google/android/gms/internal/pal/f1;->e:Ljava/util/concurrent/CountDownLatch;

    .line 22
    .line 23
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/pal/m0;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/j;->b()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/pal/l2;->p:LO1/y;

    .line 6
    .line 7
    sget-object v1, Lcom/google/android/gms/internal/pal/h2;->d:Lcom/google/android/gms/internal/pal/h2;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/google/android/gms/internal/pal/h2;->c:Lcom/google/android/gms/internal/pal/k2;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/pal/k2;->a(LO1/y;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-nez v0, :cond_4

    .line 24
    .line 25
    sget-object v0, Lcom/google/android/gms/internal/pal/y4;->P:Lcom/google/android/gms/internal/pal/p3;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-array p1, v1, [B

    .line 37
    .line 38
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/pal/y4;->P:Lcom/google/android/gms/internal/pal/p3;

    .line 39
    .line 40
    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/pal/p3;->zza([B[B)[B

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/pal/Q0;->m()Lcom/google/android/gms/internal/pal/P0;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    array-length v0, p0

    .line 49
    invoke-static {v1, p0, v0}, Lcom/google/android/gms/internal/pal/r;->o(I[BI)Lcom/google/android/gms/internal/pal/q;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    iget-boolean v0, p1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 58
    .line 59
    .line 60
    iput-boolean v1, p1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 61
    .line 62
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 63
    .line 64
    check-cast v0, Lcom/google/android/gms/internal/pal/Q0;

    .line 65
    .line 66
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/pal/Q0;->n(Lcom/google/android/gms/internal/pal/Q0;Lcom/google/android/gms/internal/pal/q;)V

    .line 67
    .line 68
    .line 69
    iget-boolean p0, p1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 70
    .line 71
    if-eqz p0, :cond_2

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 74
    .line 75
    .line 76
    iput-boolean v1, p1, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 77
    .line 78
    :cond_2
    iget-object p0, p1, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 79
    .line 80
    check-cast p0, Lcom/google/android/gms/internal/pal/Q0;

    .line 81
    .line 82
    invoke-static {p0}, Lcom/google/android/gms/internal/pal/Q0;->p(Lcom/google/android/gms/internal/pal/Q0;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    check-cast p0, Lcom/google/android/gms/internal/pal/Q0;

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/j;->b()[B

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    goto/16 :goto_5

    .line 96
    .line 97
    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 98
    .line 99
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    .line 100
    .line 101
    .line 102
    throw p0

    .line 103
    :cond_4
    array-length v0, p0

    .line 104
    const/4 v3, 0x0

    .line 105
    if-gtz v0, :cond_5

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_5
    add-int/lit16 v0, v0, 0xfe

    .line 109
    .line 110
    const/16 v4, 0xff

    .line 111
    .line 112
    div-int/2addr v0, v4

    .line 113
    new-instance v5, Ljava/util/Vector;

    .line 114
    .line 115
    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 116
    .line 117
    .line 118
    const/4 v6, 0x0

    .line 119
    :goto_1
    if-ge v6, v0, :cond_7

    .line 120
    .line 121
    mul-int/lit16 v7, v6, 0xff

    .line 122
    .line 123
    :try_start_0
    array-length v8, p0

    .line 124
    sub-int v9, v8, v7

    .line 125
    .line 126
    if-le v9, v4, :cond_6

    .line 127
    .line 128
    add-int/lit16 v8, v7, 0xff

    .line 129
    .line 130
    :cond_6
    invoke-static {p0, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    invoke-virtual {v5, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    add-int/lit8 v6, v6, 0x1

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :catch_0
    nop

    .line 141
    goto :goto_2

    .line 142
    :cond_7
    move-object v3, v5

    .line 143
    :goto_2
    if-eqz v3, :cond_c

    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-nez v0, :cond_8

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/pal/Q0;->m()Lcom/google/android/gms/internal/pal/P0;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    const/4 v5, 0x0

    .line 161
    :goto_3
    if-ge v5, v4, :cond_a

    .line 162
    .line 163
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    check-cast v6, [B

    .line 168
    .line 169
    invoke-static {v6, p1, v1}, Lcom/google/android/gms/internal/pal/f1;->d([BLjava/lang/String;Z)[B

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    const/16 v7, 0x100

    .line 174
    .line 175
    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/pal/r;->o(I[BI)Lcom/google/android/gms/internal/pal/q;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    iget-boolean v7, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 180
    .line 181
    if-eqz v7, :cond_9

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 184
    .line 185
    .line 186
    iput-boolean v1, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 187
    .line 188
    :cond_9
    iget-object v7, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 189
    .line 190
    check-cast v7, Lcom/google/android/gms/internal/pal/Q0;

    .line 191
    .line 192
    invoke-static {v7, v6}, Lcom/google/android/gms/internal/pal/Q0;->n(Lcom/google/android/gms/internal/pal/Q0;Lcom/google/android/gms/internal/pal/q;)V

    .line 193
    .line 194
    .line 195
    add-int/lit8 v5, v5, 0x1

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_a
    invoke-static {p0}, Lcom/google/android/gms/internal/pal/f1;->c([B)[B

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    array-length p1, p0

    .line 203
    invoke-static {v1, p0, p1}, Lcom/google/android/gms/internal/pal/r;->o(I[BI)Lcom/google/android/gms/internal/pal/q;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    iget-boolean p1, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 208
    .line 209
    if-eqz p1, :cond_b

    .line 210
    .line 211
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 212
    .line 213
    .line 214
    iput-boolean v1, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 215
    .line 216
    :cond_b
    iget-object p1, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 217
    .line 218
    check-cast p1, Lcom/google/android/gms/internal/pal/Q0;

    .line 219
    .line 220
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/pal/Q0;->o(Lcom/google/android/gms/internal/pal/Q0;Lcom/google/android/gms/internal/pal/q;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    check-cast p0, Lcom/google/android/gms/internal/pal/Q0;

    .line 228
    .line 229
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/j;->b()[B

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    goto :goto_5

    .line 234
    :cond_c
    :goto_4
    invoke-static {}, Lcom/google/android/gms/internal/pal/m0;->M()Lcom/google/android/gms/internal/pal/L4;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    const-wide/16 v0, 0x1000

    .line 239
    .line 240
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/pal/L4;->g(J)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    check-cast p0, Lcom/google/android/gms/internal/pal/m0;

    .line 248
    .line 249
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/j;->b()[B

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    invoke-static {p0, p1, v2}, Lcom/google/android/gms/internal/pal/f1;->d([BLjava/lang/String;Z)[B

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    :goto_5
    invoke-static {p0, v2}, Lcom/google/android/gms/internal/pal/y4;->p([BZ)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    return-object p0
.end method

.method public static b()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/f1;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/google/android/gms/internal/pal/f1;->a:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    sput-boolean v1, Lcom/google/android/gms/internal/pal/f1;->a:Z

    .line 10
    .line 11
    new-instance v1, Ljava/lang/Thread;

    .line 12
    .line 13
    new-instance v2, Lcom/google/android/gms/internal/pal/e1;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v1
.end method

.method public static c([B)[B
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/f1;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/pal/f1;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_1
    sget-object v2, Lcom/google/android/gms/internal/pal/f1;->e:Ljava/util/concurrent/CountDownLatch;

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
    sget-object v2, Lcom/google/android/gms/internal/pal/f1;->b:Ljava/security/MessageDigest;

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
    sget-object p0, Lcom/google/android/gms/internal/pal/f1;->b:Ljava/security/MessageDigest;

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
    const/4 v0, 0x1

    .line 2
    if-eq v0, p2, :cond_0

    .line 3
    .line 4
    const/16 v1, 0xff

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/16 v1, 0xef

    .line 8
    .line 9
    :goto_0
    array-length v2, p0

    .line 10
    if-le v2, v1, :cond_1

    .line 11
    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/pal/m0;->M()Lcom/google/android/gms/internal/pal/L4;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-wide/16 v2, 0x1000

    .line 17
    .line 18
    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/pal/L4;->g(J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lcom/google/android/gms/internal/pal/m0;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/j;->b()[B

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :cond_1
    array-length v2, p0

    .line 32
    if-ge v2, v1, :cond_2

    .line 33
    .line 34
    sub-int v3, v1, v2

    .line 35
    .line 36
    new-array v3, v3, [B

    .line 37
    .line 38
    new-instance v4, Ljava/security/SecureRandom;

    .line 39
    .line 40
    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 44
    .line 45
    .line 46
    add-int/2addr v1, v0

    .line 47
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    int-to-byte v2, v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    add-int/2addr v1, v0

    .line 70
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    int-to-byte v2, v2

    .line 75
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    :goto_1
    const/16 v1, 0x100

    .line 88
    .line 89
    if-eqz p2, :cond_3

    .line 90
    .line 91
    invoke-static {p0}, Lcom/google/android/gms/internal/pal/f1;->c([B)[B

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    :cond_3
    new-array p2, v1, [B

    .line 112
    .line 113
    new-instance v1, Lcom/google/android/gms/internal/ads/B4;

    .line 114
    .line 115
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/B4;-><init>(I)V

    .line 116
    .line 117
    .line 118
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/B4;->G2:[Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v0, [Lcom/google/android/gms/internal/pal/g1;

    .line 121
    .line 122
    array-length v1, v0

    .line 123
    const/4 v1, 0x0

    .line 124
    const/4 v2, 0x0

    .line 125
    :goto_2
    const/16 v3, 0xc

    .line 126
    .line 127
    if-ge v2, v3, :cond_4

    .line 128
    .line 129
    aget-object v3, v0, v2

    .line 130
    .line 131
    check-cast v3, Lcom/google/android/gms/internal/pal/h1;

    .line 132
    .line 133
    invoke-virtual {v3, p0, p2}, Lcom/google/android/gms/internal/pal/h1;->a([B[B)V

    .line 134
    .line 135
    .line 136
    add-int/lit8 v2, v2, 0x1

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_4
    if-eqz p1, :cond_6

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    if-lez p0, :cond_6

    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    const/16 v0, 0x20

    .line 152
    .line 153
    if-le p0, v0, :cond_5

    .line 154
    .line 155
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    :cond_5
    const-string p0, "UTF-8"

    .line 160
    .line 161
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    new-instance p1, LP2/b;

    .line 166
    .line 167
    const/4 v0, 0x2

    .line 168
    invoke-direct {p1, p0, v0}, LP2/b;-><init>([BI)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, p2}, LP2/b;->c([B)V

    .line 172
    .line 173
    .line 174
    :cond_6
    return-object p2
.end method
