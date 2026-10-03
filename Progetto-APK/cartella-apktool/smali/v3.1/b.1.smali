.class public final Lv3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/pm/ApplicationInfo;

.field public final c:Ljava/util/List;

.field public final d:Lp3/a;

.field public final e:Lorg/json/JSONObject;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lp3/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lv3/b;->e:Lorg/json/JSONObject;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lv3/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    iput-object p1, p0, Lv3/b;->a:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lv3/b;->b:Landroid/content/pm/ApplicationInfo;

    .line 26
    .line 27
    iput-object p2, p0, Lv3/b;->c:Ljava/util/List;

    .line 28
    .line 29
    iput-object p3, p0, Lv3/b;->d:Lp3/a;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lv3/b;->b()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lv3/b;->e:Lorg/json/JSONObject;

    .line 13
    .line 14
    return-object v0
.end method

.method public final b()V
    .locals 9

    .line 1
    iget-object v0, p0, Lv3/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_4

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lv3/b;->b:Landroid/content/pm/ApplicationInfo;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    :try_start_0
    iget-object v3, p0, Lv3/b;->a:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v3}, LQ3/c;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/U1;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/measurement/U1;->c(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    nop

    .line 32
    :cond_1
    :goto_0
    iget-object v3, p0, Lv3/b;->e:Lorg/json/JSONObject;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    :try_start_1
    const-string v4, "vc"

    .line 37
    .line 38
    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 39
    .line 40
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    const-string v4, "vnm"

    .line 44
    .line 45
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catch_1
    move-exception v0

    .line 52
    goto :goto_5

    .line 53
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 54
    .line 55
    const-string v1, "pn"

    .line 56
    .line 57
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    :cond_3
    const-string v0, "eid"

    .line 63
    .line 64
    iget-object v1, p0, Lv3/b;->c:Ljava/util/List;

    .line 65
    .line 66
    new-instance v4, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    sget-object v5, Lcom/google/android/gms/internal/ads/Q7;->a9:Lcom/google/android/gms/internal/ads/J7;

    .line 72
    .line 73
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 74
    .line 75
    iget-object v6, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 76
    .line 77
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Ljava/lang/String;

    .line 82
    .line 83
    const-string v6, ","

    .line 84
    .line 85
    const/4 v7, -0x1

    .line 86
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    array-length v6, v5

    .line 91
    :goto_2
    if-ge v2, v6, :cond_5

    .line 92
    .line 93
    aget-object v7, v5, v2

    .line 94
    .line 95
    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    if-eqz v8, :cond_4

    .line 100
    .line 101
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    .line 109
    .line 110
    const-string v0, "js"

    .line 111
    .line 112
    iget-object v1, p0, Lv3/b;->d:Lp3/a;

    .line 113
    .line 114
    iget-object v1, v1, Lp3/a;->G:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_7

    .line 128
    .line 129
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    if-eqz v2, :cond_6

    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    const/4 v4, 0x2

    .line 150
    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_7
    :goto_4
    return-void

    .line 159
    :goto_5
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 160
    .line 161
    iget-object v1, v1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 162
    .line 163
    const-string v2, "PawAppSignalGenerator.initialize"

    .line 164
    .line 165
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    return-void
.end method
