.class public final Lcom/google/android/gms/internal/ads/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dp;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Lcom/google/android/gms/internal/ads/jC;

.field public final c:Lcom/google/android/gms/internal/ads/Xj;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/re;Lcom/google/android/gms/internal/ads/Xj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bp;->a:Ljava/util/Map;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bp;->b:Lcom/google/android/gms/internal/ads/jC;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bp;->c:Lcom/google/android/gms/internal/ads/Xj;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/Wc;)LD4/b;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp;->c:Lcom/google/android/gms/internal/ads/Xj;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Xj;->z(Lcom/google/android/gms/internal/ads/Wc;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/Bo;

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Bo;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->z7:Lcom/google/android/gms/internal/ads/J7;

    .line 17
    .line 18
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 19
    .line 20
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/String;

    .line 27
    .line 28
    const-string v2, ","

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    array-length v2, v1

    .line 35
    const/4 v3, 0x0

    .line 36
    :goto_0
    if-ge v3, v2, :cond_1

    .line 37
    .line 38
    aget-object v4, v1, v3

    .line 39
    .line 40
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bp;->a:Ljava/util/Map;

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Lcom/google/android/gms/internal/ads/QJ;

    .line 51
    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    new-instance v5, Lcom/google/android/gms/internal/ads/Va;

    .line 55
    .line 56
    const/16 v6, 0x8

    .line 57
    .line 58
    invoke-direct {v5, v6, v4, p1}, Lcom/google/android/gms/internal/ads/Va;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bp;->b:Lcom/google/android/gms/internal/ads/jC;

    .line 62
    .line 63
    const-class v6, Lcom/google/android/gms/internal/ads/Bo;

    .line 64
    .line 65
    invoke-static {v0, v6, v5, v4}, Lcom/google/android/gms/internal/ads/Cw;->D1(LD4/b;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rB;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/Of;

    .line 73
    .line 74
    const/16 v1, 0x10

    .line 75
    .line 76
    invoke-direct {p1, p0, v1}, Lcom/google/android/gms/internal/ads/Of;-><init>(Ljava/lang/Object;I)V

    .line 77
    .line 78
    .line 79
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 80
    .line 81
    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 82
    .line 83
    .line 84
    return-object v0
.end method
