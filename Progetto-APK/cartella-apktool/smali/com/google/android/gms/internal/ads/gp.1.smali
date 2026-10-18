.class public final synthetic Lcom/google/android/gms/internal/ads/gp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hp;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/ip;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ip;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/gp;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gp;->H:Lcom/google/android/gms/internal/ads/ip;

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/ads/Wc;)LD4/b;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/gp;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gp;->H:Lcom/google/android/gms/internal/ads/ip;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ip;->c:Lcom/google/android/gms/internal/ads/EJ;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/EJ;->zzb()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/ads/Gp;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Gp;->z3(Lcom/google/android/gms/internal/ads/Wc;I)LD4/b;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gp;->H:Lcom/google/android/gms/internal/ads/ip;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ip;->c:Lcom/google/android/gms/internal/ads/EJ;

    .line 28
    .line 29
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/EJ;->zzb()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/google/android/gms/internal/ads/Gp;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Wc;->N:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Gp;->C3(Ljava/lang/String;)LD4/b;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gp;->H:Lcom/google/android/gms/internal/ads/ip;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ip;->b:Lcom/google/android/gms/internal/ads/Wo;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Wc;->N:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/So;->b:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter v1

    .line 51
    :try_start_0
    iget v2, v0, Lcom/google/android/gms/internal/ads/Wo;->h:I

    .line 52
    .line 53
    const/4 v3, 0x3

    .line 54
    const/4 v4, 0x1

    .line 55
    if-eq v2, v4, :cond_0

    .line 56
    .line 57
    if-eq v2, v3, :cond_0

    .line 58
    .line 59
    new-instance p1, Lcom/google/android/gms/internal/ads/ep;

    .line 60
    .line 61
    const/4 v0, 0x2

    .line 62
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/Bo;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    monitor-exit v1

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    goto :goto_1

    .line 73
    :cond_0
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/So;->c:Z

    .line 74
    .line 75
    if-eqz v2, :cond_1

    .line 76
    .line 77
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/So;->a:Lcom/google/android/gms/internal/ads/te;

    .line 78
    .line 79
    monitor-exit v1

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iput v3, v0, Lcom/google/android/gms/internal/ads/Wo;->h:I

    .line 82
    .line 83
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/So;->c:Z

    .line 84
    .line 85
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/Wo;->g:Ljava/lang/String;

    .line 86
    .line 87
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/So;->f:Lcom/google/android/gms/internal/ads/n6;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/g;->checkAvailabilityAndConnect()V

    .line 90
    .line 91
    .line 92
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/So;->a:Lcom/google/android/gms/internal/ads/te;

    .line 93
    .line 94
    new-instance v2, Lcom/google/android/gms/internal/ads/Vo;

    .line 95
    .line 96
    invoke-direct {v2, v0, v4}, Lcom/google/android/gms/internal/ads/Vo;-><init>(Lcom/google/android/gms/internal/ads/Wo;I)V

    .line 97
    .line 98
    .line 99
    sget-object v3, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 100
    .line 101
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/te;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/So;->a:Lcom/google/android/gms/internal/ads/te;

    .line 105
    .line 106
    monitor-exit v1

    .line 107
    :goto_0
    return-object p1

    .line 108
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    throw p1

    .line 110
    nop

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
