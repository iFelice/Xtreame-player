.class public final Lcom/google/android/gms/internal/pal/R3;
.super Lcom/google/android/gms/internal/ads/PD;
.source "SourceFile"


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>([BII)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/google/android/gms/internal/pal/R3;->d:I

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/PD;-><init>([BII)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/pal/R3;->d:I

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
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/PD;->b:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    iget v3, p0, Lcom/google/android/gms/internal/pal/R3;->d:I

    .line 7
    .line 8
    const/4 v4, 0x3

    .line 9
    const/16 v5, 0xd

    .line 10
    .line 11
    const/16 v6, 0xc

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    const/16 v8, 0x10

    .line 15
    .line 16
    packed-switch v3, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    array-length v3, p1

    .line 20
    const/4 v9, 0x6

    .line 21
    if-ne v3, v9, :cond_0

    .line 22
    .line 23
    new-array v3, v8, [I

    .line 24
    .line 25
    check-cast v0, [I

    .line 26
    .line 27
    new-array v8, v8, [I

    .line 28
    .line 29
    sget-object v10, Lcom/google/android/gms/internal/pal/P3;->a:[I

    .line 30
    .line 31
    array-length v11, v10

    .line 32
    invoke-static {v10, v7, v8, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    array-length v11, v10

    .line 36
    invoke-static {v0, v7, v8, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    aget v0, p1, v7

    .line 40
    .line 41
    aput v0, v8, v6

    .line 42
    .line 43
    aget v0, p1, v1

    .line 44
    .line 45
    aput v0, v8, v5

    .line 46
    .line 47
    const/4 v0, 0x2

    .line 48
    aget v0, p1, v0

    .line 49
    .line 50
    const/16 v1, 0xe

    .line 51
    .line 52
    aput v0, v8, v1

    .line 53
    .line 54
    aget v0, p1, v4

    .line 55
    .line 56
    const/16 v4, 0xf

    .line 57
    .line 58
    aput v0, v8, v4

    .line 59
    .line 60
    invoke-static {v8}, Lcom/google/android/gms/internal/pal/P3;->b([I)V

    .line 61
    .line 62
    .line 63
    aget v0, v8, v6

    .line 64
    .line 65
    const/4 v11, 0x4

    .line 66
    aput v0, v8, v11

    .line 67
    .line 68
    aget v0, v8, v5

    .line 69
    .line 70
    const/4 v12, 0x5

    .line 71
    aput v0, v8, v12

    .line 72
    .line 73
    aget v0, v8, v1

    .line 74
    .line 75
    aput v0, v8, v9

    .line 76
    .line 77
    const/4 v0, 0x7

    .line 78
    aget v9, v8, v4

    .line 79
    .line 80
    aput v9, v8, v0

    .line 81
    .line 82
    invoke-static {v8, v2}, Ljava/util/Arrays;->copyOf([II)[I

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    array-length v8, v10

    .line 87
    invoke-static {v10, v7, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    .line 89
    .line 90
    array-length v8, v10

    .line 91
    invoke-static {v0, v7, v3, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    .line 93
    .line 94
    aput p2, v3, v6

    .line 95
    .line 96
    aput v7, v3, v5

    .line 97
    .line 98
    aget p2, p1, v11

    .line 99
    .line 100
    aput p2, v3, v1

    .line 101
    .line 102
    aget p1, p1, v12

    .line 103
    .line 104
    aput p1, v3, v4

    .line 105
    .line 106
    return-object v3

    .line 107
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    mul-int/lit8 v3, v3, 0x20

    .line 110
    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    new-array v0, v1, [Ljava/lang/Object;

    .line 116
    .line 117
    aput-object p2, v0, v7

    .line 118
    .line 119
    const-string p2, "XChaCha20 uses 192-bit nonces, but got a %d-bit nonce"

    .line 120
    .line 121
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p1

    .line 129
    :pswitch_0
    array-length v3, p1

    .line 130
    if-ne v3, v4, :cond_1

    .line 131
    .line 132
    new-array v1, v8, [I

    .line 133
    .line 134
    check-cast v0, [I

    .line 135
    .line 136
    sget-object v3, Lcom/google/android/gms/internal/pal/P3;->a:[I

    .line 137
    .line 138
    array-length v8, v3

    .line 139
    invoke-static {v3, v7, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    .line 141
    .line 142
    array-length v3, v3

    .line 143
    invoke-static {v0, v7, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    .line 145
    .line 146
    aput p2, v1, v6

    .line 147
    .line 148
    invoke-static {p1, v7, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    .line 150
    .line 151
    return-object v1

    .line 152
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 153
    .line 154
    mul-int/lit8 v3, v3, 0x20

    .line 155
    .line 156
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    new-array v0, v1, [Ljava/lang/Object;

    .line 161
    .line 162
    aput-object p2, v0, v7

    .line 163
    .line 164
    const-string p2, "ChaCha20 uses 96-bit nonces, but got a %d-bit nonce"

    .line 165
    .line 166
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p1

    .line 174
    nop

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
