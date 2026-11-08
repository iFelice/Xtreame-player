.class public final Lc2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lc2/h;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lc2/h;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lc2/h;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lc2/h;->b:Ljava/lang/Object;

    .line 8
    .line 9
    return-object v0

    .line 10
    :pswitch_0
    iget-object v0, p0, Lc2/h;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lc4/f0;

    .line 13
    .line 14
    new-instance v1, Lcom/google/android/gms/internal/measurement/V1;

    .line 15
    .line 16
    iget-object v0, v0, Lc4/f0;->Q:LZ3/o;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/V1;-><init>(LZ3/o;)V

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_1
    iget-object v0, p0, Lc2/h;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lv3/a;

    .line 25
    .line 26
    invoke-virtual {v0}, Lv3/a;->getViewSignals()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :pswitch_2
    iget-object v0, p0, Lc2/h;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lk3/k;

    .line 34
    .line 35
    iget-object v2, v0, Lk3/k;->G:Lp3/a;

    .line 36
    .line 37
    iget-object v2, v2, Lp3/a;->G:Ljava/lang/String;

    .line 38
    .line 39
    sget-object v3, Lcom/google/android/gms/internal/ads/G4;->e0:Ljava/lang/Object;

    .line 40
    .line 41
    new-instance v3, LJ2/t;

    .line 42
    .line 43
    invoke-direct {v3, v2, v1}, LJ2/t;-><init>(Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    iget-object v0, v0, Lk3/k;->J:Landroid/content/Context;

    .line 47
    .line 48
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/G4;->r(Landroid/content/Context;LJ2/t;)Lcom/google/android/gms/internal/ads/G4;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v1, Lcom/google/android/gms/internal/ads/H4;

    .line 53
    .line 54
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/H4;-><init>(Lcom/google/android/gms/internal/ads/E4;)V

    .line 55
    .line 56
    .line 57
    return-object v1

    .line 58
    :pswitch_3
    sget-object v0, Lo3/O;->l:Lo3/J;

    .line 59
    .line 60
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 61
    .line 62
    iget-object v0, v0, Lk3/l;->c:Lo3/O;

    .line 63
    .line 64
    iget-object v0, p0, Lc2/h;->b:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v0, Landroid/net/Uri;

    .line 67
    .line 68
    invoke-static {v0}, Lo3/O;->l(Landroid/net/Uri;)Ljava/util/HashMap;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0

    .line 73
    :pswitch_4
    iget-object v0, p0, Lc2/h;->b:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 76
    .line 77
    sget-object v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->f0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 78
    .line 79
    iget-wide v2, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d0:J

    .line 80
    .line 81
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Ln3/l;

    .line 90
    .line 91
    return-object v0

    .line 92
    :pswitch_5
    iget-object v0, p0, Lc2/h;->b:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v0, Lt2/d;

    .line 95
    .line 96
    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v2, p0, Lc2/h;->b:Ljava/lang/Object;

    .line 98
    .line 99
    move-object v3, v2

    .line 100
    check-cast v3, Lt2/d;

    .line 101
    .line 102
    iget-object v3, v3, Lt2/d;->O:Ljava/io/BufferedWriter;

    .line 103
    .line 104
    if-nez v3, :cond_0

    .line 105
    .line 106
    monitor-exit v0

    .line 107
    goto :goto_0

    .line 108
    :catchall_0
    move-exception v1

    .line 109
    goto :goto_1

    .line 110
    :cond_0
    check-cast v2, Lt2/d;

    .line 111
    .line 112
    invoke-virtual {v2}, Lt2/d;->j0()V

    .line 113
    .line 114
    .line 115
    iget-object v2, p0, Lc2/h;->b:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v2, Lt2/d;

    .line 118
    .line 119
    invoke-virtual {v2}, Lt2/d;->c0()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_1

    .line 124
    .line 125
    iget-object v2, p0, Lc2/h;->b:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v2, Lt2/d;

    .line 128
    .line 129
    invoke-virtual {v2}, Lt2/d;->h0()V

    .line 130
    .line 131
    .line 132
    iget-object v2, p0, Lc2/h;->b:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v2, Lt2/d;

    .line 135
    .line 136
    iput v1, v2, Lt2/d;->Q:I

    .line 137
    .line 138
    :cond_1
    monitor-exit v0

    .line 139
    :goto_0
    const/4 v0, 0x0

    .line 140
    return-object v0

    .line 141
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    throw v1

    .line 143
    :pswitch_6
    new-instance v0, Lc2/i;

    .line 144
    .line 145
    iget-object v1, p0, Lc2/h;->b:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v1, Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    .line 148
    .line 149
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 150
    .line 151
    .line 152
    iput-object v1, v0, Lc2/i;->a:Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    .line 153
    .line 154
    return-object v0

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
