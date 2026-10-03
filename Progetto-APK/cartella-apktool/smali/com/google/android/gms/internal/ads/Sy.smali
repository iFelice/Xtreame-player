.class public abstract Lcom/google/android/gms/internal/ads/Sy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lcom/google/android/gms/internal/ads/Ry;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/UUID;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/google/android/gms/internal/ads/Sy;->g:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/Ry;->c:Lcom/google/android/gms/internal/ads/Ry;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/Ry;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/Ry;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/internal/ads/Ry;->c:Lcom/google/android/gms/internal/ads/Ry;

    .line 14
    .line 15
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/Ry;->c:Lcom/google/android/gms/internal/ads/Ry;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Sy;->f:Lcom/google/android/gms/internal/ads/Ry;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Sy;->a:Ljava/lang/String;

    .line 20
    .line 21
    const-string p1, "_3p"

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Sy;->b:Ljava/lang/String;

    .line 28
    .line 29
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Sy;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Sy;->d:Ljava/lang/String;

    .line 36
    .line 37
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Sy;->e:Ljava/lang/String;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/Om;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Sy;->b:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/16 v5, 0x15

    .line 11
    .line 12
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Sy;->f:Lcom/google/android/gms/internal/ads/Ry;

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    sget-object v7, Lcom/google/android/gms/internal/ads/Sy;->g:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    if-eqz v7, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/Ry;->b:Landroid/content/SharedPreferences;

    .line 29
    .line 30
    invoke-interface {v7, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    iget-object v8, v6, Lcom/google/android/gms/internal/ads/Ry;->b:Landroid/content/SharedPreferences;

    .line 35
    .line 36
    const-string v9, "paid_3p_hash_key"

    .line 37
    .line 38
    invoke-interface {v8, v9, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    if-eqz v7, :cond_2

    .line 43
    .line 44
    if-eqz v8, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2, v8}, Lcom/google/android/gms/internal/ads/Sy;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-eqz v7, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Sy;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Om;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    return-object v1

    .line 62
    :catch_0
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/Om;

    .line 63
    .line 64
    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/Om;-><init>(I)V

    .line 65
    .line 66
    .line 67
    return-object v1

    .line 68
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 69
    .line 70
    const/4 v7, 0x1

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    const/4 v7, 0x0

    .line 73
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v8

    .line 77
    const-wide/16 v10, 0x0

    .line 78
    .line 79
    cmp-long v12, v8, v10

    .line 80
    .line 81
    if-ltz v12, :cond_c

    .line 82
    .line 83
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/Sy;->c:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/Sy;->d:Ljava/lang/String;

    .line 86
    .line 87
    if-eqz v7, :cond_4

    .line 88
    .line 89
    move-object v12, v11

    .line 90
    goto :goto_3

    .line 91
    :cond_4
    move-object v12, v10

    .line 92
    :goto_3
    iget-object v13, v6, Lcom/google/android/gms/internal/ads/Ry;->b:Landroid/content/SharedPreferences;

    .line 93
    .line 94
    const-wide/16 v14, -0x1

    .line 95
    .line 96
    invoke-interface {v13, v12, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 97
    .line 98
    .line 99
    move-result-wide v12

    .line 100
    cmp-long v16, v12, v14

    .line 101
    .line 102
    if-nez v16, :cond_5

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_5
    cmp-long v16, v8, v12

    .line 106
    .line 107
    if-gez v16, :cond_7

    .line 108
    .line 109
    if-eqz v7, :cond_6

    .line 110
    .line 111
    move-object v12, v11

    .line 112
    goto :goto_4

    .line 113
    :cond_6
    move-object v12, v10

    .line 114
    :goto_4
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    invoke-virtual {v6, v8, v12}, Lcom/google/android/gms/internal/ads/Ry;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_7
    add-long v12, v12, p1

    .line 123
    .line 124
    cmp-long v16, v8, v12

    .line 125
    .line 126
    if-ltz v16, :cond_8

    .line 127
    .line 128
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Sy;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Om;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    return-object v1

    .line 133
    :cond_8
    :goto_5
    if-eqz v7, :cond_9

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_9
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Sy;->a:Ljava/lang/String;

    .line 137
    .line 138
    :goto_6
    iget-object v8, v6, Lcom/google/android/gms/internal/ads/Ry;->b:Landroid/content/SharedPreferences;

    .line 139
    .line 140
    invoke-interface {v8, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    if-nez v3, :cond_a

    .line 145
    .line 146
    if-nez p5, :cond_a

    .line 147
    .line 148
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Sy;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Om;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    return-object v1

    .line 153
    :cond_a
    new-instance v1, Lcom/google/android/gms/internal/ads/Om;

    .line 154
    .line 155
    if-eqz v7, :cond_b

    .line 156
    .line 157
    move-object v10, v11

    .line 158
    :cond_b
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/Ry;->b:Landroid/content/SharedPreferences;

    .line 159
    .line 160
    invoke-interface {v2, v10, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 161
    .line 162
    .line 163
    move-result-wide v6

    .line 164
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/Hf;->p(J)Ljava/time/Instant;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-direct {v1, v5, v3, v2}, Lcom/google/android/gms/internal/ads/Om;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    return-object v1

    .line 172
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 173
    .line 174
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Sy;->e:Ljava/lang/String;

    .line 175
    .line 176
    const-string v3, ": Invalid negative current timestamp. Updating PAID failed"

    .line 177
    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw v1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Om;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Sy;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/Om;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Sy;->f:Lcom/google/android/gms/internal/ads/Ry;

    .line 26
    .line 27
    const-string v2, "paid_3p_hash_key"

    .line 28
    .line 29
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Ry;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/Sy;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 p2, 0x1

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Sy;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/Om;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method public final c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/Om;
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-ltz v4, :cond_2

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Sy;->d:Ljava/lang/String;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Sy;->c:Ljava/lang/String;

    .line 17
    .line 18
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Sy;->f:Lcom/google/android/gms/internal/ads/Ry;

    .line 23
    .line 24
    invoke-virtual {v4, v3, v2}, Lcom/google/android/gms/internal/ads/Ry;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Sy;->b:Ljava/lang/String;

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Sy;->a:Ljava/lang/String;

    .line 33
    .line 34
    :goto_1
    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/internal/ads/Ry;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance p2, Lcom/google/android/gms/internal/ads/Om;

    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Hf;->p(J)Ljava/time/Instant;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/16 v1, 0x15

    .line 44
    .line 45
    invoke-direct {p2, v1, p1, v0}, Lcom/google/android/gms/internal/ads/Om;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-object p2

    .line 49
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string p2, ": Invalid negative current timestamp. Updating PAID failed"

    .line 52
    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sy;->e:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method public final d(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sy;->d:Ljava/lang/String;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sy;->c:Ljava/lang/String;

    .line 7
    .line 8
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Sy;->f:Lcom/google/android/gms/internal/ads/Ry;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Ry;->b(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Sy;->b:Ljava/lang/String;

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Sy;->a:Ljava/lang/String;

    .line 19
    .line 20
    :goto_1
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/Ry;->b(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/U2;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Sy;->e:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ": Invalid argument to generate PAIDv1 on 3p traffic, Ad ID is not null, package name is "

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, "not null"

    .line 43
    .line 44
    const-string v2, "null"

    .line 45
    .line 46
    if-nez p2, :cond_2

    .line 47
    .line 48
    move-object p2, v2

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move-object p2, v1

    .line 51
    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p2, ", hashKey is "

    .line 55
    .line 56
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    if-nez p3, :cond_3

    .line 60
    .line 61
    move-object v1, v2

    .line 62
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1
.end method
