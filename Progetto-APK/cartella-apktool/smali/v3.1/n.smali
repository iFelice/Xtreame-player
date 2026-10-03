.class public final Lv3/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/IJ;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/QJ;

.field public final b:Lcom/google/android/gms/internal/ads/QJ;

.field public final c:Lcom/google/android/gms/internal/ads/QJ;

.field public final d:Lcom/google/android/gms/internal/ads/QJ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/bj;Lcom/google/android/gms/internal/ads/MJ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv3/n;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 5
    .line 6
    iput-object p2, p0, Lv3/n;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 7
    .line 8
    iput-object p3, p0, Lv3/n;->c:Lcom/google/android/gms/internal/ads/QJ;

    .line 9
    .line 10
    iput-object p4, p0, Lv3/n;->d:Lcom/google/android/gms/internal/ads/QJ;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lv3/n;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/Kw;

    .line 8
    .line 9
    iget-object v1, p0, Lv3/n;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 10
    .line 11
    check-cast v1, Lv3/q;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object v2, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v1, Lv3/q;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 22
    .line 23
    check-cast v1, Lcom/google/android/gms/internal/ads/Lo;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Lo;->a()Lcom/google/android/gms/internal/ads/Ko;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v3, Lv3/p;

    .line 30
    .line 31
    invoke-direct {v3, v2, v1}, Lv3/p;-><init>(Lcom/google/android/gms/internal/ads/re;Lcom/google/android/gms/internal/ads/Ko;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lv3/n;->c:Lcom/google/android/gms/internal/ads/QJ;

    .line 35
    .line 36
    check-cast v1, Lcom/google/android/gms/internal/ads/bj;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bj;->a()Lcom/google/android/gms/internal/ads/aj;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v4, p0, Lv3/n;->d:Lcom/google/android/gms/internal/ads/QJ;

    .line 43
    .line 44
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lcom/google/android/gms/internal/ads/Tk;

    .line 49
    .line 50
    sget-object v5, Lcom/google/android/gms/internal/ads/Iw;->b0:Lcom/google/android/gms/internal/ads/Iw;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aj;->a()Lcom/google/android/gms/internal/ads/Fw;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/internal/ads/Gw;->b(LD4/b;Lcom/google/android/gms/internal/ads/Iw;)Lcom/google/android/gms/internal/ads/rs;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/rs;->m(Lcom/google/android/gms/internal/ads/RB;)Lcom/google/android/gms/internal/ads/rs;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->c5:Lcom/google/android/gms/internal/ads/J7;

    .line 65
    .line 66
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 67
    .line 68
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 69
    .line 70
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Ljava/lang/Integer;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    int-to-long v5, v1

    .line 81
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 82
    .line 83
    invoke-virtual {v0, v5, v6, v1}, Lcom/google/android/gms/internal/ads/rs;->q(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/internal/ads/rs;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rs;->c()Lcom/google/android/gms/internal/ads/Fw;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v1, LC2/g;

    .line 92
    .line 93
    const/16 v3, 0xc

    .line 94
    .line 95
    invoke-direct {v1, v4, v3}, LC2/g;-><init>(Ljava/lang/Object;I)V

    .line 96
    .line 97
    .line 98
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 99
    .line 100
    .line 101
    return-object v0
.end method
