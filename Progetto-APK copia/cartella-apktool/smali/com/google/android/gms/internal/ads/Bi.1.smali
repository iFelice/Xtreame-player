.class public final Lcom/google/android/gms/internal/ads/Bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dC;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/dC;

.field public final synthetic I:Lg0/a;


# direct methods
.method public synthetic constructor <init>(Lg0/a;Lcom/google/android/gms/internal/ads/dC;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/ads/Bi;->G:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Bi;->H:Lcom/google/android/gms/internal/ads/dC;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Bi;->I:Lg0/a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    const/16 v0, 0x16

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/Bi;->G:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Bi;->H:Lcom/google/android/gms/internal/ads/dC;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Bi;->I:Lg0/a;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->e:Lcom/google/android/gms/internal/ads/re;

    .line 13
    .line 14
    new-instance v4, Lcom/google/android/gms/internal/ads/Pf;

    .line 15
    .line 16
    invoke-direct {v4, v3, v0}, Lcom/google/android/gms/internal/ads/Pf;-><init>(Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/re;->execute(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/dC;->zza(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/dC;->zza(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    sget-object p1, Lcom/google/android/gms/internal/ads/se;->e:Lcom/google/android/gms/internal/ads/re;

    .line 30
    .line 31
    new-instance v1, Lcom/google/android/gms/internal/ads/Pf;

    .line 32
    .line 33
    invoke-direct {v1, v3, v0}, Lcom/google/android/gms/internal/ads/Pf;-><init>(Ljava/lang/Object;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/re;->execute(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Bi;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Bi;->H:Lcom/google/android/gms/internal/ads/dC;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Bi;->I:Lg0/a;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lcom/google/android/gms/internal/ads/xi;

    .line 11
    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/se;->e:Lcom/google/android/gms/internal/ads/re;

    .line 13
    .line 14
    new-instance v3, Lcom/google/android/gms/internal/ads/Pf;

    .line 15
    .line 16
    const/16 v4, 0x16

    .line 17
    .line 18
    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/ads/Pf;-><init>(Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/re;->execute(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/dC;->zzb(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/Ai;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Ai;->a:Ljava/util/List;

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    const/4 v4, 0x1

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, LD4/b;

    .line 62
    .line 63
    new-instance v5, Lcom/google/android/gms/internal/ads/No;

    .line 64
    .line 65
    const/4 v6, 0x4

    .line 66
    invoke-direct {v5, v1, v6}, Lcom/google/android/gms/internal/ads/No;-><init>(Ljava/lang/Object;I)V

    .line 67
    .line 68
    .line 69
    iget-object v6, v2, Lg0/a;->b:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v6, Ljava/util/concurrent/Executor;

    .line 72
    .line 73
    const-class v7, Ljava/lang/Throwable;

    .line 74
    .line 75
    invoke-static {v0, v7, v5, v6}, Lcom/google/android/gms/internal/ads/Cw;->D1(LD4/b;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rB;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v5, Lv3/c;

    .line 80
    .line 81
    invoke-direct {v5, v2, v1, v3, v4}, Lv3/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 82
    .line 83
    .line 84
    iget-object v3, v2, Lg0/a;->b:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v3, Ljava/util/concurrent/Executor;

    .line 87
    .line 88
    invoke-static {v0, v5, v3}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/Bi;

    .line 94
    .line 95
    invoke-direct {p1, v2, v1, v4}, Lcom/google/android/gms/internal/ads/Bi;-><init>(Lg0/a;Lcom/google/android/gms/internal/ads/dC;I)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v2, Lg0/a;->b:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v1, Ljava/util/concurrent/Executor;

    .line 101
    .line 102
    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_2
    :goto_1
    iget-object p1, v2, Lg0/a;->b:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 109
    .line 110
    new-instance v0, Lcom/google/android/gms/internal/ads/Pf;

    .line 111
    .line 112
    const/16 v2, 0x17

    .line 113
    .line 114
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Pf;-><init>(Ljava/lang/Object;I)V

    .line 115
    .line 116
    .line 117
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 118
    .line 119
    .line 120
    :goto_2
    return-void

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
