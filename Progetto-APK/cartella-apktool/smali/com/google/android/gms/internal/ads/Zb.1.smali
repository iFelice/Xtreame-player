.class public final Lcom/google/android/gms/internal/ads/Zb;
.super Lcom/google/android/gms/ads/nativead/NativeAd;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/B9;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/B9;)V
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Zb;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Zb;->c:Ljava/util/ArrayList;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Zb;->a:Lcom/google/android/gms/internal/ads/B9;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/B9;->u()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    instance-of v3, v2, Landroid/os/IBinder;

    .line 44
    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    check-cast v2, Landroid/os/IBinder;

    .line 48
    .line 49
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/K8;->z3(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/T8;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    goto :goto_1

    .line 54
    :catch_0
    move-exception p1

    .line 55
    goto :goto_2

    .line 56
    :cond_1
    move-object v2, v1

    .line 57
    :goto_1
    if-eqz v2, :cond_0

    .line 58
    .line 59
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Zb;->b:Ljava/util/ArrayList;

    .line 60
    .line 61
    new-instance v4, Lcom/google/android/gms/internal/ads/Yb;

    .line 62
    .line 63
    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/Yb;-><init>(Lcom/google/android/gms/internal/ads/T8;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :goto_2
    invoke-static {v0, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Zb;->a:Lcom/google/android/gms/internal/ads/B9;

    .line 74
    .line 75
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/B9;->g()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_5

    .line 80
    .line 81
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_5

    .line 90
    .line 91
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    instance-of v3, v2, Landroid/os/IBinder;

    .line 96
    .line 97
    if-eqz v3, :cond_4

    .line 98
    .line 99
    check-cast v2, Landroid/os/IBinder;

    .line 100
    .line 101
    invoke-static {v2}, Ll3/K0;->z3(Landroid/os/IBinder;)Ll3/j0;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    goto :goto_4

    .line 106
    :catch_1
    move-exception p1

    .line 107
    goto :goto_5

    .line 108
    :cond_4
    move-object v2, v1

    .line 109
    :goto_4
    if-eqz v2, :cond_3

    .line 110
    .line 111
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Zb;->c:Ljava/util/ArrayList;

    .line 112
    .line 113
    new-instance v4, Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 114
    .line 115
    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/atv_ads_framework/x0;-><init>(Ll3/j0;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :goto_5
    invoke-static {v0, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    :cond_5
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Zb;->a:Lcom/google/android/gms/internal/ads/B9;

    .line 126
    .line 127
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/B9;->zzk()Lcom/google/android/gms/internal/ads/T8;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    if-eqz p1, :cond_6

    .line 132
    .line 133
    new-instance v1, Lcom/google/android/gms/internal/ads/Yb;

    .line 134
    .line 135
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/Yb;-><init>(Lcom/google/android/gms/internal/ads/T8;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 136
    .line 137
    .line 138
    goto :goto_6

    .line 139
    :catch_2
    move-exception p1

    .line 140
    invoke-static {v0, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    :cond_6
    :goto_6
    :try_start_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Zb;->a:Lcom/google/android/gms/internal/ads/B9;

    .line 144
    .line 145
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/B9;->zzi()Lcom/google/android/gms/internal/ads/P8;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    if-eqz p1, :cond_7

    .line 150
    .line 151
    new-instance p1, Lcom/google/android/gms/internal/ads/x;

    .line 152
    .line 153
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zb;->a:Lcom/google/android/gms/internal/ads/B9;

    .line 154
    .line 155
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/B9;->zzi()Lcom/google/android/gms/internal/ads/P8;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/x;-><init>(Lcom/google/android/gms/internal/ads/P8;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 160
    .line 161
    .line 162
    goto :goto_7

    .line 163
    :catch_3
    move-exception p1

    .line 164
    invoke-static {v0, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    .line 166
    .line 167
    :cond_7
    :goto_7
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zb;->a:Lcom/google/android/gms/internal/ads/B9;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/B9;->zzo()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    const-string v1, ""

    .line 10
    .line 11
    invoke-static {v1, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zb;->a:Lcom/google/android/gms/internal/ads/B9;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/B9;->zzq()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    const-string v1, ""

    .line 10
    .line 11
    invoke-static {v1, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public final c()Lf3/p;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zb;->a:Lcom/google/android/gms/internal/ads/B9;

    .line 3
    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/B9;->zzg()Ll3/x0;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v1

    .line 10
    const-string v2, ""

    .line 11
    .line 12
    invoke-static {v2, v1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    move-object v1, v0

    .line 16
    :goto_0
    if-eqz v1, :cond_0

    .line 17
    .line 18
    new-instance v0, Lf3/p;

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lf3/p;-><init>(Ll3/x0;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-object v0
.end method

.method public final bridge synthetic d()LR3/a;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zb;->a:Lcom/google/android/gms/internal/ads/B9;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/B9;->zzm()LR3/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    const-string v1, ""

    .line 10
    .line 11
    invoke-static {v1, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method

.method public final recordEvent(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zb;->a:Lcom/google/android/gms/internal/ads/B9;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/B9;->m1(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    const-string v0, "Failed to record native event"

    .line 9
    .line 10
    invoke-static {v0, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
