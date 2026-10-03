.class public final Lcom/google/android/gms/internal/pal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/pal/d4;
.implements Lcom/google/android/gms/internal/pal/L6;


# instance fields
.field public final synthetic G:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/pal/c;->G:I

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/pal/c;->G:I

    return-void
.end method

.method public static c(I[BI)Z
    .locals 6

    .line 1
    :goto_0
    if-ge p0, p2, :cond_0

    .line 2
    .line 3
    aget-byte v0, p1, p0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    add-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-lt p0, p2, :cond_1

    .line 11
    .line 12
    goto :goto_3

    .line 13
    :cond_1
    :goto_1
    if-lt p0, p2, :cond_2

    .line 14
    .line 15
    goto :goto_3

    .line 16
    :cond_2
    add-int/lit8 v0, p0, 0x1

    .line 17
    .line 18
    aget-byte v1, p1, p0

    .line 19
    .line 20
    if-gez v1, :cond_b

    .line 21
    .line 22
    const/16 v2, -0x20

    .line 23
    .line 24
    const/16 v3, -0x41

    .line 25
    .line 26
    if-ge v1, v2, :cond_3

    .line 27
    .line 28
    if-ge v0, p2, :cond_8

    .line 29
    .line 30
    const/16 v2, -0x3e

    .line 31
    .line 32
    if-lt v1, v2, :cond_a

    .line 33
    .line 34
    add-int/lit8 p0, p0, 0x2

    .line 35
    .line 36
    aget-byte v0, p1, v0

    .line 37
    .line 38
    if-le v0, v3, :cond_1

    .line 39
    .line 40
    goto :goto_4

    .line 41
    :cond_3
    const/16 v4, -0x10

    .line 42
    .line 43
    if-ge v1, v4, :cond_7

    .line 44
    .line 45
    add-int/lit8 v4, p2, -0x1

    .line 46
    .line 47
    if-lt v0, v4, :cond_4

    .line 48
    .line 49
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/pal/x0;->a([BII)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    goto :goto_2

    .line 54
    :cond_4
    add-int/lit8 v4, p0, 0x2

    .line 55
    .line 56
    aget-byte v0, p1, v0

    .line 57
    .line 58
    if-gt v0, v3, :cond_a

    .line 59
    .line 60
    const/16 v5, -0x60

    .line 61
    .line 62
    if-ne v1, v2, :cond_5

    .line 63
    .line 64
    if-lt v0, v5, :cond_a

    .line 65
    .line 66
    :cond_5
    const/16 v2, -0x13

    .line 67
    .line 68
    if-ne v1, v2, :cond_6

    .line 69
    .line 70
    if-ge v0, v5, :cond_a

    .line 71
    .line 72
    :cond_6
    add-int/lit8 p0, p0, 0x3

    .line 73
    .line 74
    aget-byte v0, p1, v4

    .line 75
    .line 76
    if-le v0, v3, :cond_1

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_7
    add-int/lit8 v2, p2, -0x2

    .line 80
    .line 81
    if-lt v0, v2, :cond_9

    .line 82
    .line 83
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/pal/x0;->a([BII)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    :cond_8
    :goto_2
    if-nez v1, :cond_a

    .line 88
    .line 89
    :goto_3
    const/4 p0, 0x1

    .line 90
    goto :goto_5

    .line 91
    :cond_9
    add-int/lit8 v2, p0, 0x2

    .line 92
    .line 93
    aget-byte v0, p1, v0

    .line 94
    .line 95
    if-gt v0, v3, :cond_a

    .line 96
    .line 97
    shl-int/lit8 v1, v1, 0x1c

    .line 98
    .line 99
    add-int/lit8 v0, v0, 0x70

    .line 100
    .line 101
    add-int/2addr v0, v1

    .line 102
    shr-int/lit8 v0, v0, 0x1e

    .line 103
    .line 104
    if-nez v0, :cond_a

    .line 105
    .line 106
    add-int/lit8 v0, p0, 0x3

    .line 107
    .line 108
    aget-byte v1, p1, v2

    .line 109
    .line 110
    if-gt v1, v3, :cond_a

    .line 111
    .line 112
    add-int/lit8 p0, p0, 0x4

    .line 113
    .line 114
    aget-byte v0, p1, v0

    .line 115
    .line 116
    if-le v0, v3, :cond_1

    .line 117
    .line 118
    :cond_a
    :goto_4
    const/4 p0, 0x0

    .line 119
    :goto_5
    return p0

    .line 120
    :cond_b
    move p0, v0

    .line 121
    goto :goto_1
.end method


# virtual methods
.method public final a([B[B[B[B)[B
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    const/16 v1, 0x20

    .line 3
    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    new-instance v0, Lcom/google/android/gms/internal/pal/S3;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/pal/S3;-><init>([BI)V

    .line 10
    .line 11
    .line 12
    array-length p1, p3

    .line 13
    const v1, 0x7fffffef

    .line 14
    .line 15
    .line 16
    if-gt p1, v1, :cond_0

    .line 17
    .line 18
    add-int/lit8 p1, p1, 0x10

    .line 19
    .line 20
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1, p2, p3, p4}, Lf/H;->m(Ljava/nio/ByteBuffer;[B[B[B)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 33
    .line 34
    const-string p2, "plaintext too long"

    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 41
    .line 42
    const-string p2, "Unexpected key length: 32"

    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public final bridge synthetic b(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/pal/c;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    return-object p1

    .line 18
    :pswitch_0
    if-nez p2, :cond_1

    .line 19
    .line 20
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-static {p1, p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_1
    return-object p1

    .line 30
    :pswitch_1
    if-nez p2, :cond_2

    .line 31
    .line 32
    invoke-static {p1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    invoke-static {p1, p2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_2
    return-object p1

    .line 42
    :pswitch_2
    if-nez p2, :cond_3

    .line 43
    .line 44
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    invoke-static {p1, p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :goto_3
    return-object p1

    .line 54
    :pswitch_3
    if-nez p2, :cond_4

    .line 55
    .line 56
    invoke-static {p1}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_4

    .line 61
    :cond_4
    invoke-static {p1, p2}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :goto_4
    return-object p1

    .line 66
    :pswitch_4
    if-nez p2, :cond_5

    .line 67
    .line 68
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    goto :goto_5

    .line 73
    :cond_5
    invoke-static {p1, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :goto_5
    return-object p1

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza()I
    .locals 1

    .line 1
    const/16 v0, 0x20

    return v0
.end method

.method public final zzb()[B
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/i4;->k:[B

    .line 2
    .line 3
    return-object v0
.end method
