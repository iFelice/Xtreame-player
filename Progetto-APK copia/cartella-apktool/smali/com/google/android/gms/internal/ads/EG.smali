.class public final Lcom/google/android/gms/internal/ads/EG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/vC;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/JG;

.field public final b:Lcom/google/android/gms/internal/ads/FC;

.field public final c:I

.field public final d:[B


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/CG;Lcom/google/android/gms/internal/ads/MG;I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/EG;->a:Lcom/google/android/gms/internal/ads/JG;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/EG;->b:Lcom/google/android/gms/internal/ads/FC;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/ads/EG;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/EG;->d:[B

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/EG;->d:[B

    .line 5
    .line 6
    array-length v4, v3

    .line 7
    array-length v5, p1

    .line 8
    iget v6, p0, Lcom/google/android/gms/internal/ads/EG;->c:I

    .line 9
    .line 10
    add-int/2addr v4, v6

    .line 11
    if-lt v5, v4, :cond_6

    .line 12
    .line 13
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/ads/NE;->c([B[B)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_5

    .line 18
    .line 19
    sub-int v4, v5, v6

    .line 20
    .line 21
    array-length v3, v3

    .line 22
    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    invoke-static {p1, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-nez p2, :cond_0

    .line 31
    .line 32
    new-array p2, v2, [B

    .line 33
    .line 34
    :cond_0
    const/16 v3, 0x8

    .line 35
    .line 36
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    array-length v5, p2

    .line 41
    int-to-long v5, v5

    .line 42
    const-wide/16 v8, 0x8

    .line 43
    .line 44
    mul-long v5, v5, v8

    .line 45
    .line 46
    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    const/4 v4, 0x3

    .line 59
    new-array v4, v4, [[B

    .line 60
    .line 61
    aput-object p2, v4, v2

    .line 62
    .line 63
    aput-object v7, v4, v0

    .line 64
    .line 65
    aput-object v3, v4, v1

    .line 66
    .line 67
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Cw;->R0([[B)[B

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/EG;->b:Lcom/google/android/gms/internal/ads/FC;

    .line 72
    .line 73
    check-cast v3, Lcom/google/android/gms/internal/ads/MG;

    .line 74
    .line 75
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/MG;->d:[B

    .line 76
    .line 77
    array-length v5, v4

    .line 78
    iget v6, v3, Lcom/google/android/gms/internal/ads/MG;->b:I

    .line 79
    .line 80
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/MG;->a:Lcom/google/android/gms/internal/ads/jF;

    .line 81
    .line 82
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/MG;->c:[B

    .line 83
    .line 84
    if-lez v5, :cond_1

    .line 85
    .line 86
    new-array v5, v1, [[B

    .line 87
    .line 88
    aput-object p2, v5, v2

    .line 89
    .line 90
    aput-object v4, v5, v0

    .line 91
    .line 92
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/Cw;->R0([[B)[B

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-interface {v8, v6, p2}, Lcom/google/android/gms/internal/ads/jF;->a(I[B)[B

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    new-array v4, v1, [[B

    .line 101
    .line 102
    aput-object v3, v4, v2

    .line 103
    .line 104
    aput-object p2, v4, v0

    .line 105
    .line 106
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Cw;->R0([[B)[B

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    goto :goto_0

    .line 111
    :cond_1
    invoke-interface {v8, v6, p2}, Lcom/google/android/gms/internal/ads/jF;->a(I[B)[B

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    new-array v4, v1, [[B

    .line 116
    .line 117
    aput-object v3, v4, v2

    .line 118
    .line 119
    aput-object p2, v4, v0

    .line 120
    .line 121
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Cw;->R0([[B)[B

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    :goto_0
    invoke-static {p2, p1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_4

    .line 130
    .line 131
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/EG;->a:Lcom/google/android/gms/internal/ads/JG;

    .line 132
    .line 133
    check-cast p1, Lcom/google/android/gms/internal/ads/CG;

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    array-length p2, v7

    .line 139
    iget v0, p1, Lcom/google/android/gms/internal/ads/CG;->b:I

    .line 140
    .line 141
    if-lt p2, v0, :cond_3

    .line 142
    .line 143
    new-array v3, v0, [B

    .line 144
    .line 145
    invoke-static {v7, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    .line 147
    .line 148
    iget v8, p1, Lcom/google/android/gms/internal/ads/CG;->b:I

    .line 149
    .line 150
    sub-int/2addr p2, v8

    .line 151
    new-array v4, p2, [B

    .line 152
    .line 153
    sget-object v5, Lcom/google/android/gms/internal/ads/CG;->d:LK3/X;

    .line 154
    .line 155
    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    move-object v6, v5

    .line 160
    check-cast v6, Ljavax/crypto/Cipher;

    .line 161
    .line 162
    iget v5, p1, Lcom/google/android/gms/internal/ads/CG;->c:I

    .line 163
    .line 164
    new-array v5, v5, [B

    .line 165
    .line 166
    invoke-static {v3, v2, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    .line 168
    .line 169
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    .line 170
    .line 171
    invoke-direct {v0, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/CG;->a:Ljavax/crypto/spec/SecretKeySpec;

    .line 175
    .line 176
    invoke-virtual {v6, v1, p1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 177
    .line 178
    .line 179
    const/4 v11, 0x0

    .line 180
    move v9, p2

    .line 181
    move-object v10, v4

    .line 182
    invoke-virtual/range {v6 .. v11}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-ne p1, p2, :cond_2

    .line 187
    .line 188
    return-object v4

    .line 189
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 190
    .line 191
    const-string p2, "stored output\'s length does not match input\'s length"

    .line 192
    .line 193
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw p1

    .line 197
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 198
    .line 199
    const-string p2, "ciphertext too short"

    .line 200
    .line 201
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw p1

    .line 205
    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 206
    .line 207
    const-string p2, "invalid MAC"

    .line 208
    .line 209
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p1

    .line 213
    :cond_5
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 214
    .line 215
    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    .line 216
    .line 217
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw p1

    .line 221
    :cond_6
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 222
    .line 223
    const-string p2, "Decryption failed (ciphertext too short)."

    .line 224
    .line 225
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw p1
.end method
