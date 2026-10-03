.class public abstract Lcom/google/android/gms/internal/measurement/c2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/P2;


# instance fields
.field protected zza:I


# direct methods
.method public static b(Ljava/lang/Iterable;Lcom/google/android/gms/internal/measurement/y2;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/z2;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/E2;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    check-cast p0, Lcom/google/android/gms/internal/measurement/E2;

    .line 13
    .line 14
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/E2;->zza()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/uc;->u(Lcom/google/android/gms/internal/measurement/y2;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_c

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    instance-of p1, p0, Lcom/google/android/gms/internal/measurement/i2;

    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    instance-of p1, p0, [B

    .line 46
    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    check-cast p0, [B

    .line 50
    .line 51
    array-length p1, p0

    .line 52
    invoke-static {v2, p0, p1}, Lcom/google/android/gms/internal/measurement/i2;->p(I[BI)Lcom/google/android/gms/internal/measurement/j2;

    .line 53
    .line 54
    .line 55
    throw v1

    .line 56
    :cond_0
    check-cast p0, Ljava/lang/String;

    .line 57
    .line 58
    throw v1

    .line 59
    :cond_1
    check-cast p0, Lcom/google/android/gms/internal/measurement/i2;

    .line 60
    .line 61
    throw v1

    .line 62
    :cond_2
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/U2;

    .line 63
    .line 64
    if-nez v0, :cond_b

    .line 65
    .line 66
    instance-of v0, p0, Ljava/util/Collection;

    .line 67
    .line 68
    if-eqz v0, :cond_7

    .line 69
    .line 70
    move-object v0, p0

    .line 71
    check-cast v0, Ljava/util/Collection;

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    instance-of v3, p1, Ljava/util/ArrayList;

    .line 78
    .line 79
    if-eqz v3, :cond_3

    .line 80
    .line 81
    move-object v3, p1

    .line 82
    check-cast v3, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    add-int/2addr v4, v0

    .line 89
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    instance-of v3, p1, Lcom/google/android/gms/internal/measurement/W2;

    .line 94
    .line 95
    if-eqz v3, :cond_7

    .line 96
    .line 97
    move-object v3, p1

    .line 98
    check-cast v3, Lcom/google/android/gms/internal/measurement/W2;

    .line 99
    .line 100
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    add-int/2addr v4, v0

    .line 105
    iget-object v0, v3, Lcom/google/android/gms/internal/measurement/W2;->H:[Ljava/lang/Object;

    .line 106
    .line 107
    array-length v0, v0

    .line 108
    if-gt v4, v0, :cond_4

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    const/16 v5, 0xa

    .line 112
    .line 113
    if-eqz v0, :cond_6

    .line 114
    .line 115
    :goto_0
    if-ge v0, v4, :cond_5

    .line 116
    .line 117
    mul-int/lit8 v0, v0, 0x3

    .line 118
    .line 119
    div-int/lit8 v0, v0, 0x2

    .line 120
    .line 121
    add-int/lit8 v0, v0, 0x1

    .line 122
    .line 123
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    goto :goto_0

    .line 128
    :cond_5
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/W2;->H:[Ljava/lang/Object;

    .line 129
    .line 130
    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iput-object v0, v3, Lcom/google/android/gms/internal/measurement/W2;->H:[Ljava/lang/Object;

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_6
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    new-array v0, v0, [Ljava/lang/Object;

    .line 142
    .line 143
    iput-object v0, v3, Lcom/google/android/gms/internal/measurement/W2;->H:[Ljava/lang/Object;

    .line 144
    .line 145
    :cond_7
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    instance-of v3, p0, Ljava/util/List;

    .line 150
    .line 151
    if-eqz v3, :cond_9

    .line 152
    .line 153
    instance-of v3, p0, Ljava/util/RandomAccess;

    .line 154
    .line 155
    if-eqz v3, :cond_9

    .line 156
    .line 157
    check-cast p0, Ljava/util/List;

    .line 158
    .line 159
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    :goto_2
    if-ge v2, v3, :cond_c

    .line 164
    .line 165
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    if-eqz v4, :cond_8

    .line 170
    .line 171
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    add-int/lit8 v2, v2, 0x1

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_8
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/D;->a(ILcom/google/android/gms/internal/measurement/y2;)V

    .line 178
    .line 179
    .line 180
    throw v1

    .line 181
    :cond_9
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-eqz v2, :cond_c

    .line 190
    .line 191
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    if-eqz v2, :cond_a

    .line 196
    .line 197
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_a
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/D;->a(ILcom/google/android/gms/internal/measurement/y2;)V

    .line 202
    .line 203
    .line 204
    throw v1

    .line 205
    :cond_b
    check-cast p0, Ljava/util/Collection;

    .line 206
    .line 207
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    .line 209
    .line 210
    :cond_c
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/internal/measurement/Y2;)I
.end method

.method public final c()[B
    .locals 5

    .line 1
    :try_start_0
    move-object v0, p0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/s2;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s2;->e()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    new-array v2, v1, [B

    .line 9
    .line 10
    new-instance v3, Lcom/google/android/gms/internal/measurement/k2;

    .line 11
    .line 12
    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/internal/measurement/k2;-><init>([BI)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/s2;->d(Lcom/google/android/gms/internal/measurement/k2;)V

    .line 16
    .line 17
    .line 18
    iget v0, v3, Lcom/google/android/gms/internal/measurement/k2;->K:I

    .line 19
    .line 20
    sub-int/2addr v1, v0

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    return-object v2

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v1, "Did not write as much data as expected."

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-instance v2, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v3, "Serializing "

    .line 44
    .line 45
    const-string v4, " to a byte array threw an IOException (should never happen)."

    .line 46
    .line 47
    invoke-static {v3, v1, v4}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    throw v2
.end method
