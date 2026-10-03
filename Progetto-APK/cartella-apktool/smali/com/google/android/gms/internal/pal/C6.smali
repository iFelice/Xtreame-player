.class public final Lcom/google/android/gms/internal/pal/C6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/pal/m3;


# static fields
.field public static final e:LK3/X;

.field public static final f:LK3/X;


# instance fields
.field public final a:[B

.field public final b:[B

.field public final c:Ljavax/crypto/spec/SecretKeySpec;

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LK3/X;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    invoke-direct {v0, v1}, LK3/X;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/pal/C6;->e:LK3/X;

    .line 9
    .line 10
    new-instance v0, LK3/X;

    .line 11
    .line 12
    const/16 v1, 0x10

    .line 13
    .line 14
    invoke-direct {v0, v1}, LK3/X;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/google/android/gms/internal/pal/C6;->f:LK3/X;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/y4;->y(I)Z

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
    if-eq p2, v1, :cond_1

    .line 16
    .line 17
    if-ne p2, v2, :cond_0

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
    iput p2, p0, Lcom/google/android/gms/internal/pal/C6;->d:I

    .line 29
    .line 30
    array-length p2, p1

    .line 31
    invoke-static {p2}, Lcom/google/android/gms/internal/pal/P6;->a(I)V

    .line 32
    .line 33
    .line 34
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    .line 35
    .line 36
    const-string v1, "AES"

    .line 37
    .line 38
    invoke-direct {p2, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Lcom/google/android/gms/internal/pal/C6;->c:Ljavax/crypto/spec/SecretKeySpec;

    .line 42
    .line 43
    sget-object p1, Lcom/google/android/gms/internal/pal/C6;->e:LK3/X;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ljavax/crypto/Cipher;

    .line 50
    .line 51
    invoke-virtual {p1, v0, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 52
    .line 53
    .line 54
    new-array p2, v2, [B

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/C6;->a([B)[B

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/C6;->a:[B

    .line 65
    .line 66
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/C6;->a([B)[B

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/C6;->b:[B

    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 74
    .line 75
    const-string p2, "Can not use AES-EAX in FIPS-mode."

    .line 76
    .line 77
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p1
.end method

.method public static a([B)[B
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
    add-int/lit8 v4, v2, 0x1

    .line 14
    .line 15
    add-int/2addr v3, v3

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

.method public static c([B[B)[B
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    .line 7
    aget-byte v3, p0, v2

    .line 8
    .line 9
    aget-byte v4, p1, v2

    .line 10
    .line 11
    xor-int/2addr v3, v4

    .line 12
    int-to-byte v3, v3

    .line 13
    aput-byte v3, v1, v2

    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final b(Ljavax/crypto/Cipher;I[BII)[B
    .locals 7

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
    iget-object p2, p0, Lcom/google/android/gms/internal/pal/C6;->a:[B

    .line 11
    .line 12
    if-nez p5, :cond_0

    .line 13
    .line 14
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/pal/C6;->c([B[B)[B

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_0
    invoke-virtual {p1, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    :goto_0
    sub-int v4, p5, v3

    .line 30
    .line 31
    if-le v4, v0, :cond_2

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    :goto_1
    if-ge v4, v0, :cond_1

    .line 35
    .line 36
    aget-byte v5, v1, v4

    .line 37
    .line 38
    add-int v6, p4, v3

    .line 39
    .line 40
    add-int/2addr v6, v4

    .line 41
    aget-byte v6, p3, v6

    .line 42
    .line 43
    xor-int/2addr v5, v6

    .line 44
    int-to-byte v5, v5

    .line 45
    aput-byte v5, v1, v4

    .line 46
    .line 47
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {p1, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    add-int/lit8 v3, v3, 0x10

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    add-int/2addr v3, p4

    .line 58
    add-int/2addr p4, p5

    .line 59
    invoke-static {p3, v3, p4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    array-length p4, p3

    .line 64
    if-ne p4, v0, :cond_3

    .line 65
    .line 66
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/pal/C6;->c([B[B)[B

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/pal/C6;->b:[B

    .line 72
    .line 73
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    :goto_2
    array-length p4, p3

    .line 78
    if-ge v2, p4, :cond_4

    .line 79
    .line 80
    aget-byte p4, p2, v2

    .line 81
    .line 82
    aget-byte p5, p3, v2

    .line 83
    .line 84
    xor-int/2addr p4, p5

    .line 85
    int-to-byte p4, p4

    .line 86
    aput-byte p4, p2, v2

    .line 87
    .line 88
    add-int/lit8 v2, v2, 0x1

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    aget-byte p3, p2, p4

    .line 92
    .line 93
    xor-int/lit16 p3, p3, 0x80

    .line 94
    .line 95
    int-to-byte p3, p3

    .line 96
    aput-byte p3, p2, p4

    .line 97
    .line 98
    :goto_3
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/pal/C6;->c([B[B)[B

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    return-object p1
.end method

.method public final zza([B[B)[B
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    array-length v8, v7

    .line 6
    const v0, 0x7fffffef

    .line 7
    .line 8
    .line 9
    iget v1, v6, Lcom/google/android/gms/internal/pal/C6;->d:I

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    if-gt v8, v0, :cond_1

    .line 13
    .line 14
    add-int v9, v1, v8

    .line 15
    .line 16
    add-int/lit8 v0, v9, 0x10

    .line 17
    .line 18
    new-array v10, v0, [B

    .line 19
    .line 20
    invoke-static {v1}, Lcom/google/android/gms/internal/pal/O6;->a(I)[B

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v11, 0x0

    .line 25
    invoke-static {v3, v11, v10, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/google/android/gms/internal/pal/C6;->e:LK3/X;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    move-object v12, v0

    .line 35
    check-cast v12, Ljavax/crypto/Cipher;

    .line 36
    .line 37
    iget-object v13, v6, Lcom/google/android/gms/internal/pal/C6;->c:Ljavax/crypto/spec/SecretKeySpec;

    .line 38
    .line 39
    const/4 v14, 0x1

    .line 40
    invoke-virtual {v12, v14, v13}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 41
    .line 42
    .line 43
    array-length v5, v3

    .line 44
    const/4 v2, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    move-object/from16 v0, p0

    .line 47
    .line 48
    move-object v1, v12

    .line 49
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/C6;->b(Ljavax/crypto/Cipher;I[BII)[B

    .line 50
    .line 51
    .line 52
    move-result-object v15

    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v2, 0x1

    .line 55
    move-object/from16 v3, p2

    .line 56
    .line 57
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/C6;->b(Ljavax/crypto/Cipher;I[BII)[B

    .line 58
    .line 59
    .line 60
    move-result-object v16

    .line 61
    sget-object v0, Lcom/google/android/gms/internal/pal/C6;->f:LK3/X;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Ljavax/crypto/Cipher;

    .line 68
    .line 69
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 70
    .line 71
    invoke-direct {v1, v15}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v14, v13, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 75
    .line 76
    .line 77
    const/4 v2, 0x0

    .line 78
    iget v5, v6, Lcom/google/android/gms/internal/pal/C6;->d:I

    .line 79
    .line 80
    move-object/from16 v1, p1

    .line 81
    .line 82
    move v3, v8

    .line 83
    move-object v4, v10

    .line 84
    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    .line 85
    .line 86
    .line 87
    const/4 v2, 0x2

    .line 88
    iget v4, v6, Lcom/google/android/gms/internal/pal/C6;->d:I

    .line 89
    .line 90
    move-object/from16 v0, p0

    .line 91
    .line 92
    move-object v1, v12

    .line 93
    move-object v3, v10

    .line 94
    move v5, v8

    .line 95
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/pal/C6;->b(Ljavax/crypto/Cipher;I[BII)[B

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :goto_0
    const/16 v1, 0x10

    .line 100
    .line 101
    if-ge v11, v1, :cond_0

    .line 102
    .line 103
    add-int v1, v9, v11

    .line 104
    .line 105
    aget-byte v2, v16, v11

    .line 106
    .line 107
    aget-byte v3, v15, v11

    .line 108
    .line 109
    xor-int/2addr v2, v3

    .line 110
    aget-byte v3, v0, v11

    .line 111
    .line 112
    xor-int/2addr v2, v3

    .line 113
    int-to-byte v2, v2

    .line 114
    aput-byte v2, v10, v1

    .line 115
    .line 116
    add-int/lit8 v11, v11, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_0
    return-object v10

    .line 120
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 121
    .line 122
    const-string v1, "plaintext too long"

    .line 123
    .line 124
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v0
.end method
