.class public final Lcom/google/android/gms/internal/pal/E6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/pal/n3;


# static fields
.field public static final c:Ljava/util/List;

.field public static final d:[B


# instance fields
.field public final a:Lcom/google/android/gms/internal/pal/i2;

.field public final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Ljava/lang/Integer;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v0, v1, v2

    .line 12
    .line 13
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/google/android/gms/internal/pal/E6;->c:Ljava/util/List;

    .line 18
    .line 19
    const/16 v0, 0x10

    .line 20
    .line 21
    new-array v0, v0, [B

    .line 22
    .line 23
    sput-object v0, Lcom/google/android/gms/internal/pal/E6;->d:[B

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>([B)V
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
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    array-length v0, p1

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Lcom/google/android/gms/internal/pal/E6;->c:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    shr-int/lit8 v1, v0, 0x1

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/E6;->b:[B

    .line 36
    .line 37
    new-instance p1, Lcom/google/android/gms/internal/pal/i2;

    .line 38
    .line 39
    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/pal/i2;-><init>([B)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/E6;->a:Lcom/google/android/gms/internal/pal/i2;

    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 46
    .line 47
    const-string v1, "invalid key size: "

    .line 48
    .line 49
    const-string v2, " bytes; key must have 64 bytes"

    .line 50
    .line 51
    invoke-static {v1, v0, v2}, LA0/O;->y(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 60
    .line 61
    const-string v0, "Can not use AES-SIV in FIPS-mode."

    .line 62
    .line 63
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    array-length v3, p1

    .line 5
    const v4, 0x7fffffef

    .line 6
    .line 7
    .line 8
    if-gt v3, v4, :cond_6

    .line 9
    .line 10
    sget-object v3, Lcom/google/android/gms/internal/pal/J6;->e:Lcom/google/android/gms/internal/pal/J6;

    .line 11
    .line 12
    const-string v4, "AES/CTR/NoPadding"

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/pal/J6;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Ljavax/crypto/Cipher;

    .line 19
    .line 20
    new-array v4, v0, [[B

    .line 21
    .line 22
    aput-object p2, v4, v1

    .line 23
    .line 24
    aput-object p1, v4, v2

    .line 25
    .line 26
    iget-object p2, p0, Lcom/google/android/gms/internal/pal/E6;->a:Lcom/google/android/gms/internal/pal/i2;

    .line 27
    .line 28
    const/16 v5, 0x10

    .line 29
    .line 30
    sget-object v6, Lcom/google/android/gms/internal/pal/E6;->d:[B

    .line 31
    .line 32
    invoke-virtual {p2, v5, v6}, Lcom/google/android/gms/internal/pal/i2;->a(I[B)[B

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    const/4 v7, 0x0

    .line 37
    :goto_0
    if-gtz v7, :cond_1

    .line 38
    .line 39
    aget-object v8, v4, v7

    .line 40
    .line 41
    if-nez v8, :cond_0

    .line 42
    .line 43
    new-array v8, v1, [B

    .line 44
    .line 45
    :cond_0
    invoke-static {v6}, Lcom/google/android/gms/internal/pal/y4;->P([B)[B

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {p2, v5, v8}, Lcom/google/android/gms/internal/pal/i2;->a(I[B)[B

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    invoke-static {v6, v8}, Lcom/google/android/gms/internal/pal/y4;->h0([B[B)[B

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    add-int/2addr v7, v2

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    aget-object v4, v4, v2

    .line 60
    .line 61
    array-length v7, v4

    .line 62
    if-lt v7, v5, :cond_3

    .line 63
    .line 64
    array-length v8, v6

    .line 65
    if-lt v7, v8, :cond_2

    .line 66
    .line 67
    sub-int v8, v7, v8

    .line 68
    .line 69
    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    const/4 v7, 0x0

    .line 74
    :goto_1
    array-length v9, v6

    .line 75
    if-ge v7, v9, :cond_4

    .line 76
    .line 77
    add-int v9, v8, v7

    .line 78
    .line 79
    aget-byte v10, v4, v9

    .line 80
    .line 81
    aget-byte v11, v6, v7

    .line 82
    .line 83
    xor-int/2addr v10, v11

    .line 84
    int-to-byte v10, v10

    .line 85
    aput-byte v10, v4, v9

    .line 86
    .line 87
    add-int/2addr v7, v2

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 90
    .line 91
    const-string p2, "xorEnd requires a.length >= b.length"

    .line 92
    .line 93
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1

    .line 97
    :cond_3
    array-length v7, v4

    .line 98
    if-ge v7, v5, :cond_5

    .line 99
    .line 100
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    const/16 v8, -0x80

    .line 105
    .line 106
    aput-byte v8, v4, v7

    .line 107
    .line 108
    invoke-static {v6}, Lcom/google/android/gms/internal/pal/y4;->P([B)[B

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-static {v4, v6}, Lcom/google/android/gms/internal/pal/y4;->h0([B[B)[B

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    :cond_4
    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/pal/i2;->a(I[B)[B

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    check-cast v4, [B

    .line 125
    .line 126
    const/16 v5, 0x8

    .line 127
    .line 128
    aget-byte v6, v4, v5

    .line 129
    .line 130
    and-int/lit8 v6, v6, 0x7f

    .line 131
    .line 132
    int-to-byte v6, v6

    .line 133
    aput-byte v6, v4, v5

    .line 134
    .line 135
    const/16 v5, 0xc

    .line 136
    .line 137
    aget-byte v6, v4, v5

    .line 138
    .line 139
    and-int/lit8 v6, v6, 0x7f

    .line 140
    .line 141
    int-to-byte v6, v6

    .line 142
    aput-byte v6, v4, v5

    .line 143
    .line 144
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    .line 145
    .line 146
    iget-object v6, p0, Lcom/google/android/gms/internal/pal/E6;->b:[B

    .line 147
    .line 148
    const-string v7, "AES"

    .line 149
    .line 150
    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    .line 154
    .line 155
    invoke-direct {v6, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3, v2, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    new-array v0, v0, [[B

    .line 166
    .line 167
    aput-object p2, v0, v1

    .line 168
    .line 169
    aput-object p1, v0, v2

    .line 170
    .line 171
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/y4;->Y([[B)[B

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    return-object p1

    .line 176
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 177
    .line 178
    const-string p2, "x must be smaller than a block."

    .line 179
    .line 180
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1

    .line 184
    :cond_6
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 185
    .line 186
    const-string p2, "plaintext too long"

    .line 187
    .line 188
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p1
.end method
