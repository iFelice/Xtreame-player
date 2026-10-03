.class public final Lcom/google/android/gms/internal/measurement/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm2/o;

.field public b:Lm2/i;

.field public final c:Lcom/google/android/gms/internal/ads/bD;

.field public final d:Lcom/google/android/gms/internal/atv_ads_framework/x0;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lm2/o;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lm2/o;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/E;->a:Lm2/o;

    .line 12
    .line 13
    iget-object v1, v0, Lm2/o;->H:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lm2/i;

    .line 16
    .line 17
    invoke-virtual {v1}, Lm2/i;->r()Lm2/i;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/E;->b:Lm2/i;

    .line 22
    .line 23
    new-instance v1, Lcom/google/android/gms/internal/ads/bD;

    .line 24
    .line 25
    const/16 v2, 0xb

    .line 26
    .line 27
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/bD;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/E;->c:Lcom/google/android/gms/internal/ads/bD;

    .line 31
    .line 32
    new-instance v1, Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 33
    .line 34
    const/16 v2, 0x12

    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/atv_ads_framework/x0;-><init>(I)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/E;->d:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 40
    .line 41
    new-instance v1, Lcom/google/android/gms/internal/measurement/a;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/measurement/a;-><init>(Lcom/google/android/gms/internal/measurement/E;I)V

    .line 45
    .line 46
    .line 47
    iget-object v2, v0, Lm2/o;->J:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v2, Le0/u;

    .line 50
    .line 51
    iget-object v2, v2, Le0/u;->a:Ljava/util/Map;

    .line 52
    .line 53
    const-string v3, "internal.registerCallback"

    .line 54
    .line 55
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/google/android/gms/internal/measurement/a;

    .line 59
    .line 60
    const/4 v2, 0x1

    .line 61
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/measurement/a;-><init>(Lcom/google/android/gms/internal/measurement/E;I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, v0, Lm2/o;->J:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v0, Le0/u;

    .line 67
    .line 68
    iget-object v0, v0, Le0/u;->a:Ljava/util/Map;

    .line 69
    .line 70
    const-string v2, "internal.eventLogger"

    .line 71
    .line 72
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/B1;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/E;->a:Lm2/o;

    .line 3
    .line 4
    iget-object v2, v1, Lm2/o;->H:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v2, Lm2/i;

    .line 7
    .line 8
    invoke-virtual {v2}, Lm2/i;->r()Lm2/i;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/E;->b:Lm2/i;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/B1;->s()Lcom/google/android/gms/internal/measurement/y2;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/E;->b:Lm2/i;

    .line 19
    .line 20
    new-array v4, v0, [Lcom/google/android/gms/internal/measurement/D1;

    .line 21
    .line 22
    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, [Lcom/google/android/gms/internal/measurement/D1;

    .line 27
    .line 28
    invoke-virtual {v1, v3, v2}, Lm2/o;->v(Lm2/i;[Lcom/google/android/gms/internal/measurement/D1;)Lcom/google/android/gms/internal/measurement/n;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    instance-of v2, v2, Lcom/google/android/gms/internal/measurement/f;

    .line 33
    .line 34
    if-nez v2, :cond_6

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/B1;->q()Lcom/google/android/gms/internal/measurement/z1;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z1;->t()Lcom/google/android/gms/internal/measurement/y2;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_5

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/google/android/gms/internal/measurement/A1;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/A1;->s()Lcom/google/android/gms/internal/measurement/y2;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/A1;->r()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_0

    .line 77
    .line 78
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Lcom/google/android/gms/internal/measurement/D1;

    .line 83
    .line 84
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/E;->b:Lm2/i;

    .line 85
    .line 86
    const/4 v6, 0x1

    .line 87
    new-array v6, v6, [Lcom/google/android/gms/internal/measurement/D1;

    .line 88
    .line 89
    aput-object v4, v6, v0

    .line 90
    .line 91
    invoke-virtual {v1, v5, v6}, Lm2/o;->v(Lm2/i;[Lcom/google/android/gms/internal/measurement/D1;)Lcom/google/android/gms/internal/measurement/n;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/k;

    .line 96
    .line 97
    if-eqz v5, :cond_4

    .line 98
    .line 99
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/E;->b:Lm2/i;

    .line 100
    .line 101
    invoke-virtual {v5, v2}, Lm2/i;->B(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-nez v6, :cond_1

    .line 106
    .line 107
    const/4 v5, 0x0

    .line 108
    goto :goto_1

    .line 109
    :cond_1
    invoke-virtual {v5, v2}, Lm2/i;->x(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    instance-of v6, v5, Lcom/google/android/gms/internal/measurement/h;

    .line 114
    .line 115
    if-eqz v6, :cond_3

    .line 116
    .line 117
    check-cast v5, Lcom/google/android/gms/internal/measurement/h;

    .line 118
    .line 119
    :goto_1
    if-eqz v5, :cond_2

    .line 120
    .line 121
    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/E;->b:Lm2/i;

    .line 122
    .line 123
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/internal/measurement/h;->a(Lm2/i;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/n;

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :catchall_0
    move-exception p1

    .line 132
    goto :goto_2

    .line 133
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 134
    .line 135
    const-string v0, "Rule function is undefined: "

    .line 136
    .line 137
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p1

    .line 149
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 150
    .line 151
    const-string v0, "Invalid function name: "

    .line 152
    .line 153
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p1

    .line 165
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 166
    .line 167
    const-string v0, "Invalid rule definition"

    .line 168
    .line 169
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p1

    .line 173
    :cond_5
    return-void

    .line 174
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 175
    .line 176
    const-string v0, "Program loading failed"

    .line 177
    .line 178
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/measurement/O;

    .line 183
    .line 184
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    throw v0
.end method

.method public final b(Lcom/google/android/gms/internal/measurement/b;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/E;->c:Lcom/google/android/gms/internal/ads/bD;

    .line 2
    .line 3
    :try_start_0
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/b;->a()Lcom/google/android/gms/internal/measurement/b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/E;->a:Lm2/o;

    .line 19
    .line 20
    iget-object p1, p1, Lm2/o;->I:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Lm2/i;

    .line 23
    .line 24
    const-string v1, "runtime.counter"

    .line 25
    .line 26
    new-instance v2, Lcom/google/android/gms/internal/measurement/g;

    .line 27
    .line 28
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1, v2}, Lm2/i;->A(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/E;->d:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/E;->b:Lm2/i;

    .line 43
    .line 44
    invoke-virtual {v1}, Lm2/i;->r()Lm2/i;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->G(Lm2/i;Lcom/google/android/gms/internal/ads/bD;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Lcom/google/android/gms/internal/measurement/b;

    .line 54
    .line 55
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v1, Lcom/google/android/gms/internal/measurement/b;

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/b;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    const/4 v1, 0x1

    .line 64
    xor-int/2addr p1, v1

    .line 65
    if-nez p1, :cond_1

    .line 66
    .line 67
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    xor-int/2addr p1, v1

    .line 76
    if-eqz p1, :cond_0

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const/4 p1, 0x0

    .line 80
    return p1

    .line 81
    :cond_1
    :goto_0
    return v1

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    new-instance v0, Lcom/google/android/gms/internal/measurement/O;

    .line 84
    .line 85
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    throw v0
.end method
