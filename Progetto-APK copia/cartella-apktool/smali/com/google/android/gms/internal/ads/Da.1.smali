.class public final Lcom/google/android/gms/internal/ads/Da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/N9;


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/lang/Object;

.field public final I:Ljava/lang/Object;

.field public final J:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ja;Lcom/google/android/gms/internal/ads/xa;LO1/J;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/Da;->G:I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Da;->H:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Da;->I:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Da;->J:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/Nl;Lcom/google/android/gms/internal/ads/Il;Lcom/google/android/gms/internal/ads/Tm;Lcom/google/android/gms/internal/ads/EJ;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/Da;->G:I

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/Il;->a()Ljava/lang/String;

    move-result-object p2

    .line 7
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Nl;->g:Lr/m;

    invoke-virtual {p1, p2}, Lr/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/n9;

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Da;->H:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Da;->I:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Da;->J:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Da;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p1, "asset"

    .line 7
    .line 8
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
    .line 14
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Da;->H:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p2, Lcom/google/android/gms/internal/ads/n9;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Da;->J:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lcom/google/android/gms/internal/ads/EJ;

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/EJ;->zzb()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/google/android/gms/internal/ads/f9;

    .line 27
    .line 28
    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/n9;->Q1(Lcom/google/android/gms/internal/ads/f9;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "Failed to call onCustomClick for asset "

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, "."

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1, p2}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void

    .line 56
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/La;

    .line 57
    .line 58
    const-string p1, "loadJavascriptEngine > /requestReload handler: Trying to acquire lock"

    .line 59
    .line 60
    invoke-static {p1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Da;->J:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p1, Lcom/google/android/gms/internal/ads/Ja;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Ja;->a:Ljava/lang/Object;

    .line 68
    .line 69
    monitor-enter p1

    .line 70
    :try_start_1
    const-string p2, "loadJavascriptEngine > /requestReload handler: Lock acquired"

    .line 71
    .line 72
    invoke-static {p2}, Lo3/I;->k(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string p2, "JS Engine is requesting an update"

    .line 76
    .line 77
    invoke-static {p2}, Lp3/h;->f(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Da;->J:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast p2, Lcom/google/android/gms/internal/ads/Ja;

    .line 83
    .line 84
    iget p2, p2, Lcom/google/android/gms/internal/ads/Ja;->g:I

    .line 85
    .line 86
    if-nez p2, :cond_0

    .line 87
    .line 88
    const-string p2, "Starting reload."

    .line 89
    .line 90
    invoke-static {p2}, Lp3/h;->f(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Da;->J:Ljava/lang/Object;

    .line 94
    .line 95
    move-object v0, p2

    .line 96
    check-cast v0, Lcom/google/android/gms/internal/ads/Ja;

    .line 97
    .line 98
    const/4 v1, 0x2

    .line 99
    iput v1, v0, Lcom/google/android/gms/internal/ads/Ja;->g:I

    .line 100
    .line 101
    check-cast p2, Lcom/google/android/gms/internal/ads/Ja;

    .line 102
    .line 103
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/Ja;->b()Lcom/google/android/gms/internal/ads/Ia;

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catchall_0
    move-exception p2

    .line 108
    goto :goto_2

    .line 109
    :cond_0
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Da;->H:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast p2, Lcom/google/android/gms/internal/ads/xa;

    .line 112
    .line 113
    const-string v0, "/requestReload"

    .line 114
    .line 115
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Da;->I:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v1, LO1/J;

    .line 118
    .line 119
    invoke-virtual {v1}, LO1/J;->zza()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Lcom/google/android/gms/internal/ads/N9;

    .line 124
    .line 125
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/xa;->z(Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V

    .line 126
    .line 127
    .line 128
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    const-string p1, "loadJavascriptEngine > /requestReload handler: Lock released"

    .line 130
    .line 131
    invoke-static {p1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :goto_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    throw p2

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
