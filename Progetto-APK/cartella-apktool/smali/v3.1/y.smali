.class public final Lv3/y;
.super Lx3/a;
.source "SourceFile"


# instance fields
.field public final a:Lv3/x;

.field public final b:Lcom/google/android/gms/internal/ads/In;

.field public final c:Z

.field public final d:I

.field public final e:J

.field public final f:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lv3/x;ZILjava/lang/Boolean;Lcom/google/android/gms/internal/ads/In;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv3/y;->a:Lv3/x;

    .line 5
    .line 6
    iput-boolean p2, p0, Lv3/y;->c:Z

    .line 7
    .line 8
    iput p3, p0, Lv3/y;->d:I

    .line 9
    .line 10
    iput-object p4, p0, Lv3/y;->f:Ljava/lang/Boolean;

    .line 11
    .line 12
    iput-object p5, p0, Lv3/y;->b:Lcom/google/android/gms/internal/ads/In;

    .line 13
    .line 14
    sget-object p1, Lk3/l;->A:Lk3/l;

    .line 15
    .line 16
    iget-object p1, p1, Lk3/l;->j:LP3/b;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    iput-wide p1, p0, Lv3/y;->e:J

    .line 26
    .line 27
    return-void
.end method

.method public static c()J
    .locals 4

    .line 1
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 2
    .line 3
    iget-object v0, v0, Lk3/l;->j:LP3/b;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->h9:Lcom/google/android/gms/internal/ads/J7;

    .line 13
    .line 14
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 15
    .line 16
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Long;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    add-long/2addr v2, v0

    .line 29
    return-wide v2
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 10

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [Landroid/util/Pair;

    .line 4
    .line 5
    new-instance v1, Landroid/util/Pair;

    .line 6
    .line 7
    const-string v2, "sgf_reason"

    .line 8
    .line 9
    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    new-instance v1, Landroid/util/Pair;

    .line 16
    .line 17
    const-string v2, "se"

    .line 18
    .line 19
    const-string v3, "query_g"

    .line 20
    .line 21
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    aput-object v1, v0, v2

    .line 26
    .line 27
    new-instance v1, Landroid/util/Pair;

    .line 28
    .line 29
    const-string v3, "BANNER"

    .line 30
    .line 31
    const-string v4, "ad_format"

    .line 32
    .line 33
    invoke-direct {v1, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x2

    .line 37
    aput-object v1, v0, v3

    .line 38
    .line 39
    new-instance v1, Landroid/util/Pair;

    .line 40
    .line 41
    const/4 v3, 0x6

    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const-string v5, "rtype"

    .line 47
    .line 48
    invoke-direct {v1, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const/4 v4, 0x3

    .line 52
    aput-object v1, v0, v4

    .line 53
    .line 54
    new-instance v1, Landroid/util/Pair;

    .line 55
    .line 56
    const-string v4, "scar"

    .line 57
    .line 58
    const-string v5, "true"

    .line 59
    .line 60
    invoke-direct {v1, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    const/4 v4, 0x4

    .line 64
    aput-object v1, v0, v4

    .line 65
    .line 66
    new-instance v1, Landroid/util/Pair;

    .line 67
    .line 68
    sget-object v4, Lk3/l;->A:Lk3/l;

    .line 69
    .line 70
    iget-object v4, v4, Lk3/l;->j:LP3/b;

    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 76
    .line 77
    .line 78
    move-result-wide v4

    .line 79
    iget-wide v6, p0, Lv3/y;->e:J

    .line 80
    .line 81
    sub-long/2addr v4, v6

    .line 82
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    const-string v5, "lat_ms"

    .line 87
    .line 88
    invoke-direct {v1, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    const/4 v4, 0x5

    .line 92
    aput-object v1, v0, v4

    .line 93
    .line 94
    new-instance v1, Landroid/util/Pair;

    .line 95
    .line 96
    iget v4, p0, Lv3/y;->d:I

    .line 97
    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    const-string v5, "sgpc_rn"

    .line 103
    .line 104
    invoke-direct {v1, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    aput-object v1, v0, v3

    .line 108
    .line 109
    new-instance v1, Landroid/util/Pair;

    .line 110
    .line 111
    iget-object v3, p0, Lv3/y;->f:Ljava/lang/Boolean;

    .line 112
    .line 113
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    const-string v4, "sgpc_lsu"

    .line 118
    .line 119
    invoke-direct {v1, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    const/4 v3, 0x7

    .line 123
    aput-object v1, v0, v3

    .line 124
    .line 125
    new-instance v1, Landroid/util/Pair;

    .line 126
    .line 127
    iget-boolean v3, p0, Lv3/y;->c:Z

    .line 128
    .line 129
    if-eq v2, v3, :cond_0

    .line 130
    .line 131
    const-string v2, "0"

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_0
    const-string v2, "1"

    .line 135
    .line 136
    :goto_0
    const-string v4, "tpc"

    .line 137
    .line 138
    invoke-direct {v1, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    const/16 v2, 0x8

    .line 142
    .line 143
    aput-object v1, v0, v2

    .line 144
    .line 145
    const-string v1, "sgpcf"

    .line 146
    .line 147
    iget-object v2, p0, Lv3/y;->b:Lcom/google/android/gms/internal/ads/In;

    .line 148
    .line 149
    invoke-static {v2, v1, v0}, LU2/m;->m(Lcom/google/android/gms/internal/ads/In;Ljava/lang/String;[Landroid/util/Pair;)V

    .line 150
    .line 151
    .line 152
    new-instance v0, Lv3/z;

    .line 153
    .line 154
    invoke-static {}, Lv3/y;->c()J

    .line 155
    .line 156
    .line 157
    move-result-wide v7

    .line 158
    iget v9, p0, Lv3/y;->d:I

    .line 159
    .line 160
    const/4 v5, 0x0

    .line 161
    move-object v4, v0

    .line 162
    move-object v6, p1

    .line 163
    invoke-direct/range {v4 .. v9}, Lv3/z;-><init>(LC2/g;Ljava/lang/String;JI)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lv3/y;->a:Lv3/x;

    .line 167
    .line 168
    invoke-virtual {p1, v3, v0}, Lv3/x;->a(ZLv3/z;)V

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method public final b(LC2/g;)V
    .locals 10

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [Landroid/util/Pair;

    .line 4
    .line 5
    new-instance v1, Landroid/util/Pair;

    .line 6
    .line 7
    const-string v2, "se"

    .line 8
    .line 9
    const-string v3, "query_g"

    .line 10
    .line 11
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object v1, v0, v2

    .line 16
    .line 17
    new-instance v1, Landroid/util/Pair;

    .line 18
    .line 19
    const-string v2, "BANNER"

    .line 20
    .line 21
    const-string v3, "ad_format"

    .line 22
    .line 23
    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    new-instance v1, Landroid/util/Pair;

    .line 30
    .line 31
    const/4 v3, 0x6

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const-string v5, "rtype"

    .line 37
    .line 38
    invoke-direct {v1, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    const/4 v4, 0x2

    .line 42
    aput-object v1, v0, v4

    .line 43
    .line 44
    new-instance v1, Landroid/util/Pair;

    .line 45
    .line 46
    const-string v4, "scar"

    .line 47
    .line 48
    const-string v5, "true"

    .line 49
    .line 50
    invoke-direct {v1, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const/4 v4, 0x3

    .line 54
    aput-object v1, v0, v4

    .line 55
    .line 56
    new-instance v1, Landroid/util/Pair;

    .line 57
    .line 58
    sget-object v4, Lk3/l;->A:Lk3/l;

    .line 59
    .line 60
    iget-object v4, v4, Lk3/l;->j:LP3/b;

    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 66
    .line 67
    .line 68
    move-result-wide v4

    .line 69
    iget-wide v6, p0, Lv3/y;->e:J

    .line 70
    .line 71
    sub-long/2addr v4, v6

    .line 72
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    const-string v5, "lat_ms"

    .line 77
    .line 78
    invoke-direct {v1, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    const/4 v4, 0x4

    .line 82
    aput-object v1, v0, v4

    .line 83
    .line 84
    new-instance v1, Landroid/util/Pair;

    .line 85
    .line 86
    iget v4, p0, Lv3/y;->d:I

    .line 87
    .line 88
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const-string v5, "sgpc_rn"

    .line 93
    .line 94
    invoke-direct {v1, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    const/4 v4, 0x5

    .line 98
    aput-object v1, v0, v4

    .line 99
    .line 100
    new-instance v1, Landroid/util/Pair;

    .line 101
    .line 102
    iget-object v4, p0, Lv3/y;->f:Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    const-string v5, "sgpc_lsu"

    .line 109
    .line 110
    invoke-direct {v1, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    aput-object v1, v0, v3

    .line 114
    .line 115
    new-instance v1, Landroid/util/Pair;

    .line 116
    .line 117
    iget-boolean v3, p0, Lv3/y;->c:Z

    .line 118
    .line 119
    if-eq v2, v3, :cond_0

    .line 120
    .line 121
    const-string v2, "0"

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_0
    const-string v2, "1"

    .line 125
    .line 126
    :goto_0
    const-string v4, "tpc"

    .line 127
    .line 128
    invoke-direct {v1, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    const/4 v2, 0x7

    .line 132
    aput-object v1, v0, v2

    .line 133
    .line 134
    const-string v1, "sgpcs"

    .line 135
    .line 136
    iget-object v2, p0, Lv3/y;->b:Lcom/google/android/gms/internal/ads/In;

    .line 137
    .line 138
    invoke-static {v2, v1, v0}, LU2/m;->m(Lcom/google/android/gms/internal/ads/In;Ljava/lang/String;[Landroid/util/Pair;)V

    .line 139
    .line 140
    .line 141
    new-instance v0, Lv3/z;

    .line 142
    .line 143
    invoke-static {}, Lv3/y;->c()J

    .line 144
    .line 145
    .line 146
    move-result-wide v7

    .line 147
    iget v9, p0, Lv3/y;->d:I

    .line 148
    .line 149
    const-string v6, ""

    .line 150
    .line 151
    move-object v4, v0

    .line 152
    move-object v5, p1

    .line 153
    invoke-direct/range {v4 .. v9}, Lv3/z;-><init>(LC2/g;Ljava/lang/String;JI)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lv3/y;->a:Lv3/x;

    .line 157
    .line 158
    invoke-virtual {p1, v3, v0}, Lv3/x;->a(ZLv3/z;)V

    .line 159
    .line 160
    .line 161
    return-void
.end method
