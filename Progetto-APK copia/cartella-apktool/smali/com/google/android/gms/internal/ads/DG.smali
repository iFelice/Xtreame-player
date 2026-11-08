.class public final Lcom/google/android/gms/internal/ads/DG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/vC;


# static fields
.field public static final f:LK3/X;

.field public static final g:LK3/X;


# instance fields
.field public final a:[B

.field public final b:[B

.field public final c:[B

.field public final d:Ljavax/crypto/spec/SecretKeySpec;

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LK3/X;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, v1}, LK3/X;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/ads/DG;->f:LK3/X;

    .line 9
    .line 10
    new-instance v0, LK3/X;

    .line 11
    .line 12
    const/16 v1, 0x9

    .line 13
    .line 14
    invoke-direct {v0, v1}, LK3/X;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/google/android/gms/internal/ads/DG;->g:LK3/X;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(I[B[B)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->f0(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    const/16 v1, 0xc

    .line 12
    .line 13
    const/16 v2, 0x10

    .line 14
    .line 15
    if-eq p1, v1, :cond_1

    .line 16
    .line 17
    if-ne p1, v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string p2, "IV size should be either 12 or 16 bytes"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/DG;->e:I

    .line 29
    .line 30
    array-length p1, p2

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->V(I)V

    .line 32
    .line 33
    .line 34
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    .line 35
    .line 36
    const-string v1, "AES"

    .line 37
    .line 38
    invoke-direct {p1, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/DG;->d:Ljavax/crypto/spec/SecretKeySpec;

    .line 42
    .line 43
    sget-object p2, Lcom/google/android/gms/internal/ads/DG;->f:LK3/X;

    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Ljavax/crypto/Cipher;

    .line 50
    .line 51
    invoke-virtual {p2, v0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 52
    .line 53
    .line 54
    new-array p1, v2, [B

    .line 55
    .line 56
    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/DG;->b([B)[B

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/DG;->a:[B

    .line 65
    .line 66
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/DG;->b([B)[B

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/DG;->b:[B

    .line 71
    .line 72
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/DG;->c:[B

    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 76
    .line 77
    const-string p2, "Can not use AES-EAX in FIPS-mode."

    .line 78
    .line 79
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1
.end method

.method public static a([B[B)V
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget-byte v2, p0, v1

    .line 6
    .line 7
    aget-byte v3, p1, v1

    .line 8
    .line 9
    xor-int/2addr v2, v3

    .line 10
    int-to-byte v2, v2

    .line 11
    aput-byte v2, p0, v1

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method

.method public static b([B)[B
    .locals 6

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    const/16 v3, 0xf

    .line 8
    .line 9
    if-ge v2, v3, :cond_0

    .line 10
    .line 11
    aget-byte v3, p0, v2

    .line 12
    .line 13
    add-int/2addr v3, v3

    .line 14
    add-int/lit8 v4, v2, 0x1

    .line 15
    .line 16
    aget-byte v5, p0, v4

    .line 17
    .line 18
    and-int/lit16 v5, v5, 0xff

    .line 19
    .line 20
    ushr-int/lit8 v5, v5, 0x7

    .line 21
    .line 22
    xor-int/2addr v3, v5

    .line 23
    and-int/lit16 v3, v3, 0xff

    .line 24
    .line 25
    int-to-byte v3, v3

    .line 26
    aput-byte v3, v0, v2

    .line 27
    .line 28
    move v2, v4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    aget-byte v2, p0, v3

    .line 31
    .line 32
    add-int/2addr v2, v2

    .line 33
    aget-byte p0, p0, v1

    .line 34
    .line 35
    shr-int/lit8 p0, p0, 0x7

    .line 36
    .line 37
    and-int/lit16 p0, p0, 0x87

    .line 38
    .line 39
    xor-int/2addr p0, v2

    .line 40
    int-to-byte p0, p0

    .line 41
    aput-byte p0, v0, v3

    .line 42
    .line 43
    return-object v0
.end method


# virtual methods
.method public final c(Ljavax/crypto/Cipher;I[BII)[B
    .locals 9

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/16 v2, 0xf

    .line 6
    .line 7
    int-to-byte p2, p2

    .line 8
    aput-byte p2, v1, v2

    .line 9
    .line 10
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/DG;->a:[B

    .line 11
    .line 12
    if-nez p5, :cond_0

    .line 13
    .line 14
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/DG;->a([B[B)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    new-array v2, v0, [B

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {p1, v1, v3, v0, v2}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    .line 26
    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    :goto_0
    move-object v8, v2

    .line 30
    move-object v2, v1

    .line 31
    move-object v1, v8

    .line 32
    sub-int v5, p5, v4

    .line 33
    .line 34
    if-le v5, v0, :cond_2

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    :goto_1
    if-ge v5, v0, :cond_1

    .line 38
    .line 39
    add-int v6, p4, v4

    .line 40
    .line 41
    aget-byte v7, v1, v5

    .line 42
    .line 43
    add-int/2addr v6, v5

    .line 44
    aget-byte v6, p3, v6

    .line 45
    .line 46
    xor-int/2addr v6, v7

    .line 47
    int-to-byte v6, v6

    .line 48
    aput-byte v6, v1, v5

    .line 49
    .line 50
    add-int/lit8 v5, v5, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p1, v1, v3, v0, v2}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    .line 54
    .line 55
    .line 56
    add-int/lit8 v4, v4, 0x10

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    add-int/2addr v4, p4

    .line 60
    add-int/2addr p4, p5

    .line 61
    invoke-static {p3, v4, p4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    array-length p4, p3

    .line 66
    if-ne p4, v0, :cond_3

    .line 67
    .line 68
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/DG;->a([B[B)V

    .line 69
    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/DG;->b:[B

    .line 73
    .line 74
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    const/4 p4, 0x0

    .line 79
    :goto_2
    array-length p5, p3

    .line 80
    if-ge p4, p5, :cond_4

    .line 81
    .line 82
    aget-byte p5, p2, p4

    .line 83
    .line 84
    aget-byte v4, p3, p4

    .line 85
    .line 86
    xor-int/2addr p5, v4

    .line 87
    int-to-byte p5, p5

    .line 88
    aput-byte p5, p2, p4

    .line 89
    .line 90
    add-int/lit8 p4, p4, 0x1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    aget-byte p3, p2, p5

    .line 94
    .line 95
    xor-int/lit16 p3, p3, 0x80

    .line 96
    .line 97
    int-to-byte p3, p3

    .line 98
    aput-byte p3, p2, p5

    .line 99
    .line 100
    move-object p3, p2

    .line 101
    :goto_3
    invoke-static {v1, p3}, Lcom/google/android/gms/internal/ads/DG;->a([B[B)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v1, v3, v0, v2}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    .line 105
    .line 106
    .line 107
    return-object v2
.end method

.method public final zza([B[B)[B
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    array-length v8, v7

    .line 6
    iget-object v9, v6, Lcom/google/android/gms/internal/ads/DG;->c:[B

    .line 7
    .line 8
    array-length v0, v9

    .line 9
    sub-int v0, v8, v0

    .line 10
    .line 11
    iget v10, v6, Lcom/google/android/gms/internal/ads/DG;->e:I

    .line 12
    .line 13
    sub-int/2addr v0, v10

    .line 14
    add-int/lit8 v11, v0, -0x10

    .line 15
    .line 16
    if-ltz v11, :cond_4

    .line 17
    .line 18
    invoke-static {v9, v7}, Lcom/google/android/gms/internal/ads/NE;->c([B[B)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/DG;->f:LK3/X;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    move-object v12, v0

    .line 31
    check-cast v12, Ljavax/crypto/Cipher;

    .line 32
    .line 33
    iget-object v13, v6, Lcom/google/android/gms/internal/ads/DG;->d:Ljavax/crypto/spec/SecretKeySpec;

    .line 34
    .line 35
    const/4 v14, 0x1

    .line 36
    invoke-virtual {v12, v14, v13}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 37
    .line 38
    .line 39
    array-length v4, v9

    .line 40
    const/4 v2, 0x0

    .line 41
    iget v5, v6, Lcom/google/android/gms/internal/ads/DG;->e:I

    .line 42
    .line 43
    move-object/from16 v0, p0

    .line 44
    .line 45
    move-object v1, v12

    .line 46
    move-object/from16 v3, p1

    .line 47
    .line 48
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/DG;->c(Ljavax/crypto/Cipher;I[BII)[B

    .line 49
    .line 50
    .line 51
    move-result-object v15

    .line 52
    const/4 v5, 0x0

    .line 53
    if-nez p2, :cond_0

    .line 54
    .line 55
    new-array v0, v5, [B

    .line 56
    .line 57
    move-object v3, v0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move-object/from16 v3, p2

    .line 60
    .line 61
    :goto_0
    array-length v4, v3

    .line 62
    const/4 v2, 0x1

    .line 63
    const/16 v16, 0x0

    .line 64
    .line 65
    move-object/from16 v0, p0

    .line 66
    .line 67
    move-object v1, v12

    .line 68
    move/from16 v17, v4

    .line 69
    .line 70
    move/from16 v4, v16

    .line 71
    .line 72
    const/16 v16, 0x0

    .line 73
    .line 74
    move/from16 v5, v17

    .line 75
    .line 76
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/DG;->c(Ljavax/crypto/Cipher;I[BII)[B

    .line 77
    .line 78
    .line 79
    move-result-object v17

    .line 80
    array-length v0, v9

    .line 81
    add-int v4, v0, v10

    .line 82
    .line 83
    const/4 v2, 0x2

    .line 84
    move-object/from16 v0, p0

    .line 85
    .line 86
    move-object/from16 v3, p1

    .line 87
    .line 88
    move v5, v11

    .line 89
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/DG;->c(Ljavax/crypto/Cipher;I[BII)[B

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    add-int/lit8 v8, v8, -0x10

    .line 94
    .line 95
    const/4 v5, 0x0

    .line 96
    :goto_1
    const/16 v1, 0x10

    .line 97
    .line 98
    if-ge v5, v1, :cond_1

    .line 99
    .line 100
    add-int v1, v8, v5

    .line 101
    .line 102
    aget-byte v1, v7, v1

    .line 103
    .line 104
    aget-byte v2, v17, v5

    .line 105
    .line 106
    xor-int/2addr v1, v2

    .line 107
    aget-byte v2, v15, v5

    .line 108
    .line 109
    xor-int/2addr v1, v2

    .line 110
    aget-byte v2, v0, v5

    .line 111
    .line 112
    xor-int/2addr v1, v2

    .line 113
    or-int v1, v16, v1

    .line 114
    .line 115
    int-to-byte v1, v1

    .line 116
    add-int/lit8 v5, v5, 0x1

    .line 117
    .line 118
    move/from16 v16, v1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_1
    if-nez v16, :cond_2

    .line 122
    .line 123
    sget-object v0, Lcom/google/android/gms/internal/ads/DG;->g:LK3/X;

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Ljavax/crypto/Cipher;

    .line 130
    .line 131
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 132
    .line 133
    invoke-direct {v1, v15}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v14, v13, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 137
    .line 138
    .line 139
    array-length v1, v9

    .line 140
    add-int/2addr v1, v10

    .line 141
    invoke-virtual {v0, v7, v1, v11}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    return-object v0

    .line 146
    :cond_2
    new-instance v0, Ljavax/crypto/AEADBadTagException;

    .line 147
    .line 148
    const-string v1, "tag mismatch"

    .line 149
    .line 150
    invoke-direct {v0, v1}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v0

    .line 154
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 155
    .line 156
    const-string v1, "Decryption failed (OutputPrefix mismatch)."

    .line 157
    .line 158
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw v0

    .line 162
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 163
    .line 164
    const-string v1, "ciphertext too short"

    .line 165
    .line 166
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw v0
.end method
