.class public final Lcom/google/android/gms/internal/pal/I6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/pal/m3;


# instance fields
.field public final a:Lcom/google/android/gms/internal/pal/M6;

.field public final b:Lcom/google/android/gms/internal/pal/z3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/pal/M6;Lcom/google/android/gms/internal/pal/z3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/I6;->a:Lcom/google/android/gms/internal/pal/M6;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/pal/I6;->b:Lcom/google/android/gms/internal/pal/z3;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Lcom/google/android/gms/internal/pal/I6;->a:Lcom/google/android/gms/internal/pal/M6;

    .line 5
    .line 6
    check-cast v3, Lcom/google/android/gms/internal/pal/B6;

    .line 7
    .line 8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    array-length v10, p1

    .line 12
    const v4, 0x7fffffff

    .line 13
    .line 14
    .line 15
    iget v5, v3, Lcom/google/android/gms/internal/pal/B6;->b:I

    .line 16
    .line 17
    sub-int/2addr v4, v5

    .line 18
    if-gt v10, v4, :cond_1

    .line 19
    .line 20
    add-int v4, v5, v10

    .line 21
    .line 22
    new-array v11, v4, [B

    .line 23
    .line 24
    invoke-static {v5}, Lcom/google/android/gms/internal/pal/O6;->a(I)[B

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-static {v4, v2, v11, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    sget-object v6, Lcom/google/android/gms/internal/pal/B6;->d:LK3/X;

    .line 32
    .line 33
    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    check-cast v6, Ljavax/crypto/Cipher;

    .line 38
    .line 39
    iget v7, v3, Lcom/google/android/gms/internal/pal/B6;->c:I

    .line 40
    .line 41
    new-array v7, v7, [B

    .line 42
    .line 43
    invoke-static {v4, v2, v7, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    .line 45
    .line 46
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    .line 47
    .line 48
    invoke-direct {v4, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 49
    .line 50
    .line 51
    iget-object v5, v3, Lcom/google/android/gms/internal/pal/B6;->a:Ljavax/crypto/spec/SecretKeySpec;

    .line 52
    .line 53
    invoke-virtual {v6, v1, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 54
    .line 55
    .line 56
    const/4 v7, 0x0

    .line 57
    iget v9, v3, Lcom/google/android/gms/internal/pal/B6;->b:I

    .line 58
    .line 59
    move-object v4, v6

    .line 60
    move-object v5, p1

    .line 61
    move v6, v7

    .line 62
    move v7, v10

    .line 63
    move-object v8, v11

    .line 64
    invoke-virtual/range {v4 .. v9}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-ne p1, v10, :cond_0

    .line 69
    .line 70
    const/16 p1, 0x8

    .line 71
    .line 72
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    const-wide/16 v4, 0x0

    .line 77
    .line 78
    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v3, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const/4 v3, 0x3

    .line 91
    new-array v3, v3, [[B

    .line 92
    .line 93
    aput-object p2, v3, v2

    .line 94
    .line 95
    aput-object v11, v3, v1

    .line 96
    .line 97
    aput-object p1, v3, v0

    .line 98
    .line 99
    invoke-static {v3}, Lcom/google/android/gms/internal/pal/y4;->Y([[B)[B

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iget-object p2, p0, Lcom/google/android/gms/internal/pal/I6;->b:Lcom/google/android/gms/internal/pal/z3;

    .line 104
    .line 105
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/pal/z3;->a([B)[B

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    new-array p2, v0, [[B

    .line 110
    .line 111
    aput-object v11, p2, v2

    .line 112
    .line 113
    aput-object p1, p2, v1

    .line 114
    .line 115
    invoke-static {p2}, Lcom/google/android/gms/internal/pal/y4;->Y([[B)[B

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    return-object p1

    .line 120
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 121
    .line 122
    const-string p2, "stored output\'s length does not match input\'s length"

    .line 123
    .line 124
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1

    .line 128
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 129
    .line 130
    const-string p2, "plaintext length can not exceed "

    .line 131
    .line 132
    invoke-static {p2, v4}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p1
.end method
