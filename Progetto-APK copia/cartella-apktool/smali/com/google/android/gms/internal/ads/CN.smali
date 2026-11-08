.class public final Lcom/google/android/gms/internal/ads/CN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/vN;
.implements Lcom/google/android/gms/internal/ads/uN;


# instance fields
.field public final G:[Lcom/google/android/gms/internal/ads/vN;

.field public final H:Ljava/util/IdentityHashMap;

.field public final I:Ljava/util/ArrayList;

.field public final J:Ljava/util/HashMap;

.field public K:Lcom/google/android/gms/internal/ads/uN;

.field public L:Lcom/google/android/gms/internal/ads/bO;

.field public M:[Lcom/google/android/gms/internal/ads/vN;

.field public N:Lcom/google/android/gms/internal/ads/mN;


# direct methods
.method public varargs constructor <init>([J[Lcom/google/android/gms/internal/ads/vN;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/CN;->G:[Lcom/google/android/gms/internal/ads/vN;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/CN;->I:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/CN;->J:Ljava/util/HashMap;

    .line 19
    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/mN;

    .line 21
    .line 22
    sget-object v1, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 23
    .line 24
    sget-object v1, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 25
    .line 26
    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/ads/mN;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/CN;->N:Lcom/google/android/gms/internal/ads/mN;

    .line 30
    .line 31
    new-instance v0, Ljava/util/IdentityHashMap;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/CN;->H:Ljava/util/IdentityHashMap;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    new-array v1, v0, [Lcom/google/android/gms/internal/ads/vN;

    .line 40
    .line 41
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/CN;->M:[Lcom/google/android/gms/internal/ads/vN;

    .line 42
    .line 43
    :goto_0
    array-length v1, p2

    .line 44
    if-ge v0, v1, :cond_1

    .line 45
    .line 46
    aget-wide v1, p1, v0

    .line 47
    .line 48
    const-wide/16 v3, 0x0

    .line 49
    .line 50
    cmp-long v5, v1, v3

    .line 51
    .line 52
    if-eqz v5, :cond_0

    .line 53
    .line 54
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/CN;->G:[Lcom/google/android/gms/internal/ads/vN;

    .line 55
    .line 56
    new-instance v4, Lcom/google/android/gms/internal/ads/aO;

    .line 57
    .line 58
    aget-object v5, p2, v0

    .line 59
    .line 60
    invoke-direct {v4, v5, v1, v2}, Lcom/google/android/gms/internal/ads/aO;-><init>(Lcom/google/android/gms/internal/ads/vN;J)V

    .line 61
    .line 62
    .line 63
    aput-object v4, v3, v0

    .line 64
    .line 65
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CN;->M:[Lcom/google/android/gms/internal/ads/vN;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/vN;->a(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    const/4 v0, 0x1

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/CN;->M:[Lcom/google/android/gms/internal/ads/vN;

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    if-ge v0, v2, :cond_1

    .line 15
    .line 16
    aget-object v1, v1, v0

    .line 17
    .line 18
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/vN;->a(J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    cmp-long v3, v1, p1

    .line 23
    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string p2, "Unexpected child seekToUs result."

    .line 32
    .line 33
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    return-wide p1
.end method

.method public final b(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CN;->N:Lcom/google/android/gms/internal/ads/mN;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/mN;->b(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/VN;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/vN;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/CN;->K:Lcom/google/android/gms/internal/ads/uN;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/uN;->c(Lcom/google/android/gms/internal/ads/VN;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/uN;J)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/CN;->K:Lcom/google/android/gms/internal/ads/uN;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/CN;->I:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CN;->G:[Lcom/google/android/gms/internal/ads/vN;

    .line 6
    .line 7
    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    :goto_0
    array-length v1, v0

    .line 12
    if-ge p1, v1, :cond_0

    .line 13
    .line 14
    aget-object v1, v0, p1

    .line 15
    .line 16
    invoke-interface {v1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/vN;->d(Lcom/google/android/gms/internal/ads/uN;J)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 p1, p1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public final e(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CN;->M:[Lcom/google/android/gms/internal/ads/vN;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-interface {v3, p1, p2}, Lcom/google/android/gms/internal/ads/vN;->e(J)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/vN;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CN;->I:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/CN;->G:[Lcom/google/android/gms/internal/ads/vN;

    .line 17
    .line 18
    array-length v3, v2

    .line 19
    if-ge v0, v3, :cond_1

    .line 20
    .line 21
    aget-object v2, v2, v0

    .line 22
    .line 23
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/vN;->zzi()Lcom/google/android/gms/internal/ads/bO;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget v2, v2, Lcom/google/android/gms/internal/ads/bO;->a:I

    .line 28
    .line 29
    add-int/2addr v1, v2

    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-array v0, v1, [Lcom/google/android/gms/internal/ads/Ve;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    :goto_1
    array-length v4, v2

    .line 38
    if-ge v1, v4, :cond_5

    .line 39
    .line 40
    aget-object v4, v2, v1

    .line 41
    .line 42
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/vN;->zzi()Lcom/google/android/gms/internal/ads/bO;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    iget v5, v4, Lcom/google/android/gms/internal/ads/bO;->a:I

    .line 47
    .line 48
    const/4 v6, 0x0

    .line 49
    :goto_2
    if-ge v6, v5, :cond_4

    .line 50
    .line 51
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/bO;->a(I)Lcom/google/android/gms/internal/ads/Ve;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    iget v8, v7, Lcom/google/android/gms/internal/ads/Ve;->a:I

    .line 56
    .line 57
    new-array v8, v8, [Lcom/google/android/gms/internal/ads/p0;

    .line 58
    .line 59
    const/4 v9, 0x0

    .line 60
    :goto_3
    iget v10, v7, Lcom/google/android/gms/internal/ads/Ve;->a:I

    .line 61
    .line 62
    const-string v11, ":"

    .line 63
    .line 64
    if-ge v9, v10, :cond_3

    .line 65
    .line 66
    iget-object v10, v7, Lcom/google/android/gms/internal/ads/Ve;->d:[Lcom/google/android/gms/internal/ads/p0;

    .line 67
    .line 68
    aget-object v10, v10, v9

    .line 69
    .line 70
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/p0;->b()Lcom/google/android/gms/internal/ads/K;

    .line 71
    .line 72
    .line 73
    move-result-object v12

    .line 74
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/p0;->a:Ljava/lang/String;

    .line 75
    .line 76
    if-nez v10, :cond_2

    .line 77
    .line 78
    const-string v10, ""

    .line 79
    .line 80
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    iput-object v10, v12, Lcom/google/android/gms/internal/ads/K;->a:Ljava/lang/String;

    .line 99
    .line 100
    new-instance v10, Lcom/google/android/gms/internal/ads/p0;

    .line 101
    .line 102
    invoke-direct {v10, v12}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 103
    .line 104
    .line 105
    aput-object v10, v8, v9

    .line 106
    .line 107
    add-int/lit8 v9, v9, 0x1

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_3
    new-instance v9, Lcom/google/android/gms/internal/ads/Ve;

    .line 111
    .line 112
    new-instance v10, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v11, v7, Lcom/google/android/gms/internal/ads/Ve;->b:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    invoke-direct {v9, v10, v8}, Lcom/google/android/gms/internal/ads/Ve;-><init>(Ljava/lang/String;[Lcom/google/android/gms/internal/ads/p0;)V

    .line 133
    .line 134
    .line 135
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/CN;->J:Ljava/util/HashMap;

    .line 136
    .line 137
    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    add-int/lit8 v7, v3, 0x1

    .line 141
    .line 142
    aput-object v9, v0, v3

    .line 143
    .line 144
    add-int/lit8 v6, v6, 0x1

    .line 145
    .line 146
    move v3, v7

    .line 147
    goto :goto_2

    .line 148
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/bO;

    .line 152
    .line 153
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/bO;-><init>([Lcom/google/android/gms/internal/ads/Ve;)V

    .line 154
    .line 155
    .line 156
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/CN;->L:Lcom/google/android/gms/internal/ads/bO;

    .line 157
    .line 158
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/CN;->K:Lcom/google/android/gms/internal/ads/uN;

    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/uN;->f(Lcom/google/android/gms/internal/ads/vN;)V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method public final i(JLcom/google/android/gms/internal/ads/ZK;)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CN;->M:[Lcom/google/android/gms/internal/ads/vN;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-lez v1, :cond_0

    .line 6
    .line 7
    aget-object v0, v0, v2

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CN;->G:[Lcom/google/android/gms/internal/ads/vN;

    .line 11
    .line 12
    aget-object v0, v0, v2

    .line 13
    .line 14
    :goto_0
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/vN;->i(JLcom/google/android/gms/internal/ads/ZK;)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    return-wide p1
.end method

.method public final j(Lcom/google/android/gms/internal/ads/EK;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CN;->I:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-ge v3, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Lcom/google/android/gms/internal/ads/vN;

    .line 22
    .line 23
    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/VN;->j(Lcom/google/android/gms/internal/ads/EK;)Z

    .line 24
    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return v2

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CN;->N:Lcom/google/android/gms/internal/ads/mN;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/mN;->j(Lcom/google/android/gms/internal/ads/EK;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1
.end method

.method public final k([Lcom/google/android/gms/internal/ads/uO;[Z[Lcom/google/android/gms/internal/ads/UN;[ZJ)J
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    array-length v3, v1

    .line 8
    new-array v4, v3, [I

    .line 9
    .line 10
    new-array v3, v3, [I

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    :goto_0
    array-length v7, v1

    .line 15
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/CN;->H:Ljava/util/IdentityHashMap;

    .line 16
    .line 17
    if-ge v6, v7, :cond_3

    .line 18
    .line 19
    aget-object v7, v2, v6

    .line 20
    .line 21
    if-nez v7, :cond_0

    .line 22
    .line 23
    const/4 v9, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {v8, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    move-object v9, v7

    .line 30
    check-cast v9, Ljava/lang/Integer;

    .line 31
    .line 32
    :goto_1
    const/4 v7, -0x1

    .line 33
    if-nez v9, :cond_1

    .line 34
    .line 35
    const/4 v8, -0x1

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    :goto_2
    aput v8, v4, v6

    .line 42
    .line 43
    aget-object v8, v1, v6

    .line 44
    .line 45
    if-eqz v8, :cond_2

    .line 46
    .line 47
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/uO;->zze()Lcom/google/android/gms/internal/ads/Ve;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/Ve;->b:Ljava/lang/String;

    .line 52
    .line 53
    const-string v8, ":"

    .line 54
    .line 55
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    aput v7, v3, v6

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_2
    aput v7, v3, v6

    .line 71
    .line 72
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {v8}, Ljava/util/IdentityHashMap;->clear()V

    .line 76
    .line 77
    .line 78
    new-array v6, v7, [Lcom/google/android/gms/internal/ads/UN;

    .line 79
    .line 80
    new-array v15, v7, [Lcom/google/android/gms/internal/ads/UN;

    .line 81
    .line 82
    new-array v14, v7, [Lcom/google/android/gms/internal/ads/uO;

    .line 83
    .line 84
    new-instance v13, Ljava/util/ArrayList;

    .line 85
    .line 86
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/CN;->G:[Lcom/google/android/gms/internal/ads/vN;

    .line 87
    .line 88
    array-length v10, v12

    .line 89
    invoke-direct {v13, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    .line 91
    .line 92
    move-wide/from16 v17, p5

    .line 93
    .line 94
    const/4 v11, 0x0

    .line 95
    :goto_4
    array-length v10, v12

    .line 96
    if-ge v11, v10, :cond_e

    .line 97
    .line 98
    const/4 v10, 0x0

    .line 99
    :goto_5
    array-length v5, v1

    .line 100
    if-ge v10, v5, :cond_6

    .line 101
    .line 102
    aget v5, v4, v10

    .line 103
    .line 104
    if-ne v5, v11, :cond_4

    .line 105
    .line 106
    aget-object v5, v2, v10

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_4
    const/4 v5, 0x0

    .line 110
    :goto_6
    aput-object v5, v15, v10

    .line 111
    .line 112
    aget v5, v3, v10

    .line 113
    .line 114
    if-ne v5, v11, :cond_5

    .line 115
    .line 116
    aget-object v5, v1, v10

    .line 117
    .line 118
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/uO;->zze()Lcom/google/android/gms/internal/ads/Ve;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    move-object/from16 v16, v13

    .line 126
    .line 127
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/CN;->J:Ljava/util/HashMap;

    .line 128
    .line 129
    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    check-cast v9, Lcom/google/android/gms/internal/ads/Ve;

    .line 134
    .line 135
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    new-instance v13, Lcom/google/android/gms/internal/ads/BN;

    .line 139
    .line 140
    invoke-direct {v13, v5, v9}, Lcom/google/android/gms/internal/ads/BN;-><init>(Lcom/google/android/gms/internal/ads/uO;Lcom/google/android/gms/internal/ads/Ve;)V

    .line 141
    .line 142
    .line 143
    aput-object v13, v14, v10

    .line 144
    .line 145
    const/4 v5, 0x0

    .line 146
    goto :goto_7

    .line 147
    :cond_5
    move-object/from16 v16, v13

    .line 148
    .line 149
    const/4 v5, 0x0

    .line 150
    aput-object v5, v14, v10

    .line 151
    .line 152
    :goto_7
    add-int/lit8 v10, v10, 0x1

    .line 153
    .line 154
    move-object/from16 v13, v16

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_6
    move-object/from16 v16, v13

    .line 158
    .line 159
    const/4 v5, 0x0

    .line 160
    aget-object v10, v12, v11

    .line 161
    .line 162
    move v9, v11

    .line 163
    move-object v11, v14

    .line 164
    move-object/from16 v19, v12

    .line 165
    .line 166
    move-object/from16 v12, p2

    .line 167
    .line 168
    move-object/from16 v5, v16

    .line 169
    .line 170
    move-object v13, v15

    .line 171
    move-object/from16 v20, v14

    .line 172
    .line 173
    move-object/from16 v14, p4

    .line 174
    .line 175
    move-object/from16 v21, v15

    .line 176
    .line 177
    move-wide/from16 v15, v17

    .line 178
    .line 179
    invoke-interface/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/vN;->k([Lcom/google/android/gms/internal/ads/uO;[Z[Lcom/google/android/gms/internal/ads/UN;[ZJ)J

    .line 180
    .line 181
    .line 182
    move-result-wide v10

    .line 183
    if-nez v9, :cond_7

    .line 184
    .line 185
    move-wide/from16 v17, v10

    .line 186
    .line 187
    goto :goto_8

    .line 188
    :cond_7
    cmp-long v12, v10, v17

    .line 189
    .line 190
    if-nez v12, :cond_d

    .line 191
    .line 192
    :goto_8
    const/4 v10, 0x0

    .line 193
    const/4 v11, 0x0

    .line 194
    :goto_9
    array-length v12, v1

    .line 195
    if-ge v10, v12, :cond_b

    .line 196
    .line 197
    aget v12, v3, v10

    .line 198
    .line 199
    const/4 v13, 0x1

    .line 200
    if-ne v12, v9, :cond_8

    .line 201
    .line 202
    aget-object v11, v21, v10

    .line 203
    .line 204
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    aput-object v11, v6, v10

    .line 208
    .line 209
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v12

    .line 213
    invoke-virtual {v8, v11, v12}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    const/4 v11, 0x1

    .line 217
    goto :goto_b

    .line 218
    :cond_8
    aget v12, v4, v10

    .line 219
    .line 220
    if-ne v12, v9, :cond_a

    .line 221
    .line 222
    aget-object v12, v21, v10

    .line 223
    .line 224
    if-nez v12, :cond_9

    .line 225
    .line 226
    goto :goto_a

    .line 227
    :cond_9
    const/4 v13, 0x0

    .line 228
    :goto_a
    invoke-static {v13}, Lo3/r;->M(Z)V

    .line 229
    .line 230
    .line 231
    :cond_a
    :goto_b
    add-int/lit8 v10, v10, 0x1

    .line 232
    .line 233
    goto :goto_9

    .line 234
    :cond_b
    if-eqz v11, :cond_c

    .line 235
    .line 236
    aget-object v10, v19, v9

    .line 237
    .line 238
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    :cond_c
    add-int/lit8 v11, v9, 0x1

    .line 242
    .line 243
    move-object v13, v5

    .line 244
    move-object/from16 v12, v19

    .line 245
    .line 246
    move-object/from16 v14, v20

    .line 247
    .line 248
    move-object/from16 v15, v21

    .line 249
    .line 250
    const/4 v5, 0x0

    .line 251
    goto/16 :goto_4

    .line 252
    .line 253
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 254
    .line 255
    const-string v2, "Children enabled at different positions."

    .line 256
    .line 257
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    throw v1

    .line 261
    :cond_e
    move-object v5, v13

    .line 262
    const/4 v1, 0x0

    .line 263
    invoke-static {v6, v1, v2, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    .line 265
    .line 266
    new-array v1, v1, [Lcom/google/android/gms/internal/ads/vN;

    .line 267
    .line 268
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    check-cast v1, [Lcom/google/android/gms/internal/ads/vN;

    .line 273
    .line 274
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/CN;->M:[Lcom/google/android/gms/internal/ads/vN;

    .line 275
    .line 276
    new-instance v1, Lcom/google/android/gms/internal/ads/u1;

    .line 277
    .line 278
    const/16 v2, 0x18

    .line 279
    .line 280
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/u1;-><init>(I)V

    .line 281
    .line 282
    .line 283
    invoke-static {v5, v1}, Lcom/google/android/gms/internal/ads/Cw;->F0(Ljava/util/List;Lcom/google/android/gms/internal/ads/u1;)Ljava/util/AbstractList;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    new-instance v2, Lcom/google/android/gms/internal/ads/mN;

    .line 288
    .line 289
    invoke-direct {v2, v5, v1}, Lcom/google/android/gms/internal/ads/mN;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 290
    .line 291
    .line 292
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/CN;->N:Lcom/google/android/gms/internal/ads/mN;

    .line 293
    .line 294
    return-wide v17
.end method

.method public final x()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/CN;->G:[Lcom/google/android/gms/internal/ads/vN;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/vN;->x()V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public final zzb()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CN;->N:Lcom/google/android/gms/internal/ads/mN;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mN;->zzb()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final zzc()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CN;->N:Lcom/google/android/gms/internal/ads/mN;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mN;->zzc()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final zzd()J
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/CN;->M:[Lcom/google/android/gms/internal/ads/vN;

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, 0x0

    .line 7
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    move-wide v7, v4

    .line 13
    const/4 v6, 0x0

    .line 14
    :goto_0
    if-ge v6, v2, :cond_8

    .line 15
    .line 16
    aget-object v9, v1, v6

    .line 17
    .line 18
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/vN;->zzd()J

    .line 19
    .line 20
    .line 21
    move-result-wide v10

    .line 22
    const-string v12, "Unexpected child seekToUs result."

    .line 23
    .line 24
    cmp-long v13, v10, v4

    .line 25
    .line 26
    if-eqz v13, :cond_5

    .line 27
    .line 28
    cmp-long v13, v7, v4

    .line 29
    .line 30
    if-nez v13, :cond_3

    .line 31
    .line 32
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/CN;->M:[Lcom/google/android/gms/internal/ads/vN;

    .line 33
    .line 34
    array-length v8, v7

    .line 35
    const/4 v13, 0x0

    .line 36
    :goto_1
    if-ge v13, v8, :cond_2

    .line 37
    .line 38
    aget-object v14, v7, v13

    .line 39
    .line 40
    if-ne v14, v9, :cond_0

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_0
    invoke-interface {v14, v10, v11}, Lcom/google/android/gms/internal/ads/vN;->a(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v14

    .line 47
    cmp-long v16, v14, v10

    .line 48
    .line 49
    if-nez v16, :cond_1

    .line 50
    .line 51
    add-int/lit8 v13, v13, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    invoke-direct {v1, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v1

    .line 60
    :cond_2
    :goto_2
    move-wide v7, v10

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    cmp-long v9, v10, v7

    .line 63
    .line 64
    if-nez v9, :cond_4

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    const-string v2, "Conflicting discontinuities."

    .line 70
    .line 71
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v1

    .line 75
    :cond_5
    cmp-long v10, v7, v4

    .line 76
    .line 77
    if-eqz v10, :cond_7

    .line 78
    .line 79
    invoke-interface {v9, v7, v8}, Lcom/google/android/gms/internal/ads/vN;->a(J)J

    .line 80
    .line 81
    .line 82
    move-result-wide v9

    .line 83
    cmp-long v11, v9, v7

    .line 84
    .line 85
    if-nez v11, :cond_6

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    invoke-direct {v1, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v1

    .line 94
    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_8
    return-wide v7
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/bO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CN;->L:Lcom/google/android/gms/internal/ads/bO;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final zzp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/CN;->N:Lcom/google/android/gms/internal/ads/mN;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mN;->zzp()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
