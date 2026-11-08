.class public final Lcom/google/android/gms/internal/ads/zzbsd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Lr3/j;

.field public c:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 1

    .line 1
    const-string v0, "Destroying AdMobCustomTabsAdapter adapter."

    .line 2
    .line 3
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    const-string v0, "Pausing AdMobCustomTabsAdapter adapter."

    .line 2
    .line 3
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    const-string v0, "Resuming AdMobCustomTabsAdapter adapter."

    .line 2
    .line 3
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final requestInterstitialAd(Landroid/content/Context;Lr3/j;Landroid/os/Bundle;Lr3/d;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbsd;->b:Lr3/j;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    const-string p1, "Listener not set for mediation. Returning."

    .line 6
    .line 7
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    instance-of p2, p1, Landroid/app/Activity;

    .line 12
    .line 13
    if-eqz p2, :cond_3

    .line 14
    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/a8;->a(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_1

    .line 20
    .line 21
    const-string p1, "Default browser does not support custom tabs. Bailing out."

    .line 22
    .line 23
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsd;->b:Lr3/j;

    .line 27
    .line 28
    check-cast p1, La3/b;

    .line 29
    .line 30
    invoke-virtual {p1}, La3/b;->f()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const-string p2, "tab_url"

    .line 35
    .line 36
    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    if-eqz p3, :cond_2

    .line 45
    .line 46
    const-string p1, "The tab_url retrieved from mediation metadata is empty. Bailing out."

    .line 47
    .line 48
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsd;->b:Lr3/j;

    .line 52
    .line 53
    check-cast p1, La3/b;

    .line 54
    .line 55
    invoke-virtual {p1}, La3/b;->f()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    check-cast p1, Landroid/app/Activity;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsd;->a:Landroid/app/Activity;

    .line 62
    .line 63
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsd;->c:Landroid/net/Uri;

    .line 68
    .line 69
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsd;->b:Lr3/j;

    .line 70
    .line 71
    check-cast p1, La3/b;

    .line 72
    .line 73
    invoke-virtual {p1}, La3/b;->j()V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_3
    const-string p1, "AdMobCustomTabs can only work with Activity context. Bailing out."

    .line 78
    .line 79
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsd;->b:Lr3/j;

    .line 83
    .line 84
    check-cast p1, La3/b;

    .line 85
    .line 86
    invoke-virtual {p1}, La3/b;->f()V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final showInterstitial()V
    .locals 11

    .line 1
    new-instance v0, Lo/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lo/g;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lo/g;->a()Lm2/l;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, v0, Lm2/l;->H:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Landroid/content/Intent;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbsd;->c:Landroid/net/Uri;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    new-instance v4, Ln3/f;

    .line 20
    .line 21
    iget-object v0, v0, Lm2/l;->H:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Landroid/content/Intent;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {v4, v0, v1}, Ln3/f;-><init>(Landroid/content/Intent;Ln3/a;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 30
    .line 31
    new-instance v6, Lcom/google/android/gms/internal/ads/Pb;

    .line 32
    .line 33
    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/ads/Pb;-><init>(Lcom/google/android/gms/internal/ads/zzbsd;)V

    .line 34
    .line 35
    .line 36
    new-instance v8, Lp3/a;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-direct {v8, v1, v1, v1, v1}, Lp3/a;-><init>(IIZZ)V

    .line 40
    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v9, 0x0

    .line 45
    const/4 v10, 0x0

    .line 46
    move-object v3, v0

    .line 47
    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Ln3/f;Ll3/a;Ln3/m;Ln3/c;Lp3/a;Lcom/google/android/gms/internal/ads/Ef;Lcom/google/android/gms/internal/ads/Ok;)V

    .line 48
    .line 49
    .line 50
    sget-object v1, Lo3/O;->l:Lo3/J;

    .line 51
    .line 52
    new-instance v2, Lcom/google/android/gms/internal/ads/Ha;

    .line 53
    .line 54
    const/16 v3, 0xa

    .line 55
    .line 56
    invoke-direct {v2, p0, v0, v3}, Lcom/google/android/gms/internal/ads/Ha;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 63
    .line 64
    iget-object v1, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 65
    .line 66
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/le;->l:Lcom/google/android/gms/internal/ads/ke;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-object v2, v0, Lk3/l;->j:LP3/b;

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 77
    .line 78
    .line 79
    move-result-wide v2

    .line 80
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/ke;->a:Ljava/lang/Object;

    .line 81
    .line 82
    monitor-enter v4

    .line 83
    :try_start_0
    iget v5, v1, Lcom/google/android/gms/internal/ads/ke;->c:I

    .line 84
    .line 85
    const/4 v6, 0x3

    .line 86
    if-ne v5, v6, :cond_0

    .line 87
    .line 88
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/ke;->b:J

    .line 89
    .line 90
    sget-object v5, Lcom/google/android/gms/internal/ads/Q7;->x5:Lcom/google/android/gms/internal/ads/J7;

    .line 91
    .line 92
    sget-object v9, Ll3/q;->d:Ll3/q;

    .line 93
    .line 94
    iget-object v9, v9, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 95
    .line 96
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    check-cast v5, Ljava/lang/Long;

    .line 101
    .line 102
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 103
    .line 104
    .line 105
    move-result-wide v9

    .line 106
    add-long/2addr v7, v9

    .line 107
    cmp-long v5, v7, v2

    .line 108
    .line 109
    if-gtz v5, :cond_0

    .line 110
    .line 111
    const/4 v2, 0x1

    .line 112
    iput v2, v1, Lcom/google/android/gms/internal/ads/ke;->c:I

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    goto :goto_3

    .line 117
    :cond_0
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object v0, v0, Lk3/l;->j:LP3/b;

    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 124
    .line 125
    .line 126
    move-result-wide v2

    .line 127
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/ke;->a:Ljava/lang/Object;

    .line 128
    .line 129
    monitor-enter v0

    .line 130
    :try_start_1
    iget v4, v1, Lcom/google/android/gms/internal/ads/ke;->c:I

    .line 131
    .line 132
    const/4 v5, 0x2

    .line 133
    if-eq v4, v5, :cond_1

    .line 134
    .line 135
    monitor-exit v0

    .line 136
    goto :goto_1

    .line 137
    :catchall_1
    move-exception v1

    .line 138
    goto :goto_2

    .line 139
    :cond_1
    iput v6, v1, Lcom/google/android/gms/internal/ads/ke;->c:I

    .line 140
    .line 141
    iget v4, v1, Lcom/google/android/gms/internal/ads/ke;->c:I

    .line 142
    .line 143
    if-ne v4, v6, :cond_2

    .line 144
    .line 145
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/ke;->b:J

    .line 146
    .line 147
    :cond_2
    monitor-exit v0

    .line 148
    :goto_1
    return-void

    .line 149
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    throw v1

    .line 151
    :goto_3
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    throw v0
.end method
