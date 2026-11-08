.class public abstract Lcom/google/android/gms/internal/pal/i4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:[B

.field public static final c:[B

.field public static final d:[B

.field public static final e:[B

.field public static final f:[B

.field public static final g:[B

.field public static final h:[B

.field public static final i:[B

.field public static final j:[B

.field public static final k:[B

.field public static final l:[B

.field public static final m:[B

.field public static final n:[B

.field public static final o:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/pal/i4;->b(II)[B

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    sput-object v2, Lcom/google/android/gms/internal/pal/i4;->a:[B

    .line 8
    .line 9
    const/16 v2, 0x20

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/pal/i4;->b(II)[B

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    sput-object v2, Lcom/google/android/gms/internal/pal/i4;->b:[B

    .line 17
    .line 18
    const/16 v2, 0x10

    .line 19
    .line 20
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/pal/i4;->b(II)[B

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    sput-object v2, Lcom/google/android/gms/internal/pal/i4;->c:[B

    .line 25
    .line 26
    const/16 v2, 0x11

    .line 27
    .line 28
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/pal/i4;->b(II)[B

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    sput-object v2, Lcom/google/android/gms/internal/pal/i4;->d:[B

    .line 33
    .line 34
    const/16 v2, 0x12

    .line 35
    .line 36
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/pal/i4;->b(II)[B

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    sput-object v2, Lcom/google/android/gms/internal/pal/i4;->e:[B

    .line 41
    .line 42
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/pal/i4;->b(II)[B

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    sput-object v2, Lcom/google/android/gms/internal/pal/i4;->f:[B

    .line 47
    .line 48
    invoke-static {v3, v3}, Lcom/google/android/gms/internal/pal/i4;->b(II)[B

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    sput-object v2, Lcom/google/android/gms/internal/pal/i4;->g:[B

    .line 53
    .line 54
    const/4 v2, 0x3

    .line 55
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/pal/i4;->b(II)[B

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    sput-object v4, Lcom/google/android/gms/internal/pal/i4;->h:[B

    .line 60
    .line 61
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/pal/i4;->b(II)[B

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/google/android/gms/internal/pal/i4;->i:[B

    .line 66
    .line 67
    invoke-static {v3, v3}, Lcom/google/android/gms/internal/pal/i4;->b(II)[B

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lcom/google/android/gms/internal/pal/i4;->j:[B

    .line 72
    .line 73
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/pal/i4;->b(II)[B

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lcom/google/android/gms/internal/pal/i4;->k:[B

    .line 78
    .line 79
    new-array v0, v1, [B

    .line 80
    .line 81
    sput-object v0, Lcom/google/android/gms/internal/pal/i4;->l:[B

    .line 82
    .line 83
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 84
    .line 85
    const-string v1, "KEM"

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    sput-object v1, Lcom/google/android/gms/internal/pal/i4;->m:[B

    .line 92
    .line 93
    const-string v1, "HPKE"

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    sput-object v1, Lcom/google/android/gms/internal/pal/i4;->n:[B

    .line 100
    .line 101
    const-string v1, "HPKE-v1"

    .line 102
    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    sput-object v0, Lcom/google/android/gms/internal/pal/i4;->o:[B

    .line 108
    .line 109
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/pal/Y5;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/Y5;->q()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_c

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/Y5;->q()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq v0, v2, :cond_c

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/Y5;->p()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const-string v3, "UNRECOGNIZED"

    .line 20
    .line 21
    const/4 v4, 0x5

    .line 22
    const/4 v5, 0x4

    .line 23
    const/4 v6, 0x3

    .line 24
    if-eq v0, v1, :cond_7

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/Y5;->p()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-ne v0, v2, :cond_0

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/Y5;->o()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eq v0, v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/Y5;->o()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-ne v0, v2, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-void

    .line 47
    :cond_2
    :goto_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/Y5;->o()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eq p0, v1, :cond_6

    .line 54
    .line 55
    if-eq p0, v6, :cond_5

    .line 56
    .line 57
    if-eq p0, v5, :cond_4

    .line 58
    .line 59
    if-eq p0, v4, :cond_3

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    const-string v3, "CHACHA20_POLY1305"

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    const-string v3, "AES_256_GCM"

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_5
    const-string v3, "AES_128_GCM"

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_6
    const-string v3, "AEAD_UNKNOWN"

    .line 72
    .line 73
    :goto_1
    const-string p0, "Invalid AEAD param: "

    .line 74
    .line 75
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0

    .line 83
    :cond_7
    :goto_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/Y5;->p()I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-eq p0, v1, :cond_b

    .line 90
    .line 91
    if-eq p0, v6, :cond_a

    .line 92
    .line 93
    if-eq p0, v5, :cond_9

    .line 94
    .line 95
    if-eq p0, v4, :cond_8

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_8
    const-string v3, "HKDF_SHA512"

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_9
    const-string v3, "HKDF_SHA384"

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_a
    const-string v3, "HKDF_SHA256"

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_b
    const-string v3, "KDF_UNKNOWN"

    .line 108
    .line 109
    :goto_3
    const-string p0, "Invalid KDF param: "

    .line 110
    .line 111
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v0

    .line 119
    :cond_c
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/Y5;->q()I

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    invoke-static {p0}, Lcom/google/android/gms/internal/pal/y4;->B(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    const-string v1, "Invalid KEM param: "

    .line 130
    .line 131
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v0
.end method

.method public static b(II)[B
    .locals 3

    .line 1
    new-array v0, p0, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, p0, :cond_0

    .line 5
    .line 6
    sub-int v2, p0, v1

    .line 7
    .line 8
    add-int/lit8 v2, v2, -0x1

    .line 9
    .line 10
    mul-int/lit8 v2, v2, 0x8

    .line 11
    .line 12
    shr-int v2, p1, v2

    .line 13
    .line 14
    and-int/lit16 v2, v2, 0xff

    .line 15
    .line 16
    int-to-byte v2, v2

    .line 17
    aput-byte v2, v0, v1

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object v0
.end method
