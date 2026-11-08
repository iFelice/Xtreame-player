.class public final Lcom/google/android/gms/internal/ads/Kd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lo3/K;


# direct methods
.method public constructor <init>(Lo3/K;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Kd;->a:Lo3/K;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->n0:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kd;->a:Lo3/K;

    .line 21
    .line 22
    check-cast v0, Lo3/L;

    .line 23
    .line 24
    invoke-virtual {v0}, Lo3/L;->s()V

    .line 25
    .line 26
    .line 27
    iget-object v2, v0, Lo3/L;->a:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v2

    .line 30
    :try_start_0
    iget-wide v3, v0, Lo3/L;->D:J

    .line 31
    .line 32
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    sub-long v2, p2, v3

    .line 34
    .line 35
    const-wide/16 v4, 0x0

    .line 36
    .line 37
    cmp-long v0, v2, v4

    .line 38
    .line 39
    if-gez v0, :cond_1

    .line 40
    .line 41
    const-string p1, "Receiving npa decision in the past, ignoring."

    .line 42
    .line 43
    invoke-static {p1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->o0:Lcom/google/android/gms/internal/ads/J7;

    .line 48
    .line 49
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Kd;->a:Lo3/K;

    .line 64
    .line 65
    const/4 v0, -0x1

    .line 66
    check-cast p1, Lo3/L;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lo3/L;->l(I)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Kd;->a:Lo3/K;

    .line 72
    .line 73
    check-cast p1, Lo3/L;

    .line 74
    .line 75
    invoke-virtual {p1, p2, p3}, Lo3/L;->m(J)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kd;->a:Lo3/K;

    .line 80
    .line 81
    check-cast v0, Lo3/L;

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Lo3/L;->l(I)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Kd;->a:Lo3/K;

    .line 87
    .line 88
    check-cast p1, Lo3/L;

    .line 89
    .line 90
    invoke-virtual {p1, p2, p3}, Lo3/L;->m(J)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :catchall_0
    move-exception p1

    .line 95
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    throw p1
.end method
