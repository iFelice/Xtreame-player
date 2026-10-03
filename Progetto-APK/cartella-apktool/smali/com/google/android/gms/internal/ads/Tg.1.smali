.class public final synthetic Lcom/google/android/gms/internal/ads/Tg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/Wg;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Wg;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/Tg;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Tg;->H:Lcom/google/android/gms/internal/ads/Wg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Tg;->G:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tg;->H:Lcom/google/android/gms/internal/ads/Wg;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v2, Lcom/google/android/gms/internal/ads/Dc;

    .line 13
    .line 14
    const-string v3, "com.google.android.gms.ads.internal.report.IDynamiteErrorEventListener"

    .line 15
    .line 16
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/z5;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Wg;->P:Lcom/google/android/gms/internal/ads/Mx;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Mx;->G:Landroid/content/Context;

    .line 25
    .line 26
    const-string v3, "com.google.android.gms.ads.flags.FlagRetrieverSupplierProxy"

    .line 27
    .line 28
    new-instance v4, Lcom/google/android/gms/internal/ads/kH;

    .line 29
    .line 30
    const/16 v5, 0x1d

    .line 31
    .line 32
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/kH;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/measurement/H1;->G(Landroid/content/Context;Ljava/lang/String;Lp3/i;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/google/android/gms/internal/ads/G8;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/A5;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/y5;->O2(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Lp3/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :catch_0
    move-exception v0

    .line 53
    goto :goto_0

    .line 54
    :catch_1
    move-exception v0

    .line 55
    goto :goto_1

    .line 56
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "Error calling setFlagsAccessedBeforeInitializedListener: "

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v1, "Could not load com.google.android.gms.ads.flags.FlagRetrieverSupplierProxy:"

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :goto_2
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tg;->H:Lcom/google/android/gms/internal/ads/Wg;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Wg;->G:Landroid/content/Context;

    .line 95
    .line 96
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/iw;->a(Landroid/content/Context;Z)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tg;->H:Lcom/google/android/gms/internal/ads/Wg;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 106
    .line 107
    iget-object v2, v1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/le;->d()Lo3/L;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v2}, Lo3/L;->q()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_0

    .line 118
    .line 119
    iget-object v2, v1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/le;->d()Lo3/L;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v2}, Lo3/L;->s()V

    .line 126
    .line 127
    .line 128
    iget-object v3, v2, Lo3/L;->a:Ljava/lang/Object;

    .line 129
    .line 130
    monitor-enter v3

    .line 131
    :try_start_1
    iget-object v2, v2, Lo3/L;->z:Ljava/lang/String;

    .line 132
    .line 133
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Wg;->G:Landroid/content/Context;

    .line 135
    .line 136
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Wg;->H:Lp3/a;

    .line 137
    .line 138
    iget-object v4, v1, Lk3/l;->m:Lo3/l;

    .line 139
    .line 140
    iget-object v0, v0, Lp3/a;->G:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v4, v3, v2, v0}, Lo3/l;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_0

    .line 147
    .line 148
    iget-object v0, v1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/le;->d()Lo3/L;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const/4 v2, 0x0

    .line 155
    invoke-virtual {v0, v2}, Lo3/L;->b(Z)V

    .line 156
    .line 157
    .line 158
    iget-object v0, v1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/le;->d()Lo3/L;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const-string v1, ""

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Lo3/L;->a(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :catchall_0
    move-exception v0

    .line 171
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    throw v0

    .line 173
    :cond_0
    :goto_3
    return-void

    .line 174
    nop

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
