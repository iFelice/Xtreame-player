.class public final Lcom/google/android/gms/internal/ads/An;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Zj;
.implements Lcom/google/android/gms/internal/ads/Ij;
.implements Lcom/google/android/gms/internal/ads/sj;
.implements Lcom/google/android/gms/internal/ads/Sk;


# instance fields
.field public final G:Lcom/google/android/gms/internal/ads/Cn;

.field public final H:Lcom/google/android/gms/internal/ads/In;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Cn;Lcom/google/android/gms/internal/ads/In;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/An;->G:Lcom/google/android/gms/internal/ads/Cn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/An;->H:Lcom/google/android/gms/internal/ads/In;

    return-void
.end method


# virtual methods
.method public final C(Lcom/google/android/gms/internal/ads/Tv;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/An;->G:Lcom/google/android/gms/internal/ads/Cn;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/Tv;->b:Lcom/google/android/gms/internal/ads/xc;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/xc;->H:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Tv;->b:Lcom/google/android/gms/internal/ads/xc;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/xc;->H:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Ljava/util/List;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/google/android/gms/internal/ads/Ov;

    .line 30
    .line 31
    iget v2, v1, Lcom/google/android/gms/internal/ads/Ov;->b:I

    .line 32
    .line 33
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Ov;->a(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string v3, "ad_format"

    .line 38
    .line 39
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/Cn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget v1, v1, Lcom/google/android/gms/internal/ads/Ov;->b:I

    .line 43
    .line 44
    const/4 v2, 0x6

    .line 45
    if-ne v1, v2, :cond_1

    .line 46
    .line 47
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Cn;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    .line 49
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Cn;->b:Lcom/google/android/gms/internal/ads/oe;

    .line 50
    .line 51
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/oe;->g:Z

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    if-eq v3, v2, :cond_0

    .line 55
    .line 56
    const-string v2, "0"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const-string v2, "1"

    .line 60
    .line 61
    :goto_0
    const-string v3, "as"

    .line 62
    .line 63
    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/xc;->I:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Lcom/google/android/gms/internal/ads/Qv;

    .line 69
    .line 70
    const-string v1, "gqi"

    .line 71
    .line 72
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Qv;->b:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Cn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    const-wide/16 v4, 0x0

    .line 29
    .line 30
    cmp-long v6, v2, v4

    .line 31
    .line 32
    if-ltz v6, :cond_1

    .line 33
    .line 34
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/An;->G:Lcom/google/android/gms/internal/ads/Cn;

    .line 35
    .line 36
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/ads/Cn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->w6:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/An;->G:Lcom/google/android/gms/internal/ads/Cn;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Cn;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    .line 24
    const-string v2, "action"

    .line 25
    .line 26
    const-string v3, "sgf"

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string v1, "sgf_reason"

    .line 32
    .line 33
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Cn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/Cn;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/An;->H:Lcom/google/android/gms/internal/ads/In;

    .line 40
    .line 41
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/Jn;->a(Ljava/util/Map;Z)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final c(Lv3/r;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->w6:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string v0, "sgs"

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/An;->H:Lcom/google/android/gms/internal/ads/In;

    .line 24
    .line 25
    const-string v4, "action"

    .line 26
    .line 27
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/An;->G:Lcom/google/android/gms/internal/ads/Cn;

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    iget-object p1, v5, Lcom/google/android/gms/internal/ads/Cn;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    .line 33
    invoke-virtual {p1, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    iget-object p1, v5, Lcom/google/android/gms/internal/ads/Cn;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    const-string v0, "request_id"

    .line 39
    .line 40
    const-string v1, "-1"

    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/ads/Jn;->a(Ljava/util/Map;Z)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    iget-object v6, p1, Lv3/r;->c:Lcom/google/android/gms/internal/ads/Wc;

    .line 50
    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    sget-object v7, Lcom/google/android/gms/internal/ads/Bn;->d:Lcom/google/android/gms/internal/ads/PA;

    .line 54
    .line 55
    iget-object v8, v6, Lcom/google/android/gms/internal/ads/Wc;->S:Landroid/os/Bundle;

    .line 56
    .line 57
    invoke-virtual {p0, v8, v7}, Lcom/google/android/gms/internal/ads/An;->d(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/PA;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    .line 61
    .line 62
    iget-object p1, p1, Lv3/r;->b:Ljava/lang/String;

    .line 63
    .line 64
    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    .line 66
    .line 67
    iget-object p1, v5, Lcom/google/android/gms/internal/ads/Cn;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    .line 69
    invoke-virtual {p1, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    iget-object p1, v5, Lcom/google/android/gms/internal/ads/Cn;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    .line 74
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->T8:Lcom/google/android/gms/internal/ads/J7;

    .line 75
    .line 76
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 77
    .line 78
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Ljava/lang/Boolean;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_3

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    :try_start_1
    const-string v0, "extras"

    .line 92
    .line 93
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v1, "accept_3p_cookie"

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    const-string v0, "1"

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :catch_0
    move-exception v0

    .line 109
    goto :goto_0

    .line 110
    :cond_4
    const-string v0, "0"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :goto_0
    const-string v1, "Error retrieving JSONObject from the requestJson, "

    .line 114
    .line 115
    invoke-static {v1, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    :goto_1
    const-string v0, "na"

    .line 119
    .line 120
    :goto_2
    const-string v1, "tpc"

    .line 121
    .line 122
    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    if-eqz v6, :cond_5

    .line 126
    .line 127
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/Wc;->G:Landroid/os/Bundle;

    .line 128
    .line 129
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/Cn;->b(Landroid/os/Bundle;)V

    .line 130
    .line 131
    .line 132
    :cond_5
    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/ads/Jn;->a(Ljava/util/Map;Z)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :catch_1
    iget-object p1, v5, Lcom/google/android/gms/internal/ads/Cn;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 137
    .line 138
    const-string v0, "sgf"

    .line 139
    .line 140
    invoke-virtual {p1, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    iget-object p1, v5, Lcom/google/android/gms/internal/ads/Cn;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 144
    .line 145
    const-string v0, "sgf_reason"

    .line 146
    .line 147
    const-string v1, "request_invalid"

    .line 148
    .line 149
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/ads/Jn;->a(Ljava/util/Map;Z)V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method public final d(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/PA;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->U1:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_4

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 23
    .line 24
    iget-object v0, v0, Lk3/l;->j:LP3/b;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    const-string v2, "public-api-callback"

    .line 34
    .line 35
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 36
    .line 37
    .line 38
    const-string v0, "ls"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x1

    .line 45
    if-eq v2, v1, :cond_1

    .line 46
    .line 47
    const-string v1, "0"

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-string v1, "1"

    .line 51
    .line 52
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/An;->G:Lcom/google/android/gms/internal/ads/Cn;

    .line 53
    .line 54
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/Cn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget v0, p2, Lcom/google/android/gms/internal/ads/PA;->J:I

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    :goto_1
    if-ge v1, v0, :cond_3

    .line 61
    .line 62
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/PA;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Lcom/google/android/gms/internal/ads/Bn;

    .line 67
    .line 68
    iget v4, v3, Lcom/google/android/gms/internal/ads/Bn;->b:I

    .line 69
    .line 70
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/uc;->d(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    const-wide/16 v5, -0x1

    .line 75
    .line 76
    invoke-virtual {p1, v4, v5, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 77
    .line 78
    .line 79
    move-result-wide v7

    .line 80
    iget v4, v3, Lcom/google/android/gms/internal/ads/Bn;->c:I

    .line 81
    .line 82
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/uc;->d(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {p1, v4, v5, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 87
    .line 88
    .line 89
    move-result-wide v4

    .line 90
    const-wide/16 v9, 0x0

    .line 91
    .line 92
    cmp-long v6, v7, v9

    .line 93
    .line 94
    if-lez v6, :cond_2

    .line 95
    .line 96
    cmp-long v6, v4, v9

    .line 97
    .line 98
    if-lez v6, :cond_2

    .line 99
    .line 100
    sub-long/2addr v4, v7

    .line 101
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Bn;->a:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Cn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    const-string p2, "client_sig_latency_key"

    .line 114
    .line 115
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/An;->a(Landroid/os/Bundle;)V

    .line 120
    .line 121
    .line 122
    const-string p2, "gms_sig_latency_key"

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/An;->a(Landroid/os/Bundle;)V

    .line 129
    .line 130
    .line 131
    :cond_4
    :goto_2
    return-void
.end method

.method public final n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/An;->G:Lcom/google/android/gms/internal/ads/Cn;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Cn;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    const-string v2, "action"

    .line 6
    .line 7
    const-string v3, "loaded"

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    sget-object v1, Lcom/google/android/gms/internal/ads/Bn;->e:Lcom/google/android/gms/internal/ads/PA;

    .line 13
    .line 14
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Cn;->c:Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/ads/An;->d(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/PA;)V

    .line 17
    .line 18
    .line 19
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->Rb:Lcom/google/android/gms/internal/ads/J7;

    .line 20
    .line 21
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 22
    .line 23
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Cn;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    const-string v1, "MUTE_AUDIO"

    .line 40
    .line 41
    invoke-static {v1}, Lcom/bumptech/glide/c;->o(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v2, 0x1

    .line 46
    if-eq v2, v1, :cond_0

    .line 47
    .line 48
    const-string v1, "0"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const-string v1, "1"

    .line 52
    .line 53
    :goto_0
    const-string v2, "mafe"

    .line 54
    .line 55
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :cond_1
    const/4 v1, 0x0

    .line 59
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/An;->H:Lcom/google/android/gms/internal/ads/In;

    .line 60
    .line 61
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/Jn;->a(Ljava/util/Map;Z)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final y(Ll3/z0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/An;->G:Lcom/google/android/gms/internal/ads/Cn;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Cn;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    const-string v2, "action"

    .line 6
    .line 7
    const-string v3, "ftl"

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget v1, p1, Ll3/z0;->G:I

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/ads/Cn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "ed"

    .line 22
    .line 23
    iget-object p1, p1, Ll3/z0;->I:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Cn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/Cn;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/An;->H:Lcom/google/android/gms/internal/ads/In;

    .line 32
    .line 33
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/Jn;->a(Ljava/util/Map;Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final z(Lcom/google/android/gms/internal/ads/Wc;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/An;->G:Lcom/google/android/gms/internal/ads/Cn;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Wc;->G:Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Cn;->b(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
