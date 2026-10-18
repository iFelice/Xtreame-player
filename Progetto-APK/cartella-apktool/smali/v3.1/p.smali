.class public final Lv3/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/RB;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lcom/google/android/gms/internal/ads/Ko;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/re;Lcom/google/android/gms/internal/ads/Ko;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv3/p;->a:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    iput-object p2, p0, Lv3/p;->b:Lcom/google/android/gms/internal/ads/Ko;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)LD4/b;
    .locals 8

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/Wc;

    .line 2
    .line 3
    iget-object v0, p0, Lv3/p;->b:Lcom/google/android/gms/internal/ads/Ko;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/Wc;->J:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 11
    .line 12
    iget-object v2, v2, Lk3/l;->c:Lo3/O;

    .line 13
    .line 14
    invoke-static {v1}, Lo3/O;->c(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    new-instance v1, Lcom/google/android/gms/internal/ads/ep;

    .line 22
    .line 23
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/Bo;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->S6:Lcom/google/android/gms/internal/ads/J7;

    .line 32
    .line 33
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 34
    .line 35
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 36
    .line 37
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    new-instance v1, Lcom/google/android/gms/internal/ads/j5;

    .line 50
    .line 51
    const/4 v3, 0x6

    .line 52
    invoke-direct {v1, v3, v0, p1}, Lcom/google/android/gms/internal/ads/j5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Ko;->c:Lcom/google/android/gms/internal/ads/jC;

    .line 56
    .line 57
    check-cast v3, Lcom/google/android/gms/internal/ads/IB;

    .line 58
    .line 59
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/IB;->b(Ljava/util/concurrent/Callable;)LD4/b;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ko;->d:Lcom/google/android/gms/internal/ads/To;

    .line 65
    .line 66
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/To;->c(Lcom/google/android/gms/internal/ads/Wc;)LD4/b;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/aC;->r(LD4/b;)Lcom/google/android/gms/internal/ads/aC;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->c5:Lcom/google/android/gms/internal/ads/J7;

    .line 79
    .line 80
    sget-object v5, Ll3/q;->d:Ll3/q;

    .line 81
    .line 82
    iget-object v5, v5, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 83
    .line 84
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Ljava/lang/Integer;

    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    int-to-long v4, v4

    .line 95
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Ko;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 96
    .line 97
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 98
    .line 99
    invoke-static {v1, v4, v5, v7, v6}, Lcom/google/android/gms/internal/ads/Cw;->e2(LD4/b;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LD4/b;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Lcom/google/android/gms/internal/ads/aC;

    .line 104
    .line 105
    new-instance v4, Lcom/google/android/gms/internal/ads/Do;

    .line 106
    .line 107
    invoke-direct {v4, v0, p1, v3, v2}, Lcom/google/android/gms/internal/ads/Do;-><init>(Ljava/lang/Object;LM3/a;II)V

    .line 108
    .line 109
    .line 110
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ko;->b:Lcom/google/android/gms/internal/ads/jC;

    .line 111
    .line 112
    const-class v2, Ljava/lang/Throwable;

    .line 113
    .line 114
    invoke-static {v1, v2, v4, v0}, Lcom/google/android/gms/internal/ads/Cw;->D1(LD4/b;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rB;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    new-instance v1, Lv3/e;

    .line 119
    .line 120
    const/4 v2, 0x2

    .line 121
    invoke-direct {v1, p1, v2}, Lv3/e;-><init>(Ljava/lang/Object;I)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lv3/p;->a:Ljava/util/concurrent/Executor;

    .line 125
    .line 126
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    return-object p1
.end method
