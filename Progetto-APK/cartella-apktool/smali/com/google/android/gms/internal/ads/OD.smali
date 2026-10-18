.class public final Lcom/google/android/gms/internal/ads/OD;
.super Lcom/google/android/gms/internal/ads/PD;
.source "SourceFile"


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>([BII)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/google/android/gms/internal/ads/OD;->d:I

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/PD;-><init>([BII)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/OD;->d:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x18

    return v0

    :pswitch_0
    const/16 v0, 0xc

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b([II)[I
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/PD;->b:Ljava/lang/Object;

    .line 3
    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    iget v3, p0, Lcom/google/android/gms/internal/ads/OD;->d:I

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/16 v5, 0xd

    .line 10
    .line 11
    const/16 v6, 0xc

    .line 12
    .line 13
    const/16 v7, 0x10

    .line 14
    .line 15
    packed-switch v3, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    array-length v3, p1

    .line 19
    const/4 v8, 0x6

    .line 20
    if-ne v3, v8, :cond_0

    .line 21
    .line 22
    new-array v0, v7, [I

    .line 23
    .line 24
    check-cast v1, [I

    .line 25
    .line 26
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/ND;->c([I[I)[I

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget-object v3, Lcom/google/android/gms/internal/ads/ND;->a:[I

    .line 31
    .line 32
    array-length v7, v3

    .line 33
    invoke-static {v3, v4, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    array-length v3, v3

    .line 37
    invoke-static {v1, v4, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    .line 39
    .line 40
    aput p2, v0, v6

    .line 41
    .line 42
    aput v4, v0, v5

    .line 43
    .line 44
    const/4 p2, 0x4

    .line 45
    aget p2, p1, p2

    .line 46
    .line 47
    const/16 v1, 0xe

    .line 48
    .line 49
    aput p2, v0, v1

    .line 50
    .line 51
    const/4 p2, 0x5

    .line 52
    aget p1, p1, p2

    .line 53
    .line 54
    const/16 p2, 0xf

    .line 55
    .line 56
    aput p1, v0, p2

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_0
    mul-int/lit8 v3, v3, 0x20

    .line 60
    .line 61
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    new-array v0, v0, [Ljava/lang/Object;

    .line 68
    .line 69
    aput-object p2, v0, v4

    .line 70
    .line 71
    const-string p2, "XChaCha20 uses 192-bit nonces, but got a %d-bit nonce"

    .line 72
    .line 73
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :pswitch_0
    array-length v3, p1

    .line 82
    const/4 v8, 0x3

    .line 83
    if-ne v3, v8, :cond_1

    .line 84
    .line 85
    new-array v0, v7, [I

    .line 86
    .line 87
    check-cast v1, [I

    .line 88
    .line 89
    sget-object v3, Lcom/google/android/gms/internal/ads/ND;->a:[I

    .line 90
    .line 91
    array-length v7, v3

    .line 92
    invoke-static {v3, v4, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    .line 94
    .line 95
    array-length v3, v3

    .line 96
    invoke-static {v1, v4, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    .line 98
    .line 99
    aput p2, v0, v6

    .line 100
    .line 101
    invoke-static {p1, v4, v0, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    .line 103
    .line 104
    return-object v0

    .line 105
    :cond_1
    mul-int/lit8 v3, v3, 0x20

    .line 106
    .line 107
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    new-array v0, v0, [Ljava/lang/Object;

    .line 114
    .line 115
    aput-object p2, v0, v4

    .line 116
    .line 117
    const-string p2, "ChaCha20 uses 96-bit nonces, but got a %d-bit nonce"

    .line 118
    .line 119
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p1

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
