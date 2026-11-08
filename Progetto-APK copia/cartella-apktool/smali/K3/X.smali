.class public final LK3/X;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, LK3/X;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 3
    iput p1, p0, LK3/X;->a:I

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public final initialValue()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, LK3/X;->a:I

    .line 2
    .line 3
    const-string v1, "AES/GCM/NoPadding"

    .line 4
    .line 5
    const-string v2, "AES/GCM-SIV/NoPadding"

    .line 6
    .line 7
    const-string v3, "AES/CTR/NoPadding"

    .line 8
    .line 9
    const-string v4, "AES/ECB/NOPADDING"

    .line 10
    .line 11
    const-string v5, "AES/CTR/NOPADDING"

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/security/SecureRandom;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/pal/J6;->e:Lcom/google/android/gms/internal/pal/J6;

    .line 27
    .line 28
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/pal/J6;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    return-object v0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw v1

    .line 42
    :pswitch_1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/pal/J6;->e:Lcom/google/android/gms/internal/pal/J6;

    .line 43
    .line 44
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/pal/J6;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    .line 50
    return-object v0

    .line 51
    :catch_1
    move-exception v0

    .line 52
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    throw v1

    .line 58
    :pswitch_2
    :try_start_2
    sget-object v0, Lcom/google/android/gms/internal/pal/J6;->e:Lcom/google/android/gms/internal/pal/J6;

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/pal/J6;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljavax/crypto/Cipher;
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 65
    .line 66
    return-object v0

    .line 67
    :catch_2
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    throw v1

    .line 74
    :pswitch_3
    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/pal/J6;->e:Lcom/google/android/gms/internal/pal/J6;

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/pal/J6;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Ljavax/crypto/Cipher;
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_3

    .line 81
    .line 82
    return-object v0

    .line 83
    :catch_3
    move-exception v0

    .line 84
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    throw v1

    .line 90
    :pswitch_4
    :try_start_4
    sget-object v0, Lcom/google/android/gms/internal/pal/J6;->e:Lcom/google/android/gms/internal/pal/J6;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pal/J6;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Ljavax/crypto/Cipher;
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_4

    .line 97
    .line 98
    return-object v0

    .line 99
    :catch_4
    move-exception v0

    .line 100
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 101
    .line 102
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    throw v1

    .line 106
    :pswitch_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 107
    .line 108
    return-object v0

    .line 109
    :pswitch_6
    :try_start_5
    sget-object v0, Lcom/google/android/gms/internal/ads/HG;->b:Lcom/google/android/gms/internal/ads/HG;

    .line 110
    .line 111
    const-string v1, "AES/ECB/NoPadding"

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/HG;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Ljavax/crypto/Cipher;
    :try_end_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_5

    .line 118
    .line 119
    return-object v0

    .line 120
    :catch_5
    move-exception v0

    .line 121
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 122
    .line 123
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    throw v1

    .line 127
    :pswitch_7
    :try_start_6
    sget-object v0, Lcom/google/android/gms/internal/ads/HG;->b:Lcom/google/android/gms/internal/ads/HG;

    .line 128
    .line 129
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/HG;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Ljavax/crypto/Cipher;
    :try_end_6
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_6} :catch_6

    .line 134
    .line 135
    return-object v0

    .line 136
    :catch_6
    move-exception v0

    .line 137
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 138
    .line 139
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    throw v1

    .line 143
    :pswitch_8
    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/ads/HG;->b:Lcom/google/android/gms/internal/ads/HG;

    .line 144
    .line 145
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/HG;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Ljavax/crypto/Cipher;
    :try_end_7
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_7} :catch_7

    .line 150
    .line 151
    return-object v0

    .line 152
    :catch_7
    move-exception v0

    .line 153
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 154
    .line 155
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 156
    .line 157
    .line 158
    throw v1

    .line 159
    :pswitch_9
    :try_start_8
    sget-object v0, Lcom/google/android/gms/internal/ads/HG;->b:Lcom/google/android/gms/internal/ads/HG;

    .line 160
    .line 161
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/HG;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Ljavax/crypto/Cipher;
    :try_end_8
    .catch Ljava/security/GeneralSecurityException; {:try_start_8 .. :try_end_8} :catch_8

    .line 166
    .line 167
    return-object v0

    .line 168
    :catch_8
    move-exception v0

    .line 169
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 170
    .line 171
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 172
    .line 173
    .line 174
    throw v1

    .line 175
    :pswitch_a
    sget-object v0, Lcom/google/android/gms/internal/ads/HE;->a:LK3/X;

    .line 176
    .line 177
    sget-object v0, Lcom/google/android/gms/internal/ads/Cw;->f:[Ljava/lang/String;

    .line 178
    .line 179
    const/4 v1, 0x0

    .line 180
    const/4 v2, 0x0

    .line 181
    :goto_0
    const/4 v3, 0x3

    .line 182
    if-ge v2, v3, :cond_1

    .line 183
    .line 184
    aget-object v3, v0, v2

    .line 185
    .line 186
    invoke-static {v3}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    if-eqz v3, :cond_0

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_1
    move-object v3, v6

    .line 197
    :goto_1
    const-string v0, "SHA1PRNG"

    .line 198
    .line 199
    if-eqz v3, :cond_2

    .line 200
    .line 201
    :try_start_9
    invoke-static {v0, v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;

    .line 202
    .line 203
    .line 204
    move-result-object v0
    :try_end_9
    .catch Ljava/security/GeneralSecurityException; {:try_start_9 .. :try_end_9} :catch_9

    .line 205
    goto :goto_3

    .line 206
    :catch_9
    :cond_2
    :try_start_a
    const-string v2, "org.conscrypt.Conscrypt"

    .line 207
    .line 208
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    const-string v3, "newProvider"

    .line 213
    .line 214
    new-array v4, v1, [Ljava/lang/Class;

    .line 215
    .line 216
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    new-array v1, v1, [Ljava/lang/Object;

    .line 221
    .line 222
    invoke-virtual {v2, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    check-cast v1, Ljava/security/Provider;
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_a

    .line 227
    .line 228
    move-object v6, v1

    .line 229
    goto :goto_2

    .line 230
    :catch_a
    nop

    .line 231
    :goto_2
    if-eqz v6, :cond_3

    .line 232
    .line 233
    :try_start_b
    invoke-static {v0, v6}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;

    .line 234
    .line 235
    .line 236
    move-result-object v0
    :try_end_b
    .catch Ljava/security/GeneralSecurityException; {:try_start_b .. :try_end_b} :catch_b

    .line 237
    goto :goto_3

    .line 238
    :catch_b
    :cond_3
    new-instance v0, Ljava/security/SecureRandom;

    .line 239
    .line 240
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 241
    .line 242
    .line 243
    :goto_3
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    .line 244
    .line 245
    .line 246
    return-object v0

    .line 247
    :pswitch_b
    :try_start_c
    sget-object v0, Lcom/google/android/gms/internal/ads/HG;->b:Lcom/google/android/gms/internal/ads/HG;

    .line 248
    .line 249
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/HG;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    check-cast v0, Ljavax/crypto/Cipher;

    .line 254
    .line 255
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/TD;->a(Ljavax/crypto/Cipher;)Z

    .line 256
    .line 257
    .line 258
    move-result v1
    :try_end_c
    .catch Ljava/security/GeneralSecurityException; {:try_start_c .. :try_end_c} :catch_c

    .line 259
    if-nez v1, :cond_4

    .line 260
    .line 261
    goto :goto_4

    .line 262
    :cond_4
    move-object v6, v0

    .line 263
    :goto_4
    return-object v6

    .line 264
    :catch_c
    move-exception v0

    .line 265
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 266
    .line 267
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 268
    .line 269
    .line 270
    throw v1

    .line 271
    :pswitch_c
    :try_start_d
    sget-object v0, Lcom/google/android/gms/internal/ads/HG;->b:Lcom/google/android/gms/internal/ads/HG;

    .line 272
    .line 273
    const-string v1, "ChaCha20-Poly1305"

    .line 274
    .line 275
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/HG;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    check-cast v0, Ljavax/crypto/Cipher;

    .line 280
    .line 281
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/LD;->a(Ljavax/crypto/Cipher;)Z

    .line 282
    .line 283
    .line 284
    move-result v1
    :try_end_d
    .catch Ljava/security/GeneralSecurityException; {:try_start_d .. :try_end_d} :catch_d

    .line 285
    if-nez v1, :cond_5

    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_5
    move-object v6, v0

    .line 289
    :catch_d
    :goto_5
    return-object v6

    .line 290
    :pswitch_d
    :try_start_e
    sget-object v0, Lcom/google/android/gms/internal/ads/HG;->b:Lcom/google/android/gms/internal/ads/HG;

    .line 291
    .line 292
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/HG;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    check-cast v0, Ljavax/crypto/Cipher;
    :try_end_e
    .catch Ljava/security/GeneralSecurityException; {:try_start_e .. :try_end_e} :catch_e

    .line 297
    .line 298
    return-object v0

    .line 299
    :catch_e
    move-exception v0

    .line 300
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 301
    .line 302
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 303
    .line 304
    .line 305
    throw v1

    .line 306
    :pswitch_e
    const/16 v0, 0x20

    .line 307
    .line 308
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    return-object v0

    .line 313
    :pswitch_f
    const-wide/16 v0, 0x0

    .line 314
    .line 315
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    return-object v0

    .line 320
    :pswitch_10
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 321
    .line 322
    return-object v0

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
