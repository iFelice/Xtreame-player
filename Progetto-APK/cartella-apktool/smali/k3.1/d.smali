.class public final synthetic Lk3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/RB;


# instance fields
.field public final synthetic a:Ljava/lang/Long;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/Fn;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/Uw;

.field public final synthetic d:Lcom/google/android/gms/internal/ads/Ow;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Long;Lcom/google/android/gms/internal/ads/Fn;Lcom/google/android/gms/internal/ads/Uw;Lcom/google/android/gms/internal/ads/Ow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk3/d;->a:Ljava/lang/Long;

    .line 5
    .line 6
    iput-object p2, p0, Lk3/d;->b:Lcom/google/android/gms/internal/ads/Fn;

    .line 7
    .line 8
    iput-object p3, p0, Lk3/d;->c:Lcom/google/android/gms/internal/ads/Uw;

    .line 9
    .line 10
    iput-object p4, p0, Lk3/d;->d:Lcom/google/android/gms/internal/ads/Ow;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)LD4/b;
    .locals 11

    .line 1
    iget-object v0, p0, Lk3/d;->a:Ljava/lang/Long;

    .line 2
    .line 3
    iget-object v1, p0, Lk3/d;->b:Lcom/google/android/gms/internal/ads/Fn;

    .line 4
    .line 5
    iget-object v2, p0, Lk3/d;->c:Lcom/google/android/gms/internal/ads/Uw;

    .line 6
    .line 7
    iget-object v3, p0, Lk3/d;->d:Lcom/google/android/gms/internal/ads/Ow;

    .line 8
    .line 9
    check-cast p1, Lorg/json/JSONObject;

    .line 10
    .line 11
    const-string v4, "isSuccessful"

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_4

    .line 19
    .line 20
    const-string v5, "appSettingsJson"

    .line 21
    .line 22
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget-object v5, Lk3/l;->A:Lk3/l;

    .line 27
    .line 28
    iget-object v6, v5, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 29
    .line 30
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/le;->d()Lo3/L;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-virtual {v6}, Lo3/L;->s()V

    .line 35
    .line 36
    .line 37
    iget-object v7, v6, Lo3/L;->a:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v7

    .line 40
    :try_start_0
    iget-object v5, v5, Lk3/l;->j:LP3/b;

    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v8

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    iget-object v5, v6, Lo3/L;->n:Lcom/google/android/gms/internal/ads/ge;

    .line 52
    .line 53
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/ge;->e:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_0

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_0
    new-instance v5, Lcom/google/android/gms/internal/ads/ge;

    .line 63
    .line 64
    invoke-direct {v5, v8, v9, p1}, Lcom/google/android/gms/internal/ads/ge;-><init>(JLjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iput-object v5, v6, Lo3/L;->n:Lcom/google/android/gms/internal/ads/ge;

    .line 68
    .line 69
    iget-object v5, v6, Lo3/L;->g:Landroid/content/SharedPreferences$Editor;

    .line 70
    .line 71
    if-eqz v5, :cond_1

    .line 72
    .line 73
    const-string v10, "app_settings_json"

    .line 74
    .line 75
    invoke-interface {v5, v10, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    .line 77
    .line 78
    iget-object p1, v6, Lo3/L;->g:Landroid/content/SharedPreferences$Editor;

    .line 79
    .line 80
    const-string v5, "app_settings_last_update_ms"

    .line 81
    .line 82
    invoke-interface {p1, v5, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 83
    .line 84
    .line 85
    iget-object p1, v6, Lo3/L;->g:Landroid/content/SharedPreferences$Editor;

    .line 86
    .line 87
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    goto :goto_4

    .line 93
    :cond_1
    :goto_0
    invoke-virtual {v6}, Lo3/L;->t()V

    .line 94
    .line 95
    .line 96
    iget-object p1, v6, Lo3/L;->c:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_2

    .line 107
    .line 108
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    check-cast v5, Ljava/lang/Runnable;

    .line 113
    .line 114
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    monitor-exit v7

    .line 119
    goto :goto_3

    .line 120
    :cond_3
    :goto_2
    iget-object p1, v6, Lo3/L;->n:Lcom/google/android/gms/internal/ads/ge;

    .line 121
    .line 122
    iput-wide v8, p1, Lcom/google/android/gms/internal/ads/ge;->f:J

    .line 123
    .line 124
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :goto_3
    if-eqz v0, :cond_4

    .line 126
    .line 127
    sget-object p1, Lk3/l;->A:Lk3/l;

    .line 128
    .line 129
    iget-object p1, p1, Lk3/l;->j:LP3/b;

    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 135
    .line 136
    .line 137
    move-result-wide v5

    .line 138
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 139
    .line 140
    .line 141
    move-result-wide v7

    .line 142
    sub-long/2addr v5, v7

    .line 143
    const-string p1, "cld_s"

    .line 144
    .line 145
    invoke-static {v1, p1, v5, v6}, Lf6/c;->l(Lcom/google/android/gms/internal/ads/Fn;Ljava/lang/String;J)V

    .line 146
    .line 147
    .line 148
    goto :goto_5

    .line 149
    :goto_4
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    throw p1

    .line 151
    :cond_4
    :goto_5
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/Ow;->e(Z)Lcom/google/android/gms/internal/ads/Ow;

    .line 152
    .line 153
    .line 154
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Ow;->zzm()Lcom/google/android/gms/internal/ads/Qw;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/Uw;->b(Lcom/google/android/gms/internal/ads/Qw;)V

    .line 159
    .line 160
    .line 161
    const/4 p1, 0x0

    .line 162
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    return-object p1
.end method
