.class public final Lcom/google/android/gms/internal/ads/KG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/jF;


# static fields
.field public static final J:LK3/X;


# instance fields
.field public final G:Ljavax/crypto/spec/SecretKeySpec;

.field public final H:[B

.field public final I:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LK3/X;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, LK3/X;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/ads/KG;->J:LK3/X;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->V(I)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 9
    .line 10
    const-string v1, "AES"

    .line 11
    .line 12
    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/KG;->G:Ljavax/crypto/spec/SecretKeySpec;

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->f0(I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    sget-object v1, Lcom/google/android/gms/internal/ads/KG;->J:LK3/X;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljavax/crypto/Cipher;

    .line 31
    .line 32
    invoke-virtual {v1, p1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 33
    .line 34
    .line 35
    const/16 p1, 0x10

    .line 36
    .line 37
    new-array p1, p1, [B

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->j0([B)[B

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/KG;->H:[B

    .line 48
    .line 49
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->j0([B)[B

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/KG;->I:[B

    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 57
    .line 58
    const-string v0, "Can not use AES-CMAC in FIPS-mode."

    .line 59
    .line 60
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1
.end method


# virtual methods
.method public final a(I[B)[B
    .locals 13

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    if-gt p1, v0, :cond_b

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/KG;->G:Ljavax/crypto/spec/SecretKeySpec;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Cw;->f0(I)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_a

    .line 13
    .line 14
    sget-object v3, Lcom/google/android/gms/internal/ads/KG;->J:LK3/X;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Ljavax/crypto/Cipher;

    .line 21
    .line 22
    invoke-virtual {v3, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 23
    .line 24
    .line 25
    array-length v1, p2

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    add-int/lit8 v4, v1, -0x1

    .line 30
    .line 31
    shr-int/lit8 v4, v4, 0x4

    .line 32
    .line 33
    add-int/2addr v2, v4

    .line 34
    :goto_0
    add-int/lit8 v4, v2, -0x1

    .line 35
    .line 36
    mul-int/lit8 v5, v4, 0x10

    .line 37
    .line 38
    mul-int/lit8 v2, v2, 0x10

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    if-ne v2, v1, :cond_1

    .line 42
    .line 43
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/KG;->H:[B

    .line 44
    .line 45
    invoke-static {v5, p2, v1}, Lcom/google/android/gms/internal/ads/Cw;->i1(I[B[B)[B

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-static {p2, v5, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    array-length v2, v1

    .line 55
    if-ge v2, v0, :cond_9

    .line 56
    .line 57
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const/16 v5, -0x80

    .line 62
    .line 63
    aput-byte v5, v1, v2

    .line 64
    .line 65
    array-length v2, v1

    .line 66
    if-ne v2, v0, :cond_8

    .line 67
    .line 68
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/KG;->I:[B

    .line 69
    .line 70
    invoke-static {v6, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->i1(I[B[B)[B

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    :goto_1
    new-array v2, v0, [B

    .line 75
    .line 76
    new-array v5, v0, [B

    .line 77
    .line 78
    const/4 v7, 0x0

    .line 79
    :goto_2
    const-string v8, "Cipher didn\'t write full block"

    .line 80
    .line 81
    if-ge v7, v4, :cond_4

    .line 82
    .line 83
    mul-int/lit8 v9, v7, 0x10

    .line 84
    .line 85
    const/4 v10, 0x0

    .line 86
    :goto_3
    if-ge v10, v0, :cond_2

    .line 87
    .line 88
    aget-byte v11, v2, v10

    .line 89
    .line 90
    add-int v12, v10, v9

    .line 91
    .line 92
    aget-byte v12, p2, v12

    .line 93
    .line 94
    xor-int/2addr v11, v12

    .line 95
    int-to-byte v11, v11

    .line 96
    aput-byte v11, v5, v10

    .line 97
    .line 98
    add-int/lit8 v10, v10, 0x1

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_2
    invoke-virtual {v3, v5, v6, v0, v2}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    if-ne v9, v0, :cond_3

    .line 106
    .line 107
    add-int/lit8 v7, v7, 0x1

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 111
    .line 112
    invoke-direct {p1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p1

    .line 116
    :cond_4
    const/4 p2, 0x0

    .line 117
    :goto_4
    if-ge p2, v0, :cond_5

    .line 118
    .line 119
    aget-byte v4, v2, p2

    .line 120
    .line 121
    aget-byte v7, v1, p2

    .line 122
    .line 123
    xor-int/2addr v4, v7

    .line 124
    int-to-byte v4, v4

    .line 125
    aput-byte v4, v5, p2

    .line 126
    .line 127
    add-int/lit8 p2, p2, 0x1

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_5
    invoke-virtual {v3, v5, v6, v0, v2}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    if-ne p2, v0, :cond_7

    .line 135
    .line 136
    if-ne p1, v0, :cond_6

    .line 137
    .line 138
    return-object v2

    .line 139
    :cond_6
    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    return-object p1

    .line 144
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 145
    .line 146
    invoke-direct {p1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1

    .line 150
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 151
    .line 152
    const-string p2, "The lengths of x and y should match."

    .line 153
    .line 154
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p1

    .line 158
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 159
    .line 160
    const-string p2, "x must be smaller than a block."

    .line 161
    .line 162
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p1

    .line 166
    :cond_a
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 167
    .line 168
    const-string p2, "Can not use AES-CMAC in FIPS-mode."

    .line 169
    .line 170
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p1

    .line 174
    :cond_b
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 175
    .line 176
    const-string p2, "outputLength too large, max is 16 bytes"

    .line 177
    .line 178
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p1
.end method
