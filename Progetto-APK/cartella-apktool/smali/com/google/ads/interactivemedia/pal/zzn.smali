.class final Lcom/google/ads/interactivemedia/pal/zzn;
.super Lcom/google/ads/interactivemedia/pal/NonceRequest;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/Boolean;

.field private final zzb:Ljava/lang/Boolean;

.field private final zzc:Ljava/lang/Integer;

.field private final zzd:Ljava/lang/Integer;

.field private final zze:Ljava/lang/Integer;

.field private final zzf:Ljava/lang/Boolean;

.field private final zzg:Ljava/lang/Boolean;

.field private final zzh:Ljava/lang/String;

.field private final zzi:Ljava/lang/String;

.field private final zzj:Ljava/lang/String;

.field private final zzk:Ljava/lang/String;

.field private final zzl:Ljava/lang/String;

.field private final zzm:Ljava/lang/String;

.field private final zzn:Ljava/lang/String;

.field private final zzo:Lcom/google/ads/interactivemedia/pal/PlatformSignalCollector;

.field private final zzp:Ljava/util/Set;

.field private final zzq:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/pal/PlatformSignalCollector;Ljava/util/Set;Ljava/lang/String;Lcom/google/ads/interactivemedia/pal/zzm;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/pal/NonceRequest;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zza:Ljava/lang/Boolean;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzb:Ljava/lang/Boolean;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzc:Ljava/lang/Integer;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzd:Ljava/lang/Integer;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zze:Ljava/lang/Integer;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzf:Ljava/lang/Boolean;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzg:Ljava/lang/Boolean;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzh:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzi:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzj:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzk:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzl:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzm:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzn:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzo:Lcom/google/ads/interactivemedia/pal/PlatformSignalCollector;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzp:Ljava/util/Set;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzq:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/pal/NonceRequest;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_9

    .line 9
    .line 10
    check-cast p1, Lcom/google/ads/interactivemedia/pal/NonceRequest;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zza:Ljava/lang/Boolean;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/NonceRequest;->zzb()Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_9

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/NonceRequest;->zzb()Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_9

    .line 32
    .line 33
    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzb:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/NonceRequest;->zzc()Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_9

    .line 44
    .line 45
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzc:Ljava/lang/Integer;

    .line 46
    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/NonceRequest;->zzf()Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-nez v1, :cond_9

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/NonceRequest;->zzf()Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_9

    .line 65
    .line 66
    :goto_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzd:Ljava/lang/Integer;

    .line 67
    .line 68
    if-nez v1, :cond_3

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/NonceRequest;->zzg()Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-nez v1, :cond_9

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/NonceRequest;->zzg()Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_9

    .line 86
    .line 87
    :goto_2
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zze:Ljava/lang/Integer;

    .line 88
    .line 89
    if-nez v1, :cond_4

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/NonceRequest;->zzh()Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-nez v1, :cond_9

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/NonceRequest;->zzh()Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_9

    .line 107
    .line 108
    :goto_3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzf:Ljava/lang/Boolean;

    .line 109
    .line 110
    if-nez v1, :cond_5

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/NonceRequest;->zze()Ljava/lang/Boolean;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    if-nez v1, :cond_9

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/NonceRequest;->zze()Ljava/lang/Boolean;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_9

    .line 128
    .line 129
    :goto_4
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzg:Ljava/lang/Boolean;

    .line 130
    .line 131
    if-nez v1, :cond_6

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/NonceRequest;->zzd()Ljava/lang/Boolean;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    if-nez v1, :cond_9

    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/NonceRequest;->zzd()Ljava/lang/Boolean;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_9

    .line 149
    .line 150
    :goto_5
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzh:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/NonceRequest;->zzi()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_9

    .line 161
    .line 162
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzi:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/NonceRequest;->zzj()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_9

    .line 173
    .line 174
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzj:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/NonceRequest;->zzk()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_9

    .line 185
    .line 186
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzk:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/NonceRequest;->zzl()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-eqz v1, :cond_9

    .line 197
    .line 198
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzl:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/NonceRequest;->zzm()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-eqz v1, :cond_9

    .line 209
    .line 210
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzm:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/NonceRequest;->zzn()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-eqz v1, :cond_9

    .line 221
    .line 222
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzn:Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/NonceRequest;->zzo()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-eqz v1, :cond_9

    .line 233
    .line 234
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzo:Lcom/google/ads/interactivemedia/pal/PlatformSignalCollector;

    .line 235
    .line 236
    if-nez v1, :cond_7

    .line 237
    .line 238
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/NonceRequest;->zza()Lcom/google/ads/interactivemedia/pal/PlatformSignalCollector;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    if-nez v1, :cond_9

    .line 243
    .line 244
    goto :goto_6

    .line 245
    :cond_7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/NonceRequest;->zza()Lcom/google/ads/interactivemedia/pal/PlatformSignalCollector;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-nez v1, :cond_8

    .line 254
    .line 255
    goto :goto_7

    .line 256
    :cond_8
    :goto_6
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzp:Ljava/util/Set;

    .line 257
    .line 258
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/NonceRequest;->zzq()Ljava/util/Set;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-eqz v1, :cond_9

    .line 267
    .line 268
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzq:Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/NonceRequest;->zzp()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    if-eqz p1, :cond_9

    .line 279
    .line 280
    return v0

    .line 281
    :cond_9
    :goto_7
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zza:Ljava/lang/Boolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    const v2, 0xf4243

    .line 13
    .line 14
    .line 15
    xor-int/2addr v0, v2

    .line 16
    mul-int v0, v0, v2

    .line 17
    .line 18
    iget-object v3, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzb:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    xor-int/2addr v0, v3

    .line 25
    mul-int v0, v0, v2

    .line 26
    .line 27
    iget-object v3, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzc:Ljava/lang/Integer;

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    :goto_1
    xor-int/2addr v0, v3

    .line 38
    mul-int v0, v0, v2

    .line 39
    .line 40
    iget-object v3, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzd:Ljava/lang/Integer;

    .line 41
    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    :goto_2
    xor-int/2addr v0, v3

    .line 51
    mul-int v0, v0, v2

    .line 52
    .line 53
    iget-object v3, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zze:Ljava/lang/Integer;

    .line 54
    .line 55
    if-nez v3, :cond_3

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    goto :goto_3

    .line 59
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    :goto_3
    xor-int/2addr v0, v3

    .line 64
    mul-int v0, v0, v2

    .line 65
    .line 66
    iget-object v3, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzf:Ljava/lang/Boolean;

    .line 67
    .line 68
    if-nez v3, :cond_4

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    goto :goto_4

    .line 72
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    :goto_4
    xor-int/2addr v0, v3

    .line 77
    mul-int v0, v0, v2

    .line 78
    .line 79
    iget-object v3, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzg:Ljava/lang/Boolean;

    .line 80
    .line 81
    if-nez v3, :cond_5

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    goto :goto_5

    .line 85
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    :goto_5
    xor-int/2addr v0, v3

    .line 90
    mul-int v0, v0, v2

    .line 91
    .line 92
    iget-object v3, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzh:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    xor-int/2addr v0, v3

    .line 99
    mul-int v0, v0, v2

    .line 100
    .line 101
    iget-object v3, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzi:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    xor-int/2addr v0, v3

    .line 108
    mul-int v0, v0, v2

    .line 109
    .line 110
    iget-object v3, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzj:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    xor-int/2addr v0, v3

    .line 117
    mul-int v0, v0, v2

    .line 118
    .line 119
    iget-object v3, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzk:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    xor-int/2addr v0, v3

    .line 126
    mul-int v0, v0, v2

    .line 127
    .line 128
    iget-object v3, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzl:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    xor-int/2addr v0, v3

    .line 135
    mul-int v0, v0, v2

    .line 136
    .line 137
    iget-object v3, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzm:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    xor-int/2addr v0, v3

    .line 144
    mul-int v0, v0, v2

    .line 145
    .line 146
    iget-object v3, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzn:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    xor-int/2addr v0, v3

    .line 153
    mul-int v0, v0, v2

    .line 154
    .line 155
    iget-object v3, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzo:Lcom/google/ads/interactivemedia/pal/PlatformSignalCollector;

    .line 156
    .line 157
    if-nez v3, :cond_6

    .line 158
    .line 159
    goto :goto_6

    .line 160
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    :goto_6
    xor-int/2addr v0, v1

    .line 165
    mul-int v0, v0, v2

    .line 166
    .line 167
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzp:Ljava/util/Set;

    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    xor-int/2addr v0, v1

    .line 174
    mul-int v0, v0, v2

    .line 175
    .line 176
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzq:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    xor-int/2addr v0, v1

    .line 183
    return v0
.end method

.method public final toBuilder()Lcom/google/ads/interactivemedia/pal/NonceRequest$Builder;
    .locals 2

    new-instance v0, Lcom/google/ads/interactivemedia/pal/zzl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/ads/interactivemedia/pal/zzl;-><init>(Lcom/google/ads/interactivemedia/pal/NonceRequest;Lcom/google/ads/interactivemedia/pal/zzk;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zza:Ljava/lang/Boolean;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzb:Ljava/lang/Boolean;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzc:Ljava/lang/Integer;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzd:Ljava/lang/Integer;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zze:Ljava/lang/Integer;

    .line 12
    .line 13
    iget-object v6, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzf:Ljava/lang/Boolean;

    .line 14
    .line 15
    iget-object v7, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzg:Ljava/lang/Boolean;

    .line 16
    .line 17
    iget-object v8, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzh:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzi:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v10, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzj:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v11, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzk:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v12, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzl:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v13, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzm:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v14, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzn:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v15, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzo:Lcom/google/ads/interactivemedia/pal/PlatformSignalCollector;

    .line 32
    .line 33
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v15

    .line 37
    move-object/from16 v16, v15

    .line 38
    .line 39
    iget-object v15, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzp:Ljava/util/Set;

    .line 40
    .line 41
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v15

    .line 45
    move-object/from16 v17, v15

    .line 46
    .line 47
    iget-object v15, v0, Lcom/google/ads/interactivemedia/pal/zzn;->zzq:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    move-object/from16 v18, v15

    .line 52
    .line 53
    const-string v15, "NonceRequest{continuousPlayback="

    .line 54
    .line 55
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, ", iconsSupported="

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, ", nonceLengthLimit="

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, ", videoPlayerHeight="

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v1, ", videoPlayerWidth="

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", willAdPlayMuted="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, ", willAdAutoPlay="

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v1, ", descriptionURL="

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v1, ", omidPartnerName="

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v1, ", omidPartnerVersion="

    .line 123
    .line 124
    const-string v2, ", omidVersion="

    .line 125
    .line 126
    invoke-static {v0, v9, v1, v10, v2}, Lt/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const-string v1, ", playerType="

    .line 130
    .line 131
    const-string v2, ", playerVersion="

    .line 132
    .line 133
    invoke-static {v0, v11, v1, v12, v2}, Lt/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v1, ", ppid="

    .line 137
    .line 138
    const-string v2, ", platformSignalCollector="

    .line 139
    .line 140
    invoke-static {v0, v13, v1, v14, v2}, Lt/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string v1, ", supportedApiFrameworks="

    .line 144
    .line 145
    const-string v2, ", sessionId="

    .line 146
    .line 147
    move-object/from16 v3, v16

    .line 148
    .line 149
    move-object/from16 v4, v17

    .line 150
    .line 151
    invoke-static {v0, v3, v1, v4, v2}, Lt/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const-string v1, "}"

    .line 155
    .line 156
    move-object/from16 v2, v18

    .line 157
    .line 158
    invoke-static {v0, v2, v1}, La/r;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    return-object v0
.end method

.method public final zza()Lcom/google/ads/interactivemedia/pal/PlatformSignalCollector;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzo:Lcom/google/ads/interactivemedia/pal/PlatformSignalCollector;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zza:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzc()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzb:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzd()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzg:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zze()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzf:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzf()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzc:Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzg()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzd:Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzh()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zze:Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public final zzk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzj:Ljava/lang/String;

    return-object v0
.end method

.method public final zzl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzk:Ljava/lang/String;

    return-object v0
.end method

.method public final zzm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzl:Ljava/lang/String;

    return-object v0
.end method

.method public final zzn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzm:Ljava/lang/String;

    return-object v0
.end method

.method public final zzo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzn:Ljava/lang/String;

    return-object v0
.end method

.method public final zzp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzq:Ljava/lang/String;

    return-object v0
.end method

.method public final zzq()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzn;->zzp:Ljava/util/Set;

    return-object v0
.end method
