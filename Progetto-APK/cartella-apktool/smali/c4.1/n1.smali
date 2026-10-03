.class public abstract Lc4/n1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz4/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    const-string v8, "AuthorizePurpose3"

    .line 2
    .line 3
    const-string v9, "AuthorizePurpose4"

    .line 4
    .line 5
    const-string v0, "Purpose7"

    .line 6
    .line 7
    const-string v1, "CmpSdkID"

    .line 8
    .line 9
    const-string v2, "PublisherCC"

    .line 10
    .line 11
    const-string v3, "PublisherRestrictions1"

    .line 12
    .line 13
    const-string v4, "PublisherRestrictions3"

    .line 14
    .line 15
    const-string v5, "PublisherRestrictions4"

    .line 16
    .line 17
    const-string v6, "PublisherRestrictions7"

    .line 18
    .line 19
    const-string v7, "AuthorizePurpose1"

    .line 20
    .line 21
    const-string v10, "AuthorizePurpose7"

    .line 22
    .line 23
    const-string v11, "PurposeDiagnostics"

    .line 24
    .line 25
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v24

    .line 29
    const-string v20, "PurposeOneTreatment"

    .line 30
    .line 31
    const-string v21, "Purpose1"

    .line 32
    .line 33
    const-string v12, "Version"

    .line 34
    .line 35
    const-string v13, "GoogleConsent"

    .line 36
    .line 37
    const-string v14, "VendorConsent"

    .line 38
    .line 39
    const-string v15, "VendorLegitimateInterest"

    .line 40
    .line 41
    const-string v16, "gdprApplies"

    .line 42
    .line 43
    const-string v17, "EnableAdvertiserConsentMode"

    .line 44
    .line 45
    const-string v18, "PolicyVersion"

    .line 46
    .line 47
    const-string v19, "PurposeConsents"

    .line 48
    .line 49
    const-string v22, "Purpose3"

    .line 50
    .line 51
    const-string v23, "Purpose4"

    .line 52
    .line 53
    invoke-static/range {v12 .. v24}, Lz4/H;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lz4/d0;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lc4/n1;->a:Lz4/d0;

    .line 58
    .line 59
    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;Ljava/lang/String;)I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 3
    .line 4
    .line 5
    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    return p0

    .line 7
    :catch_0
    return v0
.end method

.method public static b(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    return-object v0
.end method

.method public static final c(Lcom/google/android/gms/internal/measurement/a2;Lz4/i0;Lz4/i0;Lz4/r0;[CIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    invoke-static {p0}, Lc4/n1;->d(Lcom/google/android/gms/internal/measurement/a2;)I

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    const/16 v4, 0x32

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    if-lez v3, :cond_2

    .line 12
    .line 13
    move/from16 v6, p7

    .line 14
    .line 15
    if-ne v6, v5, :cond_1

    .line 16
    .line 17
    move/from16 v7, p6

    .line 18
    .line 19
    if-eq v7, v5, :cond_0

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v6, 0x1

    .line 24
    const/4 v7, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move/from16 v7, p6

    .line 27
    .line 28
    :goto_0
    aput-char v4, p4, v3

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    move/from16 v7, p6

    .line 32
    .line 33
    move/from16 v6, p7

    .line 34
    .line 35
    :goto_1
    invoke-static {p0, p2}, Lc4/n1;->e(Lcom/google/android/gms/internal/measurement/a2;Lz4/i0;)Lcom/google/android/gms/internal/measurement/b2;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    sget-object v9, Lcom/google/android/gms/internal/measurement/b2;->H:Lcom/google/android/gms/internal/measurement/b2;

    .line 40
    .line 41
    if-ne v8, v9, :cond_3

    .line 42
    .line 43
    const/16 v0, 0x33

    .line 44
    .line 45
    goto/16 :goto_5

    .line 46
    .line 47
    :cond_3
    sget-object v8, Lcom/google/android/gms/internal/measurement/a2;->H:Lcom/google/android/gms/internal/measurement/a2;

    .line 48
    .line 49
    if-ne v0, v8, :cond_6

    .line 50
    .line 51
    move/from16 v8, p9

    .line 52
    .line 53
    if-ne v8, v5, :cond_7

    .line 54
    .line 55
    move-object/from16 v9, p3

    .line 56
    .line 57
    iget-object v8, v9, Lz4/r0;->J:Ljava/lang/Object;

    .line 58
    .line 59
    move-object/from16 v9, p10

    .line 60
    .line 61
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-eqz v8, :cond_5

    .line 66
    .line 67
    if-lez v3, :cond_4

    .line 68
    .line 69
    aget-char v0, p4, v3

    .line 70
    .line 71
    if-eq v0, v4, :cond_4

    .line 72
    .line 73
    const/16 v0, 0x31

    .line 74
    .line 75
    aput-char v0, p4, v3

    .line 76
    .line 77
    :cond_4
    return v5

    .line 78
    :cond_5
    const/4 v8, 0x1

    .line 79
    goto :goto_2

    .line 80
    :cond_6
    move/from16 v8, p9

    .line 81
    .line 82
    :cond_7
    :goto_2
    invoke-virtual {p1, p0}, Lz4/J;->containsKey(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    const/16 v10, 0x30

    .line 87
    .line 88
    if-nez v9, :cond_8

    .line 89
    .line 90
    :goto_3
    const/16 v0, 0x30

    .line 91
    .line 92
    goto/16 :goto_5

    .line 93
    .line 94
    :cond_8
    invoke-virtual {p1, p0}, Lz4/i0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Lc4/m1;

    .line 99
    .line 100
    if-nez v1, :cond_9

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    sget-object v9, Lcom/google/android/gms/internal/measurement/b2;->J:Lcom/google/android/gms/internal/measurement/b2;

    .line 108
    .line 109
    const/16 v11, 0x38

    .line 110
    .line 111
    if-eqz v1, :cond_10

    .line 112
    .line 113
    sget-object v12, Lcom/google/android/gms/internal/measurement/b2;->I:Lcom/google/android/gms/internal/measurement/b2;

    .line 114
    .line 115
    if-eq v1, v5, :cond_e

    .line 116
    .line 117
    const/4 v5, 0x2

    .line 118
    if-eq v1, v5, :cond_c

    .line 119
    .line 120
    const/4 v5, 0x3

    .line 121
    if-eq v1, v5, :cond_a

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_a
    invoke-static {p0, p2}, Lc4/n1;->e(Lcom/google/android/gms/internal/measurement/a2;Lz4/i0;)Lcom/google/android/gms/internal/measurement/b2;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    if-ne v1, v12, :cond_b

    .line 129
    .line 130
    move-object v0, p0

    .line 131
    move-object/from16 v1, p4

    .line 132
    .line 133
    move/from16 v2, p5

    .line 134
    .line 135
    move v3, v7

    .line 136
    move v4, v6

    .line 137
    move/from16 v5, p8

    .line 138
    .line 139
    move v6, v8

    .line 140
    move-object/from16 v7, p11

    .line 141
    .line 142
    move/from16 v8, p13

    .line 143
    .line 144
    move/from16 v9, p14

    .line 145
    .line 146
    invoke-static/range {v0 .. v9}, Lc4/n1;->g(Lcom/google/android/gms/internal/measurement/a2;[CIIIIILjava/lang/String;ZZ)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    return v0

    .line 151
    :cond_b
    move-object v0, p0

    .line 152
    move-object/from16 v1, p4

    .line 153
    .line 154
    move/from16 v2, p5

    .line 155
    .line 156
    move v3, v7

    .line 157
    move v4, v6

    .line 158
    move/from16 v5, p8

    .line 159
    .line 160
    move v6, v8

    .line 161
    move-object/from16 v7, p12

    .line 162
    .line 163
    move/from16 v8, p13

    .line 164
    .line 165
    move/from16 v9, p14

    .line 166
    .line 167
    invoke-static/range {v0 .. v9}, Lc4/n1;->h(Lcom/google/android/gms/internal/measurement/a2;[CIIIIILjava/lang/String;ZZ)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    return v0

    .line 172
    :cond_c
    invoke-static {p0, p2}, Lc4/n1;->e(Lcom/google/android/gms/internal/measurement/a2;Lz4/i0;)Lcom/google/android/gms/internal/measurement/b2;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    if-ne v1, v9, :cond_d

    .line 177
    .line 178
    move-object v0, p0

    .line 179
    move-object/from16 v1, p4

    .line 180
    .line 181
    move/from16 v2, p5

    .line 182
    .line 183
    move v3, v7

    .line 184
    move v4, v6

    .line 185
    move/from16 v5, p8

    .line 186
    .line 187
    move v6, v8

    .line 188
    move-object/from16 v7, p12

    .line 189
    .line 190
    move/from16 v8, p13

    .line 191
    .line 192
    move/from16 v9, p14

    .line 193
    .line 194
    invoke-static/range {v0 .. v9}, Lc4/n1;->h(Lcom/google/android/gms/internal/measurement/a2;[CIIIIILjava/lang/String;ZZ)Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    return v0

    .line 199
    :cond_d
    move-object v0, p0

    .line 200
    move-object/from16 v1, p4

    .line 201
    .line 202
    move/from16 v2, p5

    .line 203
    .line 204
    move v3, v7

    .line 205
    move v4, v6

    .line 206
    move/from16 v5, p8

    .line 207
    .line 208
    move v6, v8

    .line 209
    move-object/from16 v7, p11

    .line 210
    .line 211
    move/from16 v8, p13

    .line 212
    .line 213
    move/from16 v9, p14

    .line 214
    .line 215
    invoke-static/range {v0 .. v9}, Lc4/n1;->g(Lcom/google/android/gms/internal/measurement/a2;[CIIIIILjava/lang/String;ZZ)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    return v0

    .line 220
    :cond_e
    invoke-static {p0, p2}, Lc4/n1;->e(Lcom/google/android/gms/internal/measurement/a2;Lz4/i0;)Lcom/google/android/gms/internal/measurement/b2;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    if-ne v1, v12, :cond_f

    .line 225
    .line 226
    :goto_4
    const/16 v0, 0x38

    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_f
    move-object v0, p0

    .line 230
    move-object/from16 v1, p4

    .line 231
    .line 232
    move/from16 v2, p5

    .line 233
    .line 234
    move v3, v7

    .line 235
    move v4, v6

    .line 236
    move/from16 v5, p8

    .line 237
    .line 238
    move v6, v8

    .line 239
    move-object/from16 v7, p12

    .line 240
    .line 241
    move/from16 v8, p13

    .line 242
    .line 243
    move/from16 v9, p14

    .line 244
    .line 245
    invoke-static/range {v0 .. v9}, Lc4/n1;->h(Lcom/google/android/gms/internal/measurement/a2;[CIIIIILjava/lang/String;ZZ)Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    return v0

    .line 250
    :cond_10
    invoke-static {p0, p2}, Lc4/n1;->e(Lcom/google/android/gms/internal/measurement/a2;Lz4/i0;)Lcom/google/android/gms/internal/measurement/b2;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    if-ne v1, v9, :cond_12

    .line 255
    .line 256
    goto :goto_4

    .line 257
    :goto_5
    if-lez v3, :cond_11

    .line 258
    .line 259
    aget-char v1, p4, v3

    .line 260
    .line 261
    if-eq v1, v4, :cond_11

    .line 262
    .line 263
    aput-char v0, p4, v3

    .line 264
    .line 265
    :cond_11
    const/4 v0, 0x0

    .line 266
    return v0

    .line 267
    :cond_12
    move-object v0, p0

    .line 268
    move-object/from16 v1, p4

    .line 269
    .line 270
    move/from16 v2, p5

    .line 271
    .line 272
    move v3, v7

    .line 273
    move v4, v6

    .line 274
    move/from16 v5, p8

    .line 275
    .line 276
    move v6, v8

    .line 277
    move-object/from16 v7, p11

    .line 278
    .line 279
    move/from16 v8, p13

    .line 280
    .line 281
    move/from16 v9, p14

    .line 282
    .line 283
    invoke-static/range {v0 .. v9}, Lc4/n1;->g(Lcom/google/android/gms/internal/measurement/a2;[CIIIIILjava/lang/String;ZZ)Z

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    return v0
.end method

.method public static final d(Lcom/google/android/gms/internal/measurement/a2;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/a2;->H:Lcom/google/android/gms/internal/measurement/a2;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/a2;->J:Lcom/google/android/gms/internal/measurement/a2;

    .line 8
    .line 9
    if-ne p0, v0, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x2

    .line 12
    return p0

    .line 13
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/measurement/a2;->K:Lcom/google/android/gms/internal/measurement/a2;

    .line 14
    .line 15
    if-ne p0, v0, :cond_2

    .line 16
    .line 17
    const/4 p0, 0x3

    .line 18
    return p0

    .line 19
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/measurement/a2;->L:Lcom/google/android/gms/internal/measurement/a2;

    .line 20
    .line 21
    if-ne p0, v0, :cond_3

    .line 22
    .line 23
    const/4 p0, 0x4

    .line 24
    return p0

    .line 25
    :cond_3
    const/4 p0, -0x1

    .line 26
    return p0
.end method

.method public static final e(Lcom/google/android/gms/internal/measurement/a2;Lz4/i0;)Lcom/google/android/gms/internal/measurement/b2;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/b2;->K:Lcom/google/android/gms/internal/measurement/b2;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lz4/i0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    .line 11
    .line 12
    return-object v0
.end method

.method public static final f(Lcom/google/android/gms/internal/measurement/a2;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "0"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a2;->zza()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-lt v0, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a2;->zza()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object p1, v1

    .line 35
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a2;->zza()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-lt v0, v2, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a2;->zza()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    add-int/lit8 p0, p0, -0x1

    .line 56
    .line 57
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method

.method public static final g(Lcom/google/android/gms/internal/measurement/a2;[CIIIIILjava/lang/String;ZZ)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lc4/n1;->d(Lcom/google/android/gms/internal/measurement/a2;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 p3, 0x0

    .line 6
    const/16 p4, 0x32

    .line 7
    .line 8
    if-nez p8, :cond_0

    .line 9
    .line 10
    const/16 p0, 0x34

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p7}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result p5

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a2;->zza()I

    .line 18
    .line 19
    .line 20
    move-result p6

    .line 21
    if-ge p5, p6, :cond_2

    .line 22
    .line 23
    const/16 p0, 0x30

    .line 24
    .line 25
    :goto_0
    if-lez p2, :cond_1

    .line 26
    .line 27
    aget-char p5, p1, p2

    .line 28
    .line 29
    if-eq p5, p4, :cond_1

    .line 30
    .line 31
    aput-char p0, p1, p2

    .line 32
    .line 33
    :cond_1
    return p3

    .line 34
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a2;->zza()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    add-int/lit8 p0, p0, -0x1

    .line 39
    .line 40
    invoke-virtual {p7, p0}, Ljava/lang/String;->charAt(I)C

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    const/16 p5, 0x31

    .line 45
    .line 46
    if-ne p0, p5, :cond_3

    .line 47
    .line 48
    const/4 p3, 0x1

    .line 49
    :cond_3
    if-lez p2, :cond_5

    .line 50
    .line 51
    aget-char p6, p1, p2

    .line 52
    .line 53
    if-eq p6, p4, :cond_5

    .line 54
    .line 55
    if-ne p0, p5, :cond_4

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    const/16 p5, 0x36

    .line 59
    .line 60
    :goto_1
    aput-char p5, p1, p2

    .line 61
    .line 62
    :cond_5
    return p3
.end method

.method public static final h(Lcom/google/android/gms/internal/measurement/a2;[CIIIIILjava/lang/String;ZZ)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lc4/n1;->d(Lcom/google/android/gms/internal/measurement/a2;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 p3, 0x0

    .line 6
    const/16 p4, 0x32

    .line 7
    .line 8
    if-nez p9, :cond_0

    .line 9
    .line 10
    const/16 p0, 0x35

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p7}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result p5

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a2;->zza()I

    .line 18
    .line 19
    .line 20
    move-result p6

    .line 21
    if-ge p5, p6, :cond_2

    .line 22
    .line 23
    const/16 p0, 0x30

    .line 24
    .line 25
    :goto_0
    if-lez p2, :cond_1

    .line 26
    .line 27
    aget-char p5, p1, p2

    .line 28
    .line 29
    if-eq p5, p4, :cond_1

    .line 30
    .line 31
    aput-char p0, p1, p2

    .line 32
    .line 33
    :cond_1
    return p3

    .line 34
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a2;->zza()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    add-int/lit8 p0, p0, -0x1

    .line 39
    .line 40
    invoke-virtual {p7, p0}, Ljava/lang/String;->charAt(I)C

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    const/16 p5, 0x31

    .line 45
    .line 46
    if-ne p0, p5, :cond_3

    .line 47
    .line 48
    const/4 p3, 0x1

    .line 49
    :cond_3
    if-lez p2, :cond_5

    .line 50
    .line 51
    aget-char p6, p1, p2

    .line 52
    .line 53
    if-eq p6, p4, :cond_5

    .line 54
    .line 55
    if-ne p0, p5, :cond_4

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    const/16 p5, 0x37

    .line 59
    .line 60
    :goto_1
    aput-char p5, p1, p2

    .line 61
    .line 62
    :cond_5
    return p3
.end method
