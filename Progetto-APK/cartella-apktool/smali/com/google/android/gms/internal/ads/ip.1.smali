.class public final Lcom/google/android/gms/internal/ads/ip;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/jC;

.field public final b:Lcom/google/android/gms/internal/ads/Wo;

.field public final c:Lcom/google/android/gms/internal/ads/EJ;

.field public final d:Lcom/google/android/gms/internal/ads/Uw;

.field public final e:Landroid/content/Context;

.field public final f:Lp3/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/re;Lcom/google/android/gms/internal/ads/Wo;Lcom/google/android/gms/internal/ads/EJ;Lcom/google/android/gms/internal/ads/Uw;Landroid/content/Context;Lp3/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ip;->a:Lcom/google/android/gms/internal/ads/jC;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ip;->b:Lcom/google/android/gms/internal/ads/Wo;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ip;->c:Lcom/google/android/gms/internal/ads/EJ;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ip;->d:Lcom/google/android/gms/internal/ads/Uw;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ip;->e:Landroid/content/Context;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/ip;->f:Lp3/a;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/Wc;Lcom/google/android/gms/internal/ads/hp;Lcom/google/android/gms/internal/ads/gp;Lcom/google/android/gms/internal/ads/RB;)Lcom/google/android/gms/internal/ads/aC;
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Wc;->J:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 4
    .line 5
    iget-object v1, v1, Lk3/l;->c:Lo3/O;

    .line 6
    .line 7
    invoke-static {v0}, Lo3/O;->c(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ip;->a:Lcom/google/android/gms/internal/ads/jC;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance p2, Lcom/google/android/gms/internal/ads/ep;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/Bo;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/hp;->b(Lcom/google/android/gms/internal/ads/Wc;)LD4/b;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/hh;

    .line 31
    .line 32
    const/4 v2, 0x7

    .line 33
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/hh;-><init>(I)V

    .line 34
    .line 35
    .line 36
    const-class v2, Ljava/util/concurrent/ExecutionException;

    .line 37
    .line 38
    invoke-static {p2, v2, v0, v1}, Lcom/google/android/gms/internal/ads/Cw;->D1(LD4/b;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rB;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/aC;->r(LD4/b;)Lcom/google/android/gms/internal/ads/aC;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    new-instance v0, Lcom/google/android/gms/internal/ads/hh;

    .line 47
    .line 48
    const/4 v2, 0x6

    .line 49
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/hh;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-static {p2, p4, v1}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    new-instance v0, Lcom/google/android/gms/internal/ads/Sa;

    .line 61
    .line 62
    const/4 v7, 0x2

    .line 63
    move-object v2, v0

    .line 64
    move-object v3, p0

    .line 65
    move-object v4, p3

    .line 66
    move-object v5, p1

    .line 67
    move-object v6, p4

    .line 68
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/Sa;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 69
    .line 70
    .line 71
    const-class p1, Lcom/google/android/gms/internal/ads/ep;

    .line 72
    .line 73
    invoke-static {p2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/Cw;->D1(LD4/b;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rB;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1
.end method
